; ModuleID = '<stdin>'

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_copy(i8*, i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

define i32 @test(i32 %X, ...) {
  %ap = alloca i8*
  %va.upgrd.1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %va.upgrd.1)
  %tmp = va_arg i8** %ap, i32
  %aq = alloca i8*
  %va0.upgrd.2 = bitcast i8** %aq to i8*
  %va1.upgrd.3 = bitcast i8** %ap to i8*
  call void @llvm.va_copy(i8* %va0.upgrd.2, i8* %va1.upgrd.3)
  %va.upgrd.4 = bitcast i8** %aq to i8*
  call void @llvm.va_end(i8* %va.upgrd.4)
  %va.upgrd.5 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %va.upgrd.5)
  ret i32 %tmp
}
