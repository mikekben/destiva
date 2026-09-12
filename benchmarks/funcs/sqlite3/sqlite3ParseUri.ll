; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.OpenMode = type { ptr, i32 }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@.str.43 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.889 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.890 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.891 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.892 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.893 = external hidden unnamed_addr constant [6 x i8], align 1
@sqlite3ParseUri.aCacheMode = external hidden global [3 x { ptr, i32, [4 x i8] }], align 16
@.str.896 = external hidden unnamed_addr constant [5 x i8], align 1
@sqlite3ParseUri.aOpenMode = external hidden global [5 x { ptr, i32, [4 x i8] }], align 16
@.str.900 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.901 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.902 = external hidden unnamed_addr constant [16 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_vfs_find(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3HexToInt(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ParseUri(ptr noundef %zDefaultVfs, ptr noundef %zUri, ptr noundef %pFlags, ptr noundef %ppVfs, ptr noundef %pzFile, ptr noundef %pzErrMsg) #0 {
entry:
  %retval = alloca i32, align 4
  %zDefaultVfs.addr = alloca ptr, align 8
  %zUri.addr = alloca ptr, align 8
  %pFlags.addr = alloca ptr, align 8
  %ppVfs.addr = alloca ptr, align 8
  %pzFile.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %flags = alloca i32, align 4
  %zVfs = alloca ptr, align 8
  %zFile = alloca ptr, align 8
  %c = alloca i8, align 1
  %nUri = alloca i32, align 4
  %zOpt = alloca ptr, align 8
  %eState = alloca i32, align 4
  %iIn = alloca i32, align 4
  %iOut = alloca i32, align 4
  %nByte = alloca i64, align 8
  %octet = alloca i32, align 4
  %nOpt = alloca i32, align 4
  %zVal = alloca ptr, align 8
  %nVal = alloca i32, align 4
  %aMode = alloca ptr, align 8
  %zModeType = alloca ptr, align 8
  %mask = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  %mode = alloca i32, align 4
  %z272 = alloca ptr, align 8
  store ptr %zDefaultVfs, ptr %zDefaultVfs.addr, align 8
  store ptr %zUri, ptr %zUri.addr, align 8
  store ptr %pFlags, ptr %pFlags.addr, align 8
  store ptr %ppVfs, ptr %ppVfs.addr, align 8
  store ptr %pzFile, ptr %pzFile.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pFlags.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %flags, align 4
  %2 = load ptr, ptr %zDefaultVfs.addr, align 8
  store ptr %2, ptr %zVfs, align 8
  %3 = load ptr, ptr %zUri.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %3)
  store i32 %call, ptr %nUri, align 4
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 3), align 2
  %conv = zext i8 %5 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else311

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %6 = load i32, ptr %nUri, align 4
  %cmp = icmp sge i32 %6, 5
  br i1 %cmp, label %land.lhs.true3, label %if.else311

land.lhs.true3:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %zUri.addr, align 8
  %call4 = call i32 @memcmp(ptr noundef %7, ptr noundef @.str.889, i64 noundef 5) #3
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.else311

if.then:                                          ; preds = %land.lhs.true3
  store i32 0, ptr %iOut, align 4
  %8 = load i32, ptr %nUri, align 4
  %add = add nsw i32 %8, 2
  %conv7 = sext i32 %add to i64
  store i64 %conv7, ptr %nByte, align 8
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 64
  store i32 %or, ptr %flags, align 4
  store i32 0, ptr %iIn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %iIn, align 4
  %11 = load i32, ptr %nUri, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %zUri.addr, align 8
  %13 = load i32, ptr %iIn, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp eq i32 %conv10, 38
  %conv12 = zext i1 %cmp11 to i32
  %conv13 = sext i32 %conv12 to i64
  %15 = load i64, ptr %nByte, align 8
  %add14 = add i64 %15, %conv13
  store i64 %add14, ptr %nByte, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %iIn, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %iIn, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load i64, ptr %nByte, align 8
  %call15 = call ptr @sqlite3_malloc64(i64 noundef %17)
  store ptr %call15, ptr %zFile, align 8
  %18 = load ptr, ptr %zFile, align 8
  %tobool16 = icmp ne ptr %18, null
  br i1 %tobool16, label %if.end, label %if.then17

if.then17:                                        ; preds = %for.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  store i32 5, ptr %iIn, align 4
  %19 = load ptr, ptr %zUri.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %19, i64 5
  %20 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %20 to i32
  %cmp20 = icmp eq i32 %conv19, 47
  br i1 %cmp20, label %land.lhs.true22, label %if.end51

land.lhs.true22:                                  ; preds = %if.end
  %21 = load ptr, ptr %zUri.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %21, i64 6
  %22 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %22 to i32
  %cmp25 = icmp eq i32 %conv24, 47
  br i1 %cmp25, label %if.then27, label %if.end51

if.then27:                                        ; preds = %land.lhs.true22
  store i32 7, ptr %iIn, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then27
  %23 = load ptr, ptr %zUri.addr, align 8
  %24 = load i32, ptr %iIn, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %23, i64 %idxprom28
  %25 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %25 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load ptr, ptr %zUri.addr, align 8
  %27 = load i32, ptr %iIn, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %26, i64 %idxprom32
  %28 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %28 to i32
  %cmp35 = icmp ne i32 %conv34, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %cmp35, %land.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %30 = load i32, ptr %iIn, align 4
  %inc37 = add nsw i32 %30, 1
  store i32 %inc37, ptr %iIn, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %31 = load i32, ptr %iIn, align 4
  %cmp38 = icmp ne i32 %31, 7
  br i1 %cmp38, label %land.lhs.true40, label %if.end50

land.lhs.true40:                                  ; preds = %while.end
  %32 = load i32, ptr %iIn, align 4
  %cmp41 = icmp ne i32 %32, 16
  br i1 %cmp41, label %if.then47, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %land.lhs.true40
  %33 = load ptr, ptr %zUri.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %33, i64 7
  %call45 = call i32 @memcmp(ptr noundef @.str.890, ptr noundef %arrayidx44, i64 noundef 9) #3
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %lor.lhs.false43, %land.lhs.true40
  %34 = load i32, ptr %iIn, align 4
  %sub = sub nsw i32 %34, 7
  %35 = load ptr, ptr %zUri.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %35, i64 7
  %call49 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.891, i32 noundef %sub, ptr noundef %arrayidx48)
  %36 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call49, ptr %36, align 8
  store i32 1, ptr %rc, align 4
  br label %parse_uri_out

