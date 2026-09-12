; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bz__AssertH__fail(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @mainQSort3(ptr noundef %ptr, ptr noundef %block, ptr noundef %quadrant, i32 noundef %nblock, i32 noundef %loSt, i32 noundef %hiSt, i32 noundef %dSt, ptr noundef %budget) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %quadrant.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %loSt.addr = alloca i32, align 4
  %hiSt.addr = alloca i32, align 4
  %dSt.addr = alloca i32, align 4
  %budget.addr = alloca ptr, align 8
  %unLo = alloca i32, align 4
  %unHi = alloca i32, align 4
  %ltLo = alloca i32, align 4
  %gtHi = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %med = alloca i32, align 4
  %sp = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %d = alloca i32, align 4
  %stackLo = alloca [100 x i32], align 16
  %stackHi = alloca [100 x i32], align 16
  %stackD = alloca [100 x i32], align 16
  %nextLo = alloca [3 x i32], align 4
  %nextHi = alloca [3 x i32], align 4
  %nextD = alloca [3 x i32], align 4
  %zztmp = alloca i32, align 4
  %zztmp84 = alloca i32, align 4
  %zztmp106 = alloca i32, align 4
  %yyp1 = alloca i32, align 4
  %yyp2 = alloca i32, align 4
  %yyn = alloca i32, align 4
  %zztmp141 = alloca i32, align 4
  %yyp1164 = alloca i32, align 4
  %yyp2165 = alloca i32, align 4
  %yyn168 = alloca i32, align 4
  %zztmp173 = alloca i32, align 4
  %tz = alloca i32, align 4
  %tz235 = alloca i32, align 4
  %tz258 = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %quadrant, ptr %quadrant.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store i32 %loSt, ptr %loSt.addr, align 4
  store i32 %hiSt, ptr %hiSt.addr, align 4
  store i32 %dSt, ptr %dSt.addr, align 4
  store ptr %budget, ptr %budget.addr, align 8
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
  %4 = load i32, ptr %dSt.addr, align 4
  %5 = load i32, ptr %sp, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom3
  store i32 %4, ptr %arrayidx4, align 4
  %6 = load i32, ptr %sp, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %sp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end271, %if.then120, %if.end17, %entry
  %7 = load i32, ptr %sp, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %while.body, label %while.end302

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %sp, align 4
  %cmp5 = icmp slt i32 %8, 100
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @BZ2_bz__AssertH__fail(i32 noundef 1001)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, ptr %sp, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %sp, align 4
  %10 = load i32, ptr %sp, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4
  store i32 %11, ptr %lo, align 4
  %12 = load i32, ptr %sp, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom8
  %13 = load i32, ptr %arrayidx9, align 4
  store i32 %13, ptr %hi, align 4
  %14 = load i32, ptr %sp, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom10
  %15 = load i32, ptr %arrayidx11, align 4
  store i32 %15, ptr %d, align 4
  %16 = load i32, ptr %hi, align 4
  %17 = load i32, ptr %lo, align 4
  %sub = sub nsw i32 %16, %17
  %cmp12 = icmp slt i32 %sub, 20
  br i1 %cmp12, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i32, ptr %d, align 4
  %cmp13 = icmp sgt i32 %18, 14
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  %19 = load ptr, ptr %ptr.addr, align 8
  %20 = load ptr, ptr %block.addr, align 8
  %21 = load ptr, ptr %quadrant.addr, align 8
  %22 = load i32, ptr %nblock.addr, align 4
  %23 = load i32, ptr %lo, align 4
  %24 = load i32, ptr %hi, align 4
  %25 = load i32, ptr %d, align 4
  %26 = load ptr, ptr %budget.addr, align 8
  call void @mainSimpleSort(ptr noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26)
  %27 = load ptr, ptr %budget.addr, align 8
  %28 = load i32, ptr %27, align 4
  %cmp15 = icmp slt i32 %28, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  br label %while.end302

if.end17:                                         ; preds = %if.then14
  br label %while.cond, !llvm.loop !6

if.end18:                                         ; preds = %lor.lhs.false
  %29 = load ptr, ptr %block.addr, align 8
  %30 = load ptr, ptr %ptr.addr, align 8
  %31 = load i32, ptr %lo, align 4
  %idxprom19 = sext i32 %31 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %30, i64 %idxprom19
  %32 = load i32, ptr %arrayidx20, align 4
  %33 = load i32, ptr %d, align 4
  %add = add i32 %32, %33
  %idxprom21 = zext i32 %add to i64
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %29, i64 %idxprom21
  %34 = load i8, ptr %arrayidx22, align 1
  %35 = load ptr, ptr %block.addr, align 8
  %36 = load ptr, ptr %ptr.addr, align 8
  %37 = load i32, ptr %hi, align 4
  %idxprom23 = sext i32 %37 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %36, i64 %idxprom23
  %38 = load i32, ptr %arrayidx24, align 4
  %39 = load i32, ptr %d, align 4
  %add25 = add i32 %38, %39
  %idxprom26 = zext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %35, i64 %idxprom26
  %40 = load i8, ptr %arrayidx27, align 1
  %41 = load ptr, ptr %block.addr, align 8
  %42 = load ptr, ptr %ptr.addr, align 8
  %43 = load i32, ptr %lo, align 4
  %44 = load i32, ptr %hi, align 4
  %add28 = add nsw i32 %43, %44
  %shr = ashr i32 %add28, 1
  %idxprom29 = sext i32 %shr to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %42, i64 %idxprom29
  %45 = load i32, ptr %arrayidx30, align 4
  %46 = load i32, ptr %d, align 4
  %add31 = add i32 %45, %46
  %idxprom32 = zext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %41, i64 %idxprom32
  %47 = load i8, ptr %arrayidx33, align 1
  %call = call zeroext i8 @mmed3(i8 noundef zeroext %34, i8 noundef zeroext %40, i8 noundef zeroext %47)
  %conv = zext i8 %call to i32
  store i32 %conv, ptr %med, align 4
  %48 = load i32, ptr %lo, align 4
  store i32 %48, ptr %ltLo, align 4
  store i32 %48, ptr %unLo, align 4
  %49 = load i32, ptr %hi, align 4
  store i32 %49, ptr %gtHi, align 4
  store i32 %49, ptr %unHi, align 4
  br label %while.body35

while.body35:                                     ; preds = %if.end105, %if.end18
  br label %while.body37

while.body37:                                     ; preds = %if.end66, %if.then51, %while.body35
  %50 = load i32, ptr %unLo, align 4
  %51 = load i32, ptr %unHi, align 4
  %cmp38 = icmp sgt i32 %50, %51
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %while.body37
  br label %while.end

if.end41:                                         ; preds = %while.body37
  %52 = load ptr, ptr %block.addr, align 8
  %53 = load ptr, ptr %ptr.addr, align 8
  %54 = load i32, ptr %unLo, align 4
  %idxprom42 = sext i32 %54 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %53, i64 %idxprom42
  %55 = load i32, ptr %arrayidx43, align 4
  %56 = load i32, ptr %d, align 4
  %add44 = add i32 %55, %56
  %idxprom45 = zext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %52, i64 %idxprom45
  %57 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %57 to i32
  %58 = load i32, ptr %med, align 4
  %sub48 = sub nsw i32 %conv47, %58
  store i32 %sub48, ptr %n, align 4
  %59 = load i32, ptr %n, align 4
  %cmp49 = icmp eq i32 %59, 0
  br i1 %cmp49, label %if.then51, label %if.end62

if.then51:                                        ; preds = %if.end41
  %60 = load ptr, ptr %ptr.addr, align 8
  %61 = load i32, ptr %unLo, align 4
  %idxprom52 = sext i32 %61 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %60, i64 %idxprom52
  %62 = load i32, ptr %arrayidx53, align 4
  store i32 %62, ptr %zztmp, align 4
  %63 = load ptr, ptr %ptr.addr, align 8
  %64 = load i32, ptr %ltLo, align 4
  %idxprom54 = sext i32 %64 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %63, i64 %idxprom54
  %65 = load i32, ptr %arrayidx55, align 4
  %66 = load ptr, ptr %ptr.addr, align 8
  %67 = load i32, ptr %unLo, align 4
  %idxprom56 = sext i32 %67 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %66, i64 %idxprom56
  store i32 %65, ptr %arrayidx57, align 4
  %68 = load i32, ptr %zztmp, align 4
  %69 = load ptr, ptr %ptr.addr, align 8
  %70 = load i32, ptr %ltLo, align 4
  %idxprom58 = sext i32 %70 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %69, i64 %idxprom58
  store i32 %68, ptr %arrayidx59, align 4
  %71 = load i32, ptr %ltLo, align 4
  %inc60 = add nsw i32 %71, 1
  store i32 %inc60, ptr %ltLo, align 4
  %72 = load i32, ptr %unLo, align 4
  %inc61 = add nsw i32 %72, 1
  store i32 %inc61, ptr %unLo, align 4
  br label %while.body37

if.end62:                                         ; preds = %if.end41
  %73 = load i32, ptr %n, align 4
  %cmp63 = icmp sgt i32 %73, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  br label %while.end

if.end66:                                         ; preds = %if.end62
  %74 = load i32, ptr %unLo, align 4
  %inc67 = add nsw i32 %74, 1
  store i32 %inc67, ptr %unLo, align 4
  br label %while.body37

while.end:                                        ; preds = %if.then65, %if.then40
  br label %while.body69

while.body69:                                     ; preds = %if.end99, %if.then83, %while.end
  %75 = load i32, ptr %unLo, align 4
  %76 = load i32, ptr %unHi, align 4
  %cmp70 = icmp sgt i32 %75, %76
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %while.body69
  br label %while.end101

if.end73:                                         ; preds = %while.body69
  %77 = load ptr, ptr %block.addr, align 8
  %78 = load ptr, ptr %ptr.addr, align 8
  %79 = load i32, ptr %unHi, align 4
  %idxprom74 = sext i32 %79 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %78, i64 %idxprom74
  %80 = load i32, ptr %arrayidx75, align 4
  %81 = load i32, ptr %d, align 4
  %add76 = add i32 %80, %81
  %idxprom77 = zext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %77, i64 %idxprom77
  %82 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %82 to i32
  %83 = load i32, ptr %med, align 4
  %sub80 = sub nsw i32 %conv79, %83
  store i32 %sub80, ptr %n, align 4
  %84 = load i32, ptr %n, align 4
  %cmp81 = icmp eq i32 %84, 0
  br i1 %cmp81, label %if.then83, label %if.end95

if.then83:                                        ; preds = %if.end73
  %85 = load ptr, ptr %ptr.addr, align 8
  %86 = load i32, ptr %unHi, align 4
  %idxprom85 = sext i32 %86 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %85, i64 %idxprom85
  %87 = load i32, ptr %arrayidx86, align 4
  store i32 %87, ptr %zztmp84, align 4
  %88 = load ptr, ptr %ptr.addr, align 8
  %89 = load i32, ptr %gtHi, align 4
  %idxprom87 = sext i32 %89 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %88, i64 %idxprom87
  %90 = load i32, ptr %arrayidx88, align 4
  %91 = load ptr, ptr %ptr.addr, align 8
  %92 = load i32, ptr %unHi, align 4
  %idxprom89 = sext i32 %92 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %91, i64 %idxprom89
  store i32 %90, ptr %arrayidx90, align 4
  %93 = load i32, ptr %zztmp84, align 4
  %94 = load ptr, ptr %ptr.addr, align 8
  %95 = load i32, ptr %gtHi, align 4
  %idxprom91 = sext i32 %95 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %94, i64 %idxprom91
  store i32 %93, ptr %arrayidx92, align 4
  %96 = load i32, ptr %gtHi, align 4
  %dec93 = add nsw i32 %96, -1
  store i32 %dec93, ptr %gtHi, align 4
  %97 = load i32, ptr %unHi, align 4
  %dec94 = add nsw i32 %97, -1
  store i32 %dec94, ptr %unHi, align 4
  br label %while.body69

if.end95:                                         ; preds = %if.end73
  %98 = load i32, ptr %n, align 4
  %cmp96 = icmp slt i32 %98, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end95
  br label %while.end101

if.end99:                                         ; preds = %if.end95
  %99 = load i32, ptr %unHi, align 4
  %dec100 = add nsw i32 %99, -1
  store i32 %dec100, ptr %unHi, align 4
  br label %while.body69

while.end101:                                     ; preds = %if.then98, %if.then72
  %100 = load i32, ptr %unLo, align 4
  %101 = load i32, ptr %unHi, align 4
  %cmp102 = icmp sgt i32 %100, %101
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %while.end101
  br label %while.end117

if.end105:                                        ; preds = %while.end101
  %102 = load ptr, ptr %ptr.addr, align 8
  %103 = load i32, ptr %unLo, align 4
  %idxprom107 = sext i32 %103 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %102, i64 %idxprom107
  %104 = load i32, ptr %arrayidx108, align 4
  store i32 %104, ptr %zztmp106, align 4
  %105 = load ptr, ptr %ptr.addr, align 8
  %106 = load i32, ptr %unHi, align 4
  %idxprom109 = sext i32 %106 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %105, i64 %idxprom109
  %107 = load i32, ptr %arrayidx110, align 4
  %108 = load ptr, ptr %ptr.addr, align 8
  %109 = load i32, ptr %unLo, align 4
  %idxprom111 = sext i32 %109 to i64
  %arrayidx112 = getelementptr inbounds i32, ptr %108, i64 %idxprom111
  store i32 %107, ptr %arrayidx112, align 4
  %110 = load i32, ptr %zztmp106, align 4
  %111 = load ptr, ptr %ptr.addr, align 8
  %112 = load i32, ptr %unHi, align 4
  %idxprom113 = sext i32 %112 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %111, i64 %idxprom113
  store i32 %110, ptr %arrayidx114, align 4
  %113 = load i32, ptr %unLo, align 4
  %inc115 = add nsw i32 %113, 1
  store i32 %inc115, ptr %unLo, align 4
  %114 = load i32, ptr %unHi, align 4
  %dec116 = add nsw i32 %114, -1
  store i32 %dec116, ptr %unHi, align 4
  br label %while.body35

while.end117:                                     ; preds = %if.then104
  %115 = load i32, ptr %gtHi, align 4
  %116 = load i32, ptr %ltLo, align 4
  %cmp118 = icmp slt i32 %115, %116
  br i1 %cmp118, label %if.then120, label %if.end129

if.then120:                                       ; preds = %while.end117
  %117 = load i32, ptr %lo, align 4
  %118 = load i32, ptr %sp, align 4
  %idxprom121 = sext i32 %118 to i64
  %arrayidx122 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom121
  store i32 %117, ptr %arrayidx122, align 4
  %119 = load i32, ptr %hi, align 4
  %120 = load i32, ptr %sp, align 4
  %idxprom123 = sext i32 %120 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom123
  store i32 %119, ptr %arrayidx124, align 4
  %121 = load i32, ptr %d, align 4
  %add125 = add nsw i32 %121, 1
  %122 = load i32, ptr %sp, align 4
  %idxprom126 = sext i32 %122 to i64
  %arrayidx127 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom126
  store i32 %add125, ptr %arrayidx127, align 4
  %123 = load i32, ptr %sp, align 4
  %inc128 = add nsw i32 %123, 1
  store i32 %inc128, ptr %sp, align 4
  br label %while.cond, !llvm.loop !6

if.end129:                                        ; preds = %while.end117
  %124 = load i32, ptr %ltLo, align 4
  %125 = load i32, ptr %lo, align 4
  %sub130 = sub nsw i32 %124, %125
  %126 = load i32, ptr %unLo, align 4
  %127 = load i32, ptr %ltLo, align 4
  %sub131 = sub nsw i32 %126, %127
  %cmp132 = icmp slt i32 %sub130, %sub131
  br i1 %cmp132, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end129
  %128 = load i32, ptr %ltLo, align 4
  %129 = load i32, ptr %lo, align 4
  %sub134 = sub nsw i32 %128, %129
  br label %cond.end

cond.false:                                       ; preds = %if.end129
  %130 = load i32, ptr %unLo, align 4
  %131 = load i32, ptr %ltLo, align 4
  %sub135 = sub nsw i32 %130, %131
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub134, %cond.true ], [ %sub135, %cond.false ]
  store i32 %cond, ptr %n, align 4
  %132 = load i32, ptr %lo, align 4
  store i32 %132, ptr %yyp1, align 4
  %133 = load i32, ptr %unLo, align 4
  %134 = load i32, ptr %n, align 4
  %sub136 = sub nsw i32 %133, %134
  store i32 %sub136, ptr %yyp2, align 4
  %135 = load i32, ptr %n, align 4
  store i32 %135, ptr %yyn, align 4
  br label %while.cond137

