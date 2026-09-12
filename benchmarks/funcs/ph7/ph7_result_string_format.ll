; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_result_string_format(ptr noundef %pCtx, ptr noundef %zFormat, ...) #1 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pRet = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pRet, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags, align 8
  %and = and i32 %3, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %call = call i32 @PH7_MemObjRelease(ptr noundef %4)
  %5 = load ptr, ptr %p, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %6, -496
  %or = or i32 %and2, 1
  %7 = load ptr, ptr %p, align 8
  %iFlags3 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 2
  store i32 %or, ptr %iFlags3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %8 = load ptr, ptr %p, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %zFormat.addr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call5 = call i32 @SyBlobFormatAp(ptr noundef %sBlob, ptr noundef %9, ptr noundef %arraydecay4)
  store i32 %call5, ptr %rc, align 4
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay6)
  %10 = load i32, ptr %rc, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobFormatAp(ptr noundef, ptr noundef, ptr noundef) #1

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
