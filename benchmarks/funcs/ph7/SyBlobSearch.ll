; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyBlobSearch(ptr noundef %pBlob, i32 noundef %nLen, ptr noundef %pPattern, i32 noundef %pLen, ptr noundef %pOfft) #0 {
entry:
  %retval = alloca i32, align 4
  %pBlob.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pPattern.addr = alloca ptr, align 8
  %pLen.addr = alloca i32, align 4
  %pOfft.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %rc = alloca i32, align 4
  %r1 = alloca ptr, align 8
  %r2 = alloca ptr, align 8
  %LEN = alloca i32, align 4
  %r176 = alloca ptr, align 8
  %r277 = alloca ptr, align 8
  %LEN78 = alloca i32, align 4
  %r1163 = alloca ptr, align 8
  %r2164 = alloca ptr, align 8
  %LEN165 = alloca i32, align 4
  %r1250 = alloca ptr, align 8
  %r2251 = alloca ptr, align 8
  %LEN252 = alloca i32, align 4
  store ptr %pBlob, ptr %pBlob.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pPattern, ptr %pPattern.addr, align 8
  store i32 %pLen, ptr %pLen.addr, align 4
  store ptr %pOfft, ptr %pOfft.addr, align 8
  %0 = load ptr, ptr %pBlob.addr, align 8
  store ptr %0, ptr %zIn, align 8
  %1 = load i32, ptr %pLen.addr, align 4
  %2 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %zIn, align 8
  %4 = load i32, ptr %nLen.addr, align 4
  %5 = load i32, ptr %pLen.addr, align 4
  %sub = sub i32 %4, %5
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end331, %if.end
  %6 = load ptr, ptr %zIn, align 8
  %7 = load ptr, ptr %zEnd, align 8
  %cmp1 = icmp ugt ptr %6, %7
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.cond
  br label %for.end333

if.end3:                                          ; preds = %for.cond
  %8 = load ptr, ptr %zIn, align 8
  store ptr %8, ptr %r1, align 8
  %9 = load ptr, ptr %pPattern.addr, align 8
  store ptr %9, ptr %r2, align 8
  %10 = load i32, ptr %pLen.addr, align 4
  store i32 %10, ptr %LEN, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %if.end53, %if.end3
  %11 = load i32, ptr %LEN, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %for.cond4
  br label %for.end

if.end6:                                          ; preds = %for.cond4
  %12 = load ptr, ptr %r1, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %13 to i32
  %14 = load ptr, ptr %r2, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %15 to i32
  %cmp10 = icmp ne i32 %conv, %conv9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  br label %for.end

if.end13:                                         ; preds = %if.end6
  %16 = load ptr, ptr %r1, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %r1, align 8
  %17 = load ptr, ptr %r2, align 8
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr14, ptr %r2, align 8
  %18 = load i32, ptr %LEN, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %LEN, align 4
  %19 = load i32, ptr %LEN, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  br label %for.end

if.end17:                                         ; preds = %if.end13
  %20 = load ptr, ptr %r1, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %21 to i32
  %22 = load ptr, ptr %r2, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %23 to i32
  %cmp22 = icmp ne i32 %conv19, %conv21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end17
  br label %for.end

if.end25:                                         ; preds = %if.end17
  %24 = load ptr, ptr %r1, align 8
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %incdec.ptr26, ptr %r1, align 8
  %25 = load ptr, ptr %r2, align 8
  %incdec.ptr27 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr27, ptr %r2, align 8
  %26 = load i32, ptr %LEN, align 4
  %dec28 = add i32 %26, -1
  store i32 %dec28, ptr %LEN, align 4
  %27 = load i32, ptr %LEN, align 4
  %tobool29 = icmp ne i32 %27, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end25
  br label %for.end

if.end31:                                         ; preds = %if.end25
  %28 = load ptr, ptr %r1, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %30 = load ptr, ptr %r2, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %31 to i32
  %cmp36 = icmp ne i32 %conv33, %conv35
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end31
  br label %for.end

