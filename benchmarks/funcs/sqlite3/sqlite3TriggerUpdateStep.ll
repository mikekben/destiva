; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3TriggerUpdateStep(ptr noundef %pParse, ptr noundef %pTableName, ptr noundef %pEList, ptr noundef %pWhere, i8 noundef zeroext %orconf, ptr noundef %zStart, ptr noundef %zEnd) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTableName.addr = alloca ptr, align 8
  %pEList.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %orconf.addr = alloca i8, align 1
  %zStart.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pTriggerStep = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTableName, ptr %pTableName.addr, align 8
  store ptr %pEList, ptr %pEList.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  store i8 %orconf, ptr %orconf.addr, align 1
  store ptr %zStart, ptr %zStart.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %pTableName.addr, align 8
  %4 = load ptr, ptr %zStart.addr, align 8
  %5 = load ptr, ptr %zEnd.addr, align 8
  %call = call ptr @triggerStepAllocate(ptr noundef %2, i8 noundef zeroext 125, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  store ptr %call, ptr %pTriggerStep, align 8
  %6 = load ptr, ptr %pTriggerStep, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 51
  %8 = load i8, ptr %eParseMode, align 4
  %conv = zext i8 %8 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %pEList.addr, align 8
  %10 = load ptr, ptr %pTriggerStep, align 8
  %pExprList = getelementptr inbounds nuw %struct.TriggerStep, ptr %10, i32 0, i32 6
  store ptr %9, ptr %pExprList, align 8
  %11 = load ptr, ptr %pWhere.addr, align 8
  %12 = load ptr, ptr %pTriggerStep, align 8
  %pWhere4 = getelementptr inbounds nuw %struct.TriggerStep, ptr %12, i32 0, i32 5
  store ptr %11, ptr %pWhere4, align 8
  store ptr null, ptr %pEList.addr, align 8
  store ptr null, ptr %pWhere.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %db, align 8
  %14 = load ptr, ptr %pEList.addr, align 8
  %call5 = call ptr @sqlite3ExprListDup(ptr noundef %13, ptr noundef %14, i32 noundef 1)
  %15 = load ptr, ptr %pTriggerStep, align 8
  %pExprList6 = getelementptr inbounds nuw %struct.TriggerStep, ptr %15, i32 0, i32 6
  store ptr %call5, ptr %pExprList6, align 8
  %16 = load ptr, ptr %db, align 8
  %17 = load ptr, ptr %pWhere.addr, align 8
  %call7 = call ptr @sqlite3ExprDup(ptr noundef %16, ptr noundef %17, i32 noundef 1)
  %18 = load ptr, ptr %pTriggerStep, align 8
  %pWhere8 = getelementptr inbounds nuw %struct.TriggerStep, ptr %18, i32 0, i32 5
  store ptr %call7, ptr %pWhere8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %19 = load i8, ptr %orconf.addr, align 1
  %20 = load ptr, ptr %pTriggerStep, align 8
  %orconf9 = getelementptr inbounds nuw %struct.TriggerStep, ptr %20, i32 0, i32 1
  store i8 %19, ptr %orconf9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %pEList.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %21, ptr noundef %22)
  %23 = load ptr, ptr %db, align 8
  %24 = load ptr, ptr %pWhere.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %23, ptr noundef %24)
  %25 = load ptr, ptr %pTriggerStep, align 8
  ret ptr %25
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @triggerStepAllocate(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
