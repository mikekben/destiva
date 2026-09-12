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

@.str.231 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.232 = external hidden unnamed_addr constant [68 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileChunk(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateEnterBlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileBlock(ptr noundef %pGen, i32 noundef %nKeywordEnd) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %nKeywordEnd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %nLine = alloca i32, align 4
  %nKwrd = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %nKeywordEnd, ptr %nKeywordEnd.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %nType, align 8
  %and = and i32 %2, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %pIn1, align 8
  %nLine2 = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %nLine2, align 4
  store i32 %5, ptr %nLine, align 4
  %6 = load ptr, ptr %pGen.addr, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmInstrLength(ptr noundef %8)
  %call3 = call i32 @GenStateEnterBlock(ptr noundef %6, i32 noundef 128, i32 noundef %call, ptr noundef null, ptr noundef null)
  store i32 %call3, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %pIn5, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %pIn5, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %if.end
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pIn6, align 8
  %14 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %pEnd, align 8
  %cmp7 = icmp uge ptr %13, %15
  br i1 %cmp7, label %if.then8, label %if.end17

if.then8:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pGen.addr, align 8
  %call9 = call i32 @GenStateNextChunk(ptr noundef %16)
  store i32 %call9, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %17, -10
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  store i32 -10, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then8
  %18 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %18, -18
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %19 = load ptr, ptr %pGen.addr, align 8
  %20 = load i32, ptr %nLine, align 4
  %call15 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %19, i32 noundef 1, i32 noundef %20, ptr noundef @.str.231)
  br label %for.end

if.end16:                                         ; preds = %if.end12
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.cond
  %21 = load ptr, ptr %pGen.addr, align 8
  %pIn18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %pIn18, align 8
  %nType19 = getelementptr inbounds nuw %struct.SyToken, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nType19, align 8
  %and20 = and i32 %23, 128
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  %24 = load ptr, ptr %pGen.addr, align 8
  %pIn23 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %pIn23, align 8
  %incdec.ptr24 = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 1
  store ptr %incdec.ptr24, ptr %pIn23, align 8
  br label %for.end

if.end25:                                         ; preds = %if.end17
  %26 = load ptr, ptr %pGen.addr, align 8
  %call26 = call i32 @GenStateCompileChunk(ptr noundef %26, i32 noundef 1)
  store i32 %call26, ptr %rc, align 4
  %27 = load i32, ptr %rc, align 4
  %cmp27 = icmp eq i32 %27, -10
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  store i32 -10, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end25
  br label %for.cond

for.end:                                          ; preds = %if.then22, %if.then14
  %28 = load ptr, ptr %pGen.addr, align 8
  %call30 = call i32 @GenStateLeaveBlock(ptr noundef %28, ptr noundef null)
  br label %if.end110

if.else:                                          ; preds = %entry
  %29 = load ptr, ptr %pGen.addr, align 8
  %pIn31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %pIn31, align 8
  %nType32 = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nType32, align 8
  %and33 = and i32 %31, 1048576
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %land.lhs.true, label %if.else103

land.lhs.true:                                    ; preds = %if.else
  %32 = load i32, ptr %nKeywordEnd.addr, align 4
  %cmp35 = icmp sgt i32 %32, 0
  br i1 %cmp35, label %if.then36, label %if.else103

if.then36:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %pGen.addr, align 8
  %pIn37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %pIn37, align 8
  %incdec.ptr38 = getelementptr inbounds nuw %struct.SyToken, ptr %34, i32 1
  store ptr %incdec.ptr38, ptr %pIn37, align 8
  %35 = load ptr, ptr %pGen.addr, align 8
  %36 = load ptr, ptr %pGen.addr, align 8
  %pVm39 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pVm39, align 8
  %call40 = call i32 @PH7_VmInstrLength(ptr noundef %37)
  %call41 = call i32 @GenStateEnterBlock(ptr noundef %35, i32 noundef 128, i32 noundef %call40, ptr noundef null, ptr noundef null)
  store i32 %call41, ptr %rc, align 4
  %38 = load i32, ptr %rc, align 4
  %cmp42 = icmp ne i32 %38, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then36
  store i32 -10, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then36
  br label %for.cond45

for.cond45:                                       ; preds = %if.end100, %if.end44
  %39 = load ptr, ptr %pGen.addr, align 8
  %pIn46 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %pIn46, align 8
  %41 = load ptr, ptr %pGen.addr, align 8
  %pEnd47 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 13
  %42 = load ptr, ptr %pEnd47, align 8
  %cmp48 = icmp uge ptr %40, %42
  br i1 %cmp48, label %if.then49, label %if.end66

if.then49:                                        ; preds = %for.cond45
  %43 = load ptr, ptr %pGen.addr, align 8
  %call50 = call i32 @GenStateNextChunk(ptr noundef %43)
  store i32 %call50, ptr %rc, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp51 = icmp eq i32 %44, -10
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then49
  store i32 -10, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.then49
  %45 = load i32, ptr %rc, align 4
  %cmp54 = icmp eq i32 %45, -18
  br i1 %cmp54, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end53
  %46 = load ptr, ptr %pGen.addr, align 8
  %pIn55 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %46, i32 0, i32 12
  %47 = load ptr, ptr %pIn55, align 8
  %48 = load ptr, ptr %pGen.addr, align 8
  %pEnd56 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %48, i32 0, i32 13
  %49 = load ptr, ptr %pEnd56, align 8
  %cmp57 = icmp uge ptr %47, %49
  br i1 %cmp57, label %if.then58, label %if.end65

if.then58:                                        ; preds = %lor.lhs.false, %if.end53
  %50 = load i32, ptr %rc, align 4
  %cmp59 = icmp eq i32 %50, -18
  br i1 %cmp59, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.then58
  %51 = load ptr, ptr %pGen.addr, align 8
  %52 = load ptr, ptr %pGen.addr, align 8
  %pEnd61 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 13
  %53 = load ptr, ptr %pEnd61, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %53, i64 -1
  %nLine62 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx, i32 0, i32 2
  %54 = load i32, ptr %nLine62, align 4
  %call63 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %51, i32 noundef 2, i32 noundef %54, ptr noundef @.str.232)
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.then58
  br label %for.end101

