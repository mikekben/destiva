; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @mainGtU(i32 noundef %i1, i32 noundef %i2, ptr noundef %block, ptr noundef %quadrant, i32 noundef %nblock, ptr noundef %budget) #0 {
entry:
  %retval = alloca i8, align 1
  %i1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %block.addr = alloca ptr, align 8
  %quadrant.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %budget.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %s1 = alloca i16, align 2
  %s2 = alloca i16, align 2
  store i32 %i1, ptr %i1.addr, align 4
  store i32 %i2, ptr %i2.addr, align 4
  store ptr %block, ptr %block.addr, align 8
  store ptr %quadrant, ptr %quadrant.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store ptr %budget, ptr %budget.addr, align 8
  %0 = load ptr, ptr %block.addr, align 8
  %1 = load i32, ptr %i1.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  store i8 %2, ptr %c1, align 1
  %3 = load ptr, ptr %block.addr, align 8
  %4 = load i32, ptr %i2.addr, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %3, i64 %idxprom1
  %5 = load i8, ptr %arrayidx2, align 1
  store i8 %5, ptr %c2, align 1
  %6 = load i8, ptr %c1, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8, ptr %c2, align 1
  %conv3 = zext i8 %7 to i32
  %cmp = icmp ne i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8, ptr %c1, align 1
  %conv5 = zext i8 %8 to i32
  %9 = load i8, ptr %c2, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp sgt i32 %conv5, %conv6
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = trunc i32 %conv8 to i8
  store i8 %conv9, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %i1.addr, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i1.addr, align 4
  %11 = load i32, ptr %i2.addr, align 4
  %inc10 = add i32 %11, 1
  store i32 %inc10, ptr %i2.addr, align 4
  %12 = load ptr, ptr %block.addr, align 8
  %13 = load i32, ptr %i1.addr, align 4
  %idxprom11 = zext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %12, i64 %idxprom11
  %14 = load i8, ptr %arrayidx12, align 1
  store i8 %14, ptr %c1, align 1
  %15 = load ptr, ptr %block.addr, align 8
  %16 = load i32, ptr %i2.addr, align 4
  %idxprom13 = zext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %15, i64 %idxprom13
  %17 = load i8, ptr %arrayidx14, align 1
  store i8 %17, ptr %c2, align 1
  %18 = load i8, ptr %c1, align 1
  %conv15 = zext i8 %18 to i32
  %19 = load i8, ptr %c2, align 1
  %conv16 = zext i8 %19 to i32
  %cmp17 = icmp ne i32 %conv15, %conv16
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end
  %20 = load i8, ptr %c1, align 1
  %conv20 = zext i8 %20 to i32
  %21 = load i8, ptr %c2, align 1
  %conv21 = zext i8 %21 to i32
  %cmp22 = icmp sgt i32 %conv20, %conv21
  %conv23 = zext i1 %cmp22 to i32
  %conv24 = trunc i32 %conv23 to i8
  store i8 %conv24, ptr %retval, align 1
  br label %return

if.end25:                                         ; preds = %if.end
  %22 = load i32, ptr %i1.addr, align 4
  %inc26 = add i32 %22, 1
  store i32 %inc26, ptr %i1.addr, align 4
  %23 = load i32, ptr %i2.addr, align 4
  %inc27 = add i32 %23, 1
  store i32 %inc27, ptr %i2.addr, align 4
  %24 = load ptr, ptr %block.addr, align 8
  %25 = load i32, ptr %i1.addr, align 4
  %idxprom28 = zext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %24, i64 %idxprom28
  %26 = load i8, ptr %arrayidx29, align 1
  store i8 %26, ptr %c1, align 1
  %27 = load ptr, ptr %block.addr, align 8
  %28 = load i32, ptr %i2.addr, align 4
  %idxprom30 = zext i32 %28 to i64
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %27, i64 %idxprom30
  %29 = load i8, ptr %arrayidx31, align 1
  store i8 %29, ptr %c2, align 1
  %30 = load i8, ptr %c1, align 1
  %conv32 = zext i8 %30 to i32
  %31 = load i8, ptr %c2, align 1
  %conv33 = zext i8 %31 to i32
  %cmp34 = icmp ne i32 %conv32, %conv33
  br i1 %cmp34, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end25
  %32 = load i8, ptr %c1, align 1
  %conv37 = zext i8 %32 to i32
  %33 = load i8, ptr %c2, align 1
  %conv38 = zext i8 %33 to i32
  %cmp39 = icmp sgt i32 %conv37, %conv38
  %conv40 = zext i1 %cmp39 to i32
  %conv41 = trunc i32 %conv40 to i8
  store i8 %conv41, ptr %retval, align 1
  br label %return

if.end42:                                         ; preds = %if.end25
  %34 = load i32, ptr %i1.addr, align 4
  %inc43 = add i32 %34, 1
  store i32 %inc43, ptr %i1.addr, align 4
  %35 = load i32, ptr %i2.addr, align 4
  %inc44 = add i32 %35, 1
  store i32 %inc44, ptr %i2.addr, align 4
  %36 = load ptr, ptr %block.addr, align 8
  %37 = load i32, ptr %i1.addr, align 4
  %idxprom45 = zext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %36, i64 %idxprom45
  %38 = load i8, ptr %arrayidx46, align 1
  store i8 %38, ptr %c1, align 1
  %39 = load ptr, ptr %block.addr, align 8
  %40 = load i32, ptr %i2.addr, align 4
  %idxprom47 = zext i32 %40 to i64
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %39, i64 %idxprom47
  %41 = load i8, ptr %arrayidx48, align 1
  store i8 %41, ptr %c2, align 1
  %42 = load i8, ptr %c1, align 1
  %conv49 = zext i8 %42 to i32
  %43 = load i8, ptr %c2, align 1
  %conv50 = zext i8 %43 to i32
  %cmp51 = icmp ne i32 %conv49, %conv50
  br i1 %cmp51, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.end42
  %44 = load i8, ptr %c1, align 1
  %conv54 = zext i8 %44 to i32
  %45 = load i8, ptr %c2, align 1
  %conv55 = zext i8 %45 to i32
  %cmp56 = icmp sgt i32 %conv54, %conv55
  %conv57 = zext i1 %cmp56 to i32
  %conv58 = trunc i32 %conv57 to i8
  store i8 %conv58, ptr %retval, align 1
  br label %return

