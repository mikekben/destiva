; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LangConstruct = type { i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_expr_op = type { %struct.SyString, i32, i32, i32, i32 }

@aLangConstruct = external hidden constant [23 x { i32, [4 x i8], ptr }], align 16

; Function Attrs: nounwind uwtable
define hidden ptr @GenStateGetStatementHandler(i32 noundef %nKeywordID, ptr noundef %pLookahed) #0 {
entry:
  %retval = alloca ptr, align 8
  %nKeywordID.addr = alloca i32, align 4
  %pLookahed.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %pOp = alloca ptr, align 8
  store i32 %nKeywordID, ptr %nKeywordID.addr, align 4
  store ptr %pLookahed, ptr %pLookahed.addr, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end19, %entry
  %0 = load i32, ptr %n, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp uge i64 %conv, 23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %1 = load i32, ptr %n, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw [23 x %struct.LangConstruct], ptr @aLangConstruct, i64 0, i64 %idxprom
  %nID = getelementptr inbounds nuw %struct.LangConstruct, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %nID, align 16
  %3 = load i32, ptr %nKeywordID.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %if.then4, label %if.end19

if.then4:                                         ; preds = %if.end
  %4 = load i32, ptr %nKeywordID.addr, align 4
  %cmp5 = icmp eq i32 %4, 16
  br i1 %cmp5, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.then4
  %5 = load ptr, ptr %pLookahed.addr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %land.lhs.true7, label %if.end16

land.lhs.true7:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %pLookahed.addr, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nType, align 8
  %and = and i32 %7, 32
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %land.lhs.true7
  %8 = load ptr, ptr %pLookahed.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %pUserData, align 8
  store ptr %9, ptr %pOp, align 8
  %10 = load ptr, ptr %pOp, align 8
  %tobool10 = icmp ne ptr %10, null
  br i1 %tobool10, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %if.then9
  %11 = load ptr, ptr %pOp, align 8
  %iOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %iOp, align 8
  %cmp12 = icmp eq i32 %12, 4
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  store ptr null, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %land.lhs.true11, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %land.lhs.true7, %land.lhs.true, %if.then4
  %13 = load i32, ptr %n, align 4
  %idxprom17 = zext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds nuw [23 x %struct.LangConstruct], ptr @aLangConstruct, i64 0, i64 %idxprom17
  %xConstruct = getelementptr inbounds nuw %struct.LangConstruct, ptr %arrayidx18, i32 0, i32 1
  %14 = load ptr, ptr %xConstruct, align 8
  store ptr %14, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %if.end
  %15 = load i32, ptr %n, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %16 = load ptr, ptr %pLookahed.addr, align 8
  %tobool20 = icmp ne ptr %16, null
  br i1 %tobool20, label %if.then21, label %if.end66

if.then21:                                        ; preds = %for.end
  %17 = load i32, ptr %nKeywordID.addr, align 4
  %cmp22 = icmp eq i32 %17, 5
  br i1 %cmp22, label %land.lhs.true24, label %if.else

land.lhs.true24:                                  ; preds = %if.then21
  %18 = load ptr, ptr %pLookahed.addr, align 8
  %nType25 = getelementptr inbounds nuw %struct.SyToken, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %nType25, align 8
  %and26 = and i32 %19, 8
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.else

if.then28:                                        ; preds = %land.lhs.true24
  store ptr @PH7_CompileClassInterface, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true24, %if.then21
  %20 = load i32, ptr %nKeywordID.addr, align 4
  %cmp29 = icmp eq i32 %20, 32
  br i1 %cmp29, label %land.lhs.true31, label %if.else36

land.lhs.true31:                                  ; preds = %if.else
  %21 = load ptr, ptr %pLookahed.addr, align 8
  %nType32 = getelementptr inbounds nuw %struct.SyToken, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %nType32, align 8
  %and33 = and i32 %22, 8
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %land.lhs.true31
  store ptr @PH7_CompileClass, ptr %retval, align 8
  br label %return

if.else36:                                        ; preds = %land.lhs.true31, %if.else
  %23 = load i32, ptr %nKeywordID.addr, align 4
  %cmp37 = icmp eq i32 %23, 29
  br i1 %cmp37, label %land.lhs.true39, label %if.else49

land.lhs.true39:                                  ; preds = %if.else36
  %24 = load ptr, ptr %pLookahed.addr, align 8
  %nType40 = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nType40, align 8
  %and41 = and i32 %25, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %land.lhs.true43, label %if.else49

land.lhs.true43:                                  ; preds = %land.lhs.true39
  %26 = load ptr, ptr %pLookahed.addr, align 8
  %pUserData44 = getelementptr inbounds nuw %struct.SyToken, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pUserData44, align 8
  %28 = ptrtoint ptr %27 to i64
  %conv45 = trunc i64 %28 to i32
  %cmp46 = icmp eq i32 %conv45, 32
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %land.lhs.true43
  store ptr @PH7_CompileAbstractClass, ptr %retval, align 8
  br label %return

if.else49:                                        ; preds = %land.lhs.true43, %land.lhs.true39, %if.else36
  %29 = load i32, ptr %nKeywordID.addr, align 4
  %cmp50 = icmp eq i32 %29, 14
  br i1 %cmp50, label %land.lhs.true52, label %if.end62

land.lhs.true52:                                  ; preds = %if.else49
  %30 = load ptr, ptr %pLookahed.addr, align 8
  %nType53 = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nType53, align 8
  %and54 = and i32 %31, 4
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %land.lhs.true56, label %if.end62

land.lhs.true56:                                  ; preds = %land.lhs.true52
  %32 = load ptr, ptr %pLookahed.addr, align 8
  %pUserData57 = getelementptr inbounds nuw %struct.SyToken, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %pUserData57, align 8
  %34 = ptrtoint ptr %33 to i64
  %conv58 = trunc i64 %34 to i32
  %cmp59 = icmp eq i32 %conv58, 32
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %land.lhs.true56
  store ptr @PH7_CompileFinalClass, ptr %retval, align 8
  br label %return

if.end62:                                         ; preds = %land.lhs.true56, %land.lhs.true52, %if.else49
  br label %if.end63

if.end63:                                         ; preds = %if.end62
  br label %if.end64

if.end64:                                         ; preds = %if.end63
  br label %if.end65

if.end65:                                         ; preds = %if.end64
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %for.end
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end66, %if.then61, %if.then48, %if.then35, %if.then28, %if.end16, %if.then14
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileClassInterface(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileClass(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileAbstractClass(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileFinalClass(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
