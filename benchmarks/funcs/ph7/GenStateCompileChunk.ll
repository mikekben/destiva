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

@.str.274 = external hidden unnamed_addr constant [38 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileChunk(ptr noundef %pGen, i32 noundef %iFlags) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %xCons = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nKeyword = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store i32 0, ptr %rc, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end82, %entry
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn1, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nType, align 8
  %and = and i32 %6, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %pGen.addr, align 8
  %call = call i32 @PH7_CompileBlock(ptr noundef %7, i32 noundef 0)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %8, -10
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  br label %for.end

if.end5:                                          ; preds = %if.then2
  br label %if.end69

if.else:                                          ; preds = %if.end
  store ptr null, ptr %xCons, align 8
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn6, align 8
  %nType7 = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType7, align 8
  %and8 = and i32 %11, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.else33

if.then10:                                        ; preds = %if.else
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pIn11, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pUserData, align 8
  %15 = ptrtoint ptr %14 to i64
  %conv = trunc i64 %15 to i32
  store i32 %conv, ptr %nKeyword, align 4
  %16 = load i32, ptr %nKeyword, align 4
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn12, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %18, i64 1
  %19 = load ptr, ptr %pGen.addr, align 8
  %pEnd13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pEnd13, align 8
  %cmp14 = icmp ult ptr %arrayidx, %20
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %21 = load ptr, ptr %pGen.addr, align 8
  %pIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %pIn16, align 8
  %arrayidx17 = getelementptr inbounds %struct.SyToken, ptr %22, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx17, %cond.true ], [ null, %cond.false ]
  %call18 = call ptr @GenStateGetStatementHandler(i32 noundef %16, ptr noundef %cond)
  store ptr %call18, ptr %xCons, align 8
  %23 = load ptr, ptr %xCons, align 8
  %cmp19 = icmp eq ptr %23, null
  br i1 %cmp19, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %cond.end
  %24 = load i32, ptr %nKeyword, align 4
  %call21 = call i32 @GenStateisLangConstruct(i32 noundef %24)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %pGen.addr, align 8
  %26 = load ptr, ptr %pGen.addr, align 8
  %pIn25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %pIn25, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %nLine, align 4
  %29 = load ptr, ptr %pGen.addr, align 8
  %pIn26 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %pIn26, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 0, i32 0
  %call27 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %25, i32 noundef 1, i32 noundef %28, ptr noundef @.str.274, ptr noundef %sData)
  store i32 %call27, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp28 = icmp eq i32 %31, -10
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then24
  br label %for.end

if.end31:                                         ; preds = %if.then24
  store ptr @PH7_ErrorRecover, ptr %xCons, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %land.lhs.true, %cond.end
  br label %if.end52

if.else33:                                        ; preds = %if.else
  %32 = load ptr, ptr %pGen.addr, align 8
  %pIn34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %pIn34, align 8
  %nType35 = getelementptr inbounds nuw %struct.SyToken, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %nType35, align 8
  %and36 = and i32 %34, 8
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %land.lhs.true38, label %if.end51

land.lhs.true38:                                  ; preds = %if.else33
  %35 = load ptr, ptr %pGen.addr, align 8
  %pIn39 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pIn39, align 8
  %arrayidx40 = getelementptr inbounds %struct.SyToken, ptr %36, i64 1
  %37 = load ptr, ptr %pGen.addr, align 8
  %pEnd41 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 13
  %38 = load ptr, ptr %pEnd41, align 8
  %cmp42 = icmp ult ptr %arrayidx40, %38
  br i1 %cmp42, label %land.lhs.true44, label %if.end51

land.lhs.true44:                                  ; preds = %land.lhs.true38
  %39 = load ptr, ptr %pGen.addr, align 8
  %pIn45 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %pIn45, align 8
  %arrayidx46 = getelementptr inbounds %struct.SyToken, ptr %40, i64 1
  %nType47 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx46, i32 0, i32 1
  %41 = load i32, ptr %nType47, align 8
  %and48 = and i32 %41, 1048576
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true44
  store ptr @PH7_CompileLabel, ptr %xCons, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %land.lhs.true44, %land.lhs.true38, %if.else33
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end32
  %42 = load ptr, ptr %xCons, align 8
  %cmp53 = icmp eq ptr %42, null
  br i1 %cmp53, label %if.then55, label %if.else62

if.then55:                                        ; preds = %if.end52
  %43 = load ptr, ptr %pGen.addr, align 8
  %call56 = call i32 @PH7_CompileExpr(ptr noundef %43, i32 noundef 0, ptr noundef null)
  store i32 %call56, ptr %rc, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp57 = icmp ne i32 %44, -3
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then55
  %45 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %pVm, align 8
  %call60 = call i32 @PH7_VmEmitInstr(ptr noundef %46, i32 noundef 13, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then55
  br label %if.end64

if.else62:                                        ; preds = %if.end52
  %47 = load ptr, ptr %xCons, align 8
  %48 = load ptr, ptr %pGen.addr, align 8
  %call63 = call i32 %47(ptr noundef %48)
  store i32 %call63, ptr %rc, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.end61
  %49 = load i32, ptr %rc, align 4
  %cmp65 = icmp eq i32 %49, -10
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  br label %for.end

if.end68:                                         ; preds = %if.end64
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end69
  %50 = load ptr, ptr %pGen.addr, align 8
  %pIn70 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %pIn70, align 8
  %52 = load ptr, ptr %pGen.addr, align 8
  %pEnd71 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 13
  %53 = load ptr, ptr %pEnd71, align 8
  %cmp72 = icmp ult ptr %51, %53
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %54 = load ptr, ptr %pGen.addr, align 8
  %pIn74 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %54, i32 0, i32 12
  %55 = load ptr, ptr %pIn74, align 8
  %nType75 = getelementptr inbounds nuw %struct.SyToken, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %nType75, align 8
  %and76 = and i32 %56, 262144
  %tobool77 = icmp ne i32 %and76, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %57 = phi i1 [ false, %while.cond ], [ %tobool77, %land.rhs ]
  br i1 %57, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %58 = load ptr, ptr %pGen.addr, align 8
  %pIn78 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 12
  %59 = load ptr, ptr %pIn78, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %59, i32 1
  store ptr %incdec.ptr, ptr %pIn78, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %60 = load i32, ptr %iFlags.addr, align 4
  %and79 = and i32 %60, 1
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %while.end
  br label %for.end

if.end82:                                         ; preds = %while.end
  br label %for.cond

for.end:                                          ; preds = %if.then81, %if.then67, %if.then30, %if.then4, %if.then
  %61 = load i32, ptr %rc, align 4
  ret i32 %61
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileBlock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @GenStateGetStatementHandler(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateisLangConstruct(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ErrorRecover(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileLabel(ptr noundef) #0

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