if.end65:                                         ; preds = %lor.lhs.false
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %for.cond45
  %55 = load ptr, ptr %pGen.addr, align 8
  %pIn67 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 12
  %56 = load ptr, ptr %pIn67, align 8
  %nType68 = getelementptr inbounds nuw %struct.SyToken, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %nType68, align 8
  %and69 = and i32 %57, 4
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then71, label %if.end95

if.then71:                                        ; preds = %if.end66
  %58 = load ptr, ptr %pGen.addr, align 8
  %pIn72 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 12
  %59 = load ptr, ptr %pIn72, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %59, i32 0, i32 3
  %60 = load ptr, ptr %pUserData, align 8
  %61 = ptrtoint ptr %60 to i64
  %conv = trunc i64 %61 to i32
  store i32 %conv, ptr %nKwrd, align 4
  %62 = load i32, ptr %nKwrd, align 4
  %63 = load i32, ptr %nKeywordEnd.addr, align 4
  %cmp73 = icmp eq i32 %62, %63
  br i1 %cmp73, label %if.then84, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.then71
  %64 = load i32, ptr %nKeywordEnd.addr, align 4
  %cmp76 = icmp eq i32 %64, 4194304
  br i1 %cmp76, label %land.lhs.true78, label %if.end94

land.lhs.true78:                                  ; preds = %lor.lhs.false75
  %65 = load i32, ptr %nKwrd, align 4
  %cmp79 = icmp eq i32 %65, 134217728
  br i1 %cmp79, label %if.then84, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %land.lhs.true78
  %66 = load i32, ptr %nKwrd, align 4
  %cmp82 = icmp eq i32 %66, 67108864
  br i1 %cmp82, label %if.then84, label %if.end94