if.end59:                                         ; preds = %if.end42
  %46 = load i32, ptr %i1.addr, align 4
  %inc60 = add i32 %46, 1
  store i32 %inc60, ptr %i1.addr, align 4
  %47 = load i32, ptr %i2.addr, align 4
  %inc61 = add i32 %47, 1
  store i32 %inc61, ptr %i2.addr, align 4
  %48 = load ptr, ptr %block.addr, align 8
  %49 = load i32, ptr %i1.addr, align 4
  %idxprom62 = zext i32 %49 to i64
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %48, i64 %idxprom62
  %50 = load i8, ptr %arrayidx63, align 1
  store i8 %50, ptr %c1, align 1
  %51 = load ptr, ptr %block.addr, align 8
  %52 = load i32, ptr %i2.addr, align 4
  %idxprom64 = zext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %51, i64 %idxprom64
  %53 = load i8, ptr %arrayidx65, align 1
  store i8 %53, ptr %c2, align 1
  %54 = load i8, ptr %c1, align 1
  %conv66 = zext i8 %54 to i32
  %55 = load i8, ptr %c2, align 1
  %conv67 = zext i8 %55 to i32
  %cmp68 = icmp ne i32 %conv66, %conv67
  br i1 %cmp68, label %if.then70, label %if.end76

if.then70:                                        ; preds = %if.end59
  %56 = load i8, ptr %c1, align 1
  %conv71 = zext i8 %56 to i32
  %57 = load i8, ptr %c2, align 1
  %conv72 = zext i8 %57 to i32
  %cmp73 = icmp sgt i32 %conv71, %conv72
  %conv74 = zext i1 %cmp73 to i32
  %conv75 = trunc i32 %conv74 to i8
  store i8 %conv75, ptr %retval, align 1
  br label %return

if.end76:                                         ; preds = %if.end59
  %58 = load i32, ptr %i1.addr, align 4
  %inc77 = add i32 %58, 1
  store i32 %inc77, ptr %i1.addr, align 4
  %59 = load i32, ptr %i2.addr, align 4
  %inc78 = add i32 %59, 1
  store i32 %inc78, ptr %i2.addr, align 4
  %60 = load ptr, ptr %block.addr, align 8
  %61 = load i32, ptr %i1.addr, align 4
  %idxprom79 = zext i32 %61 to i64
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %60, i64 %idxprom79
  %62 = load i8, ptr %arrayidx80, align 1
  store i8 %62, ptr %c1, align 1
  %63 = load ptr, ptr %block.addr, align 8
  %64 = load i32, ptr %i2.addr, align 4
  %idxprom81 = zext i32 %64 to i64
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %63, i64 %idxprom81
  %65 = load i8, ptr %arrayidx82, align 1
  store i8 %65, ptr %c2, align 1
  %66 = load i8, ptr %c1, align 1
  %conv83 = zext i8 %66 to i32
  %67 = load i8, ptr %c2, align 1
  %conv84 = zext i8 %67 to i32
  %cmp85 = icmp ne i32 %conv83, %conv84
  br i1 %cmp85, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.end76
  %68 = load i8, ptr %c1, align 1
  %conv88 = zext i8 %68 to i32
  %69 = load i8, ptr %c2, align 1
  %conv89 = zext i8 %69 to i32
  %cmp90 = icmp sgt i32 %conv88, %conv89
  %conv91 = zext i1 %cmp90 to i32
  %conv92 = trunc i32 %conv91 to i8
  store i8 %conv92, ptr %retval, align 1
  br label %return

if.end93:                                         ; preds = %if.end76
  %70 = load i32, ptr %i1.addr, align 4
  %inc94 = add i32 %70, 1
  store i32 %inc94, ptr %i1.addr, align 4
  %71 = load i32, ptr %i2.addr, align 4
  %inc95 = add i32 %71, 1
  store i32 %inc95, ptr %i2.addr, align 4
  %72 = load ptr, ptr %block.addr, align 8
  %73 = load i32, ptr %i1.addr, align 4
  %idxprom96 = zext i32 %73 to i64
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %72, i64 %idxprom96
  %74 = load i8, ptr %arrayidx97, align 1
  store i8 %74, ptr %c1, align 1
  %75 = load ptr, ptr %block.addr, align 8
  %76 = load i32, ptr %i2.addr, align 4
  %idxprom98 = zext i32 %76 to i64
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %75, i64 %idxprom98
  %77 = load i8, ptr %arrayidx99, align 1
  store i8 %77, ptr %c2, align 1
  %78 = load i8, ptr %c1, align 1
  %conv100 = zext i8 %78 to i32
  %79 = load i8, ptr %c2, align 1
  %conv101 = zext i8 %79 to i32
  %cmp102 = icmp ne i32 %conv100, %conv101
  br i1 %cmp102, label %if.then104, label %if.end110

if.then104:                                       ; preds = %if.end93
  %80 = load i8, ptr %c1, align 1
  %conv105 = zext i8 %80 to i32
  %81 = load i8, ptr %c2, align 1
  %conv106 = zext i8 %81 to i32
  %cmp107 = icmp sgt i32 %conv105, %conv106
  %conv108 = zext i1 %cmp107 to i32
  %conv109 = trunc i32 %conv108 to i8
  store i8 %conv109, ptr %retval, align 1
  br label %return

if.end110:                                        ; preds = %if.end93
  %82 = load i32, ptr %i1.addr, align 4
  %inc111 = add i32 %82, 1
  store i32 %inc111, ptr %i1.addr, align 4
  %83 = load i32, ptr %i2.addr, align 4
  %inc112 = add i32 %83, 1
  store i32 %inc112, ptr %i2.addr, align 4
  %84 = load ptr, ptr %block.addr, align 8
  %85 = load i32, ptr %i1.addr, align 4
  %idxprom113 = zext i32 %85 to i64
  %arrayidx114 = getelementptr inbounds nuw i8, ptr %84, i64 %idxprom113
  %86 = load i8, ptr %arrayidx114, align 1
  store i8 %86, ptr %c1, align 1
  %87 = load ptr, ptr %block.addr, align 8
  %88 = load i32, ptr %i2.addr, align 4
  %idxprom115 = zext i32 %88 to i64
  %arrayidx116 = getelementptr inbounds nuw i8, ptr %87, i64 %idxprom115
  %89 = load i8, ptr %arrayidx116, align 1
  store i8 %89, ptr %c2, align 1
  %90 = load i8, ptr %c1, align 1
  %conv117 = zext i8 %90 to i32
  %91 = load i8, ptr %c2, align 1
  %conv118 = zext i8 %91 to i32
  %cmp119 = icmp ne i32 %conv117, %conv118
  br i1 %cmp119, label %if.then121, label %if.end127

