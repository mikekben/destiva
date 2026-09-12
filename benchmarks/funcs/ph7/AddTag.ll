; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @AddTag(ptr noundef %pSet, ptr noundef %zTag, i32 noundef %nByte) #1 {
entry:
  %pSet.addr = alloca ptr, align 8
  %zTag.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %sEntry = alloca %struct.SyString, align 8
  store ptr %pSet, ptr %pSet.addr, align 8
  store ptr %zTag, ptr %zTag.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %zTag.addr, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end134, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %2 = load ptr, ptr %zTag.addr, align 8
  %3 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %land.rhs, label %land.end33

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %zTag.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 60
  br i1 %cmp2, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %6 = load ptr, ptr %zTag.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 47
  br i1 %cmp6, label %lor.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %zTag.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp eq i32 %conv10, 63
  br i1 %cmp11, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false8
  %10 = load ptr, ptr %zTag.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 33
  br i1 %cmp16, label %lor.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false13
  %12 = load ptr, ptr %zTag.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %13 to i32
  %cmp21 = icmp eq i32 %conv20, 45
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false18
  %14 = load ptr, ptr %zTag.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %15 to i32
  %cmp25 = icmp slt i32 %conv24, 192
  br i1 %cmp25, label %land.rhs27, label %land.end

land.rhs27:                                       ; preds = %lor.rhs
  %call = call ptr @__ctype_b_loc() #2
  %16 = load ptr, ptr %call, align 8
  %17 = load ptr, ptr %zTag.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx28, align 1
  %conv29 = sext i8 %18 to i32
  %idxprom30 = sext i32 %conv29 to i64
  %arrayidx31 = getelementptr inbounds i16, ptr %16, i64 %idxprom30
  %19 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %19 to i32
  %and = and i32 %conv32, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs27, %lor.rhs
  %20 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs27 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false18, %lor.lhs.false13, %lor.lhs.false8, %lor.lhs.false, %land.rhs
  %21 = phi i1 [ true, %lor.lhs.false18 ], [ true, %lor.lhs.false13 ], [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %20, %land.end ]
  br label %land.end33

land.end33:                                       ; preds = %lor.end, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %21, %lor.end ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end33
  %23 = load ptr, ptr %zTag.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %zTag.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end33
  %24 = load ptr, ptr %zTag.addr, align 8
  %25 = load ptr, ptr %zEnd, align 8
  %cmp34 = icmp uge ptr %24, %25
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  %26 = load ptr, ptr %zTag.addr, align 8
  store ptr %26, ptr %zPtr, align 8
  br label %while.cond36

while.cond36:                                     ; preds = %if.end71, %if.end
  %27 = load ptr, ptr %zTag.addr, align 8
  %28 = load ptr, ptr %zEnd, align 8
  %cmp37 = icmp ult ptr %27, %28
  br i1 %cmp37, label %while.body39, label %while.end72

while.body39:                                     ; preds = %while.cond36
  %29 = load ptr, ptr %zTag.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %30 to i32
  %cmp42 = icmp sge i32 %conv41, 192
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %while.body39
  %31 = load ptr, ptr %zTag.addr, align 8
  %incdec.ptr45 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr45, ptr %zTag.addr, align 8
  br label %while.cond46

while.cond46:                                     ; preds = %while.body56, %if.then44
  %32 = load ptr, ptr %zTag.addr, align 8
  %33 = load ptr, ptr %zEnd, align 8
  %cmp47 = icmp ult ptr %32, %33
  br i1 %cmp47, label %land.rhs49, label %land.end55

land.rhs49:                                       ; preds = %while.cond46
  %34 = load ptr, ptr %zTag.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %35 to i32
  %and52 = and i32 %conv51, 192
  %cmp53 = icmp eq i32 %and52, 128
  br label %land.end55

land.end55:                                       ; preds = %land.rhs49, %while.cond46
  %36 = phi i1 [ false, %while.cond46 ], [ %cmp53, %land.rhs49 ]
  br i1 %36, label %while.body56, label %while.end58

while.body56:                                     ; preds = %land.end55
  %37 = load ptr, ptr %zTag.addr, align 8
  %incdec.ptr57 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %incdec.ptr57, ptr %zTag.addr, align 8
  br label %while.cond46, !llvm.loop !8

while.end58:                                      ; preds = %land.end55
  br label %if.end71

if.else:                                          ; preds = %while.body39
  %call59 = call ptr @__ctype_b_loc() #2
  %38 = load ptr, ptr %call59, align 8
  %39 = load ptr, ptr %zTag.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %40 to i32
  %idxprom62 = sext i32 %conv61 to i64
  %arrayidx63 = getelementptr inbounds i16, ptr %38, i64 %idxprom62
  %41 = load i16, ptr %arrayidx63, align 2
  %conv64 = zext i16 %41 to i32
  %and65 = and i32 %conv64, 8
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.else68, label %if.then67

if.then67:                                        ; preds = %if.else
  br label %while.end72

if.else68:                                        ; preds = %if.else
  %42 = load ptr, ptr %zTag.addr, align 8
  %incdec.ptr69 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %incdec.ptr69, ptr %zTag.addr, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else68
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %while.end58
  br label %while.cond36, !llvm.loop !9

while.end72:                                      ; preds = %if.then67, %while.cond36
  %43 = load ptr, ptr %zTag.addr, align 8
  %44 = load ptr, ptr %zPtr, align 8
  %cmp73 = icmp ugt ptr %43, %44
  br i1 %cmp73, label %if.then75, label %if.end134