if.then84:                                        ; preds = %lor.lhs.false81, %land.lhs.true78, %if.then71
  %67 = load i32, ptr %nKwrd, align 4
  %cmp85 = icmp ne i32 %67, 134217728
  br i1 %cmp85, label %land.lhs.true87, label %if.end93

land.lhs.true87:                                  ; preds = %if.then84
  %68 = load i32, ptr %nKwrd, align 4
  %cmp88 = icmp ne i32 %68, 67108864
  br i1 %cmp88, label %if.then90, label %if.end93

if.then90:                                        ; preds = %land.lhs.true87
  %69 = load ptr, ptr %pGen.addr, align 8
  %pIn91 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %69, i32 0, i32 12
  %70 = load ptr, ptr %pIn91, align 8
  %incdec.ptr92 = getelementptr inbounds nuw %struct.SyToken, ptr %70, i32 1
  store ptr %incdec.ptr92, ptr %pIn91, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %land.lhs.true87, %if.then84
  br label %for.end101

if.end94:                                         ; preds = %lor.lhs.false81, %lor.lhs.false75
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end66
  %71 = load ptr, ptr %pGen.addr, align 8
  %call96 = call i32 @GenStateCompileChunk(ptr noundef %71, i32 noundef 1)
  store i32 %call96, ptr %rc, align 4
  %72 = load i32, ptr %rc, align 4
  %cmp97 = icmp eq i32 %72, -10
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end95
  store i32 -10, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end95
  br label %for.cond45

for.end101:                                       ; preds = %if.end93, %if.end64
  %73 = load ptr, ptr %pGen.addr, align 8
  %call102 = call i32 @GenStateLeaveBlock(ptr noundef %73, ptr noundef null)
  br label %if.end109

if.else103:                                       ; preds = %land.lhs.true, %if.else
  %74 = load ptr, ptr %pGen.addr, align 8
  %call104 = call i32 @GenStateCompileChunk(ptr noundef %74, i32 noundef 1)
  store i32 %call104, ptr %rc, align 4
  %75 = load i32, ptr %rc, align 4
  %cmp105 = icmp eq i32 %75, -10
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.else103
  store i32 -10, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.else103
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %for.end101
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end110
  %76 = load ptr, ptr %pGen.addr, align 8
  %pIn111 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %76, i32 0, i32 12
  %77 = load ptr, ptr %pIn111, align 8
  %78 = load ptr, ptr %pGen.addr, align 8
  %pEnd112 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %78, i32 0, i32 13
  %79 = load ptr, ptr %pEnd112, align 8
  %cmp113 = icmp ult ptr %77, %79
  br i1 %cmp113, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %80 = load ptr, ptr %pGen.addr, align 8
  %pIn115 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %80, i32 0, i32 12
  %81 = load ptr, ptr %pIn115, align 8
  %nType116 = getelementptr inbounds nuw %struct.SyToken, ptr %81, i32 0, i32 1
  %82 = load i32, ptr %nType116, align 8
  %and117 = and i32 %82, 262144
  %tobool118 = icmp ne i32 %and117, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %83 = phi i1 [ false, %while.cond ], [ %tobool118, %land.rhs ]
  br i1 %83, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %84 = load ptr, ptr %pGen.addr, align 8
  %pIn119 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %84, i32 0, i32 12
  %85 = load ptr, ptr %pIn119, align 8
  %incdec.ptr120 = getelementptr inbounds nuw %struct.SyToken, ptr %85, i32 1
  store ptr %incdec.ptr120, ptr %pIn119, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then107, %if.then99, %if.then52, %if.then43, %if.then28, %if.then11, %if.then4
  %86 = load i32, ptr %retval, align 4
  ret i32 %86
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateLeaveBlock(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateNextChunk(ptr noundef) #0

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
