; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SyUriDecode.Utf8Trans = external hidden constant [64 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @SyUriDecode(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %xConsumer, ptr noundef %pUserData, i32 noundef %bUTF8) #0 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %xConsumer.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %bUTF8.addr = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zOutPtr = alloca ptr, align 8
  %zOut = alloca [10 x i8], align 1
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %xConsumer, ptr %xConsumer.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store i32 %bUTF8, ptr %bUTF8.addr, align 4
  %0 = load ptr, ptr %zSrc.addr, align 8
  store ptr %0, ptr %zIn, align 8
  store i32 0, ptr %rc, align 4
  %1 = load ptr, ptr %zSrc.addr, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %3 = load ptr, ptr %zIn, align 8
  store ptr %3, ptr %zCur, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end164, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %4 = load ptr, ptr %zCur, align 8
  %5 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %4, %5
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load ptr, ptr %zCur, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp ne i32 %conv, 37
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %zCur, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv5, 43
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %zCur, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %zCur, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %zCur, align 8
  %13 = load ptr, ptr %zIn, align 8
  %cmp8 = icmp ne ptr %12, %13
  br i1 %cmp8, label %if.then, label %if.end14

if.then:                                          ; preds = %while.end
  %14 = load ptr, ptr %xConsumer.addr, align 8
  %15 = load ptr, ptr %zIn, align 8
  %16 = load ptr, ptr %zCur, align 8
  %17 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv10 = trunc i64 %sub.ptr.sub to i32
  %18 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 %14(ptr noundef %15, i32 noundef %conv10, ptr noundef %18)
  store i32 %call, ptr %rc, align 4
  %19 = load i32, ptr %rc, align 4
  %cmp11 = icmp ne i32 %19, 0
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end, %while.end
  %20 = load ptr, ptr %zCur, align 8
  %21 = load ptr, ptr %zEnd, align 8
  %cmp15 = icmp uge ptr %20, %21
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  store i32 0, ptr %rc, align 4
  br label %for.end

if.end18:                                         ; preds = %if.end14
  %arraydecay = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 0
  store ptr %arraydecay, ptr %zOutPtr, align 8
  %22 = load ptr, ptr %zCur, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %23 to i32
  %cmp21 = icmp eq i32 %conv20, 43
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end18
  %24 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %incdec.ptr24, ptr %zOutPtr, align 8
  store i8 32, ptr %24, align 1
  %25 = load ptr, ptr %zCur, align 8
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr25, ptr %zCur, align 8
  br label %if.end153

if.else:                                          ; preds = %if.end18
  %26 = load ptr, ptr %zCur, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %26, i64 2
  %27 = load ptr, ptr %zEnd, align 8
  %cmp27 = icmp uge ptr %arrayidx26, %27
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else
  store i32 -15, ptr %rc, align 4
  br label %for.end

if.end30:                                         ; preds = %if.else
  %28 = load ptr, ptr %zCur, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %29 to i32
  %call33 = call i32 @SyAsciiToHex(i32 noundef %conv32)
  %shl = shl i32 %call33, 4
  %30 = load ptr, ptr %zCur, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %30, i64 2
  %31 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %31 to i32
  %call36 = call i32 @SyAsciiToHex(i32 noundef %conv35)
  %or = or i32 %shl, %call36
  store i32 %or, ptr %c, align 4
  %32 = load ptr, ptr %zCur, align 8
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 3
  store ptr %add.ptr, ptr %zCur, align 8
  %33 = load i32, ptr %c, align 4
  %cmp37 = icmp slt i32 %33, 192
  br i1 %cmp37, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.end30
  %34 = load i32, ptr %c, align 4
  %conv40 = trunc i32 %34 to i8
  %35 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr41 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr41, ptr %zOutPtr, align 8
  store i8 %conv40, ptr %35, align 1
  br label %if.end152

if.else42:                                        ; preds = %if.end30
  %36 = load i32, ptr %c, align 4
  %sub = sub nsw i32 %36, 192
  %idxprom43 = sext i32 %sub to i64
  %arrayidx44 = getelementptr inbounds [64 x i8], ptr @SyUriDecode.Utf8Trans, i64 0, i64 %idxprom43
  %37 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %37 to i32
  store i32 %conv45, ptr %c, align 4
  br label %while.cond46

while.cond46:                                     ; preds = %if.end63, %if.else42
  %38 = load ptr, ptr %zCur, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %39 to i32
  %cmp49 = icmp eq i32 %conv48, 37
  br i1 %cmp49, label %while.body51, label %while.end67

while.body51:                                     ; preds = %while.cond46
  %40 = load ptr, ptr %zCur, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %40, i64 1
  %41 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %41 to i32
  %call54 = call i32 @SyAsciiToHex(i32 noundef %conv53)
  %shl55 = shl i32 %call54, 4
  %42 = load ptr, ptr %zCur, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %42, i64 2
  %43 = load i8, ptr %arrayidx56, align 1
  %conv57 = sext i8 %43 to i32
  %call58 = call i32 @SyAsciiToHex(i32 noundef %conv57)
  %or59 = or i32 %shl55, %call58
  store i32 %or59, ptr %d, align 4
  %44 = load i32, ptr %d, align 4
  %and = and i32 %44, 192
  %cmp60 = icmp ne i32 %and, 128
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %while.body51
  br label %while.end67

if.end63:                                         ; preds = %while.body51
  %45 = load i32, ptr %c, align 4
  %shl64 = shl i32 %45, 6
  %46 = load i32, ptr %d, align 4
  %and65 = and i32 63, %46
  %add = add nsw i32 %shl64, %and65
  store i32 %add, ptr %c, align 4
  %47 = load ptr, ptr %zCur, align 8
  %add.ptr66 = getelementptr inbounds i8, ptr %47, i64 3
  store ptr %add.ptr66, ptr %zCur, align 8
  br label %while.cond46, !llvm.loop !8

while.end67:                                      ; preds = %if.then62, %while.cond46
  %48 = load i32, ptr %bUTF8.addr, align 4
  %cmp68 = icmp eq i32 %48, 0
  br i1 %cmp68, label %if.then70, label %if.else73

if.then70:                                        ; preds = %while.end67
  %49 = load i32, ptr %c, align 4
  %conv71 = trunc i32 %49 to i8
  %50 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr72 = getelementptr inbounds nuw i8, ptr %50, i32 1
  store ptr %incdec.ptr72, ptr %zOutPtr, align 8
  store i8 %conv71, ptr %50, align 1
  br label %if.end151

if.else73:                                        ; preds = %while.end67
  %51 = load i32, ptr %c, align 4
  %cmp74 = icmp slt i32 %51, 128
  br i1 %cmp74, label %if.then76, label %if.else80

if.then76:                                        ; preds = %if.else73
  %52 = load i32, ptr %c, align 4
  %and77 = and i32 %52, 255
  %conv78 = trunc i32 %and77 to i8
  %53 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr79 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %incdec.ptr79, ptr %zOutPtr, align 8
  store i8 %conv78, ptr %53, align 1
  br label %if.end150

if.else80:                                        ; preds = %if.else73
  %54 = load i32, ptr %c, align 4
  %cmp81 = icmp slt i32 %54, 2048
  br i1 %cmp81, label %if.then83, label %if.else96

if.then83:                                        ; preds = %if.else80
  %55 = load i32, ptr %c, align 4
  %shr = ashr i32 %55, 6
  %and84 = and i32 %shr, 31
  %conv85 = trunc i32 %and84 to i8
  %conv86 = zext i8 %conv85 to i32
  %add87 = add nsw i32 192, %conv86
  %conv88 = trunc i32 %add87 to i8
  %56 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %56, i32 1
  store ptr %incdec.ptr89, ptr %zOutPtr, align 8
  store i8 %conv88, ptr %56, align 1
  %57 = load i32, ptr %c, align 4
  %and90 = and i32 %57, 63
  %conv91 = trunc i32 %and90 to i8
  %conv92 = zext i8 %conv91 to i32
  %add93 = add nsw i32 128, %conv92
  %conv94 = trunc i32 %add93 to i8
  %58 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr95 = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr95, ptr %zOutPtr, align 8
  store i8 %conv94, ptr %58, align 1
  br label %if.end149

if.else96:                                        ; preds = %if.else80
  %59 = load i32, ptr %c, align 4
  %cmp97 = icmp slt i32 %59, 65536
  br i1 %cmp97, label %if.then99, label %if.else120

if.then99:                                        ; preds = %if.else96
  %60 = load i32, ptr %c, align 4
  %shr100 = ashr i32 %60, 12
  %and101 = and i32 %shr100, 15
  %conv102 = trunc i32 %and101 to i8
  %conv103 = zext i8 %conv102 to i32
  %add104 = add nsw i32 224, %conv103
  %conv105 = trunc i32 %add104 to i8
  %61 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr106 = getelementptr inbounds nuw i8, ptr %61, i32 1
  store ptr %incdec.ptr106, ptr %zOutPtr, align 8
  store i8 %conv105, ptr %61, align 1
  %62 = load i32, ptr %c, align 4
  %shr107 = ashr i32 %62, 6
  %and108 = and i32 %shr107, 63
  %conv109 = trunc i32 %and108 to i8
  %conv110 = zext i8 %conv109 to i32
  %add111 = add nsw i32 128, %conv110
  %conv112 = trunc i32 %add111 to i8
  %63 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr113 = getelementptr inbounds nuw i8, ptr %63, i32 1
  store ptr %incdec.ptr113, ptr %zOutPtr, align 8
  store i8 %conv112, ptr %63, align 1
  %64 = load i32, ptr %c, align 4
  %and114 = and i32 %64, 63
  %conv115 = trunc i32 %and114 to i8
  %conv116 = zext i8 %conv115 to i32
  %add117 = add nsw i32 128, %conv116
  %conv118 = trunc i32 %add117 to i8
  %65 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr119 = getelementptr inbounds nuw i8, ptr %65, i32 1
  store ptr %incdec.ptr119, ptr %zOutPtr, align 8
  store i8 %conv118, ptr %65, align 1
  br label %if.end148

if.else120:                                       ; preds = %if.else96
  %66 = load i32, ptr %c, align 4
  %shr121 = ashr i32 %66, 18
  %and122 = and i32 %shr121, 7
  %conv123 = trunc i32 %and122 to i8
  %conv124 = zext i8 %conv123 to i32
  %add125 = add nsw i32 240, %conv124
  %conv126 = trunc i32 %add125 to i8
  %67 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr127 = getelementptr inbounds nuw i8, ptr %67, i32 1
  store ptr %incdec.ptr127, ptr %zOutPtr, align 8
  store i8 %conv126, ptr %67, align 1
  %68 = load i32, ptr %c, align 4
  %shr128 = ashr i32 %68, 12
  %and129 = and i32 %shr128, 63
  %conv130 = trunc i32 %and129 to i8
  %conv131 = zext i8 %conv130 to i32
  %add132 = add nsw i32 128, %conv131
  %conv133 = trunc i32 %add132 to i8
  %69 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr134 = getelementptr inbounds nuw i8, ptr %69, i32 1
  store ptr %incdec.ptr134, ptr %zOutPtr, align 8
  store i8 %conv133, ptr %69, align 1
  %70 = load i32, ptr %c, align 4
  %shr135 = ashr i32 %70, 6
  %and136 = and i32 %shr135, 63
  %conv137 = trunc i32 %and136 to i8
  %conv138 = zext i8 %conv137 to i32
  %add139 = add nsw i32 128, %conv138
  %conv140 = trunc i32 %add139 to i8
  %71 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr141 = getelementptr inbounds nuw i8, ptr %71, i32 1
  store ptr %incdec.ptr141, ptr %zOutPtr, align 8
  store i8 %conv140, ptr %71, align 1
  %72 = load i32, ptr %c, align 4
  %and142 = and i32 %72, 63
  %conv143 = trunc i32 %and142 to i8
  %conv144 = zext i8 %conv143 to i32
  %add145 = add nsw i32 128, %conv144
  %conv146 = trunc i32 %add145 to i8
  %73 = load ptr, ptr %zOutPtr, align 8
  %incdec.ptr147 = getelementptr inbounds nuw i8, ptr %73, i32 1
  store ptr %incdec.ptr147, ptr %zOutPtr, align 8
  store i8 %conv146, ptr %73, align 1
  br label %if.end148

if.end148:                                        ; preds = %if.else120, %if.then99
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.then83
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then76
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then70
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.then39
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then23
  %74 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay154 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 0
  %75 = load ptr, ptr %zOutPtr, align 8
  %arraydecay155 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 0
  %sub.ptr.lhs.cast156 = ptrtoint ptr %75 to i64
  %sub.ptr.rhs.cast157 = ptrtoint ptr %arraydecay155 to i64
  %sub.ptr.sub158 = sub i64 %sub.ptr.lhs.cast156, %sub.ptr.rhs.cast157
  %conv159 = trunc i64 %sub.ptr.sub158 to i32
  %76 = load ptr, ptr %pUserData.addr, align 8
  %call160 = call i32 %74(ptr noundef %arraydecay154, i32 noundef %conv159, ptr noundef %76)
  store i32 %call160, ptr %rc, align 4
  %77 = load i32, ptr %rc, align 4
  %cmp161 = icmp ne i32 %77, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end153
  br label %for.end

if.end164:                                        ; preds = %if.end153
  %78 = load ptr, ptr %zCur, align 8
  store ptr %78, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then163, %if.then29, %if.then17, %if.then13
  %79 = load i32, ptr %rc, align 4
  ret i32 %79
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyAsciiToHex(i32 noundef) #0

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
