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

@.str.202 = external hidden unnamed_addr constant [75 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_lib_version() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateResolveNamespaceLiteral(ptr noundef %pGen) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %emit = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 0, ptr %emit, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pEnd, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %3, i64 -1
  %cmp = icmp ult ptr %1, %arrayidx
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %emit, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %pGen.addr, align 8
  %6 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %pIn1, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %nLine, align 4
  %call = call ptr @ph7_lib_version()
  %call2 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %5, i32 noundef 2, i32 noundef %8, ptr noundef @.str.202, ptr noundef %call)
  store i32 1, ptr %emit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn3, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %pIn3, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %pGen.addr, align 8
  %call4 = call i32 @GenStateLoadLiteral(ptr noundef %11)
  store i32 %call4, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateLoadLiteral(ptr noundef) #0

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
