; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

@.str.209 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.234 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.241 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveConstObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFindLiteral(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateInstallLiteral(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileSimpleString(ptr noundef %pGen, i32 noundef %iCompileFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iCompileFlag.addr = alloca i32, align 4
  %pStr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iCompileFlag, ptr %iCompileFlag.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 0
  store ptr %sData, ptr %pStr, align 8
  store i32 0, ptr %nIdx, align 4
  %2 = load ptr, ptr %pStr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 8
  store ptr %3, ptr %zIn, align 8
  %4 = load ptr, ptr %zIn, align 8
  %5 = load ptr, ptr %pStr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nByte, align 8
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %7 = load ptr, ptr %zIn, align 8
  %8 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmEmitInstr(ptr noundef %10, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %pGen.addr, align 8
  %12 = load ptr, ptr %pStr, align 8
  %call1 = call i32 @GenStateFindLiteral(ptr noundef %11, ptr noundef %12, ptr noundef %nIdx)
  %cmp2 = icmp eq i32 0, %call1
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %13 = load ptr, ptr %pGen.addr, align 8
  %pVm4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pVm4, align 8
  %15 = load i32, ptr %nIdx, align 4
  %call5 = call i32 @PH7_VmEmitInstr(ptr noundef %14, i32 noundef 4, i32 noundef 0, i32 noundef %15, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %16 = load ptr, ptr %pGen.addr, align 8
  %pVm7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pVm7, align 8
  %call8 = call ptr @PH7_ReserveConstObj(ptr noundef %17, ptr noundef %nIdx)
  store ptr %call8, ptr %pObj, align 8
  %18 = load ptr, ptr %pObj, align 8
  %cmp9 = icmp eq ptr %18, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  %19 = load ptr, ptr %pGen.addr, align 8
  %call11 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %19, i32 noundef 1, i32 noundef 1, ptr noundef @.str.209)
  store i32 0, ptr %iCompileFlag.addr, align 4
  store i32 -10, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end6
  %20 = load ptr, ptr %pGen.addr, align 8
  %pVm13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pVm13, align 8
  %22 = load ptr, ptr %pObj, align 8
  %call14 = call i32 @PH7_MemObjInitFromString(ptr noundef %21, ptr noundef %22, ptr noundef null)
  br label %for.cond

for.cond:                                         ; preds = %if.end50, %if.end12
  %23 = load ptr, ptr %zIn, align 8
  %24 = load ptr, ptr %zEnd, align 8
  %cmp15 = icmp uge ptr %23, %24
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.cond
  br label %for.end

if.end17:                                         ; preds = %for.cond
  %25 = load ptr, ptr %zIn, align 8
  store ptr %25, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end17
  %26 = load ptr, ptr %zIn, align 8
  %27 = load ptr, ptr %zEnd, align 8
  %cmp18 = icmp ult ptr %26, %27
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %28 = load ptr, ptr %zIn, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx19, align 1
  %conv = sext i8 %29 to i32
  %cmp20 = icmp ne i32 %conv, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %zIn, align 8
  %33 = load ptr, ptr %zCur, align 8
  %cmp22 = icmp ugt ptr %32, %33
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %while.end
  %34 = load ptr, ptr %pObj, align 8
  %35 = load ptr, ptr %zCur, align 8
  %36 = load ptr, ptr %zIn, align 8
  %37 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %36 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv25 = trunc i64 %sub.ptr.sub to i32
  %call26 = call i32 @PH7_MemObjStringAppend(ptr noundef %34, ptr noundef %35, i32 noundef %conv25)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %while.end
  %38 = load ptr, ptr %zIn, align 8
  %incdec.ptr28 = getelementptr inbounds nuw i8, ptr %38, i32 1
  store ptr %incdec.ptr28, ptr %zIn, align 8
  %39 = load ptr, ptr %zIn, align 8
  %40 = load ptr, ptr %zEnd, align 8
  %cmp29 = icmp ult ptr %39, %40
  br i1 %cmp29, label %if.then31, label %if.end50

if.then31:                                        ; preds = %if.end27
  %41 = load ptr, ptr %zIn, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %42 to i32
  %cmp34 = icmp eq i32 %conv33, 92
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.then31
  %43 = load ptr, ptr %pObj, align 8
  %call37 = call i32 @PH7_MemObjStringAppend(ptr noundef %43, ptr noundef @.str.234, i32 noundef 1)
  br label %if.end49

if.else:                                          ; preds = %if.then31
  %44 = load ptr, ptr %zIn, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx38, align 1
  %conv39 = sext i8 %45 to i32
  %cmp40 = icmp eq i32 %conv39, 39
  br i1 %cmp40, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else
  %46 = load ptr, ptr %pObj, align 8
  %call43 = call i32 @PH7_MemObjStringAppend(ptr noundef %46, ptr noundef @.str.241, i32 noundef 1)
  br label %if.end48

if.else44:                                        ; preds = %if.else
  %47 = load ptr, ptr %zIn, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %47, i32 -1
  store ptr %incdec.ptr45, ptr %zIn, align 8
  %48 = load ptr, ptr %pObj, align 8
  %49 = load ptr, ptr %zIn, align 8
  %call46 = call i32 @PH7_MemObjStringAppend(ptr noundef %48, ptr noundef %49, i32 noundef 2)
  %50 = load ptr, ptr %zIn, align 8
  %incdec.ptr47 = getelementptr inbounds nuw i8, ptr %50, i32 1
  store ptr %incdec.ptr47, ptr %zIn, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.then42
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then36
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end27
  %51 = load ptr, ptr %zIn, align 8
  %incdec.ptr51 = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr51, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then16
  %52 = load ptr, ptr %pGen.addr, align 8
  %pVm52 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %pVm52, align 8
  %54 = load i32, ptr %nIdx, align 4
  %call53 = call i32 @PH7_VmEmitInstr(ptr noundef %53, i32 noundef 4, i32 noundef 0, i32 noundef %54, ptr noundef null, ptr noundef null)
  %55 = load ptr, ptr %pStr, align 8
  %nByte54 = getelementptr inbounds nuw %struct.SyString, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %nByte54, align 8
  %cmp55 = icmp ult i32 %56, 1024
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %for.end
  %57 = load ptr, ptr %pGen.addr, align 8
  %58 = load ptr, ptr %pObj, align 8
  %59 = load i32, ptr %nIdx, align 4
  %call58 = call i32 @GenStateInstallLiteral(ptr noundef %57, ptr noundef %58, i32 noundef %59)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then10, %if.then3, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
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
