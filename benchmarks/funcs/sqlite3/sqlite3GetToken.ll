; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@aiClass = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3GetToken(ptr noundef %z, ptr noundef %tokenType) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %tokenType.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %delim = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %tokenType, ptr %tokenType.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %1 = load i8, ptr %0, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr @aiClass, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 7, label %sw.bb
    i32 11, label %sw.bb6
    i32 17, label %sw.bb22
    i32 18, label %sw.bb23
    i32 19, label %sw.bb24
    i32 20, label %sw.bb25
    i32 21, label %sw.bb26
    i32 16, label %sw.bb27
    i32 22, label %sw.bb64
    i32 14, label %sw.bb65
    i32 12, label %sw.bb70
    i32 13, label %sw.bb84
    i32 15, label %sw.bb95
    i32 10, label %sw.bb102
    i32 23, label %sw.bb109
    i32 24, label %sw.bb110
    i32 25, label %sw.bb111
    i32 8, label %sw.bb112
    i32 26, label %sw.bb149
    i32 3, label %sw.bb158
    i32 9, label %sw.bb290
    i32 6, label %sw.bb309
    i32 4, label %sw.bb322
    i32 5, label %sw.bb322
    i32 1, label %sw.bb392
    i32 0, label %sw.bb416
    i32 2, label %sw.bb465
    i32 28, label %sw.bb466
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load ptr, ptr %z.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 %idxprom1
  %5 = load i8, ptr %arrayidx2, align 1
  %idxprom3 = zext i8 %5 to i64
  %arrayidx4 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom3
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %and = and i32 %conv5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %tokenType.addr, align 8
  store i32 177, ptr %8, align 4
  %9 = load i32, ptr %i, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  %10 = load ptr, ptr %z.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv8, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb6
  store i32 2, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc19, %if.then
  %12 = load ptr, ptr %z.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %12, i64 %idxprom11
  %14 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %14 to i32
  store i32 %conv13, ptr %c, align 4
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond10
  %15 = load i32, ptr %c, align 4
  %cmp16 = icmp ne i32 %15, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond10
  %16 = phi i1 [ false, %for.cond10 ], [ %cmp16, %land.rhs ]
  br i1 %16, label %for.body18, label %for.end21

for.body18:                                       ; preds = %land.end
  br label %for.inc19

for.inc19:                                        ; preds = %for.body18
  %17 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond10, !llvm.loop !8

for.end21:                                        ; preds = %land.end
  %18 = load ptr, ptr %tokenType.addr, align 8
  store i32 177, ptr %18, align 4
  %19 = load i32, ptr %i, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb6
  %20 = load ptr, ptr %tokenType.addr, align 8
  store i32 104, ptr %20, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb22:                                          ; preds = %entry
  %21 = load ptr, ptr %tokenType.addr, align 8
  store i32 22, ptr %21, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb23:                                          ; preds = %entry
  %22 = load ptr, ptr %tokenType.addr, align 8
  store i32 23, ptr %22, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb24:                                          ; preds = %entry
  %23 = load ptr, ptr %tokenType.addr, align 8
  store i32 1, ptr %23, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb25:                                          ; preds = %entry
  %24 = load ptr, ptr %tokenType.addr, align 8
  store i32 103, ptr %24, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb26:                                          ; preds = %entry
  %25 = load ptr, ptr %tokenType.addr, align 8
  store i32 105, ptr %25, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb27:                                          ; preds = %entry
  %26 = load ptr, ptr %z.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %27 to i32
  %cmp30 = icmp ne i32 %conv29, 42
  br i1 %cmp30, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb27
  %28 = load ptr, ptr %z.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %sw.bb27
  %30 = load ptr, ptr %tokenType.addr, align 8
  store i32 106, ptr %30, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %lor.lhs.false
  store i32 3, ptr %i, align 4
  %31 = load ptr, ptr %z.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %32 to i32
  store i32 %conv39, ptr %c, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc57, %if.end37
  %33 = load i32, ptr %c, align 4
  %cmp41 = icmp ne i32 %33, 42
  br i1 %cmp41, label %land.rhs49, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %for.cond40
  %34 = load ptr, ptr %z.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %34, i64 %idxprom44
  %36 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %36 to i32
  %cmp47 = icmp ne i32 %conv46, 47
  br i1 %cmp47, label %land.rhs49, label %land.end55

land.rhs49:                                       ; preds = %lor.lhs.false43, %for.cond40
  %37 = load ptr, ptr %z.addr, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %38 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %37, i64 %idxprom50
  %39 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %39 to i32
  store i32 %conv52, ptr %c, align 4
  %cmp53 = icmp ne i32 %conv52, 0
  br label %land.end55

land.end55:                                       ; preds = %land.rhs49, %lor.lhs.false43
  %40 = phi i1 [ false, %lor.lhs.false43 ], [ %cmp53, %land.rhs49 ]
  br i1 %40, label %for.body56, label %for.end59

for.body56:                                       ; preds = %land.end55
  br label %for.inc57

for.inc57:                                        ; preds = %for.body56
  %41 = load i32, ptr %i, align 4
  %inc58 = add nsw i32 %41, 1
  store i32 %inc58, ptr %i, align 4
  br label %for.cond40, !llvm.loop !9

for.end59:                                        ; preds = %land.end55
  %42 = load i32, ptr %c, align 4
  %tobool60 = icmp ne i32 %42, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %for.end59
  %43 = load i32, ptr %i, align 4
  %inc62 = add nsw i32 %43, 1
  store i32 %inc62, ptr %i, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %for.end59
  %44 = load ptr, ptr %tokenType.addr, align 8
  store i32 177, ptr %44, align 4
  %45 = load i32, ptr %i, align 4
  store i32 %45, ptr %retval, align 4
  br label %return

