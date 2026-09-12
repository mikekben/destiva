; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjIsEmpty(ptr noundef %pObj) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %pObj.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %3, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %4 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %x, align 8
  %cmp = icmp eq i64 %5, 0
  %6 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

if.else5:                                         ; preds = %if.else
  %7 = load ptr, ptr %pObj.addr, align 8
  %iFlags6 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iFlags6, align 8
  %and7 = and i32 %8, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else5
  %9 = load ptr, ptr %pObj.addr, align 8
  %rVal = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 0
  %10 = load double, ptr %rVal, align 8
  %cmp10 = fcmp oeq double %10, 0.000000e+00
  %11 = zext i1 %cmp10 to i64
  %cond11 = select i1 %cmp10, i32 1, i32 0
  store i32 %cond11, ptr %retval, align 4
  br label %return

if.else12:                                        ; preds = %if.else5
  %12 = load ptr, ptr %pObj.addr, align 8
  %iFlags13 = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %iFlags13, align 8
  %and14 = and i32 %13, 8
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.else12
  %14 = load ptr, ptr %pObj.addr, align 8
  %x17 = getelementptr inbounds nuw %struct.ph7_value, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %x17, align 8
  %tobool18 = icmp ne i64 %15, 0
  %lnot = xor i1 %tobool18, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.else19:                                        ; preds = %if.else12
  %16 = load ptr, ptr %pObj.addr, align 8
  %iFlags20 = getelementptr inbounds nuw %struct.ph7_value, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %iFlags20, align 8
  %and21 = and i32 %17, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.else38

if.then23:                                        ; preds = %if.else19
  %18 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %18, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %19 = load i32, ptr %nByte, align 8
  %cmp24 = icmp ule i32 %19, 0
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then23
  store i32 1, ptr %retval, align 4
  br label %return

if.else26:                                        ; preds = %if.then23
  %20 = load ptr, ptr %pObj.addr, align 8
  %sBlob27 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob27, i32 0, i32 1
  %21 = load ptr, ptr %pBlob, align 8
  store ptr %21, ptr %zIn, align 8
  %22 = load ptr, ptr %zIn, align 8
  %23 = load ptr, ptr %pObj.addr, align 8
  %sBlob28 = getelementptr inbounds nuw %struct.ph7_value, ptr %23, i32 0, i32 4
  %nByte29 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob28, i32 0, i32 2
  %24 = load i32, ptr %nByte29, align 8
  %idxprom = zext i32 %24 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %22, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else26
  %25 = load ptr, ptr %zIn, align 8
  %26 = load ptr, ptr %zEnd, align 8
  %cmp30 = icmp ult ptr %25, %26
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load ptr, ptr %zIn, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx31, align 1
  %conv = sext i8 %28 to i32
  %cmp32 = icmp ne i32 %conv, 48
  br i1 %cmp32, label %if.then34, label %if.end

if.then34:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %29 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then34, %while.cond
  %30 = load ptr, ptr %zIn, align 8
  %31 = load ptr, ptr %zEnd, align 8
  %cmp35 = icmp uge ptr %30, %31
  %32 = zext i1 %cmp35 to i64
  %cond37 = select i1 %cmp35, i32 1, i32 0
  store i32 %cond37, ptr %retval, align 4
  br label %return

if.else38:                                        ; preds = %if.else19
  %33 = load ptr, ptr %pObj.addr, align 8
  %iFlags39 = getelementptr inbounds nuw %struct.ph7_value, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %iFlags39, align 8
  %and40 = and i32 %34, 64
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.else47

if.then42:                                        ; preds = %if.else38
  %35 = load ptr, ptr %pObj.addr, align 8
  %x43 = getelementptr inbounds nuw %struct.ph7_value, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %x43, align 8
  store ptr %36, ptr %pMap, align 8
  %37 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %37, i32 0, i32 6
  %38 = load i32, ptr %nEntry, align 4
  %cmp44 = icmp eq i32 %38, 0
  %39 = zext i1 %cmp44 to i64
  %cond46 = select i1 %cmp44, i32 1, i32 0
  store i32 %cond46, ptr %retval, align 4
  br label %return

if.else47:                                        ; preds = %if.else38
  %40 = load ptr, ptr %pObj.addr, align 8
  %iFlags48 = getelementptr inbounds nuw %struct.ph7_value, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %iFlags48, align 8
  %and49 = and i32 %41, 384
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.else47
  store i32 0, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.else47
  br label %if.end53

if.end53:                                         ; preds = %if.end52
  br label %if.end54

if.end54:                                         ; preds = %if.end53
  br label %if.end55

if.end55:                                         ; preds = %if.end54
  br label %if.end56

if.end56:                                         ; preds = %if.end55
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  br label %if.end58

if.end58:                                         ; preds = %if.end57
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then51, %if.then42, %while.end, %if.then25, %if.then16, %if.then9, %if.then4, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
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