if.end50:                                         ; preds = %lor.lhs.false43, %while.end
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true22, %if.end
  store i32 0, ptr %eState, align 4
  br label %while.cond52

while.cond52:                                     ; preds = %if.end209, %while.end181, %while.end139, %if.end51
  %37 = load ptr, ptr %zUri.addr, align 8
  %38 = load i32, ptr %iIn, align 4
  %idxprom53 = sext i32 %38 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %37, i64 %idxprom53
  %39 = load i8, ptr %arrayidx54, align 1
  store i8 %39, ptr %c, align 1
  %conv55 = sext i8 %39 to i32
  %cmp56 = icmp ne i32 %conv55, 0
  br i1 %cmp56, label %land.rhs58, label %land.end62

land.rhs58:                                       ; preds = %while.cond52
  %40 = load i8, ptr %c, align 1
  %conv59 = sext i8 %40 to i32
  %cmp60 = icmp ne i32 %conv59, 35
  br label %land.end62

land.end62:                                       ; preds = %land.rhs58, %while.cond52
  %41 = phi i1 [ false, %while.cond52 ], [ %cmp60, %land.rhs58 ]
  br i1 %41, label %while.body63, label %while.end213

while.body63:                                     ; preds = %land.end62
  %42 = load i32, ptr %iIn, align 4
  %inc64 = add nsw i32 %42, 1
  store i32 %inc64, ptr %iIn, align 4
  %43 = load i8, ptr %c, align 1
  %conv65 = sext i8 %43 to i32
  %cmp66 = icmp eq i32 %conv65, 37
  br i1 %cmp66, label %land.lhs.true68, label %if.else

land.lhs.true68:                                  ; preds = %while.body63
  %44 = load ptr, ptr %zUri.addr, align 8
  %45 = load i32, ptr %iIn, align 4
  %idxprom69 = sext i32 %45 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %44, i64 %idxprom69
  %46 = load i8, ptr %arrayidx70, align 1
  %idxprom71 = zext i8 %46 to i64
  %arrayidx72 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom71
  %47 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %47 to i32
  %and74 = and i32 %conv73, 8
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %if.else

land.lhs.true76:                                  ; preds = %land.lhs.true68
  %48 = load ptr, ptr %zUri.addr, align 8
  %49 = load i32, ptr %iIn, align 4
  %add77 = add nsw i32 %49, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %48, i64 %idxprom78
  %50 = load i8, ptr %arrayidx79, align 1
  %idxprom80 = zext i8 %50 to i64
  %arrayidx81 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom80
  %51 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %51 to i32
  %and83 = and i32 %conv82, 8
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.else

