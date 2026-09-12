; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyStrIsNumeric(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %pReal, ptr noundef %pzTail) #1 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pReal.addr = alloca ptr, align 8
  %pzTail.addr = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pReal, ptr %pReal.addr, align 8
  store ptr %pzTail, ptr %pzTail.addr, align 8
  %0 = load ptr, ptr %zSrc.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %zSrc.addr, align 8
  %3 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %4 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %5 to i32
  %cmp2 = icmp slt i32 %conv, 192
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #2
  %6 = load ptr, ptr %call, align 8
  %7 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %idxprom6 = sext i32 %conv5 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %6, i64 %idxprom6
  %9 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %9 to i32
  %and = and i32 %conv8, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %zSrc.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %zSrc.addr, align 8
  %13 = load ptr, ptr %zEnd, align 8
  %cmp9 = icmp ult ptr %12, %13
  br i1 %cmp9, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %while.end
  %14 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 43
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true11
  %16 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, 45
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true11
  %18 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr20, ptr %zSrc.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %while.end
  %19 = load ptr, ptr %zSrc.addr, align 8
  store ptr %19, ptr %zCur, align 8
  %20 = load ptr, ptr %pReal.addr, align 8
  %tobool21 = icmp ne ptr %20, null
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  %21 = load ptr, ptr %pReal.addr, align 8
  store i8 0, ptr %21, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end98, %if.end23
  %22 = load ptr, ptr %zSrc.addr, align 8
  %23 = load ptr, ptr %zEnd, align 8
  %cmp24 = icmp uge ptr %22, %23
  br i1 %cmp24, label %if.then40, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %for.cond
  %24 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %25 to i32
  %cmp29 = icmp sge i32 %conv28, 192
  br i1 %cmp29, label %if.then40, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false26
  %call32 = call ptr @__ctype_b_loc() #2
  %26 = load ptr, ptr %call32, align 8
  %27 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %28 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %26, i64 %idxprom35
  %29 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %29 to i32
  %and38 = and i32 %conv37, 2048
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false31, %lor.lhs.false26, %for.cond
  br label %for.end

if.end41:                                         ; preds = %lor.lhs.false31
  %30 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr42 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr42, ptr %zSrc.addr, align 8
  %31 = load ptr, ptr %zSrc.addr, align 8
  %32 = load ptr, ptr %zEnd, align 8
  %cmp43 = icmp uge ptr %31, %32
  br i1 %cmp43, label %if.then59, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end41
  %33 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %34 to i32
  %cmp48 = icmp sge i32 %conv47, 192
  br i1 %cmp48, label %if.then59, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false45
  %call51 = call ptr @__ctype_b_loc() #2
  %35 = load ptr, ptr %call51, align 8
  %36 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %37 to i32
  %idxprom54 = sext i32 %conv53 to i64
  %arrayidx55 = getelementptr inbounds i16, ptr %35, i64 %idxprom54
  %38 = load i16, ptr %arrayidx55, align 2
  %conv56 = zext i16 %38 to i32
  %and57 = and i32 %conv56, 2048
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %lor.lhs.false50, %lor.lhs.false45, %if.end41
  br label %for.end

if.end60:                                         ; preds = %lor.lhs.false50
  %39 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr61, ptr %zSrc.addr, align 8
  %40 = load ptr, ptr %zSrc.addr, align 8
  %41 = load ptr, ptr %zEnd, align 8
  %cmp62 = icmp uge ptr %40, %41
  br i1 %cmp62, label %if.then78, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end60
  %42 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %43 to i32
  %cmp67 = icmp sge i32 %conv66, 192
  br i1 %cmp67, label %if.then78, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false64
  %call70 = call ptr @__ctype_b_loc() #2
  %44 = load ptr, ptr %call70, align 8
  %45 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx71, align 1
  %conv72 = sext i8 %46 to i32
  %idxprom73 = sext i32 %conv72 to i64
  %arrayidx74 = getelementptr inbounds i16, ptr %44, i64 %idxprom73
  %47 = load i16, ptr %arrayidx74, align 2
  %conv75 = zext i16 %47 to i32
  %and76 = and i32 %conv75, 2048
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %lor.lhs.false69, %lor.lhs.false64, %if.end60
  br label %for.end

