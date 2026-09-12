; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetOp(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @translateColumnToCopy(ptr noundef %pParse, i32 noundef %iStart, i32 noundef %iTabCur, i32 noundef %iRegister, i32 noundef %iAutoidxCur) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iStart.addr = alloca i32, align 4
  %iTabCur.addr = alloca i32, align 4
  %iRegister.addr = alloca i32, align 4
  %iAutoidxCur.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %pOp = alloca ptr, align 8
  %iEnd = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iStart, ptr %iStart.addr, align 4
  store i32 %iTabCur, ptr %iTabCur.addr, align 4
  store i32 %iRegister, ptr %iRegister.addr, align 4
  store i32 %iAutoidxCur, ptr %iAutoidxCur.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %v, align 8
  %3 = load i32, ptr %iStart.addr, align 4
  %call = call ptr @sqlite3VdbeGetOp(ptr noundef %2, i32 noundef %3)
  store ptr %call, ptr %pOp, align 8
  %4 = load ptr, ptr %v, align 8
  %call1 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %4)
  store i32 %call1, ptr %iEnd, align 4
  %5 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 19
  %7 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %iStart.addr, align 4
  %9 = load i32, ptr %iEnd, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pOp, align 8
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %p1, align 4
  %12 = load i32, ptr %iTabCur.addr, align 4
  %cmp2 = icmp ne i32 %11, %12
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %13 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %13, i32 0, i32 0
  %14 = load i8, ptr %opcode, align 8
  %conv = zext i8 %14 to i32
  %cmp5 = icmp eq i32 %conv, 90
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %15 = load ptr, ptr %pOp, align 8
  %opcode8 = getelementptr inbounds nuw %struct.VdbeOp, ptr %15, i32 0, i32 0
  store i8 78, ptr %opcode8, align 8
  %16 = load ptr, ptr %pOp, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %p2, align 8
  %18 = load i32, ptr %iRegister.addr, align 4
  %add = add nsw i32 %17, %18
  %19 = load ptr, ptr %pOp, align 8
  %p19 = getelementptr inbounds nuw %struct.VdbeOp, ptr %19, i32 0, i32 3
  store i32 %add, ptr %p19, align 4
  %20 = load ptr, ptr %pOp, align 8
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %p3, align 4
  %22 = load ptr, ptr %pOp, align 8
  %p210 = getelementptr inbounds nuw %struct.VdbeOp, ptr %22, i32 0, i32 4
  store i32 %21, ptr %p210, align 8
  %23 = load ptr, ptr %pOp, align 8
  %p311 = getelementptr inbounds nuw %struct.VdbeOp, ptr %23, i32 0, i32 5
  store i32 0, ptr %p311, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end4
  %24 = load ptr, ptr %pOp, align 8
  %opcode12 = getelementptr inbounds nuw %struct.VdbeOp, ptr %24, i32 0, i32 0
  %25 = load i8, ptr %opcode12, align 8
  %conv13 = zext i8 %25 to i32
  %cmp14 = icmp eq i32 %conv13, 128
  br i1 %cmp14, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.else
  %26 = load i32, ptr %iAutoidxCur.addr, align 4
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.then16
  %27 = load ptr, ptr %pOp, align 8
  %opcode19 = getelementptr inbounds nuw %struct.VdbeOp, ptr %27, i32 0, i32 0
  store i8 120, ptr %opcode19, align 8
  %28 = load i32, ptr %iAutoidxCur.addr, align 4
  %29 = load ptr, ptr %pOp, align 8
  %p120 = getelementptr inbounds nuw %struct.VdbeOp, ptr %29, i32 0, i32 3
  store i32 %28, ptr %p120, align 4
  br label %if.end25

if.else21:                                        ; preds = %if.then16
  %30 = load ptr, ptr %pOp, align 8
  %opcode22 = getelementptr inbounds nuw %struct.VdbeOp, ptr %30, i32 0, i32 0
  store i8 73, ptr %opcode22, align 8
  %31 = load ptr, ptr %pOp, align 8
  %p123 = getelementptr inbounds nuw %struct.VdbeOp, ptr %31, i32 0, i32 3
  store i32 0, ptr %p123, align 4
  %32 = load ptr, ptr %pOp, align 8
  %p324 = getelementptr inbounds nuw %struct.VdbeOp, ptr %32, i32 0, i32 5
  store i32 0, ptr %p324, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then18
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then7
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %if.then3
  %33 = load i32, ptr %iStart.addr, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %iStart.addr, align 4
  %34 = load ptr, ptr %pOp, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.VdbeOp, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %pOp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond, %if.then
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