if.then85:                                        ; preds = %land.lhs.true76
  %52 = load ptr, ptr %zUri.addr, align 8
  %53 = load i32, ptr %iIn, align 4
  %inc86 = add nsw i32 %53, 1
  store i32 %inc86, ptr %iIn, align 4
  %idxprom87 = sext i32 %53 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %52, i64 %idxprom87
  %54 = load i8, ptr %arrayidx88, align 1
  %conv89 = sext i8 %54 to i32
  %call90 = call zeroext i8 @sqlite3HexToInt(i32 noundef %conv89)
  %conv91 = zext i8 %call90 to i32
  %shl = shl i32 %conv91, 4
  store i32 %shl, ptr %octet, align 4
  %55 = load ptr, ptr %zUri.addr, align 8
  %56 = load i32, ptr %iIn, align 4
  %inc92 = add nsw i32 %56, 1
  store i32 %inc92, ptr %iIn, align 4
  %idxprom93 = sext i32 %56 to i64
  %arrayidx94 = getelementptr inbounds i8, ptr %55, i64 %idxprom93
  %57 = load i8, ptr %arrayidx94, align 1
  %conv95 = sext i8 %57 to i32
  %call96 = call zeroext i8 @sqlite3HexToInt(i32 noundef %conv95)
  %conv97 = zext i8 %call96 to i32
  %58 = load i32, ptr %octet, align 4
  %add98 = add nsw i32 %58, %conv97
  store i32 %add98, ptr %octet, align 4
  %59 = load i32, ptr %octet, align 4
  %cmp99 = icmp eq i32 %59, 0
  br i1 %cmp99, label %if.then101, label %if.end140

if.then101:                                       ; preds = %if.then85
  br label %while.cond102

while.cond102:                                    ; preds = %while.body137, %if.then101
  %60 = load ptr, ptr %zUri.addr, align 8
  %61 = load i32, ptr %iIn, align 4
  %idxprom103 = sext i32 %61 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %60, i64 %idxprom103
  %62 = load i8, ptr %arrayidx104, align 1
  store i8 %62, ptr %c, align 1
  %conv105 = sext i8 %62 to i32
  %cmp106 = icmp ne i32 %conv105, 0
  br i1 %cmp106, label %land.lhs.true108, label %land.end136

land.lhs.true108:                                 ; preds = %while.cond102
  %63 = load i8, ptr %c, align 1
  %conv109 = sext i8 %63 to i32
  %cmp110 = icmp ne i32 %conv109, 35
  br i1 %cmp110, label %land.lhs.true112, label %land.end136

land.lhs.true112:                                 ; preds = %land.lhs.true108
  %64 = load i32, ptr %eState, align 4
  %cmp113 = icmp ne i32 %64, 0
  br i1 %cmp113, label %land.lhs.true119, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %land.lhs.true112
  %65 = load i8, ptr %c, align 1
  %conv116 = sext i8 %65 to i32
  %cmp117 = icmp ne i32 %conv116, 63
  br i1 %cmp117, label %land.lhs.true119, label %land.end136

land.lhs.true119:                                 ; preds = %lor.lhs.false115, %land.lhs.true112
  %66 = load i32, ptr %eState, align 4
  %cmp120 = icmp ne i32 %66, 1
  br i1 %cmp120, label %land.rhs130, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %land.lhs.true119
  %67 = load i8, ptr %c, align 1
  %conv123 = sext i8 %67 to i32
  %cmp124 = icmp ne i32 %conv123, 61
  br i1 %cmp124, label %land.lhs.true126, label %land.end136

land.lhs.true126:                                 ; preds = %lor.lhs.false122
  %68 = load i8, ptr %c, align 1
  %conv127 = sext i8 %68 to i32
  %cmp128 = icmp ne i32 %conv127, 38
  br i1 %cmp128, label %land.rhs130, label %land.end136

land.rhs130:                                      ; preds = %land.lhs.true126, %land.lhs.true119
  %69 = load i32, ptr %eState, align 4
  %cmp131 = icmp ne i32 %69, 2
  br i1 %cmp131, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs130
  %70 = load i8, ptr %c, align 1
  %conv133 = sext i8 %70 to i32
  %cmp134 = icmp ne i32 %conv133, 38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs130
  %71 = phi i1 [ true, %land.rhs130 ], [ %cmp134, %lor.rhs ]
  br label %land.end136

