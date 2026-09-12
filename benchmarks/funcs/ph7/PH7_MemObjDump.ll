; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.170 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.241 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.251 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.512 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.513 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobFormat(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_MemObjTypeDump(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjDump(ptr noundef %pOut, ptr noundef %pObj, i32 noundef %ShowType, i32 noundef %nTab, i32 noundef %nDepth, i32 noundef %isRef) #0 {
entry:
  %pOut.addr = alloca ptr, align 8
  %pObj.addr = alloca ptr, align 8
  %ShowType.addr = alloca i32, align 4
  %nTab.addr = alloca i32, align 4
  %nDepth.addr = alloca i32, align 4
  %isRef.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %zType = alloca ptr, align 8
  %i = alloca i32, align 4
  %pContents = alloca ptr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  store i32 %ShowType, ptr %ShowType.addr, align 4
  store i32 %nTab, ptr %nTab.addr, align 4
  store i32 %nDepth, ptr %nDepth.addr, align 4
  store i32 %isRef, ptr %isRef.addr, align 4
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %nTab.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pOut.addr, align 8
  %call = call i32 @SyBlobAppend(ptr noundef %2, ptr noundef @.str.61, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %ShowType.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %for.end
  %5 = load i32, ptr %isRef.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %pOut.addr, align 8
  %call3 = call i32 @SyBlobAppend(ptr noundef %6, ptr noundef @.str.170, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load ptr, ptr %pObj.addr, align 8
  %call4 = call ptr @PH7_MemObjTypeDump(ptr noundef %7)
  store ptr %call4, ptr %zType, align 8
  %8 = load ptr, ptr %pOut.addr, align 8
  %9 = load ptr, ptr %zType, align 8
  %10 = load ptr, ptr %zType, align 8
  %call5 = call i32 @SyStrlen(ptr noundef %10)
  %call6 = call i32 @SyBlobAppend(ptr noundef %8, ptr noundef %9, i32 noundef %call5)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %for.end
  %11 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %iFlags, align 8
  %and = and i32 %12, 32
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %if.then9, label %if.end62

if.then9:                                         ; preds = %if.end7
  %13 = load i32, ptr %ShowType.addr, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %14 = load ptr, ptr %pOut.addr, align 8
  %call12 = call i32 @SyBlobAppend(ptr noundef %14, ptr noundef @.str.251, i32 noundef 1)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  %15 = load ptr, ptr %pObj.addr, align 8
  %iFlags14 = getelementptr inbounds nuw %struct.ph7_value, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %iFlags14, align 8
  %and15 = and i32 %16, 64
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %17 = load ptr, ptr %pOut.addr, align 8
  %18 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %x, align 8
  %20 = load i32, ptr %ShowType.addr, align 4
  %21 = load i32, ptr %nTab.addr, align 4
  %add = add nsw i32 %21, 1
  %22 = load i32, ptr %nDepth.addr, align 4
  %add18 = add nsw i32 %22, 1
  %call19 = call i32 @PH7_HashmapDump(ptr noundef %17, ptr noundef %19, i32 noundef %20, i32 noundef %add, i32 noundef %add18)
  store i32 %call19, ptr %rc, align 4
  br label %if.end52

if.else:                                          ; preds = %if.end13
  %23 = load ptr, ptr %pObj.addr, align 8
  %iFlags20 = getelementptr inbounds nuw %struct.ph7_value, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %iFlags20, align 8
  %and21 = and i32 %24, 128
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.else28

if.then23:                                        ; preds = %if.else
  %25 = load ptr, ptr %pOut.addr, align 8
  %26 = load ptr, ptr %pObj.addr, align 8
  %x24 = getelementptr inbounds nuw %struct.ph7_value, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %x24, align 8
  %28 = load i32, ptr %ShowType.addr, align 4
  %29 = load i32, ptr %nTab.addr, align 4
  %add25 = add nsw i32 %29, 1
  %30 = load i32, ptr %nDepth.addr, align 4
  %add26 = add nsw i32 %30, 1
  %call27 = call i32 @PH7_ClassInstanceDump(ptr noundef %25, ptr noundef %27, i32 noundef %28, i32 noundef %add25, i32 noundef %add26)
  store i32 %call27, ptr %rc, align 4
  br label %if.end51

if.else28:                                        ; preds = %if.else
  %31 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %31, i32 0, i32 4
  store ptr %sBlob, ptr %pContents, align 8
  %32 = load ptr, ptr %pObj.addr, align 8
  %iFlags29 = getelementptr inbounds nuw %struct.ph7_value, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %iFlags29, align 8
  %and30 = and i32 %33, 1
  %cmp31 = icmp eq i32 %and30, 0
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else28
  %34 = load ptr, ptr %pOut.addr, align 8
  %35 = load ptr, ptr %pObj.addr, align 8
  %call33 = call i32 @MemObjStringValue(ptr noundef %34, ptr noundef %35, i8 noundef zeroext 0)
  br label %if.end50

if.else34:                                        ; preds = %if.else28
  %36 = load i32, ptr %ShowType.addr, align 4
  %tobool35 = icmp ne i32 %36, 0
  br i1 %tobool35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.else34
  %37 = load ptr, ptr %pOut.addr, align 8
  %38 = load ptr, ptr %pObj.addr, align 8
  %sBlob37 = getelementptr inbounds nuw %struct.ph7_value, ptr %38, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob37, i32 0, i32 2
  %39 = load i32, ptr %nByte, align 8
  %call38 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %37, ptr noundef @.str.512, i32 noundef %39)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.else34
  %40 = load ptr, ptr %pContents, align 8
  %nByte40 = getelementptr inbounds nuw %struct.SyBlob, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %nByte40, align 8
  %cmp41 = icmp ugt i32 %41, 0
  br i1 %cmp41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end39
  %42 = load ptr, ptr %pOut.addr, align 8
  %43 = load ptr, ptr %pContents, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %pBlob, align 8
  %45 = load ptr, ptr %pContents, align 8
  %nByte43 = getelementptr inbounds nuw %struct.SyBlob, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %nByte43, align 8
  %call44 = call i32 @SyBlobAppend(ptr noundef %42, ptr noundef %44, i32 noundef %46)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39
  %47 = load i32, ptr %ShowType.addr, align 4
  %tobool46 = icmp ne i32 %47, 0
  br i1 %tobool46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end45
  %48 = load ptr, ptr %pOut.addr, align 8
  %call48 = call i32 @SyBlobAppend(ptr noundef %48, ptr noundef @.str.241, i32 noundef 1)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then32
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then23
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then17
  %49 = load i32, ptr %ShowType.addr, align 4
  %tobool53 = icmp ne i32 %49, 0
  br i1 %tobool53, label %if.then54, label %if.end61

if.then54:                                        ; preds = %if.end52
  %50 = load ptr, ptr %pObj.addr, align 8
  %iFlags55 = getelementptr inbounds nuw %struct.ph7_value, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %iFlags55, align 8
  %and56 = and i32 %51, 192
  %cmp57 = icmp eq i32 %and56, 0
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.then54
  %52 = load ptr, ptr %pOut.addr, align 8
  %call59 = call i32 @SyBlobAppend(ptr noundef %52, ptr noundef @.str.513, i32 noundef 1)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.then54
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end52
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end7
  %53 = load ptr, ptr %pOut.addr, align 8
  %call63 = call i32 @SyBlobAppend(ptr noundef %53, ptr noundef @.str.47, i32 noundef 1)
  %54 = load i32, ptr %rc, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapDump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInstanceDump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @MemObjStringValue(ptr noundef, ptr noundef, i8 noundef zeroext) #0

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
