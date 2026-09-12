; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_info = type { %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString }
%struct.SyString = type { ptr, i32 }

@.str.155 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ExtractPathInfo(ptr noundef %zPath, i32 noundef %nByte, ptr noundef %pOut) #0 {
entry:
  %retval = alloca i32, align 4
  %zPath.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  store i32 47, ptr %d, align 4
  store i32 47, ptr %c, align 4
  %2 = load ptr, ptr %pOut.addr, align 8
  call void @SyZero(ptr noundef %2, i32 noundef 64)
  %3 = load i32, ptr %nByte.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp = icmp eq i64 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %zPath.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load i32, ptr %c, align 4
  %cmp4 = icmp eq i32 %conv3, %6
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load ptr, ptr %zPath.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %9 = load i32, ptr %d, align 4
  %cmp8 = icmp eq i32 %conv7, %9
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load ptr, ptr %pOut.addr, align 8
  %sDir = getelementptr inbounds nuw %struct.path_info, ptr %10, i32 0, i32 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sDir, i32 0, i32 0
  store ptr @.str.155, ptr %zString, align 8
  %11 = load ptr, ptr %pOut.addr, align 8
  %sDir10 = getelementptr inbounds nuw %struct.path_info, ptr %11, i32 0, i32 0
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %sDir10, i32 0, i32 1
  store i32 1, ptr %nByte11, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %12 = load ptr, ptr %zEnd, align 8
  %13 = load ptr, ptr %zPath.addr, align 8
  %cmp12 = icmp ugt ptr %12, %13
  br i1 %cmp12, label %land.rhs, label %land.end23

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %zEnd, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %15 to i32
  %16 = load i32, ptr %c, align 4
  %cmp16 = icmp ne i32 %conv15, %16
  br i1 %cmp16, label %land.rhs18, label %land.end

land.rhs18:                                       ; preds = %land.rhs
  %17 = load ptr, ptr %zEnd, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %19 = load i32, ptr %d, align 4
  %cmp21 = icmp ne i32 %conv20, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs18, %land.rhs
  %20 = phi i1 [ false, %land.rhs ], [ %cmp21, %land.rhs18 ]
  br label %land.end23

land.end23:                                       ; preds = %land.end, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %20, %land.end ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end23
  %22 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end23
  %23 = load ptr, ptr %zEnd, align 8
  %24 = load ptr, ptr %zPath.addr, align 8
  %cmp24 = icmp ugt ptr %23, %24
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %25 = load ptr, ptr %zEnd, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %25, i64 1
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %26 = load ptr, ptr %zPath.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx26, %cond.true ], [ %26, %cond.false ]
  store ptr %cond, ptr %zPtr, align 8
  %27 = load ptr, ptr %zPath.addr, align 8
  %28 = load i32, ptr %nByte.addr, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %27, i64 %idxprom27
  store ptr %arrayidx28, ptr %zEnd, align 8
  %29 = load ptr, ptr %pOut.addr, align 8
  %sDir29 = getelementptr inbounds nuw %struct.path_info, ptr %29, i32 0, i32 0
  store ptr %sDir29, ptr %pCur, align 8
  %30 = load ptr, ptr %zPath.addr, align 8
  %31 = load ptr, ptr %pCur, align 8
  %zString30 = getelementptr inbounds nuw %struct.SyString, ptr %31, i32 0, i32 0
  store ptr %30, ptr %zString30, align 8
  %32 = load ptr, ptr %zPtr, align 8
  %33 = load ptr, ptr %zPath.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv31 = trunc i64 %sub.ptr.sub to i32
  %34 = load ptr, ptr %pCur, align 8
  %nByte32 = getelementptr inbounds nuw %struct.SyString, ptr %34, i32 0, i32 1
  store i32 %conv31, ptr %nByte32, align 8
  %35 = load ptr, ptr %pCur, align 8
  %nByte33 = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %nByte33, align 8
  %cmp34 = icmp ugt i32 %36, 1
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %cond.end
  br label %while.cond37