if.end79:                                         ; preds = %lor.lhs.false69
  %48 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr80 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %incdec.ptr80, ptr %zSrc.addr, align 8
  %49 = load ptr, ptr %zSrc.addr, align 8
  %50 = load ptr, ptr %zEnd, align 8
  %cmp81 = icmp uge ptr %49, %50
  br i1 %cmp81, label %if.then97, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %if.end79
  %51 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %51, i64 0
  %52 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %52 to i32
  %cmp86 = icmp sge i32 %conv85, 192
  br i1 %cmp86, label %if.then97, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false83
  %call89 = call ptr @__ctype_b_loc() #2
  %53 = load ptr, ptr %call89, align 8
  %54 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx90, align 1
  %conv91 = sext i8 %55 to i32
  %idxprom92 = sext i32 %conv91 to i64
  %arrayidx93 = getelementptr inbounds i16, ptr %53, i64 %idxprom92
  %56 = load i16, ptr %arrayidx93, align 2
  %conv94 = zext i16 %56 to i32
  %and95 = and i32 %conv94, 2048
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.end98, label %if.then97

if.then97:                                        ; preds = %lor.lhs.false88, %lor.lhs.false83, %if.end79
  br label %for.end

if.end98:                                         ; preds = %lor.lhs.false88
  %57 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr99 = getelementptr inbounds nuw i8, ptr %57, i32 1
  store ptr %incdec.ptr99, ptr %zSrc.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then97, %if.then78, %if.then59, %if.then40
  %58 = load ptr, ptr %zSrc.addr, align 8
  %59 = load ptr, ptr %zEnd, align 8
  %cmp100 = icmp ult ptr %58, %59
  br i1 %cmp100, label %land.lhs.true102, label %if.end241

land.lhs.true102:                                 ; preds = %for.end
  %60 = load ptr, ptr %zSrc.addr, align 8
  %61 = load ptr, ptr %zCur, align 8
  %cmp103 = icmp ugt ptr %60, %61
  br i1 %cmp103, label %if.then105, label %if.end241

if.then105:                                       ; preds = %land.lhs.true102
  %62 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx106, align 1
  %conv107 = sext i8 %63 to i32
  store i32 %conv107, ptr %c, align 4
  %64 = load i32, ptr %c, align 4
  %cmp108 = icmp eq i32 %64, 46
  br i1 %cmp108, label %if.then110, label %if.else

if.then110:                                       ; preds = %if.then105
  %65 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr111 = getelementptr inbounds nuw i8, ptr %65, i32 1
  store ptr %incdec.ptr111, ptr %zSrc.addr, align 8
  %66 = load ptr, ptr %pReal.addr, align 8
  %tobool112 = icmp ne ptr %66, null
  br i1 %tobool112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then110
  %67 = load ptr, ptr %pReal.addr, align 8
  store i8 1, ptr %67, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.then110
  %68 = load ptr, ptr %pzTail.addr, align 8
  %tobool115 = icmp ne ptr %68, null
  br i1 %tobool115, label %if.then116, label %if.end189

if.then116:                                       ; preds = %if.end114
  br label %while.cond117

while.cond117:                                    ; preds = %while.body135, %if.then116
  %69 = load ptr, ptr %zSrc.addr, align 8
  %70 = load ptr, ptr %zEnd, align 8
  %cmp118 = icmp ult ptr %69, %70
  br i1 %cmp118, label %land.lhs.true120, label %land.end134

land.lhs.true120:                                 ; preds = %while.cond117
  %71 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, ptr %71, i64 0
  %72 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %72 to i32
  %cmp123 = icmp slt i32 %conv122, 192
  br i1 %cmp123, label %land.rhs125, label %land.end134

land.rhs125:                                      ; preds = %land.lhs.true120
  %call126 = call ptr @__ctype_b_loc() #2
  %73 = load ptr, ptr %call126, align 8
  %74 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %74, i64 0
  %75 = load i8, ptr %arrayidx127, align 1
  %conv128 = sext i8 %75 to i32
  %idxprom129 = sext i32 %conv128 to i64
  %arrayidx130 = getelementptr inbounds i16, ptr %73, i64 %idxprom129
  %76 = load i16, ptr %arrayidx130, align 2
  %conv131 = zext i16 %76 to i32
  %and132 = and i32 %conv131, 2048
  %tobool133 = icmp ne i32 %and132, 0
  br label %land.end134

land.end134:                                      ; preds = %land.rhs125, %land.lhs.true120, %while.cond117
  %77 = phi i1 [ false, %land.lhs.true120 ], [ false, %while.cond117 ], [ %tobool133, %land.rhs125 ]
  br i1 %77, label %while.body135, label %while.end137

while.body135:                                    ; preds = %land.end134
  %78 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr136 = getelementptr inbounds nuw i8, ptr %78, i32 1
  store ptr %incdec.ptr136, ptr %zSrc.addr, align 8
  br label %while.cond117, !llvm.loop !8

