; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_bool(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @ph7_context_release_value(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_strkey_elem(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @VmExtractOptArgValue(ptr noundef %pArray, ptr noundef %pWorker, ptr noundef %zArg, ptr noundef %zArgEnd, i32 noundef %need_val, ptr noundef %pCtx, ptr noundef %zName) #1 {
entry:
  %pArray.addr = alloca ptr, align 8
  %pWorker.addr = alloca ptr, align 8
  %zArg.addr = alloca ptr, align 8
  %zArgEnd.addr = alloca ptr, align 8
  %need_val.addr = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %d = alloca i32, align 4
  %pOptArg = alloca ptr, align 8
  store ptr %pArray, ptr %pArray.addr, align 8
  store ptr %pWorker, ptr %pWorker.addr, align 8
  store ptr %zArg, ptr %zArg.addr, align 8
  store ptr %zArgEnd, ptr %zArgEnd.addr, align 8
  store i32 %need_val, ptr %need_val.addr, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %pWorker.addr, align 8
  %call = call i32 @ph7_value_bool(ptr noundef %0, i32 noundef 0)
  %1 = load i32, ptr %need_val.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pArray.addr, align 8
  %3 = load ptr, ptr %zName.addr, align 8
  %4 = load ptr, ptr %pWorker.addr, align 8
  %call1 = call i32 @ph7_array_add_strkey_elem(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %if.end194

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %zArg.addr, align 8
  %6 = load ptr, ptr %zArg.addr, align 8
  %7 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp = icmp ult ptr %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %8 = load ptr, ptr %zArg.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 61
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %10, i32 1
  store ptr %incdec.ptr5, ptr %zArg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load ptr, ptr %zArg.addr, align 8
  %12 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp6 = icmp ult ptr %11, %12
  br i1 %cmp6, label %land.lhs.true8, label %land.end

land.lhs.true8:                                   ; preds = %while.cond
  %13 = load ptr, ptr %zArg.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %14 to i32
  %cmp11 = icmp slt i32 %conv10, 192
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true8
  %call13 = call ptr @__ctype_b_loc() #2
  %15 = load ptr, ptr %call13, align 8
  %16 = load ptr, ptr %zArg.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %17 to i32
  %idxprom = sext i32 %conv15 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %15, i64 %idxprom
  %18 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %18 to i32
  %and = and i32 %conv17, 8192
  %tobool18 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true8, %while.cond
  %19 = phi i1 [ false, %land.lhs.true8 ], [ false, %while.cond ], [ %tobool18, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr19, ptr %zArg.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %21 = load ptr, ptr %zArg.addr, align 8
  %22 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp20 = icmp uge ptr %21, %22
  br i1 %cmp20, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %23 = load ptr, ptr %zArg.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, 45
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %lor.lhs.false, %while.end
  %25 = load ptr, ptr %pArray.addr, align 8
  %26 = load ptr, ptr %zName.addr, align 8
  %27 = load ptr, ptr %pWorker.addr, align 8
  %call27 = call i32 @ph7_array_add_strkey_elem(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  br label %if.end194

if.end28:                                         ; preds = %lor.lhs.false
  %28 = load ptr, ptr %zArg.addr, align 8
  store ptr %28, ptr %zCur, align 8
  %29 = load ptr, ptr %zArg.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %30 to i32
  %cmp31 = icmp eq i32 %conv30, 39
  br i1 %cmp31, label %if.then38, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end28
  %31 = load ptr, ptr %zArg.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %32 to i32
  %cmp36 = icmp eq i32 %conv35, 34
  br i1 %cmp36, label %if.then38, label %if.else66

if.then38:                                        ; preds = %lor.lhs.false33, %if.end28
  %33 = load ptr, ptr %zArg.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %34 to i32
  store i32 %conv40, ptr %d, align 4
  %35 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr41 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr41, ptr %zArg.addr, align 8
  %36 = load ptr, ptr %zArg.addr, align 8
  store ptr %36, ptr %zCur, align 8
  br label %while.cond42

while.cond42:                                     ; preds = %if.end56, %if.then38
  %37 = load ptr, ptr %zArg.addr, align 8
  %38 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp43 = icmp ult ptr %37, %38
  br i1 %cmp43, label %while.body45, label %while.end58

while.body45:                                     ; preds = %while.cond42
  %39 = load ptr, ptr %zArg.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx46, align 1
  %conv47 = sext i8 %40 to i32
  %41 = load i32, ptr %d, align 4
  %cmp48 = icmp eq i32 %conv47, %41
  br i1 %cmp48, label %land.lhs.true50, label %if.end56

land.lhs.true50:                                  ; preds = %while.body45
  %42 = load ptr, ptr %zArg.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %42, i64 -1
  %43 = load i8, ptr %arrayidx51, align 1
  %conv52 = sext i8 %43 to i32
  %cmp53 = icmp ne i32 %conv52, 92
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true50
  br label %while.end58

if.end56:                                         ; preds = %land.lhs.true50, %while.body45
  %44 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr57 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr57, ptr %zArg.addr, align 8
  br label %while.cond42, !llvm.loop !8

while.end58:                                      ; preds = %if.then55, %while.cond42
  %45 = load ptr, ptr %pWorker.addr, align 8
  %46 = load ptr, ptr %zCur, align 8
  %47 = load ptr, ptr %zArg.addr, align 8
  %48 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %47 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv59 = trunc i64 %sub.ptr.sub to i32
  %call60 = call i32 @ph7_value_string(ptr noundef %45, ptr noundef %46, i32 noundef %conv59)
  %49 = load ptr, ptr %zArg.addr, align 8
  %50 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp61 = icmp ult ptr %49, %50
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %while.end58
  %51 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr64 = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr64, ptr %zArg.addr, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %while.end58
  br label %if.end88

if.else66:                                        ; preds = %lor.lhs.false33
  br label %while.cond67

while.cond67:                                     ; preds = %while.body80, %if.else66
  %52 = load ptr, ptr %zArg.addr, align 8
  %53 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp68 = icmp ult ptr %52, %53
  br i1 %cmp68, label %land.rhs70, label %land.end79

land.rhs70:                                       ; preds = %while.cond67
  %call71 = call ptr @__ctype_b_loc() #2
  %54 = load ptr, ptr %call71, align 8
  %55 = load ptr, ptr %zArg.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %55, i64 0
  %56 = load i8, ptr %arrayidx72, align 1
  %conv73 = sext i8 %56 to i32
  %idxprom74 = sext i32 %conv73 to i64
  %arrayidx75 = getelementptr inbounds i16, ptr %54, i64 %idxprom74
  %57 = load i16, ptr %arrayidx75, align 2
  %conv76 = zext i16 %57 to i32
  %and77 = and i32 %conv76, 8192
  %tobool78 = icmp ne i32 %and77, 0
  %lnot = xor i1 %tobool78, true
  br label %land.end79

land.end79:                                       ; preds = %land.rhs70, %while.cond67
  %58 = phi i1 [ false, %while.cond67 ], [ %lnot, %land.rhs70 ]
  br i1 %58, label %while.body80, label %while.end82

while.body80:                                     ; preds = %land.end79
  %59 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr81 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %incdec.ptr81, ptr %zArg.addr, align 8
  br label %while.cond67, !llvm.loop !9

while.end82:                                      ; preds = %land.end79
  %60 = load ptr, ptr %pWorker.addr, align 8
  %61 = load ptr, ptr %zCur, align 8
  %62 = load ptr, ptr %zArg.addr, align 8
  %63 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast83 = ptrtoint ptr %62 to i64
  %sub.ptr.rhs.cast84 = ptrtoint ptr %63 to i64
  %sub.ptr.sub85 = sub i64 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84
  %conv86 = trunc i64 %sub.ptr.sub85 to i32
  %call87 = call i32 @ph7_value_string(ptr noundef %60, ptr noundef %61, i32 noundef %conv86)
  br label %if.end88

if.end88:                                         ; preds = %while.end82, %if.end65
  br label %while.cond89

while.cond89:                                     ; preds = %while.body107, %if.end88
  %64 = load ptr, ptr %zArg.addr, align 8
  %65 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp90 = icmp ult ptr %64, %65
  br i1 %cmp90, label %land.lhs.true92, label %land.end106

land.lhs.true92:                                  ; preds = %while.cond89
  %66 = load ptr, ptr %zArg.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %66, i64 0
  %67 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %67 to i32
  %cmp95 = icmp slt i32 %conv94, 192
  br i1 %cmp95, label %land.rhs97, label %land.end106

land.rhs97:                                       ; preds = %land.lhs.true92
  %call98 = call ptr @__ctype_b_loc() #2
  %68 = load ptr, ptr %call98, align 8
  %69 = load ptr, ptr %zArg.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %69, i64 0
  %70 = load i8, ptr %arrayidx99, align 1
  %conv100 = sext i8 %70 to i32
  %idxprom101 = sext i32 %conv100 to i64
  %arrayidx102 = getelementptr inbounds i16, ptr %68, i64 %idxprom101
  %71 = load i16, ptr %arrayidx102, align 2
  %conv103 = zext i16 %71 to i32
  %and104 = and i32 %conv103, 8192
  %tobool105 = icmp ne i32 %and104, 0
  br label %land.end106

land.end106:                                      ; preds = %land.rhs97, %land.lhs.true92, %while.cond89
  %72 = phi i1 [ false, %land.lhs.true92 ], [ false, %while.cond89 ], [ %tobool105, %land.rhs97 ]
  br i1 %72, label %while.body107, label %while.end109

while.body107:                                    ; preds = %land.end106
  %73 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr108 = getelementptr inbounds nuw i8, ptr %73, i32 1
  store ptr %incdec.ptr108, ptr %zArg.addr, align 8
  br label %while.cond89, !llvm.loop !10

while.end109:                                     ; preds = %land.end106
  %74 = load ptr, ptr %zArg.addr, align 8
  %75 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp110 = icmp ult ptr %74, %75
  br i1 %cmp110, label %land.lhs.true112, label %if.else191

land.lhs.true112:                                 ; preds = %while.end109
  %76 = load ptr, ptr %zArg.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx113, align 1
  %conv114 = sext i8 %77 to i32
  %cmp115 = icmp ne i32 %conv114, 45
  br i1 %cmp115, label %if.then117, label %if.else191

if.then117:                                       ; preds = %land.lhs.true112
  %78 = load ptr, ptr %pCtx.addr, align 8
  %call118 = call ptr @ph7_context_new_array(ptr noundef %78)
  store ptr %call118, ptr %pOptArg, align 8
  %79 = load ptr, ptr %pOptArg, align 8
  %cmp119 = icmp eq ptr %79, null
  br i1 %cmp119, label %if.then121, label %if.else123

if.then121:                                       ; preds = %if.then117
  %80 = load ptr, ptr %pCtx.addr, align 8
  %call122 = call i32 @ph7_context_throw_error(ptr noundef %80, i32 noundef 1, ptr noundef @.str.536)
  br label %if.end190

if.else123:                                       ; preds = %if.then117
  %81 = load ptr, ptr %pOptArg, align 8
  %82 = load ptr, ptr %pWorker.addr, align 8
  %call124 = call i32 @ph7_array_add_elem(ptr noundef %81, ptr noundef null, ptr noundef %82)
  br label %for.cond

for.cond:                                         ; preds = %while.end188, %if.else123
  %83 = load ptr, ptr %zArg.addr, align 8
  %84 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp125 = icmp uge ptr %83, %84
  br i1 %cmp125, label %if.then132, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %for.cond
  %85 = load ptr, ptr %zArg.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %85, i64 0
  %86 = load i8, ptr %arrayidx128, align 1
  %conv129 = sext i8 %86 to i32
  %cmp130 = icmp eq i32 %conv129, 45
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %lor.lhs.false127, %for.cond
  br label %for.end

if.end133:                                        ; preds = %lor.lhs.false127
  %87 = load ptr, ptr %zArg.addr, align 8
  store ptr %87, ptr %zCur, align 8
  %88 = load ptr, ptr %zArg.addr, align 8
  %89 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp134 = icmp ult ptr %88, %89
  br i1 %cmp134, label %land.lhs.true136, label %if.end143

land.lhs.true136:                                 ; preds = %if.end133
  %90 = load ptr, ptr %zArg.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %90, i64 0
  %91 = load i8, ptr %arrayidx137, align 1
  %conv138 = sext i8 %91 to i32
  %cmp139 = icmp eq i32 %conv138, 92
  br i1 %cmp139, label %if.then141, label %if.end143

if.then141:                                       ; preds = %land.lhs.true136
  %92 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr142 = getelementptr inbounds nuw i8, ptr %92, i32 1
  store ptr %incdec.ptr142, ptr %zArg.addr, align 8
  %93 = load ptr, ptr %zArg.addr, align 8
  store ptr %93, ptr %zCur, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %land.lhs.true136, %if.end133
  br label %while.cond144

while.cond144:                                    ; preds = %while.body158, %if.end143
  %94 = load ptr, ptr %zArg.addr, align 8
  %95 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp145 = icmp ult ptr %94, %95
  br i1 %cmp145, label %land.rhs147, label %land.end157

land.rhs147:                                      ; preds = %while.cond144
  %call148 = call ptr @__ctype_b_loc() #2
  %96 = load ptr, ptr %call148, align 8
  %97 = load ptr, ptr %zArg.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %97, i64 0
  %98 = load i8, ptr %arrayidx149, align 1
  %conv150 = sext i8 %98 to i32
  %idxprom151 = sext i32 %conv150 to i64
  %arrayidx152 = getelementptr inbounds i16, ptr %96, i64 %idxprom151
  %99 = load i16, ptr %arrayidx152, align 2
  %conv153 = zext i16 %99 to i32
  %and154 = and i32 %conv153, 8192
  %tobool155 = icmp ne i32 %and154, 0
  %lnot156 = xor i1 %tobool155, true
  br label %land.end157

land.end157:                                      ; preds = %land.rhs147, %while.cond144
  %100 = phi i1 [ false, %while.cond144 ], [ %lnot156, %land.rhs147 ]
  br i1 %100, label %while.body158, label %while.end160

while.body158:                                    ; preds = %land.end157
  %101 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr159 = getelementptr inbounds nuw i8, ptr %101, i32 1
  store ptr %incdec.ptr159, ptr %zArg.addr, align 8
  br label %while.cond144, !llvm.loop !11

while.end160:                                     ; preds = %land.end157
  %102 = load ptr, ptr %pWorker.addr, align 8
  %call161 = call i32 @ph7_value_reset_string_cursor(ptr noundef %102)
  %103 = load ptr, ptr %pWorker.addr, align 8
  %104 = load ptr, ptr %zCur, align 8
  %105 = load ptr, ptr %zArg.addr, align 8
  %106 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast162 = ptrtoint ptr %105 to i64
  %sub.ptr.rhs.cast163 = ptrtoint ptr %106 to i64
  %sub.ptr.sub164 = sub i64 %sub.ptr.lhs.cast162, %sub.ptr.rhs.cast163
  %conv165 = trunc i64 %sub.ptr.sub164 to i32
  %call166 = call i32 @ph7_value_string(ptr noundef %103, ptr noundef %104, i32 noundef %conv165)
  %107 = load ptr, ptr %pOptArg, align 8
  %108 = load ptr, ptr %pWorker.addr, align 8
  %call167 = call i32 @ph7_array_add_elem(ptr noundef %107, ptr noundef null, ptr noundef %108)
  br label %while.cond168

while.cond168:                                    ; preds = %while.body186, %while.end160
  %109 = load ptr, ptr %zArg.addr, align 8
  %110 = load ptr, ptr %zArgEnd.addr, align 8
  %cmp169 = icmp ult ptr %109, %110
  br i1 %cmp169, label %land.lhs.true171, label %land.end185

land.lhs.true171:                                 ; preds = %while.cond168
  %111 = load ptr, ptr %zArg.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %111, i64 0
  %112 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %112 to i32
  %cmp174 = icmp slt i32 %conv173, 192
  br i1 %cmp174, label %land.rhs176, label %land.end185

land.rhs176:                                      ; preds = %land.lhs.true171
  %call177 = call ptr @__ctype_b_loc() #2
  %113 = load ptr, ptr %call177, align 8
  %114 = load ptr, ptr %zArg.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %114, i64 0
  %115 = load i8, ptr %arrayidx178, align 1
  %conv179 = sext i8 %115 to i32
  %idxprom180 = sext i32 %conv179 to i64
  %arrayidx181 = getelementptr inbounds i16, ptr %113, i64 %idxprom180
  %116 = load i16, ptr %arrayidx181, align 2
  %conv182 = zext i16 %116 to i32
  %and183 = and i32 %conv182, 8192
  %tobool184 = icmp ne i32 %and183, 0
  br label %land.end185

land.end185:                                      ; preds = %land.rhs176, %land.lhs.true171, %while.cond168
  %117 = phi i1 [ false, %land.lhs.true171 ], [ false, %while.cond168 ], [ %tobool184, %land.rhs176 ]
  br i1 %117, label %while.body186, label %while.end188

while.body186:                                    ; preds = %land.end185
  %118 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr187 = getelementptr inbounds nuw i8, ptr %118, i32 1
  store ptr %incdec.ptr187, ptr %zArg.addr, align 8
  br label %while.cond168, !llvm.loop !12

while.end188:                                     ; preds = %land.end185
  br label %for.cond

for.end:                                          ; preds = %if.then132
  %119 = load ptr, ptr %pArray.addr, align 8
  %120 = load ptr, ptr %zName.addr, align 8
  %121 = load ptr, ptr %pOptArg, align 8
  %call189 = call i32 @ph7_array_add_strkey_elem(ptr noundef %119, ptr noundef %120, ptr noundef %121)
  %122 = load ptr, ptr %pCtx.addr, align 8
  %123 = load ptr, ptr %pOptArg, align 8
  call void @ph7_context_release_value(ptr noundef %122, ptr noundef %123)
  br label %if.end190

if.end190:                                        ; preds = %for.end, %if.then121
  br label %if.end193

if.else191:                                       ; preds = %land.lhs.true112, %while.end109
  %124 = load ptr, ptr %pArray.addr, align 8
  %125 = load ptr, ptr %zName.addr, align 8
  %126 = load ptr, ptr %pWorker.addr, align 8
  %call192 = call i32 @ph7_array_add_strkey_elem(ptr noundef %124, ptr noundef %125, ptr noundef %126)
  br label %if.end193

if.end193:                                        ; preds = %if.else191, %if.end190
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.then26, %if.then
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
