; ModuleID = './20000412-1.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@i = global i16 -1, align 2
@wordlist = common global [207 x i8*] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i8** @foo() #0 {
  %wordptr = alloca i8**, align 8
  %1 = load i16, i16* @i, align 2
  %2 = sext i16 %1 to i32
  %3 = add i32 207, %2
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [207 x i8*], [207 x i8*]* @wordlist, i32 0, i64 %4
  store i8** %5, i8*** %wordptr, align 8
  %6 = load i8**, i8*** %wordptr, align 8
  ret i8** %6
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i8** @foo()
  %3 = icmp ne i8** %2, getelementptr inbounds ([207 x i8*], [207 x i8*]* @wordlist, i32 0, i64 206)
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  call void @abort() #2
  unreachable

; <label>:5                                       ; preds = %0
  call void @exit(i32 0) #2
  unreachable
                                                  ; No predecessors!
  %7 = load i32, i32* %1
  ret i32 %7
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.1-svn253571-1~exp1 (branches/release_37) (based on LLVM 3.7.1)"}
