; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToBool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToReal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToString(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjCmp(ptr noundef %pObj1, ptr noundef %pObj2, i32 noundef %bStrict, i32 noundef %iNest) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj1.addr = alloca ptr, align 8
  %pObj2.addr = alloca ptr, align 8
  %bStrict.addr = alloca i32, align 4
  %iNest.addr = alloca i32, align 4
  %iComb = alloca i32, align 4
  %rc = alloca i32, align 4
  %iF1 = alloca i32, align 4
  %iF2 = alloca i32, align 4
  %s1 = alloca %struct.SyString, align 8
  %s2 = alloca %struct.SyString, align 8
  %r1 = alloca double, align 8
  %r2 = alloca double, align 8
  store ptr %pObj1, ptr %pObj1.addr, align 8
  store ptr %pObj2, ptr %pObj2.addr, align 8
  store i32 %bStrict, ptr %bStrict.addr, align 4
  store i32 %iNest, ptr %iNest.addr, align 4
  %0 = load i32, ptr %bStrict.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pObj1.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %iFlags, align 8
  %and = and i32 %2, -1025
  store i32 %and, ptr %iF1, align 4
  %3 = load ptr, ptr %pObj2.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %4, -1025
  store i32 %and2, ptr %iF2, align 4
  %5 = load i32, ptr %iF1, align 4
  %6 = load i32, ptr %iF2, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %pObj1.addr, align 8
  %iFlags5 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iFlags5, align 8
  %9 = load ptr, ptr %pObj2.addr, align 8
  %iFlags6 = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %iFlags6, align 8
  %or = or i32 %8, %10
  store i32 %or, ptr %iComb, align 4
  %11 = load i32, ptr %iComb, align 4
  %and7 = and i32 %11, 296
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end4
  %12 = load ptr, ptr %pObj1.addr, align 8
  %iFlags10 = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %iFlags10, align 8
  %and11 = and i32 %13, 8
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  %14 = load ptr, ptr %pObj1.addr, align 8
  %call = call i32 @PH7_MemObjToBool(ptr noundef %14)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then9
  %15 = load ptr, ptr %pObj2.addr, align 8
  %iFlags15 = getelementptr inbounds nuw %struct.ph7_value, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %iFlags15, align 8
  %and16 = and i32 %16, 8
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %17 = load ptr, ptr %pObj2.addr, align 8
  %call19 = call i32 @PH7_MemObjToBool(ptr noundef %17)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14
  %18 = load ptr, ptr %pObj1.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %x, align 8
  %cmp21 = icmp ne i64 %19, 0
  %conv = zext i1 %cmp21 to i32
  %20 = load ptr, ptr %pObj2.addr, align 8
  %x22 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %x22, align 8
  %cmp23 = icmp ne i64 %21, 0
  %conv24 = zext i1 %cmp23 to i32
  %sub = sub nsw i32 %conv, %conv24
  store i32 %sub, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end4
  %22 = load i32, ptr %iComb, align 4
  %and25 = and i32 %22, 64
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.else43

if.then27:                                        ; preds = %if.else
  %23 = load ptr, ptr %pObj1.addr, align 8
  %iFlags28 = getelementptr inbounds nuw %struct.ph7_value, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %iFlags28, align 8
  %and29 = and i32 %24, 64
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then27
  store i32 -1, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.then27
  %25 = load ptr, ptr %pObj2.addr, align 8
  %iFlags34 = getelementptr inbounds nuw %struct.ph7_value, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %iFlags34, align 8
  %and35 = and i32 %26, 64
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end33
  store i32 1, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end33
  %27 = load ptr, ptr %pObj1.addr, align 8
  %x40 = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %x40, align 8
  %29 = load ptr, ptr %pObj2.addr, align 8
  %x41 = getelementptr inbounds nuw %struct.ph7_value, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %x41, align 8
  %31 = load i32, ptr %bStrict.addr, align 4
  %call42 = call i32 @PH7_HashmapCmp(ptr noundef %28, ptr noundef %30, i32 noundef %31)
  store i32 %call42, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

if.else43:                                        ; preds = %if.else
  %33 = load i32, ptr %iComb, align 4
  %and44 = and i32 %33, 128
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.else62

if.then46:                                        ; preds = %if.else43
  %34 = load ptr, ptr %pObj1.addr, align 8
  %iFlags47 = getelementptr inbounds nuw %struct.ph7_value, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %iFlags47, align 8
  %and48 = and i32 %35, 128
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then46
  store i32 -1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.then46
  %36 = load ptr, ptr %pObj2.addr, align 8
  %iFlags53 = getelementptr inbounds nuw %struct.ph7_value, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %iFlags53, align 8
  %and54 = and i32 %37, 128
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end52
  store i32 1, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end52
  %38 = load ptr, ptr %pObj1.addr, align 8
  %x59 = getelementptr inbounds nuw %struct.ph7_value, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %x59, align 8
  %40 = load ptr, ptr %pObj2.addr, align 8
  %x60 = getelementptr inbounds nuw %struct.ph7_value, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %x60, align 8
  %42 = load i32, ptr %bStrict.addr, align 4
  %43 = load i32, ptr %iNest.addr, align 4
  %call61 = call i32 @PH7_ClassInstanceCmp(ptr noundef %39, ptr noundef %41, i32 noundef %42, i32 noundef %43)
  store i32 %call61, ptr %rc, align 4
  %44 = load i32, ptr %rc, align 4
  store i32 %44, ptr %retval, align 4
  br label %return

if.else62:                                        ; preds = %if.else43
  %45 = load i32, ptr %iComb, align 4
  %and63 = and i32 %45, 1
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then65, label %if.else123

if.then65:                                        ; preds = %if.else62
  %46 = load i32, ptr %bStrict.addr, align 4
  %tobool66 = icmp ne i32 %46, 0
  br i1 %tobool66, label %if.end76, label %if.then67

if.then67:                                        ; preds = %if.then65
  %47 = load ptr, ptr %pObj1.addr, align 8
  %call68 = call i32 @PH7_MemObjIsNumeric(ptr noundef %47)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then67
  br label %Numeric

if.end71:                                         ; preds = %if.then67
  %48 = load ptr, ptr %pObj2.addr, align 8
  %call72 = call i32 @PH7_MemObjIsNumeric(ptr noundef %48)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end71
  br label %Numeric

if.end75:                                         ; preds = %if.end71
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then65
  %49 = load ptr, ptr %pObj1.addr, align 8
  %iFlags77 = getelementptr inbounds nuw %struct.ph7_value, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %iFlags77, align 8
  %and78 = and i32 %50, 1
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end76
  %51 = load ptr, ptr %pObj1.addr, align 8
  %call82 = call i32 @PH7_MemObjToString(ptr noundef %51)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end76
  %52 = load ptr, ptr %pObj2.addr, align 8
  %iFlags84 = getelementptr inbounds nuw %struct.ph7_value, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %iFlags84, align 8
  %and85 = and i32 %53, 1
  %cmp86 = icmp eq i32 %and85, 0
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end83
  %54 = load ptr, ptr %pObj2.addr, align 8
  %call89 = call i32 @PH7_MemObjToString(ptr noundef %54)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end83
  %55 = load ptr, ptr %pObj1.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %55, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 1
  %56 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 0
  store ptr %56, ptr %zString, align 8
  %57 = load ptr, ptr %pObj1.addr, align 8
  %sBlob91 = getelementptr inbounds nuw %struct.ph7_value, ptr %57, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob91, i32 0, i32 2
  %58 = load i32, ptr %nByte, align 8
  %nByte92 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 1
  store i32 %58, ptr %nByte92, align 8
  %59 = load ptr, ptr %pObj2.addr, align 8
  %sBlob93 = getelementptr inbounds nuw %struct.ph7_value, ptr %59, i32 0, i32 4
  %pBlob94 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob93, i32 0, i32 1
  %60 = load ptr, ptr %pBlob94, align 8
  %zString95 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 0
  store ptr %60, ptr %zString95, align 8
  %61 = load ptr, ptr %pObj2.addr, align 8
  %sBlob96 = getelementptr inbounds nuw %struct.ph7_value, ptr %61, i32 0, i32 4
  %nByte97 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob96, i32 0, i32 2
  %62 = load i32, ptr %nByte97, align 8
  %nByte98 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 1
  store i32 %62, ptr %nByte98, align 8
  %zString99 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 0
  %63 = load ptr, ptr %zString99, align 8
  %zString100 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 0
  %64 = load ptr, ptr %zString100, align 8
  %nByte101 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 1
  %65 = load i32, ptr %nByte101, align 8
  %nByte102 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 1
  %66 = load i32, ptr %nByte102, align 8
  %cmp103 = icmp ult i32 %65, %66
  br i1 %cmp103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end90
  %nByte105 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 1
  %67 = load i32, ptr %nByte105, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end90
  %nByte106 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 1
  %68 = load i32, ptr %nByte106, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %67, %cond.true ], [ %68, %cond.false ]
  %call107 = call i32 @SyMemcmp(ptr noundef %63, ptr noundef %64, i32 noundef %cond)
  store i32 %call107, ptr %rc, align 4
  %69 = load i32, ptr %rc, align 4
  %cmp108 = icmp eq i32 %69, 0
  br i1 %cmp108, label %if.then110, label %if.end122