if.then121:                                       ; preds = %if.end110
  %92 = load i8, ptr %c1, align 1
  %conv122 = zext i8 %92 to i32
  %93 = load i8, ptr %c2, align 1
  %conv123 = zext i8 %93 to i32
  %cmp124 = icmp sgt i32 %conv122, %conv123
  %conv125 = zext i1 %cmp124 to i32
  %conv126 = trunc i32 %conv125 to i8
  store i8 %conv126, ptr %retval, align 1
  br label %return

if.end127:                                        ; preds = %if.end110
  %94 = load i32, ptr %i1.addr, align 4
  %inc128 = add i32 %94, 1
  store i32 %inc128, ptr %i1.addr, align 4
  %95 = load i32, ptr %i2.addr, align 4
  %inc129 = add i32 %95, 1
  store i32 %inc129, ptr %i2.addr, align 4
  %96 = load ptr, ptr %block.addr, align 8
  %97 = load i32, ptr %i1.addr, align 4
  %idxprom130 = zext i32 %97 to i64
  %arrayidx131 = getelementptr inbounds nuw i8, ptr %96, i64 %idxprom130
  %98 = load i8, ptr %arrayidx131, align 1
  store i8 %98, ptr %c1, align 1
  %99 = load ptr, ptr %block.addr, align 8
  %100 = load i32, ptr %i2.addr, align 4
  %idxprom132 = zext i32 %100 to i64
  %arrayidx133 = getelementptr inbounds nuw i8, ptr %99, i64 %idxprom132
  %101 = load i8, ptr %arrayidx133, align 1
  store i8 %101, ptr %c2, align 1
  %102 = load i8, ptr %c1, align 1
  %conv134 = zext i8 %102 to i32
  %103 = load i8, ptr %c2, align 1
  %conv135 = zext i8 %103 to i32
  %cmp136 = icmp ne i32 %conv134, %conv135
  br i1 %cmp136, label %if.then138, label %if.end144

if.then138:                                       ; preds = %if.end127
  %104 = load i8, ptr %c1, align 1
  %conv139 = zext i8 %104 to i32
  %105 = load i8, ptr %c2, align 1
  %conv140 = zext i8 %105 to i32
  %cmp141 = icmp sgt i32 %conv139, %conv140
  %conv142 = zext i1 %cmp141 to i32
  %conv143 = trunc i32 %conv142 to i8
  store i8 %conv143, ptr %retval, align 1
  br label %return

if.end144:                                        ; preds = %if.end127
  %106 = load i32, ptr %i1.addr, align 4
  %inc145 = add i32 %106, 1
  store i32 %inc145, ptr %i1.addr, align 4
  %107 = load i32, ptr %i2.addr, align 4
  %inc146 = add i32 %107, 1
  store i32 %inc146, ptr %i2.addr, align 4
  %108 = load ptr, ptr %block.addr, align 8
  %109 = load i32, ptr %i1.addr, align 4
  %idxprom147 = zext i32 %109 to i64
  %arrayidx148 = getelementptr inbounds nuw i8, ptr %108, i64 %idxprom147
  %110 = load i8, ptr %arrayidx148, align 1
  store i8 %110, ptr %c1, align 1
  %111 = load ptr, ptr %block.addr, align 8
  %112 = load i32, ptr %i2.addr, align 4
  %idxprom149 = zext i32 %112 to i64
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %111, i64 %idxprom149
  %113 = load i8, ptr %arrayidx150, align 1
  store i8 %113, ptr %c2, align 1
  %114 = load i8, ptr %c1, align 1
  %conv151 = zext i8 %114 to i32
  %115 = load i8, ptr %c2, align 1
  %conv152 = zext i8 %115 to i32
  %cmp153 = icmp ne i32 %conv151, %conv152
  br i1 %cmp153, label %if.then155, label %if.end161

if.then155:                                       ; preds = %if.end144
  %116 = load i8, ptr %c1, align 1
  %conv156 = zext i8 %116 to i32
  %117 = load i8, ptr %c2, align 1
  %conv157 = zext i8 %117 to i32
  %cmp158 = icmp sgt i32 %conv156, %conv157
  %conv159 = zext i1 %cmp158 to i32
  %conv160 = trunc i32 %conv159 to i8
  store i8 %conv160, ptr %retval, align 1
  br label %return

if.end161:                                        ; preds = %if.end144
  %118 = load i32, ptr %i1.addr, align 4
  %inc162 = add i32 %118, 1
  store i32 %inc162, ptr %i1.addr, align 4
  %119 = load i32, ptr %i2.addr, align 4
  %inc163 = add i32 %119, 1
  store i32 %inc163, ptr %i2.addr, align 4
  %120 = load ptr, ptr %block.addr, align 8
  %121 = load i32, ptr %i1.addr, align 4
  %idxprom164 = zext i32 %121 to i64
  %arrayidx165 = getelementptr inbounds nuw i8, ptr %120, i64 %idxprom164
  %122 = load i8, ptr %arrayidx165, align 1
  store i8 %122, ptr %c1, align 1
  %123 = load ptr, ptr %block.addr, align 8
  %124 = load i32, ptr %i2.addr, align 4
  %idxprom166 = zext i32 %124 to i64
  %arrayidx167 = getelementptr inbounds nuw i8, ptr %123, i64 %idxprom166
  %125 = load i8, ptr %arrayidx167, align 1
  store i8 %125, ptr %c2, align 1
  %126 = load i8, ptr %c1, align 1
  %conv168 = zext i8 %126 to i32
  %127 = load i8, ptr %c2, align 1
  %conv169 = zext i8 %127 to i32
  %cmp170 = icmp ne i32 %conv168, %conv169
  br i1 %cmp170, label %if.then172, label %if.end178

if.then172:                                       ; preds = %if.end161
  %128 = load i8, ptr %c1, align 1
  %conv173 = zext i8 %128 to i32
  %129 = load i8, ptr %c2, align 1
  %conv174 = zext i8 %129 to i32
  %cmp175 = icmp sgt i32 %conv173, %conv174
  %conv176 = zext i1 %cmp175 to i32
  %conv177 = trunc i32 %conv176 to i8
  store i8 %conv177, ptr %retval, align 1
  br label %return