while.cond137:                                    ; preds = %while.body140, %cond.end
  %136 = load i32, ptr %yyn, align 4
  %cmp138 = icmp sgt i32 %136, 0
  br i1 %cmp138, label %while.body140, label %while.end153

while.body140:                                    ; preds = %while.cond137
  %137 = load ptr, ptr %ptr.addr, align 8
  %138 = load i32, ptr %yyp1, align 4
  %idxprom142 = sext i32 %138 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %137, i64 %idxprom142
  %139 = load i32, ptr %arrayidx143, align 4
  store i32 %139, ptr %zztmp141, align 4
  %140 = load ptr, ptr %ptr.addr, align 8
  %141 = load i32, ptr %yyp2, align 4
  %idxprom144 = sext i32 %141 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %140, i64 %idxprom144
  %142 = load i32, ptr %arrayidx145, align 4
  %143 = load ptr, ptr %ptr.addr, align 8
  %144 = load i32, ptr %yyp1, align 4
  %idxprom146 = sext i32 %144 to i64
  %arrayidx147 = getelementptr inbounds i32, ptr %143, i64 %idxprom146
  store i32 %142, ptr %arrayidx147, align 4
  %145 = load i32, ptr %zztmp141, align 4
  %146 = load ptr, ptr %ptr.addr, align 8
  %147 = load i32, ptr %yyp2, align 4
  %idxprom148 = sext i32 %147 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %146, i64 %idxprom148
  store i32 %145, ptr %arrayidx149, align 4
  %148 = load i32, ptr %yyp1, align 4
  %inc150 = add nsw i32 %148, 1
  store i32 %inc150, ptr %yyp1, align 4
  %149 = load i32, ptr %yyp2, align 4
  %inc151 = add nsw i32 %149, 1
  store i32 %inc151, ptr %yyp2, align 4
  %150 = load i32, ptr %yyn, align 4
  %dec152 = add nsw i32 %150, -1
  store i32 %dec152, ptr %yyn, align 4
  br label %while.cond137, !llvm.loop !8

