// 
requires "llvm-syntax.k"
requires "llvm-abstractsyntax.k"
requires "llvm-settings.k"
requires "llvm-helpers.k"
requires "llvm-standard-library-syntax.k"
requires "llvm-syscalls-syntax.k"
requires "llvm-configuration.k"

module LLVM-PHI
    // TODO possibly preprocess PHI
    imports LLVM-SYNTAX
    imports LLVM-ABSTRACTSYNTAX
    imports LLVM-SETTINGS
    imports LLVM-HELPERS
    imports LLVM-STANDARD-LIBRARY-SYNTAX
    imports LLVM-SYSCALLS-SYNTAX
    imports LLVM-CONFIGURATION

    //change second argument of PHI from KLIst to listK(KList)
/*
    rule
        <k> phi(_:K, val(edge(K':K, Label:SymbolicValueRef)), _:ElemList)
            => K'
        ...</k>
        <prevBlock> Label </prevBlock>

    rule
        <k> phi(_:K,
                 val(edge(K:K, Label:SymbolicValueRef)), L:ElemList
                        => L) ...</k>
        <prevBlock> Label':SymbolicValueRef </prevBlock>
        when Label =/=K Label'
*/

endmodule