if.end178:                                        ; preds = %if.end161
  %130 = load i32, ptr %i1.addr, align 4
  %inc179 = add i32 %130, 1
  store i32 %inc179, ptr %i1.addr, align 4
  %131 = load i32, ptr %i2.addr, align 4
  %inc180 = add i32 %131, 1
  store i32 %inc180, ptr %i2.addr, align 4
  %132 = load ptr, ptr %block.addr, align 8
  %133 = load i32, ptr %i1.addr, align 4
  %idxprom181 = zext i32 %133 to i64
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %132, i64 %idxprom181
  %134 = load i8, ptr %arrayidx182, align 1
  store i8 %134, ptr %c1, align 1
  %135 = load ptr, ptr %block.addr, align 8
  %136 = load i32, ptr %i2.addr, align 4
  %idxprom183 = zext i32 %136 to i64
  %arrayidx184 = getelementptr inbounds nuw i8, ptr %135, i64 %idxprom183
  %137 = load i8, ptr %arrayidx184, align 1
  store i8 %137, ptr %c2, align 1
  %138 = load i8, ptr %c1, align 1
  %conv185 = zext i8 %138 to i32
  %139 = load i8, ptr %c2, align 1
  %conv186 = zext i8 %139 to i32
  %cmp187 = icmp ne i32 %conv185, %conv186
  br i1 %cmp187, label %if.then189, label %if.end195

if.then189:                                       ; preds = %if.end178
  %140 = load i8, ptr %c1, align 1
  %conv190 = zext i8 %140 to i32
  %141 = load i8, ptr %c2, align 1
  %conv191 = zext i8 %141 to i32
  %cmp192 = icmp sgt i32 %conv190, %conv191
  %conv193 = zext i1 %cmp192 to i32
  %conv194 = trunc i32 %conv193 to i8
  store i8 %conv194, ptr %retval, align 1
  br label %return

if.end195:                                        ; preds = %if.end178
  %142 = load i32, ptr %i1.addr, align 4
  %inc196 = add i32 %142, 1
  store i32 %inc196, ptr %i1.addr, align 4
  %143 = load i32, ptr %i2.addr, align 4
  %inc197 = add i32 %143, 1
  store i32 %inc197, ptr %i2.addr, align 4
  %144 = load i32, ptr %nblock.addr, align 4
  %add = add i32 %144, 8
  store i32 %add, ptr %k, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end195
  %145 = load ptr, ptr %block.addr, align 8
  %146 = load i32, ptr %i1.addr, align 4
  %idxprom198 = zext i32 %146 to i64
  %arrayidx199 = getelementptr inbounds nuw i8, ptr %145, i64 %idxprom198
  %147 = load i8, ptr %arrayidx199, align 1
  store i8 %147, ptr %c1, align 1
  %148 = load ptr, ptr %block.addr, align 8
  %149 = load i32, ptr %i2.addr, align 4
  %idxprom200 = zext i32 %149 to i64
  %arrayidx201 = getelementptr inbounds nuw i8, ptr %148, i64 %idxprom200
  %150 = load i8, ptr %arrayidx201, align 1
  store i8 %150, ptr %c2, align 1
  %151 = load i8, ptr %c1, align 1
  %conv202 = zext i8 %151 to i32
  %152 = load i8, ptr %c2, align 1
  %conv203 = zext i8 %152 to i32
  %cmp204 = icmp ne i32 %conv202, %conv203
  br i1 %cmp204, label %if.then206, label %if.end212

if.then206:                                       ; preds = %do.body
  %153 = load i8, ptr %c1, align 1
  %conv207 = zext i8 %153 to i32
  %154 = load i8, ptr %c2, align 1
  %conv208 = zext i8 %154 to i32
  %cmp209 = icmp sgt i32 %conv207, %conv208
  %conv210 = zext i1 %cmp209 to i32
  %conv211 = trunc i32 %conv210 to i8
  store i8 %conv211, ptr %retval, align 1
  br label %return

if.end212:                                        ; preds = %do.body
  %155 = load ptr, ptr %quadrant.addr, align 8
  %156 = load i32, ptr %i1.addr, align 4
  %idxprom213 = zext i32 %156 to i64
  %arrayidx214 = getelementptr inbounds nuw i16, ptr %155, i64 %idxprom213
  %157 = load i16, ptr %arrayidx214, align 2
  store i16 %157, ptr %s1, align 2
  %158 = load ptr, ptr %quadrant.addr, align 8
  %159 = load i32, ptr %i2.addr, align 4
  %idxprom215 = zext i32 %159 to i64
  %arrayidx216 = getelementptr inbounds nuw i16, ptr %158, i64 %idxprom215
  %160 = load i16, ptr %arrayidx216, align 2
  store i16 %160, ptr %s2, align 2
  %161 = load i16, ptr %s1, align 2
  %conv217 = zext i16 %161 to i32
  %162 = load i16, ptr %s2, align 2
  %conv218 = zext i16 %162 to i32
  %cmp219 = icmp ne i32 %conv217, %conv218
  br i1 %cmp219, label %if.then221, label %if.end227

if.then221:                                       ; preds = %if.end212
  %163 = load i16, ptr %s1, align 2
  %conv222 = zext i16 %163 to i32
  %164 = load i16, ptr %s2, align 2
  %conv223 = zext i16 %164 to i32
  %cmp224 = icmp sgt i32 %conv222, %conv223
  %conv225 = zext i1 %cmp224 to i32
  %conv226 = trunc i32 %conv225 to i8
  store i8 %conv226, ptr %retval, align 1
  br label %return

if.end227:                                        ; preds = %if.end212
  %165 = load i32, ptr %i1.addr, align 4
  %inc228 = add i32 %165, 1
  store i32 %inc228, ptr %i1.addr, align 4
  %166 = load i32, ptr %i2.addr, align 4
  %inc229 = add i32 %166, 1
  store i32 %inc229, ptr %i2.addr, align 4
  %167 = load ptr, ptr %block.addr, align 8
  %168 = load i32, ptr %i1.addr, align 4
  %idxprom230 = zext i32 %168 to i64
  %arrayidx231 = getelementptr inbounds nuw i8, ptr %167, i64 %idxprom230
  %169 = load i8, ptr %arrayidx231, align 1
  store i8 %169, ptr %c1, align 1
  %170 = load ptr, ptr %block.addr, align 8
  %171 = load i32, ptr %i2.addr, align 4
  %idxprom232 = zext i32 %171 to i64
  %arrayidx233 = getelementptr inbounds nuw i8, ptr %170, i64 %idxprom232
  %172 = load i8, ptr %arrayidx233, align 1
  store i8 %172, ptr %c2, align 1
  %173 = load i8, ptr %c1, align 1
  %conv234 = zext i8 %173 to i32
  %174 = load i8, ptr %c2, align 1
  %conv235 = zext i8 %174 to i32
  %cmp236 = icmp ne i32 %conv234, %conv235
  br i1 %cmp236, label %if.then238, label %if.end244

