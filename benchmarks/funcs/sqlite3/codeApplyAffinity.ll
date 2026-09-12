; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @codeApplyAffinity(ptr noundef %pParse, i32 noundef %base, i32 noundef %n, ptr noundef %zAff) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %zAff.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %base, ptr %base.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %zAff, ptr %zAff.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %zAff.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end19

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %zAff.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp sle i32 %conv, 65
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %n.addr, align 4
  %8 = load i32, ptr %base.addr, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %base.addr, align 4
  %9 = load ptr, ptr %zAff.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %zAff.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond4

while.cond4:                                      ; preds = %while.body13, %while.end
  %10 = load i32, ptr %n.addr, align 4
  %cmp5 = icmp sgt i32 %10, 1
  br i1 %cmp5, label %land.rhs7, label %land.end12

land.rhs7:                                        ; preds = %while.cond4
  %11 = load ptr, ptr %zAff.addr, align 8
  %12 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %13 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp sle i32 %conv9, 65
  br label %land.end12

land.end12:                                       ; preds = %land.rhs7, %while.cond4
  %14 = phi i1 [ false, %while.cond4 ], [ %cmp10, %land.rhs7 ]
  br i1 %14, label %while.body13, label %while.end15

while.body13:                                     ; preds = %land.end12
  %15 = load i32, ptr %n.addr, align 4
  %dec14 = add nsw i32 %15, -1
  store i32 %dec14, ptr %n.addr, align 4
  br label %while.cond4, !llvm.loop !8

while.end15:                                      ; preds = %land.end12
  %16 = load i32, ptr %n.addr, align 4
  %cmp16 = icmp sgt i32 %16, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.end15
  %17 = load ptr, ptr %v, align 8
  %18 = load i32, ptr %base.addr, align 4
  %19 = load i32, ptr %n.addr, align 4
  %20 = load ptr, ptr %zAff.addr, align 8
  %21 = load i32, ptr %n.addr, align 4
  %call = call i32 @sqlite3VdbeAddOp4(ptr noundef %17, i32 noundef 91, i32 noundef %18, i32 noundef %19, i32 noundef 0, ptr noundef %20, i32 noundef %21)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %while.end15, %if.then
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
!8 = distinct !{!8, !7}
