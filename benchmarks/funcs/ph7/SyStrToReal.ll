; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SyStrToReal.aTab = external hidden constant [9 x double], align 16

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyStrToReal(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %pOutVal, ptr noundef %zRest) #1 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pOutVal.addr = alloca ptr, align 8
  %zRest.addr = alloca ptr, align 8
  %neg = alloca i8, align 1
  %Val = alloca double, align 8
  %zEnd = alloca ptr, align 8
  %Lim = alloca i32, align 4
  %exp = alloca i32, align 4
  %p = alloca ptr, align 8
  %dec116 = alloca double, align 8
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pOutVal, ptr %pOutVal.addr, align 8
  store ptr %zRest, ptr %zRest.addr, align 8
  store i8 0, ptr %neg, align 1
  store double 0.000000e+00, ptr %Val, align 8
  store ptr null, ptr %p, align 8
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
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call = call ptr @__ctype_b_loc() #3
  %4 = load ptr, ptr %call, align 8
  %5 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %6 to i32
  %idxprom2 = sext i32 %conv to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %4, i64 %idxprom2
  %7 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %7 to i32
  %and = and i32 %conv4, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %zSrc.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %10 = load ptr, ptr %zSrc.addr, align 8
  %11 = load ptr, ptr %zEnd, align 8
  %cmp5 = icmp ult ptr %10, %11
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %12 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv12, 43
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 45
  %18 = zext i1 %cmp17 to i64
  %cond = select i1 %cmp17, i32 1, i32 0
  %conv19 = trunc i32 %cond to i8
  store i8 %conv19, ptr %neg, align 1
  %19 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr20, ptr %zSrc.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %while.end
  store i32 15, ptr %Lim, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end96, %if.end
  %20 = load ptr, ptr %zSrc.addr, align 8
  %21 = load ptr, ptr %zEnd, align 8
  %cmp21 = icmp uge ptr %20, %21
  br i1 %cmp21, label %if.then34, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %for.cond
  %22 = load i32, ptr %Lim, align 4
  %tobool24 = icmp ne i32 %22, 0
  br i1 %tobool24, label %lor.lhs.false25, label %if.then34

lor.lhs.false25:                                  ; preds = %lor.lhs.false23
  %call26 = call ptr @__ctype_b_loc() #3
  %23 = load ptr, ptr %call26, align 8
  %24 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %25 to i32
  %idxprom29 = sext i32 %conv28 to i64
  %arrayidx30 = getelementptr inbounds i16, ptr %23, i64 %idxprom29
  %26 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %26 to i32
  %and32 = and i32 %conv31, 2048
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false25, %lor.lhs.false23, %for.cond
  br label %for.end

if.end35:                                         ; preds = %lor.lhs.false25
  %27 = load double, ptr %Val, align 8
  %28 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %29 to i32
  %sub = sub nsw i32 %conv37, 48
  %conv38 = sitofp i32 %sub to double
  %30 = call double @llvm.fmuladd.f64(double %27, double 1.000000e+01, double %conv38)
  store double %30, ptr %Val, align 8
  %31 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr39 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr39, ptr %zSrc.addr, align 8
  %32 = load i32, ptr %Lim, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %Lim, align 4
  %33 = load ptr, ptr %zSrc.addr, align 8
  %34 = load ptr, ptr %zEnd, align 8
  %cmp40 = icmp uge ptr %33, %34
  br i1 %cmp40, label %if.then53, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end35
  %35 = load i32, ptr %Lim, align 4
  %tobool43 = icmp ne i32 %35, 0
  br i1 %tobool43, label %lor.lhs.false44, label %if.then53

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %call45 = call ptr @__ctype_b_loc() #3
  %36 = load ptr, ptr %call45, align 8
  %37 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %37, i64 0
  %38 = load i8, ptr %arrayidx46, align 1
  %conv47 = sext i8 %38 to i32
  %idxprom48 = sext i32 %conv47 to i64
  %arrayidx49 = getelementptr inbounds i16, ptr %36, i64 %idxprom48
  %39 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %39 to i32
  %and51 = and i32 %conv50, 2048
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %lor.lhs.false44, %lor.lhs.false42, %if.end35
  br label %for.end

