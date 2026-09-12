; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @FindTag(ptr noundef %pSet, ptr noundef %zTag, i32 noundef %nByte) #1 {
entry:
  %retval = alloca i32, align 4
  %pSet.addr = alloca ptr, align 8
  %zTag.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %sTag = alloca %struct.SyString, align 8
  %aEntry = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pSet, ptr %pSet.addr, align 8
  store ptr %zTag, ptr %zTag.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %pSet.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %nUsed, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end118

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %zTag.addr, align 8
  %3 = load i32, ptr %nByte.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load ptr, ptr %zTag.addr, align 8
  %5 = load ptr, ptr %zEnd, align 8
  %cmp1 = icmp ult ptr %4, %5
  br i1 %cmp1, label %land.rhs, label %land.end24

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %zTag.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 60
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %8 = load ptr, ptr %zTag.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 47
  br i1 %cmp7, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %10 = load ptr, ptr %zTag.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 63
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false9
  %12 = load ptr, ptr %zTag.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %cmp16 = icmp slt i32 %conv15, 192
  br i1 %cmp16, label %land.rhs18, label %land.end

land.rhs18:                                       ; preds = %lor.rhs
  %call = call ptr @__ctype_b_loc() #2
  %14 = load ptr, ptr %call, align 8
  %15 = load ptr, ptr %zTag.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %16 to i32
  %idxprom21 = sext i32 %conv20 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %14, i64 %idxprom21
  %17 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %17 to i32
  %and = and i32 %conv23, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs18, %lor.rhs
  %18 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs18 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false9, %lor.lhs.false, %land.rhs
  %19 = phi i1 [ true, %lor.lhs.false9 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %18, %land.end ]
  br label %land.end24

land.end24:                                       ; preds = %lor.end, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %19, %lor.end ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end24
  %21 = load ptr, ptr %zTag.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %zTag.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end24
  %22 = load ptr, ptr %zTag.addr, align 8
  store ptr %22, ptr %zCur, align 8
  br label %while.cond25

while.cond25:                                     ; preds = %if.end59, %while.end
  %23 = load ptr, ptr %zTag.addr, align 8
  %24 = load ptr, ptr %zEnd, align 8
  %cmp26 = icmp ult ptr %23, %24
  br i1 %cmp26, label %while.body28, label %while.end60

while.body28:                                     ; preds = %while.cond25
  %25 = load ptr, ptr %zTag.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %26 to i32
  %cmp31 = icmp sge i32 %conv30, 192
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %while.body28
  %27 = load ptr, ptr %zTag.addr, align 8
  %incdec.ptr34 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %incdec.ptr34, ptr %zTag.addr, align 8
  br label %while.cond35

while.cond35:                                     ; preds = %while.body45, %if.then33
  %28 = load ptr, ptr %zTag.addr, align 8
  %29 = load ptr, ptr %zEnd, align 8
  %cmp36 = icmp ult ptr %28, %29
  br i1 %cmp36, label %land.rhs38, label %land.end44

land.rhs38:                                       ; preds = %while.cond35
  %30 = load ptr, ptr %zTag.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %31 to i32
  %and41 = and i32 %conv40, 192
  %cmp42 = icmp eq i32 %and41, 128
  br label %land.end44

land.end44:                                       ; preds = %land.rhs38, %while.cond35
  %32 = phi i1 [ false, %while.cond35 ], [ %cmp42, %land.rhs38 ]
  br i1 %32, label %while.body45, label %while.end47

while.body45:                                     ; preds = %land.end44
  %33 = load ptr, ptr %zTag.addr, align 8
  %incdec.ptr46 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %incdec.ptr46, ptr %zTag.addr, align 8
  br label %while.cond35, !llvm.loop !8

while.end47:                                      ; preds = %land.end44
  br label %if.end59

if.else:                                          ; preds = %while.body28
  %call48 = call ptr @__ctype_b_loc() #2
  %34 = load ptr, ptr %call48, align 8
  %35 = load ptr, ptr %zTag.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %35, i64 0
  %36 = load i8, ptr %arrayidx49, align 1
  %conv50 = sext i8 %36 to i32
  %idxprom51 = sext i32 %conv50 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %34, i64 %idxprom51
  %37 = load i16, ptr %arrayidx52, align 2
  %conv53 = zext i16 %37 to i32
  %and54 = and i32 %conv53, 8
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.else57, label %if.then56

if.then56:                                        ; preds = %if.else
  br label %while.end60

if.else57:                                        ; preds = %if.else
  %38 = load ptr, ptr %zTag.addr, align 8
  %incdec.ptr58 = getelementptr inbounds nuw i8, ptr %38, i32 1
  store ptr %incdec.ptr58, ptr %zTag.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else57
  br label %if.end59

if.end59:                                         ; preds = %if.end, %while.end47
  br label %while.cond25, !llvm.loop !9

while.end60:                                      ; preds = %if.then56, %while.cond25
  %39 = load ptr, ptr %zCur, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 0
  store ptr %39, ptr %zString, align 8
  %40 = load ptr, ptr %zTag.addr, align 8
  %41 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv61 = trunc i64 %sub.ptr.sub to i32
  %nByte62 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 1
  store i32 %conv61, ptr %nByte62, align 8
  br label %while.cond63

