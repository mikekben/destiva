; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.789 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.790 = external hidden unnamed_addr constant [23 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @explainSimpleCount(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %pIdx) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %bCover = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %explain = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 50
  %1 = load i8, ptr %explain, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pIdx.addr, align 8
  %cmp2 = icmp ne ptr %2, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %3 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %tabFlags, align 8
  %and = and i32 %4, 32
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load ptr, ptr %pIdx.addr, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %5, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp6 = icmp eq i32 %bf.cast, 2
  %lnot = xor i1 %cmp6, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %6 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.then
  %7 = phi i1 [ false, %if.then ], [ %6, %lor.end ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, ptr %bCover, align 4
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zName, align 8
  %11 = load i32, ptr %bCover, align 4
  %tobool = icmp ne i32 %11, 0
  %12 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.790, ptr @.str.3
  %13 = load i32, ptr %bCover, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %14 = load ptr, ptr %pIdx.addr, align 8
  %zName9 = getelementptr inbounds nuw %struct.Index, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %zName9, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi ptr [ %15, %cond.true ], [ @.str.3, %cond.false ]
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %8, i8 noundef zeroext 0, ptr noundef @.str.789, ptr noundef %10, ptr noundef %cond, ptr noundef %cond10)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
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
