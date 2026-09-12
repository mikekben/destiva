; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bz__AssertH__fail(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @fallbackQSort3(ptr noundef %fmap, ptr noundef %eclass, i32 noundef %loSt, i32 noundef %hiSt) #0 {
entry:
  %fmap.addr = alloca ptr, align 8
  %eclass.addr = alloca ptr, align 8
  %loSt.addr = alloca i32, align 4
  %hiSt.addr = alloca i32, align 4
  %unLo = alloca i32, align 4
  %unHi = alloca i32, align 4
  %ltLo = alloca i32, align 4
  %gtHi = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %sp = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %med = alloca i32, align 4
  %r = alloca i32, align 4
  %r3 = alloca i32, align 4
  %stackLo = alloca [100 x i32], align 16
  %stackHi = alloca [100 x i32], align 16
  %zztmp = alloca i32, align 4
  %zztmp73 = alloca i32, align 4
  %zztmp93 = alloca i32, align 4
  %yyp1 = alloca i32, align 4
  %yyp2 = alloca i32, align 4
  %yyn = alloca i32, align 4
  %zztmp117 = alloca i32, align 4
  %yyp1139 = alloca i32, align 4
  %yyp2140 = alloca i32, align 4
  %yyn143 = alloca i32, align 4
  %zztmp147 = alloca i32, align 4
  store ptr %fmap, ptr %fmap.addr, align 8
  store ptr %eclass, ptr %eclass.addr, align 8
  store i32 %loSt, ptr %loSt.addr, align 4
  store i32 %hiSt, ptr %hiSt.addr, align 4
  store i32 0, ptr %r, align 4
  store i32 0, ptr %sp, align 4
  %0 = load i32, ptr %loSt.addr, align 4
  %1 = load i32, ptr %sp, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom
  store i32 %0, ptr %arrayidx, align 4
  %2 = load i32, ptr %hiSt.addr, align 4
  %3 = load i32, ptr %sp, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom1
  store i32 %2, ptr %arrayidx2, align 4
  %4 = load i32, ptr %sp, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %sp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end191, %if.then106, %if.then9, %entry
  %5 = load i32, ptr %sp, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end192

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %sp, align 4
  %cmp3 = icmp slt i32 %6, 100
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @BZ2_bz__AssertH__fail(i32 noundef 1004)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i32, ptr %sp, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %sp, align 4
  %8 = load i32, ptr %sp, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom4
  %9 = load i32, ptr %arrayidx5, align 4
  store i32 %9, ptr %lo, align 4
  %10 = load i32, ptr %sp, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4
  store i32 %11, ptr %hi, align 4
  %12 = load i32, ptr %hi, align 4
  %13 = load i32, ptr %lo, align 4
  %sub = sub nsw i32 %12, %13
  %cmp8 = icmp slt i32 %sub, 10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %14 = load ptr, ptr %fmap.addr, align 8
  %15 = load ptr, ptr %eclass.addr, align 8
  %16 = load i32, ptr %lo, align 4
  %17 = load i32, ptr %hi, align 4
  call void @fallbackSimpleSort(ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17)
  br label %while.cond, !llvm.loop !6

if.end10:                                         ; preds = %if.end
  %18 = load i32, ptr %r, align 4
  %mul = mul i32 %18, 7621
  %add = add i32 %mul, 1
  %rem = urem i32 %add, 32768
  store i32 %rem, ptr %r, align 4
  %19 = load i32, ptr %r, align 4
  %rem11 = urem i32 %19, 3
  store i32 %rem11, ptr %r3, align 4
  %20 = load i32, ptr %r3, align 4
  %cmp12 = icmp eq i32 %20, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %21 = load ptr, ptr %eclass.addr, align 8
  %22 = load ptr, ptr %fmap.addr, align 8
  %23 = load i32, ptr %lo, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %22, i64 %idxprom14
  %24 = load i32, ptr %arrayidx15, align 4
  %idxprom16 = zext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %21, i64 %idxprom16
  %25 = load i32, ptr %arrayidx17, align 4
  store i32 %25, ptr %med, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end10
  %26 = load i32, ptr %r3, align 4
  %cmp18 = icmp eq i32 %26, 1
  br i1 %cmp18, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.else
  %27 = load ptr, ptr %eclass.addr, align 8
  %28 = load ptr, ptr %fmap.addr, align 8
  %29 = load i32, ptr %lo, align 4
  %30 = load i32, ptr %hi, align 4
  %add20 = add nsw i32 %29, %30
  %shr = ashr i32 %add20, 1
  %idxprom21 = sext i32 %shr to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %28, i64 %idxprom21
  %31 = load i32, ptr %arrayidx22, align 4
  %idxprom23 = zext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds nuw i32, ptr %27, i64 %idxprom23
  %32 = load i32, ptr %arrayidx24, align 4
  store i32 %32, ptr %med, align 4
  br label %if.end30

if.else25:                                        ; preds = %if.else
  %33 = load ptr, ptr %eclass.addr, align 8
  %34 = load ptr, ptr %fmap.addr, align 8
  %35 = load i32, ptr %hi, align 4
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %34, i64 %idxprom26
  %36 = load i32, ptr %arrayidx27, align 4
  %idxprom28 = zext i32 %36 to i64
  %arrayidx29 = getelementptr inbounds nuw i32, ptr %33, i64 %idxprom28
  %37 = load i32, ptr %arrayidx29, align 4
  store i32 %37, ptr %med, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then19
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then13
  %38 = load i32, ptr %lo, align 4
  store i32 %38, ptr %ltLo, align 4
  store i32 %38, ptr %unLo, align 4
  %39 = load i32, ptr %hi, align 4
  store i32 %39, ptr %gtHi, align 4
  store i32 %39, ptr %unHi, align 4
  br label %while.body33

while.body33:                                     ; preds = %if.end92, %if.end31
  br label %while.body35

while.body35:                                     ; preds = %if.end59, %if.then45, %while.body33
  %40 = load i32, ptr %unLo, align 4
  %41 = load i32, ptr %unHi, align 4
  %cmp36 = icmp sgt i32 %40, %41
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %while.body35
  br label %while.end

if.end38:                                         ; preds = %while.body35
  %42 = load ptr, ptr %eclass.addr, align 8
  %43 = load ptr, ptr %fmap.addr, align 8
  %44 = load i32, ptr %unLo, align 4
  %idxprom39 = sext i32 %44 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %43, i64 %idxprom39
  %45 = load i32, ptr %arrayidx40, align 4
  %idxprom41 = zext i32 %45 to i64
  %arrayidx42 = getelementptr inbounds nuw i32, ptr %42, i64 %idxprom41
  %46 = load i32, ptr %arrayidx42, align 4
  %47 = load i32, ptr %med, align 4
  %sub43 = sub nsw i32 %46, %47
  store i32 %sub43, ptr %n, align 4
  %48 = load i32, ptr %n, align 4
  %cmp44 = icmp eq i32 %48, 0
  br i1 %cmp44, label %if.then45, label %if.end56

if.then45:                                        ; preds = %if.end38
  %49 = load ptr, ptr %fmap.addr, align 8
  %50 = load i32, ptr %unLo, align 4
  %idxprom46 = sext i32 %50 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %49, i64 %idxprom46
  %51 = load i32, ptr %arrayidx47, align 4
  store i32 %51, ptr %zztmp, align 4
  %52 = load ptr, ptr %fmap.addr, align 8
  %53 = load i32, ptr %ltLo, align 4
  %idxprom48 = sext i32 %53 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %52, i64 %idxprom48
  %54 = load i32, ptr %arrayidx49, align 4
  %55 = load ptr, ptr %fmap.addr, align 8
  %56 = load i32, ptr %unLo, align 4
  %idxprom50 = sext i32 %56 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %55, i64 %idxprom50
  store i32 %54, ptr %arrayidx51, align 4
  %57 = load i32, ptr %zztmp, align 4
  %58 = load ptr, ptr %fmap.addr, align 8
  %59 = load i32, ptr %ltLo, align 4
  %idxprom52 = sext i32 %59 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %58, i64 %idxprom52
  store i32 %57, ptr %arrayidx53, align 4
  %60 = load i32, ptr %ltLo, align 4
  %inc54 = add nsw i32 %60, 1
  store i32 %inc54, ptr %ltLo, align 4
  %61 = load i32, ptr %unLo, align 4
  %inc55 = add nsw i32 %61, 1
  store i32 %inc55, ptr %unLo, align 4
  br label %while.body35

if.end56:                                         ; preds = %if.end38
  %62 = load i32, ptr %n, align 4
  %cmp57 = icmp sgt i32 %62, 0
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end56
  br label %while.end

if.end59:                                         ; preds = %if.end56
  %63 = load i32, ptr %unLo, align 4
  %inc60 = add nsw i32 %63, 1
  store i32 %inc60, ptr %unLo, align 4
  br label %while.body35

while.end:                                        ; preds = %if.then58, %if.then37
  br label %while.body62

while.body62:                                     ; preds = %if.end87, %if.then72, %while.end
  %64 = load i32, ptr %unLo, align 4
  %65 = load i32, ptr %unHi, align 4
  %cmp63 = icmp sgt i32 %64, %65
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %while.body62
  br label %while.end89

if.end65:                                         ; preds = %while.body62
  %66 = load ptr, ptr %eclass.addr, align 8
  %67 = load ptr, ptr %fmap.addr, align 8
  %68 = load i32, ptr %unHi, align 4
  %idxprom66 = sext i32 %68 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %67, i64 %idxprom66
  %69 = load i32, ptr %arrayidx67, align 4
  %idxprom68 = zext i32 %69 to i64
  %arrayidx69 = getelementptr inbounds nuw i32, ptr %66, i64 %idxprom68
  %70 = load i32, ptr %arrayidx69, align 4
  %71 = load i32, ptr %med, align 4
  %sub70 = sub nsw i32 %70, %71
  store i32 %sub70, ptr %n, align 4
  %72 = load i32, ptr %n, align 4
  %cmp71 = icmp eq i32 %72, 0
  br i1 %cmp71, label %if.then72, label %if.end84

if.then72:                                        ; preds = %if.end65
  %73 = load ptr, ptr %fmap.addr, align 8
  %74 = load i32, ptr %unHi, align 4
  %idxprom74 = sext i32 %74 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %73, i64 %idxprom74
  %75 = load i32, ptr %arrayidx75, align 4
  store i32 %75, ptr %zztmp73, align 4
  %76 = load ptr, ptr %fmap.addr, align 8
  %77 = load i32, ptr %gtHi, align 4
  %idxprom76 = sext i32 %77 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %76, i64 %idxprom76
  %78 = load i32, ptr %arrayidx77, align 4
  %79 = load ptr, ptr %fmap.addr, align 8
  %80 = load i32, ptr %unHi, align 4
  %idxprom78 = sext i32 %80 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %79, i64 %idxprom78
  store i32 %78, ptr %arrayidx79, align 4
  %81 = load i32, ptr %zztmp73, align 4
  %82 = load ptr, ptr %fmap.addr, align 8
  %83 = load i32, ptr %gtHi, align 4
  %idxprom80 = sext i32 %83 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %82, i64 %idxprom80
  store i32 %81, ptr %arrayidx81, align 4
  %84 = load i32, ptr %gtHi, align 4
  %dec82 = add nsw i32 %84, -1
  store i32 %dec82, ptr %gtHi, align 4
  %85 = load i32, ptr %unHi, align 4
  %dec83 = add nsw i32 %85, -1
  store i32 %dec83, ptr %unHi, align 4
  br label %while.body62

if.end84:                                         ; preds = %if.end65
  %86 = load i32, ptr %n, align 4
  %cmp85 = icmp slt i32 %86, 0
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end84
  br label %while.end89

if.end87:                                         ; preds = %if.end84
  %87 = load i32, ptr %unHi, align 4
  %dec88 = add nsw i32 %87, -1
  store i32 %dec88, ptr %unHi, align 4
  br label %while.body62

while.end89:                                      ; preds = %if.then86, %if.then64
  %88 = load i32, ptr %unLo, align 4
  %89 = load i32, ptr %unHi, align 4
  %cmp90 = icmp sgt i32 %88, %89
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %while.end89
  br label %while.end104

if.end92:                                         ; preds = %while.end89
  %90 = load ptr, ptr %fmap.addr, align 8
  %91 = load i32, ptr %unLo, align 4
  %idxprom94 = sext i32 %91 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %90, i64 %idxprom94
  %92 = load i32, ptr %arrayidx95, align 4
  store i32 %92, ptr %zztmp93, align 4
  %93 = load ptr, ptr %fmap.addr, align 8
  %94 = load i32, ptr %unHi, align 4
  %idxprom96 = sext i32 %94 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %93, i64 %idxprom96
  %95 = load i32, ptr %arrayidx97, align 4
  %96 = load ptr, ptr %fmap.addr, align 8
  %97 = load i32, ptr %unLo, align 4
  %idxprom98 = sext i32 %97 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %96, i64 %idxprom98
  store i32 %95, ptr %arrayidx99, align 4
  %98 = load i32, ptr %zztmp93, align 4
  %99 = load ptr, ptr %fmap.addr, align 8
  %100 = load i32, ptr %unHi, align 4
  %idxprom100 = sext i32 %100 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %99, i64 %idxprom100
  store i32 %98, ptr %arrayidx101, align 4
  %101 = load i32, ptr %unLo, align 4
  %inc102 = add nsw i32 %101, 1
  store i32 %inc102, ptr %unLo, align 4
  %102 = load i32, ptr %unHi, align 4
  %dec103 = add nsw i32 %102, -1
  store i32 %dec103, ptr %unHi, align 4
  br label %while.body33

while.end104:                                     ; preds = %if.then91
  %103 = load i32, ptr %gtHi, align 4
  %104 = load i32, ptr %ltLo, align 4
  %cmp105 = icmp slt i32 %103, %104
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %while.end104
  br label %while.cond, !llvm.loop !6

if.end107:                                        ; preds = %while.end104
  %105 = load i32, ptr %ltLo, align 4
  %106 = load i32, ptr %lo, align 4
  %sub108 = sub nsw i32 %105, %106
  %107 = load i32, ptr %unLo, align 4
  %108 = load i32, ptr %ltLo, align 4
  %sub109 = sub nsw i32 %107, %108
  %cmp110 = icmp slt i32 %sub108, %sub109
  br i1 %cmp110, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end107
  %109 = load i32, ptr %ltLo, align 4
  %110 = load i32, ptr %lo, align 4
  %sub111 = sub nsw i32 %109, %110
  br label %cond.end

cond.false:                                       ; preds = %if.end107
  %111 = load i32, ptr %unLo, align 4
  %112 = load i32, ptr %ltLo, align 4
  %sub112 = sub nsw i32 %111, %112
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub111, %cond.true ], [ %sub112, %cond.false ]
  store i32 %cond, ptr %n, align 4
  %113 = load i32, ptr %lo, align 4
  store i32 %113, ptr %yyp1, align 4
  %114 = load i32, ptr %unLo, align 4
  %115 = load i32, ptr %n, align 4
  %sub113 = sub nsw i32 %114, %115
  store i32 %sub113, ptr %yyp2, align 4
  %116 = load i32, ptr %n, align 4
  store i32 %116, ptr %yyn, align 4
  br label %while.cond114

