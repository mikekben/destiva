; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @fetchPayload(ptr noundef %pCur, ptr noundef %pAmt) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pAmt.addr = alloca ptr, align 8
  %amt = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pAmt, ptr %pAmt.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 10
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 3
  %1 = load i16, ptr %nLocal, align 4
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %amt, align 4
  %2 = load i32, ptr %amt, align 4
  %3 = load ptr, ptr %pCur.addr, align 8
  %pPage = getelementptr inbounds nuw %struct.BtCursor, ptr %3, i32 0, i32 18
  %4 = load ptr, ptr %pPage, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 20
  %5 = load ptr, ptr %aDataEnd, align 8
  %6 = load ptr, ptr %pCur.addr, align 8
  %info1 = getelementptr inbounds nuw %struct.BtCursor, ptr %6, i32 0, i32 10
  %pPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %info1, i32 0, i32 1
  %7 = load ptr, ptr %pPayload, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = trunc i64 %sub.ptr.sub to i32
  %cmp = icmp sgt i32 %2, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pCur.addr, align 8
  %pPage4 = getelementptr inbounds nuw %struct.BtCursor, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %pPage4, align 8
  %aDataEnd5 = getelementptr inbounds nuw %struct.MemPage, ptr %9, i32 0, i32 20
  %10 = load ptr, ptr %aDataEnd5, align 8
  %11 = load ptr, ptr %pCur.addr, align 8
  %info6 = getelementptr inbounds nuw %struct.BtCursor, ptr %11, i32 0, i32 10
  %pPayload7 = getelementptr inbounds nuw %struct.CellInfo, ptr %info6, i32 0, i32 1
  %12 = load ptr, ptr %pPayload7, align 8
  %sub.ptr.lhs.cast8 = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast9 = ptrtoint ptr %12 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  %conv11 = trunc i64 %sub.ptr.sub10 to i32
  %cmp12 = icmp sgt i32 0, %conv11
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load ptr, ptr %pCur.addr, align 8
  %pPage14 = getelementptr inbounds nuw %struct.BtCursor, ptr %13, i32 0, i32 18
  %14 = load ptr, ptr %pPage14, align 8
  %aDataEnd15 = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 20
  %15 = load ptr, ptr %aDataEnd15, align 8
  %16 = load ptr, ptr %pCur.addr, align 8
  %info16 = getelementptr inbounds nuw %struct.BtCursor, ptr %16, i32 0, i32 10
  %pPayload17 = getelementptr inbounds nuw %struct.CellInfo, ptr %info16, i32 0, i32 1
  %17 = load ptr, ptr %pPayload17, align 8
  %sub.ptr.lhs.cast18 = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast19 = ptrtoint ptr %17 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %conv21 = trunc i64 %sub.ptr.sub20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv21, %cond.false ]
  store i32 %cond, ptr %amt, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %18 = load i32, ptr %amt, align 4
  %19 = load ptr, ptr %pAmt.addr, align 8
  store i32 %18, ptr %19, align 4
  %20 = load ptr, ptr %pCur.addr, align 8
  %info22 = getelementptr inbounds nuw %struct.BtCursor, ptr %20, i32 0, i32 10
  %pPayload23 = getelementptr inbounds nuw %struct.CellInfo, ptr %info22, i32 0, i32 1
  %21 = load ptr, ptr %pPayload23, align 8
  ret ptr %21
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
