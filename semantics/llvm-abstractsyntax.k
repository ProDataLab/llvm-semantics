//
requires "llvm-syntax.k"

module LLVM-ABSTRACTSYNTAX
    imports LLVM-SYNTAX

    syntax KResult ::= Int | String | Floating
                      | Loc
                      | OptAddrSpace
                      //| listK(List)    [latex({#1})]//bytes
                      | region(List, Int)  //nextlevel, number of nextlevel
                      | VoidType
                      | vectorValue(ElemList)
                      | arrayValue(ElemList)

    syntax SimpleTypeResult ::= IntTypeCore
                              | pointerTypeValue(K, K) //type, address space
                              | FPType
                              | LabelType
                              | OpaqueType
    syntax AggregatedTypeResult ::= structTypeValue(K)
                                  | packedStructTypeValue(K)
                                  | arrayTypeValue(K, K)  // inner type, length
                                  | functionTypeValue(K, K)  // return type, argument types
                                  | vectorTypeValue(K, K)//inner type, length
    syntax TypeResult ::= AggregatedTypeResult | SimpleTypeResult

    syntax Type ::= TypeResult
    syntax Type ::= "badType"
    syntax KResult ::= TypeResult
    syntax KResult ::= value(K, K) //type, value
    syntax Element ::= val(K) [strict]
    syntax ElementResult ::= valValue(K)
    syntax Element ::= ElementResult
    syntax KResult ::= ElementResult
    rule val(K:KResult) => valValue(K) [structural]

    syntax KItem ::= "emptyHOLE"
    syntax KItem ::= instNumInfo(Int, K, K)
                      //Inst num, stmt, inst type
    

    syntax KItem ::= "terminators" | "loadInst" | "storeInst"
                    | "callInst" | "normalInst" | "returnInst"
                    | "allocaInst" | "phiInst"
    syntax KItem ::= usedLoc(K) //location of a variable.

    syntax KItem ::= seqPoint(Int, Int, K)
                        //block_id, static id, inst
    syntax KItem ::= basicBlockNum(Int, K)
    syntax KItem ::= guessBlockPath(List)

    //syntax KItem ::= ElemList
    syntax ElemList ::= List{Element,","} [strict]
    syntax Int ::= lengthOfList(ElemList) [function]

    rule lengthOfList(.ElemList) => 0
    rule lengthOfList(val(K:K),L:ElemList) => 1 +Int lengthOfList(L)
    rule lengthOfList(valValue(K:K),L:ElemList) => 1 +Int lengthOfList(L)

    syntax KItem ::= elemListToK(ElemList) [function]

    rule elemListToK(.ElemList) => .K
    rule elemListToK(val(K:K), L:ElemList) => K ~> elemListToK(L)
    rule elemListToK(valValue(K:K), L:ElemList) => K ~> elemListToK(L)

    syntax KItem ::= instructionListToK(InstructionList) [function]

    rule instructionListToK(.InstructionList) => .K
    rule instructionListToK(K:Instruction L:Instruction)
                             => K ~> instructionListToK(L)

    syntax List ::= elemListToList(ElemList) [function]

    rule elemListToList(.ElemList) => .List
    rule elemListToList(val(K:K), L:ElemList) => ListItem(K) elemListToList(L)

    syntax ElemList ::= combineElemList(ElemList, ElemList) [function]

    rule combineElemList(.ElemList,Bs:ElemList) => Bs
    rule combineElemList((A:Element,As:ElemList),Bs:ElemList) => A,combineElemList(As,Bs)

    syntax ElemList ::= mergeVectorList(K, K) [function]
    rule mergeVectorList(vector(E1:ElemList), vector(E2:ElemList)) => combineElemList(E1,E2)
    rule mergeVectorList(A:K, B:K) => .ElemList [owise]

    syntax ElemList ::= addElemToEnd(Element, ElemList)   [function]
    rule addElemToEnd(E:Element, .ElemList) => E,.ElemList
    rule addElemToEnd(E:Element, E':Element,Es:ElemList) => E',addElemToEnd(E,Es)

    syntax NonVoidType ::= arrayType(K, K) [strict] // inner type, length
                         | vectorType(K, K) [strict(1)]//inner type, length
                         | functionTypeEval(K, K) [strict]
                         //| structType(K) [strict]
                         //| namedType(K)
                         //| functionType(K, K) [strict] // return type, argument types

    syntax IntTypeCore ::= integerType(K)
    syntax IntType ::= IntTypeCore

    syntax TypeList ::= argListToTypeList(ArgList) [function]

    rule argListToTypeList('argListUnit(.KList)) => .TypeList
    rule argListToTypeList(...) => .TypeList
    rule argListToTypeList('argTypeTwo(T:Type,, Pas:ParamAttrs))
                            => T
    rule argListToTypeList('argTypeThree(T:Type,, Pas:ParamAttrs,, L:LocalVar))
                            => T
    rule argListToTypeList('argTypeTwo(T:Type,, Pas:ParamAttrs), As:ArgList)
                            => T,argListToTypeList(As)
    rule argListToTypeList('argTypeThree(T:Type,, Pas:ParamAttrs,, L:LocalVar), As:ArgList)
                            => T,argListToTypeList(As)

    rule arrayType(K1:KResult, K2:KResult) => arrayTypeValue(K1, K2) [structural]
    rule 'structType(K1:KResult) => structTypeValue(K1) [structural]
    rule 'packedStructType(K1:KResult) => packedStructTypeValue(K1) [structural]
    rule 'functionType(K1:K,, K2:ArgList) => functionTypeEval(K1, argListToTypeList(K2))
                                                        [structural]
    rule functionTypeEval(K1:KResult, K2:KResult) => functionTypeValue(K1, K2) [structural]
    rule 'pointerType(K1:KResult,, K2:KResult) => pointerTypeValue(K1, K2) [structural]

    //uniform the types.
    rule [ I:UnsignedInt x T:Type ] => arrayType(T,
                                    String2Int(#tokenToString(I)))         [anywhere]
    rule < I:UnsignedInt x T:Type > => vectorType(T,
                                    String2Int(#tokenToString(I)))         [anywhere]
    rule vectorType(K:KResult, I:Int) => vectorTypeValue(K, I)
    //rule 'argTypeTwo(T:Type ,, Pas:ParamAttrs,, )
    //rule T:Type A:OptAddrSpace * => pointerType(T, A) [structural]
    //rule { Ts:TypeList } => structType(Ts) [macro]
    //rule < { Ts:TypeList } > => structType(Ts) [macro]

    //change IntType from LLVM syntax to K rule syntax

    rule I:IntTypePre => integerType(String2Int(substrString(#tokenToString(I),
                        1, lengthString(#tokenToString(I)))))
         requires String2Int(substrString(#tokenToString(I),
                        1, lengthString(#tokenToString(I)))) >Int 0
               andBool String2Int(substrString(#tokenToString(I),
                        1, lengthString(#tokenToString(I)))) <Int (2 ^Int 23)

    rule I:IntTypePre => badType
         requires String2Int(substrString(#tokenToString(I),
                        1, lengthString(#tokenToString(I)))) <=Int 0
               orBool String2Int(substrString(#tokenToString(I),
                        1, lengthString(#tokenToString(I)))) >=Int (2 ^Int 23)

    syntax Loc ::= loc(K, K, K, K)    // TODO [semantic] base, offset, offset limit, alignment
    syntax Loc ::= funptr(K)
    syntax ValueRef ::= Loc

    syntax KItem ::= vector(ElemList)           [strict]
    rule vector(E:KResult) => vectorValue(E)

/*
    syntax List ::= list(KList) [function]

    rule list(.KList) => .List
    rule list(A:K,, KL:KList) => ListItem(A) list(KL)
*/
    syntax Int ::= ptrByte(K, K) // address, byteNumber; part of a pointer, as a byte
    syntax KItem ::= floatByte(K, K, K) // float, type, byte number
    //rule isNat(ptrByte(_, _)) => true
    //rule isNat(floatByte(_, _, _)) => true

    syntax KResult ::= Undef
    syntax KResult ::= "poisonVal"
    syntax KItem ::= "debug" // TODO [semantic]
    syntax KItem ::= "callMain" // TODO [semantic]
    syntax KItem ::= "initGlobals" // TODO [semantic]
    syntax KItem ::= "initDef"
    syntax KItem ::= initBuiltins(ElemList)
    syntax ElemList ::= "vararg"

    //LLVM builtin values
    syntax KResult ::= "NaN"
    syntax KResult ::= "PositiveZero"
    syntax KResult ::= "NegativeZero"
    syntax KResult ::= "PositiveInfinity"
    syntax KResult ::= "NegativeInfinity"
    syntax KResult ::= Zeroinitializer
    syntax KResult ::= blockValue(K)

    syntax KItem ::= blockExecutionAux(K) 
    syntax KItem ::= blockExecution(K, List)//prev block with num, inst list
    syntax KItem ::= "blockHOLE"

    //don't know how to deal with
    syntax KItem ::= moduleAsm(K) // now let's to be K first, maybe String
    syntax KItem ::= metaConst(K, MetadataValues) //Distinct_or_not, IndexList
    syntax KItem ::= metaVar(MetadataVar, MetadataInts) //Name, MetaList
    syntax KItem ::= funBegin(K)// use to initialize the initial block name.

    syntax KItem ::= float(String)
    syntax KItem ::= constantString(String)
    syntax KItem ::= constantArray(K, K) [strict] // element type, arguments

    syntax KItem ::= invoke(K, K, K, K)//operand, Params, fromLabel toLabel
    syntax KItem ::= initializer(K, K) // type, value
    syntax KItem ::= globalVariable(K, Set, K, K) [strict(3,4)]// Value/Name, Modifiers, Type, Initializer
    syntax KItem ::= modifiers(Set)
    syntax KItem ::= insMetas(ElemList)
    syntax KItem ::= alloca(K, K, K) [strict(1,2)] // Type, NumElements, align
    syntax KItem ::= globalAlloca(K, K, K)
    syntax KItem ::= preAlloca(K, K) [strict(2)] // IntType, NumElements
    syntax KItem ::= load(K, K) [strict]//type value
    syntax KItem ::= assignUses(K, K, K, ElemList)//blockname, inst num, type, list of names
    syntax KItem ::= varOp(K, K, K, K)//block num, instruction num, type, name
    syntax KItem ::= setLabelVars(Map)
    syntax KItem ::= operand(K, K) [strict] // Type, Value
    syntax KItem ::= typeOperand(K, K)  [strict(1)] //type, value
    syntax KResult ::= typeOperandResult(K, K)
    rule typeOperand(T:KResult, K:K) => typeOperandResult(T, K)     [structural]
    syntax KItem ::= setArgsToBlockEnv(K, ElemList)  [strict(2)]//block name, typeoperand

    syntax KItem ::= allowChoice(List) //used for specChoice cell
    syntax KItem ::= holdChoice(List) //used for specChoice cell
    syntax KItem ::= splitQueue(List, List, List) //used for instQueue cell
                                     //availables, Pre, remains
    syntax KItem ::= instList(List) //used for instQueue cell
    syntax KItem ::= dynInstInfo(Int, Int, K, K)
                      //block num, inst num, inst, inst type
    syntax KItem ::= dynInstHold(Int, Int, K) //block, inst num, inst type
    syntax KItem ::= runDynInst(K) [strict]
    syntax KResult ::= dynResult(K, K)
    syntax KItem ::= exprType(K) [strict]
    syntax KItem ::= constExprType(K) [strict]

    //instructions
    syntax KItem ::= store(K, K, K) [strict]  // Type, Value, Destination
    syntax KItem ::= fence(K) [strict]
    syntax KItem ::= ret(K, K) [strict]//type value,
    syntax KItem ::= assign(K, K) [strict(2)] // Name, Instruction
    syntax KItem ::= instruction(K, Set, K) 
    syntax KItem ::= instMap(Map)
        //body, modifiers, instructionMetadatas
    syntax KItem ::= selectSpec(K, Set, Set, Set)
        //previous block, next blocks, next block names, choices
    syntax KItem ::= selectResult(K, K, List)
          //cur block, next block name, list

    syntax KItem ::= "unreachable"
    syntax KItem ::= resume(K)//operand
    syntax KItem ::= indirectbr(K, ElemList)   [strict(1)]//operand, list of labels
    syntax KItem ::= unconditional(K)//label
    syntax KItem ::= conditional(K, K, K) [strict(1)]//operand, label1, label2
    syntax KItem ::= switch(K, K, K, ElemList) [strict(1,2,4)] // type, condition, default dest, list of cases
    syntax Case ::= case(K, K) [strict(1)] // operand, successor
    syntax CaseResult ::= caseValue(K, K)
    syntax KResult ::= CaseResult
    syntax Case ::= CaseResult
    syntax Cases ::= List{Case,","} [strict,klabel('caseCon)]
    //syntax KItem ::= Cases
    rule case(K:KResult, K') => caseValue(K, K') [structural]

    syntax KItem ::= arguments(ElemList) [strict]
    syntax KItem ::= arg(Set, K, K) // Modifiers, Type, Value/Name

    //@ Conversion Operations
    syntax KItem ::= theTrunc(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theSExt(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theZExt(K, K, K) [strict] // oldtype, op, totype
    syntax KItem ::= theBitCast(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theIntToPtr(K, K, K) [strict] // type, op, totype
    syntax KItem ::= thePtrToInt(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theFpToSI(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theFpToUI(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theFPTrunc(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theFPExt(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theSIToFP(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theUIToFP(K, K, K) [strict] // type, op, totype
    syntax KItem ::= theAddrspacecast(K, K, K) [strict]//type, op, totype

    syntax KItem ::= constantStruct(ElemList) [strict] //arguments
    syntax KItem ::= packedStruct(ElemList) [strict] //arguments

    syntax KItem ::= theVAArg(K, K) [strict] // result type, va_list
    //syntax KItem ::= values(K) [function]
    //rule values(K:K) => K
    syntax KItem ::= phi(K, ElemList) [strict(1)] // type, edge list
    syntax KItem ::= edge(K, K) // used by PHI
    syntax KItem ::= select(K, K, K, K) [strict(1,2)] // condition, true val, false val
    syntax KItem ::= tailCall(K, K)
    rule tailCall(K:K, E:K) => call(K,E) [structural] //first assume that call and tailcall are the same.    

    syntax KItem ::= call(K, K) [strict] // Type, Callee
    syntax KItem ::= callee(K, K) [strict] // Value/Name, Arguments
    syntax KResult ::= calleeValue(K, K)
    rule callee(K:KResult, K':KResult) => calleeValue(K, K') [structural]

    syntax KItem ::= getElementPtr(K, K, K) [strict]// operand, operand, modifiers
                   | gepTypeBag(K)          [strict]
    syntax KItem ::= extractElement(K, K) [strict]
    syntax KItem ::= insertElement(K, K, K) [strict]
    syntax KItem ::= shuffleVector(K, K, K) [strict]
    syntax KItem ::= landingPad(K,K,K) [strict(1,2)] // operand,operand modifiers
    syntax KItem ::= extractValue(K, ElemList) [strict]
    syntax KItem ::= cmpxChg(K, K, K) [strict]
    syntax KItem ::= atomicRmw(K, K, K) [strict]
    syntax KItem ::= insertValue(K, K, ElemList) [strict]

    syntax KItem ::= aliases(ElemList)
    syntax KItem ::= alias(Set, K, K) //modifiers, Name, Aliasee
    syntax KItem ::= theModule(K, K, K, K, K, K, K, K)
                    //Id, TargetLayout, TargetTriple, MetaVars,Typedefs,GlobalVars,Aliases,Functions 
    syntax KItem ::= basicBlock(K, K) // Name, Instructions
    syntax KItem ::= blockContent(Map, Set, Set, Set, Set, Set, Set, Set)
                                   //instructions map from number (0...) to line of code
                                   //,outgoing edges, incoming edges, all incoming defs,
                                   //all incomming uses, all outgoing defs, all outgoing uses.
                                   //use vars that have not been defined in current block
    syntax KItem ::= setOutEdge(K, ElemList) //name, outEdges
    syntax KItem ::= setInEdges(Set)
    syntax KItem ::= setInEdgesForNode(K)
    syntax KItem ::= setInEdgesForNode(K, K, Set)
    syntax KItem ::= setInitBlock(K)
    syntax KItem ::= calDefUse(K, Set, Set)
                   //new blocks, visited blocks
    syntax KItem ::= calDefUse(K, Set, Set, Set, K, Set, Set)
                   //cur block, defs, uses, nexts,next block, new blocks, visited blocks
    syntax KItem ::= phiEdges(K, Set)//block
    syntax KItem ::= "checkingPhisInEdges"
    syntax KItem ::= checkUseVars(List)
    //syntax KItem ::= checkUseVars(ElemList) [strict]
    //syntax KItmm ::= checkUseVars(List, K, Set, Set)
    //syntax KItem ::= checkUseVars(List, K, Set)
    //syntax KItem ::= checkUseVars(Set, Set, Set)
    syntax KItem ::= checkUseVarInside(K, K, K)
    syntax KItem ::= checkUseVarInBlock(K, Set, Set)
    syntax KItem ::= checkUseVarInPhiAux(ElemList)
    syntax KItem ::= checkUseVarInPhi(Int, Map, K, List)
               //inst num, inst map, single inst, List of inst maps
    syntax KItem ::= checkFirstInPhi(Int, Map, K, List)
               //inst num, inst map, single inst, List of inst maps
    //syntax KItem ::= checkUseVarInPhi(Set, Set)
    //syntax KItem ::= checkUseVarInPhi(K, Set, Set)
    //syntax KItem ::= toCheckUsePhiVarInBlock(K, Set)

    syntax KItem ::= setBlockPaths(K, Set) //block, store set
    syntax KItem ::= setBlockInDefs(K, Set)//block, store block set
    syntax KItem ::= setBlockInDef(K, List)//block, path
    syntax KItem ::= setBlockInUses(K, Set)//block, store block set
    syntax KItem ::= setBlockInUse(K, List)//block, path
    syntax KItem ::= setBlockPath(K, K, Set, Set, List, List, List, Set)
           //top, cur, touch set, visiting node, visiting set, store paths, caled paths, paths, visited set
           //block names, name, checked blocks, outblock, outs, inblock, ins
    syntax KItem ::= blockPath(List)
    syntax KItem ::= linked(Set) //strong connected components
    syntax KItem ::= dependent(K, K)//dependency relation
    syntax KItem ::= setBlockDependency(K, List)//block, inst_list, def_set, use_set
    syntax KItem ::= setBlockDependencies(K, Set)//block store set
    syntax KItem ::= setBlockDepend(K, K, K, K, Set, List, List, Set, Set)
                     //block, inst, Def Set, insttype, use Set,  InstList, PathList, InstSet, BlockSet

    syntax KItem ::= "checkUseVarWait"
    syntax KItem ::= functionDef(Set, K, K, K, K)  [strict(2)] // Attributes, RetType, Value/Name, Arguments, Body
    syntax KItem ::= functionDecl(Set, K, K, K)  [strict(2)] // Attributes,Type, Value/Name, Arguments
    syntax KItem ::= typedef(K, K)    [strict(2)]// name, type TODO: modifiers
    syntax KItem ::= fields(ElemList) [strict]
    syntax KItem ::= types(ElemList)  [strict]
    syntax KItem ::= setBlock(K)
    syntax KItem ::= body(ElemList)

    syntax KItem ::= assignType(K, Int, K, K) //block, inst num, var, t

    syntax SymbolicValueRef ::= name(K, String)   [klabel('name)]//label, name
    syntax KItem ::= "globalVar" | "localVar"

    syntax KItem ::= theDefinition(K,K) [strict]
    syntax KItem ::= iCmp(K, K, K, K)      [strict(2,3,4)]//op, type, left, right
    syntax KItem ::= iNotEq(K, K, K) [strict] // type, left op, right op
    syntax KItem ::= iEq(K, K, K) [strict]
    syntax KItem ::= uGT(K, K, K) [strict]
    syntax KItem ::= uGE(K, K, K) [strict]
    syntax KItem ::= uLT(K, K, K) [strict]
    syntax KItem ::= uLE(K, K, K) [strict]
    syntax KItem ::= sGT(K, K, K) [strict]
    syntax KItem ::= sGE(K, K, K) [strict]
    syntax KItem ::= sLT(K, K, K) [strict]
    syntax KItem ::= sLE(K, K, K) [strict]

    syntax KItem ::= oEQ(K, K, K) [strict]
    syntax KItem ::= oGT(K, K, K) [strict]
    syntax KItem ::= oGE(K, K, K) [strict]
    syntax KItem ::= oLT(K, K, K) [strict]
    syntax KItem ::= oLE(K, K, K) [strict]
    syntax KItem ::= oNE(K, K, K) [strict]
    syntax KItem ::= oRD(K, K, K) [strict]
    syntax KItem ::= uNE(K, K, K) [strict]
    //syntax LLVM ::= uNE(K, K, K) [strict]
    syntax KItem ::= uNO(K, K, K) [strict]
    syntax KItem ::= uEQ(K, K, K) [strict]


    //@ Binary Operations
    syntax KItem ::= flagStage(K, K, K) //type, int singed value, int unsined value
    syntax KItem ::= flagStage2(K, K, K) //type, int singed value, int unsined value
    syntax KResult ::= intValue(K, K) //int type, int value, flags
    syntax KItem ::= theAdd(K, K, K) [strict] // Type, Left op, Right op, flags
    syntax KItem ::= theSub(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theMul(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theUDiv(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theSDiv(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theURem(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theSRem(K, K, K) [strict] // Type, Left op, Right op

    //@ Floating-point Binary Operations
    //strict on all the arguments for theFSub, theFMul, theFDiv, the FRem
    syntax KItem ::= theFAdd(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theFSub(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theFMul(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theFDiv(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theFRem(K, K, K) [strict] // Type, Left op, Right op

    //@ Bitwise Binary Operations
    // strict on all the arguments for theShl, theLShr,theAShr, theOr, theXor
    syntax KItem ::= theShl(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theLShr(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theAShr(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theOr(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theAnd(K, K, K) [strict] // Type, Left op, Right op
    syntax KItem ::= theXor(K, K, K) [strict] // Type, Left op, Right op


endmodule
