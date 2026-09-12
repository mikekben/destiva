; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyLexTokenizeInput(ptr noundef %pLex, ptr noundef %zInput, i32 noundef %nLen, ptr noundef %pCtxData, ptr noundef %xSort, ptr noundef %xCmp) #0 {
entry:
  %retval = alloca i32, align 4
  %pLex.addr = alloca ptr, align 8
  %zInput.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pCtxData.addr = alloca ptr, align 8
  %xSort.addr = alloca ptr, align 8
  %xCmp.addr = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %sToken = alloca %struct.SyToken, align 8
  %rc = alloca i32, align 4
  %aToken = alloca ptr, align 8
  store ptr %pLex, ptr %pLex.addr, align 8
  store ptr %zInput, ptr %zInput.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pCtxData, ptr %pCtxData.addr, align 8
  store ptr %xSort, ptr %xSort.addr, align 8
  store ptr %xCmp, ptr %xCmp.addr, align 8
  %0 = load ptr, ptr %pLex.addr, align 8
  %sStream = getelementptr inbounds nuw %struct.SyLex, ptr %0, i32 0, i32 0
  store ptr %sStream, ptr %pStream, align 8
  %1 = load ptr, ptr %zInput.addr, align 8
  %2 = load ptr, ptr %pStream, align 8
  %zInput1 = getelementptr inbounds nuw %struct.SyStream, ptr %2, i32 0, i32 0
  store ptr %1, ptr %zInput1, align 8
  %3 = load ptr, ptr %pStream, align 8
  %zText = getelementptr inbounds nuw %struct.SyStream, ptr %3, i32 0, i32 1
  store ptr %1, ptr %zText, align 8
  %4 = load ptr, ptr %pStream, align 8
  %zInput2 = getelementptr inbounds nuw %struct.SyStream, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zInput2, align 8
  %6 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %pStream, align 8
  %zEnd = getelementptr inbounds nuw %struct.SyStream, ptr %7, i32 0, i32 2
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end28, %entry
  %8 = load ptr, ptr %pStream, align 8
  %zText3 = getelementptr inbounds nuw %struct.SyStream, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %zText3, align 8
  %10 = load ptr, ptr %pStream, align 8
  %zEnd4 = getelementptr inbounds nuw %struct.SyStream, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %zEnd4, align 8
  %cmp = icmp uge ptr %9, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %12 = load ptr, ptr %pStream, align 8
  %zText5 = getelementptr inbounds nuw %struct.SyStream, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %zText5, align 8
  store ptr %13, ptr %zCur, align 8
  %14 = load ptr, ptr %pLex.addr, align 8
  %xTokenizer = getelementptr inbounds nuw %struct.SyLex, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %xTokenizer, align 8
  %16 = load ptr, ptr %pStream, align 8
  %17 = load ptr, ptr %pLex.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyLex, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pUserData, align 8
  %19 = load ptr, ptr %pCtxData.addr, align 8
  %call = call i32 %15(ptr noundef %16, ptr noundef %sToken, ptr noundef %18, ptr noundef %19)
  store i32 %call, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp6 = icmp ne i32 %20, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %21 = load i32, ptr %rc, align 4
  %cmp7 = icmp ne i32 %21, -25
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  %22 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %22, -10
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  store i32 -10, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then8
  br label %for.end

if.end12:                                         ; preds = %land.lhs.true, %if.end
  %23 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %23, -25
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %24 = load ptr, ptr %pStream, align 8
  %nIgn = getelementptr inbounds nuw %struct.SyStream, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %nIgn, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %nIgn, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end12
  %26 = load ptr, ptr %pLex.addr, align 8
  %pTokenSet = getelementptr inbounds nuw %struct.SyLex, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pTokenSet, align 8
  %tobool = icmp ne ptr %27, null
  br i1 %tobool, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.else
  %28 = load ptr, ptr %pLex.addr, align 8
  %pTokenSet16 = getelementptr inbounds nuw %struct.SyLex, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %pTokenSet16, align 8
  %call17 = call i32 @SySetPut(ptr noundef %29, ptr noundef %sToken)
  store i32 %call17, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %cmp18 = icmp ne i32 %30, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then15
  br label %for.end

if.end20:                                         ; preds = %if.then15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then14
  %31 = load ptr, ptr %zCur, align 8
  %32 = load ptr, ptr %pStream, align 8
  %zText23 = getelementptr inbounds nuw %struct.SyStream, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %zText23, align 8
  %cmp24 = icmp uge ptr %31, %33
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end22
  %34 = load ptr, ptr %zCur, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %34, i64 1
  %35 = load ptr, ptr %pStream, align 8
  %zText27 = getelementptr inbounds nuw %struct.SyStream, ptr %35, i32 0, i32 1
  store ptr %arrayidx26, ptr %zText27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22
  br label %for.cond

for.end:                                          ; preds = %if.then19, %if.end11, %if.then
  %36 = load ptr, ptr %xSort.addr, align 8
  %tobool29 = icmp ne ptr %36, null
  br i1 %tobool29, label %land.lhs.true30, label %if.end40

land.lhs.true30:                                  ; preds = %for.end
  %37 = load ptr, ptr %pLex.addr, align 8
  %pTokenSet31 = getelementptr inbounds nuw %struct.SyLex, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %pTokenSet31, align 8
  %tobool32 = icmp ne ptr %38, null
  br i1 %tobool32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %land.lhs.true30
  %39 = load ptr, ptr %pLex.addr, align 8
  %pTokenSet34 = getelementptr inbounds nuw %struct.SyLex, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %pTokenSet34, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %pBase, align 8
  store ptr %41, ptr %aToken, align 8
  %42 = load ptr, ptr %xCmp.addr, align 8
  %cmp35 = icmp eq ptr %42, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then33
  store ptr @SyMemcmp, ptr %xCmp.addr, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then33
  %43 = load ptr, ptr %xSort.addr, align 8
  %44 = load ptr, ptr %aToken, align 8
  %45 = load ptr, ptr %pLex.addr, align 8
  %pTokenSet38 = getelementptr inbounds nuw %struct.SyLex, ptr %45, i32 0, i32 3
  %46 = load ptr, ptr %pTokenSet38, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %46, i32 0, i32 2
  %47 = load i32, ptr %nUsed, align 8
  %48 = load ptr, ptr %xCmp.addr, align 8
  %call39 = call i32 %43(ptr noundef %44, i32 noundef %47, i32 noundef 32, ptr noundef %48)
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %land.lhs.true30, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then10
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
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