while.end153:                                     ; preds = %while.cond137
  %151 = load i32, ptr %hi, align 4
  %152 = load i32, ptr %gtHi, align 4
  %sub154 = sub nsw i32 %151, %152
  %153 = load i32, ptr %gtHi, align 4
  %154 = load i32, ptr %unHi, align 4
  %sub155 = sub nsw i32 %153, %154
  %cmp156 = icmp slt i32 %sub154, %sub155
  br i1 %cmp156, label %cond.true158, label %cond.false160

cond.true158:                                     ; preds = %while.end153
  %155 = load i32, ptr %hi, align 4
  %156 = load i32, ptr %gtHi, align 4
  %sub159 = sub nsw i32 %155, %156
  br label %cond.end162

cond.false160:                                    ; preds = %while.end153
  %157 = load i32, ptr %gtHi, align 4
  %158 = load i32, ptr %unHi, align 4
  %sub161 = sub nsw i32 %157, %158
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false160, %cond.true158
  %cond163 = phi i32 [ %sub159, %cond.true158 ], [ %sub161, %cond.false160 ]
  store i32 %cond163, ptr %m, align 4
  %159 = load i32, ptr %unLo, align 4
  store i32 %159, ptr %yyp1164, align 4
  %160 = load i32, ptr %hi, align 4
  %161 = load i32, ptr %m, align 4
  %sub166 = sub nsw i32 %160, %161
  %add167 = add nsw i32 %sub166, 1
  store i32 %add167, ptr %yyp2165, align 4
  %162 = load i32, ptr %m, align 4
  store i32 %162, ptr %yyn168, align 4
  br label %while.cond169