land.end136:                                      ; preds = %lor.end, %land.lhs.true126, %lor.lhs.false122, %lor.lhs.false115, %land.lhs.true108, %while.cond102
  %72 = phi i1 [ false, %land.lhs.true126 ], [ false, %lor.lhs.false122 ], [ false, %lor.lhs.false115 ], [ false, %land.lhs.true108 ], [ false, %while.cond102 ], [ %71, %lor.end ]
  br i1 %72, label %while.body137, label %while.end139

while.body137:                                    ; preds = %land.end136
  %73 = load i32, ptr %iIn, align 4
  %inc138 = add nsw i32 %73, 1
  store i32 %inc138, ptr %iIn, align 4
  br label %while.cond102, !llvm.loop !9

while.end139:                                     ; preds = %land.end136
  br label %while.cond52, !llvm.loop !10

if.end140:                                        ; preds = %if.then85
  %74 = load i32, ptr %octet, align 4
  %conv141 = trunc i32 %74 to i8
  store i8 %conv141, ptr %c, align 1
  br label %if.end209

if.else:                                          ; preds = %land.lhs.true76, %land.lhs.true68, %while.body63
  %75 = load i32, ptr %eState, align 4
  %cmp142 = icmp eq i32 %75, 1
  br i1 %cmp142, label %land.lhs.true144, label %if.else192

land.lhs.true144:                                 ; preds = %if.else
  %76 = load i8, ptr %c, align 1
  %conv145 = sext i8 %76 to i32
  %cmp146 = icmp eq i32 %conv145, 38
  br i1 %cmp146, label %if.then152, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %land.lhs.true144
  %77 = load i8, ptr %c, align 1
  %conv149 = sext i8 %77 to i32
  %cmp150 = icmp eq i32 %conv149, 61
  br i1 %cmp150, label %if.then152, label %if.else192

if.then152:                                       ; preds = %lor.lhs.false148, %land.lhs.true144
  %78 = load ptr, ptr %zFile, align 8
  %79 = load i32, ptr %iOut, align 4
  %sub153 = sub nsw i32 %79, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds i8, ptr %78, i64 %idxprom154
  %80 = load i8, ptr %arrayidx155, align 1
  %conv156 = sext i8 %80 to i32
  %cmp157 = icmp eq i32 %conv156, 0
  br i1 %cmp157, label %if.then159, label %if.end182

if.then159:                                       ; preds = %if.then152
  br label %while.cond160

while.cond160:                                    ; preds = %while.body179, %if.then159
  %81 = load ptr, ptr %zUri.addr, align 8
  %82 = load i32, ptr %iIn, align 4
  %idxprom161 = sext i32 %82 to i64
  %arrayidx162 = getelementptr inbounds i8, ptr %81, i64 %idxprom161
  %83 = load i8, ptr %arrayidx162, align 1
  %conv163 = sext i8 %83 to i32
  %tobool164 = icmp ne i32 %conv163, 0
  br i1 %tobool164, label %land.lhs.true165, label %land.end178

land.lhs.true165:                                 ; preds = %while.cond160
  %84 = load ptr, ptr %zUri.addr, align 8
  %85 = load i32, ptr %iIn, align 4
  %idxprom166 = sext i32 %85 to i64
  %arrayidx167 = getelementptr inbounds i8, ptr %84, i64 %idxprom166
  %86 = load i8, ptr %arrayidx167, align 1
  %conv168 = sext i8 %86 to i32
  %cmp169 = icmp ne i32 %conv168, 35
  br i1 %cmp169, label %land.rhs171, label %land.end178

land.rhs171:                                      ; preds = %land.lhs.true165
  %87 = load ptr, ptr %zUri.addr, align 8
  %88 = load i32, ptr %iIn, align 4
  %sub172 = sub nsw i32 %88, 1
  %idxprom173 = sext i32 %sub172 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %87, i64 %idxprom173
  %89 = load i8, ptr %arrayidx174, align 1
  %conv175 = sext i8 %89 to i32
  %cmp176 = icmp ne i32 %conv175, 38
  br label %land.end178

land.end178:                                      ; preds = %land.rhs171, %land.lhs.true165, %while.cond160
  %90 = phi i1 [ false, %land.lhs.true165 ], [ false, %while.cond160 ], [ %cmp176, %land.rhs171 ]
  br i1 %90, label %while.body179, label %while.end181

while.body179:                                    ; preds = %land.end178
  %91 = load i32, ptr %iIn, align 4
  %inc180 = add nsw i32 %91, 1
  store i32 %inc180, ptr %iIn, align 4
  br label %while.cond160, !llvm.loop !11

