; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.IntegrityCk = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.sqlite3_str, ptr }
%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

@.str.360 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_vappendf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @checkAppendMsg(ptr noundef %pCheck, ptr noundef %zFormat, ...) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  %0 = load ptr, ptr %pCheck.addr, align 8
  %mxErr = getelementptr inbounds nuw %struct.IntegrityCk, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %mxErr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end17

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCheck.addr, align 8
  %mxErr1 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %mxErr1, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %mxErr1, align 4
  %4 = load ptr, ptr %pCheck.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.IntegrityCk, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %nErr, align 8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %nErr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %6 = load ptr, ptr %pCheck.addr, align 8
  %errMsg = getelementptr inbounds nuw %struct.IntegrityCk, ptr %6, i32 0, i32 10
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %errMsg, i32 0, i32 4
  %7 = load i32, ptr %nChar, align 8
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %pCheck.addr, align 8
  %errMsg4 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %8, i32 0, i32 10
  call void @sqlite3_str_append(ptr noundef %errMsg4, ptr noundef @.str.360, i32 noundef 1)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load ptr, ptr %pCheck.addr, align 8
  %zPfx = getelementptr inbounds nuw %struct.IntegrityCk, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %zPfx, align 8
  %tobool6 = icmp ne ptr %10, null
  br i1 %tobool6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  %11 = load ptr, ptr %pCheck.addr, align 8
  %errMsg8 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %pCheck.addr, align 8
  %zPfx9 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %zPfx9, align 8
  %14 = load ptr, ptr %pCheck.addr, align 8
  %v1 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %14, i32 0, i32 8
  %15 = load i32, ptr %v1, align 8
  %16 = load ptr, ptr %pCheck.addr, align 8
  %v2 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %16, i32 0, i32 9
  %17 = load i32, ptr %v2, align 4
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %errMsg8, ptr noundef %13, i32 noundef %15, i32 noundef %17)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5
  %18 = load ptr, ptr %pCheck.addr, align 8
  %errMsg11 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %zFormat.addr, align 8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @sqlite3_str_vappendf(ptr noundef %errMsg11, ptr noundef %19, ptr noundef %arraydecay12)
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay13)
  %20 = load ptr, ptr %pCheck.addr, align 8
  %errMsg14 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %20, i32 0, i32 10
  %accError = getelementptr inbounds nuw %struct.sqlite3_str, ptr %errMsg14, i32 0, i32 5
  %21 = load i8, ptr %accError, align 4
  %conv = zext i8 %21 to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  %22 = load ptr, ptr %pCheck.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.IntegrityCk, ptr %22, i32 0, i32 6
  store i32 1, ptr %mallocFailed, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end10, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
