; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

@VmHttpProcessFirstLine.azMethods = external hidden global [4 x ptr], align 16
@VmHttpProcessFirstLine.aMethods = external hidden constant [4 x i32], align 16
@.str.1380 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHttpSplitURI(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @VmHttpProcessFirstLine(ptr noundef %pRequest, ptr noundef %pMethod, ptr noundef %pUri, ptr noundef %pProto) #1 {
entry:
  %retval = alloca i32, align 4
  %pRequest.addr = alloca ptr, align 8
  %pMethod.addr = alloca ptr, align 8
  %pUri.addr = alloca ptr, align 8
  %pProto.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %sLine = alloca %struct.SyString, align 8
  %nLen = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pRequest, ptr %pRequest.addr, align 8
  store ptr %pMethod, ptr %pMethod.addr, align 8
  store ptr %pUri, ptr %pUri.addr, align 8
  store ptr %pProto, ptr %pProto.addr, align 8
  %0 = load ptr, ptr %pRequest.addr, align 8
  %call = call i32 @VmGetNextLine(ptr noundef %0, ptr noundef %sLine)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sLine, i32 0, i32 1
  %3 = load i32, ptr %nByte, align 8
  %cmp1 = icmp ult i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -3, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sLine, i32 0, i32 0
  %4 = load ptr, ptr %zString, align 8
  store ptr %4, ptr %zIn, align 8
  %5 = load ptr, ptr %zIn, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyString, ptr %sLine, i32 0, i32 1
  %6 = load i32, ptr %nByte4, align 8
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %7 = load ptr, ptr %zIn, align 8
  %8 = load ptr, ptr %zEnd, align 8
  %cmp5 = icmp ult ptr %7, %8
  br i1 %cmp5, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %9 = load ptr, ptr %zIn, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %10 to i32
  %cmp7 = icmp slt i32 %conv, 192
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call9 = call ptr @__ctype_b_loc() #2
  %11 = load ptr, ptr %call9, align 8
  %12 = load ptr, ptr %zIn, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %13 to i32
  %idxprom12 = sext i32 %conv11 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %11, i64 %idxprom12
  %14 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %14 to i32
  %and = and i32 %conv14, 8192
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
  %17 = load ptr, ptr %zIn, align 8
  store ptr %17, ptr %zPtr, align 8
  br label %while.cond15

while.cond15:                                     ; preds = %while.body28, %while.end
  %18 = load ptr, ptr %zIn, align 8
  %19 = load ptr, ptr %zEnd, align 8
  %cmp16 = icmp ult ptr %18, %19
  br i1 %cmp16, label %land.rhs18, label %land.end27

land.rhs18:                                       ; preds = %while.cond15
  %call19 = call ptr @__ctype_b_loc() #2
  %20 = load ptr, ptr %call19, align 8
  %21 = load ptr, ptr %zIn, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %22 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %20, i64 %idxprom22
  %23 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %23 to i32
  %and25 = and i32 %conv24, 8192
  %tobool26 = icmp ne i32 %and25, 0
  %lnot = xor i1 %tobool26, true
  br label %land.end27

land.end27:                                       ; preds = %land.rhs18, %while.cond15
  %24 = phi i1 [ false, %while.cond15 ], [ %lnot, %land.rhs18 ]
  br i1 %24, label %while.body28, label %while.end30

while.body28:                                     ; preds = %land.end27
  %25 = load ptr, ptr %zIn, align 8
  %incdec.ptr29 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr29, ptr %zIn, align 8
  br label %while.cond15, !llvm.loop !8

while.end30:                                      ; preds = %land.end27
  %26 = load ptr, ptr %pMethod.addr, align 8
  store i32 5, ptr %26, align 4
  %27 = load ptr, ptr %zIn, align 8
  %28 = load ptr, ptr %zPtr, align 8
  %cmp31 = icmp ugt ptr %27, %28
  br i1 %cmp31, label %if.then33, label %if.end47

if.then33:                                        ; preds = %while.end30
  %29 = load ptr, ptr %zIn, align 8
  %30 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %29 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv34 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv34, ptr %nLen, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then33
  %31 = load i32, ptr %i, align 4
  %conv35 = zext i32 %31 to i64
  %cmp36 = icmp ult i64 %conv35, 4
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, ptr %i, align 4
  %idxprom38 = zext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds nuw [4 x ptr], ptr @VmHttpProcessFirstLine.azMethods, i64 0, i64 %idxprom38
  %33 = load ptr, ptr %arrayidx39, align 8
  %34 = load ptr, ptr %zPtr, align 8
  %35 = load i32, ptr %nLen, align 4
  %call40 = call i32 @SyStrnicmp(ptr noundef %33, ptr noundef %34, i32 noundef %35)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end46

if.then43:                                        ; preds = %for.body
  %36 = load i32, ptr %i, align 4
  %idxprom44 = zext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds nuw [4 x i32], ptr @VmHttpProcessFirstLine.aMethods, i64 0, i64 %idxprom44
  %37 = load i32, ptr %arrayidx45, align 4
  %38 = load ptr, ptr %pMethod.addr, align 8
  store i32 %37, ptr %38, align 4
  br label %for.end

if.end46:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %39 = load i32, ptr %i, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then43, %for.cond
  br label %if.end47

if.end47:                                         ; preds = %for.end, %while.end30
  br label %while.cond48

while.cond48:                                     ; preds = %while.body66, %if.end47
  %40 = load ptr, ptr %zIn, align 8
  %41 = load ptr, ptr %zEnd, align 8
  %cmp49 = icmp ult ptr %40, %41
  br i1 %cmp49, label %land.lhs.true51, label %land.end65

land.lhs.true51:                                  ; preds = %while.cond48
  %42 = load ptr, ptr %zIn, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %43 to i32
  %cmp54 = icmp slt i32 %conv53, 192
  br i1 %cmp54, label %land.rhs56, label %land.end65

land.rhs56:                                       ; preds = %land.lhs.true51
  %call57 = call ptr @__ctype_b_loc() #2
  %44 = load ptr, ptr %call57, align 8
  %45 = load ptr, ptr %zIn, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx58, align 1
  %conv59 = sext i8 %46 to i32
  %idxprom60 = sext i32 %conv59 to i64
  %arrayidx61 = getelementptr inbounds i16, ptr %44, i64 %idxprom60
  %47 = load i16, ptr %arrayidx61, align 2
  %conv62 = zext i16 %47 to i32
  %and63 = and i32 %conv62, 8192
  %tobool64 = icmp ne i32 %and63, 0
  br label %land.end65

land.end65:                                       ; preds = %land.rhs56, %land.lhs.true51, %while.cond48
  %48 = phi i1 [ false, %land.lhs.true51 ], [ false, %while.cond48 ], [ %tobool64, %land.rhs56 ]
  br i1 %48, label %while.body66, label %while.end68

while.body66:                                     ; preds = %land.end65
  %49 = load ptr, ptr %zIn, align 8
  %incdec.ptr67 = getelementptr inbounds nuw i8, ptr %49, i32 1
  store ptr %incdec.ptr67, ptr %zIn, align 8
  br label %while.cond48, !llvm.loop !10

while.end68:                                      ; preds = %land.end65
  %50 = load ptr, ptr %zIn, align 8
  store ptr %50, ptr %zPtr, align 8
  br label %while.cond69

while.cond69:                                     ; preds = %while.body83, %while.end68
  %51 = load ptr, ptr %zIn, align 8
  %52 = load ptr, ptr %zEnd, align 8
  %cmp70 = icmp ult ptr %51, %52
  br i1 %cmp70, label %land.rhs72, label %land.end82

land.rhs72:                                       ; preds = %while.cond69
  %call73 = call ptr @__ctype_b_loc() #2
  %53 = load ptr, ptr %call73, align 8
  %54 = load ptr, ptr %zIn, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx74, align 1
  %conv75 = sext i8 %55 to i32
  %idxprom76 = sext i32 %conv75 to i64
  %arrayidx77 = getelementptr inbounds i16, ptr %53, i64 %idxprom76
  %56 = load i16, ptr %arrayidx77, align 2
  %conv78 = zext i16 %56 to i32
  %and79 = and i32 %conv78, 8192
  %tobool80 = icmp ne i32 %and79, 0
  %lnot81 = xor i1 %tobool80, true
  br label %land.end82

land.end82:                                       ; preds = %land.rhs72, %while.cond69
  %57 = phi i1 [ false, %while.cond69 ], [ %lnot81, %land.rhs72 ]
  br i1 %57, label %while.body83, label %while.end85

while.body83:                                     ; preds = %land.end82
  %58 = load ptr, ptr %zIn, align 8
  %incdec.ptr84 = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr84, ptr %zIn, align 8
  br label %while.cond69, !llvm.loop !11

while.end85:                                      ; preds = %land.end82
  %59 = load ptr, ptr %zIn, align 8
  %60 = load ptr, ptr %zPtr, align 8
  %cmp86 = icmp ugt ptr %59, %60
  br i1 %cmp86, label %if.then88, label %if.end94

if.then88:                                        ; preds = %while.end85
  %61 = load ptr, ptr %zIn, align 8
  %62 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast89 = ptrtoint ptr %61 to i64
  %sub.ptr.rhs.cast90 = ptrtoint ptr %62 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %conv92 = trunc i64 %sub.ptr.sub91 to i32
  store i32 %conv92, ptr %nLen, align 4
  %63 = load ptr, ptr %pUri.addr, align 8
  %64 = load ptr, ptr %zPtr, align 8
  %65 = load i32, ptr %nLen, align 4
  %call93 = call i32 @VmHttpSplitURI(ptr noundef %63, ptr noundef %64, i32 noundef %65)
  br label %if.end94

if.end94:                                         ; preds = %if.then88, %while.end85
  br label %while.cond95

while.cond95:                                     ; preds = %while.body113, %if.end94
  %66 = load ptr, ptr %zIn, align 8
  %67 = load ptr, ptr %zEnd, align 8
  %cmp96 = icmp ult ptr %66, %67
  br i1 %cmp96, label %land.lhs.true98, label %land.end112

land.lhs.true98:                                  ; preds = %while.cond95
  %68 = load ptr, ptr %zIn, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %68, i64 0
  %69 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %69 to i32
  %cmp101 = icmp slt i32 %conv100, 192
  br i1 %cmp101, label %land.rhs103, label %land.end112

land.rhs103:                                      ; preds = %land.lhs.true98
  %call104 = call ptr @__ctype_b_loc() #2
  %70 = load ptr, ptr %call104, align 8
  %71 = load ptr, ptr %zIn, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %71, i64 0
  %72 = load i8, ptr %arrayidx105, align 1
  %conv106 = sext i8 %72 to i32
  %idxprom107 = sext i32 %conv106 to i64
  %arrayidx108 = getelementptr inbounds i16, ptr %70, i64 %idxprom107
  %73 = load i16, ptr %arrayidx108, align 2
  %conv109 = zext i16 %73 to i32
  %and110 = and i32 %conv109, 8192
  %tobool111 = icmp ne i32 %and110, 0
  br label %land.end112

land.end112:                                      ; preds = %land.rhs103, %land.lhs.true98, %while.cond95
  %74 = phi i1 [ false, %land.lhs.true98 ], [ false, %while.cond95 ], [ %tobool111, %land.rhs103 ]
  br i1 %74, label %while.body113, label %while.end115

while.body113:                                    ; preds = %land.end112
  %75 = load ptr, ptr %zIn, align 8
  %incdec.ptr114 = getelementptr inbounds nuw i8, ptr %75, i32 1
  store ptr %incdec.ptr114, ptr %zIn, align 8
  br label %while.cond95, !llvm.loop !12

while.end115:                                     ; preds = %land.end112
  %76 = load ptr, ptr %zIn, align 8
  store ptr %76, ptr %zPtr, align 8
  br label %while.cond116

while.cond116:                                    ; preds = %while.body130, %while.end115
  %77 = load ptr, ptr %zIn, align 8
  %78 = load ptr, ptr %zEnd, align 8
  %cmp117 = icmp ult ptr %77, %78
  br i1 %cmp117, label %land.rhs119, label %land.end129

land.rhs119:                                      ; preds = %while.cond116
  %call120 = call ptr @__ctype_b_loc() #2
  %79 = load ptr, ptr %call120, align 8
  %80 = load ptr, ptr %zIn, align 8
  %arrayidx121 = getelementptr inbounds i8, ptr %80, i64 0
  %81 = load i8, ptr %arrayidx121, align 1
  %conv122 = sext i8 %81 to i32
  %idxprom123 = sext i32 %conv122 to i64
  %arrayidx124 = getelementptr inbounds i16, ptr %79, i64 %idxprom123
  %82 = load i16, ptr %arrayidx124, align 2
  %conv125 = zext i16 %82 to i32
  %and126 = and i32 %conv125, 8192
  %tobool127 = icmp ne i32 %and126, 0
  %lnot128 = xor i1 %tobool127, true
  br label %land.end129

land.end129:                                      ; preds = %land.rhs119, %while.cond116
  %83 = phi i1 [ false, %while.cond116 ], [ %lnot128, %land.rhs119 ]
  br i1 %83, label %while.body130, label %while.end132

while.body130:                                    ; preds = %land.end129
  %84 = load ptr, ptr %zIn, align 8
  %incdec.ptr131 = getelementptr inbounds nuw i8, ptr %84, i32 1
  store ptr %incdec.ptr131, ptr %zIn, align 8
  br label %while.cond116, !llvm.loop !13

while.end132:                                     ; preds = %land.end129
  %85 = load ptr, ptr %pProto.addr, align 8
  store i32 2, ptr %85, align 4
  store i32 1, ptr %rc, align 4
  %86 = load ptr, ptr %zIn, align 8
  %87 = load ptr, ptr %zPtr, align 8
  %cmp133 = icmp ugt ptr %86, %87
  br i1 %cmp133, label %if.then135, label %if.end141

if.then135:                                       ; preds = %while.end132
  %88 = load ptr, ptr %zPtr, align 8
  %89 = load ptr, ptr %zIn, align 8
  %90 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast136 = ptrtoint ptr %89 to i64
  %sub.ptr.rhs.cast137 = ptrtoint ptr %90 to i64
  %sub.ptr.sub138 = sub i64 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast137
  %conv139 = trunc i64 %sub.ptr.sub138 to i32
  %call140 = call i32 @SyStrnicmp(ptr noundef %88, ptr noundef @.str.1380, i32 noundef %conv139)
  store i32 %call140, ptr %rc, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then135, %while.end132
  %91 = load i32, ptr %rc, align 4
  %tobool142 = icmp ne i32 %91, 0
  br i1 %tobool142, label %if.end144, label %if.then143

if.then143:                                       ; preds = %if.end141
  %92 = load ptr, ptr %pProto.addr, align 8
  store i32 1, ptr %92, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.end141
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end144, %if.then2, %if.then
  %93 = load i32, ptr %retval, align 4
  ret i32 %93
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmGetNextLine(ptr noundef, ptr noundef) #1

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