sw.bb64:                                          ; preds = %entry
  %46 = load ptr, ptr %tokenType.addr, align 8
  store i32 107, ptr %46, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb65:                                          ; preds = %entry
  %47 = load ptr, ptr %tokenType.addr, align 8
  store i32 53, ptr %47, align 4
  %48 = load ptr, ptr %z.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %48, i64 1
  %49 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %49 to i32
  %cmp68 = icmp eq i32 %conv67, 61
  %conv69 = zext i1 %cmp68 to i32
  %add = add nsw i32 1, %conv69
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb70:                                          ; preds = %entry
  %50 = load ptr, ptr %z.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %50, i64 1
  %51 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %51 to i32
  store i32 %conv72, ptr %c, align 4
  %cmp73 = icmp eq i32 %conv72, 61
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %sw.bb70
  %52 = load ptr, ptr %tokenType.addr, align 8
  store i32 55, ptr %52, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.bb70
  %53 = load i32, ptr %c, align 4
  %cmp76 = icmp eq i32 %53, 62
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.else
  %54 = load ptr, ptr %tokenType.addr, align 8
  store i32 52, ptr %54, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.else79:                                        ; preds = %if.else
  %55 = load i32, ptr %c, align 4
  %cmp80 = icmp eq i32 %55, 60
  br i1 %cmp80, label %if.then82, label %if.else83

if.then82:                                        ; preds = %if.else79
  %56 = load ptr, ptr %tokenType.addr, align 8
  store i32 101, ptr %56, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.else83:                                        ; preds = %if.else79
  %57 = load ptr, ptr %tokenType.addr, align 8
  store i32 56, ptr %57, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb84:                                          ; preds = %entry
  %58 = load ptr, ptr %z.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %58, i64 1
  %59 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %59 to i32
  store i32 %conv86, ptr %c, align 4
  %cmp87 = icmp eq i32 %conv86, 61
  br i1 %cmp87, label %if.then89, label %if.else90

if.then89:                                        ; preds = %sw.bb84
  %60 = load ptr, ptr %tokenType.addr, align 8
  store i32 57, ptr %60, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.else90:                                        ; preds = %sw.bb84
  %61 = load i32, ptr %c, align 4
  %cmp91 = icmp eq i32 %61, 62
  br i1 %cmp91, label %if.then93, label %if.else94

if.then93:                                        ; preds = %if.else90
  %62 = load ptr, ptr %tokenType.addr, align 8
  store i32 102, ptr %62, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.else94:                                        ; preds = %if.else90
  %63 = load ptr, ptr %tokenType.addr, align 8
  store i32 54, ptr %63, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb95:                                          ; preds = %entry
  %64 = load ptr, ptr %z.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %64, i64 1
  %65 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %65 to i32
  %cmp98 = icmp ne i32 %conv97, 61
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %sw.bb95
  %66 = load ptr, ptr %tokenType.addr, align 8
  store i32 178, ptr %66, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else101:                                       ; preds = %sw.bb95
  %67 = load ptr, ptr %tokenType.addr, align 8
  store i32 52, ptr %67, align 4
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb102:                                         ; preds = %entry
  %68 = load ptr, ptr %z.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %68, i64 1
  %69 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %69 to i32
  %cmp105 = icmp ne i32 %conv104, 124
  br i1 %cmp105, label %if.then107, label %if.else108

if.then107:                                       ; preds = %sw.bb102
  %70 = load ptr, ptr %tokenType.addr, align 8
  store i32 100, ptr %70, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else108:                                       ; preds = %sw.bb102
  %71 = load ptr, ptr %tokenType.addr, align 8
  store i32 108, ptr %71, align 4
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb109:                                         ; preds = %entry
  %72 = load ptr, ptr %tokenType.addr, align 8
  store i32 26, ptr %72, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb110:                                         ; preds = %entry
  %73 = load ptr, ptr %tokenType.addr, align 8
  store i32 99, ptr %73, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb111:                                         ; preds = %entry
  %74 = load ptr, ptr %tokenType.addr, align 8
  store i32 110, ptr %74, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb112:                                         ; preds = %entry
  %75 = load ptr, ptr %z.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %75, i64 0
  %76 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %76 to i32
  store i32 %conv114, ptr %delim, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc136, %sw.bb112
  %77 = load ptr, ptr %z.addr, align 8
  %78 = load i32, ptr %i, align 4
  %idxprom116 = sext i32 %78 to i64
  %arrayidx117 = getelementptr inbounds i8, ptr %77, i64 %idxprom116
  %79 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %79 to i32
  store i32 %conv118, ptr %c, align 4
  %cmp119 = icmp ne i32 %conv118, 0
  br i1 %cmp119, label %for.body121, label %for.end138

for.body121:                                      ; preds = %for.cond115
  %80 = load i32, ptr %c, align 4
  %81 = load i32, ptr %delim, align 4
  %cmp122 = icmp eq i32 %80, %81
  br i1 %cmp122, label %if.then124, label %if.end135

if.then124:                                       ; preds = %for.body121
  %82 = load ptr, ptr %z.addr, align 8
  %83 = load i32, ptr %i, align 4
  %add125 = add nsw i32 %83, 1
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds i8, ptr %82, i64 %idxprom126
  %84 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %84 to i32
  %85 = load i32, ptr %delim, align 4
  %cmp129 = icmp eq i32 %conv128, %85
  br i1 %cmp129, label %if.then131, label %if.else133

if.then131:                                       ; preds = %if.then124
  %86 = load i32, ptr %i, align 4
  %inc132 = add nsw i32 %86, 1
  store i32 %inc132, ptr %i, align 4
  br label %if.end134

