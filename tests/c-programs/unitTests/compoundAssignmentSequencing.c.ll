; ModuleID = './compoundAssignmentSequencing.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@r = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @f() #0 {
  %1 = load i32, i32* @r, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @r, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 @f()
  %3 = load i32, i32* @r, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @r, align 4
  %5 = add nsw i32 %2, %4
  ret i32 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.1-svn253571-1~exp1 (branches/release_37) (based on LLVM 3.7.1)"}
