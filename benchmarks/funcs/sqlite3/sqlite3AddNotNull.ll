; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AddNotNull(ptr noundef %pParse, i32 noundef %onError) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %onError.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %onError, ptr %onError.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 58
  %1 = load ptr, ptr %pNewTable, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 11
  %4 = load i16, ptr %nCol, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp slt i32 %conv, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end18

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %p, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %aCol, align 8
  %7 = load ptr, ptr %p, align 8
  %nCol3 = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 11
  %8 = load i16, ptr %nCol3, align 2
  %conv4 = sext i16 %8 to i32
  %sub = sub nsw i32 %conv4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %pCol, align 8
  %9 = load i32, ptr %onError.addr, align 4
  %conv5 = trunc i32 %9 to i8
  %10 = load ptr, ptr %pCol, align 8
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %10, i32 0, i32 3
  store i8 %conv5, ptr %notNull, align 8
  %11 = load ptr, ptr %p, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 9
  %12 = load i32, ptr %tabFlags, align 8
  %or = or i32 %12, 512
  store i32 %or, ptr %tabFlags, align 8
  %13 = load ptr, ptr %pCol, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %13, i32 0, i32 6
  %14 = load i8, ptr %colFlags, align 1
  %conv6 = zext i8 %14 to i32
  %and = and i32 %conv6, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.end
  %15 = load ptr, ptr %p, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %pIndex, align 8
  store ptr %16, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then7
  %17 = load ptr, ptr %pIdx, align 8
  %tobool8 = icmp ne ptr %17, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %aiColumn, align 8
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 0
  %20 = load i16, ptr %arrayidx9, align 2
  %conv10 = sext i16 %20 to i32
  %21 = load ptr, ptr %p, align 8
  %nCol11 = getelementptr inbounds nuw %struct.Table, ptr %21, i32 0, i32 11
  %22 = load i16, ptr %nCol11, align 2
  %conv12 = sext i16 %22 to i32
  %sub13 = sub nsw i32 %conv12, 1
  %cmp14 = icmp eq i32 %conv10, %sub13
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  %23 = load ptr, ptr %pIdx, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %23, i32 0, i32 16
  %bf.load = load i16, ptr %uniqNotNull, align 1
  %bf.clear = and i16 %bf.load, -9
  %bf.set = or i16 %bf.clear, 8
  store i16 %bf.set, ptr %uniqNotNull, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %24 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %pNext, align 8
  store ptr %25, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.end, %if.then
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
