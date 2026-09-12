; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@sqlite3_complete.trans = external hidden constant [8 x [8 x i8]], align 16
@.str.21 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.22 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.23 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.24 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.25 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.26 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_complete(ptr noundef %zSql) #0 {
entry:
  %retval = alloca i32, align 4
  %zSql.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  %token = alloca i8, align 1
  %c = alloca i32, align 4
  %nId = alloca i32, align 4
  store ptr %zSql, ptr %zSql.addr, align 8
  store i8 0, ptr %state, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog160, %entry
  %0 = load ptr, ptr %zSql.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end166

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %zSql.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 59, label %sw.bb
    i32 32, label %sw.bb1
    i32 13, label %sw.bb1
    i32 9, label %sw.bb1
    i32 10, label %sw.bb1
    i32 12, label %sw.bb1
    i32 47, label %sw.bb2
    i32 45, label %sw.bb25
    i32 91, label %sw.bb51
    i32 96, label %sw.bb69
    i32 34, label %sw.bb69
    i32 39, label %sw.bb69
  ]

sw.bb:                                            ; preds = %while.body
  store i8 0, ptr %token, align 1
  br label %sw.epilog160

sw.bb1:                                           ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  store i8 1, ptr %token, align 1
  br label %sw.epilog160

sw.bb2:                                           ; preds = %while.body
  %4 = load ptr, ptr %zSql.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx, align 1
  %conv3 = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv3, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  store i8 2, ptr %token, align 1
  br label %sw.epilog160

if.end:                                           ; preds = %sw.bb2
  %6 = load ptr, ptr %zSql.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %add.ptr, ptr %zSql.addr, align 8
  br label %while.cond5

while.cond5:                                      ; preds = %while.body17, %if.end
  %7 = load ptr, ptr %zSql.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond5
  %9 = load ptr, ptr %zSql.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv10, 42
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %11 = load ptr, ptr %zSql.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %cmp15 = icmp ne i32 %conv14, 47
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %cmp15, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond5
  %14 = phi i1 [ false, %while.cond5 ], [ %13, %lor.end ]
  br i1 %14, label %while.body17, label %while.end

while.body17:                                     ; preds = %land.end
  %15 = load ptr, ptr %zSql.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %zSql.addr, align 8
  br label %while.cond5, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %16 = load ptr, ptr %zSql.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %while.end
  %18 = load ptr, ptr %zSql.addr, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr24, ptr %zSql.addr, align 8
  store i8 1, ptr %token, align 1
  br label %sw.epilog160

sw.bb25:                                          ; preds = %while.body
  %19 = load ptr, ptr %zSql.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %20 to i32
  %cmp28 = icmp ne i32 %conv27, 45
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %sw.bb25
  store i8 2, ptr %token, align 1
  br label %sw.epilog160

if.end31:                                         ; preds = %sw.bb25
  br label %while.cond32

while.cond32:                                     ; preds = %while.body40, %if.end31
  %21 = load ptr, ptr %zSql.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv33 = sext i8 %22 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %land.rhs35, label %land.end39

land.rhs35:                                       ; preds = %while.cond32
  %23 = load ptr, ptr %zSql.addr, align 8
  %24 = load i8, ptr %23, align 1
  %conv36 = sext i8 %24 to i32
  %cmp37 = icmp ne i32 %conv36, 10
  br label %land.end39

land.end39:                                       ; preds = %land.rhs35, %while.cond32
  %25 = phi i1 [ false, %while.cond32 ], [ %cmp37, %land.rhs35 ]
  br i1 %25, label %while.body40, label %while.end42

while.body40:                                     ; preds = %land.end39
  %26 = load ptr, ptr %zSql.addr, align 8
  %incdec.ptr41 = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %incdec.ptr41, ptr %zSql.addr, align 8
  br label %while.cond32, !llvm.loop !8

while.end42:                                      ; preds = %land.end39
  %27 = load ptr, ptr %zSql.addr, align 8
  %28 = load i8, ptr %27, align 1
  %conv43 = sext i8 %28 to i32
  %cmp44 = icmp eq i32 %conv43, 0
  br i1 %cmp44, label %if.then46, label %if.end50