while.cond114:                                    ; preds = %while.body116, %cond.end
  %117 = load i32, ptr %yyn, align 4
  %cmp115 = icmp sgt i32 %117, 0
  br i1 %cmp115, label %while.body116, label %while.end129

while.body116:                                    ; preds = %while.cond114
  %118 = load ptr, ptr %fmap.addr, align 8
  %119 = load i32, ptr %yyp1, align 4
  %idxprom118 = sext i32 %119 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %118, i64 %idxprom118
  %120 = load i32, ptr %arrayidx119, align 4
  store i32 %120, ptr %zztmp117, align 4
  %121 = load ptr, ptr %fmap.addr, align 8
  %122 = load i32, ptr %yyp2, align 4
  %idxprom120 = sext i32 %122 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %121, i64 %idxprom120
  %123 = load i32, ptr %arrayidx121, align 4
  %124 = load ptr, ptr %fmap.addr, align 8
  %125 = load i32, ptr %yyp1, align 4
  %idxprom122 = sext i32 %125 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %124, i64 %idxprom122
  store i32 %123, ptr %arrayidx123, align 4
  %126 = load i32, ptr %zztmp117, align 4
  %127 = load ptr, ptr %fmap.addr, align 8
  %128 = load i32, ptr %yyp2, align 4
  %idxprom124 = sext i32 %128 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %127, i64 %idxprom124
  store i32 %126, ptr %arrayidx125, align 4
  %129 = load i32, ptr %yyp1, align 4
  %inc126 = add nsw i32 %129, 1
  store i32 %inc126, ptr %yyp1, align 4
  %130 = load i32, ptr %yyp2, align 4
  %inc127 = add nsw i32 %130, 1
  store i32 %inc127, ptr %yyp2, align 4
  %131 = load i32, ptr %yyn, align 4
  %dec128 = add nsw i32 %131, -1
  store i32 %dec128, ptr %yyn, align 4
  br label %while.cond114, !llvm.loop !8

