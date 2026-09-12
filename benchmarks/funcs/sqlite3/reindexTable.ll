; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RefillIndex(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @reindexTable(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %zColl) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %zColl.addr = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  %iDb = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %zColl, ptr %zColl.addr, align 8
  %0 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 16
  %1 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pTab.addr, align 8
  %pIndex1 = getelementptr inbounds nuw %struct.Table, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pIndex1, align 8
  store ptr %3, ptr %pIndex, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %pIndex, align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %zColl.addr, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load ptr, ptr %zColl.addr, align 8
  %7 = load ptr, ptr %pIndex, align 8
  %call = call i32 @collationMatch(ptr noundef %6, ptr noundef %7)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %for.body
  %8 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db, align 8
  %10 = load ptr, ptr %pTab.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 20
  %11 = load ptr, ptr %pSchema, align 8
  %call5 = call i32 @sqlite3SchemaToIndex(ptr noundef %9, ptr noundef %11)
  store i32 %call5, ptr %iDb, align 4
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %12, i32 noundef 0, i32 noundef %13)
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load ptr, ptr %pIndex, align 8
  call void @sqlite3RefillIndex(ptr noundef %14, ptr noundef %15, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load ptr, ptr %pIndex, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %pNext, align 8
  store ptr %17, ptr %pIndex, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @collationMatch(ptr noundef, ptr noundef) #0

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