while.cond37:                                     ; preds = %while.body51, %if.then36
  %37 = load ptr, ptr %pCur, align 8
  %nByte38 = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nByte38, align 8
  %cmp39 = icmp ugt i32 %38, 0
  br i1 %cmp39, label %land.rhs41, label %land.end50

land.rhs41:                                       ; preds = %while.cond37
  %39 = load ptr, ptr %pCur, align 8
  %zString42 = getelementptr inbounds nuw %struct.SyString, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %zString42, align 8
  %41 = load ptr, ptr %pCur, align 8
  %nByte43 = getelementptr inbounds nuw %struct.SyString, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %nByte43, align 8
  %sub44 = sub i32 %42, 1
  %idxprom45 = zext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %40, i64 %idxprom45
  %43 = load i8, ptr %arrayidx46, align 1
  %conv47 = sext i8 %43 to i32
  %cmp48 = icmp eq i32 %conv47, 47
  br label %land.end50

land.end50:                                       ; preds = %land.rhs41, %while.cond37
  %44 = phi i1 [ false, %while.cond37 ], [ %cmp48, %land.rhs41 ]
  br i1 %44, label %while.body51, label %while.end53

while.body51:                                     ; preds = %land.end50
  %45 = load ptr, ptr %pCur, align 8
  %nByte52 = getelementptr inbounds nuw %struct.SyString, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %nByte52, align 8
  %dec = add i32 %46, -1
  store i32 %dec, ptr %nByte52, align 8
  br label %while.cond37, !llvm.loop !8

while.end53:                                      ; preds = %land.end50
  br label %if.end69

if.else:                                          ; preds = %cond.end
  %47 = load ptr, ptr %zPath.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %47, i64 0
  %48 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %48 to i32
  %49 = load i32, ptr %c, align 4
  %cmp56 = icmp eq i32 %conv55, %49
  br i1 %cmp56, label %if.then63, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.else
  %50 = load ptr, ptr %zPath.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx59, align 1
  %conv60 = sext i8 %51 to i32
  %52 = load i32, ptr %d, align 4
  %cmp61 = icmp eq i32 %conv60, %52
  br i1 %cmp61, label %if.then63, label %if.end68

if.then63:                                        ; preds = %lor.lhs.false58, %if.else
  %53 = load ptr, ptr %pOut.addr, align 8
  %sDir64 = getelementptr inbounds nuw %struct.path_info, ptr %53, i32 0, i32 0
  %zString65 = getelementptr inbounds nuw %struct.SyString, ptr %sDir64, i32 0, i32 0
  store ptr @.str.155, ptr %zString65, align 8
  %54 = load ptr, ptr %pOut.addr, align 8
  %sDir66 = getelementptr inbounds nuw %struct.path_info, ptr %54, i32 0, i32 0
  %nByte67 = getelementptr inbounds nuw %struct.SyString, ptr %sDir66, i32 0, i32 1
  store i32 1, ptr %nByte67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %lor.lhs.false58
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %while.end53
  %55 = load ptr, ptr %pOut.addr, align 8
  %sBasename = getelementptr inbounds nuw %struct.path_info, ptr %55, i32 0, i32 1
  store ptr %sBasename, ptr %pCur, align 8
  %56 = load ptr, ptr %zPtr, align 8
  %57 = load ptr, ptr %pCur, align 8
  %zString70 = getelementptr inbounds nuw %struct.SyString, ptr %57, i32 0, i32 0
  store ptr %56, ptr %zString70, align 8
  %58 = load ptr, ptr %zEnd, align 8
  %59 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast71 = ptrtoint ptr %58 to i64
  %sub.ptr.rhs.cast72 = ptrtoint ptr %59 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %conv74 = trunc i64 %sub.ptr.sub73 to i32
  %60 = load ptr, ptr %pCur, align 8
  %nByte75 = getelementptr inbounds nuw %struct.SyString, ptr %60, i32 0, i32 1
  store i32 %conv74, ptr %nByte75, align 8
  br label %while.cond76