while.end129:                                     ; preds = %while.cond114
  %132 = load i32, ptr %hi, align 4
  %133 = load i32, ptr %gtHi, align 4
  %sub130 = sub nsw i32 %132, %133
  %134 = load i32, ptr %gtHi, align 4
  %135 = load i32, ptr %unHi, align 4
  %sub131 = sub nsw i32 %134, %135
  %cmp132 = icmp slt i32 %sub130, %sub131
  br i1 %cmp132, label %cond.true133, label %cond.false135

cond.true133:                                     ; preds = %while.end129
  %136 = load i32, ptr %hi, align 4
  %137 = load i32, ptr %gtHi, align 4
  %sub134 = sub nsw i32 %136, %137
  br label %cond.end137

cond.false135:                                    ; preds = %while.end129
  %138 = load i32, ptr %gtHi, align 4
  %139 = load i32, ptr %unHi, align 4
  %sub136 = sub nsw i32 %138, %139
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false135, %cond.true133
  %cond138 = phi i32 [ %sub134, %cond.true133 ], [ %sub136, %cond.false135 ]
  store i32 %cond138, ptr %m, align 4
  %140 = load i32, ptr %unLo, align 4
  store i32 %140, ptr %yyp1139, align 4
  %141 = load i32, ptr %hi, align 4
  %142 = load i32, ptr %m, align 4
  %sub141 = sub nsw i32 %141, %142
  %add142 = add nsw i32 %sub141, 1
  store i32 %add142, ptr %yyp2140, align 4
  %143 = load i32, ptr %m, align 4
  store i32 %143, ptr %yyn143, align 4
  br label %while.cond144