while.cond169:                                    ; preds = %while.body172, %cond.end162
  %163 = load i32, ptr %yyn168, align 4
  %cmp170 = icmp sgt i32 %163, 0
  br i1 %cmp170, label %while.body172, label %while.end185

while.body172:                                    ; preds = %while.cond169
  %164 = load ptr, ptr %ptr.addr, align 8
  %165 = load i32, ptr %yyp1164, align 4
  %idxprom174 = sext i32 %165 to i64
  %arrayidx175 = getelementptr inbounds i32, ptr %164, i64 %idxprom174
  %166 = load i32, ptr %arrayidx175, align 4
  store i32 %166, ptr %zztmp173, align 4
  %167 = load ptr, ptr %ptr.addr, align 8
  %168 = load i32, ptr %yyp2165, align 4
  %idxprom176 = sext i32 %168 to i64
  %arrayidx177 = getelementptr inbounds i32, ptr %167, i64 %idxprom176
  %169 = load i32, ptr %arrayidx177, align 4
  %170 = load ptr, ptr %ptr.addr, align 8
  %171 = load i32, ptr %yyp1164, align 4
  %idxprom178 = sext i32 %171 to i64
  %arrayidx179 = getelementptr inbounds i32, ptr %170, i64 %idxprom178
  store i32 %169, ptr %arrayidx179, align 4
  %172 = load i32, ptr %zztmp173, align 4
  %173 = load ptr, ptr %ptr.addr, align 8
  %174 = load i32, ptr %yyp2165, align 4
  %idxprom180 = sext i32 %174 to i64
  %arrayidx181 = getelementptr inbounds i32, ptr %173, i64 %idxprom180
  store i32 %172, ptr %arrayidx181, align 4
  %175 = load i32, ptr %yyp1164, align 4
  %inc182 = add nsw i32 %175, 1
  store i32 %inc182, ptr %yyp1164, align 4
  %176 = load i32, ptr %yyp2165, align 4
  %inc183 = add nsw i32 %176, 1
  store i32 %inc183, ptr %yyp2165, align 4
  %177 = load i32, ptr %yyn168, align 4
  %dec184 = add nsw i32 %177, -1
  store i32 %dec184, ptr %yyn168, align 4
  br label %while.cond169, !llvm.loop !9

