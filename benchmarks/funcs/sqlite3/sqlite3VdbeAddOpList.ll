; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }
%struct.VdbeOpList = type { i8, i8, i8, i8 }

@sqlite3OpcodeProperty = external hidden constant [173 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VdbeAddOpList(ptr noundef %p, i32 noundef %nOp, ptr noundef %aOp, i32 noundef %iLineno) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %nOp.addr = alloca i32, align 4
  %aOp.addr = alloca ptr, align 8
  %iLineno.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pOut = alloca ptr, align 8
  %pFirst = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nOp, ptr %nOp.addr, align 4
  store ptr %aOp, ptr %aOp.addr, align 8
  store i32 %iLineno, ptr %iLineno.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %nOp1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 24
  %1 = load i32, ptr %nOp1, align 8
  %2 = load i32, ptr %nOp.addr, align 4
  %add = add nsw i32 %1, %2
  %3 = load ptr, ptr %p.addr, align 8
  %nOpAlloc = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 25
  %4 = load i32, ptr %nOpAlloc, align 4
  %cmp = icmp sgt i32 %add, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %6 = load i32, ptr %nOp.addr, align 4
  %call = call i32 @growOpArray(ptr noundef %5, i32 noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %p.addr, align 8
  %aOp2 = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 23
  %8 = load ptr, ptr %aOp2, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %nOp3 = getelementptr inbounds nuw %struct.Vdbe, ptr %9, i32 0, i32 24
  %10 = load i32, ptr %nOp3, align 8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.VdbeOp, ptr %8, i64 %idxprom
  store ptr %arrayidx, ptr %pOut, align 8
  store ptr %arrayidx, ptr %pFirst, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %nOp.addr, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %aOp.addr, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOpList, ptr %13, i32 0, i32 0
  %14 = load i8, ptr %opcode, align 1
  %15 = load ptr, ptr %pOut, align 8
  %opcode5 = getelementptr inbounds nuw %struct.VdbeOp, ptr %15, i32 0, i32 0
  store i8 %14, ptr %opcode5, align 8
  %16 = load ptr, ptr %aOp.addr, align 8
  %p1 = getelementptr inbounds nuw %struct.VdbeOpList, ptr %16, i32 0, i32 1
  %17 = load i8, ptr %p1, align 1
  %conv = sext i8 %17 to i32
  %18 = load ptr, ptr %pOut, align 8
  %p16 = getelementptr inbounds nuw %struct.VdbeOp, ptr %18, i32 0, i32 3
  store i32 %conv, ptr %p16, align 4
  %19 = load ptr, ptr %aOp.addr, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOpList, ptr %19, i32 0, i32 2
  %20 = load i8, ptr %p2, align 1
  %conv7 = sext i8 %20 to i32
  %21 = load ptr, ptr %pOut, align 8
  %p28 = getelementptr inbounds nuw %struct.VdbeOp, ptr %21, i32 0, i32 4
  store i32 %conv7, ptr %p28, align 8
  %22 = load ptr, ptr %aOp.addr, align 8
  %opcode9 = getelementptr inbounds nuw %struct.VdbeOpList, ptr %22, i32 0, i32 0
  %23 = load i8, ptr %opcode9, align 1
  %idxprom10 = zext i8 %23 to i64
  %arrayidx11 = getelementptr inbounds nuw [173 x i8], ptr @sqlite3OpcodeProperty, i64 0, i64 %idxprom10
  %24 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %24 to i32
  %and = and i32 %conv12, 1
  %cmp13 = icmp ne i32 %and, 0
  br i1 %cmp13, label %land.lhs.true15, label %if.end24

land.lhs.true15:                                  ; preds = %for.body
  %25 = load ptr, ptr %aOp.addr, align 8
  %p216 = getelementptr inbounds nuw %struct.VdbeOpList, ptr %25, i32 0, i32 2
  %26 = load i8, ptr %p216, align 1
  %conv17 = sext i8 %26 to i32
  %cmp18 = icmp sgt i32 %conv17, 0
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %land.lhs.true15
  %27 = load ptr, ptr %p.addr, align 8
  %nOp21 = getelementptr inbounds nuw %struct.Vdbe, ptr %27, i32 0, i32 24
  %28 = load i32, ptr %nOp21, align 8
  %29 = load ptr, ptr %pOut, align 8
  %p222 = getelementptr inbounds nuw %struct.VdbeOp, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %p222, align 8
  %add23 = add nsw i32 %30, %28
  store i32 %add23, ptr %p222, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true15, %for.body
  %31 = load ptr, ptr %aOp.addr, align 8
  %p3 = getelementptr inbounds nuw %struct.VdbeOpList, ptr %31, i32 0, i32 3
  %32 = load i8, ptr %p3, align 1
  %conv25 = sext i8 %32 to i32
  %33 = load ptr, ptr %pOut, align 8
  %p326 = getelementptr inbounds nuw %struct.VdbeOp, ptr %33, i32 0, i32 5
  store i32 %conv25, ptr %p326, align 4
  %34 = load ptr, ptr %pOut, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %34, i32 0, i32 1
  store i8 0, ptr %p4type, align 1
  %35 = load ptr, ptr %pOut, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %35, i32 0, i32 6
  store ptr null, ptr %p4, align 8
  %36 = load ptr, ptr %pOut, align 8
  %p5 = getelementptr inbounds nuw %struct.VdbeOp, ptr %36, i32 0, i32 2
  store i16 0, ptr %p5, align 2
  %37 = load i32, ptr %iLineno.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  %39 = load ptr, ptr %aOp.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.VdbeOpList, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %aOp.addr, align 8
  %40 = load ptr, ptr %pOut, align 8
  %incdec.ptr27 = getelementptr inbounds nuw %struct.VdbeOp, ptr %40, i32 1
  store ptr %incdec.ptr27, ptr %pOut, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %41 = load i32, ptr %nOp.addr, align 4
  %42 = load ptr, ptr %p.addr, align 8
  %nOp28 = getelementptr inbounds nuw %struct.Vdbe, ptr %42, i32 0, i32 24
  %43 = load i32, ptr %nOp28, align 8
  %add29 = add nsw i32 %43, %41
  store i32 %add29, ptr %nOp28, align 8
  %44 = load ptr, ptr %pFirst, align 8
  store ptr %44, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %45 = load ptr, ptr %retval, align 8
  ret ptr %45
}

; Function Attrs: nounwind uwtable
declare hidden i32 @growOpArray(ptr noundef, i32 noundef) #0

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
