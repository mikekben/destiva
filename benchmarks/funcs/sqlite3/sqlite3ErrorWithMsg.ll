; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ErrorWithMsg(ptr noundef %db, i32 noundef %err_code, ptr noundef %zFormat, ...) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %err_code.addr = alloca i32, align 4
  %zFormat.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %db, ptr %db.addr, align 8
  store i32 %err_code, ptr %err_code.addr, align 4
  store ptr %zFormat, ptr %zFormat.addr, align 8
  %0 = load i32, ptr %err_code.addr, align 4
  %1 = load ptr, ptr %db.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 12
  store i32 %0, ptr %errCode, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load i32, ptr %err_code.addr, align 4
  call void @sqlite3SystemError(ptr noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %zFormat.addr, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load i32, ptr %err_code.addr, align 4
  call void @sqlite3Error(ptr noundef %5, i32 noundef %6)
  br label %if.end8

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %db.addr, align 8
  %pErr = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 59
  %8 = load ptr, ptr %pErr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %9 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3ValueNew(ptr noundef %9)
  %10 = load ptr, ptr %db.addr, align 8
  %pErr1 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 59
  store ptr %call, ptr %pErr1, align 8
  %cmp2 = icmp ne ptr %call, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.else
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %zFormat.addr, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call5 = call ptr @sqlite3VMPrintf(ptr noundef %11, ptr noundef %12, ptr noundef %arraydecay4)
  store ptr %call5, ptr %z, align 8
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay6)
  %13 = load ptr, ptr %db.addr, align 8
  %pErr7 = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 59
  %14 = load ptr, ptr %pErr7, align 8
  %15 = load ptr, ptr %z, align 8
  call void @sqlite3ValueSetStr(ptr noundef %14, i32 noundef -1, ptr noundef %15, i8 noundef zeroext 1, ptr noundef @sqlite3MallocSize)
  br label %if.end

if.end:                                           ; preds = %if.then3, %lor.lhs.false
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ValueNew(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueSetStr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SystemError(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VMPrintf(ptr noundef, ptr noundef, ptr noundef) #0

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