if.end39:                                         ; preds = %if.end31
  %32 = load ptr, ptr %r1, align 8
  %incdec.ptr40 = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %incdec.ptr40, ptr %r1, align 8
  %33 = load ptr, ptr %r2, align 8
  %incdec.ptr41 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %incdec.ptr41, ptr %r2, align 8
  %34 = load i32, ptr %LEN, align 4
  %dec42 = add i32 %34, -1
  store i32 %dec42, ptr %LEN, align 4
  %35 = load i32, ptr %LEN, align 4
  %tobool43 = icmp ne i32 %35, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end39
  br label %for.end

if.end45:                                         ; preds = %if.end39
  %36 = load ptr, ptr %r1, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %37 to i32
  %38 = load ptr, ptr %r2, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %39 to i32
  %cmp50 = icmp ne i32 %conv47, %conv49
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end45
  br label %for.end

if.end53:                                         ; preds = %if.end45
  %40 = load ptr, ptr %r1, align 8
  %incdec.ptr54 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %incdec.ptr54, ptr %r1, align 8
  %41 = load ptr, ptr %r2, align 8
  %incdec.ptr55 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %incdec.ptr55, ptr %r2, align 8
  %42 = load i32, ptr %LEN, align 4
  %dec56 = add i32 %42, -1
  store i32 %dec56, ptr %LEN, align 4
  br label %for.cond4

for.end:                                          ; preds = %if.then52, %if.then44, %if.then38, %if.then30, %if.then24, %if.then16, %if.then12, %if.then5
  %43 = load i32, ptr %LEN, align 4
  %tobool57 = icmp ne i32 %43, 0
  br i1 %tobool57, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %44 = load ptr, ptr %r1, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %45 to i32
  %46 = load ptr, ptr %r2, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %47 to i32
  %sub62 = sub nsw i32 %conv59, %conv61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub62, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %48 = load i32, ptr %rc, align 4
  %cmp63 = icmp eq i32 %48, 0
  br i1 %cmp63, label %if.then65, label %if.end70

if.then65:                                        ; preds = %cond.end
  %49 = load ptr, ptr %pOfft.addr, align 8
  %tobool66 = icmp ne ptr %49, null
  br i1 %tobool66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.then65
  %50 = load ptr, ptr %zIn, align 8
  %51 = load ptr, ptr %pBlob.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %50 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv68 = trunc i64 %sub.ptr.sub to i32
  %52 = load ptr, ptr %pOfft.addr, align 8
  store i32 %conv68, ptr %52, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.then65
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %cond.end
  %53 = load ptr, ptr %zIn, align 8
  %incdec.ptr71 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %incdec.ptr71, ptr %zIn, align 8
  %54 = load ptr, ptr %zIn, align 8
  %55 = load ptr, ptr %zEnd, align 8
  %cmp72 = icmp ugt ptr %54, %55
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  br label %for.end333

if.end75:                                         ; preds = %if.end70
  %56 = load ptr, ptr %zIn, align 8
  store ptr %56, ptr %r176, align 8
  %57 = load ptr, ptr %pPattern.addr, align 8
  store ptr %57, ptr %r277, align 8
  %58 = load i32, ptr %pLen.addr, align 4
  store i32 %58, ptr %LEN78, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %if.end132, %if.end75
  %59 = load i32, ptr %LEN78, align 4
  %tobool80 = icmp ne i32 %59, 0
  br i1 %tobool80, label %if.end82, label %if.then81

if.then81:                                        ; preds = %for.cond79
  br label %for.end136

if.end82:                                         ; preds = %for.cond79
  %60 = load ptr, ptr %r176, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %60, i64 0
  %61 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %61 to i32
  %62 = load ptr, ptr %r277, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %63 to i32
  %cmp87 = icmp ne i32 %conv84, %conv86
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end82
  br label %for.end136

if.end90:                                         ; preds = %if.end82
  %64 = load ptr, ptr %r176, align 8
  %incdec.ptr91 = getelementptr inbounds nuw i8, ptr %64, i32 1
  store ptr %incdec.ptr91, ptr %r176, align 8
  %65 = load ptr, ptr %r277, align 8
  %incdec.ptr92 = getelementptr inbounds nuw i8, ptr %65, i32 1
  store ptr %incdec.ptr92, ptr %r277, align 8
  %66 = load i32, ptr %LEN78, align 4
  %dec93 = add i32 %66, -1
  store i32 %dec93, ptr %LEN78, align 4
  %67 = load i32, ptr %LEN78, align 4
  %tobool94 = icmp ne i32 %67, 0
  br i1 %tobool94, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.end90
  br label %for.end136

