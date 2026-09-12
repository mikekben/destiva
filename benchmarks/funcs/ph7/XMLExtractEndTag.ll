; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyXMLRawStrNS = type { ptr, i32, i32, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }

@.str.588 = external hidden unnamed_addr constant [21 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @XMLExtractEndTag(ptr noundef %pParse, ptr noundef %pToken, ptr noundef %pOut) #1 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %pToken.addr, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %0, i32 0, i32 0
  store ptr %sData, ptr %pIn, align 8
  %1 = load ptr, ptr %pIn, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %zString, align 8
  %3 = load ptr, ptr %pIn, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nByte, align 8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %5 = load ptr, ptr %pIn, align 8
  %zString1 = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %zString1, align 8
  store ptr %6, ptr %zIn, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %zIn, align 8
  %8 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %7, %8
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %9 = load ptr, ptr %zIn, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %10 to i32
  %cmp3 = icmp slt i32 %conv, 192
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #2
  %11 = load ptr, ptr %call, align 8
  %12 = load ptr, ptr %zIn, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %13 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %11, i64 %idxprom7
  %14 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %14 to i32
  %and = and i32 %conv9, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %pToken.addr, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %nLine, align 4
  %19 = load ptr, ptr %pOut.addr, align 8
  %nLine10 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %19, i32 0, i32 2
  store i32 %18, ptr %nLine10, align 4
  %20 = load ptr, ptr %zIn, align 8
  %21 = load ptr, ptr %pOut.addr, align 8
  %zString11 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %21, i32 0, i32 0
  store ptr %20, ptr %zString11, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %23 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv12 = trunc i64 %sub.ptr.sub to i32
  %24 = load ptr, ptr %pOut.addr, align 8
  %nByte13 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %24, i32 0, i32 1
  store i32 %conv12, ptr %nByte13, align 8
  br label %while.cond14

while.cond14:                                     ; preds = %while.body40, %while.end
  %25 = load ptr, ptr %pOut.addr, align 8
  %nByte15 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %nByte15, align 8
  %cmp16 = icmp ugt i32 %26, 0
  br i1 %cmp16, label %land.lhs.true18, label %land.end39

land.lhs.true18:                                  ; preds = %while.cond14
  %27 = load ptr, ptr %pOut.addr, align 8
  %zString19 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %zString19, align 8
  %29 = load ptr, ptr %pOut.addr, align 8
  %nByte20 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %nByte20, align 8
  %sub = sub i32 %30, 1
  %idxprom21 = zext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %28, i64 %idxprom21
  %31 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %31 to i32
  %cmp24 = icmp slt i32 %conv23, 192
  br i1 %cmp24, label %land.rhs26, label %land.end39

land.rhs26:                                       ; preds = %land.lhs.true18
  %call27 = call ptr @__ctype_b_loc() #2
  %32 = load ptr, ptr %call27, align 8
  %33 = load ptr, ptr %pOut.addr, align 8
  %zString28 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %zString28, align 8
  %35 = load ptr, ptr %pOut.addr, align 8
  %nByte29 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %nByte29, align 8
  %sub30 = sub i32 %36, 1
  %idxprom31 = zext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %34, i64 %idxprom31
  %37 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %37 to i32
  %idxprom34 = sext i32 %conv33 to i64
  %arrayidx35 = getelementptr inbounds i16, ptr %32, i64 %idxprom34
  %38 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %38 to i32
  %and37 = and i32 %conv36, 8192
  %tobool38 = icmp ne i32 %and37, 0
  br label %land.end39

land.end39:                                       ; preds = %land.rhs26, %land.lhs.true18, %while.cond14
  %39 = phi i1 [ false, %land.lhs.true18 ], [ false, %while.cond14 ], [ %tobool38, %land.rhs26 ]
  br i1 %39, label %while.body40, label %while.end42

while.body40:                                     ; preds = %land.end39
  %40 = load ptr, ptr %pOut.addr, align 8
  %nByte41 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %nByte41, align 8
  %dec = add i32 %41, -1
  store i32 %dec, ptr %nByte41, align 8
  br label %while.cond14, !llvm.loop !8

while.end42:                                      ; preds = %land.end39
  %42 = load ptr, ptr %pOut.addr, align 8
  %nByte43 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %nByte43, align 8
  %cmp44 = icmp ult i32 %43, 1
  br i1 %cmp44, label %if.then, label %if.end54

if.then:                                          ; preds = %while.end42
  %44 = load ptr, ptr %pParse.addr, align 8
  %xError = getelementptr inbounds nuw %struct.SyXMLParser, ptr %44, i32 0, i32 11
  %45 = load ptr, ptr %xError, align 8
  %tobool46 = icmp ne ptr %45, null
  br i1 %tobool46, label %if.then47, label %if.end53

if.then47:                                        ; preds = %if.then
  %46 = load ptr, ptr %pParse.addr, align 8
  %xError48 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %46, i32 0, i32 11
  %47 = load ptr, ptr %xError48, align 8
  %48 = load ptr, ptr %pToken.addr, align 8
  %49 = load ptr, ptr %pParse.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyXMLParser, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %pUserData, align 8
  %call49 = call i32 %47(ptr noundef @.str.588, i32 noundef 5, ptr noundef %48, ptr noundef %50)
  store i32 %call49, ptr %rc, align 4
  %51 = load i32, ptr %rc, align 4
  %cmp50 = icmp eq i32 %51, -10
  br i1 %cmp50, label %if.then52, label %if.end

if.then52:                                        ; preds = %if.then47
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then47
  br label %if.end53

if.end53:                                         ; preds = %if.end, %if.then
  store i32 -12, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %while.end42
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end54, %if.end53, %if.then52
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