while.cond76:                                     ; preds = %while.body87, %if.end69
  %61 = load ptr, ptr %pCur, align 8
  %nByte77 = getelementptr inbounds nuw %struct.SyString, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %nByte77, align 8
  %cmp78 = icmp ugt i32 %62, 0
  br i1 %cmp78, label %land.rhs80, label %land.end86

land.rhs80:                                       ; preds = %while.cond76
  %63 = load ptr, ptr %pCur, align 8
  %zString81 = getelementptr inbounds nuw %struct.SyString, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %zString81, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %64, i64 0
  %65 = load i8, ptr %arrayidx82, align 1
  %conv83 = sext i8 %65 to i32
  %cmp84 = icmp eq i32 %conv83, 47
  br label %land.end86

land.end86:                                       ; preds = %land.rhs80, %while.cond76
  %66 = phi i1 [ false, %while.cond76 ], [ %cmp84, %land.rhs80 ]
  br i1 %66, label %while.body87, label %while.end92

while.body87:                                     ; preds = %land.end86
  %67 = load ptr, ptr %pCur, align 8
  %zString88 = getelementptr inbounds nuw %struct.SyString, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %zString88, align 8
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %68, i32 1
  store ptr %incdec.ptr89, ptr %zString88, align 8
  %69 = load ptr, ptr %pCur, align 8
  %nByte90 = getelementptr inbounds nuw %struct.SyString, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %nByte90, align 8
  %dec91 = add i32 %70, -1
  store i32 %dec91, ptr %nByte90, align 8
  br label %while.cond76, !llvm.loop !9

while.end92:                                      ; preds = %land.end86
  %71 = load ptr, ptr %pCur, align 8
  %zString93 = getelementptr inbounds nuw %struct.SyString, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %zString93, align 8
  %73 = load ptr, ptr %pOut.addr, align 8
  %sFilename = getelementptr inbounds nuw %struct.path_info, ptr %73, i32 0, i32 3
  %zString94 = getelementptr inbounds nuw %struct.SyString, ptr %sFilename, i32 0, i32 0
  store ptr %72, ptr %zString94, align 8
  %74 = load ptr, ptr %pCur, align 8
  %nByte95 = getelementptr inbounds nuw %struct.SyString, ptr %74, i32 0, i32 1
  %75 = load i32, ptr %nByte95, align 8
  %76 = load ptr, ptr %pOut.addr, align 8
  %sFilename96 = getelementptr inbounds nuw %struct.path_info, ptr %76, i32 0, i32 3
  %nByte97 = getelementptr inbounds nuw %struct.SyString, ptr %sFilename96, i32 0, i32 1
  store i32 %75, ptr %nByte97, align 8
  %77 = load ptr, ptr %pCur, align 8
  %nByte98 = getelementptr inbounds nuw %struct.SyString, ptr %77, i32 0, i32 1
  %78 = load i32, ptr %nByte98, align 8
  %cmp99 = icmp ugt i32 %78, 0
  br i1 %cmp99, label %if.then101, label %if.end143

if.then101:                                       ; preds = %while.end92
  %79 = load ptr, ptr %zEnd, align 8
  %incdec.ptr102 = getelementptr inbounds i8, ptr %79, i32 -1
  store ptr %incdec.ptr102, ptr %zEnd, align 8
  br label %while.cond103

while.cond103:                                    ; preds = %while.body113, %if.then101
  %80 = load ptr, ptr %zEnd, align 8
  %81 = load ptr, ptr %pCur, align 8
  %zString104 = getelementptr inbounds nuw %struct.SyString, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %zString104, align 8
  %cmp105 = icmp ugt ptr %80, %82
  br i1 %cmp105, label %land.rhs107, label %land.end112

land.rhs107:                                      ; preds = %while.cond103
  %83 = load ptr, ptr %zEnd, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %83, i64 0
  %84 = load i8, ptr %arrayidx108, align 1
  %conv109 = sext i8 %84 to i32
  %cmp110 = icmp ne i32 %conv109, 46
  br label %land.end112

land.end112:                                      ; preds = %land.rhs107, %while.cond103
  %85 = phi i1 [ false, %while.cond103 ], [ %cmp110, %land.rhs107 ]
  br i1 %85, label %while.body113, label %while.end115

