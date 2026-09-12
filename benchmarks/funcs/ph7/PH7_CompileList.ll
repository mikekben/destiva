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

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileList(ptr noundef %pGen, i32 noundef %iCompileFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iCompileFlag.addr = alloca i32, align 4
  %pNext = alloca ptr, align 8
  %nExpr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iCompileFlag, ptr %iCompileFlag.addr, align 4
  store i32 0, ptr %nExpr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %add.ptr = getelementptr inbounds %struct.SyToken, ptr %1, i64 2
  store ptr %add.ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pEnd, align 8
  %incdec.ptr = getelementptr inbounds %struct.SyToken, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %pEnd, align 8
  store i32 0, ptr %iCompileFlag.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn1, align 8
  %6 = load ptr, ptr %pGen.addr, align 8
  %pEnd2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 13
  %7 = load ptr, ptr %pEnd2, align 8
  %call = call i32 @PH7_GetNextExpr(ptr noundef %5, ptr noundef %7, ptr noundef %pNext)
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 12
  %9 = load ptr, ptr %pIn3, align 8
  %10 = load ptr, ptr %pNext, align 8
  %cmp4 = icmp ult ptr %9, %10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %pGen.addr, align 8
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pIn5, align 8
  %14 = load ptr, ptr %pNext, align 8
  %call6 = call i32 @GenStateCompileArrayEntry(ptr noundef %11, ptr noundef %13, ptr noundef %14, i32 noundef 1, ptr noundef @GenStateListNodeValidator)
  store i32 %call6, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp7 = icmp ne i32 %15, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end10

if.else:                                          ; preds = %while.body
  %16 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pVm, align 8
  %call9 = call i32 @PH7_VmEmitInstr(ptr noundef %17, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  %18 = load i32, ptr %nExpr, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %nExpr, align 4
  %19 = load ptr, ptr %pNext, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %19, i64 1
  %20 = load ptr, ptr %pGen.addr, align 8
  %pIn11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %20, i32 0, i32 12
  store ptr %arrayidx, ptr %pIn11, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %21 = load ptr, ptr %pGen.addr, align 8
  %pVm12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pVm12, align 8
  %23 = load i32, ptr %nExpr, align 4
  %call13 = call i32 @PH7_VmEmitInstr(ptr noundef %22, i32 noundef 7, i32 noundef %23, i32 noundef 0, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then8
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GetNextExpr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileArrayEntry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateListNodeValidator(ptr noundef, ptr noundef) #0

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