while.end185:                                     ; preds = %while.cond169
  %178 = load i32, ptr %lo, align 4
  %179 = load i32, ptr %unLo, align 4
  %add186 = add nsw i32 %178, %179
  %180 = load i32, ptr %ltLo, align 4
  %sub187 = sub nsw i32 %add186, %180
  %sub188 = sub nsw i32 %sub187, 1
  store i32 %sub188, ptr %n, align 4
  %181 = load i32, ptr %hi, align 4
  %182 = load i32, ptr %gtHi, align 4
  %183 = load i32, ptr %unHi, align 4
  %sub189 = sub nsw i32 %182, %183
  %sub190 = sub nsw i32 %181, %sub189
  %add191 = add nsw i32 %sub190, 1
  store i32 %add191, ptr %m, align 4
  %184 = load i32, ptr %lo, align 4
  %arrayidx192 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 0
  store i32 %184, ptr %arrayidx192, align 4
  %185 = load i32, ptr %n, align 4
  %arrayidx193 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 0
  store i32 %185, ptr %arrayidx193, align 4
  %186 = load i32, ptr %d, align 4
  %arrayidx194 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 0
  store i32 %186, ptr %arrayidx194, align 4
  %187 = load i32, ptr %m, align 4
  %arrayidx195 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  store i32 %187, ptr %arrayidx195, align 4
  %188 = load i32, ptr %hi, align 4
  %arrayidx196 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  store i32 %188, ptr %arrayidx196, align 4
  %189 = load i32, ptr %d, align 4
  %arrayidx197 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  store i32 %189, ptr %arrayidx197, align 4
  %190 = load i32, ptr %n, align 4
  %add198 = add nsw i32 %190, 1
  %arrayidx199 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  store i32 %add198, ptr %arrayidx199, align 4
  %191 = load i32, ptr %m, align 4
  %sub200 = sub nsw i32 %191, 1
  %arrayidx201 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  store i32 %sub200, ptr %arrayidx201, align 4
  %192 = load i32, ptr %d, align 4
  %add202 = add nsw i32 %192, 1
  %arrayidx203 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 2
  store i32 %add202, ptr %arrayidx203, align 4
  %arrayidx204 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 0
  %193 = load i32, ptr %arrayidx204, align 4
  %arrayidx205 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 0
  %194 = load i32, ptr %arrayidx205, align 4
  %sub206 = sub nsw i32 %193, %194
  %arrayidx207 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %195 = load i32, ptr %arrayidx207, align 4
  %arrayidx208 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %196 = load i32, ptr %arrayidx208, align 4
  %sub209 = sub nsw i32 %195, %196
  %cmp210 = icmp slt i32 %sub206, %sub209
  br i1 %cmp210, label %if.then212, label %if.end225