if.then110:                                       ; preds = %cond.end
  %nByte111 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 1
  %70 = load i32, ptr %nByte111, align 8
  %nByte112 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 1
  %71 = load i32, ptr %nByte112, align 8
  %cmp113 = icmp ne i32 %70, %71
  br i1 %cmp113, label %if.then115, label %if.end121

if.then115:                                       ; preds = %if.then110
  %nByte116 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 1
  %72 = load i32, ptr %nByte116, align 8
  %nByte117 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 1
  %73 = load i32, ptr %nByte117, align 8
  %cmp118 = icmp ult i32 %72, %73
  %74 = zext i1 %cmp118 to i64
  %cond120 = select i1 %cmp118, i32 -1, i32 1
  store i32 %cond120, ptr %rc, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then115, %if.then110
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %cond.end
  %75 = load i32, ptr %rc, align 4
  store i32 %75, ptr %retval, align 4
  br label %return

if.else123:                                       ; preds = %if.else62
  %76 = load i32, ptr %iComb, align 4
  %and124 = and i32 %76, 6
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then126, label %if.end186

if.then126:                                       ; preds = %if.else123
  br label %Numeric

Numeric:                                          ; preds = %if.then126, %if.then74, %if.then70
  %77 = load ptr, ptr %pObj1.addr, align 8
  %iFlags127 = getelementptr inbounds nuw %struct.ph7_value, ptr %77, i32 0, i32 2
  %78 = load i32, ptr %iFlags127, align 8
  %and128 = and i32 %78, 6
  %cmp129 = icmp eq i32 %and128, 0
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %Numeric
  %79 = load ptr, ptr %pObj1.addr, align 8
  %call132 = call i32 @PH7_MemObjToNumeric(ptr noundef %79)
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %Numeric
  %80 = load ptr, ptr %pObj2.addr, align 8
  %iFlags134 = getelementptr inbounds nuw %struct.ph7_value, ptr %80, i32 0, i32 2
  %81 = load i32, ptr %iFlags134, align 8
  %and135 = and i32 %81, 6
  %cmp136 = icmp eq i32 %and135, 0
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.end133
  %82 = load ptr, ptr %pObj2.addr, align 8
  %call139 = call i32 @PH7_MemObjToNumeric(ptr noundef %82)
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end133
  %83 = load ptr, ptr %pObj1.addr, align 8
  %iFlags141 = getelementptr inbounds nuw %struct.ph7_value, ptr %83, i32 0, i32 2
  %84 = load i32, ptr %iFlags141, align 8
  %85 = load ptr, ptr %pObj2.addr, align 8
  %iFlags142 = getelementptr inbounds nuw %struct.ph7_value, ptr %85, i32 0, i32 2
  %86 = load i32, ptr %iFlags142, align 8
  %and143 = and i32 %84, %86
  %and144 = and i32 %and143, 2
  %cmp145 = icmp eq i32 %and144, 0
  br i1 %cmp145, label %if.then147, label %if.else172

