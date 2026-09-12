; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetOp(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @readsTable(ptr noundef %p, i32 noundef %iDb, ptr noundef %pTab) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %pTab.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %iEnd = alloca i32, align 4
  %pVTab = alloca ptr, align 8
  %pOp = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  %tnum = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  %1 = load ptr, ptr %v, align 8
  %call1 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %1)
  store i32 %call1, ptr %iEnd, align 4
  %2 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pTab.addr, align 8
  %call2 = call ptr @sqlite3GetVTable(ptr noundef %5, ptr noundef %6)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %pVTab, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %cond.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %iEnd, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %v, align 8
  %10 = load i32, ptr %i, align 4
  %call3 = call ptr @sqlite3VdbeGetOp(ptr noundef %9, i32 noundef %10)
  store ptr %call3, ptr %pOp, align 8
  %11 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %11, i32 0, i32 0
  %12 = load i8, ptr %opcode, align 8
  %conv = zext i8 %12 to i32
  %cmp4 = icmp eq i32 %conv, 97
  br i1 %cmp4, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %pOp, align 8
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %p3, align 4
  %15 = load i32, ptr %iDb.addr, align 4
  %cmp6 = icmp eq i32 %14, %15
  br i1 %cmp6, label %if.then, label %if.end21

if.then:                                          ; preds = %land.lhs.true
  %16 = load ptr, ptr %pOp, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %p2, align 8
  store i32 %17, ptr %tnum, align 4
  %18 = load i32, ptr %tnum, align 4
  %19 = load ptr, ptr %pTab.addr, align 8
  %tnum8 = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 7
  %20 = load i32, ptr %tnum8, align 8
  %cmp9 = icmp eq i32 %18, %20
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %21 = load ptr, ptr %pTab.addr, align 8
  %pIndex12 = getelementptr inbounds nuw %struct.Table, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pIndex12, align 8
  store ptr %22, ptr %pIndex, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %if.end
  %23 = load ptr, ptr %pIndex, align 8
  %tobool14 = icmp ne ptr %23, null
  br i1 %tobool14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %24 = load i32, ptr %tnum, align 4
  %25 = load ptr, ptr %pIndex, align 8
  %tnum16 = getelementptr inbounds nuw %struct.Index, ptr %25, i32 0, i32 11
  %26 = load i32, ptr %tnum16, align 8
  %cmp17 = icmp eq i32 %24, %26
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body15
  store i32 1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %for.body15
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %27 = load ptr, ptr %pIndex, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %pNext, align 8
  store ptr %28, ptr %pIndex, align 8
  br label %for.cond13, !llvm.loop !6

for.end:                                          ; preds = %for.cond13
  br label %if.end21

if.end21:                                         ; preds = %for.end, %land.lhs.true, %for.body
  %29 = load ptr, ptr %pOp, align 8
  %opcode22 = getelementptr inbounds nuw %struct.VdbeOp, ptr %29, i32 0, i32 0
  %30 = load i8, ptr %opcode22, align 8
  %conv23 = zext i8 %30 to i32
  %cmp24 = icmp eq i32 %conv23, 163
  br i1 %cmp24, label %land.lhs.true26, label %if.end30

land.lhs.true26:                                  ; preds = %if.end21
  %31 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %p4, align 8
  %33 = load ptr, ptr %pVTab, align 8
  %cmp27 = icmp eq ptr %32, %33
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true26
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %land.lhs.true26, %if.end21
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end32:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end32, %if.then29, %if.then19, %if.then11
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
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
!8 = distinct !{!8, !7}