while.end181:                                     ; preds = %land.end178
  br label %while.cond52, !llvm.loop !10

if.end182:                                        ; preds = %if.then152
  %92 = load i8, ptr %c, align 1
  %conv183 = sext i8 %92 to i32
  %cmp184 = icmp eq i32 %conv183, 38
  br i1 %cmp184, label %if.then186, label %if.else190

if.then186:                                       ; preds = %if.end182
  %93 = load ptr, ptr %zFile, align 8
  %94 = load i32, ptr %iOut, align 4
  %inc187 = add nsw i32 %94, 1
  store i32 %inc187, ptr %iOut, align 4
  %idxprom188 = sext i32 %94 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %93, i64 %idxprom188
  store i8 0, ptr %arrayidx189, align 1
  br label %if.end191

if.else190:                                       ; preds = %if.end182
  store i32 2, ptr %eState, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.else190, %if.then186
  store i8 0, ptr %c, align 1
  br label %if.end208

if.else192:                                       ; preds = %lor.lhs.false148, %if.else
  %95 = load i32, ptr %eState, align 4
  %cmp193 = icmp eq i32 %95, 0
  br i1 %cmp193, label %land.lhs.true195, label %lor.lhs.false199

land.lhs.true195:                                 ; preds = %if.else192
  %96 = load i8, ptr %c, align 1
  %conv196 = sext i8 %96 to i32
  %cmp197 = icmp eq i32 %conv196, 63
  br i1 %cmp197, label %if.then206, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %land.lhs.true195, %if.else192
  %97 = load i32, ptr %eState, align 4
  %cmp200 = icmp eq i32 %97, 2
  br i1 %cmp200, label %land.lhs.true202, label %if.end207

land.lhs.true202:                                 ; preds = %lor.lhs.false199
  %98 = load i8, ptr %c, align 1
  %conv203 = sext i8 %98 to i32
  %cmp204 = icmp eq i32 %conv203, 38
  br i1 %cmp204, label %if.then206, label %if.end207

if.then206:                                       ; preds = %land.lhs.true202, %land.lhs.true195
  store i8 0, ptr %c, align 1
  store i32 1, ptr %eState, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %land.lhs.true202, %lor.lhs.false199
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.end191
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.end140
  %99 = load i8, ptr %c, align 1
  %100 = load ptr, ptr %zFile, align 8
  %101 = load i32, ptr %iOut, align 4
  %inc210 = add nsw i32 %101, 1
  store i32 %inc210, ptr %iOut, align 4
  %idxprom211 = sext i32 %101 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %100, i64 %idxprom211
  store i8 %99, ptr %arrayidx212, align 1
  br label %while.cond52, !llvm.loop !10

while.end213:                                     ; preds = %land.end62
  %102 = load i32, ptr %eState, align 4
  %cmp214 = icmp eq i32 %102, 1
  br i1 %cmp214, label %if.then216, label %if.end220

if.then216:                                       ; preds = %while.end213
  %103 = load ptr, ptr %zFile, align 8
  %104 = load i32, ptr %iOut, align 4
  %inc217 = add nsw i32 %104, 1
  store i32 %inc217, ptr %iOut, align 4
  %idxprom218 = sext i32 %104 to i64
  %arrayidx219 = getelementptr inbounds i8, ptr %103, i64 %idxprom218
  store i8 0, ptr %arrayidx219, align 1
  br label %if.end220

if.end220:                                        ; preds = %if.then216, %while.end213
  %105 = load ptr, ptr %zFile, align 8
  %106 = load i32, ptr %iOut, align 4
  %inc221 = add nsw i32 %106, 1
  store i32 %inc221, ptr %iOut, align 4
  %idxprom222 = sext i32 %106 to i64
  %arrayidx223 = getelementptr inbounds i8, ptr %105, i64 %idxprom222
  store i8 0, ptr %arrayidx223, align 1
  %107 = load ptr, ptr %zFile, align 8
  %108 = load i32, ptr %iOut, align 4
  %inc224 = add nsw i32 %108, 1
  store i32 %inc224, ptr %iOut, align 4
  %idxprom225 = sext i32 %108 to i64
  %arrayidx226 = getelementptr inbounds i8, ptr %107, i64 %idxprom225
  store i8 0, ptr %arrayidx226, align 1
  %109 = load ptr, ptr %zFile, align 8
  %110 = load ptr, ptr %zFile, align 8
  %call227 = call i32 @sqlite3Strlen30(ptr noundef %110)
  %add228 = add nsw i32 %call227, 1
  %idxprom229 = sext i32 %add228 to i64
  %arrayidx230 = getelementptr inbounds i8, ptr %109, i64 %idxprom229
  store ptr %arrayidx230, ptr %zOpt, align 8
  br label %while.cond231