if.then147:                                       ; preds = %if.end140
  %87 = load ptr, ptr %pObj1.addr, align 8
  %iFlags148 = getelementptr inbounds nuw %struct.ph7_value, ptr %87, i32 0, i32 2
  %88 = load i32, ptr %iFlags148, align 8
  %and149 = and i32 %88, 4
  %cmp150 = icmp eq i32 %and149, 0
  br i1 %cmp150, label %if.then152, label %if.end154

if.then152:                                       ; preds = %if.then147
  %89 = load ptr, ptr %pObj1.addr, align 8
  %call153 = call i32 @PH7_MemObjToReal(ptr noundef %89)
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.then147
  %90 = load ptr, ptr %pObj1.addr, align 8
  %rVal = getelementptr inbounds nuw %struct.ph7_value, ptr %90, i32 0, i32 0
  %91 = load double, ptr %rVal, align 8
  store double %91, ptr %r1, align 8
  %92 = load ptr, ptr %pObj2.addr, align 8
  %iFlags155 = getelementptr inbounds nuw %struct.ph7_value, ptr %92, i32 0, i32 2
  %93 = load i32, ptr %iFlags155, align 8
  %and156 = and i32 %93, 4
  %cmp157 = icmp eq i32 %and156, 0
  br i1 %cmp157, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.end154
  %94 = load ptr, ptr %pObj2.addr, align 8
  %call160 = call i32 @PH7_MemObjToReal(ptr noundef %94)
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.end154
  %95 = load ptr, ptr %pObj2.addr, align 8
  %rVal162 = getelementptr inbounds nuw %struct.ph7_value, ptr %95, i32 0, i32 0
  %96 = load double, ptr %rVal162, align 8
  store double %96, ptr %r2, align 8
  %97 = load double, ptr %r1, align 8
  %98 = load double, ptr %r2, align 8
  %cmp163 = fcmp ogt double %97, %98
  br i1 %cmp163, label %if.then165, label %if.else166

