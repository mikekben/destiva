; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @SyStrnicmp(ptr noundef %zLeft, ptr noundef %zRight, i32 noundef %SLen) #2 {
entry:
  %retval = alloca i32, align 4
  %zLeft.addr = alloca ptr, align 8
  %zRight.addr = alloca ptr, align 8
  %SLen.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %zLeft, ptr %zLeft.addr, align 8
  store ptr %zRight, ptr %zRight.addr, align 8
  store i32 %SLen, ptr %SLen.addr, align 4
  %0 = load ptr, ptr %zLeft.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %zRight.addr, align 8
  store ptr %1, ptr %q, align 8
  %2 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %q, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %6 = load ptr, ptr %q, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %8 = load ptr, ptr %p, align 8
  %cmp11 = icmp eq ptr %8, null
  br i1 %cmp11, label %cond.true, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.then
  %9 = load ptr, ptr %p, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false13, %if.then
  %11 = load ptr, ptr %q, align 8
  %cmp18 = icmp eq ptr %11, null
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %12 = load ptr, ptr %q, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %14 = phi i1 [ true, %cond.true ], [ %cmp22, %lor.rhs ]
  %15 = zext i1 %14 to i64
  %cond = select i1 %14, i32 0, i32 -1
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.end
  %cond24 = phi i32 [ %cond, %lor.end ], [ 1, %cond.false ]
  store i32 %cond24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false6
  br label %for.cond

for.cond:                                         ; preds = %if.end214, %if.end
  %16 = load i32, ptr %SLen.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %for.cond
  %17 = load ptr, ptr %p, align 8
  %18 = load i8, ptr %17, align 1
  %tobool27 = icmp ne i8 %18, 0
  br i1 %tobool27, label %lor.lhs.false28, label %if.then65

lor.lhs.false28:                                  ; preds = %if.end26
  %19 = load ptr, ptr %q, align 8
  %20 = load i8, ptr %19, align 1
  %tobool29 = icmp ne i8 %20, 0
  br i1 %tobool29, label %lor.lhs.false30, label %if.then65

lor.lhs.false30:                                  ; preds = %lor.lhs.false28
  %21 = load ptr, ptr %p, align 8
  %22 = load i8, ptr %21, align 1
  %conv31 = zext i8 %22 to i32
  %cmp32 = icmp slt i32 %conv31, 192
  br i1 %cmp32, label %land.lhs.true, label %cond.false41

land.lhs.true:                                    ; preds = %lor.lhs.false30
  %call = call ptr @__ctype_b_loc() #3
  %23 = load ptr, ptr %call, align 8
  %24 = load ptr, ptr %p, align 8
  %25 = load i8, ptr %24, align 1
  %conv34 = zext i8 %25 to i32
  %idxprom = sext i32 %conv34 to i64
  %arrayidx35 = getelementptr inbounds i16, ptr %23, i64 %idxprom
  %26 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %26 to i32
  %and = and i32 %conv36, 256
  %tobool37 = icmp ne i32 %and, 0
  br i1 %tobool37, label %cond.true38, label %cond.false41

cond.true38:                                      ; preds = %land.lhs.true
  %27 = load ptr, ptr %p, align 8
  %28 = load i8, ptr %27, align 1
  %conv39 = zext i8 %28 to i32
  %call40 = call i32 @tolower(i32 noundef %conv39) #4
  br label %cond.end43

cond.false41:                                     ; preds = %land.lhs.true, %lor.lhs.false30
  %29 = load ptr, ptr %p, align 8
  %30 = load i8, ptr %29, align 1
  %conv42 = zext i8 %30 to i32
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true38
  %cond44 = phi i32 [ %call40, %cond.true38 ], [ %conv42, %cond.false41 ]
  %31 = load ptr, ptr %q, align 8
  %32 = load i8, ptr %31, align 1
  %conv45 = zext i8 %32 to i32
  %cmp46 = icmp slt i32 %conv45, 192
  br i1 %cmp46, label %land.lhs.true48, label %cond.false59