if.then46:                                        ; preds = %while.end42
  %29 = load i8, ptr %state, align 1
  %conv47 = zext i8 %29 to i32
  %cmp48 = icmp eq i32 %conv47, 1
  %conv49 = zext i1 %cmp48 to i32
  store i32 %conv49, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %while.end42
  store i8 1, ptr %token, align 1
  br label %sw.epilog160

sw.bb51:                                          ; preds = %while.body
  %30 = load ptr, ptr %zSql.addr, align 8
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr52, ptr %zSql.addr, align 8
  br label %while.cond53

while.cond53:                                     ; preds = %while.body61, %sw.bb51
  %31 = load ptr, ptr %zSql.addr, align 8
  %32 = load i8, ptr %31, align 1
  %conv54 = sext i8 %32 to i32
  %tobool55 = icmp ne i32 %conv54, 0
  br i1 %tobool55, label %land.rhs56, label %land.end60

land.rhs56:                                       ; preds = %while.cond53
  %33 = load ptr, ptr %zSql.addr, align 8
  %34 = load i8, ptr %33, align 1
  %conv57 = sext i8 %34 to i32
  %cmp58 = icmp ne i32 %conv57, 93
  br label %land.end60

land.end60:                                       ; preds = %land.rhs56, %while.cond53
  %35 = phi i1 [ false, %while.cond53 ], [ %cmp58, %land.rhs56 ]
  br i1 %35, label %while.body61, label %while.end63

while.body61:                                     ; preds = %land.end60
  %36 = load ptr, ptr %zSql.addr, align 8
  %incdec.ptr62 = getelementptr inbounds nuw i8, ptr %36, i32 1
  store ptr %incdec.ptr62, ptr %zSql.addr, align 8
  br label %while.cond53, !llvm.loop !9

while.end63:                                      ; preds = %land.end60
  %37 = load ptr, ptr %zSql.addr, align 8
  %38 = load i8, ptr %37, align 1
  %conv64 = sext i8 %38 to i32
  %cmp65 = icmp eq i32 %conv64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %while.end63
  store i32 0, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %while.end63
  store i8 2, ptr %token, align 1
  br label %sw.epilog160

sw.bb69:                                          ; preds = %while.body, %while.body, %while.body
  %39 = load ptr, ptr %zSql.addr, align 8
  %40 = load i8, ptr %39, align 1
  %conv70 = sext i8 %40 to i32
  store i32 %conv70, ptr %c, align 4
  %41 = load ptr, ptr %zSql.addr, align 8
  %incdec.ptr71 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %incdec.ptr71, ptr %zSql.addr, align 8
  br label %while.cond72

while.cond72:                                     ; preds = %while.body80, %sw.bb69
  %42 = load ptr, ptr %zSql.addr, align 8
  %43 = load i8, ptr %42, align 1
  %conv73 = sext i8 %43 to i32
  %tobool74 = icmp ne i32 %conv73, 0
  br i1 %tobool74, label %land.rhs75, label %land.end79

land.rhs75:                                       ; preds = %while.cond72
  %44 = load ptr, ptr %zSql.addr, align 8
  %45 = load i8, ptr %44, align 1
  %conv76 = sext i8 %45 to i32
  %46 = load i32, ptr %c, align 4
  %cmp77 = icmp ne i32 %conv76, %46
  br label %land.end79

land.end79:                                       ; preds = %land.rhs75, %while.cond72
  %47 = phi i1 [ false, %while.cond72 ], [ %cmp77, %land.rhs75 ]
  br i1 %47, label %while.body80, label %while.end82

while.body80:                                     ; preds = %land.end79
  %48 = load ptr, ptr %zSql.addr, align 8
  %incdec.ptr81 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %incdec.ptr81, ptr %zSql.addr, align 8
  br label %while.cond72, !llvm.loop !10

while.end82:                                      ; preds = %land.end79
  %49 = load ptr, ptr %zSql.addr, align 8
  %50 = load i8, ptr %49, align 1
  %conv83 = sext i8 %50 to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %while.end82
  store i32 0, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %while.end82
  store i8 2, ptr %token, align 1
  br label %sw.epilog160