if.end54:                                         ; preds = %lor.lhs.false44
  %40 = load double, ptr %Val, align 8
  %41 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %42 to i32
  %sub57 = sub nsw i32 %conv56, 48
  %conv58 = sitofp i32 %sub57 to double
  %43 = call double @llvm.fmuladd.f64(double %40, double 1.000000e+01, double %conv58)
  store double %43, ptr %Val, align 8
  %44 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr59, ptr %zSrc.addr, align 8
  %45 = load i32, ptr %Lim, align 4
  %dec60 = add nsw i32 %45, -1
  store i32 %dec60, ptr %Lim, align 4
  %46 = load ptr, ptr %zSrc.addr, align 8
  %47 = load ptr, ptr %zEnd, align 8
  %cmp61 = icmp uge ptr %46, %47
  br i1 %cmp61, label %if.then74, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end54
  %48 = load i32, ptr %Lim, align 4
  %tobool64 = icmp ne i32 %48, 0
  br i1 %tobool64, label %lor.lhs.false65, label %if.then74

lor.lhs.false65:                                  ; preds = %lor.lhs.false63
  %call66 = call ptr @__ctype_b_loc() #3
  %49 = load ptr, ptr %call66, align 8
  %50 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx67, align 1
  %conv68 = sext i8 %51 to i32
  %idxprom69 = sext i32 %conv68 to i64
  %arrayidx70 = getelementptr inbounds i16, ptr %49, i64 %idxprom69
  %52 = load i16, ptr %arrayidx70, align 2
  %conv71 = zext i16 %52 to i32
  %and72 = and i32 %conv71, 2048
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.end75, label %if.then74

if.then74:                                        ; preds = %lor.lhs.false65, %lor.lhs.false63, %if.end54
  br label %for.end

if.end75:                                         ; preds = %lor.lhs.false65
  %53 = load double, ptr %Val, align 8
  %54 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx76, align 1
  %conv77 = sext i8 %55 to i32
  %sub78 = sub nsw i32 %conv77, 48
  %conv79 = sitofp i32 %sub78 to double
  %56 = call double @llvm.fmuladd.f64(double %53, double 1.000000e+01, double %conv79)
  store double %56, ptr %Val, align 8
  %57 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr80 = getelementptr inbounds nuw i8, ptr %57, i32 1
  store ptr %incdec.ptr80, ptr %zSrc.addr, align 8
  %58 = load i32, ptr %Lim, align 4
  %dec81 = add nsw i32 %58, -1
  store i32 %dec81, ptr %Lim, align 4
  %59 = load ptr, ptr %zSrc.addr, align 8
  %60 = load ptr, ptr %zEnd, align 8
  %cmp82 = icmp uge ptr %59, %60
  br i1 %cmp82, label %if.then95, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %if.end75
  %61 = load i32, ptr %Lim, align 4
  %tobool85 = icmp ne i32 %61, 0
  br i1 %tobool85, label %lor.lhs.false86, label %if.then95

lor.lhs.false86:                                  ; preds = %lor.lhs.false84
  %call87 = call ptr @__ctype_b_loc() #3
  %62 = load ptr, ptr %call87, align 8
  %63 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %63, i64 0
  %64 = load i8, ptr %arrayidx88, align 1
  %conv89 = sext i8 %64 to i32
  %idxprom90 = sext i32 %conv89 to i64
  %arrayidx91 = getelementptr inbounds i16, ptr %62, i64 %idxprom90
  %65 = load i16, ptr %arrayidx91, align 2
  %conv92 = zext i16 %65 to i32
  %and93 = and i32 %conv92, 2048
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.end96, label %if.then95

if.then95:                                        ; preds = %lor.lhs.false86, %lor.lhs.false84, %if.end75
  br label %for.end

