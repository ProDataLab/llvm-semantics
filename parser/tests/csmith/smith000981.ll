; ModuleID = '/home/grosu/celliso2/c-semantics/tests/csmith/smith000981.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@g_3 = global [6 x [8 x i32]] [[8 x i32] [i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881], [8 x i32] [i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881], [8 x i32] [i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881], [8 x i32] [i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881], [8 x i32] [i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881], [8 x i32] [i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881, i32 -2084080881]], align 16
@g_5 = global [10 x [1 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [25 x i8] c"checksum g_3[0][0] = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [25 x i8] c"checksum g_3[0][1] = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"checksum g_3[0][2] = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"checksum g_3[0][3] = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [25 x i8] c"checksum g_3[0][4] = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [25 x i8] c"checksum g_3[0][5] = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [25 x i8] c"checksum g_3[0][6] = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [25 x i8] c"checksum g_3[0][7] = %d\0A\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"checksum g_3[1][0] = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [25 x i8] c"checksum g_3[1][1] = %d\0A\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"checksum g_3[1][2] = %d\0A\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"checksum g_3[1][3] = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [25 x i8] c"checksum g_3[1][4] = %d\0A\00", align 1
@.str13 = private unnamed_addr constant [25 x i8] c"checksum g_3[1][5] = %d\0A\00", align 1
@.str14 = private unnamed_addr constant [25 x i8] c"checksum g_3[1][6] = %d\0A\00", align 1
@.str15 = private unnamed_addr constant [25 x i8] c"checksum g_3[1][7] = %d\0A\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"checksum g_3[2][0] = %d\0A\00", align 1
@.str17 = private unnamed_addr constant [25 x i8] c"checksum g_3[2][1] = %d\0A\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c"checksum g_3[2][2] = %d\0A\00", align 1
@.str19 = private unnamed_addr constant [25 x i8] c"checksum g_3[2][3] = %d\0A\00", align 1
@.str20 = private unnamed_addr constant [25 x i8] c"checksum g_3[2][4] = %d\0A\00", align 1
@.str21 = private unnamed_addr constant [25 x i8] c"checksum g_3[2][5] = %d\0A\00", align 1
@.str22 = private unnamed_addr constant [25 x i8] c"checksum g_3[2][6] = %d\0A\00", align 1
@.str23 = private unnamed_addr constant [25 x i8] c"checksum g_3[2][7] = %d\0A\00", align 1
@.str24 = private unnamed_addr constant [25 x i8] c"checksum g_3[3][0] = %d\0A\00", align 1
@.str25 = private unnamed_addr constant [25 x i8] c"checksum g_3[3][1] = %d\0A\00", align 1
@.str26 = private unnamed_addr constant [25 x i8] c"checksum g_3[3][2] = %d\0A\00", align 1
@.str27 = private unnamed_addr constant [25 x i8] c"checksum g_3[3][3] = %d\0A\00", align 1
@.str28 = private unnamed_addr constant [25 x i8] c"checksum g_3[3][4] = %d\0A\00", align 1
@.str29 = private unnamed_addr constant [25 x i8] c"checksum g_3[3][5] = %d\0A\00", align 1
@.str30 = private unnamed_addr constant [25 x i8] c"checksum g_3[3][6] = %d\0A\00", align 1
@.str31 = private unnamed_addr constant [25 x i8] c"checksum g_3[3][7] = %d\0A\00", align 1
@.str32 = private unnamed_addr constant [25 x i8] c"checksum g_3[4][0] = %d\0A\00", align 1
@.str33 = private unnamed_addr constant [25 x i8] c"checksum g_3[4][1] = %d\0A\00", align 1
@.str34 = private unnamed_addr constant [25 x i8] c"checksum g_3[4][2] = %d\0A\00", align 1
@.str35 = private unnamed_addr constant [25 x i8] c"checksum g_3[4][3] = %d\0A\00", align 1
@.str36 = private unnamed_addr constant [25 x i8] c"checksum g_3[4][4] = %d\0A\00", align 1
@.str37 = private unnamed_addr constant [25 x i8] c"checksum g_3[4][5] = %d\0A\00", align 1
@.str38 = private unnamed_addr constant [25 x i8] c"checksum g_3[4][6] = %d\0A\00", align 1
@.str39 = private unnamed_addr constant [25 x i8] c"checksum g_3[4][7] = %d\0A\00", align 1
@.str40 = private unnamed_addr constant [25 x i8] c"checksum g_3[5][0] = %d\0A\00", align 1
@.str41 = private unnamed_addr constant [25 x i8] c"checksum g_3[5][1] = %d\0A\00", align 1
@.str42 = private unnamed_addr constant [25 x i8] c"checksum g_3[5][2] = %d\0A\00", align 1
@.str43 = private unnamed_addr constant [25 x i8] c"checksum g_3[5][3] = %d\0A\00", align 1
@.str44 = private unnamed_addr constant [25 x i8] c"checksum g_3[5][4] = %d\0A\00", align 1
@.str45 = private unnamed_addr constant [25 x i8] c"checksum g_3[5][5] = %d\0A\00", align 1
@.str46 = private unnamed_addr constant [25 x i8] c"checksum g_3[5][6] = %d\0A\00", align 1
@.str47 = private unnamed_addr constant [25 x i8] c"checksum g_3[5][7] = %d\0A\00", align 1
@.str48 = private unnamed_addr constant [25 x i8] c"checksum g_5[0][0] = %d\0A\00", align 1
@.str49 = private unnamed_addr constant [25 x i8] c"checksum g_5[1][0] = %d\0A\00", align 1
@.str50 = private unnamed_addr constant [25 x i8] c"checksum g_5[2][0] = %d\0A\00", align 1
@.str51 = private unnamed_addr constant [25 x i8] c"checksum g_5[3][0] = %d\0A\00", align 1
@.str52 = private unnamed_addr constant [25 x i8] c"checksum g_5[4][0] = %d\0A\00", align 1
@.str53 = private unnamed_addr constant [25 x i8] c"checksum g_5[5][0] = %d\0A\00", align 1
@.str54 = private unnamed_addr constant [25 x i8] c"checksum g_5[6][0] = %d\0A\00", align 1
@.str55 = private unnamed_addr constant [25 x i8] c"checksum g_5[7][0] = %d\0A\00", align 1
@.str56 = private unnamed_addr constant [25 x i8] c"checksum g_5[8][0] = %d\0A\00", align 1
@.str57 = private unnamed_addr constant [25 x i8] c"checksum g_5[9][0] = %d\0A\00", align 1
@__undefined = common global i64 0, align 8

define i32 @func_1() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %l_2 = alloca [5 x i32], align 16
  %l_4 = alloca [4 x i32*], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp = load i32* %i, align 4
  %cmp = icmp slt i32 %tmp, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp1 = load i32* %i, align 4
  %idxprom = sext i32 %tmp1 to i64
  %arrayidx = getelementptr inbounds [5 x i32]* %l_2, i32 0, i64 %idxprom
  store i32 -332526347, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp2 = load i32* %i, align 4
  %inc = add nsw i32 %tmp2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %tmp4 = load i32* %i, align 4
  %cmp5 = icmp slt i32 %tmp4, 4
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond3
  %tmp7 = load i32* %i, align 4
  %idxprom8 = sext i32 %tmp7 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32*]* %l_4, i32 0, i64 %idxprom8
  store i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 8, i64 0), i32** %arrayidx9, align 8
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %tmp11 = load i32* %i, align 4
  %inc12 = add nsw i32 %tmp11, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond3