if.end96:                                         ; preds = %if.end90
  %68 = load ptr, ptr %r176, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %68, i64 0
  %69 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %69 to i32
  %70 = load ptr, ptr %r277, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %70, i64 0
  %71 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %71 to i32
  %cmp101 = icmp ne i32 %conv98, %conv100
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end96
  br label %for.end136

if.end104:                                        ; preds = %if.end96
  %72 = load ptr, ptr %r176, align 8
  %incdec.ptr105 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %incdec.ptr105, ptr %r176, align 8
  %73 = load ptr, ptr %r277, align 8
  %incdec.ptr106 = getelementptr inbounds nuw i8, ptr %73, i32 1
  store ptr %incdec.ptr106, ptr %r277, align 8
  %74 = load i32, ptr %LEN78, align 4
  %dec107 = add i32 %74, -1
  store i32 %dec107, ptr %LEN78, align 4
  %75 = load i32, ptr %LEN78, align 4
  %tobool108 = icmp ne i32 %75, 0
  br i1 %tobool108, label %if.end110, label %if.then109

if.then109:                                       ; preds = %if.end104
  br label %for.end136

if.end110:                                        ; preds = %if.end104
  %76 = load ptr, ptr %r176, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %77 to i32
  %78 = load ptr, ptr %r277, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %78, i64 0
  %79 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %79 to i32
  %cmp115 = icmp ne i32 %conv112, %conv114
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end110
  br label %for.end136

if.end118:                                        ; preds = %if.end110
  %80 = load ptr, ptr %r176, align 8
  %incdec.ptr119 = getelementptr inbounds nuw i8, ptr %80, i32 1
  store ptr %incdec.ptr119, ptr %r176, align 8
  %81 = load ptr, ptr %r277, align 8
  %incdec.ptr120 = getelementptr inbounds nuw i8, ptr %81, i32 1
  store ptr %incdec.ptr120, ptr %r277, align 8
  %82 = load i32, ptr %LEN78, align 4
  %dec121 = add i32 %82, -1
  store i32 %dec121, ptr %LEN78, align 4
  %83 = load i32, ptr %LEN78, align 4
  %tobool122 = icmp ne i32 %83, 0
  br i1 %tobool122, label %if.end124, label %if.then123

if.then123:                                       ; preds = %if.end118
  br label %for.end136

if.end124:                                        ; preds = %if.end118
  %84 = load ptr, ptr %r176, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %84, i64 0
  %85 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %85 to i32
  %86 = load ptr, ptr %r277, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %86, i64 0
  %87 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %87 to i32
  %cmp129 = icmp ne i32 %conv126, %conv128
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end124
  br label %for.end136

if.end132:                                        ; preds = %if.end124
  %88 = load ptr, ptr %r176, align 8
  %incdec.ptr133 = getelementptr inbounds nuw i8, ptr %88, i32 1
  store ptr %incdec.ptr133, ptr %r176, align 8
  %89 = load ptr, ptr %r277, align 8
  %incdec.ptr134 = getelementptr inbounds nuw i8, ptr %89, i32 1
  store ptr %incdec.ptr134, ptr %r277, align 8
  %90 = load i32, ptr %LEN78, align 4
  %dec135 = add i32 %90, -1
  store i32 %dec135, ptr %LEN78, align 4
  br label %for.cond79

for.end136:                                       ; preds = %if.then131, %if.then123, %if.then117, %if.then109, %if.then103, %if.then95, %if.then89, %if.then81
  %91 = load i32, ptr %LEN78, align 4
  %tobool137 = icmp ne i32 %91, 0
  br i1 %tobool137, label %cond.false139, label %cond.true138

cond.true138:                                     ; preds = %for.end136
  br label %cond.end145