land.lhs.true48:                                  ; preds = %cond.end43
  %call49 = call ptr @__ctype_b_loc() #3
  %33 = load ptr, ptr %call49, align 8
  %34 = load ptr, ptr %q, align 8
  %35 = load i8, ptr %34, align 1
  %conv50 = zext i8 %35 to i32
  %idxprom51 = sext i32 %conv50 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %33, i64 %idxprom51
  %36 = load i16, ptr %arrayidx52, align 2
  %conv53 = zext i16 %36 to i32
  %and54 = and i32 %conv53, 256
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %cond.true56, label %cond.false59

cond.true56:                                      ; preds = %land.lhs.true48
  %37 = load ptr, ptr %q, align 8
  %38 = load i8, ptr %37, align 1
  %conv57 = zext i8 %38 to i32
  %call58 = call i32 @tolower(i32 noundef %conv57) #4
  br label %cond.end61

cond.false59:                                     ; preds = %land.lhs.true48, %cond.end43
  %39 = load ptr, ptr %q, align 8
  %40 = load i8, ptr %39, align 1
  %conv60 = zext i8 %40 to i32
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false59, %cond.true56
  %cond62 = phi i32 [ %call58, %cond.true56 ], [ %conv60, %cond.false59 ]
  %cmp63 = icmp ne i32 %cond44, %cond62
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %cond.end61, %lor.lhs.false28, %if.end26
  br label %for.end

if.end66:                                         ; preds = %cond.end61
  %41 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %42 = load ptr, ptr %q, align 8
  %incdec.ptr67 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %incdec.ptr67, ptr %q, align 8
  %43 = load i32, ptr %SLen.addr, align 4
  %dec = add i32 %43, -1
  store i32 %dec, ptr %SLen.addr, align 4
  %44 = load i32, ptr %SLen.addr, align 4
  %tobool68 = icmp ne i32 %44, 0
  br i1 %tobool68, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end66
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end66
  %45 = load ptr, ptr %p, align 8
  %46 = load i8, ptr %45, align 1
  %tobool71 = icmp ne i8 %46, 0
  br i1 %tobool71, label %lor.lhs.false72, label %if.then113

lor.lhs.false72:                                  ; preds = %if.end70
  %47 = load ptr, ptr %q, align 8
  %48 = load i8, ptr %47, align 1
  %tobool73 = icmp ne i8 %48, 0
  br i1 %tobool73, label %lor.lhs.false74, label %if.then113

lor.lhs.false74:                                  ; preds = %lor.lhs.false72
  %49 = load ptr, ptr %p, align 8
  %50 = load i8, ptr %49, align 1
  %conv75 = zext i8 %50 to i32
  %cmp76 = icmp slt i32 %conv75, 192
  br i1 %cmp76, label %land.lhs.true78, label %cond.false89

land.lhs.true78:                                  ; preds = %lor.lhs.false74
  %call79 = call ptr @__ctype_b_loc() #3
  %51 = load ptr, ptr %call79, align 8
  %52 = load ptr, ptr %p, align 8
  %53 = load i8, ptr %52, align 1
  %conv80 = zext i8 %53 to i32
  %idxprom81 = sext i32 %conv80 to i64
  %arrayidx82 = getelementptr inbounds i16, ptr %51, i64 %idxprom81
  %54 = load i16, ptr %arrayidx82, align 2
  %conv83 = zext i16 %54 to i32
  %and84 = and i32 %conv83, 256
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %cond.true86, label %cond.false89

cond.true86:                                      ; preds = %land.lhs.true78
  %55 = load ptr, ptr %p, align 8
  %56 = load i8, ptr %55, align 1
  %conv87 = zext i8 %56 to i32
  %call88 = call i32 @tolower(i32 noundef %conv87) #4
  br label %cond.end91

cond.false89:                                     ; preds = %land.lhs.true78, %lor.lhs.false74
  %57 = load ptr, ptr %p, align 8
  %58 = load i8, ptr %57, align 1
  %conv90 = zext i8 %58 to i32
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false89, %cond.true86
  %cond92 = phi i32 [ %call88, %cond.true86 ], [ %conv90, %cond.false89 ]
  %59 = load ptr, ptr %q, align 8
  %60 = load i8, ptr %59, align 1
  %conv93 = zext i8 %60 to i32
  %cmp94 = icmp slt i32 %conv93, 192
  br i1 %cmp94, label %land.lhs.true96, label %cond.false107

