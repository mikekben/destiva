; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyMemcmp(ptr noundef %pB1, ptr noundef %pB2, i32 noundef %nSize) #0 {
entry:
  %retval = alloca i32, align 4
  %pB1.addr = alloca ptr, align 8
  %pB2.addr = alloca ptr, align 8
  %nSize.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %r1 = alloca ptr, align 8
  %r2 = alloca ptr, align 8
  %LEN = alloca i32, align 4
  store ptr %pB1, ptr %pB1.addr, align 8
  store ptr %pB2, ptr %pB2.addr, align 8
  store i32 %nSize, ptr %nSize.addr, align 4
  %0 = load i32, ptr %nSize.addr, align 4
  %cmp = icmp ule i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pB1.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %pB2.addr, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load ptr, ptr %pB1.addr, align 8
  %cmp4 = icmp ne ptr %3, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  %4 = load ptr, ptr %pB2.addr, align 8
  %cmp5 = icmp eq ptr %4, null
  %5 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 0, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond6, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pB1.addr, align 8
  store ptr %6, ptr %r1, align 8
  %7 = load ptr, ptr %pB2.addr, align 8
  store ptr %7, ptr %r2, align 8
  %8 = load i32, ptr %nSize.addr, align 4
  store i32 %8, ptr %LEN, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end55, %if.end7
  %9 = load i32, ptr %LEN, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %for.cond
  br label %for.end

if.end9:                                          ; preds = %for.cond
  %10 = load ptr, ptr %r1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load ptr, ptr %r2, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp ne i32 %conv, %conv11
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  br label %for.end

if.end15:                                         ; preds = %if.end9
  %14 = load ptr, ptr %r1, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %r1, align 8
  %15 = load ptr, ptr %r2, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr16, ptr %r2, align 8
  %16 = load i32, ptr %LEN, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %LEN, align 4
  %17 = load i32, ptr %LEN, align 4
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  br label %for.end

if.end19:                                         ; preds = %if.end15
  %18 = load ptr, ptr %r1, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %19 to i32
  %20 = load ptr, ptr %r2, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  %cmp24 = icmp ne i32 %conv21, %conv23
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end19
  br label %for.end

if.end27:                                         ; preds = %if.end19
  %22 = load ptr, ptr %r1, align 8
  %incdec.ptr28 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr28, ptr %r1, align 8
  %23 = load ptr, ptr %r2, align 8
  %incdec.ptr29 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr29, ptr %r2, align 8
  %24 = load i32, ptr %LEN, align 4
  %dec30 = add i32 %24, -1
  store i32 %dec30, ptr %LEN, align 4
  %25 = load i32, ptr %LEN, align 4
  %tobool31 = icmp ne i32 %25, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end27
  br label %for.end

if.end33:                                         ; preds = %if.end27
  %26 = load ptr, ptr %r1, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %27 to i32
  %28 = load ptr, ptr %r2, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %29 to i32
  %cmp38 = icmp ne i32 %conv35, %conv37
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end33
  br label %for.end

if.end41:                                         ; preds = %if.end33
  %30 = load ptr, ptr %r1, align 8
  %incdec.ptr42 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr42, ptr %r1, align 8
  %31 = load ptr, ptr %r2, align 8
  %incdec.ptr43 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr43, ptr %r2, align 8
  %32 = load i32, ptr %LEN, align 4
  %dec44 = add i32 %32, -1
  store i32 %dec44, ptr %LEN, align 4
  %33 = load i32, ptr %LEN, align 4
  %tobool45 = icmp ne i32 %33, 0
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end41
  br label %for.end

if.end47:                                         ; preds = %if.end41
  %34 = load ptr, ptr %r1, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %35 to i32
  %36 = load ptr, ptr %r2, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %37 to i32
  %cmp52 = icmp ne i32 %conv49, %conv51
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end47
  br label %for.end

if.end55:                                         ; preds = %if.end47
  %38 = load ptr, ptr %r1, align 8
  %incdec.ptr56 = getelementptr inbounds nuw i8, ptr %38, i32 1
  store ptr %incdec.ptr56, ptr %r1, align 8
  %39 = load ptr, ptr %r2, align 8
  %incdec.ptr57 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr57, ptr %r2, align 8
  %40 = load i32, ptr %LEN, align 4
  %dec58 = add i32 %40, -1
  store i32 %dec58, ptr %LEN, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then54, %if.then46, %if.then40, %if.then32, %if.then26, %if.then18, %if.then14, %if.then8
  %41 = load i32, ptr %LEN, align 4
  %tobool59 = icmp ne i32 %41, 0
  br i1 %tobool59, label %cond.false61, label %cond.true60

cond.true60:                                      ; preds = %for.end
  br label %cond.end66

cond.false61:                                     ; preds = %for.end
  %42 = load ptr, ptr %r1, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %43 to i32
  %44 = load ptr, ptr %r2, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %45 to i32
  %sub = sub nsw i32 %conv63, %conv65
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false61, %cond.true60
  %cond67 = phi i32 [ 0, %cond.true60 ], [ %sub, %cond.false61 ]
  store i32 %cond67, ptr %rc, align 4
  %46 = load i32, ptr %rc, align 4
  store i32 %46, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end66, %cond.end, %if.then
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
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