if.then238:                                       ; preds = %if.end227
  %175 = load i8, ptr %c1, align 1
  %conv239 = zext i8 %175 to i32
  %176 = load i8, ptr %c2, align 1
  %conv240 = zext i8 %176 to i32
  %cmp241 = icmp sgt i32 %conv239, %conv240
  %conv242 = zext i1 %cmp241 to i32
  %conv243 = trunc i32 %conv242 to i8
  store i8 %conv243, ptr %retval, align 1
  br label %return

if.end244:                                        ; preds = %if.end227
  %177 = load ptr, ptr %quadrant.addr, align 8
  %178 = load i32, ptr %i1.addr, align 4
  %idxprom245 = zext i32 %178 to i64
  %arrayidx246 = getelementptr inbounds nuw i16, ptr %177, i64 %idxprom245
  %179 = load i16, ptr %arrayidx246, align 2
  store i16 %179, ptr %s1, align 2
  %180 = load ptr, ptr %quadrant.addr, align 8
  %181 = load i32, ptr %i2.addr, align 4
  %idxprom247 = zext i32 %181 to i64
  %arrayidx248 = getelementptr inbounds nuw i16, ptr %180, i64 %idxprom247
  %182 = load i16, ptr %arrayidx248, align 2
  store i16 %182, ptr %s2, align 2
  %183 = load i16, ptr %s1, align 2
  %conv249 = zext i16 %183 to i32
  %184 = load i16, ptr %s2, align 2
  %conv250 = zext i16 %184 to i32
  %cmp251 = icmp ne i32 %conv249, %conv250
  br i1 %cmp251, label %if.then253, label %if.end259

if.then253:                                       ; preds = %if.end244
  %185 = load i16, ptr %s1, align 2
  %conv254 = zext i16 %185 to i32
  %186 = load i16, ptr %s2, align 2
  %conv255 = zext i16 %186 to i32
  %cmp256 = icmp sgt i32 %conv254, %conv255
  %conv257 = zext i1 %cmp256 to i32
  %conv258 = trunc i32 %conv257 to i8
  store i8 %conv258, ptr %retval, align 1
  br label %return

if.end259:                                        ; preds = %if.end244
  %187 = load i32, ptr %i1.addr, align 4
  %inc260 = add i32 %187, 1
  store i32 %inc260, ptr %i1.addr, align 4
  %188 = load i32, ptr %i2.addr, align 4
  %inc261 = add i32 %188, 1
  store i32 %inc261, ptr %i2.addr, align 4
  %189 = load ptr, ptr %block.addr, align 8
  %190 = load i32, ptr %i1.addr, align 4
  %idxprom262 = zext i32 %190 to i64
  %arrayidx263 = getelementptr inbounds nuw i8, ptr %189, i64 %idxprom262
  %191 = load i8, ptr %arrayidx263, align 1
  store i8 %191, ptr %c1, align 1
  %192 = load ptr, ptr %block.addr, align 8
  %193 = load i32, ptr %i2.addr, align 4
  %idxprom264 = zext i32 %193 to i64
  %arrayidx265 = getelementptr inbounds nuw i8, ptr %192, i64 %idxprom264
  %194 = load i8, ptr %arrayidx265, align 1
  store i8 %194, ptr %c2, align 1
  %195 = load i8, ptr %c1, align 1
  %conv266 = zext i8 %195 to i32
  %196 = load i8, ptr %c2, align 1
  %conv267 = zext i8 %196 to i32
  %cmp268 = icmp ne i32 %conv266, %conv267
  br i1 %cmp268, label %if.then270, label %if.end276

if.then270:                                       ; preds = %if.end259
  %197 = load i8, ptr %c1, align 1
  %conv271 = zext i8 %197 to i32
  %198 = load i8, ptr %c2, align 1
  %conv272 = zext i8 %198 to i32
  %cmp273 = icmp sgt i32 %conv271, %conv272
  %conv274 = zext i1 %cmp273 to i32
  %conv275 = trunc i32 %conv274 to i8
  store i8 %conv275, ptr %retval, align 1
  br label %return

if.end276:                                        ; preds = %if.end259
  %199 = load ptr, ptr %quadrant.addr, align 8
  %200 = load i32, ptr %i1.addr, align 4
  %idxprom277 = zext i32 %200 to i64
  %arrayidx278 = getelementptr inbounds nuw i16, ptr %199, i64 %idxprom277
  %201 = load i16, ptr %arrayidx278, align 2
  store i16 %201, ptr %s1, align 2
  %202 = load ptr, ptr %quadrant.addr, align 8
  %203 = load i32, ptr %i2.addr, align 4
  %idxprom279 = zext i32 %203 to i64
  %arrayidx280 = getelementptr inbounds nuw i16, ptr %202, i64 %idxprom279
  %204 = load i16, ptr %arrayidx280, align 2
  store i16 %204, ptr %s2, align 2
  %205 = load i16, ptr %s1, align 2
  %conv281 = zext i16 %205 to i32
  %206 = load i16, ptr %s2, align 2
  %conv282 = zext i16 %206 to i32
  %cmp283 = icmp ne i32 %conv281, %conv282
  br i1 %cmp283, label %if.then285, label %if.end291

if.then285:                                       ; preds = %if.end276
  %207 = load i16, ptr %s1, align 2
  %conv286 = zext i16 %207 to i32
  %208 = load i16, ptr %s2, align 2
  %conv287 = zext i16 %208 to i32
  %cmp288 = icmp sgt i32 %conv286, %conv287
  %conv289 = zext i1 %cmp288 to i32
  %conv290 = trunc i32 %conv289 to i8
  store i8 %conv290, ptr %retval, align 1
  br label %return