if.then212:                                       ; preds = %while.end185
  %arrayidx213 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 0
  %197 = load i32, ptr %arrayidx213, align 4
  store i32 %197, ptr %tz, align 4
  %arrayidx214 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %198 = load i32, ptr %arrayidx214, align 4
  %arrayidx215 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 0
  store i32 %198, ptr %arrayidx215, align 4
  %199 = load i32, ptr %tz, align 4
  %arrayidx216 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  store i32 %199, ptr %arrayidx216, align 4
  %arrayidx217 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 0
  %200 = load i32, ptr %arrayidx217, align 4
  store i32 %200, ptr %tz, align 4
  %arrayidx218 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %201 = load i32, ptr %arrayidx218, align 4
  %arrayidx219 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 0
  store i32 %201, ptr %arrayidx219, align 4
  %202 = load i32, ptr %tz, align 4
  %arrayidx220 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  store i32 %202, ptr %arrayidx220, align 4
  %arrayidx221 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 0
  %203 = load i32, ptr %arrayidx221, align 4
  store i32 %203, ptr %tz, align 4
  %arrayidx222 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  %204 = load i32, ptr %arrayidx222, align 4
  %arrayidx223 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 0
  store i32 %204, ptr %arrayidx223, align 4
  %205 = load i32, ptr %tz, align 4
  %arrayidx224 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  store i32 %205, ptr %arrayidx224, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then212, %while.end185
  %arrayidx226 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %206 = load i32, ptr %arrayidx226, align 4
  %arrayidx227 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %207 = load i32, ptr %arrayidx227, align 4
  %sub228 = sub nsw i32 %206, %207
  %arrayidx229 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  %208 = load i32, ptr %arrayidx229, align 4
  %arrayidx230 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  %209 = load i32, ptr %arrayidx230, align 4
  %sub231 = sub nsw i32 %208, %209
  %cmp232 = icmp slt i32 %sub228, %sub231
  br i1 %cmp232, label %if.then234, label %if.end248

