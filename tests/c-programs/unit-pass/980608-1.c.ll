; ModuleID = './980608-1.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [20 x i8] c"%d %d %d  %d %d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @f1(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h, i32 %i, i32 %j, i32 %k, i32 %l, i32 %m, i32 %n, i32 %o) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  store i32 %d, i32* %4, align 4
  store i32 %e, i32* %5, align 4
  store i32 %f, i32* %6, align 4
  store i32 %g, i32* %7, align 4
  store i32 %h, i32* %8, align 4
  store i32 %i, i32* %9, align 4
  store i32 %j, i32* %10, align 4
  store i32 %k, i32* %11, align 4
  store i32 %l, i32* %12, align 4
  store i32 %m, i32* %13, align 4
  store i32 %n, i32* %14, align 4
  store i32 %o, i32* %15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  call void (i8*, ...) @debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 101, i32 102, i32 103, i32 104, i32 105, i32 106)
  call void @exit(i32 0) #4
  unreachable
                                                  ; No predecessors!
  %3 = load i32, i32* %1
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @debug(i8* %msg, ...) #1 {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msg, i8** %1, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  call void @f1(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 0
  %6 = load i32, i32* %5
  %7 = icmp ule i32 %6, 40
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 3
  %10 = load i8*, i8** %9
  %11 = getelementptr i8, i8* %10, i32 %6
  %12 = bitcast i8* %11 to i32*
  %13 = add i32 %6, 8
  store i32 %13, i32* %5
  br label %19

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i32 0, i32 2
  %16 = load i8*, i8** %15
  %17 = bitcast i8* %16 to i32*
  %18 = getelementptr i8, i8* %16, i32 8
  store i8* %18, i8** %15
  br label %19

; <label>:19                                      ; preds = %14, %8
  %20 = phi i32* [ %12, %8 ], [ %17, %14 ]
  %21 = load i32, i32* %20
  %22 = icmp ne i32 %21, 101
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %19
  call void @abort() #4
  unreachable

; <label>:24                                      ; preds = %19
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 0
  %27 = load i32, i32* %26
  %28 = icmp ule i32 %27, 40
  br i1 %28, label %29, label %35

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 3
  %31 = load i8*, i8** %30
  %32 = getelementptr i8, i8* %31, i32 %27
  %33 = bitcast i8* %32 to i32*
  %34 = add i32 %27, 8
  store i32 %34, i32* %26
  br label %40

; <label>:35                                      ; preds = %24
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 2
  %37 = load i8*, i8** %36
  %38 = bitcast i8* %37 to i32*
  %39 = getelementptr i8, i8* %37, i32 8
  store i8* %39, i8** %36
  br label %40

; <label>:40                                      ; preds = %35, %29
  %41 = phi i32* [ %33, %29 ], [ %38, %35 ]
  %42 = load i32, i32* %41
  %43 = icmp ne i32 %42, 102
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %40
  call void @abort() #4
  unreachable

; <label>:45                                      ; preds = %40
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 0
  %48 = load i32, i32* %47
  %49 = icmp ule i32 %48, 40
  br i1 %49, label %50, label %56

; <label>:50                                      ; preds = %45
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 3
  %52 = load i8*, i8** %51
  %53 = getelementptr i8, i8* %52, i32 %48
  %54 = bitcast i8* %53 to i32*
  %55 = add i32 %48, 8
  store i32 %55, i32* %47
  br label %61

; <label>:56                                      ; preds = %45
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 2
  %58 = load i8*, i8** %57
  %59 = bitcast i8* %58 to i32*
  %60 = getelementptr i8, i8* %58, i32 8
  store i8* %60, i8** %57
  br label %61

; <label>:61                                      ; preds = %56, %50
  %62 = phi i32* [ %54, %50 ], [ %59, %56 ]
  %63 = load i32, i32* %62
  %64 = icmp ne i32 %63, 103
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %61
  call void @abort() #4
  unreachable

; <label>:66                                      ; preds = %61
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %67, i32 0, i32 0
  %69 = load i32, i32* %68
  %70 = icmp ule i32 %69, 40
  br i1 %70, label %71, label %77

; <label>:71                                      ; preds = %66
  %72 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %67, i32 0, i32 3
  %73 = load i8*, i8** %72
  %74 = getelementptr i8, i8* %73, i32 %69
  %75 = bitcast i8* %74 to i32*
  %76 = add i32 %69, 8
  store i32 %76, i32* %68
  br label %82

; <label>:77                                      ; preds = %66
  %78 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %67, i32 0, i32 2
  %79 = load i8*, i8** %78
  %80 = bitcast i8* %79 to i32*
  %81 = getelementptr i8, i8* %79, i32 8
  store i8* %81, i8** %78
  br label %82

; <label>:82                                      ; preds = %77, %71
  %83 = phi i32* [ %75, %71 ], [ %80, %77 ]
  %84 = load i32, i32* %83
  %85 = icmp ne i32 %84, 104
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %82
  call void @abort() #4
  unreachable

; <label>:87                                      ; preds = %82
  %88 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %89 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %88, i32 0, i32 0
  %90 = load i32, i32* %89
  %91 = icmp ule i32 %90, 40
  br i1 %91, label %92, label %98

; <label>:92                                      ; preds = %87
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %88, i32 0, i32 3
  %94 = load i8*, i8** %93
  %95 = getelementptr i8, i8* %94, i32 %90
  %96 = bitcast i8* %95 to i32*
  %97 = add i32 %90, 8
  store i32 %97, i32* %89
  br label %103

; <label>:98                                      ; preds = %87
  %99 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %88, i32 0, i32 2
  %100 = load i8*, i8** %99
  %101 = bitcast i8* %100 to i32*
  %102 = getelementptr i8, i8* %100, i32 8
  store i8* %102, i8** %99
  br label %103

; <label>:103                                     ; preds = %98, %92
  %104 = phi i32* [ %96, %92 ], [ %101, %98 ]
  %105 = load i32, i32* %104
  %106 = icmp ne i32 %105, 105
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %103
  call void @abort() #4
  unreachable

; <label>:108                                     ; preds = %103
  %109 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %110 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %109, i32 0, i32 0
  %111 = load i32, i32* %110
  %112 = icmp ule i32 %111, 40
  br i1 %112, label %113, label %119

; <label>:113                                     ; preds = %108
  %114 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %109, i32 0, i32 3
  %115 = load i8*, i8** %114
  %116 = getelementptr i8, i8* %115, i32 %111
  %117 = bitcast i8* %116 to i32*
  %118 = add i32 %111, 8
  store i32 %118, i32* %110
  br label %124

; <label>:119                                     ; preds = %108
  %120 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %109, i32 0, i32 2
  %121 = load i8*, i8** %120
  %122 = bitcast i8* %121 to i32*
  %123 = getelementptr i8, i8* %121, i32 8
  store i8* %123, i8** %120
  br label %124

; <label>:124                                     ; preds = %119, %113
  %125 = phi i32* [ %117, %113 ], [ %122, %119 ]
  %126 = load i32, i32* %125
  %127 = icmp ne i32 %126, 106
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %124
  call void @abort() #4
  unreachable

; <label>:129                                     ; preds = %124
  %130 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %131 = bitcast %struct.__va_list_tag* %130 to i8*
  call void @llvm.va_end(i8* %131)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.1-svn253571-1~exp1 (branches/release_37) (based on LLVM 3.7.1)"}