while.cond144:                                    ; preds = %while.body146, %cond.end137
  %144 = load i32, ptr %yyn143, align 4
  %cmp145 = icmp sgt i32 %144, 0
  br i1 %cmp145, label %while.body146, label %while.end159

while.body146:                                    ; preds = %while.cond144
  %145 = load ptr, ptr %fmap.addr, align 8
  %146 = load i32, ptr %yyp1139, align 4
  %idxprom148 = sext i32 %146 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %145, i64 %idxprom148
  %147 = load i32, ptr %arrayidx149, align 4
  store i32 %147, ptr %zztmp147, align 4
  %148 = load ptr, ptr %fmap.addr, align 8
  %149 = load i32, ptr %yyp2140, align 4
  %idxprom150 = sext i32 %149 to i64
  %arrayidx151 = getelementptr inbounds i32, ptr %148, i64 %idxprom150
  %150 = load i32, ptr %arrayidx151, align 4
  %151 = load ptr, ptr %fmap.addr, align 8
  %152 = load i32, ptr %yyp1139, align 4
  %idxprom152 = sext i32 %152 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %151, i64 %idxprom152
  store i32 %150, ptr %arrayidx153, align 4
  %153 = load i32, ptr %zztmp147, align 4
  %154 = load ptr, ptr %fmap.addr, align 8
  %155 = load i32, ptr %yyp2140, align 4
  %idxprom154 = sext i32 %155 to i64
  %arrayidx155 = getelementptr inbounds i32, ptr %154, i64 %idxprom154
  store i32 %153, ptr %arrayidx155, align 4
  %156 = load i32, ptr %yyp1139, align 4
  %inc156 = add nsw i32 %156, 1
  store i32 %inc156, ptr %yyp1139, align 4
  %157 = load i32, ptr %yyp2140, align 4
  %inc157 = add nsw i32 %157, 1
  store i32 %inc157, ptr %yyp2140, align 4
  %158 = load i32, ptr %yyn143, align 4
  %dec158 = add nsw i32 %158, -1
  store i32 %dec158, ptr %yyn143, align 4
  br label %while.cond144, !llvm.loop !9