while.cond63:                                     ; preds = %while.body90, %while.end60
  %nByte64 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 1
  %42 = load i32, ptr %nByte64, align 8
  %cmp65 = icmp ugt i32 %42, 0
  br i1 %cmp65, label %land.lhs.true, label %land.end89

land.lhs.true:                                    ; preds = %while.cond63
  %zString67 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 0
  %43 = load ptr, ptr %zString67, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %43, i64 0
  %44 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %44 to i32
  %cmp70 = icmp slt i32 %conv69, 192
  br i1 %cmp70, label %land.rhs72, label %land.end89

land.rhs72:                                       ; preds = %land.lhs.true
  %zString73 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 0
  %45 = load ptr, ptr %zString73, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx74, align 1
  %conv75 = sext i8 %46 to i32
  %cmp76 = icmp eq i32 %conv75, 0
  br i1 %cmp76, label %lor.end88, label %lor.rhs78

lor.rhs78:                                        ; preds = %land.rhs72
  %call79 = call ptr @__ctype_b_loc() #2
  %47 = load ptr, ptr %call79, align 8
  %zString80 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 0
  %48 = load ptr, ptr %zString80, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %48, i64 0
  %49 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %49 to i32
  %idxprom83 = sext i32 %conv82 to i64
  %arrayidx84 = getelementptr inbounds i16, ptr %47, i64 %idxprom83
  %50 = load i16, ptr %arrayidx84, align 2
  %conv85 = zext i16 %50 to i32
  %and86 = and i32 %conv85, 8192
  %tobool87 = icmp ne i32 %and86, 0
  br label %lor.end88

lor.end88:                                        ; preds = %lor.rhs78, %land.rhs72
  %51 = phi i1 [ true, %land.rhs72 ], [ %tobool87, %lor.rhs78 ]
  br label %land.end89

land.end89:                                       ; preds = %lor.end88, %land.lhs.true, %while.cond63
  %52 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond63 ], [ %51, %lor.end88 ]
  br i1 %52, label %while.body90, label %while.end94

while.body90:                                     ; preds = %land.end89
  %nByte91 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 1
  %53 = load i32, ptr %nByte91, align 8
  %dec = add i32 %53, -1
  store i32 %dec, ptr %nByte91, align 8
  %zString92 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 0
  %54 = load ptr, ptr %zString92, align 8
  %incdec.ptr93 = getelementptr inbounds nuw i8, ptr %54, i32 1
  store ptr %incdec.ptr93, ptr %zString92, align 8
  br label %while.cond63, !llvm.loop !10

while.end94:                                      ; preds = %land.end89
  %nByte95 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 1
  %55 = load i32, ptr %nByte95, align 8
  %cmp96 = icmp ugt i32 %55, 0
  br i1 %cmp96, label %if.then98, label %if.end117

if.then98:                                        ; preds = %while.end94
  %56 = load ptr, ptr %pSet.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %pBase, align 8
  store ptr %57, ptr %aEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then98
  %58 = load i32, ptr %n, align 4
  %59 = load ptr, ptr %pSet.addr, align 8
  %nUsed99 = getelementptr inbounds nuw %struct.SySet, ptr %59, i32 0, i32 2
  %60 = load i32, ptr %nUsed99, align 8
  %cmp100 = icmp ult i32 %58, %60
  br i1 %cmp100, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load ptr, ptr %aEntry, align 8
  %62 = load i32, ptr %n, align 4
  %idxprom102 = zext i32 %62 to i64
  %arrayidx103 = getelementptr inbounds nuw %struct.SyString, ptr %61, i64 %idxprom102
  store ptr %arrayidx103, ptr %pEntry, align 8
  %63 = load ptr, ptr %pEntry, align 8
  %nByte104 = getelementptr inbounds nuw %struct.SyString, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %nByte104, align 8
  %nByte105 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 1
  %65 = load i32, ptr %nByte105, align 8
  %cmp106 = icmp eq i32 %64, %65
  br i1 %cmp106, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %66 = load ptr, ptr %pEntry, align 8
  %zString108 = getelementptr inbounds nuw %struct.SyString, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %zString108, align 8
  %zString109 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 0
  %68 = load ptr, ptr %zString109, align 8
  %nByte110 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 1
  %69 = load i32, ptr %nByte110, align 8
  %call111 = call i32 @SyStrnicmp(ptr noundef %67, ptr noundef %68, i32 noundef %69)
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %70 = load ptr, ptr %pEntry, align 8
  %nByte112 = getelementptr inbounds nuw %struct.SyString, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %nByte112, align 8
  %nByte113 = getelementptr inbounds nuw %struct.SyString, ptr %sTag, i32 0, i32 1
  %72 = load i32, ptr %nByte113, align 8
  %sub = sub i32 %71, %72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call111, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %73 = load i32, ptr %rc, align 4
  %tobool114 = icmp ne i32 %73, 0
  br i1 %tobool114, label %if.end116, label %if.then115

if.then115:                                       ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end116:                                        ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end116
  %74 = load i32, ptr %n, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %if.end117

if.end117:                                        ; preds = %for.end, %while.end94
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end118, %if.then115
  %75 = load i32, ptr %retval, align 4
  ret i32 %75
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