if.end96:                                         ; preds = %lor.lhs.false86
  %66 = load double, ptr %Val, align 8
  %67 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %67, i64 0
  %68 = load i8, ptr %arrayidx97, align 1
  %conv98 = sext i8 %68 to i32
  %sub99 = sub nsw i32 %conv98, 48
  %conv100 = sitofp i32 %sub99 to double
  %69 = call double @llvm.fmuladd.f64(double %66, double 1.000000e+01, double %conv100)
  store double %69, ptr %Val, align 8
  %70 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr101 = getelementptr inbounds nuw i8, ptr %70, i32 1
  store ptr %incdec.ptr101, ptr %zSrc.addr, align 8
  %71 = load i32, ptr %Lim, align 4
  %dec102 = add nsw i32 %71, -1
  store i32 %dec102, ptr %Lim, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then95, %if.then74, %if.then53, %if.then34
  %72 = load ptr, ptr %zSrc.addr, align 8
  %73 = load ptr, ptr %zEnd, align 8
  %cmp103 = icmp ult ptr %72, %73
  br i1 %cmp103, label %land.lhs.true105, label %if.end210

land.lhs.true105:                                 ; preds = %for.end
  %74 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %74, i64 0
  %75 = load i8, ptr %arrayidx106, align 1
  %conv107 = sext i8 %75 to i32
  %cmp108 = icmp eq i32 %conv107, 46
  br i1 %cmp108, label %if.then115, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %land.lhs.true105
  %76 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx111, align 1
  %conv112 = sext i8 %77 to i32
  %cmp113 = icmp eq i32 %conv112, 44
  br i1 %cmp113, label %if.then115, label %if.end210

if.then115:                                       ; preds = %lor.lhs.false110, %land.lhs.true105
  store double 1.000000e+00, ptr %dec116, align 8
  %78 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr117 = getelementptr inbounds nuw i8, ptr %78, i32 1
  store ptr %incdec.ptr117, ptr %zSrc.addr, align 8
  br label %for.cond118

for.cond118:                                      ; preds = %if.end200, %if.then115
  %79 = load ptr, ptr %zSrc.addr, align 8
  %80 = load ptr, ptr %zEnd, align 8
  %cmp119 = icmp uge ptr %79, %80
  br i1 %cmp119, label %if.then132, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %for.cond118
  %81 = load i32, ptr %Lim, align 4
  %tobool122 = icmp ne i32 %81, 0
  br i1 %tobool122, label %lor.lhs.false123, label %if.then132

lor.lhs.false123:                                 ; preds = %lor.lhs.false121
  %call124 = call ptr @__ctype_b_loc() #3
  %82 = load ptr, ptr %call124, align 8
  %83 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %83, i64 0
  %84 = load i8, ptr %arrayidx125, align 1
  %conv126 = sext i8 %84 to i32
  %idxprom127 = sext i32 %conv126 to i64
  %arrayidx128 = getelementptr inbounds i16, ptr %82, i64 %idxprom127
  %85 = load i16, ptr %arrayidx128, align 2
  %conv129 = zext i16 %85 to i32
  %and130 = and i32 %conv129, 2048
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.end133, label %if.then132

if.then132:                                       ; preds = %lor.lhs.false123, %lor.lhs.false121, %for.cond118
  br label %for.end209

if.end133:                                        ; preds = %lor.lhs.false123
  %86 = load double, ptr %Val, align 8
  %87 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, ptr %87, i64 0
  %88 = load i8, ptr %arrayidx134, align 1
  %conv135 = sext i8 %88 to i32
  %sub136 = sub nsw i32 %conv135, 48
  %conv137 = sitofp i32 %sub136 to double
  %89 = call double @llvm.fmuladd.f64(double %86, double 1.000000e+01, double %conv137)
  store double %89, ptr %Val, align 8
  %90 = load double, ptr %dec116, align 8
  %mul = fmul double %90, 1.000000e+01
  store double %mul, ptr %dec116, align 8
  %91 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr138 = getelementptr inbounds nuw i8, ptr %91, i32 1
  store ptr %incdec.ptr138, ptr %zSrc.addr, align 8
  %92 = load i32, ptr %Lim, align 4
  %dec139 = add nsw i32 %92, -1
  store i32 %dec139, ptr %Lim, align 4
  %93 = load ptr, ptr %zSrc.addr, align 8
  %94 = load ptr, ptr %zEnd, align 8
  %cmp140 = icmp uge ptr %93, %94
  br i1 %cmp140, label %if.then153, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.end133
  %95 = load i32, ptr %Lim, align 4
  %tobool143 = icmp ne i32 %95, 0
  br i1 %tobool143, label %lor.lhs.false144, label %if.then153