land.lhs.true96:                                  ; preds = %cond.end91
  %call97 = call ptr @__ctype_b_loc() #3
  %61 = load ptr, ptr %call97, align 8
  %62 = load ptr, ptr %q, align 8
  %63 = load i8, ptr %62, align 1
  %conv98 = zext i8 %63 to i32
  %idxprom99 = sext i32 %conv98 to i64
  %arrayidx100 = getelementptr inbounds i16, ptr %61, i64 %idxprom99
  %64 = load i16, ptr %arrayidx100, align 2
  %conv101 = zext i16 %64 to i32
  %and102 = and i32 %conv101, 256
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %cond.true104, label %cond.false107

cond.true104:                                     ; preds = %land.lhs.true96
  %65 = load ptr, ptr %q, align 8
  %66 = load i8, ptr %65, align 1
  %conv105 = zext i8 %66 to i32
  %call106 = call i32 @tolower(i32 noundef %conv105) #4
  br label %cond.end109

cond.false107:                                    ; preds = %land.lhs.true96, %cond.end91
  %67 = load ptr, ptr %q, align 8
  %68 = load i8, ptr %67, align 1
  %conv108 = zext i8 %68 to i32
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false107, %cond.true104
  %cond110 = phi i32 [ %call106, %cond.true104 ], [ %conv108, %cond.false107 ]
  %cmp111 = icmp ne i32 %cond92, %cond110
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %cond.end109, %lor.lhs.false72, %if.end70
  br label %for.end

if.end114:                                        ; preds = %cond.end109
  %69 = load ptr, ptr %p, align 8
  %incdec.ptr115 = getelementptr inbounds nuw i8, ptr %69, i32 1
  store ptr %incdec.ptr115, ptr %p, align 8
  %70 = load ptr, ptr %q, align 8
  %incdec.ptr116 = getelementptr inbounds nuw i8, ptr %70, i32 1
  store ptr %incdec.ptr116, ptr %q, align 8
  %71 = load i32, ptr %SLen.addr, align 4
  %dec117 = add i32 %71, -1
  store i32 %dec117, ptr %SLen.addr, align 4
  %72 = load i32, ptr %SLen.addr, align 4
  %tobool118 = icmp ne i32 %72, 0
  br i1 %tobool118, label %if.end120, label %if.then119

if.then119:                                       ; preds = %if.end114
  store i32 0, ptr %retval, align 4
  br label %return

if.end120:                                        ; preds = %if.end114
  %73 = load ptr, ptr %p, align 8
  %74 = load i8, ptr %73, align 1
  %tobool121 = icmp ne i8 %74, 0
  br i1 %tobool121, label %lor.lhs.false122, label %if.then163

lor.lhs.false122:                                 ; preds = %if.end120
  %75 = load ptr, ptr %q, align 8
  %76 = load i8, ptr %75, align 1
  %tobool123 = icmp ne i8 %76, 0
  br i1 %tobool123, label %lor.lhs.false124, label %if.then163

lor.lhs.false124:                                 ; preds = %lor.lhs.false122
  %77 = load ptr, ptr %p, align 8
  %78 = load i8, ptr %77, align 1
  %conv125 = zext i8 %78 to i32
  %cmp126 = icmp slt i32 %conv125, 192
  br i1 %cmp126, label %land.lhs.true128, label %cond.false139

land.lhs.true128:                                 ; preds = %lor.lhs.false124
  %call129 = call ptr @__ctype_b_loc() #3
  %79 = load ptr, ptr %call129, align 8
  %80 = load ptr, ptr %p, align 8
  %81 = load i8, ptr %80, align 1
  %conv130 = zext i8 %81 to i32
  %idxprom131 = sext i32 %conv130 to i64
  %arrayidx132 = getelementptr inbounds i16, ptr %79, i64 %idxprom131
  %82 = load i16, ptr %arrayidx132, align 2
  %conv133 = zext i16 %82 to i32
  %and134 = and i32 %conv133, 256
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %cond.true136, label %cond.false139