while.cond231:                                    ; preds = %if.end306, %if.end220
  %111 = load ptr, ptr %zOpt, align 8
  %arrayidx232 = getelementptr inbounds i8, ptr %111, i64 0
  %112 = load i8, ptr %arrayidx232, align 1
  %tobool233 = icmp ne i8 %112, 0
  br i1 %tobool233, label %while.body234, label %while.end310

while.body234:                                    ; preds = %while.cond231
  %113 = load ptr, ptr %zOpt, align 8
  %call235 = call i32 @sqlite3Strlen30(ptr noundef %113)
  store i32 %call235, ptr %nOpt, align 4
  %114 = load ptr, ptr %zOpt, align 8
  %115 = load i32, ptr %nOpt, align 4
  %add236 = add nsw i32 %115, 1
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds i8, ptr %114, i64 %idxprom237
  store ptr %arrayidx238, ptr %zVal, align 8
  %116 = load ptr, ptr %zVal, align 8
  %call239 = call i32 @sqlite3Strlen30(ptr noundef %116)
  store i32 %call239, ptr %nVal, align 4
  %117 = load i32, ptr %nOpt, align 4
  %cmp240 = icmp eq i32 %117, 3
  br i1 %cmp240, label %land.lhs.true242, label %if.else247

land.lhs.true242:                                 ; preds = %while.body234
  %118 = load ptr, ptr %zOpt, align 8
  %call243 = call i32 @memcmp(ptr noundef @.str.892, ptr noundef %118, i64 noundef 3) #3
  %cmp244 = icmp eq i32 %call243, 0
  br i1 %cmp244, label %if.then246, label %if.else247

if.then246:                                       ; preds = %land.lhs.true242
  %119 = load ptr, ptr %zVal, align 8
  store ptr %119, ptr %zVfs, align 8
  br label %if.end306

if.else247:                                       ; preds = %land.lhs.true242, %while.body234
  store ptr null, ptr %aMode, align 8
  store ptr null, ptr %zModeType, align 8
  store i32 0, ptr %mask, align 4
  store i32 0, ptr %limit, align 4
  %120 = load i32, ptr %nOpt, align 4
  %cmp248 = icmp eq i32 %120, 5
  br i1 %cmp248, label %land.lhs.true250, label %if.end255

land.lhs.true250:                                 ; preds = %if.else247
  %121 = load ptr, ptr %zOpt, align 8
  %call251 = call i32 @memcmp(ptr noundef @.str.893, ptr noundef %121, i64 noundef 5) #3
  %cmp252 = icmp eq i32 %call251, 0
  br i1 %cmp252, label %if.then254, label %if.end255

if.then254:                                       ; preds = %land.lhs.true250
  store i32 393216, ptr %mask, align 4
  store ptr @sqlite3ParseUri.aCacheMode, ptr %aMode, align 8
  %122 = load i32, ptr %mask, align 4
  store i32 %122, ptr %limit, align 4
  store ptr @.str.893, ptr %zModeType, align 8
  br label %if.end255

if.end255:                                        ; preds = %if.then254, %land.lhs.true250, %if.else247
  %123 = load i32, ptr %nOpt, align 4
  %cmp256 = icmp eq i32 %123, 4
  br i1 %cmp256, label %land.lhs.true258, label %if.end264

land.lhs.true258:                                 ; preds = %if.end255
  %124 = load ptr, ptr %zOpt, align 8
  %call259 = call i32 @memcmp(ptr noundef @.str.896, ptr noundef %124, i64 noundef 4) #3
  %cmp260 = icmp eq i32 %call259, 0
  br i1 %cmp260, label %if.then262, label %if.end264

if.then262:                                       ; preds = %land.lhs.true258
  store i32 135, ptr %mask, align 4
  store ptr @sqlite3ParseUri.aOpenMode, ptr %aMode, align 8
  %125 = load i32, ptr %mask, align 4
  %126 = load i32, ptr %flags, align 4
  %and263 = and i32 %125, %126
  store i32 %and263, ptr %limit, align 4
  store ptr @.str.43, ptr %zModeType, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %land.lhs.true258, %if.end255
  %127 = load ptr, ptr %aMode, align 8
  %tobool265 = icmp ne ptr %127, null
  br i1 %tobool265, label %if.then266, label %if.end305