lor.lhs.false144:                                 ; preds = %lor.lhs.false142
  %call145 = call ptr @__ctype_b_loc() #3
  %96 = load ptr, ptr %call145, align 8
  %97 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %97, i64 0
  %98 = load i8, ptr %arrayidx146, align 1
  %conv147 = sext i8 %98 to i32
  %idxprom148 = sext i32 %conv147 to i64
  %arrayidx149 = getelementptr inbounds i16, ptr %96, i64 %idxprom148
  %99 = load i16, ptr %arrayidx149, align 2
  %conv150 = zext i16 %99 to i32
  %and151 = and i32 %conv150, 2048
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.end154, label %if.then153

if.then153:                                       ; preds = %lor.lhs.false144, %lor.lhs.false142, %if.end133
  br label %for.end209

if.end154:                                        ; preds = %lor.lhs.false144
  %100 = load double, ptr %Val, align 8
  %101 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %101, i64 0
  %102 = load i8, ptr %arrayidx156, align 1
  %conv157 = sext i8 %102 to i32
  %sub158 = sub nsw i32 %conv157, 48
  %conv159 = sitofp i32 %sub158 to double
  %103 = call double @llvm.fmuladd.f64(double %100, double 1.000000e+01, double %conv159)
  store double %103, ptr %Val, align 8
  %104 = load double, ptr %dec116, align 8
  %mul160 = fmul double %104, 1.000000e+01
  store double %mul160, ptr %dec116, align 8
  %105 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr161 = getelementptr inbounds nuw i8, ptr %105, i32 1
  store ptr %incdec.ptr161, ptr %zSrc.addr, align 8
  %106 = load i32, ptr %Lim, align 4
  %dec162 = add nsw i32 %106, -1
  store i32 %dec162, ptr %Lim, align 4
  %107 = load ptr, ptr %zSrc.addr, align 8
  %108 = load ptr, ptr %zEnd, align 8
  %cmp163 = icmp uge ptr %107, %108
  br i1 %cmp163, label %if.then176, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %if.end154
  %109 = load i32, ptr %Lim, align 4
  %tobool166 = icmp ne i32 %109, 0
  br i1 %tobool166, label %lor.lhs.false167, label %if.then176

lor.lhs.false167:                                 ; preds = %lor.lhs.false165
  %call168 = call ptr @__ctype_b_loc() #3
  %110 = load ptr, ptr %call168, align 8
  %111 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %111, i64 0
  %112 = load i8, ptr %arrayidx169, align 1
  %conv170 = sext i8 %112 to i32
  %idxprom171 = sext i32 %conv170 to i64
  %arrayidx172 = getelementptr inbounds i16, ptr %110, i64 %idxprom171
  %113 = load i16, ptr %arrayidx172, align 2
  %conv173 = zext i16 %113 to i32
  %and174 = and i32 %conv173, 2048
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.end177, label %if.then176

if.then176:                                       ; preds = %lor.lhs.false167, %lor.lhs.false165, %if.end154
  br label %for.end209

if.end177:                                        ; preds = %lor.lhs.false167
  %114 = load double, ptr %Val, align 8
  %115 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, ptr %115, i64 0
  %116 = load i8, ptr %arrayidx179, align 1
  %conv180 = sext i8 %116 to i32
  %sub181 = sub nsw i32 %conv180, 48
  %conv182 = sitofp i32 %sub181 to double
  %117 = call double @llvm.fmuladd.f64(double %114, double 1.000000e+01, double %conv182)
  store double %117, ptr %Val, align 8
  %118 = load double, ptr %dec116, align 8
  %mul183 = fmul double %118, 1.000000e+01
  store double %mul183, ptr %dec116, align 8
  %119 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr184 = getelementptr inbounds nuw i8, ptr %119, i32 1
  store ptr %incdec.ptr184, ptr %zSrc.addr, align 8
  %120 = load i32, ptr %Lim, align 4
  %dec185 = add nsw i32 %120, -1
  store i32 %dec185, ptr %Lim, align 4
  %121 = load ptr, ptr %zSrc.addr, align 8
  %122 = load ptr, ptr %zEnd, align 8
  %cmp186 = icmp uge ptr %121, %122
  br i1 %cmp186, label %if.then199, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %if.end177
  %123 = load i32, ptr %Lim, align 4
  %tobool189 = icmp ne i32 %123, 0
  br i1 %tobool189, label %lor.lhs.false190, label %if.then199

