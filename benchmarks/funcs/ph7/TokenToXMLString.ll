; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyXMLRawStrNS = type { ptr, i32, i32, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden void @TokenToXMLString(ptr noundef %pTok, ptr noundef %pOut) #1 {
entry:
  %pTok.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  store ptr %pTok, ptr %pTok.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %pTok.addr, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %0, i32 0, i32 0
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sData, i32 0, i32 1
  %1 = load i32, ptr %nByte, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load ptr, ptr %pTok.addr, align 8
  %sData1 = getelementptr inbounds nuw %struct.SyToken, ptr %2, i32 0, i32 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sData1, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp slt i32 %conv, 192
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #2
  %5 = load ptr, ptr %call, align 8
  %6 = load ptr, ptr %pTok.addr, align 8
  %sData4 = getelementptr inbounds nuw %struct.SyToken, ptr %6, i32 0, i32 0
  %zString5 = getelementptr inbounds nuw %struct.SyString, ptr %sData4, i32 0, i32 0
  %7 = load ptr, ptr %zString5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %idxprom = sext i32 %conv7 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %5, i64 %idxprom
  %9 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %9 to i32
  %and = and i32 %conv9, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %pTok.addr, align 8
  %sData10 = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 0, i32 0
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %sData10, i32 0, i32 1
  %12 = load i32, ptr %nByte11, align 8
  %dec = add i32 %12, -1
  store i32 %dec, ptr %nByte11, align 8
  %13 = load ptr, ptr %pTok.addr, align 8
  %sData12 = getelementptr inbounds nuw %struct.SyToken, ptr %13, i32 0, i32 0
  %zString13 = getelementptr inbounds nuw %struct.SyString, ptr %sData12, i32 0, i32 0
  %14 = load ptr, ptr %zString13, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %zString13, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond14

while.cond14:                                     ; preds = %while.body45, %while.end
  %15 = load ptr, ptr %pTok.addr, align 8
  %sData15 = getelementptr inbounds nuw %struct.SyToken, ptr %15, i32 0, i32 0
  %nByte16 = getelementptr inbounds nuw %struct.SyString, ptr %sData15, i32 0, i32 1
  %16 = load i32, ptr %nByte16, align 8
  %cmp17 = icmp ugt i32 %16, 0
  br i1 %cmp17, label %land.lhs.true19, label %land.end44

land.lhs.true19:                                  ; preds = %while.cond14
  %17 = load ptr, ptr %pTok.addr, align 8
  %sData20 = getelementptr inbounds nuw %struct.SyToken, ptr %17, i32 0, i32 0
  %zString21 = getelementptr inbounds nuw %struct.SyString, ptr %sData20, i32 0, i32 0
  %18 = load ptr, ptr %zString21, align 8
  %19 = load ptr, ptr %pTok.addr, align 8
  %sData22 = getelementptr inbounds nuw %struct.SyToken, ptr %19, i32 0, i32 0
  %nByte23 = getelementptr inbounds nuw %struct.SyString, ptr %sData22, i32 0, i32 1
  %20 = load i32, ptr %nByte23, align 8
  %sub = sub i32 %20, 1
  %idxprom24 = zext i32 %sub to i64
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %18, i64 %idxprom24
  %21 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %21 to i32
  %cmp27 = icmp slt i32 %conv26, 192
  br i1 %cmp27, label %land.rhs29, label %land.end44

land.rhs29:                                       ; preds = %land.lhs.true19
  %call30 = call ptr @__ctype_b_loc() #2
  %22 = load ptr, ptr %call30, align 8
  %23 = load ptr, ptr %pTok.addr, align 8
  %sData31 = getelementptr inbounds nuw %struct.SyToken, ptr %23, i32 0, i32 0
  %zString32 = getelementptr inbounds nuw %struct.SyString, ptr %sData31, i32 0, i32 0
  %24 = load ptr, ptr %zString32, align 8
  %25 = load ptr, ptr %pTok.addr, align 8
  %sData33 = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 0, i32 0
  %nByte34 = getelementptr inbounds nuw %struct.SyString, ptr %sData33, i32 0, i32 1
  %26 = load i32, ptr %nByte34, align 8
  %sub35 = sub i32 %26, 1
  %idxprom36 = zext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %24, i64 %idxprom36
  %27 = load i8, ptr %arrayidx37, align 1
  %conv38 = sext i8 %27 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %22, i64 %idxprom39
  %28 = load i16, ptr %arrayidx40, align 2
  %conv41 = zext i16 %28 to i32
  %and42 = and i32 %conv41, 8192
  %tobool43 = icmp ne i32 %and42, 0
  br label %land.end44

land.end44:                                       ; preds = %land.rhs29, %land.lhs.true19, %while.cond14
  %29 = phi i1 [ false, %land.lhs.true19 ], [ false, %while.cond14 ], [ %tobool43, %land.rhs29 ]
  br i1 %29, label %while.body45, label %while.end49

while.body45:                                     ; preds = %land.end44
  %30 = load ptr, ptr %pTok.addr, align 8
  %sData46 = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 0, i32 0
  %nByte47 = getelementptr inbounds nuw %struct.SyString, ptr %sData46, i32 0, i32 1
  %31 = load i32, ptr %nByte47, align 8
  %dec48 = add i32 %31, -1
  store i32 %dec48, ptr %nByte47, align 8
  br label %while.cond14, !llvm.loop !8

while.end49:                                      ; preds = %land.end44
  %32 = load ptr, ptr %pTok.addr, align 8
  %sData50 = getelementptr inbounds nuw %struct.SyToken, ptr %32, i32 0, i32 0
  %zString51 = getelementptr inbounds nuw %struct.SyString, ptr %sData50, i32 0, i32 0
  %33 = load ptr, ptr %zString51, align 8
  %34 = load ptr, ptr %pOut.addr, align 8
  %zString52 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %34, i32 0, i32 0
  store ptr %33, ptr %zString52, align 8
  %35 = load ptr, ptr %pTok.addr, align 8
  %sData53 = getelementptr inbounds nuw %struct.SyToken, ptr %35, i32 0, i32 0
  %nByte54 = getelementptr inbounds nuw %struct.SyString, ptr %sData53, i32 0, i32 1
  %36 = load i32, ptr %nByte54, align 8
  %37 = load ptr, ptr %pOut.addr, align 8
  %nByte55 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %37, i32 0, i32 1
  store i32 %36, ptr %nByte55, align 8
  ret void
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