if.else133:                                       ; preds = %if.then124
  br label %for.end138

if.end134:                                        ; preds = %if.then131
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %for.body121
  br label %for.inc136

for.inc136:                                       ; preds = %if.end135
  %87 = load i32, ptr %i, align 4
  %inc137 = add nsw i32 %87, 1
  store i32 %inc137, ptr %i, align 4
  br label %for.cond115, !llvm.loop !10

for.end138:                                       ; preds = %if.else133, %for.cond115
  %88 = load i32, ptr %c, align 4
  %cmp139 = icmp eq i32 %88, 39
  br i1 %cmp139, label %if.then141, label %if.else143

if.then141:                                       ; preds = %for.end138
  %89 = load ptr, ptr %tokenType.addr, align 8
  store i32 113, ptr %89, align 4
  %90 = load i32, ptr %i, align 4
  %add142 = add nsw i32 %90, 1
  store i32 %add142, ptr %retval, align 4
  br label %return

if.else143:                                       ; preds = %for.end138
  %91 = load i32, ptr %c, align 4
  %cmp144 = icmp ne i32 %91, 0
  br i1 %cmp144, label %if.then146, label %if.else148

if.then146:                                       ; preds = %if.else143
  %92 = load ptr, ptr %tokenType.addr, align 8
  store i32 59, ptr %92, align 4
  %93 = load i32, ptr %i, align 4
  %add147 = add nsw i32 %93, 1
  store i32 %add147, ptr %retval, align 4
  br label %return

if.else148:                                       ; preds = %if.else143
  %94 = load ptr, ptr %tokenType.addr, align 8
  store i32 178, ptr %94, align 4
  %95 = load i32, ptr %i, align 4
  store i32 %95, ptr %retval, align 4
  br label %return

sw.bb149:                                         ; preds = %entry
  %96 = load ptr, ptr %z.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %96, i64 1
  %97 = load i8, ptr %arrayidx150, align 1
  %idxprom151 = zext i8 %97 to i64
  %arrayidx152 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom151
  %98 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %98 to i32
  %and154 = and i32 %conv153, 4
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.end157, label %if.then156

if.then156:                                       ; preds = %sw.bb149
  %99 = load ptr, ptr %tokenType.addr, align 8
  store i32 137, ptr %99, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end157:                                        ; preds = %sw.bb149
  br label %sw.bb158

sw.bb158:                                         ; preds = %if.end157, %entry
  %100 = load ptr, ptr %tokenType.addr, align 8
  store i32 150, ptr %100, align 4
  %101 = load ptr, ptr %z.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %101, i64 0
  %102 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %102 to i32
  %cmp161 = icmp eq i32 %conv160, 48
  br i1 %cmp161, label %land.lhs.true, label %if.end192

land.lhs.true:                                    ; preds = %sw.bb158
  %103 = load ptr, ptr %z.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %103, i64 1
  %104 = load i8, ptr %arrayidx163, align 1
  %conv164 = zext i8 %104 to i32
  %cmp165 = icmp eq i32 %conv164, 120
  br i1 %cmp165, label %land.lhs.true172, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %land.lhs.true
  %105 = load ptr, ptr %z.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %105, i64 1
  %106 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %106 to i32
  %cmp170 = icmp eq i32 %conv169, 88
  br i1 %cmp170, label %land.lhs.true172, label %if.end192

land.lhs.true172:                                 ; preds = %lor.lhs.false167, %land.lhs.true
  %107 = load ptr, ptr %z.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, ptr %107, i64 2
  %108 = load i8, ptr %arrayidx173, align 1
  %idxprom174 = zext i8 %108 to i64
  %arrayidx175 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom174
  %109 = load i8, ptr %arrayidx175, align 1
  %conv176 = zext i8 %109 to i32
  %and177 = and i32 %conv176, 8
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.then179, label %if.end192

if.then179:                                       ; preds = %land.lhs.true172
  store i32 3, ptr %i, align 4
  br label %for.cond180

for.cond180:                                      ; preds = %for.inc189, %if.then179
  %110 = load ptr, ptr %z.addr, align 8
  %111 = load i32, ptr %i, align 4
  %idxprom181 = sext i32 %111 to i64
  %arrayidx182 = getelementptr inbounds i8, ptr %110, i64 %idxprom181
  %112 = load i8, ptr %arrayidx182, align 1
  %idxprom183 = zext i8 %112 to i64
  %arrayidx184 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom183
  %113 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %113 to i32
  %and186 = and i32 %conv185, 8
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %for.body188, label %for.end191

for.body188:                                      ; preds = %for.cond180
  br label %for.inc189

for.inc189:                                       ; preds = %for.body188
  %114 = load i32, ptr %i, align 4
  %inc190 = add nsw i32 %114, 1
  store i32 %inc190, ptr %i, align 4
  br label %for.cond180, !llvm.loop !11

for.end191:                                       ; preds = %for.cond180
  %115 = load i32, ptr %i, align 4
  store i32 %115, ptr %retval, align 4
  br label %return

if.end192:                                        ; preds = %land.lhs.true172, %lor.lhs.false167, %sw.bb158
  store i32 0, ptr %i, align 4
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc202, %if.end192
  %116 = load ptr, ptr %z.addr, align 8
  %117 = load i32, ptr %i, align 4
  %idxprom194 = sext i32 %117 to i64
  %arrayidx195 = getelementptr inbounds i8, ptr %116, i64 %idxprom194
  %118 = load i8, ptr %arrayidx195, align 1
  %idxprom196 = zext i8 %118 to i64
  %arrayidx197 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom196
  %119 = load i8, ptr %arrayidx197, align 1
  %conv198 = zext i8 %119 to i32
  %and199 = and i32 %conv198, 4
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %for.body201, label %for.end204