lor.lhs.false190:                                 ; preds = %lor.lhs.false188
  %call191 = call ptr @__ctype_b_loc() #3
  %124 = load ptr, ptr %call191, align 8
  %125 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, ptr %125, i64 0
  %126 = load i8, ptr %arrayidx192, align 1
  %conv193 = sext i8 %126 to i32
  %idxprom194 = sext i32 %conv193 to i64
  %arrayidx195 = getelementptr inbounds i16, ptr %124, i64 %idxprom194
  %127 = load i16, ptr %arrayidx195, align 2
  %conv196 = zext i16 %127 to i32
  %and197 = and i32 %conv196, 2048
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %if.end200, label %if.then199

if.then199:                                       ; preds = %lor.lhs.false190, %lor.lhs.false188, %if.end177
  br label %for.end209

if.end200:                                        ; preds = %lor.lhs.false190
  %128 = load double, ptr %Val, align 8
  %129 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx202 = getelementptr inbounds i8, ptr %129, i64 0
  %130 = load i8, ptr %arrayidx202, align 1
  %conv203 = sext i8 %130 to i32
  %sub204 = sub nsw i32 %conv203, 48
  %conv205 = sitofp i32 %sub204 to double
  %131 = call double @llvm.fmuladd.f64(double %128, double 1.000000e+01, double %conv205)
  store double %131, ptr %Val, align 8
  %132 = load double, ptr %dec116, align 8
  %mul206 = fmul double %132, 1.000000e+01
  store double %mul206, ptr %dec116, align 8
  %133 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr207 = getelementptr inbounds nuw i8, ptr %133, i32 1
  store ptr %incdec.ptr207, ptr %zSrc.addr, align 8
  %134 = load i32, ptr %Lim, align 4
  %dec208 = add nsw i32 %134, -1
  store i32 %dec208, ptr %Lim, align 4
  br label %for.cond118

for.end209:                                       ; preds = %if.then199, %if.then176, %if.then153, %if.then132
  %135 = load double, ptr %dec116, align 8
  %136 = load double, ptr %Val, align 8
  %div = fdiv double %136, %135
  store double %div, ptr %Val, align 8
  br label %if.end210

if.end210:                                        ; preds = %for.end209, %lor.lhs.false110, %for.end
  %137 = load i8, ptr %neg, align 1
  %conv211 = zext i8 %137 to i32
  %cmp212 = icmp eq i32 %conv211, 1
  br i1 %cmp212, label %land.lhs.true214, label %if.end218

land.lhs.true214:                                 ; preds = %if.end210
  %138 = load double, ptr %Val, align 8
  %cmp215 = fcmp une double %138, 0.000000e+00
  br i1 %cmp215, label %if.then217, label %if.end218

if.then217:                                       ; preds = %land.lhs.true214
  %139 = load double, ptr %Val, align 8
  %fneg = fneg double %139
  store double %fneg, ptr %Val, align 8
  br label %if.end218

if.end218:                                        ; preds = %if.then217, %land.lhs.true214, %if.end210
  %140 = load i32, ptr %Lim, align 4
  %cmp219 = icmp sle i32 %140, 0
  br i1 %cmp219, label %if.then221, label %if.end239

if.then221:                                       ; preds = %if.end218
  br label %while.cond222

while.cond222:                                    ; preds = %if.end236, %if.then221
  %141 = load ptr, ptr %zSrc.addr, align 8
  %142 = load ptr, ptr %zEnd, align 8
  %cmp223 = icmp ult ptr %141, %142
  br i1 %cmp223, label %while.body225, label %while.end238