while.end159:                                     ; preds = %while.cond144
  %159 = load i32, ptr %lo, align 4
  %160 = load i32, ptr %unLo, align 4
  %add160 = add nsw i32 %159, %160
  %161 = load i32, ptr %ltLo, align 4
  %sub161 = sub nsw i32 %add160, %161
  %sub162 = sub nsw i32 %sub161, 1
  store i32 %sub162, ptr %n, align 4
  %162 = load i32, ptr %hi, align 4
  %163 = load i32, ptr %gtHi, align 4
  %164 = load i32, ptr %unHi, align 4
  %sub163 = sub nsw i32 %163, %164
  %sub164 = sub nsw i32 %162, %sub163
  %add165 = add nsw i32 %sub164, 1
  store i32 %add165, ptr %m, align 4
  %165 = load i32, ptr %n, align 4
  %166 = load i32, ptr %lo, align 4
  %sub166 = sub nsw i32 %165, %166
  %167 = load i32, ptr %hi, align 4
  %168 = load i32, ptr %m, align 4
  %sub167 = sub nsw i32 %167, %168
  %cmp168 = icmp sgt i32 %sub166, %sub167
  br i1 %cmp168, label %if.then169, label %if.else180

if.then169:                                       ; preds = %while.end159
  %169 = load i32, ptr %lo, align 4
  %170 = load i32, ptr %sp, align 4
  %idxprom170 = sext i32 %170 to i64
  %arrayidx171 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom170
  store i32 %169, ptr %arrayidx171, align 4
  %171 = load i32, ptr %n, align 4
  %172 = load i32, ptr %sp, align 4
  %idxprom172 = sext i32 %172 to i64
  %arrayidx173 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom172
  store i32 %171, ptr %arrayidx173, align 4
  %173 = load i32, ptr %sp, align 4
  %inc174 = add nsw i32 %173, 1
  store i32 %inc174, ptr %sp, align 4
  %174 = load i32, ptr %m, align 4
  %175 = load i32, ptr %sp, align 4
  %idxprom175 = sext i32 %175 to i64
  %arrayidx176 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom175
  store i32 %174, ptr %arrayidx176, align 4
  %176 = load i32, ptr %hi, align 4
  %177 = load i32, ptr %sp, align 4
  %idxprom177 = sext i32 %177 to i64
  %arrayidx178 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom177
  store i32 %176, ptr %arrayidx178, align 4
  %178 = load i32, ptr %sp, align 4
  %inc179 = add nsw i32 %178, 1
  store i32 %inc179, ptr %sp, align 4
  br label %if.end191

