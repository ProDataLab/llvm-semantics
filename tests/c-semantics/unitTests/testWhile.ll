; ModuleID = './testWhile.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %1
  store i32 5, i32* %i, align 4
  store i32 0, i32* %x, align 4
  br label %2

; <label>:2                                       ; preds = %5, %0
  %3 = load i32* %i, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %i, align 4
  %8 = load i32* %x, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %x, align 4
  br label %2

; <label>:10                                      ; preds = %2
  br label %11

; <label>:11                                      ; preds = %12, %10
  br i1 false, label %12, label %15

; <label>:12                                      ; preds = %11
  %13 = load i32* %x, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %x, align 4
  br label %11

; <label>:15                                      ; preds = %11
  %16 = load i32* %x, align 4
  ret i32 %16
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5-1ubuntu1 (trunk) (based on LLVM 3.5)"}