cond.false139:                                    ; preds = %for.end136
  %92 = load ptr, ptr %r176, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %92, i64 0
  %93 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %93 to i32
  %94 = load ptr, ptr %r277, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %94, i64 0
  %95 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %95 to i32
  %sub144 = sub nsw i32 %conv141, %conv143
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false139, %cond.true138
  %cond146 = phi i32 [ 0, %cond.true138 ], [ %sub144, %cond.false139 ]
  store i32 %cond146, ptr %rc, align 4
  %96 = load i32, ptr %rc, align 4
  %cmp147 = icmp eq i32 %96, 0
  br i1 %cmp147, label %if.then149, label %if.end157

if.then149:                                       ; preds = %cond.end145
  %97 = load ptr, ptr %pOfft.addr, align 8
  %tobool150 = icmp ne ptr %97, null
  br i1 %tobool150, label %if.then151, label %if.end156

if.then151:                                       ; preds = %if.then149
  %98 = load ptr, ptr %zIn, align 8
  %99 = load ptr, ptr %pBlob.addr, align 8
  %sub.ptr.lhs.cast152 = ptrtoint ptr %98 to i64
  %sub.ptr.rhs.cast153 = ptrtoint ptr %99 to i64
  %sub.ptr.sub154 = sub i64 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %conv155 = trunc i64 %sub.ptr.sub154 to i32
  %100 = load ptr, ptr %pOfft.addr, align 8
  store i32 %conv155, ptr %100, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then151, %if.then149
  store i32 0, ptr %retval, align 4
  br label %return

if.end157:                                        ; preds = %cond.end145
  %101 = load ptr, ptr %zIn, align 8
  %incdec.ptr158 = getelementptr inbounds nuw i8, ptr %101, i32 1
  store ptr %incdec.ptr158, ptr %zIn, align 8
  %102 = load ptr, ptr %zIn, align 8
  %103 = load ptr, ptr %zEnd, align 8
  %cmp159 = icmp ugt ptr %102, %103
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end157
  br label %for.end333

if.end162:                                        ; preds = %if.end157
  %104 = load ptr, ptr %zIn, align 8
  store ptr %104, ptr %r1163, align 8
  %105 = load ptr, ptr %pPattern.addr, align 8
  store ptr %105, ptr %r2164, align 8
  %106 = load i32, ptr %pLen.addr, align 4
  store i32 %106, ptr %LEN165, align 4
  br label %for.cond166

for.cond166:                                      ; preds = %if.end219, %if.end162
  %107 = load i32, ptr %LEN165, align 4
  %tobool167 = icmp ne i32 %107, 0
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %for.cond166
  br label %for.end223

if.end169:                                        ; preds = %for.cond166
  %108 = load ptr, ptr %r1163, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %108, i64 0
  %109 = load i8, ptr %arrayidx170, align 1
  %conv171 = zext i8 %109 to i32
  %110 = load ptr, ptr %r2164, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %110, i64 0
  %111 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %111 to i32
  %cmp174 = icmp ne i32 %conv171, %conv173
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end169
  br label %for.end223

if.end177:                                        ; preds = %if.end169
  %112 = load ptr, ptr %r1163, align 8
  %incdec.ptr178 = getelementptr inbounds nuw i8, ptr %112, i32 1
  store ptr %incdec.ptr178, ptr %r1163, align 8
  %113 = load ptr, ptr %r2164, align 8
  %incdec.ptr179 = getelementptr inbounds nuw i8, ptr %113, i32 1
  store ptr %incdec.ptr179, ptr %r2164, align 8
  %114 = load i32, ptr %LEN165, align 4
  %dec180 = add i32 %114, -1
  store i32 %dec180, ptr %LEN165, align 4
  %115 = load i32, ptr %LEN165, align 4
  %tobool181 = icmp ne i32 %115, 0
  br i1 %tobool181, label %if.end183, label %if.then182

if.then182:                                       ; preds = %if.end177
  br label %for.end223

if.end183:                                        ; preds = %if.end177
  %116 = load ptr, ptr %r1163, align 8
  %arrayidx184 = getelementptr inbounds i8, ptr %116, i64 0
  %117 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %117 to i32
  %118 = load ptr, ptr %r2164, align 8
  %arrayidx186 = getelementptr inbounds i8, ptr %118, i64 0
  %119 = load i8, ptr %arrayidx186, align 1
  %conv187 = zext i8 %119 to i32
  %cmp188 = icmp ne i32 %conv185, %conv187
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.end183
  br label %for.end223

