; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

@.str.204 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.205 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.1383 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1384 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1385 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_ClassInstanceUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @MemObjCallClassCastMethod(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @MemObjBooleanValue(ptr noundef %pObj) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj.addr = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %sString = alloca %struct.SyString, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %n = alloca i32, align 4
  %sResult = alloca %struct.ph7_value, align 8
  %iVal = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags1, align 8
  store i32 %1, ptr %iFlags, align 4
  %2 = load i32, ptr %iFlags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pObj.addr, align 8
  %rVal = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 0
  %4 = load double, ptr %rVal, align 8
  %cmp = fcmp une double %4, 0.000000e+00
  %5 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %iFlags, align 4
  %and2 = and i32 %6, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %7 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %x, align 8
  %tobool5 = icmp ne i64 %8, 0
  %9 = zext i1 %tobool5 to i64
  %cond6 = select i1 %tobool5, i32 1, i32 0
  store i32 %cond6, ptr %retval, align 4
  br label %return

if.else7:                                         ; preds = %if.else
  %10 = load i32, ptr %iFlags, align 4
  %and8 = and i32 %10, 1
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.else66

if.then10:                                        ; preds = %if.else7
  %11 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 1
  %12 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  store ptr %12, ptr %zString, align 8
  %13 = load ptr, ptr %pObj.addr, align 8
  %sBlob11 = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob11, i32 0, i32 2
  %14 = load i32, ptr %nByte, align 8
  %nByte12 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  store i32 %14, ptr %nByte12, align 8
  %nByte13 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  %15 = load i32, ptr %nByte13, align 8
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.else16:                                        ; preds = %if.then10
  %nByte17 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  %16 = load i32, ptr %nByte17, align 8
  %conv = zext i32 %16 to i64
  %cmp18 = icmp eq i64 %conv, 4
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else16
  %zString20 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  %17 = load ptr, ptr %zString20, align 8
  %call = call i32 @SyStrnicmp(ptr noundef %17, ptr noundef @.str.204, i32 noundef 4)
  %cmp21 = icmp eq i32 %call, 0
  br i1 %cmp21, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else16
  %nByte23 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  %18 = load i32, ptr %nByte23, align 8
  %conv24 = zext i32 %18 to i64
  %cmp25 = icmp eq i64 %conv24, 2
  br i1 %cmp25, label %land.lhs.true27, label %lor.lhs.false32

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %zString28 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  %19 = load ptr, ptr %zString28, align 8
  %call29 = call i32 @SyStrnicmp(ptr noundef %19, ptr noundef @.str.1383, i32 noundef 2)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then42, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true27, %lor.lhs.false
  %nByte33 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  %20 = load i32, ptr %nByte33, align 8
  %conv34 = zext i32 %20 to i64
  %cmp35 = icmp eq i64 %conv34, 3
  br i1 %cmp35, label %land.lhs.true37, label %if.else43

land.lhs.true37:                                  ; preds = %lor.lhs.false32
  %zString38 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  %21 = load ptr, ptr %zString38, align 8
  %call39 = call i32 @SyStrnicmp(ptr noundef %21, ptr noundef @.str.1384, i32 noundef 3)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %land.lhs.true37, %land.lhs.true27, %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.else43:                                        ; preds = %land.lhs.true37, %lor.lhs.false32
  %nByte44 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  %22 = load i32, ptr %nByte44, align 8
  %conv45 = zext i32 %22 to i64
  %cmp46 = icmp eq i64 %conv45, 5
  br i1 %cmp46, label %land.lhs.true48, label %if.else54

land.lhs.true48:                                  ; preds = %if.else43
  %zString49 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  %23 = load ptr, ptr %zString49, align 8
  %call50 = call i32 @SyStrnicmp(ptr noundef %23, ptr noundef @.str.205, i32 noundef 5)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %land.lhs.true48
  store i32 0, ptr %retval, align 4
  br label %return

if.else54:                                        ; preds = %land.lhs.true48, %if.else43
  %zString55 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  %24 = load ptr, ptr %zString55, align 8
  store ptr %24, ptr %zIn, align 8
  %25 = load ptr, ptr %zIn, align 8
  %nByte56 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  %26 = load i32, ptr %nByte56, align 8
  %idxprom = zext i32 %26 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else54
  %27 = load ptr, ptr %zIn, align 8
  %28 = load ptr, ptr %zEnd, align 8
  %cmp57 = icmp ult ptr %27, %28
  br i1 %cmp57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %29 = load ptr, ptr %zIn, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx59, align 1
  %conv60 = sext i8 %30 to i32
  %cmp61 = icmp eq i32 %conv60, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %cmp61, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %33 = load ptr, ptr %zIn, align 8
  %34 = load ptr, ptr %zEnd, align 8
  %cmp63 = icmp uge ptr %33, %34
  %35 = zext i1 %cmp63 to i64
  %cond65 = select i1 %cmp63, i32 0, i32 1
  store i32 %cond65, ptr %retval, align 4
  br label %return

if.else66:                                        ; preds = %if.else7
  %36 = load i32, ptr %iFlags, align 4
  %and67 = and i32 %36, 32
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.else66
  store i32 0, ptr %retval, align 4
  br label %return

if.else70:                                        ; preds = %if.else66
  %37 = load i32, ptr %iFlags, align 4
  %and71 = and i32 %37, 64
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then73, label %if.else78

if.then73:                                        ; preds = %if.else70
  %38 = load ptr, ptr %pObj.addr, align 8
  %x74 = getelementptr inbounds nuw %struct.ph7_value, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %x74, align 8
  store ptr %39, ptr %pMap, align 8
  %40 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %40, i32 0, i32 6
  %41 = load i32, ptr %nEntry, align 4
  store i32 %41, ptr %n, align 4
  %42 = load ptr, ptr %pMap, align 8
  call void @PH7_HashmapUnref(ptr noundef %42)
  %43 = load i32, ptr %n, align 4
  %cmp75 = icmp ugt i32 %43, 0
  %44 = zext i1 %cmp75 to i64
  %cond77 = select i1 %cmp75, i32 1, i32 0
  store i32 %cond77, ptr %retval, align 4
  br label %return

if.else78:                                        ; preds = %if.else70
  %45 = load i32, ptr %iFlags, align 4
  %and79 = and i32 %45, 128
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then81, label %if.else98

if.then81:                                        ; preds = %if.else78
  store i32 1, ptr %iVal, align 4
  %46 = load ptr, ptr %pObj.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %pVm, align 8
  %call82 = call i32 @PH7_MemObjInit(ptr noundef %47, ptr noundef %sResult)
  %48 = load ptr, ptr %pObj.addr, align 8
  %pVm83 = getelementptr inbounds nuw %struct.ph7_value, ptr %48, i32 0, i32 3
  %49 = load ptr, ptr %pVm83, align 8
  %50 = load ptr, ptr %pObj.addr, align 8
  %x84 = getelementptr inbounds nuw %struct.ph7_value, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %x84, align 8
  %call85 = call i32 @MemObjCallClassCastMethod(ptr noundef %49, ptr noundef %51, ptr noundef @.str.1385, i32 noundef 8, ptr noundef %sResult)
  store i32 %call85, ptr %rc, align 4
  %52 = load i32, ptr %rc, align 4
  %cmp86 = icmp eq i32 %52, 0
  br i1 %cmp86, label %land.lhs.true88, label %if.end

land.lhs.true88:                                  ; preds = %if.then81
  %iFlags89 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 2
  %53 = load i32, ptr %iFlags89, align 8
  %and90 = and i32 %53, 10
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.end

if.then92:                                        ; preds = %land.lhs.true88
  %x93 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 1
  %54 = load i64, ptr %x93, align 8
  %cmp94 = icmp ne i64 %54, 0
  %conv95 = zext i1 %cmp94 to i32
  store i32 %conv95, ptr %iVal, align 4
  br label %if.end

if.end:                                           ; preds = %if.then92, %land.lhs.true88, %if.then81
  %55 = load ptr, ptr %pObj.addr, align 8
  %x96 = getelementptr inbounds nuw %struct.ph7_value, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %x96, align 8
  call void @PH7_ClassInstanceUnref(ptr noundef %56)
  %call97 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  %57 = load i32, ptr %iVal, align 4
  store i32 %57, ptr %retval, align 4
  br label %return

if.else98:                                        ; preds = %if.else78
  %58 = load i32, ptr %iFlags, align 4
  %and99 = and i32 %58, 256
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then101, label %if.end105

if.then101:                                       ; preds = %if.else98
  %59 = load ptr, ptr %pObj.addr, align 8
  %x102 = getelementptr inbounds nuw %struct.ph7_value, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %x102, align 8
  %cmp103 = icmp ne ptr %60, null
  %conv104 = zext i1 %cmp103 to i32
  store i32 %conv104, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %if.else98
  br label %if.end106

if.end106:                                        ; preds = %if.end105
  br label %if.end107

if.end107:                                        ; preds = %if.end106
  br label %if.end108

if.end108:                                        ; preds = %if.end107
  br label %if.end109

if.end109:                                        ; preds = %if.end108
  br label %if.end110

if.end110:                                        ; preds = %if.end109
  br label %if.end111

if.end111:                                        ; preds = %if.end110
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end111, %if.then101, %if.end, %if.then73, %if.then69, %while.end, %if.then53, %if.then42, %if.then15, %if.then4, %if.then
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
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