cond.true136:                                     ; preds = %land.lhs.true128
  %83 = load ptr, ptr %p, align 8
  %84 = load i8, ptr %83, align 1
  %conv137 = zext i8 %84 to i32
  %call138 = call i32 @tolower(i32 noundef %conv137) #4
  br label %cond.end141

cond.false139:                                    ; preds = %land.lhs.true128, %lor.lhs.false124
  %85 = load ptr, ptr %p, align 8
  %86 = load i8, ptr %85, align 1
  %conv140 = zext i8 %86 to i32
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false139, %cond.true136
  %cond142 = phi i32 [ %call138, %cond.true136 ], [ %conv140, %cond.false139 ]
  %87 = load ptr, ptr %q, align 8
  %88 = load i8, ptr %87, align 1
  %conv143 = zext i8 %88 to i32
  %cmp144 = icmp slt i32 %conv143, 192
  br i1 %cmp144, label %land.lhs.true146, label %cond.false157

land.lhs.true146:                                 ; preds = %cond.end141
  %call147 = call ptr @__ctype_b_loc() #3
  %89 = load ptr, ptr %call147, align 8
  %90 = load ptr, ptr %q, align 8
  %91 = load i8, ptr %90, align 1
  %conv148 = zext i8 %91 to i32
  %idxprom149 = sext i32 %conv148 to i64
  %arrayidx150 = getelementptr inbounds i16, ptr %89, i64 %idxprom149
  %92 = load i16, ptr %arrayidx150, align 2
  %conv151 = zext i16 %92 to i32
  %and152 = and i32 %conv151, 256
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %cond.true154, label %cond.false157

cond.true154:                                     ; preds = %land.lhs.true146
  %93 = load ptr, ptr %q, align 8
  %94 = load i8, ptr %93, align 1
  %conv155 = zext i8 %94 to i32
  %call156 = call i32 @tolower(i32 noundef %conv155) #4
  br label %cond.end159

cond.false157:                                    ; preds = %land.lhs.true146, %cond.end141
  %95 = load ptr, ptr %q, align 8
  %96 = load i8, ptr %95, align 1
  %conv158 = zext i8 %96 to i32
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false157, %cond.true154
  %cond160 = phi i32 [ %call156, %cond.true154 ], [ %conv158, %cond.false157 ]
  %cmp161 = icmp ne i32 %cond142, %cond160
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %cond.end159, %lor.lhs.false122, %if.end120
  br label %for.end

if.end164:                                        ; preds = %cond.end159
  %97 = load ptr, ptr %p, align 8
  %incdec.ptr165 = getelementptr inbounds nuw i8, ptr %97, i32 1
  store ptr %incdec.ptr165, ptr %p, align 8
  %98 = load ptr, ptr %q, align 8
  %incdec.ptr166 = getelementptr inbounds nuw i8, ptr %98, i32 1
  store ptr %incdec.ptr166, ptr %q, align 8
  %99 = load i32, ptr %SLen.addr, align 4
  %dec167 = add i32 %99, -1
  store i32 %dec167, ptr %SLen.addr, align 4
  %100 = load i32, ptr %SLen.addr, align 4
  %tobool168 = icmp ne i32 %100, 0
  br i1 %tobool168, label %if.end170, label %if.then169

if.then169:                                       ; preds = %if.end164
  store i32 0, ptr %retval, align 4
  br label %return

if.end170:                                        ; preds = %if.end164
  %101 = load ptr, ptr %p, align 8
  %102 = load i8, ptr %101, align 1
  %tobool171 = icmp ne i8 %102, 0
  br i1 %tobool171, label %lor.lhs.false172, label %if.then213

lor.lhs.false172:                                 ; preds = %if.end170
  %103 = load ptr, ptr %q, align 8
  %104 = load i8, ptr %103, align 1
  %tobool173 = icmp ne i8 %104, 0
  br i1 %tobool173, label %lor.lhs.false174, label %if.then213

lor.lhs.false174:                                 ; preds = %lor.lhs.false172
  %105 = load ptr, ptr %p, align 8
  %106 = load i8, ptr %105, align 1
  %conv175 = zext i8 %106 to i32
  %cmp176 = icmp slt i32 %conv175, 192
  br i1 %cmp176, label %land.lhs.true178, label %cond.false189