if.end291:                                        ; preds = %if.end276
  %209 = load i32, ptr %i1.addr, align 4
  %inc292 = add i32 %209, 1
  store i32 %inc292, ptr %i1.addr, align 4
  %210 = load i32, ptr %i2.addr, align 4
  %inc293 = add i32 %210, 1
  store i32 %inc293, ptr %i2.addr, align 4
  %211 = load ptr, ptr %block.addr, align 8
  %212 = load i32, ptr %i1.addr, align 4
  %idxprom294 = zext i32 %212 to i64
  %arrayidx295 = getelementptr inbounds nuw i8, ptr %211, i64 %idxprom294
  %213 = load i8, ptr %arrayidx295, align 1
  store i8 %213, ptr %c1, align 1
  %214 = load ptr, ptr %block.addr, align 8
  %215 = load i32, ptr %i2.addr, align 4
  %idxprom296 = zext i32 %215 to i64
  %arrayidx297 = getelementptr inbounds nuw i8, ptr %214, i64 %idxprom296
  %216 = load i8, ptr %arrayidx297, align 1
  store i8 %216, ptr %c2, align 1
  %217 = load i8, ptr %c1, align 1
  %conv298 = zext i8 %217 to i32
  %218 = load i8, ptr %c2, align 1
  %conv299 = zext i8 %218 to i32
  %cmp300 = icmp ne i32 %conv298, %conv299
  br i1 %cmp300, label %if.then302, label %if.end308

if.then302:                                       ; preds = %if.end291
  %219 = load i8, ptr %c1, align 1
  %conv303 = zext i8 %219 to i32
  %220 = load i8, ptr %c2, align 1
  %conv304 = zext i8 %220 to i32
  %cmp305 = icmp sgt i32 %conv303, %conv304
  %conv306 = zext i1 %cmp305 to i32
  %conv307 = trunc i32 %conv306 to i8
  store i8 %conv307, ptr %retval, align 1
  br label %return

if.end308:                                        ; preds = %if.end291
  %221 = load ptr, ptr %quadrant.addr, align 8
  %222 = load i32, ptr %i1.addr, align 4
  %idxprom309 = zext i32 %222 to i64
  %arrayidx310 = getelementptr inbounds nuw i16, ptr %221, i64 %idxprom309
  %223 = load i16, ptr %arrayidx310, align 2
  store i16 %223, ptr %s1, align 2
  %224 = load ptr, ptr %quadrant.addr, align 8
  %225 = load i32, ptr %i2.addr, align 4
  %idxprom311 = zext i32 %225 to i64
  %arrayidx312 = getelementptr inbounds nuw i16, ptr %224, i64 %idxprom311
  %226 = load i16, ptr %arrayidx312, align 2
  store i16 %226, ptr %s2, align 2
  %227 = load i16, ptr %s1, align 2
  %conv313 = zext i16 %227 to i32
  %228 = load i16, ptr %s2, align 2
  %conv314 = zext i16 %228 to i32
  %cmp315 = icmp ne i32 %conv313, %conv314
  br i1 %cmp315, label %if.then317, label %if.end323

if.then317:                                       ; preds = %if.end308
  %229 = load i16, ptr %s1, align 2
  %conv318 = zext i16 %229 to i32
  %230 = load i16, ptr %s2, align 2
  %conv319 = zext i16 %230 to i32
  %cmp320 = icmp sgt i32 %conv318, %conv319
  %conv321 = zext i1 %cmp320 to i32
  %conv322 = trunc i32 %conv321 to i8
  store i8 %conv322, ptr %retval, align 1
  br label %return

if.end323:                                        ; preds = %if.end308
  %231 = load i32, ptr %i1.addr, align 4
  %inc324 = add i32 %231, 1
  store i32 %inc324, ptr %i1.addr, align 4
  %232 = load i32, ptr %i2.addr, align 4
  %inc325 = add i32 %232, 1
  store i32 %inc325, ptr %i2.addr, align 4
  %233 = load ptr, ptr %block.addr, align 8
  %234 = load i32, ptr %i1.addr, align 4
  %idxprom326 = zext i32 %234 to i64
  %arrayidx327 = getelementptr inbounds nuw i8, ptr %233, i64 %idxprom326
  %235 = load i8, ptr %arrayidx327, align 1
  store i8 %235, ptr %c1, align 1
  %236 = load ptr, ptr %block.addr, align 8
  %237 = load i32, ptr %i2.addr, align 4
  %idxprom328 = zext i32 %237 to i64
  %arrayidx329 = getelementptr inbounds nuw i8, ptr %236, i64 %idxprom328
  %238 = load i8, ptr %arrayidx329, align 1
  store i8 %238, ptr %c2, align 1
  %239 = load i8, ptr %c1, align 1
  %conv330 = zext i8 %239 to i32
  %240 = load i8, ptr %c2, align 1
  %conv331 = zext i8 %240 to i32
  %cmp332 = icmp ne i32 %conv330, %conv331
  br i1 %cmp332, label %if.then334, label %if.end340

if.then334:                                       ; preds = %if.end323
  %241 = load i8, ptr %c1, align 1
  %conv335 = zext i8 %241 to i32
  %242 = load i8, ptr %c2, align 1
  %conv336 = zext i8 %242 to i32
  %cmp337 = icmp sgt i32 %conv335, %conv336
  %conv338 = zext i1 %cmp337 to i32
  %conv339 = trunc i32 %conv338 to i8
  store i8 %conv339, ptr %retval, align 1
  br label %return

if.end340:                                        ; preds = %if.end323
  %243 = load ptr, ptr %quadrant.addr, align 8
  %244 = load i32, ptr %i1.addr, align 4
  %idxprom341 = zext i32 %244 to i64
  %arrayidx342 = getelementptr inbounds nuw i16, ptr %243, i64 %idxprom341
  %245 = load i16, ptr %arrayidx342, align 2
  store i16 %245, ptr %s1, align 2
  %246 = load ptr, ptr %quadrant.addr, align 8
  %247 = load i32, ptr %i2.addr, align 4
  %idxprom343 = zext i32 %247 to i64
  %arrayidx344 = getelementptr inbounds nuw i16, ptr %246, i64 %idxprom343
  %248 = load i16, ptr %arrayidx344, align 2
  store i16 %248, ptr %s2, align 2
  %249 = load i16, ptr %s1, align 2
  %conv345 = zext i16 %249 to i32
  %250 = load i16, ptr %s2, align 2
  %conv346 = zext i16 %250 to i32
  %cmp347 = icmp ne i32 %conv345, %conv346
  br i1 %cmp347, label %if.then349, label %if.end355

if.then349:                                       ; preds = %if.end340
  %251 = load i16, ptr %s1, align 2
  %conv350 = zext i16 %251 to i32
  %252 = load i16, ptr %s2, align 2
  %conv351 = zext i16 %252 to i32
  %cmp352 = icmp sgt i32 %conv350, %conv351
  %conv353 = zext i1 %cmp352 to i32
  %conv354 = trunc i32 %conv353 to i8
  store i8 %conv354, ptr %retval, align 1
  br label %return

