; ModuleID = './strct-pack-4.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.three_char_t = type <{ i8, i16 }>

; Function Attrs: nounwind uwtable
define zeroext i8 @my_set_a() #0 {
  ret i8 -85
}

; Function Attrs: nounwind uwtable
define zeroext i16 @my_set_b() #0 {
  ret i16 4660
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %three_char = alloca %struct.three_char_t, align 1
  store i32 0, i32* %1
  %2 = call zeroext i8 @my_set_a()
  %3 = getelementptr inbounds %struct.three_char_t* %three_char, i32 0, i32 0
  store i8 %2, i8* %3, align 1
  %4 = call zeroext i16 @my_set_b()
  %5 = getelementptr inbounds %struct.three_char_t* %three_char, i32 0, i32 1
  store i16 %4, i16* %5, align 1
  %6 = getelementptr inbounds %struct.three_char_t* %three_char, i32 0, i32 0
  %7 = load i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp ne i32 %8, 171
  br i1 %9, label %15, label %10

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.three_char_t* %three_char, i32 0, i32 1
  %12 = load i16* %11, align 1
  %13 = zext i16 %12 to i32
  %14 = icmp ne i32 %13, 4660
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %10, %0
  call void @abort() #2
  unreachable

; <label>:16                                      ; preds = %10
  call void @exit(i32 0) #2
  unreachable
                                                  ; No predecessors!
  %18 = load i32* %1
  ret i32 %18
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5-1ubuntu1 (trunk) (based on LLVM 3.5)"}
