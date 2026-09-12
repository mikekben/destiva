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
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GetNextExpr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileEcho(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr null, ptr %pNext, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pEnd, align 8
  store ptr %3, ptr %pTmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn1, align 8
  %6 = load ptr, ptr %pTmp, align 8
  %call = call i32 @PH7_GetNextExpr(ptr noundef %5, ptr noundef %6, ptr noundef %pNext)
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %while.body, label %while.end18

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %pIn2, align 8
  %9 = load ptr, ptr %pNext, align 8
  %cmp3 = icmp ult ptr %8, %9
  br i1 %cmp3, label %if.then, label %if.end12

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %pNext, align 8
  %11 = load ptr, ptr %pGen.addr, align 8
  %pEnd4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 13
  store ptr %10, ptr %pEnd4, align 8
  %12 = load ptr, ptr %pGen.addr, align 8
  %call5 = call i32 @PH7_CompileExpr(ptr noundef %12, i32 noundef 2, ptr noundef null)
  store i32 %call5, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %13, -10
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %14 = load i32, ptr %rc, align 4
  %cmp8 = icmp ne i32 %14, -3
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  %15 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pVm, align 8
  %call10 = call i32 @PH7_VmEmitInstr(ptr noundef %16, i32 noundef 69, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %while.body
  br label %while.cond13

while.cond13:                                     ; preds = %while.body15, %if.end12
  %17 = load ptr, ptr %pNext, align 8
  %18 = load ptr, ptr %pTmp, align 8
  %cmp14 = icmp ult ptr %17, %18
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond13
  %19 = load ptr, ptr %pNext, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nType, align 8
  %and = and i32 %20, 131072
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond13
  %21 = phi i1 [ false, %while.cond13 ], [ %tobool, %land.rhs ]
  br i1 %21, label %while.body15, label %while.end

while.body15:                                     ; preds = %land.end
  %22 = load ptr, ptr %pNext, align 8
  %incdec.ptr16 = getelementptr inbounds nuw %struct.SyToken, ptr %22, i32 1
  store ptr %incdec.ptr16, ptr %pNext, align 8
  br label %while.cond13, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %23 = load ptr, ptr %pNext, align 8
  %24 = load ptr, ptr %pGen.addr, align 8
  %pIn17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 12
  store ptr %23, ptr %pIn17, align 8
  br label %while.cond, !llvm.loop !8

while.end18:                                      ; preds = %while.cond
  %25 = load ptr, ptr %pTmp, align 8
  %26 = load ptr, ptr %pGen.addr, align 8
  %pEnd19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 13
  store ptr %25, ptr %pEnd19, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end18, %if.then7
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