sw.default:                                       ; preds = %while.body
  %51 = load ptr, ptr %zSql.addr, align 8
  %52 = load i8, ptr %51, align 1
  %idxprom = zext i8 %52 to i64
  %arrayidx88 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom
  %53 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %53 to i32
  %and = and i32 %conv89, 70
  %cmp90 = icmp ne i32 %and, 0
  br i1 %cmp90, label %if.then92, label %if.else158

if.then92:                                        ; preds = %sw.default
  store i32 1, ptr %nId, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then92
  %54 = load ptr, ptr %zSql.addr, align 8
  %55 = load i32, ptr %nId, align 4
  %idxprom93 = sext i32 %55 to i64
  %arrayidx94 = getelementptr inbounds i8, ptr %54, i64 %idxprom93
  %56 = load i8, ptr %arrayidx94, align 1
  %idxprom95 = zext i8 %56 to i64
  %arrayidx96 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom95
  %57 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %57 to i32
  %and98 = and i32 %conv97, 70
  %cmp99 = icmp ne i32 %and98, 0
  br i1 %cmp99, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, ptr %nId, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, ptr %nId, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %59 = load ptr, ptr %zSql.addr, align 8
  %60 = load i8, ptr %59, align 1
  %conv101 = sext i8 %60 to i32
  switch i32 %conv101, label %sw.default156 [
    i32 99, label %sw.bb102
    i32 67, label %sw.bb102
    i32 116, label %sw.bb109
    i32 84, label %sw.bb109
    i32 101, label %sw.bb137
    i32 69, label %sw.bb137
  ]

sw.bb102:                                         ; preds = %for.end, %for.end
  %61 = load i32, ptr %nId, align 4
  %cmp103 = icmp eq i32 %61, 6
  br i1 %cmp103, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb102
  %62 = load ptr, ptr %zSql.addr, align 8
  %call = call i32 @sqlite3_strnicmp(ptr noundef %62, ptr noundef @.str.21, i32 noundef 6)
  %cmp105 = icmp eq i32 %call, 0
  br i1 %cmp105, label %if.then107, label %if.else

if.then107:                                       ; preds = %land.lhs.true
  store i8 4, ptr %token, align 1
  br label %if.end108

if.else:                                          ; preds = %land.lhs.true, %sw.bb102
  store i8 2, ptr %token, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.else, %if.then107
  br label %sw.epilog

sw.bb109:                                         ; preds = %for.end, %for.end
  %63 = load i32, ptr %nId, align 4
  %cmp110 = icmp eq i32 %63, 7
  br i1 %cmp110, label %land.lhs.true112, label %if.else117

land.lhs.true112:                                 ; preds = %sw.bb109
  %64 = load ptr, ptr %zSql.addr, align 8
  %call113 = call i32 @sqlite3_strnicmp(ptr noundef %64, ptr noundef @.str.22, i32 noundef 7)
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.else117

if.then116:                                       ; preds = %land.lhs.true112
  store i8 6, ptr %token, align 1
  br label %if.end136

if.else117:                                       ; preds = %land.lhs.true112, %sw.bb109
  %65 = load i32, ptr %nId, align 4
  %cmp118 = icmp eq i32 %65, 4
  br i1 %cmp118, label %land.lhs.true120, label %if.else125

land.lhs.true120:                                 ; preds = %if.else117
  %66 = load ptr, ptr %zSql.addr, align 8
  %call121 = call i32 @sqlite3_strnicmp(ptr noundef %66, ptr noundef @.str.23, i32 noundef 4)
  %cmp122 = icmp eq i32 %call121, 0
  br i1 %cmp122, label %if.then124, label %if.else125

if.then124:                                       ; preds = %land.lhs.true120
  store i8 5, ptr %token, align 1
  br label %if.end135

if.else125:                                       ; preds = %land.lhs.true120, %if.else117
  %67 = load i32, ptr %nId, align 4
  %cmp126 = icmp eq i32 %67, 9
  br i1 %cmp126, label %land.lhs.true128, label %if.else133

