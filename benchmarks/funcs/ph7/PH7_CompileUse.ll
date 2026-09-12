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
@.str.323 = external hidden unnamed_addr constant [51 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_lib_version() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileUse(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nLine1, align 4
  store i32 %2, ptr %nLine, align 4
  %3 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %pIn2, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pIn2, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end20, %entry
  %5 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %pIn3, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn4, align 8
  %11 = load ptr, ptr %pGen.addr, align 8
  %pEnd5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 13
  %12 = load ptr, ptr %pEnd5, align 8
  %cmp6 = icmp ult ptr %10, %12
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %pGen.addr, align 8
  %pIn7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %pIn7, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %nType, align 8
  %and = and i32 %15, 264
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn8, align 8
  %incdec.ptr9 = getelementptr inbounds nuw %struct.SyToken, ptr %18, i32 1
  store ptr %incdec.ptr9, ptr %pIn8, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %19 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %pIn10, align 8
  %21 = load ptr, ptr %pGen.addr, align 8
  %pEnd11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 13
  %22 = load ptr, ptr %pEnd11, align 8
  %cmp12 = icmp ult ptr %20, %22
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %23 = load ptr, ptr %pGen.addr, align 8
  %pIn13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %pIn13, align 8
  %nType14 = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nType14, align 8
  %and15 = and i32 %25, 131072
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %pGen.addr, align 8
  %pIn18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %pIn18, align 8
  %incdec.ptr19 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 1
  store ptr %incdec.ptr19, ptr %pIn18, align 8
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true, %while.end
  br label %for.end

if.end20:                                         ; preds = %if.then17
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.then
  %28 = load ptr, ptr %pGen.addr, align 8
  %pIn21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %pIn21, align 8
  %30 = load ptr, ptr %pGen.addr, align 8
  %pEnd22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %30, i32 0, i32 13
  %31 = load ptr, ptr %pEnd22, align 8
  %cmp23 = icmp ult ptr %29, %31
  br i1 %cmp23, label %land.lhs.true24, label %if.end73

land.lhs.true24:                                  ; preds = %for.end
  %32 = load ptr, ptr %pGen.addr, align 8
  %pIn25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %pIn25, align 8
  %nType26 = getelementptr inbounds nuw %struct.SyToken, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %nType26, align 8
  %and27 = and i32 %34, 4
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %land.lhs.true29, label %if.end73

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %35 = load ptr, ptr %pGen.addr, align 8
  %pIn30 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pIn30, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %pUserData, align 8
  %38 = ptrtoint ptr %37 to i64
  %conv = trunc i64 %38 to i32
  %cmp31 = icmp eq i32 33, %conv
  br i1 %cmp31, label %if.then33, label %if.end73

if.then33:                                        ; preds = %land.lhs.true29
  %39 = load ptr, ptr %pGen.addr, align 8
  %pIn34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %pIn34, align 8
  %incdec.ptr35 = getelementptr inbounds nuw %struct.SyToken, ptr %40, i32 1
  store ptr %incdec.ptr35, ptr %pIn34, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %if.end71, %if.then33
  %41 = load ptr, ptr %pGen.addr, align 8
  %pIn37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %pIn37, align 8
  %43 = load ptr, ptr %pGen.addr, align 8
  %pEnd38 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %43, i32 0, i32 13
  %44 = load ptr, ptr %pEnd38, align 8
  %cmp39 = icmp uge ptr %42, %44
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.cond36
  br label %for.end72

if.end42:                                         ; preds = %for.cond36
  br label %while.cond43

while.cond43:                                     ; preds = %while.body54, %if.end42
  %45 = load ptr, ptr %pGen.addr, align 8
  %pIn44 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %pIn44, align 8
  %47 = load ptr, ptr %pGen.addr, align 8
  %pEnd45 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 13
  %48 = load ptr, ptr %pEnd45, align 8
  %cmp46 = icmp ult ptr %46, %48
  br i1 %cmp46, label %land.rhs48, label %land.end53

land.rhs48:                                       ; preds = %while.cond43
  %49 = load ptr, ptr %pGen.addr, align 8
  %pIn49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %pIn49, align 8
  %nType50 = getelementptr inbounds nuw %struct.SyToken, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %nType50, align 8
  %and51 = and i32 %51, 264
  %tobool52 = icmp ne i32 %and51, 0
  br label %land.end53

land.end53:                                       ; preds = %land.rhs48, %while.cond43
  %52 = phi i1 [ false, %while.cond43 ], [ %tobool52, %land.rhs48 ]
  br i1 %52, label %while.body54, label %while.end57

while.body54:                                     ; preds = %land.end53
  %53 = load ptr, ptr %pGen.addr, align 8
  %pIn55 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %pIn55, align 8
  %incdec.ptr56 = getelementptr inbounds nuw %struct.SyToken, ptr %54, i32 1
  store ptr %incdec.ptr56, ptr %pIn55, align 8
  br label %while.cond43, !llvm.loop !8

while.end57:                                      ; preds = %land.end53
  %55 = load ptr, ptr %pGen.addr, align 8
  %pIn58 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 12
  %56 = load ptr, ptr %pIn58, align 8
  %57 = load ptr, ptr %pGen.addr, align 8
  %pEnd59 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %57, i32 0, i32 13
  %58 = load ptr, ptr %pEnd59, align 8
  %cmp60 = icmp ult ptr %56, %58
  br i1 %cmp60, label %land.lhs.true62, label %if.else70

land.lhs.true62:                                  ; preds = %while.end57
  %59 = load ptr, ptr %pGen.addr, align 8
  %pIn63 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %pIn63, align 8
  %nType64 = getelementptr inbounds nuw %struct.SyToken, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %nType64, align 8
  %and65 = and i32 %61, 131072
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.else70

if.then67:                                        ; preds = %land.lhs.true62
  %62 = load ptr, ptr %pGen.addr, align 8
  %pIn68 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %62, i32 0, i32 12
  %63 = load ptr, ptr %pIn68, align 8
  %incdec.ptr69 = getelementptr inbounds nuw %struct.SyToken, ptr %63, i32 1
  store ptr %incdec.ptr69, ptr %pIn68, align 8
  br label %if.end71

if.else70:                                        ; preds = %land.lhs.true62, %while.end57
  br label %for.end72

if.end71:                                         ; preds = %if.then67
  br label %for.cond36

for.end72:                                        ; preds = %if.else70, %if.then41
  br label %if.end73

if.end73:                                         ; preds = %for.end72, %land.lhs.true29, %land.lhs.true24, %for.end
  %64 = load ptr, ptr %pGen.addr, align 8
  %pIn74 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %64, i32 0, i32 12
  %65 = load ptr, ptr %pIn74, align 8
  %66 = load ptr, ptr %pGen.addr, align 8
  %pEnd75 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %66, i32 0, i32 13
  %67 = load ptr, ptr %pEnd75, align 8
  %cmp76 = icmp ult ptr %65, %67
  br i1 %cmp76, label %land.lhs.true78, label %if.end90

land.lhs.true78:                                  ; preds = %if.end73
  %68 = load ptr, ptr %pGen.addr, align 8
  %pIn79 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %68, i32 0, i32 12
  %69 = load ptr, ptr %pIn79, align 8
  %nType80 = getelementptr inbounds nuw %struct.SyToken, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %nType80, align 8
  %and81 = and i32 %70, 262144
  %cmp82 = icmp eq i32 %and81, 0
  br i1 %cmp82, label %if.then84, label %if.end90

if.then84:                                        ; preds = %land.lhs.true78
  %71 = load ptr, ptr %pGen.addr, align 8
  %72 = load i32, ptr %nLine, align 4
  %73 = load ptr, ptr %pGen.addr, align 8
  %pIn85 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %pIn85, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %74, i32 0, i32 0
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %71, i32 noundef 1, i32 noundef %72, ptr noundef @.str.323, ptr noundef %sData)
  store i32 %call, ptr %rc, align 4
  %75 = load i32, ptr %rc, align 4
  %cmp86 = icmp eq i32 %75, -10
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then84
  store i32 -10, ptr %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.then84
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %land.lhs.true78, %if.end73
  %76 = load ptr, ptr %pGen.addr, align 8
  %77 = load i32, ptr %nLine, align 4
  %call91 = call ptr @ph7_lib_version()
  %call92 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %76, i32 noundef 8, i32 noundef %77, ptr noundef @.str.202, ptr noundef %call91)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end90, %if.then88
  %78 = load i32, ptr %retval, align 4
  ret i32 %78
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
