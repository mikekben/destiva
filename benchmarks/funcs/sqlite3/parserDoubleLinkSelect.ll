; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.791 = external hidden unnamed_addr constant [34 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @parserDoubleLinkSelect(ptr noundef %pParse, ptr noundef %p) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %mxSelect = alloca i32, align 4
  %cnt = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %pPrior, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  store ptr null, ptr %pNext, align 8
  store i32 0, ptr %cnt, align 4
  %2 = load ptr, ptr %p.addr, align 8
  store ptr %2, ptr %pLoop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load ptr, ptr %pLoop, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pNext, align 8
  %5 = load ptr, ptr %pLoop, align 8
  %pNext2 = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 14
  store ptr %4, ptr %pNext2, align 8
  %6 = load ptr, ptr %pLoop, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %selFlags, align 4
  %or = or i32 %7, 256
  store i32 %or, ptr %selFlags, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %pLoop, align 8
  store ptr %8, ptr %pNext, align 8
  %9 = load ptr, ptr %pLoop, align 8
  %pPrior3 = getelementptr inbounds nuw %struct.Select, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %pPrior3, align 8
  store ptr %10, ptr %pLoop, align 8
  %11 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %cnt, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %p.addr, align 8
  %selFlags4 = getelementptr inbounds nuw %struct.Select, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %selFlags4, align 4
  %and = and i32 %13, 1024
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %14 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 4
  %16 = load i32, ptr %arrayidx, align 4
  store i32 %16, ptr %mxSelect, align 4
  %cmp5 = icmp sgt i32 %16, 0
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %17 = load i32, ptr %cnt, align 4
  %18 = load i32, ptr %mxSelect, align 4
  %cmp7 = icmp sgt i32 %17, %18
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true6
  %19 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %19, ptr noundef @.str.791)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true6, %land.lhs.true, %for.end
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  ret void
}

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