if.then234:                                       ; preds = %if.end225
  %arrayidx236 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %210 = load i32, ptr %arrayidx236, align 4
  store i32 %210, ptr %tz235, align 4
  %arrayidx237 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  %211 = load i32, ptr %arrayidx237, align 4
  %arrayidx238 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  store i32 %211, ptr %arrayidx238, align 4
  %212 = load i32, ptr %tz235, align 4
  %arrayidx239 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  store i32 %212, ptr %arrayidx239, align 4
  %arrayidx240 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %213 = load i32, ptr %arrayidx240, align 4
  store i32 %213, ptr %tz235, align 4
  %arrayidx241 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  %214 = load i32, ptr %arrayidx241, align 4
  %arrayidx242 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  store i32 %214, ptr %arrayidx242, align 4
  %215 = load i32, ptr %tz235, align 4
  %arrayidx243 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  store i32 %215, ptr %arrayidx243, align 4
  %arrayidx244 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  %216 = load i32, ptr %arrayidx244, align 4
  store i32 %216, ptr %tz235, align 4
  %arrayidx245 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 2
  %217 = load i32, ptr %arrayidx245, align 4
  %arrayidx246 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  store i32 %217, ptr %arrayidx246, align 4
  %218 = load i32, ptr %tz235, align 4
  %arrayidx247 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 2
  store i32 %218, ptr %arrayidx247, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then234, %if.end225
  %arrayidx249 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 0
  %219 = load i32, ptr %arrayidx249, align 4
  %arrayidx250 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 0
  %220 = load i32, ptr %arrayidx250, align 4
  %sub251 = sub nsw i32 %219, %220
  %arrayidx252 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %221 = load i32, ptr %arrayidx252, align 4
  %arrayidx253 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %222 = load i32, ptr %arrayidx253, align 4
  %sub254 = sub nsw i32 %221, %222
  %cmp255 = icmp slt i32 %sub251, %sub254
  br i1 %cmp255, label %if.then257, label %if.end271