if.then266:                                       ; preds = %if.end264
  store i32 0, ptr %mode, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond267

for.cond267:                                      ; preds = %for.inc289, %if.then266
  %128 = load ptr, ptr %aMode, align 8
  %129 = load i32, ptr %i, align 4
  %idxprom268 = sext i32 %129 to i64
  %arrayidx269 = getelementptr inbounds %struct.OpenMode, ptr %128, i64 %idxprom268
  %z = getelementptr inbounds nuw %struct.OpenMode, ptr %arrayidx269, i32 0, i32 0
  %130 = load ptr, ptr %z, align 8
  %tobool270 = icmp ne ptr %130, null
  br i1 %tobool270, label %for.body271, label %for.end291

for.body271:                                      ; preds = %for.cond267
  %131 = load ptr, ptr %aMode, align 8
  %132 = load i32, ptr %i, align 4
  %idxprom273 = sext i32 %132 to i64
  %arrayidx274 = getelementptr inbounds %struct.OpenMode, ptr %131, i64 %idxprom273
  %z275 = getelementptr inbounds nuw %struct.OpenMode, ptr %arrayidx274, i32 0, i32 0
  %133 = load ptr, ptr %z275, align 8
  store ptr %133, ptr %z272, align 8
  %134 = load i32, ptr %nVal, align 4
  %135 = load ptr, ptr %z272, align 8
  %call276 = call i32 @sqlite3Strlen30(ptr noundef %135)
  %cmp277 = icmp eq i32 %134, %call276
  br i1 %cmp277, label %land.lhs.true279, label %if.end288

land.lhs.true279:                                 ; preds = %for.body271
  %136 = load ptr, ptr %zVal, align 8
  %137 = load ptr, ptr %z272, align 8
  %138 = load i32, ptr %nVal, align 4
  %conv280 = sext i32 %138 to i64
  %call281 = call i32 @memcmp(ptr noundef %136, ptr noundef %137, i64 noundef %conv280) #3
  %cmp282 = icmp eq i32 0, %call281
  br i1 %cmp282, label %if.then284, label %if.end288

if.then284:                                       ; preds = %land.lhs.true279
  %139 = load ptr, ptr %aMode, align 8
  %140 = load i32, ptr %i, align 4
  %idxprom285 = sext i32 %140 to i64
  %arrayidx286 = getelementptr inbounds %struct.OpenMode, ptr %139, i64 %idxprom285
  %mode287 = getelementptr inbounds nuw %struct.OpenMode, ptr %arrayidx286, i32 0, i32 1
  %141 = load i32, ptr %mode287, align 8
  store i32 %141, ptr %mode, align 4
  br label %for.end291

if.end288:                                        ; preds = %land.lhs.true279, %for.body271
  br label %for.inc289

for.inc289:                                       ; preds = %if.end288
  %142 = load i32, ptr %i, align 4
  %inc290 = add nsw i32 %142, 1
  store i32 %inc290, ptr %i, align 4
  br label %for.cond267, !llvm.loop !12

for.end291:                                       ; preds = %if.then284, %for.cond267
  %143 = load i32, ptr %mode, align 4
  %cmp292 = icmp eq i32 %143, 0
  br i1 %cmp292, label %if.then294, label %if.end296

if.then294:                                       ; preds = %for.end291
  %144 = load ptr, ptr %zModeType, align 8
  %145 = load ptr, ptr %zVal, align 8
  %call295 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.900, ptr noundef %144, ptr noundef %145)
  %146 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call295, ptr %146, align 8
  store i32 1, ptr %rc, align 4
  br label %parse_uri_out

if.end296:                                        ; preds = %for.end291
  %147 = load i32, ptr %mode, align 4
  %and297 = and i32 %147, -129
  %148 = load i32, ptr %limit, align 4
  %cmp298 = icmp sgt i32 %and297, %148
  br i1 %cmp298, label %if.then300, label %if.end302

if.then300:                                       ; preds = %if.end296
  %149 = load ptr, ptr %zModeType, align 8
  %150 = load ptr, ptr %zVal, align 8
  %call301 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.901, ptr noundef %149, ptr noundef %150)
  %151 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call301, ptr %151, align 8
  store i32 3, ptr %rc, align 4
  br label %parse_uri_out

if.end302:                                        ; preds = %if.end296
  %152 = load i32, ptr %flags, align 4
  %153 = load i32, ptr %mask, align 4
  %not = xor i32 %153, -1
  %and303 = and i32 %152, %not
  %154 = load i32, ptr %mode, align 4
  %or304 = or i32 %and303, %154
  store i32 %or304, ptr %flags, align 4
  br label %if.end305