for.body201:                                      ; preds = %for.cond193
  br label %for.inc202

for.inc202:                                       ; preds = %for.body201
  %120 = load i32, ptr %i, align 4
  %inc203 = add nsw i32 %120, 1
  store i32 %inc203, ptr %i, align 4
  br label %for.cond193, !llvm.loop !12

for.end204:                                       ; preds = %for.cond193
  %121 = load ptr, ptr %z.addr, align 8
  %122 = load i32, ptr %i, align 4
  %idxprom205 = sext i32 %122 to i64
  %arrayidx206 = getelementptr inbounds i8, ptr %121, i64 %idxprom205
  %123 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %123 to i32
  %cmp208 = icmp eq i32 %conv207, 46
  br i1 %cmp208, label %if.then210, label %if.end220

if.then210:                                       ; preds = %for.end204
  %124 = load i32, ptr %i, align 4
  %inc211 = add nsw i32 %124, 1
  store i32 %inc211, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then210
  %125 = load ptr, ptr %z.addr, align 8
  %126 = load i32, ptr %i, align 4
  %idxprom212 = sext i32 %126 to i64
  %arrayidx213 = getelementptr inbounds i8, ptr %125, i64 %idxprom212
  %127 = load i8, ptr %arrayidx213, align 1
  %idxprom214 = zext i8 %127 to i64
  %arrayidx215 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom214
  %128 = load i8, ptr %arrayidx215, align 1
  %conv216 = zext i8 %128 to i32
  %and217 = and i32 %conv216, 4
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %129 = load i32, ptr %i, align 4
  %inc219 = add nsw i32 %129, 1
  store i32 %inc219, ptr %i, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %130 = load ptr, ptr %tokenType.addr, align 8
  store i32 148, ptr %130, align 4
  br label %if.end220

if.end220:                                        ; preds = %while.end, %for.end204
  %131 = load ptr, ptr %z.addr, align 8
  %132 = load i32, ptr %i, align 4
  %idxprom221 = sext i32 %132 to i64
  %arrayidx222 = getelementptr inbounds i8, ptr %131, i64 %idxprom221
  %133 = load i8, ptr %arrayidx222, align 1
  %conv223 = zext i8 %133 to i32
  %cmp224 = icmp eq i32 %conv223, 101
  br i1 %cmp224, label %land.lhs.true232, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %if.end220
  %134 = load ptr, ptr %z.addr, align 8
  %135 = load i32, ptr %i, align 4
  %idxprom227 = sext i32 %135 to i64
  %arrayidx228 = getelementptr inbounds i8, ptr %134, i64 %idxprom227
  %136 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %136 to i32
  %cmp230 = icmp eq i32 %conv229, 69
  br i1 %cmp230, label %land.lhs.true232, label %if.end277

land.lhs.true232:                                 ; preds = %lor.lhs.false226, %if.end220
  %137 = load ptr, ptr %z.addr, align 8
  %138 = load i32, ptr %i, align 4
  %add233 = add nsw i32 %138, 1
  %idxprom234 = sext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %137, i64 %idxprom234
  %139 = load i8, ptr %arrayidx235, align 1
  %idxprom236 = zext i8 %139 to i64
  %arrayidx237 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom236
  %140 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %140 to i32
  %and239 = and i32 %conv238, 4
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %if.then264, label %lor.lhs.false241

lor.lhs.false241:                                 ; preds = %land.lhs.true232
  %141 = load ptr, ptr %z.addr, align 8
  %142 = load i32, ptr %i, align 4
  %add242 = add nsw i32 %142, 1
  %idxprom243 = sext i32 %add242 to i64
  %arrayidx244 = getelementptr inbounds i8, ptr %141, i64 %idxprom243
  %143 = load i8, ptr %arrayidx244, align 1
  %conv245 = zext i8 %143 to i32
  %cmp246 = icmp eq i32 %conv245, 43
  br i1 %cmp246, label %land.lhs.true255, label %lor.lhs.false248

lor.lhs.false248:                                 ; preds = %lor.lhs.false241
  %144 = load ptr, ptr %z.addr, align 8
  %145 = load i32, ptr %i, align 4
  %add249 = add nsw i32 %145, 1
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds i8, ptr %144, i64 %idxprom250
  %146 = load i8, ptr %arrayidx251, align 1
  %conv252 = zext i8 %146 to i32
  %cmp253 = icmp eq i32 %conv252, 45
  br i1 %cmp253, label %land.lhs.true255, label %if.end277

land.lhs.true255:                                 ; preds = %lor.lhs.false248, %lor.lhs.false241
  %147 = load ptr, ptr %z.addr, align 8
  %148 = load i32, ptr %i, align 4
  %add256 = add nsw i32 %148, 2
  %idxprom257 = sext i32 %add256 to i64
  %arrayidx258 = getelementptr inbounds i8, ptr %147, i64 %idxprom257
  %149 = load i8, ptr %arrayidx258, align 1
  %idxprom259 = zext i8 %149 to i64
  %arrayidx260 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom259
  %150 = load i8, ptr %arrayidx260, align 1
  %conv261 = zext i8 %150 to i32
  %and262 = and i32 %conv261, 4
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %if.then264, label %if.end277

if.then264:                                       ; preds = %land.lhs.true255, %land.lhs.true232
  %151 = load i32, ptr %i, align 4
  %add265 = add nsw i32 %151, 2
  store i32 %add265, ptr %i, align 4
  br label %while.cond266