while.body225:                                    ; preds = %while.cond222
  %143 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx226 = getelementptr inbounds i8, ptr %143, i64 0
  %144 = load i8, ptr %arrayidx226, align 1
  %conv227 = sext i8 %144 to i32
  %cmp228 = icmp eq i32 %conv227, 101
  br i1 %cmp228, label %if.then235, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %while.body225
  %145 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx231 = getelementptr inbounds i8, ptr %145, i64 0
  %146 = load i8, ptr %arrayidx231, align 1
  %conv232 = sext i8 %146 to i32
  %cmp233 = icmp eq i32 %conv232, 69
  br i1 %cmp233, label %if.then235, label %if.end236

if.then235:                                       ; preds = %lor.lhs.false230, %while.body225
  br label %while.end238

if.end236:                                        ; preds = %lor.lhs.false230
  %147 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr237 = getelementptr inbounds nuw i8, ptr %147, i32 1
  store ptr %incdec.ptr237, ptr %zSrc.addr, align 8
  br label %while.cond222, !llvm.loop !8

while.end238:                                     ; preds = %if.then235, %while.cond222
  br label %if.end239

if.end239:                                        ; preds = %while.end238, %if.end218
  store i8 0, ptr %neg, align 1
  %148 = load ptr, ptr %zSrc.addr, align 8
  %149 = load ptr, ptr %zEnd, align 8
  %cmp240 = icmp ult ptr %148, %149
  br i1 %cmp240, label %land.lhs.true242, label %if.end323

land.lhs.true242:                                 ; preds = %if.end239
  %150 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx243 = getelementptr inbounds i8, ptr %150, i64 0
  %151 = load i8, ptr %arrayidx243, align 1
  %conv244 = sext i8 %151 to i32
  %cmp245 = icmp eq i32 %conv244, 101
  br i1 %cmp245, label %if.then252, label %lor.lhs.false247

lor.lhs.false247:                                 ; preds = %land.lhs.true242
  %152 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx248 = getelementptr inbounds i8, ptr %152, i64 0
  %153 = load i8, ptr %arrayidx248, align 1
  %conv249 = sext i8 %153 to i32
  %cmp250 = icmp eq i32 %conv249, 69
  br i1 %cmp250, label %if.then252, label %if.end323

if.then252:                                       ; preds = %lor.lhs.false247, %land.lhs.true242
  %154 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr253 = getelementptr inbounds nuw i8, ptr %154, i32 1
  store ptr %incdec.ptr253, ptr %zSrc.addr, align 8
  %155 = load ptr, ptr %zSrc.addr, align 8
  %156 = load ptr, ptr %zEnd, align 8
  %cmp254 = icmp ult ptr %155, %156
  br i1 %cmp254, label %land.lhs.true256, label %if.end274

land.lhs.true256:                                 ; preds = %if.then252
  %157 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx257 = getelementptr inbounds i8, ptr %157, i64 0
  %158 = load i8, ptr %arrayidx257, align 1
  %conv258 = sext i8 %158 to i32
  %cmp259 = icmp eq i32 %conv258, 45
  br i1 %cmp259, label %if.then266, label %lor.lhs.false261

lor.lhs.false261:                                 ; preds = %land.lhs.true256
  %159 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx262 = getelementptr inbounds i8, ptr %159, i64 0
  %160 = load i8, ptr %arrayidx262, align 1
  %conv263 = sext i8 %160 to i32
  %cmp264 = icmp eq i32 %conv263, 43
  br i1 %cmp264, label %if.then266, label %if.end274

if.then266:                                       ; preds = %lor.lhs.false261, %land.lhs.true256
  %161 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx267 = getelementptr inbounds i8, ptr %161, i64 0
  %162 = load i8, ptr %arrayidx267, align 1
  %conv268 = sext i8 %162 to i32
  %cmp269 = icmp eq i32 %conv268, 45
  %163 = zext i1 %cmp269 to i64
  %cond271 = select i1 %cmp269, i32 1, i32 0
  %conv272 = trunc i32 %cond271 to i8
  store i8 %conv272, ptr %neg, align 1
  %164 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr273 = getelementptr inbounds nuw i8, ptr %164, i32 1
  store ptr %incdec.ptr273, ptr %zSrc.addr, align 8
  br label %if.end274

if.end274:                                        ; preds = %if.then266, %lor.lhs.false261, %if.then252
  store i32 0, ptr %exp, align 4
  br label %while.cond275