land.lhs.true178:                                 ; preds = %lor.lhs.false174
  %call179 = call ptr @__ctype_b_loc() #3
  %107 = load ptr, ptr %call179, align 8
  %108 = load ptr, ptr %p, align 8
  %109 = load i8, ptr %108, align 1
  %conv180 = zext i8 %109 to i32
  %idxprom181 = sext i32 %conv180 to i64
  %arrayidx182 = getelementptr inbounds i16, ptr %107, i64 %idxprom181
  %110 = load i16, ptr %arrayidx182, align 2
  %conv183 = zext i16 %110 to i32
  %and184 = and i32 %conv183, 256
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %cond.true186, label %cond.false189

cond.true186:                                     ; preds = %land.lhs.true178
  %111 = load ptr, ptr %p, align 8
  %112 = load i8, ptr %111, align 1
  %conv187 = zext i8 %112 to i32
  %call188 = call i32 @tolower(i32 noundef %conv187) #4
  br label %cond.end191

cond.false189:                                    ; preds = %land.lhs.true178, %lor.lhs.false174
  %113 = load ptr, ptr %p, align 8
  %114 = load i8, ptr %113, align 1
  %conv190 = zext i8 %114 to i32
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false189, %cond.true186
  %cond192 = phi i32 [ %call188, %cond.true186 ], [ %conv190, %cond.false189 ]
  %115 = load ptr, ptr %q, align 8
  %116 = load i8, ptr %115, align 1
  %conv193 = zext i8 %116 to i32
  %cmp194 = icmp slt i32 %conv193, 192
  br i1 %cmp194, label %land.lhs.true196, label %cond.false207

land.lhs.true196:                                 ; preds = %cond.end191
  %call197 = call ptr @__ctype_b_loc() #3
  %117 = load ptr, ptr %call197, align 8
  %118 = load ptr, ptr %q, align 8
  %119 = load i8, ptr %118, align 1
  %conv198 = zext i8 %119 to i32
  %idxprom199 = sext i32 %conv198 to i64
  %arrayidx200 = getelementptr inbounds i16, ptr %117, i64 %idxprom199
  %120 = load i16, ptr %arrayidx200, align 2
  %conv201 = zext i16 %120 to i32
  %and202 = and i32 %conv201, 256
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %cond.true204, label %cond.false207

cond.true204:                                     ; preds = %land.lhs.true196
  %121 = load ptr, ptr %q, align 8
  %122 = load i8, ptr %121, align 1
  %conv205 = zext i8 %122 to i32
  %call206 = call i32 @tolower(i32 noundef %conv205) #4
  br label %cond.end209

cond.false207:                                    ; preds = %land.lhs.true196, %cond.end191
  %123 = load ptr, ptr %q, align 8
  %124 = load i8, ptr %123, align 1
  %conv208 = zext i8 %124 to i32
  br label %cond.end209

cond.end209:                                      ; preds = %cond.false207, %cond.true204
  %cond210 = phi i32 [ %call206, %cond.true204 ], [ %conv208, %cond.false207 ]
  %cmp211 = icmp ne i32 %cond192, %cond210
  br i1 %cmp211, label %if.then213, label %if.end214

if.then213:                                       ; preds = %cond.end209, %lor.lhs.false172, %if.end170
  br label %for.end

if.end214:                                        ; preds = %cond.end209
  %125 = load ptr, ptr %p, align 8
  %incdec.ptr215 = getelementptr inbounds nuw i8, ptr %125, i32 1
  store ptr %incdec.ptr215, ptr %p, align 8
  %126 = load ptr, ptr %q, align 8
  %incdec.ptr216 = getelementptr inbounds nuw i8, ptr %126, i32 1
  store ptr %incdec.ptr216, ptr %q, align 8
  %127 = load i32, ptr %SLen.addr, align 4
  %dec217 = add i32 %127, -1
  store i32 %dec217, ptr %SLen.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then213, %if.then163, %if.then113, %if.then65
  %128 = load ptr, ptr %p, align 8
  %arrayidx218 = getelementptr inbounds i8, ptr %128, i64 0
  %129 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %129 to i32
  %cmp220 = icmp slt i32 %conv219, 192
  br i1 %cmp220, label %land.lhs.true222, label %cond.false235