while.cond266:                                    ; preds = %while.body274, %if.then264
  %152 = load ptr, ptr %z.addr, align 8
  %153 = load i32, ptr %i, align 4
  %idxprom267 = sext i32 %153 to i64
  %arrayidx268 = getelementptr inbounds i8, ptr %152, i64 %idxprom267
  %154 = load i8, ptr %arrayidx268, align 1
  %idxprom269 = zext i8 %154 to i64
  %arrayidx270 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom269
  %155 = load i8, ptr %arrayidx270, align 1
  %conv271 = zext i8 %155 to i32
  %and272 = and i32 %conv271, 4
  %tobool273 = icmp ne i32 %and272, 0
  br i1 %tobool273, label %while.body274, label %while.end276

while.body274:                                    ; preds = %while.cond266
  %156 = load i32, ptr %i, align 4
  %inc275 = add nsw i32 %156, 1
  store i32 %inc275, ptr %i, align 4
  br label %while.cond266, !llvm.loop !14

while.end276:                                     ; preds = %while.cond266
  %157 = load ptr, ptr %tokenType.addr, align 8
  store i32 148, ptr %157, align 4
  br label %if.end277

if.end277:                                        ; preds = %while.end276, %land.lhs.true255, %lor.lhs.false248, %lor.lhs.false226
  br label %while.cond278

while.cond278:                                    ; preds = %while.body287, %if.end277
  %158 = load ptr, ptr %z.addr, align 8
  %159 = load i32, ptr %i, align 4
  %idxprom279 = sext i32 %159 to i64
  %arrayidx280 = getelementptr inbounds i8, ptr %158, i64 %idxprom279
  %160 = load i8, ptr %arrayidx280, align 1
  %idxprom281 = zext i8 %160 to i64
  %arrayidx282 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom281
  %161 = load i8, ptr %arrayidx282, align 1
  %conv283 = zext i8 %161 to i32
  %and284 = and i32 %conv283, 70
  %cmp285 = icmp ne i32 %and284, 0
  br i1 %cmp285, label %while.body287, label %while.end289

while.body287:                                    ; preds = %while.cond278
  %162 = load ptr, ptr %tokenType.addr, align 8
  store i32 178, ptr %162, align 4
  %163 = load i32, ptr %i, align 4
  %inc288 = add nsw i32 %163, 1
  store i32 %inc288, ptr %i, align 4
  br label %while.cond278, !llvm.loop !15

while.end289:                                     ; preds = %while.cond278
  %164 = load i32, ptr %i, align 4
  store i32 %164, ptr %retval, align 4
  br label %return

sw.bb290:                                         ; preds = %entry
  store i32 1, ptr %i, align 4
  %165 = load ptr, ptr %z.addr, align 8
  %arrayidx291 = getelementptr inbounds i8, ptr %165, i64 0
  %166 = load i8, ptr %arrayidx291, align 1
  %conv292 = zext i8 %166 to i32
  store i32 %conv292, ptr %c, align 4
  br label %for.cond293

for.cond293:                                      ; preds = %for.inc304, %sw.bb290
  %167 = load i32, ptr %c, align 4
  %cmp294 = icmp ne i32 %167, 93
  br i1 %cmp294, label %land.rhs296, label %land.end302

land.rhs296:                                      ; preds = %for.cond293
  %168 = load ptr, ptr %z.addr, align 8
  %169 = load i32, ptr %i, align 4
  %idxprom297 = sext i32 %169 to i64
  %arrayidx298 = getelementptr inbounds i8, ptr %168, i64 %idxprom297
  %170 = load i8, ptr %arrayidx298, align 1
  %conv299 = zext i8 %170 to i32
  store i32 %conv299, ptr %c, align 4
  %cmp300 = icmp ne i32 %conv299, 0
  br label %land.end302

land.end302:                                      ; preds = %land.rhs296, %for.cond293
  %171 = phi i1 [ false, %for.cond293 ], [ %cmp300, %land.rhs296 ]
  br i1 %171, label %for.body303, label %for.end306

for.body303:                                      ; preds = %land.end302
  br label %for.inc304

for.inc304:                                       ; preds = %for.body303
  %172 = load i32, ptr %i, align 4
  %inc305 = add nsw i32 %172, 1
  store i32 %inc305, ptr %i, align 4
  br label %for.cond293, !llvm.loop !16

for.end306:                                       ; preds = %land.end302
  %173 = load i32, ptr %c, align 4
  %cmp307 = icmp eq i32 %173, 93
  %174 = zext i1 %cmp307 to i64
  %cond = select i1 %cmp307, i32 59, i32 178
  %175 = load ptr, ptr %tokenType.addr, align 8
  store i32 %cond, ptr %175, align 4
  %176 = load i32, ptr %i, align 4
  store i32 %176, ptr %retval, align 4
  br label %return

sw.bb309:                                         ; preds = %entry
  %177 = load ptr, ptr %tokenType.addr, align 8
  store i32 151, ptr %177, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond310

for.cond310:                                      ; preds = %for.inc319, %sw.bb309
  %178 = load ptr, ptr %z.addr, align 8
  %179 = load i32, ptr %i, align 4
  %idxprom311 = sext i32 %179 to i64
  %arrayidx312 = getelementptr inbounds i8, ptr %178, i64 %idxprom311
  %180 = load i8, ptr %arrayidx312, align 1
  %idxprom313 = zext i8 %180 to i64
  %arrayidx314 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom313
  %181 = load i8, ptr %arrayidx314, align 1
  %conv315 = zext i8 %181 to i32
  %and316 = and i32 %conv315, 4
  %tobool317 = icmp ne i32 %and316, 0
  br i1 %tobool317, label %for.body318, label %for.end321

for.body318:                                      ; preds = %for.cond310
  br label %for.inc319

for.inc319:                                       ; preds = %for.body318
  %182 = load i32, ptr %i, align 4
  %inc320 = add nsw i32 %182, 1
  store i32 %inc320, ptr %i, align 4
  br label %for.cond310, !llvm.loop !17