while.body113:                                    ; preds = %land.end112
  %86 = load ptr, ptr %zEnd, align 8
  %incdec.ptr114 = getelementptr inbounds i8, ptr %86, i32 -1
  store ptr %incdec.ptr114, ptr %zEnd, align 8
  br label %while.cond103, !llvm.loop !10

while.end115:                                     ; preds = %land.end112
  %87 = load ptr, ptr %zEnd, align 8
  %88 = load ptr, ptr %pCur, align 8
  %zString116 = getelementptr inbounds nuw %struct.SyString, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %zString116, align 8
  %cmp117 = icmp ugt ptr %87, %89
  br i1 %cmp117, label %if.then119, label %if.end142

if.then119:                                       ; preds = %while.end115
  %90 = load ptr, ptr %zEnd, align 8
  %incdec.ptr120 = getelementptr inbounds nuw i8, ptr %90, i32 1
  store ptr %incdec.ptr120, ptr %zEnd, align 8
  %91 = load ptr, ptr %zEnd, align 8
  %92 = load ptr, ptr %pOut.addr, align 8
  %sExtension = getelementptr inbounds nuw %struct.path_info, ptr %92, i32 0, i32 2
  %zString121 = getelementptr inbounds nuw %struct.SyString, ptr %sExtension, i32 0, i32 0
  store ptr %91, ptr %zString121, align 8
  %93 = load ptr, ptr %zPath.addr, align 8
  %94 = load i32, ptr %nByte.addr, align 4
  %idxprom122 = sext i32 %94 to i64
  %arrayidx123 = getelementptr inbounds i8, ptr %93, i64 %idxprom122
  %95 = load ptr, ptr %zEnd, align 8
  %sub.ptr.lhs.cast124 = ptrtoint ptr %arrayidx123 to i64
  %sub.ptr.rhs.cast125 = ptrtoint ptr %95 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %conv127 = trunc i64 %sub.ptr.sub126 to i32
  %96 = load ptr, ptr %pOut.addr, align 8
  %sExtension128 = getelementptr inbounds nuw %struct.path_info, ptr %96, i32 0, i32 2
  %nByte129 = getelementptr inbounds nuw %struct.SyString, ptr %sExtension128, i32 0, i32 1
  store i32 %conv127, ptr %nByte129, align 8
  %97 = load ptr, ptr %pOut.addr, align 8
  %sFilename130 = getelementptr inbounds nuw %struct.path_info, ptr %97, i32 0, i32 3
  store ptr %sFilename130, ptr %pCur, align 8
  %98 = load ptr, ptr %pCur, align 8
  %nByte131 = getelementptr inbounds nuw %struct.SyString, ptr %98, i32 0, i32 1
  %99 = load i32, ptr %nByte131, align 8
  %100 = load ptr, ptr %pOut.addr, align 8
  %sExtension132 = getelementptr inbounds nuw %struct.path_info, ptr %100, i32 0, i32 2
  %nByte133 = getelementptr inbounds nuw %struct.SyString, ptr %sExtension132, i32 0, i32 1
  %101 = load i32, ptr %nByte133, align 8
  %cmp134 = icmp ugt i32 %99, %101
  br i1 %cmp134, label %if.then136, label %if.end141

if.then136:                                       ; preds = %if.then119
  %102 = load ptr, ptr %pOut.addr, align 8
  %sExtension137 = getelementptr inbounds nuw %struct.path_info, ptr %102, i32 0, i32 2
  %nByte138 = getelementptr inbounds nuw %struct.SyString, ptr %sExtension137, i32 0, i32 1
  %103 = load i32, ptr %nByte138, align 8
  %add = add i32 1, %103
  %104 = load ptr, ptr %pCur, align 8
  %nByte139 = getelementptr inbounds nuw %struct.SyString, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %nByte139, align 8
  %sub140 = sub i32 %105, %add
  store i32 %sub140, ptr %nByte139, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %if.then119
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %while.end115
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %while.end92
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end143, %if.then
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