if.then75:                                        ; preds = %while.end72
  %45 = load ptr, ptr %zPtr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 0
  store ptr %45, ptr %zString, align 8
  %46 = load ptr, ptr %zTag.addr, align 8
  %47 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %46 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv76 = trunc i64 %sub.ptr.sub to i32
  %nByte77 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 1
  store i32 %conv76, ptr %nByte77, align 8
  br label %while.cond78

while.cond78:                                     ; preds = %while.body98, %if.then75
  %nByte79 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 1
  %48 = load i32, ptr %nByte79, align 8
  %cmp80 = icmp ugt i32 %48, 0
  br i1 %cmp80, label %land.lhs.true, label %land.end97

land.lhs.true:                                    ; preds = %while.cond78
  %zString82 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 0
  %49 = load ptr, ptr %zString82, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %49, i64 0
  %50 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %50 to i32
  %cmp85 = icmp slt i32 %conv84, 192
  br i1 %cmp85, label %land.rhs87, label %land.end97

land.rhs87:                                       ; preds = %land.lhs.true
  %call88 = call ptr @__ctype_b_loc() #2
  %51 = load ptr, ptr %call88, align 8
  %zString89 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 0
  %52 = load ptr, ptr %zString89, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %52, i64 0
  %53 = load i8, ptr %arrayidx90, align 1
  %conv91 = sext i8 %53 to i32
  %idxprom92 = sext i32 %conv91 to i64
  %arrayidx93 = getelementptr inbounds i16, ptr %51, i64 %idxprom92
  %54 = load i16, ptr %arrayidx93, align 2
  %conv94 = zext i16 %54 to i32
  %and95 = and i32 %conv94, 8192
  %tobool96 = icmp ne i32 %and95, 0
  br label %land.end97

land.end97:                                       ; preds = %land.rhs87, %land.lhs.true, %while.cond78
  %55 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond78 ], [ %tobool96, %land.rhs87 ]
  br i1 %55, label %while.body98, label %while.end102

while.body98:                                     ; preds = %land.end97
  %nByte99 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 1
  %56 = load i32, ptr %nByte99, align 8
  %dec = add i32 %56, -1
  store i32 %dec, ptr %nByte99, align 8
  %zString100 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 0
  %57 = load ptr, ptr %zString100, align 8
  %incdec.ptr101 = getelementptr inbounds nuw i8, ptr %57, i32 1
  store ptr %incdec.ptr101, ptr %zString100, align 8
  br label %while.cond78, !llvm.loop !10

while.end102:                                     ; preds = %land.end97
  br label %while.cond103

while.cond103:                                    ; preds = %while.body129, %while.end102
  %nByte104 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 1
  %58 = load i32, ptr %nByte104, align 8
  %cmp105 = icmp ugt i32 %58, 0
  br i1 %cmp105, label %land.lhs.true107, label %land.end128

land.lhs.true107:                                 ; preds = %while.cond103
  %zString108 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 0
  %59 = load ptr, ptr %zString108, align 8
  %nByte109 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 1
  %60 = load i32, ptr %nByte109, align 8
  %sub = sub i32 %60, 1
  %idxprom110 = zext i32 %sub to i64
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %59, i64 %idxprom110
  %61 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %61 to i32
  %cmp113 = icmp slt i32 %conv112, 192
  br i1 %cmp113, label %land.rhs115, label %land.end128

land.rhs115:                                      ; preds = %land.lhs.true107
  %call116 = call ptr @__ctype_b_loc() #2
  %62 = load ptr, ptr %call116, align 8
  %zString117 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 0
  %63 = load ptr, ptr %zString117, align 8
  %nByte118 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 1
  %64 = load i32, ptr %nByte118, align 8
  %sub119 = sub i32 %64, 1
  %idxprom120 = zext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds nuw i8, ptr %63, i64 %idxprom120
  %65 = load i8, ptr %arrayidx121, align 1
  %conv122 = sext i8 %65 to i32
  %idxprom123 = sext i32 %conv122 to i64
  %arrayidx124 = getelementptr inbounds i16, ptr %62, i64 %idxprom123
  %66 = load i16, ptr %arrayidx124, align 2
  %conv125 = zext i16 %66 to i32
  %and126 = and i32 %conv125, 8192
  %tobool127 = icmp ne i32 %and126, 0
  br label %land.end128

land.end128:                                      ; preds = %land.rhs115, %land.lhs.true107, %while.cond103
  %67 = phi i1 [ false, %land.lhs.true107 ], [ false, %while.cond103 ], [ %tobool127, %land.rhs115 ]
  br i1 %67, label %while.body129, label %while.end132

while.body129:                                    ; preds = %land.end128
  %nByte130 = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 1
  %68 = load i32, ptr %nByte130, align 8
  %dec131 = add i32 %68, -1
  store i32 %dec131, ptr %nByte130, align 8
  br label %while.cond103, !llvm.loop !11

while.end132:                                     ; preds = %land.end128
  %69 = load ptr, ptr %pSet.addr, align 8
  %call133 = call i32 @SySetPut(ptr noundef %69, ptr noundef %sEntry)
  br label %if.end134

if.end134:                                        ; preds = %while.end132, %while.end72
  %70 = load ptr, ptr %zTag.addr, align 8
  %incdec.ptr135 = getelementptr inbounds nuw i8, ptr %70, i32 1
  store ptr %incdec.ptr135, ptr %zTag.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  ret i32 0
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