if.end191:                                        ; preds = %if.end183
  %120 = load ptr, ptr %r1163, align 8
  %incdec.ptr192 = getelementptr inbounds nuw i8, ptr %120, i32 1
  store ptr %incdec.ptr192, ptr %r1163, align 8
  %121 = load ptr, ptr %r2164, align 8
  %incdec.ptr193 = getelementptr inbounds nuw i8, ptr %121, i32 1
  store ptr %incdec.ptr193, ptr %r2164, align 8
  %122 = load i32, ptr %LEN165, align 4
  %dec194 = add i32 %122, -1
  store i32 %dec194, ptr %LEN165, align 4
  %123 = load i32, ptr %LEN165, align 4
  %tobool195 = icmp ne i32 %123, 0
  br i1 %tobool195, label %if.end197, label %if.then196

if.then196:                                       ; preds = %if.end191
  br label %for.end223

if.end197:                                        ; preds = %if.end191
  %124 = load ptr, ptr %r1163, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %124, i64 0
  %125 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %125 to i32
  %126 = load ptr, ptr %r2164, align 8
  %arrayidx200 = getelementptr inbounds i8, ptr %126, i64 0
  %127 = load i8, ptr %arrayidx200, align 1
  %conv201 = zext i8 %127 to i32
  %cmp202 = icmp ne i32 %conv199, %conv201
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %if.end197
  br label %for.end223

if.end205:                                        ; preds = %if.end197
  %128 = load ptr, ptr %r1163, align 8
  %incdec.ptr206 = getelementptr inbounds nuw i8, ptr %128, i32 1
  store ptr %incdec.ptr206, ptr %r1163, align 8
  %129 = load ptr, ptr %r2164, align 8
  %incdec.ptr207 = getelementptr inbounds nuw i8, ptr %129, i32 1
  store ptr %incdec.ptr207, ptr %r2164, align 8
  %130 = load i32, ptr %LEN165, align 4
  %dec208 = add i32 %130, -1
  store i32 %dec208, ptr %LEN165, align 4
  %131 = load i32, ptr %LEN165, align 4
  %tobool209 = icmp ne i32 %131, 0
  br i1 %tobool209, label %if.end211, label %if.then210

if.then210:                                       ; preds = %if.end205
  br label %for.end223

if.end211:                                        ; preds = %if.end205
  %132 = load ptr, ptr %r1163, align 8
  %arrayidx212 = getelementptr inbounds i8, ptr %132, i64 0
  %133 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %133 to i32
  %134 = load ptr, ptr %r2164, align 8
  %arrayidx214 = getelementptr inbounds i8, ptr %134, i64 0
  %135 = load i8, ptr %arrayidx214, align 1
  %conv215 = zext i8 %135 to i32
  %cmp216 = icmp ne i32 %conv213, %conv215
  br i1 %cmp216, label %if.then218, label %if.end219

if.then218:                                       ; preds = %if.end211
  br label %for.end223

if.end219:                                        ; preds = %if.end211
  %136 = load ptr, ptr %r1163, align 8
  %incdec.ptr220 = getelementptr inbounds nuw i8, ptr %136, i32 1
  store ptr %incdec.ptr220, ptr %r1163, align 8
  %137 = load ptr, ptr %r2164, align 8
  %incdec.ptr221 = getelementptr inbounds nuw i8, ptr %137, i32 1
  store ptr %incdec.ptr221, ptr %r2164, align 8
  %138 = load i32, ptr %LEN165, align 4
  %dec222 = add i32 %138, -1
  store i32 %dec222, ptr %LEN165, align 4
  br label %for.cond166

for.end223:                                       ; preds = %if.then218, %if.then210, %if.then204, %if.then196, %if.then190, %if.then182, %if.then176, %if.then168
  %139 = load i32, ptr %LEN165, align 4
  %tobool224 = icmp ne i32 %139, 0
  br i1 %tobool224, label %cond.false226, label %cond.true225

cond.true225:                                     ; preds = %for.end223
  br label %cond.end232