if.end305:                                        ; preds = %if.end302, %if.end264
  br label %if.end306

if.end306:                                        ; preds = %if.end305, %if.then246
  %155 = load ptr, ptr %zVal, align 8
  %156 = load i32, ptr %nVal, align 4
  %add307 = add nsw i32 %156, 1
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds i8, ptr %155, i64 %idxprom308
  store ptr %arrayidx309, ptr %zOpt, align 8
  br label %while.cond231, !llvm.loop !13

while.end310:                                     ; preds = %while.cond231
  br label %if.end328

if.else311:                                       ; preds = %land.lhs.true3, %land.lhs.true, %lor.lhs.false
  %157 = load i32, ptr %nUri, align 4
  %add312 = add nsw i32 %157, 2
  %conv313 = sext i32 %add312 to i64
  %call314 = call ptr @sqlite3_malloc64(i64 noundef %conv313)
  store ptr %call314, ptr %zFile, align 8
  %158 = load ptr, ptr %zFile, align 8
  %tobool315 = icmp ne ptr %158, null
  br i1 %tobool315, label %if.end317, label %if.then316

if.then316:                                       ; preds = %if.else311
  store i32 7, ptr %retval, align 4
  br label %return

if.end317:                                        ; preds = %if.else311
  %159 = load i32, ptr %nUri, align 4
  %tobool318 = icmp ne i32 %159, 0
  br i1 %tobool318, label %if.then319, label %if.end321

if.then319:                                       ; preds = %if.end317
  %160 = load ptr, ptr %zFile, align 8
  %161 = load ptr, ptr %zUri.addr, align 8
  %162 = load i32, ptr %nUri, align 4
  %conv320 = sext i32 %162 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %160, ptr align 1 %161, i64 %conv320, i1 false)
  br label %if.end321

if.end321:                                        ; preds = %if.then319, %if.end317
  %163 = load ptr, ptr %zFile, align 8
  %164 = load i32, ptr %nUri, align 4
  %idxprom322 = sext i32 %164 to i64
  %arrayidx323 = getelementptr inbounds i8, ptr %163, i64 %idxprom322
  store i8 0, ptr %arrayidx323, align 1
  %165 = load ptr, ptr %zFile, align 8
  %166 = load i32, ptr %nUri, align 4
  %add324 = add nsw i32 %166, 1
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds i8, ptr %165, i64 %idxprom325
  store i8 0, ptr %arrayidx326, align 1
  %167 = load i32, ptr %flags, align 4
  %and327 = and i32 %167, -65
  store i32 %and327, ptr %flags, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.end321, %while.end310
  %168 = load ptr, ptr %zVfs, align 8
  %call329 = call ptr @sqlite3_vfs_find(ptr noundef %168)
  %169 = load ptr, ptr %ppVfs.addr, align 8
  store ptr %call329, ptr %169, align 8
  %170 = load ptr, ptr %ppVfs.addr, align 8
  %171 = load ptr, ptr %170, align 8
  %cmp330 = icmp eq ptr %171, null
  br i1 %cmp330, label %if.then332, label %if.end334

if.then332:                                       ; preds = %if.end328
  %172 = load ptr, ptr %zVfs, align 8
  %call333 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.902, ptr noundef %172)
  %173 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call333, ptr %173, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end334

if.end334:                                        ; preds = %if.then332, %if.end328
  br label %parse_uri_out

parse_uri_out:                                    ; preds = %if.end334, %if.then300, %if.then294, %if.then47
  %174 = load i32, ptr %rc, align 4
  %cmp335 = icmp ne i32 %174, 0
  br i1 %cmp335, label %if.then337, label %if.end338

if.then337:                                       ; preds = %parse_uri_out
  %175 = load ptr, ptr %zFile, align 8
  call void @sqlite3_free(ptr noundef %175)
  store ptr null, ptr %zFile, align 8
  br label %if.end338

if.end338:                                        ; preds = %if.then337, %parse_uri_out
  %176 = load i32, ptr %flags, align 4
  %177 = load ptr, ptr %pFlags.addr, align 8
  store i32 %176, ptr %177, align 4
  %178 = load ptr, ptr %zFile, align 8
  %179 = load ptr, ptr %pzFile.addr, align 8
  store ptr %178, ptr %179, align 8
  %180 = load i32, ptr %rc, align 4
  store i32 %180, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end338, %if.then316, %if.then17
  %181 = load i32, ptr %retval, align 4
  ret i32 %181
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

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