while.end137:                                     ; preds = %land.end134
  %79 = load ptr, ptr %zSrc.addr, align 8
  %80 = load ptr, ptr %zEnd, align 8
  %cmp138 = icmp ult ptr %79, %80
  br i1 %cmp138, label %land.lhs.true140, label %if.end188

land.lhs.true140:                                 ; preds = %while.end137
  %81 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %81, i64 0
  %82 = load i8, ptr %arrayidx141, align 1
  %conv142 = sext i8 %82 to i32
  %cmp143 = icmp eq i32 %conv142, 101
  br i1 %cmp143, label %if.then150, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %land.lhs.true140
  %83 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %83, i64 0
  %84 = load i8, ptr %arrayidx146, align 1
  %conv147 = sext i8 %84 to i32
  %cmp148 = icmp eq i32 %conv147, 69
  br i1 %cmp148, label %if.then150, label %if.end188

if.then150:                                       ; preds = %lor.lhs.false145, %land.lhs.true140
  %85 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr151 = getelementptr inbounds nuw i8, ptr %85, i32 1
  store ptr %incdec.ptr151, ptr %zSrc.addr, align 8
  %86 = load ptr, ptr %zSrc.addr, align 8
  %87 = load ptr, ptr %zEnd, align 8
  %cmp152 = icmp ult ptr %86, %87
  br i1 %cmp152, label %land.lhs.true154, label %if.end166

land.lhs.true154:                                 ; preds = %if.then150
  %88 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %88, i64 0
  %89 = load i8, ptr %arrayidx155, align 1
  %conv156 = sext i8 %89 to i32
  %cmp157 = icmp eq i32 %conv156, 43
  br i1 %cmp157, label %if.then164, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %land.lhs.true154
  %90 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %90, i64 0
  %91 = load i8, ptr %arrayidx160, align 1
  %conv161 = sext i8 %91 to i32
  %cmp162 = icmp eq i32 %conv161, 45
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %lor.lhs.false159, %land.lhs.true154
  %92 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr165 = getelementptr inbounds nuw i8, ptr %92, i32 1
  store ptr %incdec.ptr165, ptr %zSrc.addr, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %lor.lhs.false159, %if.then150
  br label %while.cond167

while.cond167:                                    ; preds = %while.body185, %if.end166
  %93 = load ptr, ptr %zSrc.addr, align 8
  %94 = load ptr, ptr %zEnd, align 8
  %cmp168 = icmp ult ptr %93, %94
  br i1 %cmp168, label %land.lhs.true170, label %land.end184

land.lhs.true170:                                 ; preds = %while.cond167
  %95 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %95, i64 0
  %96 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %96 to i32
  %cmp173 = icmp slt i32 %conv172, 192
  br i1 %cmp173, label %land.rhs175, label %land.end184

land.rhs175:                                      ; preds = %land.lhs.true170
  %call176 = call ptr @__ctype_b_loc() #2
  %97 = load ptr, ptr %call176, align 8
  %98 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %98, i64 0
  %99 = load i8, ptr %arrayidx177, align 1
  %conv178 = sext i8 %99 to i32
  %idxprom179 = sext i32 %conv178 to i64
  %arrayidx180 = getelementptr inbounds i16, ptr %97, i64 %idxprom179
  %100 = load i16, ptr %arrayidx180, align 2
  %conv181 = zext i16 %100 to i32
  %and182 = and i32 %conv181, 2048
  %tobool183 = icmp ne i32 %and182, 0
  br label %land.end184

land.end184:                                      ; preds = %land.rhs175, %land.lhs.true170, %while.cond167
  %101 = phi i1 [ false, %land.lhs.true170 ], [ false, %while.cond167 ], [ %tobool183, %land.rhs175 ]
  br i1 %101, label %while.body185, label %while.end187

while.body185:                                    ; preds = %land.end184
  %102 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr186 = getelementptr inbounds nuw i8, ptr %102, i32 1
  store ptr %incdec.ptr186, ptr %zSrc.addr, align 8
  br label %while.cond167, !llvm.loop !9

while.end187:                                     ; preds = %land.end184
  br label %if.end188

if.end188:                                        ; preds = %while.end187, %lor.lhs.false145, %while.end137
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.end114
  br label %if.end240

if.else:                                          ; preds = %if.then105
  %103 = load i32, ptr %c, align 4
  %cmp190 = icmp eq i32 %103, 101
  br i1 %cmp190, label %if.then195, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %if.else
  %104 = load i32, ptr %c, align 4
  %cmp193 = icmp eq i32 %104, 69
  br i1 %cmp193, label %if.then195, label %if.end239