if.end355:                                        ; preds = %if.end340
  %253 = load i32, ptr %i1.addr, align 4
  %inc356 = add i32 %253, 1
  store i32 %inc356, ptr %i1.addr, align 4
  %254 = load i32, ptr %i2.addr, align 4
  %inc357 = add i32 %254, 1
  store i32 %inc357, ptr %i2.addr, align 4
  %255 = load ptr, ptr %block.addr, align 8
  %256 = load i32, ptr %i1.addr, align 4
  %idxprom358 = zext i32 %256 to i64
  %arrayidx359 = getelementptr inbounds nuw i8, ptr %255, i64 %idxprom358
  %257 = load i8, ptr %arrayidx359, align 1
  store i8 %257, ptr %c1, align 1
  %258 = load ptr, ptr %block.addr, align 8
  %259 = load i32, ptr %i2.addr, align 4
  %idxprom360 = zext i32 %259 to i64
  %arrayidx361 = getelementptr inbounds nuw i8, ptr %258, i64 %idxprom360
  %260 = load i8, ptr %arrayidx361, align 1
  store i8 %260, ptr %c2, align 1
  %261 = load i8, ptr %c1, align 1
  %conv362 = zext i8 %261 to i32
  %262 = load i8, ptr %c2, align 1
  %conv363 = zext i8 %262 to i32
  %cmp364 = icmp ne i32 %conv362, %conv363
  br i1 %cmp364, label %if.then366, label %if.end372

if.then366:                                       ; preds = %if.end355
  %263 = load i8, ptr %c1, align 1
  %conv367 = zext i8 %263 to i32
  %264 = load i8, ptr %c2, align 1
  %conv368 = zext i8 %264 to i32
  %cmp369 = icmp sgt i32 %conv367, %conv368
  %conv370 = zext i1 %cmp369 to i32
  %conv371 = trunc i32 %conv370 to i8
  store i8 %conv371, ptr %retval, align 1
  br label %return

if.end372:                                        ; preds = %if.end355
  %265 = load ptr, ptr %quadrant.addr, align 8
  %266 = load i32, ptr %i1.addr, align 4
  %idxprom373 = zext i32 %266 to i64
  %arrayidx374 = getelementptr inbounds nuw i16, ptr %265, i64 %idxprom373
  %267 = load i16, ptr %arrayidx374, align 2
  store i16 %267, ptr %s1, align 2
  %268 = load ptr, ptr %quadrant.addr, align 8
  %269 = load i32, ptr %i2.addr, align 4
  %idxprom375 = zext i32 %269 to i64
  %arrayidx376 = getelementptr inbounds nuw i16, ptr %268, i64 %idxprom375
  %270 = load i16, ptr %arrayidx376, align 2
  store i16 %270, ptr %s2, align 2
  %271 = load i16, ptr %s1, align 2
  %conv377 = zext i16 %271 to i32
  %272 = load i16, ptr %s2, align 2
  %conv378 = zext i16 %272 to i32
  %cmp379 = icmp ne i32 %conv377, %conv378
  br i1 %cmp379, label %if.then381, label %if.end387

if.then381:                                       ; preds = %if.end372
  %273 = load i16, ptr %s1, align 2
  %conv382 = zext i16 %273 to i32
  %274 = load i16, ptr %s2, align 2
  %conv383 = zext i16 %274 to i32
  %cmp384 = icmp sgt i32 %conv382, %conv383
  %conv385 = zext i1 %cmp384 to i32
  %conv386 = trunc i32 %conv385 to i8
  store i8 %conv386, ptr %retval, align 1
  br label %return

if.end387:                                        ; preds = %if.end372
  %275 = load i32, ptr %i1.addr, align 4
  %inc388 = add i32 %275, 1
  store i32 %inc388, ptr %i1.addr, align 4
  %276 = load i32, ptr %i2.addr, align 4
  %inc389 = add i32 %276, 1
  store i32 %inc389, ptr %i2.addr, align 4
  %277 = load ptr, ptr %block.addr, align 8
  %278 = load i32, ptr %i1.addr, align 4
  %idxprom390 = zext i32 %278 to i64
  %arrayidx391 = getelementptr inbounds nuw i8, ptr %277, i64 %idxprom390
  %279 = load i8, ptr %arrayidx391, align 1
  store i8 %279, ptr %c1, align 1
  %280 = load ptr, ptr %block.addr, align 8
  %281 = load i32, ptr %i2.addr, align 4
  %idxprom392 = zext i32 %281 to i64
  %arrayidx393 = getelementptr inbounds nuw i8, ptr %280, i64 %idxprom392
  %282 = load i8, ptr %arrayidx393, align 1
  store i8 %282, ptr %c2, align 1
  %283 = load i8, ptr %c1, align 1
  %conv394 = zext i8 %283 to i32
  %284 = load i8, ptr %c2, align 1
  %conv395 = zext i8 %284 to i32
  %cmp396 = icmp ne i32 %conv394, %conv395
  br i1 %cmp396, label %if.then398, label %if.end404

if.then398:                                       ; preds = %if.end387
  %285 = load i8, ptr %c1, align 1
  %conv399 = zext i8 %285 to i32
  %286 = load i8, ptr %c2, align 1
  %conv400 = zext i8 %286 to i32
  %cmp401 = icmp sgt i32 %conv399, %conv400
  %conv402 = zext i1 %cmp401 to i32
  %conv403 = trunc i32 %conv402 to i8
  store i8 %conv403, ptr %retval, align 1
  br label %return

if.end404:                                        ; preds = %if.end387
  %287 = load ptr, ptr %quadrant.addr, align 8
  %288 = load i32, ptr %i1.addr, align 4
  %idxprom405 = zext i32 %288 to i64
  %arrayidx406 = getelementptr inbounds nuw i16, ptr %287, i64 %idxprom405
  %289 = load i16, ptr %arrayidx406, align 2
  store i16 %289, ptr %s1, align 2
  %290 = load ptr, ptr %quadrant.addr, align 8
  %291 = load i32, ptr %i2.addr, align 4
  %idxprom407 = zext i32 %291 to i64
  %arrayidx408 = getelementptr inbounds nuw i16, ptr %290, i64 %idxprom407
  %292 = load i16, ptr %arrayidx408, align 2
  store i16 %292, ptr %s2, align 2
  %293 = load i16, ptr %s1, align 2
  %conv409 = zext i16 %293 to i32
  %294 = load i16, ptr %s2, align 2
  %conv410 = zext i16 %294 to i32
  %cmp411 = icmp ne i32 %conv409, %conv410
  br i1 %cmp411, label %if.then413, label %if.end419

