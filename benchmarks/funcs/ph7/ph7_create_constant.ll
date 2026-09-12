; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_create_constant(ptr noundef %pVm, ptr noundef %zName, ptr noundef %xExpand, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %xExpand.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %sName = alloca %struct.SyString, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %xExpand, ptr %xExpand.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pVm.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 57
  %2 = load i32, ptr %nMagic, align 8
  %cmp1 = icmp eq i32 %2, -1160651091
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %zName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %3, ptr %zString, align 8
  %4 = load ptr, ptr %zName.addr, align 8
  %call = call i32 @SyStrlen(ptr noundef %4)
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  store i32 %call, ptr %nByte, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %nByte2 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %5 = load i32, ptr %nByte2, align 8
  %cmp3 = icmp ugt i32 %5, 0
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %zString4 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %6 = load ptr, ptr %zString4, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp5 = icmp slt i32 %conv, 192
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call7 = call ptr @__ctype_b_loc() #2
  %8 = load ptr, ptr %call7, align 8
  %zString8 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %9 = load ptr, ptr %zString8, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %idxprom = sext i32 %conv10 to i64
  %arrayidx11 = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %11 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %11 to i32
  %and = and i32 %conv12, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %nByte13 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %13 = load i32, ptr %nByte13, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %nByte13, align 8
  %zString14 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %14 = load ptr, ptr %zString14, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %zString14, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond15

while.cond15:                                     ; preds = %while.body41, %while.end
  %nByte16 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %15 = load i32, ptr %nByte16, align 8
  %cmp17 = icmp ugt i32 %15, 0
  br i1 %cmp17, label %land.lhs.true19, label %land.end40

land.lhs.true19:                                  ; preds = %while.cond15
  %zString20 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %16 = load ptr, ptr %zString20, align 8
  %nByte21 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %17 = load i32, ptr %nByte21, align 8
  %sub = sub i32 %17, 1
  %idxprom22 = zext i32 %sub to i64
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %16, i64 %idxprom22
  %18 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %18 to i32
  %cmp25 = icmp slt i32 %conv24, 192
  br i1 %cmp25, label %land.rhs27, label %land.end40

land.rhs27:                                       ; preds = %land.lhs.true19
  %call28 = call ptr @__ctype_b_loc() #2
  %19 = load ptr, ptr %call28, align 8
  %zString29 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %20 = load ptr, ptr %zString29, align 8
  %nByte30 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %21 = load i32, ptr %nByte30, align 8
  %sub31 = sub i32 %21, 1
  %idxprom32 = zext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %20, i64 %idxprom32
  %22 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %22 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %19, i64 %idxprom35
  %23 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %23 to i32
  %and38 = and i32 %conv37, 8192
  %tobool39 = icmp ne i32 %and38, 0
  br label %land.end40

land.end40:                                       ; preds = %land.rhs27, %land.lhs.true19, %while.cond15
  %24 = phi i1 [ false, %land.lhs.true19 ], [ false, %while.cond15 ], [ %tobool39, %land.rhs27 ]
  br i1 %24, label %while.body41, label %while.end44

while.body41:                                     ; preds = %land.end40
  %nByte42 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %25 = load i32, ptr %nByte42, align 8
  %dec43 = add i32 %25, -1
  store i32 %dec43, ptr %nByte42, align 8
  br label %while.cond15, !llvm.loop !8

while.end44:                                      ; preds = %land.end40
  %nByte45 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %26 = load i32, ptr %nByte45, align 8
  %cmp46 = icmp ult i32 %26, 1
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %while.end44
  store i32 -24, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %while.end44
  %27 = load ptr, ptr %xExpand.addr, align 8
  %cmp50 = icmp eq ptr %27, null
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  store i32 -24, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end49
  %28 = load ptr, ptr %pVm.addr, align 8
  %29 = load ptr, ptr %xExpand.addr, align 8
  %30 = load ptr, ptr %pUserData.addr, align 8
  %call54 = call i32 @PH7_VmRegisterConstant(ptr noundef %28, ptr noundef %sName, ptr noundef %29, ptr noundef %30)
  store i32 %call54, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  store i32 %31, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then52, %if.then48, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRegisterConstant(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