for.end13:                                        ; preds = %for.cond3
  volatile store i32 3, i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 0), align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc19, %for.end13
  %tmp15 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 0), align 4
  %cmp16 = icmp sge i32 %tmp15, 0
  br i1 %cmp16, label %for.body17, label %for.end21

for.body17:                                       ; preds = %for.cond14
  %tmp18 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 0), align 4
  store i32 %tmp18, i32* %retval
  br label %return

for.inc19:                                        ; No predecessors!
  %tmp20 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 0), align 4
  %add = add nsw i32 %tmp20, -1
  volatile store i32 %add, i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 0), align 4
  br label %for.cond14

for.end21:                                        ; preds = %for.cond14
  store i32 -1156469557, i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 8, i64 0), align 4
  %tmp22 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 5, i64 0), align 4
  store i32 %tmp22, i32* %retval
  br label %return

return:                                           ; preds = %for.end21, %for.body17
  %0 = load i32* %retval
  ret i32 %0
}

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @func_1()
  %tmp = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 0, i64 0), align 4
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str, i32 0, i32 0), i32 %tmp)
  %tmp2 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 0, i64 1), align 4
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 %tmp2)
  %tmp4 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 0, i64 2), align 4
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0), i32 %tmp4)
  %tmp6 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 0, i64 3), align 4
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str3, i32 0, i32 0), i32 %tmp6)
  %tmp8 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 0, i64 4), align 4
  %call9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str4, i32 0, i32 0), i32 %tmp8)
  %tmp10 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 0, i64 5), align 4
  %call11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str5, i32 0, i32 0), i32 %tmp10)
  %tmp12 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 0, i64 6), align 4
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str6, i32 0, i32 0), i32 %tmp12)
  %tmp14 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 0, i64 7), align 4
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str7, i32 0, i32 0), i32 %tmp14)
  %tmp16 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 1, i64 0), align 4
  %call17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str8, i32 0, i32 0), i32 %tmp16)
  %tmp18 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 1, i64 1), align 4
  %call19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str9, i32 0, i32 0), i32 %tmp18)
  %tmp20 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 1, i64 2), align 4
  %call21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0), i32 %tmp20)
  %tmp22 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 1, i64 3), align 4
  %call23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str11, i32 0, i32 0), i32 %tmp22)
  %tmp24 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 1, i64 4), align 4
  %call25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 %tmp24)
  %tmp26 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 1, i64 5), align 4
  %call27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str13, i32 0, i32 0), i32 %tmp26)
  %tmp28 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 1, i64 6), align 4
  %call29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str14, i32 0, i32 0), i32 %tmp28)
  %tmp30 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 1, i64 7), align 4
  %call31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str15, i32 0, i32 0), i32 %tmp30)
  %tmp32 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 2, i64 0), align 4
  %call33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str16, i32 0, i32 0), i32 %tmp32)
  %tmp34 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 2, i64 1), align 4
  %call35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str17, i32 0, i32 0), i32 %tmp34)
  %tmp36 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 2, i64 2), align 4
  %call37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str18, i32 0, i32 0), i32 %tmp36)
  %tmp38 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 2, i64 3), align 4
  %call39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str19, i32 0, i32 0), i32 %tmp38)
  %tmp40 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 2, i64 4), align 4
  %call41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str20, i32 0, i32 0), i32 %tmp40)
  %tmp42 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 2, i64 5), align 4
  %call43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str21, i32 0, i32 0), i32 %tmp42)
  %tmp44 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 2, i64 6), align 4
  %call45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str22, i32 0, i32 0), i32 %tmp44)
  %tmp46 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 2, i64 7), align 4
  %call47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str23, i32 0, i32 0), i32 %tmp46)
  %tmp48 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 0), align 4
  %call49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str24, i32 0, i32 0), i32 %tmp48)
  %tmp50 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 1), align 4
  %call51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str25, i32 0, i32 0), i32 %tmp50)
  %tmp52 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 2), align 4
  %call53 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str26, i32 0, i32 0), i32 %tmp52)
  %tmp54 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 3), align 4
  %call55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str27, i32 0, i32 0), i32 %tmp54)
  %tmp56 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 4), align 4
  %call57 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str28, i32 0, i32 0), i32 %tmp56)
  %tmp58 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 5), align 4
  %call59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str29, i32 0, i32 0), i32 %tmp58)
  %tmp60 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 6), align 4
  %call61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str30, i32 0, i32 0), i32 %tmp60)
  %tmp62 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 7), align 4
  %call63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str31, i32 0, i32 0), i32 %tmp62)
  %tmp64 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 4, i64 0), align 4
  %call65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str32, i32 0, i32 0), i32 %tmp64)
  %tmp66 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 4, i64 1), align 4
  %call67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str33, i32 0, i32 0), i32 %tmp66)
  %tmp68 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 4, i64 2), align 4
  %call69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str34, i32 0, i32 0), i32 %tmp68)
  %tmp70 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 4, i64 3), align 4
  %call71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str35, i32 0, i32 0), i32 %tmp70)
  %tmp72 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 4, i64 4), align 4
  %call73 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str36, i32 0, i32 0), i32 %tmp72)
  %tmp74 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 4, i64 5), align 4
  %call75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str37, i32 0, i32 0), i32 %tmp74)
  %tmp76 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 4, i64 6), align 4
  %call77 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str38, i32 0, i32 0), i32 %tmp76)
  %tmp78 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 4, i64 7), align 4
  %call79 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str39, i32 0, i32 0), i32 %tmp78)
  %tmp80 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 5, i64 0), align 4
  %call81 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str40, i32 0, i32 0), i32 %tmp80)
  %tmp82 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 5, i64 1), align 4
  %call83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str41, i32 0, i32 0), i32 %tmp82)
  %tmp84 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 5, i64 2), align 4
  %call85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str42, i32 0, i32 0), i32 %tmp84)
  %tmp86 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 5, i64 3), align 4
  %call87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str43, i32 0, i32 0), i32 %tmp86)
  %tmp88 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 5, i64 4), align 4
  %call89 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str44, i32 0, i32 0), i32 %tmp88)
  %tmp90 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 5, i64 5), align 4
  %call91 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str45, i32 0, i32 0), i32 %tmp90)
  %tmp92 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 5, i64 6), align 4
  %call93 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str46, i32 0, i32 0), i32 %tmp92)
  %tmp94 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 5, i64 7), align 4
  %call95 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str47, i32 0, i32 0), i32 %tmp94)
  %tmp96 = volatile load i32* getelementptr inbounds ([6 x [8 x i32]]* @g_3, i32 0, i64 3, i64 0), align 4
  %call97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str24, i32 0, i32 0), i32 %tmp96)
  %tmp98 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 0, i64 0), align 4
  %call99 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str48, i32 0, i32 0), i32 %tmp98)
  %tmp100 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 1, i64 0), align 4
  %call101 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str49, i32 0, i32 0), i32 %tmp100)
  %tmp102 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 2, i64 0), align 4
  %call103 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str50, i32 0, i32 0), i32 %tmp102)
  %tmp104 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 3, i64 0), align 4
  %call105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str51, i32 0, i32 0), i32 %tmp104)
  %tmp106 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 4, i64 0), align 4
  %call107 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str52, i32 0, i32 0), i32 %tmp106)
  %tmp108 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 5, i64 0), align 4
  %call109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str53, i32 0, i32 0), i32 %tmp108)
  %tmp110 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 6, i64 0), align 4
  %call111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str54, i32 0, i32 0), i32 %tmp110)
  %tmp112 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 7, i64 0), align 4
  %call113 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str55, i32 0, i32 0), i32 %tmp112)
  %tmp114 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 8, i64 0), align 4
  %call115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str56, i32 0, i32 0), i32 %tmp114)
  %tmp116 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 9, i64 0), align 4
  %call117 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str57, i32 0, i32 0), i32 %tmp116)
  %tmp118 = load i32* getelementptr inbounds ([10 x [1 x i32]]* @g_5, i32 0, i64 8, i64 0), align 4
  %call119 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str56, i32 0, i32 0), i32 %tmp118)
  %0 = load i32* %retval
  ret i32 %0
}

declare i32 @printf(i8*, ...)