cond.false226:                                    ; preds = %for.end223
  %140 = load ptr, ptr %r1163, align 8
  %arrayidx227 = getelementptr inbounds i8, ptr %140, i64 0
  %141 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %141 to i32
  %142 = load ptr, ptr %r2164, align 8
  %arrayidx229 = getelementptr inbounds i8, ptr %142, i64 0
  %143 = load i8, ptr %arrayidx229, align 1
  %conv230 = zext i8 %143 to i32
  %sub231 = sub nsw i32 %conv228, %conv230
  br label %cond.end232

cond.end232:                                      ; preds = %cond.false226, %cond.true225
  %cond233 = phi i32 [ 0, %cond.true225 ], [ %sub231, %cond.false226 ]
  store i32 %cond233, ptr %rc, align 4
  %144 = load i32, ptr %rc, align 4
  %cmp234 = icmp eq i32 %144, 0
  br i1 %cmp234, label %if.then236, label %if.end244

if.then236:                                       ; preds = %cond.end232
  %145 = load ptr, ptr %pOfft.addr, align 8
  %tobool237 = icmp ne ptr %145, null
  br i1 %tobool237, label %if.then238, label %if.end243

if.then238:                                       ; preds = %if.then236
  %146 = load ptr, ptr %zIn, align 8
  %147 = load ptr, ptr %pBlob.addr, align 8
  %sub.ptr.lhs.cast239 = ptrtoint ptr %146 to i64
  %sub.ptr.rhs.cast240 = ptrtoint ptr %147 to i64
  %sub.ptr.sub241 = sub i64 %sub.ptr.lhs.cast239, %sub.ptr.rhs.cast240
  %conv242 = trunc i64 %sub.ptr.sub241 to i32
  %148 = load ptr, ptr %pOfft.addr, align 8
  store i32 %conv242, ptr %148, align 4
  br label %if.end243

if.end243:                                        ; preds = %if.then238, %if.then236
  store i32 0, ptr %retval, align 4
  br label %return

if.end244:                                        ; preds = %cond.end232
  %149 = load ptr, ptr %zIn, align 8
  %incdec.ptr245 = getelementptr inbounds nuw i8, ptr %149, i32 1
  store ptr %incdec.ptr245, ptr %zIn, align 8
  %150 = load ptr, ptr %zIn, align 8
  %151 = load ptr, ptr %zEnd, align 8
  %cmp246 = icmp ugt ptr %150, %151
  br i1 %cmp246, label %if.then248, label %if.end249

if.then248:                                       ; preds = %if.end244
  br label %for.end333

if.end249:                                        ; preds = %if.end244
  %152 = load ptr, ptr %zIn, align 8
  store ptr %152, ptr %r1250, align 8
  %153 = load ptr, ptr %pPattern.addr, align 8
  store ptr %153, ptr %r2251, align 8
  %154 = load i32, ptr %pLen.addr, align 4
  store i32 %154, ptr %LEN252, align 4
  br label %for.cond253

for.cond253:                                      ; preds = %if.end306, %if.end249
  %155 = load i32, ptr %LEN252, align 4
  %tobool254 = icmp ne i32 %155, 0
  br i1 %tobool254, label %if.end256, label %if.then255

if.then255:                                       ; preds = %for.cond253
  br label %for.end310

if.end256:                                        ; preds = %for.cond253
  %156 = load ptr, ptr %r1250, align 8
  %arrayidx257 = getelementptr inbounds i8, ptr %156, i64 0
  %157 = load i8, ptr %arrayidx257, align 1
  %conv258 = zext i8 %157 to i32
  %158 = load ptr, ptr %r2251, align 8
  %arrayidx259 = getelementptr inbounds i8, ptr %158, i64 0
  %159 = load i8, ptr %arrayidx259, align 1
  %conv260 = zext i8 %159 to i32
  %cmp261 = icmp ne i32 %conv258, %conv260
  br i1 %cmp261, label %if.then263, label %if.end264

if.then263:                                       ; preds = %if.end256
  br label %for.end310