land.lhs.true222:                                 ; preds = %for.end
  %call223 = call ptr @__ctype_b_loc() #3
  %130 = load ptr, ptr %call223, align 8
  %131 = load ptr, ptr %p, align 8
  %arrayidx224 = getelementptr inbounds i8, ptr %131, i64 0
  %132 = load i8, ptr %arrayidx224, align 1
  %conv225 = zext i8 %132 to i32
  %idxprom226 = sext i32 %conv225 to i64
  %arrayidx227 = getelementptr inbounds i16, ptr %130, i64 %idxprom226
  %133 = load i16, ptr %arrayidx227, align 2
  %conv228 = zext i16 %133 to i32
  %and229 = and i32 %conv228, 256
  %tobool230 = icmp ne i32 %and229, 0
  br i1 %tobool230, label %cond.true231, label %cond.false235

cond.true231:                                     ; preds = %land.lhs.true222
  %134 = load ptr, ptr %p, align 8
  %arrayidx232 = getelementptr inbounds i8, ptr %134, i64 0
  %135 = load i8, ptr %arrayidx232, align 1
  %conv233 = zext i8 %135 to i32
  %call234 = call i32 @tolower(i32 noundef %conv233) #4
  br label %cond.end238

cond.false235:                                    ; preds = %land.lhs.true222, %for.end
  %136 = load ptr, ptr %p, align 8
  %arrayidx236 = getelementptr inbounds i8, ptr %136, i64 0
  %137 = load i8, ptr %arrayidx236, align 1
  %conv237 = zext i8 %137 to i32
  br label %cond.end238

cond.end238:                                      ; preds = %cond.false235, %cond.true231
  %cond239 = phi i32 [ %call234, %cond.true231 ], [ %conv237, %cond.false235 ]
  %138 = load ptr, ptr %q, align 8
  %arrayidx240 = getelementptr inbounds i8, ptr %138, i64 0
  %139 = load i8, ptr %arrayidx240, align 1
  %conv241 = zext i8 %139 to i32
  %cmp242 = icmp slt i32 %conv241, 192
  br i1 %cmp242, label %land.lhs.true244, label %cond.false257

land.lhs.true244:                                 ; preds = %cond.end238
  %call245 = call ptr @__ctype_b_loc() #3
  %140 = load ptr, ptr %call245, align 8
  %141 = load ptr, ptr %q, align 8
  %arrayidx246 = getelementptr inbounds i8, ptr %141, i64 0
  %142 = load i8, ptr %arrayidx246, align 1
  %conv247 = zext i8 %142 to i32
  %idxprom248 = sext i32 %conv247 to i64
  %arrayidx249 = getelementptr inbounds i16, ptr %140, i64 %idxprom248
  %143 = load i16, ptr %arrayidx249, align 2
  %conv250 = zext i16 %143 to i32
  %and251 = and i32 %conv250, 256
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %cond.true253, label %cond.false257

cond.true253:                                     ; preds = %land.lhs.true244
  %144 = load ptr, ptr %q, align 8
  %arrayidx254 = getelementptr inbounds i8, ptr %144, i64 0
  %145 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %145 to i32
  %call256 = call i32 @tolower(i32 noundef %conv255) #4
  br label %cond.end260

cond.false257:                                    ; preds = %land.lhs.true244, %cond.end238
  %146 = load ptr, ptr %q, align 8
  %arrayidx258 = getelementptr inbounds i8, ptr %146, i64 0
  %147 = load i8, ptr %arrayidx258, align 1
  %conv259 = zext i8 %147 to i32
  br label %cond.end260

cond.end260:                                      ; preds = %cond.false257, %cond.true253
  %cond261 = phi i32 [ %call256, %cond.true253 ], [ %conv259, %cond.false257 ]
  %sub = sub nsw i32 %cond239, %cond261
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end260, %if.then169, %if.then119, %if.then69, %if.then25, %cond.end
  %148 = load i32, ptr %retval, align 4
  ret i32 %148
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