while.cond275:                                    ; preds = %while.body291, %if.end274
  %165 = load ptr, ptr %zSrc.addr, align 8
  %166 = load ptr, ptr %zEnd, align 8
  %cmp276 = icmp ult ptr %165, %166
  br i1 %cmp276, label %land.lhs.true278, label %land.end290

land.lhs.true278:                                 ; preds = %while.cond275
  %call279 = call ptr @__ctype_b_loc() #3
  %167 = load ptr, ptr %call279, align 8
  %168 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx280 = getelementptr inbounds i8, ptr %168, i64 0
  %169 = load i8, ptr %arrayidx280, align 1
  %conv281 = sext i8 %169 to i32
  %idxprom282 = sext i32 %conv281 to i64
  %arrayidx283 = getelementptr inbounds i16, ptr %167, i64 %idxprom282
  %170 = load i16, ptr %arrayidx283, align 2
  %conv284 = zext i16 %170 to i32
  %and285 = and i32 %conv284, 2048
  %tobool286 = icmp ne i32 %and285, 0
  br i1 %tobool286, label %land.rhs287, label %land.end290

land.rhs287:                                      ; preds = %land.lhs.true278
  %171 = load i32, ptr %exp, align 4
  %cmp288 = icmp slt i32 %171, 308
  br label %land.end290

land.end290:                                      ; preds = %land.rhs287, %land.lhs.true278, %while.cond275
  %172 = phi i1 [ false, %land.lhs.true278 ], [ false, %while.cond275 ], [ %cmp288, %land.rhs287 ]
  br i1 %172, label %while.body291, label %while.end297

while.body291:                                    ; preds = %land.end290
  %173 = load i32, ptr %exp, align 4
  %mul292 = mul nsw i32 %173, 10
  %174 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx293 = getelementptr inbounds i8, ptr %174, i64 0
  %175 = load i8, ptr %arrayidx293, align 1
  %conv294 = sext i8 %175 to i32
  %sub295 = sub nsw i32 %conv294, 48
  %add = add nsw i32 %mul292, %sub295
  store i32 %add, ptr %exp, align 4
  %176 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr296 = getelementptr inbounds nuw i8, ptr %176, i32 1
  store ptr %incdec.ptr296, ptr %zSrc.addr, align 8
  br label %while.cond275, !llvm.loop !9

while.end297:                                     ; preds = %land.end290
  %177 = load i8, ptr %neg, align 1
  %tobool298 = icmp ne i8 %177, 0
  br i1 %tobool298, label %if.then299, label %if.else

if.then299:                                       ; preds = %while.end297
  %178 = load i32, ptr %exp, align 4
  %cmp300 = icmp sgt i32 %178, 307
  br i1 %cmp300, label %if.then302, label %if.end303

if.then302:                                       ; preds = %if.then299
  store i32 307, ptr %exp, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.then302, %if.then299
  br label %if.end308

if.else:                                          ; preds = %while.end297
  %179 = load i32, ptr %exp, align 4
  %cmp304 = icmp sgt i32 %179, 308
  br i1 %cmp304, label %if.then306, label %if.end307

if.then306:                                       ; preds = %if.else
  store i32 308, ptr %exp, align 4
  br label %if.end307

if.end307:                                        ; preds = %if.then306, %if.else
  br label %if.end308

if.end308:                                        ; preds = %if.end307, %if.end303
  store ptr @SyStrToReal.aTab, ptr %p, align 8
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc, %if.end308
  %180 = load i32, ptr %exp, align 4
  %tobool310 = icmp ne i32 %180, 0
  br i1 %tobool310, label %for.body, label %for.end322

for.body:                                         ; preds = %for.cond309
  %181 = load i32, ptr %exp, align 4
  %and311 = and i32 %181, 1
  %tobool312 = icmp ne i32 %and311, 0
  br i1 %tobool312, label %if.then313, label %if.end320

if.then313:                                       ; preds = %for.body
  %182 = load i8, ptr %neg, align 1
  %tobool314 = icmp ne i8 %182, 0
  br i1 %tobool314, label %if.then315, label %if.else317