if.then195:                                       ; preds = %lor.lhs.false192, %if.else
  %105 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr196 = getelementptr inbounds nuw i8, ptr %105, i32 1
  store ptr %incdec.ptr196, ptr %zSrc.addr, align 8
  %106 = load ptr, ptr %pReal.addr, align 8
  %tobool197 = icmp ne ptr %106, null
  br i1 %tobool197, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.then195
  %107 = load ptr, ptr %pReal.addr, align 8
  store i8 1, ptr %107, align 1
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.then195
  %108 = load ptr, ptr %pzTail.addr, align 8
  %tobool200 = icmp ne ptr %108, null
  br i1 %tobool200, label %if.then201, label %if.end238

if.then201:                                       ; preds = %if.end199
  %109 = load ptr, ptr %zSrc.addr, align 8
  %110 = load ptr, ptr %zEnd, align 8
  %cmp202 = icmp ult ptr %109, %110
  br i1 %cmp202, label %land.lhs.true204, label %if.end216

land.lhs.true204:                                 ; preds = %if.then201
  %111 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %111, i64 0
  %112 = load i8, ptr %arrayidx205, align 1
  %conv206 = sext i8 %112 to i32
  %cmp207 = icmp eq i32 %conv206, 43
  br i1 %cmp207, label %if.then214, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %land.lhs.true204
  %113 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %113, i64 0
  %114 = load i8, ptr %arrayidx210, align 1
  %conv211 = sext i8 %114 to i32
  %cmp212 = icmp eq i32 %conv211, 45
  br i1 %cmp212, label %if.then214, label %if.end216

if.then214:                                       ; preds = %lor.lhs.false209, %land.lhs.true204
  %115 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr215 = getelementptr inbounds nuw i8, ptr %115, i32 1
  store ptr %incdec.ptr215, ptr %zSrc.addr, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.then214, %lor.lhs.false209, %if.then201
  br label %while.cond217

while.cond217:                                    ; preds = %while.body235, %if.end216
  %116 = load ptr, ptr %zSrc.addr, align 8
  %117 = load ptr, ptr %zEnd, align 8
  %cmp218 = icmp ult ptr %116, %117
  br i1 %cmp218, label %land.lhs.true220, label %land.end234

land.lhs.true220:                                 ; preds = %while.cond217
  %118 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx221 = getelementptr inbounds i8, ptr %118, i64 0
  %119 = load i8, ptr %arrayidx221, align 1
  %conv222 = zext i8 %119 to i32
  %cmp223 = icmp slt i32 %conv222, 192
  br i1 %cmp223, label %land.rhs225, label %land.end234

land.rhs225:                                      ; preds = %land.lhs.true220
  %call226 = call ptr @__ctype_b_loc() #2
  %120 = load ptr, ptr %call226, align 8
  %121 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, ptr %121, i64 0
  %122 = load i8, ptr %arrayidx227, align 1
  %conv228 = sext i8 %122 to i32
  %idxprom229 = sext i32 %conv228 to i64
  %arrayidx230 = getelementptr inbounds i16, ptr %120, i64 %idxprom229
  %123 = load i16, ptr %arrayidx230, align 2
  %conv231 = zext i16 %123 to i32
  %and232 = and i32 %conv231, 2048
  %tobool233 = icmp ne i32 %and232, 0
  br label %land.end234

land.end234:                                      ; preds = %land.rhs225, %land.lhs.true220, %while.cond217
  %124 = phi i1 [ false, %land.lhs.true220 ], [ false, %while.cond217 ], [ %tobool233, %land.rhs225 ]
  br i1 %124, label %while.body235, label %while.end237

while.body235:                                    ; preds = %land.end234
  %125 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr236 = getelementptr inbounds nuw i8, ptr %125, i32 1
  store ptr %incdec.ptr236, ptr %zSrc.addr, align 8
  br label %while.cond217, !llvm.loop !10

while.end237:                                     ; preds = %land.end234
  br label %if.end238

if.end238:                                        ; preds = %while.end237, %if.end199
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %lor.lhs.false192
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.end189
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %land.lhs.true102, %for.end
  %126 = load ptr, ptr %pzTail.addr, align 8
  %tobool242 = icmp ne ptr %126, null
  br i1 %tobool242, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.end241
  %127 = load ptr, ptr %zSrc.addr, align 8
  %128 = load ptr, ptr %pzTail.addr, align 8
  store ptr %127, ptr %128, align 8
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %if.end241
  %129 = load ptr, ptr %zSrc.addr, align 8
  %130 = load ptr, ptr %zCur, align 8
  %cmp245 = icmp ugt ptr %129, %130
  %131 = zext i1 %cmp245 to i64
  %cond = select i1 %cmp245, i32 0, i32 -9
  ret i32 %cond
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