for.end321:                                       ; preds = %for.cond310
  %183 = load i32, ptr %i, align 4
  store i32 %183, ptr %retval, align 4
  br label %return

sw.bb322:                                         ; preds = %entry, %entry
  store i32 0, ptr %n, align 4
  %184 = load ptr, ptr %tokenType.addr, align 8
  store i32 151, ptr %184, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond323

for.cond323:                                      ; preds = %for.inc385, %sw.bb322
  %185 = load ptr, ptr %z.addr, align 8
  %186 = load i32, ptr %i, align 4
  %idxprom324 = sext i32 %186 to i64
  %arrayidx325 = getelementptr inbounds i8, ptr %185, i64 %idxprom324
  %187 = load i8, ptr %arrayidx325, align 1
  %conv326 = zext i8 %187 to i32
  store i32 %conv326, ptr %c, align 4
  %cmp327 = icmp ne i32 %conv326, 0
  br i1 %cmp327, label %for.body329, label %for.end387

for.body329:                                      ; preds = %for.cond323
  %188 = load i32, ptr %c, align 4
  %conv330 = trunc i32 %188 to i8
  %idxprom331 = zext i8 %conv330 to i64
  %arrayidx332 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom331
  %189 = load i8, ptr %arrayidx332, align 1
  %conv333 = zext i8 %189 to i32
  %and334 = and i32 %conv333, 70
  %cmp335 = icmp ne i32 %and334, 0
  br i1 %cmp335, label %if.then337, label %if.else339

if.then337:                                       ; preds = %for.body329
  %190 = load i32, ptr %n, align 4
  %inc338 = add nsw i32 %190, 1
  store i32 %inc338, ptr %n, align 4
  br label %if.end384

if.else339:                                       ; preds = %for.body329
  %191 = load i32, ptr %c, align 4
  %cmp340 = icmp eq i32 %191, 40
  br i1 %cmp340, label %land.lhs.true342, label %if.else369

land.lhs.true342:                                 ; preds = %if.else339
  %192 = load i32, ptr %n, align 4
  %cmp343 = icmp sgt i32 %192, 0
  br i1 %cmp343, label %if.then345, label %if.else369

if.then345:                                       ; preds = %land.lhs.true342
  br label %do.body

do.body:                                          ; preds = %land.end362, %if.then345
  %193 = load i32, ptr %i, align 4
  %inc346 = add nsw i32 %193, 1
  store i32 %inc346, ptr %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %194 = load ptr, ptr %z.addr, align 8
  %195 = load i32, ptr %i, align 4
  %idxprom347 = sext i32 %195 to i64
  %arrayidx348 = getelementptr inbounds i8, ptr %194, i64 %idxprom347
  %196 = load i8, ptr %arrayidx348, align 1
  %conv349 = zext i8 %196 to i32
  store i32 %conv349, ptr %c, align 4
  %cmp350 = icmp ne i32 %conv349, 0
  br i1 %cmp350, label %land.lhs.true352, label %land.end362

land.lhs.true352:                                 ; preds = %do.cond
  %197 = load i32, ptr %c, align 4
  %conv353 = trunc i32 %197 to i8
  %idxprom354 = zext i8 %conv353 to i64
  %arrayidx355 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom354
  %198 = load i8, ptr %arrayidx355, align 1
  %conv356 = zext i8 %198 to i32
  %and357 = and i32 %conv356, 1
  %tobool358 = icmp ne i32 %and357, 0
  br i1 %tobool358, label %land.end362, label %land.rhs359

land.rhs359:                                      ; preds = %land.lhs.true352
  %199 = load i32, ptr %c, align 4
  %cmp360 = icmp ne i32 %199, 41
  br label %land.end362

land.end362:                                      ; preds = %land.rhs359, %land.lhs.true352, %do.cond
  %200 = phi i1 [ false, %land.lhs.true352 ], [ false, %do.cond ], [ %cmp360, %land.rhs359 ]
  br i1 %200, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %land.end362
  %201 = load i32, ptr %c, align 4
  %cmp363 = icmp eq i32 %201, 41
  br i1 %cmp363, label %if.then365, label %if.else367

if.then365:                                       ; preds = %do.end
  %202 = load i32, ptr %i, align 4
  %inc366 = add nsw i32 %202, 1
  store i32 %inc366, ptr %i, align 4
  br label %if.end368

if.else367:                                       ; preds = %do.end
  %203 = load ptr, ptr %tokenType.addr, align 8
  store i32 178, ptr %203, align 4
  br label %if.end368

if.end368:                                        ; preds = %if.else367, %if.then365
  br label %for.end387

if.else369:                                       ; preds = %land.lhs.true342, %if.else339
  %204 = load i32, ptr %c, align 4
  %cmp370 = icmp eq i32 %204, 58
  br i1 %cmp370, label %land.lhs.true372, label %if.else381

land.lhs.true372:                                 ; preds = %if.else369
  %205 = load ptr, ptr %z.addr, align 8
  %206 = load i32, ptr %i, align 4
  %add373 = add nsw i32 %206, 1
  %idxprom374 = sext i32 %add373 to i64
  %arrayidx375 = getelementptr inbounds i8, ptr %205, i64 %idxprom374
  %207 = load i8, ptr %arrayidx375, align 1
  %conv376 = zext i8 %207 to i32
  %cmp377 = icmp eq i32 %conv376, 58
  br i1 %cmp377, label %if.then379, label %if.else381

if.then379:                                       ; preds = %land.lhs.true372
  %208 = load i32, ptr %i, align 4
  %inc380 = add nsw i32 %208, 1
  store i32 %inc380, ptr %i, align 4
  br label %if.end382