if.end264:                                        ; preds = %if.end256
  %160 = load ptr, ptr %r1250, align 8
  %incdec.ptr265 = getelementptr inbounds nuw i8, ptr %160, i32 1
  store ptr %incdec.ptr265, ptr %r1250, align 8
  %161 = load ptr, ptr %r2251, align 8
  %incdec.ptr266 = getelementptr inbounds nuw i8, ptr %161, i32 1
  store ptr %incdec.ptr266, ptr %r2251, align 8
  %162 = load i32, ptr %LEN252, align 4
  %dec267 = add i32 %162, -1
  store i32 %dec267, ptr %LEN252, align 4
  %163 = load i32, ptr %LEN252, align 4
  %tobool268 = icmp ne i32 %163, 0
  br i1 %tobool268, label %if.end270, label %if.then269

if.then269:                                       ; preds = %if.end264
  br label %for.end310

if.end270:                                        ; preds = %if.end264
  %164 = load ptr, ptr %r1250, align 8
  %arrayidx271 = getelementptr inbounds i8, ptr %164, i64 0
  %165 = load i8, ptr %arrayidx271, align 1
  %conv272 = zext i8 %165 to i32
  %166 = load ptr, ptr %r2251, align 8
  %arrayidx273 = getelementptr inbounds i8, ptr %166, i64 0
  %167 = load i8, ptr %arrayidx273, align 1
  %conv274 = zext i8 %167 to i32
  %cmp275 = icmp ne i32 %conv272, %conv274
  br i1 %cmp275, label %if.then277, label %if.end278

if.then277:                                       ; preds = %if.end270
  br label %for.end310

if.end278:                                        ; preds = %if.end270
  %168 = load ptr, ptr %r1250, align 8
  %incdec.ptr279 = getelementptr inbounds nuw i8, ptr %168, i32 1
  store ptr %incdec.ptr279, ptr %r1250, align 8
  %169 = load ptr, ptr %r2251, align 8
  %incdec.ptr280 = getelementptr inbounds nuw i8, ptr %169, i32 1
  store ptr %incdec.ptr280, ptr %r2251, align 8
  %170 = load i32, ptr %LEN252, align 4
  %dec281 = add i32 %170, -1
  store i32 %dec281, ptr %LEN252, align 4
  %171 = load i32, ptr %LEN252, align 4
  %tobool282 = icmp ne i32 %171, 0
  br i1 %tobool282, label %if.end284, label %if.then283

if.then283:                                       ; preds = %if.end278
  br label %for.end310

if.end284:                                        ; preds = %if.end278
  %172 = load ptr, ptr %r1250, align 8
  %arrayidx285 = getelementptr inbounds i8, ptr %172, i64 0
  %173 = load i8, ptr %arrayidx285, align 1
  %conv286 = zext i8 %173 to i32
  %174 = load ptr, ptr %r2251, align 8
  %arrayidx287 = getelementptr inbounds i8, ptr %174, i64 0
  %175 = load i8, ptr %arrayidx287, align 1
  %conv288 = zext i8 %175 to i32
  %cmp289 = icmp ne i32 %conv286, %conv288
  br i1 %cmp289, label %if.then291, label %if.end292

if.then291:                                       ; preds = %if.end284
  br label %for.end310

if.end292:                                        ; preds = %if.end284
  %176 = load ptr, ptr %r1250, align 8
  %incdec.ptr293 = getelementptr inbounds nuw i8, ptr %176, i32 1
  store ptr %incdec.ptr293, ptr %r1250, align 8
  %177 = load ptr, ptr %r2251, align 8
  %incdec.ptr294 = getelementptr inbounds nuw i8, ptr %177, i32 1
  store ptr %incdec.ptr294, ptr %r2251, align 8
  %178 = load i32, ptr %LEN252, align 4
  %dec295 = add i32 %178, -1
  store i32 %dec295, ptr %LEN252, align 4
  %179 = load i32, ptr %LEN252, align 4
  %tobool296 = icmp ne i32 %179, 0
  br i1 %tobool296, label %if.end298, label %if.then297

if.then297:                                       ; preds = %if.end292
  br label %for.end310

