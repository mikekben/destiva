; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str.119 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @FormatMount(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @SyBufferFormat(ptr noundef %zBuf, i32 noundef %nLen, ptr noundef %zFormat, ...) #1 {
entry:
  %retval = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zFormat.addr = alloca ptr, align 8
  %sBlob = alloca %struct.SyBlob, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %n = alloca i32, align 4
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %zFormat, ptr %zFormat.addr, align 8
  %0 = load ptr, ptr %zBuf.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  %sub = sub i32 %1, 1
  %call = call i32 @SyBlobInitFromBuf(ptr noundef %sBlob, ptr noundef %0, i32 noundef %sub)
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %2 = load ptr, ptr %zFormat.addr, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call2 = call i32 @FormatMount(i32 noundef 6, ptr noundef %sBlob, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay3)
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %3 = load i32, ptr %nByte, align 8
  store i32 %3, ptr %n, align 4
  %mByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 3
  %4 = load i32, ptr %mByte, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %mByte, align 4
  %call4 = call i32 @SyBlobAppend(ptr noundef %sBlob, ptr noundef @.str.119, i32 noundef 1)
  %5 = load i32, ptr %n, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInitFromBuf(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