if.else381:                                       ; preds = %land.lhs.true372, %if.else369
  br label %for.end387

if.end382:                                        ; preds = %if.then379
  br label %if.end383

if.end383:                                        ; preds = %if.end382
  br label %if.end384

if.end384:                                        ; preds = %if.end383, %if.then337
  br label %for.inc385

for.inc385:                                       ; preds = %if.end384
  %209 = load i32, ptr %i, align 4
  %inc386 = add nsw i32 %209, 1
  store i32 %inc386, ptr %i, align 4
  br label %for.cond323, !llvm.loop !19

for.end387:                                       ; preds = %if.else381, %if.end368, %for.cond323
  %210 = load i32, ptr %n, align 4
  %cmp388 = icmp eq i32 %210, 0
  br i1 %cmp388, label %if.then390, label %if.end391

if.then390:                                       ; preds = %for.end387
  %211 = load ptr, ptr %tokenType.addr, align 8
  store i32 178, ptr %211, align 4
  br label %if.end391

if.end391:                                        ; preds = %if.then390, %for.end387
  %212 = load i32, ptr %i, align 4
  store i32 %212, ptr %retval, align 4
  br label %return

sw.bb392:                                         ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond393

for.cond393:                                      ; preds = %for.inc402, %sw.bb392
  %213 = load ptr, ptr %z.addr, align 8
  %214 = load i32, ptr %i, align 4
  %idxprom394 = sext i32 %214 to i64
  %arrayidx395 = getelementptr inbounds i8, ptr %213, i64 %idxprom394
  %215 = load i8, ptr %arrayidx395, align 1
  %idxprom396 = zext i8 %215 to i64
  %arrayidx397 = getelementptr inbounds nuw [256 x i8], ptr @aiClass, i64 0, i64 %idxprom396
  %216 = load i8, ptr %arrayidx397, align 1
  %conv398 = zext i8 %216 to i32
  %cmp399 = icmp sle i32 %conv398, 1
  br i1 %cmp399, label %for.body401, label %for.end404

for.body401:                                      ; preds = %for.cond393
  br label %for.inc402

for.inc402:                                       ; preds = %for.body401
  %217 = load i32, ptr %i, align 4
  %inc403 = add nsw i32 %217, 1
  store i32 %inc403, ptr %i, align 4
  br label %for.cond393, !llvm.loop !20

for.end404:                                       ; preds = %for.cond393
  %218 = load ptr, ptr %z.addr, align 8
  %219 = load i32, ptr %i, align 4
  %idxprom405 = sext i32 %219 to i64
  %arrayidx406 = getelementptr inbounds i8, ptr %218, i64 %idxprom405
  %220 = load i8, ptr %arrayidx406, align 1
  %idxprom407 = zext i8 %220 to i64
  %arrayidx408 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom407
  %221 = load i8, ptr %arrayidx408, align 1
  %conv409 = zext i8 %221 to i32
  %and410 = and i32 %conv409, 70
  %cmp411 = icmp ne i32 %and410, 0
  br i1 %cmp411, label %if.then413, label %if.end415

if.then413:                                       ; preds = %for.end404
  %222 = load i32, ptr %i, align 4
  %inc414 = add nsw i32 %222, 1
  store i32 %inc414, ptr %i, align 4
  br label %sw.epilog

if.end415:                                        ; preds = %for.end404
  %223 = load ptr, ptr %tokenType.addr, align 8
  store i32 59, ptr %223, align 4
  %224 = load ptr, ptr %z.addr, align 8
  %225 = load i32, ptr %i, align 4
  %226 = load ptr, ptr %tokenType.addr, align 8
  %call = call i32 @keywordCode(ptr noundef %224, i32 noundef %225, ptr noundef %226)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.bb416:                                         ; preds = %entry
  %227 = load ptr, ptr %z.addr, align 8
  %arrayidx417 = getelementptr inbounds i8, ptr %227, i64 1
  %228 = load i8, ptr %arrayidx417, align 1
  %conv418 = zext i8 %228 to i32
  %cmp419 = icmp eq i32 %conv418, 39
  br i1 %cmp419, label %if.then421, label %if.end464

if.then421:                                       ; preds = %sw.bb416
  %229 = load ptr, ptr %tokenType.addr, align 8
  store i32 149, ptr %229, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond422

for.cond422:                                      ; preds = %for.inc431, %if.then421
  %230 = load ptr, ptr %z.addr, align 8
  %231 = load i32, ptr %i, align 4
  %idxprom423 = sext i32 %231 to i64
  %arrayidx424 = getelementptr inbounds i8, ptr %230, i64 %idxprom423
  %232 = load i8, ptr %arrayidx424, align 1
  %idxprom425 = zext i8 %232 to i64
  %arrayidx426 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom425
  %233 = load i8, ptr %arrayidx426, align 1
  %conv427 = zext i8 %233 to i32
  %and428 = and i32 %conv427, 8
  %tobool429 = icmp ne i32 %and428, 0
  br i1 %tobool429, label %for.body430, label %for.end433

for.body430:                                      ; preds = %for.cond422
  br label %for.inc431

for.inc431:                                       ; preds = %for.body430
  %234 = load i32, ptr %i, align 4
  %inc432 = add nsw i32 %234, 1
  store i32 %inc432, ptr %i, align 4
  br label %for.cond422, !llvm.loop !21

for.end433:                                       ; preds = %for.cond422
  %235 = load ptr, ptr %z.addr, align 8
  %236 = load i32, ptr %i, align 4
  %idxprom434 = sext i32 %236 to i64
  %arrayidx435 = getelementptr inbounds i8, ptr %235, i64 %idxprom434
  %237 = load i8, ptr %arrayidx435, align 1
  %conv436 = zext i8 %237 to i32
  %cmp437 = icmp ne i32 %conv436, 39
  br i1 %cmp437, label %if.then441, label %lor.lhs.false439