if.then413:                                       ; preds = %if.end404
  %295 = load i16, ptr %s1, align 2
  %conv414 = zext i16 %295 to i32
  %296 = load i16, ptr %s2, align 2
  %conv415 = zext i16 %296 to i32
  %cmp416 = icmp sgt i32 %conv414, %conv415
  %conv417 = zext i1 %cmp416 to i32
  %conv418 = trunc i32 %conv417 to i8
  store i8 %conv418, ptr %retval, align 1
  br label %return

if.end419:                                        ; preds = %if.end404
  %297 = load i32, ptr %i1.addr, align 4
  %inc420 = add i32 %297, 1
  store i32 %inc420, ptr %i1.addr, align 4
  %298 = load i32, ptr %i2.addr, align 4
  %inc421 = add i32 %298, 1
  store i32 %inc421, ptr %i2.addr, align 4
  %299 = load ptr, ptr %block.addr, align 8
  %300 = load i32, ptr %i1.addr, align 4
  %idxprom422 = zext i32 %300 to i64
  %arrayidx423 = getelementptr inbounds nuw i8, ptr %299, i64 %idxprom422
  %301 = load i8, ptr %arrayidx423, align 1
  store i8 %301, ptr %c1, align 1
  %302 = load ptr, ptr %block.addr, align 8
  %303 = load i32, ptr %i2.addr, align 4
  %idxprom424 = zext i32 %303 to i64
  %arrayidx425 = getelementptr inbounds nuw i8, ptr %302, i64 %idxprom424
  %304 = load i8, ptr %arrayidx425, align 1
  store i8 %304, ptr %c2, align 1
  %305 = load i8, ptr %c1, align 1
  %conv426 = zext i8 %305 to i32
  %306 = load i8, ptr %c2, align 1
  %conv427 = zext i8 %306 to i32
  %cmp428 = icmp ne i32 %conv426, %conv427
  br i1 %cmp428, label %if.then430, label %if.end436

if.then430:                                       ; preds = %if.end419
  %307 = load i8, ptr %c1, align 1
  %conv431 = zext i8 %307 to i32
  %308 = load i8, ptr %c2, align 1
  %conv432 = zext i8 %308 to i32
  %cmp433 = icmp sgt i32 %conv431, %conv432
  %conv434 = zext i1 %cmp433 to i32
  %conv435 = trunc i32 %conv434 to i8
  store i8 %conv435, ptr %retval, align 1
  br label %return

if.end436:                                        ; preds = %if.end419
  %309 = load ptr, ptr %quadrant.addr, align 8
  %310 = load i32, ptr %i1.addr, align 4
  %idxprom437 = zext i32 %310 to i64
  %arrayidx438 = getelementptr inbounds nuw i16, ptr %309, i64 %idxprom437
  %311 = load i16, ptr %arrayidx438, align 2
  store i16 %311, ptr %s1, align 2
  %312 = load ptr, ptr %quadrant.addr, align 8
  %313 = load i32, ptr %i2.addr, align 4
  %idxprom439 = zext i32 %313 to i64
  %arrayidx440 = getelementptr inbounds nuw i16, ptr %312, i64 %idxprom439
  %314 = load i16, ptr %arrayidx440, align 2
  store i16 %314, ptr %s2, align 2
  %315 = load i16, ptr %s1, align 2
  %conv441 = zext i16 %315 to i32
  %316 = load i16, ptr %s2, align 2
  %conv442 = zext i16 %316 to i32
  %cmp443 = icmp ne i32 %conv441, %conv442
  br i1 %cmp443, label %if.then445, label %if.end451

if.then445:                                       ; preds = %if.end436
  %317 = load i16, ptr %s1, align 2
  %conv446 = zext i16 %317 to i32
  %318 = load i16, ptr %s2, align 2
  %conv447 = zext i16 %318 to i32
  %cmp448 = icmp sgt i32 %conv446, %conv447
  %conv449 = zext i1 %cmp448 to i32
  %conv450 = trunc i32 %conv449 to i8
  store i8 %conv450, ptr %retval, align 1
  br label %return

if.end451:                                        ; preds = %if.end436
  %319 = load i32, ptr %i1.addr, align 4
  %inc452 = add i32 %319, 1
  store i32 %inc452, ptr %i1.addr, align 4
  %320 = load i32, ptr %i2.addr, align 4
  %inc453 = add i32 %320, 1
  store i32 %inc453, ptr %i2.addr, align 4
  %321 = load i32, ptr %i1.addr, align 4
  %322 = load i32, ptr %nblock.addr, align 4
  %cmp454 = icmp uge i32 %321, %322
  br i1 %cmp454, label %if.then456, label %if.end457

if.then456:                                       ; preds = %if.end451
  %323 = load i32, ptr %nblock.addr, align 4
  %324 = load i32, ptr %i1.addr, align 4
  %sub = sub i32 %324, %323
  store i32 %sub, ptr %i1.addr, align 4
  br label %if.end457

if.end457:                                        ; preds = %if.then456, %if.end451
  %325 = load i32, ptr %i2.addr, align 4
  %326 = load i32, ptr %nblock.addr, align 4
  %cmp458 = icmp uge i32 %325, %326
  br i1 %cmp458, label %if.then460, label %if.end462

if.then460:                                       ; preds = %if.end457
  %327 = load i32, ptr %nblock.addr, align 4
  %328 = load i32, ptr %i2.addr, align 4
  %sub461 = sub i32 %328, %327
  store i32 %sub461, ptr %i2.addr, align 4
  br label %if.end462

if.end462:                                        ; preds = %if.then460, %if.end457
  %329 = load i32, ptr %k, align 4
  %sub463 = sub nsw i32 %329, 8
  store i32 %sub463, ptr %k, align 4
  %330 = load ptr, ptr %budget.addr, align 8
  %331 = load i32, ptr %330, align 4
  %dec = add nsw i32 %331, -1
  store i32 %dec, ptr %330, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end462
  %332 = load i32, ptr %k, align 4
  %cmp464 = icmp sge i32 %332, 0
  br i1 %cmp464, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %if.then445, %if.then430, %if.then413, %if.then398, %if.then381, %if.then366, %if.then349, %if.then334, %if.then317, %if.then302, %if.then285, %if.then270, %if.then253, %if.then238, %if.then221, %if.then206, %if.then189, %if.then172, %if.then155, %if.then138, %if.then121, %if.then104, %if.then87, %if.then70, %if.then53, %if.then36, %if.then19, %if.then
  %333 = load i8, ptr %retval, align 1
  ret i8 %333
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
