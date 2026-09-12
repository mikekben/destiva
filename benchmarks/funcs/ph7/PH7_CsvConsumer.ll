; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CsvConsumer(ptr noundef %zToken, i32 noundef %nTokenLen, ptr noundef %pUserData) #1 {
entry:
  %retval = alloca i32, align 4
  %zToken.addr = alloca ptr, align 8
  %nTokenLen.addr = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %sEntry = alloca %struct.ph7_value, align 8
  %sToken = alloca %struct.SyString, align 8
  store ptr %zToken, ptr %zToken.addr, align 8
  store i32 %nTokenLen, ptr %nTokenLen.addr, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pArray, align 8
  %1 = load ptr, ptr %zToken.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  store ptr %1, ptr %zString, align 8
  %2 = load i32, ptr %nTokenLen.addr, align 4
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  store i32 %2, ptr %nByte, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %nByte1 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %3 = load i32, ptr %nByte1, align 8
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %zString2 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %4 = load ptr, ptr %zString2, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp slt i32 %conv, 192
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %zString5 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %6 = load ptr, ptr %zString5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %call = call ptr @__ctype_b_loc() #2
  %8 = load ptr, ptr %call, align 8
  %zString10 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %9 = load ptr, ptr %zString10, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %idxprom = sext i32 %conv12 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %11 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %11 to i32
  %and = and i32 %conv14, 8192
  %tobool = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %while.cond
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %12, %lor.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %nByte15 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %14 = load i32, ptr %nByte15, align 8
  %dec = add i32 %14, -1
  store i32 %dec, ptr %nByte15, align 8
  %zString16 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %15 = load ptr, ptr %zString16, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %zString16, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond17

while.cond17:                                     ; preds = %while.body53, %while.end
  %nByte18 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %16 = load i32, ptr %nByte18, align 8
  %cmp19 = icmp ugt i32 %16, 0
  br i1 %cmp19, label %land.lhs.true21, label %land.end52

land.lhs.true21:                                  ; preds = %while.cond17
  %zString22 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %17 = load ptr, ptr %zString22, align 8
  %nByte23 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %18 = load i32, ptr %nByte23, align 8
  %sub = sub i32 %18, 1
  %idxprom24 = zext i32 %sub to i64
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %17, i64 %idxprom24
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %cmp27 = icmp slt i32 %conv26, 192
  br i1 %cmp27, label %land.rhs29, label %land.end52

land.rhs29:                                       ; preds = %land.lhs.true21
  %zString30 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %20 = load ptr, ptr %zString30, align 8
  %nByte31 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %21 = load i32, ptr %nByte31, align 8
  %sub32 = sub i32 %21, 1
  %idxprom33 = zext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %20, i64 %idxprom33
  %22 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %22 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %lor.end51, label %lor.rhs38

lor.rhs38:                                        ; preds = %land.rhs29
  %call39 = call ptr @__ctype_b_loc() #2
  %23 = load ptr, ptr %call39, align 8
  %zString40 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %24 = load ptr, ptr %zString40, align 8
  %nByte41 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %25 = load i32, ptr %nByte41, align 8
  %sub42 = sub i32 %25, 1
  %idxprom43 = zext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %24, i64 %idxprom43
  %26 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %26 to i32
  %idxprom46 = sext i32 %conv45 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %23, i64 %idxprom46
  %27 = load i16, ptr %arrayidx47, align 2
  %conv48 = zext i16 %27 to i32
  %and49 = and i32 %conv48, 8192
  %tobool50 = icmp ne i32 %and49, 0
  br label %lor.end51

lor.end51:                                        ; preds = %lor.rhs38, %land.rhs29
  %28 = phi i1 [ true, %land.rhs29 ], [ %tobool50, %lor.rhs38 ]
  br label %land.end52

land.end52:                                       ; preds = %lor.end51, %land.lhs.true21, %while.cond17
  %29 = phi i1 [ false, %land.lhs.true21 ], [ false, %while.cond17 ], [ %28, %lor.end51 ]
  br i1 %29, label %while.body53, label %while.end56

while.body53:                                     ; preds = %land.end52
  %nByte54 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %30 = load i32, ptr %nByte54, align 8
  %dec55 = add i32 %30, -1
  store i32 %dec55, ptr %nByte54, align 8
  br label %while.cond17, !llvm.loop !8

while.end56:                                      ; preds = %land.end52
  %nByte57 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %31 = load i32, ptr %nByte57, align 8
  %cmp58 = icmp ult i32 %31, 1
  br i1 %cmp58, label %if.then, label %if.end

if.then:                                          ; preds = %while.end56
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end56
  %32 = load ptr, ptr %pArray, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %pVm, align 8
  %call60 = call i32 @PH7_MemObjInitFromString(ptr noundef %33, ptr noundef %sEntry, ptr noundef %sToken)
  %34 = load ptr, ptr %pArray, align 8
  %call61 = call i32 @ph7_array_add_elem(ptr noundef %34, ptr noundef null, ptr noundef %sEntry)
  %call62 = call i32 @PH7_MemObjRelease(ptr noundef %sEntry)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
