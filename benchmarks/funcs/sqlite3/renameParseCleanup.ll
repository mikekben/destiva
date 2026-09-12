; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeFinalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ParserReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FreeIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @renameParseCleanup(ptr noundef %pParse) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %pVdbe2 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pVdbe2, align 8
  %call = call i32 @sqlite3VdbeFinalize(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %db, align 8
  %7 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 58
  %8 = load ptr, ptr %pNewTable, align 8
  call void @sqlite3DeleteTable(ptr noundef %6, ptr noundef %8)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load ptr, ptr %pParse.addr, align 8
  %pNewIndex = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 59
  %10 = load ptr, ptr %pNewIndex, align 8
  store ptr %10, ptr %pIdx, align 8
  %cmp = icmp ne ptr %10, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %pNext, align 8
  %13 = load ptr, ptr %pParse.addr, align 8
  %pNewIndex3 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 59
  store ptr %12, ptr %pNewIndex3, align 8
  %14 = load ptr, ptr %db, align 8
  %15 = load ptr, ptr %pIdx, align 8
  call void @sqlite3FreeIndex(ptr noundef %14, ptr noundef %15)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %db, align 8
  %17 = load ptr, ptr %pParse.addr, align 8
  %pNewTrigger = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 60
  %18 = load ptr, ptr %pNewTrigger, align 8
  call void @sqlite3DeleteTrigger(ptr noundef %16, ptr noundef %18)
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %pParse.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3DbFree(ptr noundef %19, ptr noundef %21)
  %22 = load ptr, ptr %db, align 8
  %23 = load ptr, ptr %pParse.addr, align 8
  %pRename = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 68
  %24 = load ptr, ptr %pRename, align 8
  call void @renameTokenFree(ptr noundef %22, ptr noundef %24)
  %25 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3ParserReset(ptr noundef %25)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @renameTokenFree(ptr noundef, ptr noundef) #0

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