lor.lhs.false439:                                 ; preds = %for.end433
  %238 = load i32, ptr %i, align 4
  %rem = srem i32 %238, 2
  %tobool440 = icmp ne i32 %rem, 0
  br i1 %tobool440, label %if.then441, label %if.end457

if.then441:                                       ; preds = %lor.lhs.false439, %for.end433
  %239 = load ptr, ptr %tokenType.addr, align 8
  store i32 178, ptr %239, align 4
  br label %while.cond442

while.cond442:                                    ; preds = %while.body454, %if.then441
  %240 = load ptr, ptr %z.addr, align 8
  %241 = load i32, ptr %i, align 4
  %idxprom443 = sext i32 %241 to i64
  %arrayidx444 = getelementptr inbounds i8, ptr %240, i64 %idxprom443
  %242 = load i8, ptr %arrayidx444, align 1
  %conv445 = zext i8 %242 to i32
  %tobool446 = icmp ne i32 %conv445, 0
  br i1 %tobool446, label %land.rhs447, label %land.end453

land.rhs447:                                      ; preds = %while.cond442
  %243 = load ptr, ptr %z.addr, align 8
  %244 = load i32, ptr %i, align 4
  %idxprom448 = sext i32 %244 to i64
  %arrayidx449 = getelementptr inbounds i8, ptr %243, i64 %idxprom448
  %245 = load i8, ptr %arrayidx449, align 1
  %conv450 = zext i8 %245 to i32
  %cmp451 = icmp ne i32 %conv450, 39
  br label %land.end453

land.end453:                                      ; preds = %land.rhs447, %while.cond442
  %246 = phi i1 [ false, %while.cond442 ], [ %cmp451, %land.rhs447 ]
  br i1 %246, label %while.body454, label %while.end456

while.body454:                                    ; preds = %land.end453
  %247 = load i32, ptr %i, align 4
  %inc455 = add nsw i32 %247, 1
  store i32 %inc455, ptr %i, align 4
  br label %while.cond442, !llvm.loop !22

while.end456:                                     ; preds = %land.end453
  br label %if.end457

if.end457:                                        ; preds = %while.end456, %lor.lhs.false439
  %248 = load ptr, ptr %z.addr, align 8
  %249 = load i32, ptr %i, align 4
  %idxprom458 = sext i32 %249 to i64
  %arrayidx459 = getelementptr inbounds i8, ptr %248, i64 %idxprom458
  %250 = load i8, ptr %arrayidx459, align 1
  %tobool460 = icmp ne i8 %250, 0
  br i1 %tobool460, label %if.then461, label %if.end463

if.then461:                                       ; preds = %if.end457
  %251 = load i32, ptr %i, align 4
  %inc462 = add nsw i32 %251, 1
  store i32 %inc462, ptr %i, align 4
  br label %if.end463

if.end463:                                        ; preds = %if.then461, %if.end457
  %252 = load i32, ptr %i, align 4
  store i32 %252, ptr %retval, align 4
  br label %return

if.end464:                                        ; preds = %sw.bb416
  br label %sw.bb465

sw.bb465:                                         ; preds = %if.end464, %entry
  store i32 1, ptr %i, align 4
  br label %sw.epilog

sw.bb466:                                         ; preds = %entry
  %253 = load ptr, ptr %tokenType.addr, align 8
  store i32 178, ptr %253, align 4
  store i32 0, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %254 = load ptr, ptr %tokenType.addr, align 8
  store i32 178, ptr %254, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb465, %if.then413
  br label %while.cond467

while.cond467:                                    ; preds = %while.body476, %sw.epilog
  %255 = load ptr, ptr %z.addr, align 8
  %256 = load i32, ptr %i, align 4
  %idxprom468 = sext i32 %256 to i64
  %arrayidx469 = getelementptr inbounds i8, ptr %255, i64 %idxprom468
  %257 = load i8, ptr %arrayidx469, align 1
  %idxprom470 = zext i8 %257 to i64
  %arrayidx471 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom470
  %258 = load i8, ptr %arrayidx471, align 1
  %conv472 = zext i8 %258 to i32
  %and473 = and i32 %conv472, 70
  %cmp474 = icmp ne i32 %and473, 0
  br i1 %cmp474, label %while.body476, label %while.end478

while.body476:                                    ; preds = %while.cond467
  %259 = load i32, ptr %i, align 4
  %inc477 = add nsw i32 %259, 1
  store i32 %inc477, ptr %i, align 4
  br label %while.cond467, !llvm.loop !23

while.end478:                                     ; preds = %while.cond467
  %260 = load ptr, ptr %tokenType.addr, align 8
  store i32 59, ptr %260, align 4
  %261 = load i32, ptr %i, align 4
  store i32 %261, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end478, %sw.default, %sw.bb466, %if.end463, %if.end415, %if.end391, %for.end321, %for.end306, %while.end289, %for.end191, %if.then156, %if.else148, %if.then146, %if.then141, %sw.bb111, %sw.bb110, %sw.bb109, %if.else108, %if.then107, %if.else101, %if.then100, %if.else94, %if.then93, %if.then89, %if.else83, %if.then82, %if.then78, %if.then75, %sw.bb65, %sw.bb64, %if.end63, %if.then36, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %if.end, %for.end21, %for.end
  %262 = load i32, ptr %retval, align 4
  ret i32 %262
}

; Function Attrs: nounwind uwtable
declare hidden i32 @keywordCode(ptr noundef, i32 noundef, ptr noundef) #0

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