if.then165:                                       ; preds = %if.end161
  store i32 1, ptr %retval, align 4
  br label %return

if.else166:                                       ; preds = %if.end161
  %99 = load double, ptr %r1, align 8
  %100 = load double, ptr %r2, align 8
  %cmp167 = fcmp olt double %99, %100
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.else166
  store i32 -1, ptr %retval, align 4
  br label %return

if.end170:                                        ; preds = %if.else166
  br label %if.end171

if.end171:                                        ; preds = %if.end170
  store i32 0, ptr %retval, align 4
  br label %return

if.else172:                                       ; preds = %if.end140
  %101 = load ptr, ptr %pObj1.addr, align 8
  %x173 = getelementptr inbounds nuw %struct.ph7_value, ptr %101, i32 0, i32 1
  %102 = load i64, ptr %x173, align 8
  %103 = load ptr, ptr %pObj2.addr, align 8
  %x174 = getelementptr inbounds nuw %struct.ph7_value, ptr %103, i32 0, i32 1
  %104 = load i64, ptr %x174, align 8
  %cmp175 = icmp sgt i64 %102, %104
  br i1 %cmp175, label %if.then177, label %if.else178

if.then177:                                       ; preds = %if.else172
  store i32 1, ptr %retval, align 4
  br label %return

if.else178:                                       ; preds = %if.else172
  %105 = load ptr, ptr %pObj1.addr, align 8
  %x179 = getelementptr inbounds nuw %struct.ph7_value, ptr %105, i32 0, i32 1
  %106 = load i64, ptr %x179, align 8
  %107 = load ptr, ptr %pObj2.addr, align 8
  %x180 = getelementptr inbounds nuw %struct.ph7_value, ptr %107, i32 0, i32 1
  %108 = load i64, ptr %x180, align 8
  %cmp181 = icmp slt i64 %106, %108
  br i1 %cmp181, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.else178
  store i32 -1, ptr %retval, align 4
  br label %return

if.end184:                                        ; preds = %if.else178
  br label %if.end185

if.end185:                                        ; preds = %if.end184
  store i32 0, ptr %retval, align 4
  br label %return

if.end186:                                        ; preds = %if.else123
  br label %if.end187

if.end187:                                        ; preds = %if.end186
  br label %if.end188

if.end188:                                        ; preds = %if.end187
  br label %if.end189

if.end189:                                        ; preds = %if.end188
  br label %if.end190

if.end190:                                        ; preds = %if.end189
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end190, %if.end185, %if.then183, %if.then177, %if.end171, %if.then169, %if.then165, %if.end122, %if.end58, %if.then57, %if.then51, %if.end39, %if.then38, %if.then32, %if.end20, %if.then3
  %109 = load i32, ptr %retval, align 4
  ret i32 %109
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjIsNumeric(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToNumeric(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapCmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInstanceCmp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
