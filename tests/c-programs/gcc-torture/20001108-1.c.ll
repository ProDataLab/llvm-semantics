; ModuleID = './20001108-1.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @signed_poly(i64 %sum, i64 %x) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %sum, i64* %1, align 8
  store i64 %x, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = mul nsw i64 %3, %4
  %6 = load i64, i64* %1, align 8
  %7 = add nsw i64 %6, %5
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i64 @unsigned_poly(i64 %sum, i64 %x) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %sum, i64* %1, align 8
  store i64 %x, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* %2, align 8
  %5 = mul i64 %3, %4
  %6 = load i64, i64* %1, align 8
  %7 = add i64 %6, %5
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i64 @signed_poly(i64 2, i64 -3)
  %3 = icmp ne i64 %2, -4
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  call void @abort() #2
  unreachable

; <label>:5                                       ; preds = %0
  %6 = call i64 @unsigned_poly(i64 2, i64 3)
  %7 = icmp ne i64 %6, 8
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %5
  call void @abort() #2
  unreachable

; <label>:9                                       ; preds = %5
  call void @exit(i32 0) #2
  unreachable
                                                  ; No predecessors!
  %11 = load i32, i32* %1
  ret i32 %11
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