if.end298:                                        ; preds = %if.end292
  %180 = load ptr, ptr %r1250, align 8
  %arrayidx299 = getelementptr inbounds i8, ptr %180, i64 0
  %181 = load i8, ptr %arrayidx299, align 1
  %conv300 = zext i8 %181 to i32
  %182 = load ptr, ptr %r2251, align 8
  %arrayidx301 = getelementptr inbounds i8, ptr %182, i64 0
  %183 = load i8, ptr %arrayidx301, align 1
  %conv302 = zext i8 %183 to i32
  %cmp303 = icmp ne i32 %conv300, %conv302
  br i1 %cmp303, label %if.then305, label %if.end306

if.then305:                                       ; preds = %if.end298
  br label %for.end310

if.end306:                                        ; preds = %if.end298
  %184 = load ptr, ptr %r1250, align 8
  %incdec.ptr307 = getelementptr inbounds nuw i8, ptr %184, i32 1
  store ptr %incdec.ptr307, ptr %r1250, align 8
  %185 = load ptr, ptr %r2251, align 8
  %incdec.ptr308 = getelementptr inbounds nuw i8, ptr %185, i32 1
  store ptr %incdec.ptr308, ptr %r2251, align 8
  %186 = load i32, ptr %LEN252, align 4
  %dec309 = add i32 %186, -1
  store i32 %dec309, ptr %LEN252, align 4
  br label %for.cond253

for.end310:                                       ; preds = %if.then305, %if.then297, %if.then291, %if.then283, %if.then277, %if.then269, %if.then263, %if.then255
  %187 = load i32, ptr %LEN252, align 4
  %tobool311 = icmp ne i32 %187, 0
  br i1 %tobool311, label %cond.false313, label %cond.true312

cond.true312:                                     ; preds = %for.end310
  br label %cond.end319

cond.false313:                                    ; preds = %for.end310
  %188 = load ptr, ptr %r1250, align 8
  %arrayidx314 = getelementptr inbounds i8, ptr %188, i64 0
  %189 = load i8, ptr %arrayidx314, align 1
  %conv315 = zext i8 %189 to i32
  %190 = load ptr, ptr %r2251, align 8
  %arrayidx316 = getelementptr inbounds i8, ptr %190, i64 0
  %191 = load i8, ptr %arrayidx316, align 1
  %conv317 = zext i8 %191 to i32
  %sub318 = sub nsw i32 %conv315, %conv317
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false313, %cond.true312
  %cond320 = phi i32 [ 0, %cond.true312 ], [ %sub318, %cond.false313 ]
  store i32 %cond320, ptr %rc, align 4
  %192 = load i32, ptr %rc, align 4
  %cmp321 = icmp eq i32 %192, 0
  br i1 %cmp321, label %if.then323, label %if.end331

if.then323:                                       ; preds = %cond.end319
  %193 = load ptr, ptr %pOfft.addr, align 8
  %tobool324 = icmp ne ptr %193, null
  br i1 %tobool324, label %if.then325, label %if.end330

if.then325:                                       ; preds = %if.then323
  %194 = load ptr, ptr %zIn, align 8
  %195 = load ptr, ptr %pBlob.addr, align 8
  %sub.ptr.lhs.cast326 = ptrtoint ptr %194 to i64
  %sub.ptr.rhs.cast327 = ptrtoint ptr %195 to i64
  %sub.ptr.sub328 = sub i64 %sub.ptr.lhs.cast326, %sub.ptr.rhs.cast327
  %conv329 = trunc i64 %sub.ptr.sub328 to i32
  %196 = load ptr, ptr %pOfft.addr, align 8
  store i32 %conv329, ptr %196, align 4
  br label %if.end330

if.end330:                                        ; preds = %if.then325, %if.then323
  store i32 0, ptr %retval, align 4
  br label %return

if.end331:                                        ; preds = %cond.end319
  %197 = load ptr, ptr %zIn, align 8
  %incdec.ptr332 = getelementptr inbounds nuw i8, ptr %197, i32 1
  store ptr %incdec.ptr332, ptr %zIn, align 8
  br label %for.cond

for.end333:                                       ; preds = %if.then248, %if.then161, %if.then74, %if.then2
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end333, %if.end330, %if.end243, %if.end156, %if.end69, %if.then
  %198 = load i32, ptr %retval, align 4
  ret i32 %198
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
