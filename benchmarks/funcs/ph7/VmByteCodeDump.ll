; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.VmInstr = type { i8, i32, i32, ptr }

@VmByteCodeDump.zDump = external hidden constant [213 x i8], align 16
@.str.1254 = external hidden unnamed_addr constant [22 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @VmByteCodeDump(ptr noundef %pByteCode, ptr noundef %xConsumer, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pByteCode.addr = alloca ptr, align 8
  %xConsumer.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pInstr = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pByteCode, ptr %pByteCode.addr, align 8
  store ptr %xConsumer, ptr %xConsumer.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pByteCode.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBase, align 8
  store ptr %1, ptr %pInstr, align 8
  %2 = load ptr, ptr %pInstr, align 8
  %3 = load ptr, ptr %pByteCode.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nUsed, align 8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds nuw %struct.VmInstr, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %pEnd, align 8
  store i32 0, ptr %n, align 4
  %5 = load ptr, ptr %xConsumer.addr, align 8
  %6 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 %5(ptr noundef @VmByteCodeDump.zDump, i32 noundef 212, ptr noundef %6)
  br label %for.cond

for.cond:                                         ; preds = %if.end7, %entry
  %7 = load ptr, ptr %pInstr, align 8
  %8 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %9 = load ptr, ptr %xConsumer.addr, align 8
  %10 = load ptr, ptr %pUserData.addr, align 8
  %11 = load ptr, ptr %pInstr, align 8
  %iOp = getelementptr inbounds nuw %struct.VmInstr, ptr %11, i32 0, i32 0
  %12 = load i8, ptr %iOp, align 8
  %conv = zext i8 %12 to i32
  %call1 = call ptr @VmInstrToString(i32 noundef %conv)
  %13 = load ptr, ptr %pInstr, align 8
  %iP1 = getelementptr inbounds nuw %struct.VmInstr, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %iP1, align 4
  %15 = load ptr, ptr %pInstr, align 8
  %iP2 = getelementptr inbounds nuw %struct.VmInstr, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %iP2, align 8
  %17 = load ptr, ptr %pInstr, align 8
  %p3 = getelementptr inbounds nuw %struct.VmInstr, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %p3, align 8
  %19 = ptrtoint ptr %18 to i64
  %conv2 = trunc i64 %19 to i32
  %20 = load i32, ptr %n, align 4
  %call3 = call i32 (ptr, ptr, ptr, ...) @SyProcFormat(ptr noundef %9, ptr noundef %10, ptr noundef @.str.1254, ptr noundef %call1, i32 noundef %14, i32 noundef %16, i32 noundef %conv2, i32 noundef %20)
  store i32 %call3, ptr %rc, align 4
  %21 = load i32, ptr %rc, align 4
  %cmp4 = icmp ne i32 %21, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %22 = load i32, ptr %rc, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %23 = load i32, ptr %n, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %n, align 4
  %24 = load ptr, ptr %pInstr, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.VmInstr, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %pInstr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %25 = load i32, ptr %rc, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then6
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyProcFormat(ptr noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmInstrToString(i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