if.else180:                                       ; preds = %while.end159
  %179 = load i32, ptr %m, align 4
  %180 = load i32, ptr %sp, align 4
  %idxprom181 = sext i32 %180 to i64
  %arrayidx182 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom181
  store i32 %179, ptr %arrayidx182, align 4
  %181 = load i32, ptr %hi, align 4
  %182 = load i32, ptr %sp, align 4
  %idxprom183 = sext i32 %182 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom183
  store i32 %181, ptr %arrayidx184, align 4
  %183 = load i32, ptr %sp, align 4
  %inc185 = add nsw i32 %183, 1
  store i32 %inc185, ptr %sp, align 4
  %184 = load i32, ptr %lo, align 4
  %185 = load i32, ptr %sp, align 4
  %idxprom186 = sext i32 %185 to i64
  %arrayidx187 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom186
  store i32 %184, ptr %arrayidx187, align 4
  %186 = load i32, ptr %n, align 4
  %187 = load i32, ptr %sp, align 4
  %idxprom188 = sext i32 %187 to i64
  %arrayidx189 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom188
  store i32 %186, ptr %arrayidx189, align 4
  %188 = load i32, ptr %sp, align 4
  %inc190 = add nsw i32 %188, 1
  store i32 %inc190, ptr %sp, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.else180, %if.then169
  br label %while.cond, !llvm.loop !6

while.end192:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @fallbackSimpleSort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

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