if.then257:                                       ; preds = %if.end248
  %arrayidx259 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 0
  %223 = load i32, ptr %arrayidx259, align 4
  store i32 %223, ptr %tz258, align 4
  %arrayidx260 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %224 = load i32, ptr %arrayidx260, align 4
  %arrayidx261 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 0
  store i32 %224, ptr %arrayidx261, align 4
  %225 = load i32, ptr %tz258, align 4
  %arrayidx262 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  store i32 %225, ptr %arrayidx262, align 4
  %arrayidx263 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 0
  %226 = load i32, ptr %arrayidx263, align 4
  store i32 %226, ptr %tz258, align 4
  %arrayidx264 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %227 = load i32, ptr %arrayidx264, align 4
  %arrayidx265 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 0
  store i32 %227, ptr %arrayidx265, align 4
  %228 = load i32, ptr %tz258, align 4
  %arrayidx266 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  store i32 %228, ptr %arrayidx266, align 4
  %arrayidx267 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 0
  %229 = load i32, ptr %arrayidx267, align 4
  store i32 %229, ptr %tz258, align 4
  %arrayidx268 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  %230 = load i32, ptr %arrayidx268, align 4
  %arrayidx269 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 0
  store i32 %230, ptr %arrayidx269, align 4
  %231 = load i32, ptr %tz258, align 4
  %arrayidx270 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  store i32 %231, ptr %arrayidx270, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then257, %if.end248
  %arrayidx272 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 0
  %232 = load i32, ptr %arrayidx272, align 4
  %233 = load i32, ptr %sp, align 4
  %idxprom273 = sext i32 %233 to i64
  %arrayidx274 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom273
  store i32 %232, ptr %arrayidx274, align 4
  %arrayidx275 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 0
  %234 = load i32, ptr %arrayidx275, align 4
  %235 = load i32, ptr %sp, align 4
  %idxprom276 = sext i32 %235 to i64
  %arrayidx277 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom276
  store i32 %234, ptr %arrayidx277, align 4
  %arrayidx278 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 0
  %236 = load i32, ptr %arrayidx278, align 4
  %237 = load i32, ptr %sp, align 4
  %idxprom279 = sext i32 %237 to i64
  %arrayidx280 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom279
  store i32 %236, ptr %arrayidx280, align 4
  %238 = load i32, ptr %sp, align 4
  %inc281 = add nsw i32 %238, 1
  store i32 %inc281, ptr %sp, align 4
  %arrayidx282 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 1
  %239 = load i32, ptr %arrayidx282, align 4
  %240 = load i32, ptr %sp, align 4
  %idxprom283 = sext i32 %240 to i64
  %arrayidx284 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom283
  store i32 %239, ptr %arrayidx284, align 4
  %arrayidx285 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 1
  %241 = load i32, ptr %arrayidx285, align 4
  %242 = load i32, ptr %sp, align 4
  %idxprom286 = sext i32 %242 to i64
  %arrayidx287 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom286
  store i32 %241, ptr %arrayidx287, align 4
  %arrayidx288 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 1
  %243 = load i32, ptr %arrayidx288, align 4
  %244 = load i32, ptr %sp, align 4
  %idxprom289 = sext i32 %244 to i64
  %arrayidx290 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom289
  store i32 %243, ptr %arrayidx290, align 4
  %245 = load i32, ptr %sp, align 4
  %inc291 = add nsw i32 %245, 1
  store i32 %inc291, ptr %sp, align 4
  %arrayidx292 = getelementptr inbounds [3 x i32], ptr %nextLo, i64 0, i64 2
  %246 = load i32, ptr %arrayidx292, align 4
  %247 = load i32, ptr %sp, align 4
  %idxprom293 = sext i32 %247 to i64
  %arrayidx294 = getelementptr inbounds [100 x i32], ptr %stackLo, i64 0, i64 %idxprom293
  store i32 %246, ptr %arrayidx294, align 4
  %arrayidx295 = getelementptr inbounds [3 x i32], ptr %nextHi, i64 0, i64 2
  %248 = load i32, ptr %arrayidx295, align 4
  %249 = load i32, ptr %sp, align 4
  %idxprom296 = sext i32 %249 to i64
  %arrayidx297 = getelementptr inbounds [100 x i32], ptr %stackHi, i64 0, i64 %idxprom296
  store i32 %248, ptr %arrayidx297, align 4
  %arrayidx298 = getelementptr inbounds [3 x i32], ptr %nextD, i64 0, i64 2
  %250 = load i32, ptr %arrayidx298, align 4
  %251 = load i32, ptr %sp, align 4
  %idxprom299 = sext i32 %251 to i64
  %arrayidx300 = getelementptr inbounds [100 x i32], ptr %stackD, i64 0, i64 %idxprom299
  store i32 %250, ptr %arrayidx300, align 4
  %252 = load i32, ptr %sp, align 4
  %inc301 = add nsw i32 %252, 1
  store i32 %inc301, ptr %sp, align 4
  br label %while.cond, !llvm.loop !6

while.end302:                                     ; preds = %if.then16, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @mainSimpleSort(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @mmed3(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #0

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
