; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @destroyTable(ptr noundef %pParse, ptr noundef %pTab) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %iTab = alloca i32, align 4
  %iDestroyed = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %iLargest = alloca i32, align 4
  %iIdx = alloca i32, align 4
  %iDb = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pTab.addr, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %tnum, align 8
  store i32 %1, ptr %iTab, align 4
  store i32 0, ptr %iDestroyed, align 4
  br label %while.body

while.body:                                       ; preds = %if.end11, %entry
  store i32 0, ptr %iLargest, align 4
  %2 = load i32, ptr %iDestroyed, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %3 = load i32, ptr %iTab, align 4
  %4 = load i32, ptr %iDestroyed, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %5 = load i32, ptr %iTab, align 4
  store i32 %5, ptr %iLargest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load ptr, ptr %pTab.addr, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pIndex, align 8
  store ptr %7, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %pIdx, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pIdx, align 8
  %tnum2 = getelementptr inbounds nuw %struct.Index, ptr %9, i32 0, i32 11
  %10 = load i32, ptr %tnum2, align 8
  store i32 %10, ptr %iIdx, align 4
  %11 = load i32, ptr %iDestroyed, align 4
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %for.body
  %12 = load i32, ptr %iIdx, align 4
  %13 = load i32, ptr %iDestroyed, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false4, %for.body
  %14 = load i32, ptr %iIdx, align 4
  %15 = load i32, ptr %iLargest, align 4
  %cmp6 = icmp sgt i32 %14, %15
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %16 = load i32, ptr %iIdx, align 4
  store i32 %16, ptr %iLargest, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %lor.lhs.false4
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %17 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %pNext, align 8
  store ptr %18, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %iLargest, align 4
  %cmp9 = icmp eq i32 %19, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.end
  ret void

if.else:                                          ; preds = %for.end
  %20 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %pTab.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 20
  %23 = load ptr, ptr %pSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %21, ptr noundef %23)
  store i32 %call, ptr %iDb, align 4
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load i32, ptr %iLargest, align 4
  %26 = load i32, ptr %iDb, align 4
  call void @destroyRootPage(ptr noundef %24, i32 noundef %25, i32 noundef %26)
  %27 = load i32, ptr %iLargest, align 4
  store i32 %27, ptr %iDestroyed, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else
  br label %while.body
}

; Function Attrs: nounwind uwtable
declare hidden void @destroyRootPage(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
