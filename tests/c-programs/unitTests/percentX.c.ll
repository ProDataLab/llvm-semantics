; ModuleID = './percentX.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %8, %0
  %3 = load i32, i32* %i, align 4
  %4 = icmp slt i32 %3, 258
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %i, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %6)
  br label %8

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %i, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %2

; <label>:11                                      ; preds = %2
  store i32 0, i32* %i1, align 4
  br label %12

; <label>:12                                      ; preds = %18, %11
  %13 = load i32, i32* %i1, align 4
  %14 = icmp slt i32 %13, 258
  br i1 %14, label %15, label %21

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i1, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %16)
  br label %18

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %i1, align 4
  br label %12

; <label>:21                                      ; preds = %12
  %22 = load i32, i32* %1
  ret i32 %22
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.1-svn253571-1~exp1 (branches/release_37) (based on LLVM 3.7.1)"}
