; ModuleID = './two-link2.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@foo = external global i8*, align 8

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argv, i8** %argc) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  store i32 %argv, i32* %1, align 4
  store i8** %argc, i8*** %2, align 8
  store i8* null, i8** @foo, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.1-svn253571-1~exp1 (branches/release_37) (based on LLVM 3.7.1)"}