if.then315:                                       ; preds = %if.then313
  %183 = load ptr, ptr %p, align 8
  %184 = load double, ptr %183, align 8
  %185 = load double, ptr %Val, align 8
  %div316 = fdiv double %185, %184
  store double %div316, ptr %Val, align 8
  br label %if.end319

if.else317:                                       ; preds = %if.then313
  %186 = load ptr, ptr %p, align 8
  %187 = load double, ptr %186, align 8
  %188 = load double, ptr %Val, align 8
  %mul318 = fmul double %188, %187
  store double %mul318, ptr %Val, align 8
  br label %if.end319

if.end319:                                        ; preds = %if.else317, %if.then315
  br label %if.end320

if.end320:                                        ; preds = %if.end319, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end320
  %189 = load i32, ptr %exp, align 4
  %shr = ashr i32 %189, 1
  store i32 %shr, ptr %exp, align 4
  %190 = load ptr, ptr %p, align 8
  %incdec.ptr321 = getelementptr inbounds nuw double, ptr %190, i32 1
  store ptr %incdec.ptr321, ptr %p, align 8
  br label %for.cond309, !llvm.loop !10

for.end322:                                       ; preds = %for.cond309
  br label %if.end323

if.end323:                                        ; preds = %for.end322, %lor.lhs.false247, %if.end239
  br label %while.cond324

while.cond324:                                    ; preds = %while.body337, %if.end323
  %191 = load ptr, ptr %zSrc.addr, align 8
  %192 = load ptr, ptr %zEnd, align 8
  %cmp325 = icmp ult ptr %191, %192
  br i1 %cmp325, label %land.rhs327, label %land.end336

land.rhs327:                                      ; preds = %while.cond324
  %call328 = call ptr @__ctype_b_loc() #3
  %193 = load ptr, ptr %call328, align 8
  %194 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx329 = getelementptr inbounds i8, ptr %194, i64 0
  %195 = load i8, ptr %arrayidx329, align 1
  %conv330 = sext i8 %195 to i32
  %idxprom331 = sext i32 %conv330 to i64
  %arrayidx332 = getelementptr inbounds i16, ptr %193, i64 %idxprom331
  %196 = load i16, ptr %arrayidx332, align 2
  %conv333 = zext i16 %196 to i32
  %and334 = and i32 %conv333, 8192
  %tobool335 = icmp ne i32 %and334, 0
  br label %land.end336

land.end336:                                      ; preds = %land.rhs327, %while.cond324
  %197 = phi i1 [ false, %while.cond324 ], [ %tobool335, %land.rhs327 ]
  br i1 %197, label %while.body337, label %while.end339

while.body337:                                    ; preds = %land.end336
  %198 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr338 = getelementptr inbounds nuw i8, ptr %198, i32 1
  store ptr %incdec.ptr338, ptr %zSrc.addr, align 8
  br label %while.cond324, !llvm.loop !11

while.end339:                                     ; preds = %land.end336
  %199 = load ptr, ptr %zRest.addr, align 8
  %tobool340 = icmp ne ptr %199, null
  br i1 %tobool340, label %if.then341, label %if.end342

if.then341:                                       ; preds = %while.end339
  %200 = load ptr, ptr %zSrc.addr, align 8
  %201 = load ptr, ptr %zRest.addr, align 8
  store ptr %200, ptr %201, align 8
  br label %if.end342

if.end342:                                        ; preds = %if.then341, %while.end339
  %202 = load ptr, ptr %pOutVal.addr, align 8
  %tobool343 = icmp ne ptr %202, null
  br i1 %tobool343, label %if.then344, label %if.end345

if.then344:                                       ; preds = %if.end342
  %203 = load double, ptr %Val, align 8
  %204 = load ptr, ptr %pOutVal.addr, align 8
  store double %203, ptr %204, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.then344, %if.end342
  %205 = load ptr, ptr %zSrc.addr, align 8
  %206 = load ptr, ptr %zEnd, align 8
  %cmp346 = icmp uge ptr %205, %206
  %207 = zext i1 %cmp346 to i64
  %cond348 = select i1 %cmp346, i32 0, i32 -12
  ret i32 %cond348
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(none) }

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