land.lhs.true128:                                 ; preds = %if.else125
  %68 = load ptr, ptr %zSql.addr, align 8
  %call129 = call i32 @sqlite3_strnicmp(ptr noundef %68, ptr noundef @.str.24, i32 noundef 9)
  %cmp130 = icmp eq i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.else133

if.then132:                                       ; preds = %land.lhs.true128
  store i8 5, ptr %token, align 1
  br label %if.end134

if.else133:                                       ; preds = %land.lhs.true128, %if.else125
  store i8 2, ptr %token, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.else133, %if.then132
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then124
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then116
  br label %sw.epilog

sw.bb137:                                         ; preds = %for.end, %for.end
  %69 = load i32, ptr %nId, align 4
  %cmp138 = icmp eq i32 %69, 3
  br i1 %cmp138, label %land.lhs.true140, label %if.else145

land.lhs.true140:                                 ; preds = %sw.bb137
  %70 = load ptr, ptr %zSql.addr, align 8
  %call141 = call i32 @sqlite3_strnicmp(ptr noundef %70, ptr noundef @.str.25, i32 noundef 3)
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %if.then144, label %if.else145

if.then144:                                       ; preds = %land.lhs.true140
  store i8 7, ptr %token, align 1
  br label %if.end155

if.else145:                                       ; preds = %land.lhs.true140, %sw.bb137
  %71 = load i32, ptr %nId, align 4
  %cmp146 = icmp eq i32 %71, 7
  br i1 %cmp146, label %land.lhs.true148, label %if.else153

land.lhs.true148:                                 ; preds = %if.else145
  %72 = load ptr, ptr %zSql.addr, align 8
  %call149 = call i32 @sqlite3_strnicmp(ptr noundef %72, ptr noundef @.str.26, i32 noundef 7)
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.else153

if.then152:                                       ; preds = %land.lhs.true148
  store i8 3, ptr %token, align 1
  br label %if.end154

if.else153:                                       ; preds = %land.lhs.true148, %if.else145
  store i8 2, ptr %token, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.else153, %if.then152
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then144
  br label %sw.epilog

sw.default156:                                    ; preds = %for.end
  store i8 2, ptr %token, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default156, %if.end155, %if.end136, %if.end108
  %73 = load i32, ptr %nId, align 4
  %sub = sub nsw i32 %73, 1
  %74 = load ptr, ptr %zSql.addr, align 8
  %idx.ext = sext i32 %sub to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %74, i64 %idx.ext
  store ptr %add.ptr157, ptr %zSql.addr, align 8
  br label %if.end159

if.else158:                                       ; preds = %sw.default
  store i8 2, ptr %token, align 1
  br label %if.end159

if.end159:                                        ; preds = %if.else158, %sw.epilog
  br label %sw.epilog160

sw.epilog160:                                     ; preds = %if.end159, %if.end87, %if.end68, %if.end50, %if.then30, %if.end23, %if.then, %sw.bb1, %sw.bb
  %75 = load i8, ptr %state, align 1
  %idxprom161 = zext i8 %75 to i64
  %arrayidx162 = getelementptr inbounds nuw [8 x [8 x i8]], ptr @sqlite3_complete.trans, i64 0, i64 %idxprom161
  %76 = load i8, ptr %token, align 1
  %idxprom163 = zext i8 %76 to i64
  %arrayidx164 = getelementptr inbounds nuw [8 x i8], ptr %arrayidx162, i64 0, i64 %idxprom163
  %77 = load i8, ptr %arrayidx164, align 1
  store i8 %77, ptr %state, align 1
  %78 = load ptr, ptr %zSql.addr, align 8
  %incdec.ptr165 = getelementptr inbounds nuw i8, ptr %78, i32 1
  store ptr %incdec.ptr165, ptr %zSql.addr, align 8
  br label %while.cond, !llvm.loop !12

while.end166:                                     ; preds = %while.cond
  %79 = load i8, ptr %state, align 1
  %conv167 = zext i8 %79 to i32
  %cmp168 = icmp eq i32 %conv167, 1
  %conv169 = zext i1 %cmp168 to i32
  store i32 %conv169, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end166, %if.then86, %if.then67, %if.then46, %if.then22
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
