; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.119 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.233 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.234 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.235 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.236 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.237 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.238 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.239 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.240 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.241 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.242 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.243 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.244 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHexToint(i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileString(ptr noundef %pGen) #1 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pStr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %iCons = alloca i32, align 4
  %rc = alloca i32, align 4
  %zPtr = alloca ptr, align 8
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %c170 = alloca i32, align 4
  %zExpr = alloca ptr, align 8
  %iNest = alloca i32, align 4
  %zExpr265 = alloca ptr, align 8
  %iSquare = alloca i32, align 4
  %iCurly = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 0
  store ptr %sData, ptr %pStr, align 8
  store ptr null, ptr %pObj, align 8
  %2 = load ptr, ptr %pStr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 8
  store ptr %3, ptr %zIn, align 8
  %4 = load ptr, ptr %zIn, align 8
  %5 = load ptr, ptr %pStr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nByte, align 8
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %7 = load ptr, ptr %zIn, align 8
  %8 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmEmitInstr(ptr noundef %10, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr %zCur, align 8
  store i32 0, ptr %iCons, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end453, %sw.epilog, %if.end
  %11 = load ptr, ptr %zIn, align 8
  store ptr %11, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end49, %for.cond
  %12 = load ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zEnd, align 8
  %cmp1 = icmp ult ptr %12, %13
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %zIn, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %15 to i32
  %cmp3 = icmp ne i32 %conv, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %zIn, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %18 to i32
  %cmp7 = icmp eq i32 %conv6, 123
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %19 = load ptr, ptr %zIn, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load ptr, ptr %zEnd, align 8
  %cmp10 = icmp ult ptr %arrayidx9, %20
  br i1 %cmp10, label %land.lhs.true12, label %if.else

land.lhs.true12:                                  ; preds = %land.lhs.true
  %21 = load ptr, ptr %zIn, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %22 to i32
  %cmp15 = icmp eq i32 %conv14, 36
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %land.lhs.true12
  br label %while.end

if.else:                                          ; preds = %land.lhs.true12, %land.lhs.true, %while.body
  %23 = load ptr, ptr %zIn, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %24 to i32
  %cmp20 = icmp eq i32 %conv19, 36
  br i1 %cmp20, label %land.lhs.true22, label %if.end48

land.lhs.true22:                                  ; preds = %if.else
  %25 = load ptr, ptr %zIn, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %25, i64 1
  %26 = load ptr, ptr %zEnd, align 8
  %cmp24 = icmp ult ptr %arrayidx23, %26
  br i1 %cmp24, label %land.lhs.true26, label %if.end48

land.lhs.true26:                                  ; preds = %land.lhs.true22
  %27 = load ptr, ptr %zIn, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %27, i64 1
  %28 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %28 to i32
  %cmp29 = icmp sge i32 %conv28, 192
  br i1 %cmp29, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true26
  %call31 = call ptr @__ctype_b_loc() #2
  %29 = load ptr, ptr %call31, align 8
  %30 = load ptr, ptr %zIn, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %31 to i32
  %idxprom34 = sext i32 %conv33 to i64
  %arrayidx35 = getelementptr inbounds i16, ptr %29, i64 %idxprom34
  %32 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %32 to i32
  %and = and i32 %conv36, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then47, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %33 = load ptr, ptr %zIn, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %33, i64 1
  %34 = load i8, ptr %arrayidx38, align 1
  %conv39 = sext i8 %34 to i32
  %cmp40 = icmp eq i32 %conv39, 123
  br i1 %cmp40, label %if.then47, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %35 = load ptr, ptr %zIn, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %35, i64 1
  %36 = load i8, ptr %arrayidx43, align 1
  %conv44 = sext i8 %36 to i32
  %cmp45 = icmp eq i32 %conv44, 95
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %lor.lhs.false42, %lor.lhs.false37, %lor.lhs.false, %land.lhs.true26
  br label %while.end

if.end48:                                         ; preds = %lor.lhs.false42, %land.lhs.true22, %if.else
  br label %if.end49

if.end49:                                         ; preds = %if.end48
  %37 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then47, %if.then17, %land.end
  %38 = load ptr, ptr %zIn, align 8
  %39 = load ptr, ptr %zCur, align 8
  %cmp50 = icmp ugt ptr %38, %39
  br i1 %cmp50, label %if.then52, label %if.end64

if.then52:                                        ; preds = %while.end
  %40 = load ptr, ptr %pObj, align 8
  %cmp53 = icmp eq ptr %40, null
  br i1 %cmp53, label %if.then55, label %if.end61

if.then55:                                        ; preds = %if.then52
  %41 = load ptr, ptr %pGen.addr, align 8
  %call56 = call ptr @GenStateNewStrObj(ptr noundef %41, ptr noundef %iCons)
  store ptr %call56, ptr %pObj, align 8
  %42 = load ptr, ptr %pObj, align 8
  %cmp57 = icmp eq ptr %42, null
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then55
  store i32 -10, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.then55
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then52
  %43 = load ptr, ptr %pObj, align 8
  %44 = load ptr, ptr %zCur, align 8
  %45 = load ptr, ptr %zIn, align 8
  %46 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %45 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %46 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv62 = trunc i64 %sub.ptr.sub to i32
  %call63 = call i32 @PH7_MemObjStringAppend(ptr noundef %43, ptr noundef %44, i32 noundef %conv62)
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %while.end
  %47 = load ptr, ptr %zIn, align 8
  %48 = load ptr, ptr %zEnd, align 8
  %cmp65 = icmp uge ptr %47, %48
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  br label %for.end454

if.end68:                                         ; preds = %if.end64
  %49 = load ptr, ptr %zIn, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %49, i64 0
  %50 = load i8, ptr %arrayidx69, align 1
  %conv70 = sext i8 %50 to i32
  %cmp71 = icmp eq i32 %conv70, 92
  br i1 %cmp71, label %if.then73, label %if.end218

if.then73:                                        ; preds = %if.end68
  store ptr null, ptr %zPtr, align 8
  %51 = load ptr, ptr %zIn, align 8
  %incdec.ptr74 = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr74, ptr %zIn, align 8
  %52 = load ptr, ptr %zIn, align 8
  %53 = load ptr, ptr %zEnd, align 8
  %cmp75 = icmp uge ptr %52, %53
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then73
  br label %for.end454

if.end78:                                         ; preds = %if.then73
  %54 = load ptr, ptr %pObj, align 8
  %cmp79 = icmp eq ptr %54, null
  br i1 %cmp79, label %if.then81, label %if.end87

if.then81:                                        ; preds = %if.end78
  %55 = load ptr, ptr %pGen.addr, align 8
  %call82 = call ptr @GenStateNewStrObj(ptr noundef %55, ptr noundef %iCons)
  store ptr %call82, ptr %pObj, align 8
  %56 = load ptr, ptr %pObj, align 8
  %cmp83 = icmp eq ptr %56, null
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.then81
  store i32 -10, ptr %retval, align 4
  br label %return

if.end86:                                         ; preds = %if.then81
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end78
  store i32 1, ptr %n, align 4
  %57 = load ptr, ptr %zIn, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx88, align 1
  %conv89 = sext i8 %58 to i32
  switch i32 %conv89, label %sw.default [
    i32 36, label %sw.bb
    i32 92, label %sw.bb91
    i32 97, label %sw.bb93
    i32 98, label %sw.bb95
    i32 102, label %sw.bb97
    i32 110, label %sw.bb99
    i32 114, label %sw.bb101
    i32 116, label %sw.bb103
    i32 118, label %sw.bb105
    i32 39, label %sw.bb107
    i32 34, label %sw.bb109
    i32 48, label %sw.bb111
    i32 120, label %sw.bb113
    i32 111, label %sw.bb146
  ]

sw.bb:                                            ; preds = %if.end87
  %59 = load ptr, ptr %pObj, align 8
  %call90 = call i32 @PH7_MemObjStringAppend(ptr noundef %59, ptr noundef @.str.233, i32 noundef 1)
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end87
  %60 = load ptr, ptr %pObj, align 8
  %call92 = call i32 @PH7_MemObjStringAppend(ptr noundef %60, ptr noundef @.str.234, i32 noundef 1)
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end87
  %61 = load ptr, ptr %pObj, align 8
  %call94 = call i32 @PH7_MemObjStringAppend(ptr noundef %61, ptr noundef @.str.235, i32 noundef 1)
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end87
  %62 = load ptr, ptr %pObj, align 8
  %call96 = call i32 @PH7_MemObjStringAppend(ptr noundef %62, ptr noundef @.str.236, i32 noundef 1)
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.end87
  %63 = load ptr, ptr %pObj, align 8
  %call98 = call i32 @PH7_MemObjStringAppend(ptr noundef %63, ptr noundef @.str.237, i32 noundef 1)
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end87
  %64 = load ptr, ptr %pObj, align 8
  %call100 = call i32 @PH7_MemObjStringAppend(ptr noundef %64, ptr noundef @.str.47, i32 noundef 1)
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end87
  %65 = load ptr, ptr %pObj, align 8
  %call102 = call i32 @PH7_MemObjStringAppend(ptr noundef %65, ptr noundef @.str.238, i32 noundef 1)
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end87
  %66 = load ptr, ptr %pObj, align 8
  %call104 = call i32 @PH7_MemObjStringAppend(ptr noundef %66, ptr noundef @.str.239, i32 noundef 1)
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end87
  %67 = load ptr, ptr %pObj, align 8
  %call106 = call i32 @PH7_MemObjStringAppend(ptr noundef %67, ptr noundef @.str.240, i32 noundef 1)
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.end87
  %68 = load ptr, ptr %pObj, align 8
  %call108 = call i32 @PH7_MemObjStringAppend(ptr noundef %68, ptr noundef @.str.241, i32 noundef 1)
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end87
  %69 = load ptr, ptr %pObj, align 8
  %call110 = call i32 @PH7_MemObjStringAppend(ptr noundef %69, ptr noundef @.str.242, i32 noundef 1)
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end87
  %70 = load ptr, ptr %pObj, align 8
  %call112 = call i32 @PH7_MemObjStringAppend(ptr noundef %70, ptr noundef @.str.119, i32 noundef 1)
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.end87
  %71 = load ptr, ptr %zIn, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %71, i64 1
  %72 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %72 to i32
  %cmp116 = icmp slt i32 %conv115, 192
  br i1 %cmp116, label %land.lhs.true118, label %if.else143

land.lhs.true118:                                 ; preds = %sw.bb113
  %call119 = call ptr @__ctype_b_loc() #2
  %73 = load ptr, ptr %call119, align 8
  %74 = load ptr, ptr %zIn, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %74, i64 1
  %75 = load i8, ptr %arrayidx120, align 1
  %conv121 = sext i8 %75 to i32
  %idxprom122 = sext i32 %conv121 to i64
  %arrayidx123 = getelementptr inbounds i16, ptr %73, i64 %idxprom122
  %76 = load i16, ptr %arrayidx123, align 2
  %conv124 = zext i16 %76 to i32
  %and125 = and i32 %conv124, 4096
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %if.then127, label %if.else143

if.then127:                                       ; preds = %land.lhs.true118
  %77 = load ptr, ptr %zIn, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %77, i64 1
  %78 = load i8, ptr %arrayidx128, align 1
  %conv129 = sext i8 %78 to i32
  %call130 = call i32 @SyHexToint(i32 noundef %conv129)
  %shl = shl i32 %call130, 4
  store i32 %shl, ptr %c, align 4
  %79 = load ptr, ptr %zIn, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %79, i64 2
  %80 = load ptr, ptr %zEnd, align 8
  %cmp132 = icmp ult ptr %arrayidx131, %80
  br i1 %cmp132, label %if.then134, label %if.end138

if.then134:                                       ; preds = %if.then127
  %81 = load ptr, ptr %zIn, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %81, i64 2
  %82 = load i8, ptr %arrayidx135, align 1
  %conv136 = sext i8 %82 to i32
  %call137 = call i32 @SyHexToint(i32 noundef %conv136)
  %83 = load i32, ptr %c, align 4
  %add = add nsw i32 %83, %call137
  store i32 %add, ptr %c, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then134, %if.then127
  %84 = load ptr, ptr %pObj, align 8
  %call139 = call i32 @PH7_MemObjStringAppend(ptr noundef %84, ptr noundef %c, i32 noundef 1)
  %85 = load i32, ptr %n, align 4
  %conv140 = zext i32 %85 to i64
  %add141 = add i64 %conv140, 2
  %conv142 = trunc i64 %add141 to i32
  store i32 %conv142, ptr %n, align 4
  br label %if.end145

if.else143:                                       ; preds = %land.lhs.true118, %sw.bb113
  %86 = load ptr, ptr %pObj, align 8
  %call144 = call i32 @PH7_MemObjStringAppend(ptr noundef %86, ptr noundef @.str.243, i32 noundef 1)
  br label %if.end145

if.end145:                                        ; preds = %if.else143, %if.end138
  br label %sw.epilog

sw.bb146:                                         ; preds = %if.end87
  %87 = load ptr, ptr %zIn, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %87, i64 1
  %88 = load ptr, ptr %zEnd, align 8
  %cmp148 = icmp ult ptr %arrayidx147, %88
  br i1 %cmp148, label %land.lhs.true150, label %if.else214

land.lhs.true150:                                 ; preds = %sw.bb146
  %89 = load ptr, ptr %zIn, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %89, i64 1
  %90 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %90 to i32
  %cmp153 = icmp slt i32 %conv152, 192
  br i1 %cmp153, label %land.lhs.true155, label %if.else214

land.lhs.true155:                                 ; preds = %land.lhs.true150
  %call156 = call ptr @__ctype_b_loc() #2
  %91 = load ptr, ptr %call156, align 8
  %92 = load ptr, ptr %zIn, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %92, i64 1
  %93 = load i8, ptr %arrayidx157, align 1
  %conv158 = sext i8 %93 to i32
  %idxprom159 = sext i32 %conv158 to i64
  %arrayidx160 = getelementptr inbounds i16, ptr %91, i64 %idxprom159
  %94 = load i16, ptr %arrayidx160, align 2
  %conv161 = zext i16 %94 to i32
  %and162 = and i32 %conv161, 2048
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %land.lhs.true164, label %if.else214

land.lhs.true164:                                 ; preds = %land.lhs.true155
  %95 = load ptr, ptr %zIn, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %95, i64 1
  %96 = load i8, ptr %arrayidx165, align 1
  %conv166 = sext i8 %96 to i32
  %sub = sub nsw i32 %conv166, 48
  %cmp167 = icmp slt i32 %sub, 8
  br i1 %cmp167, label %if.then169, label %if.else214

if.then169:                                       ; preds = %land.lhs.true164
  store i32 0, ptr %c170, align 4
  %97 = load ptr, ptr %zIn, align 8
  %incdec.ptr171 = getelementptr inbounds nuw i8, ptr %97, i32 1
  store ptr %incdec.ptr171, ptr %zIn, align 8
  %98 = load ptr, ptr %zIn, align 8
  store ptr %98, ptr %zPtr, align 8
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc, %if.then169
  %99 = load ptr, ptr %zPtr, align 8
  %100 = load ptr, ptr %zIn, align 8
  %arrayidx173 = getelementptr inbounds nuw i8, ptr %100, i64 3
  %cmp174 = icmp ult ptr %99, %arrayidx173
  br i1 %cmp174, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond172
  %101 = load ptr, ptr %zPtr, align 8
  %102 = load ptr, ptr %zEnd, align 8
  %cmp176 = icmp uge ptr %101, %102
  br i1 %cmp176, label %if.then198, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %for.body
  %103 = load ptr, ptr %zPtr, align 8
  %arrayidx179 = getelementptr inbounds i8, ptr %103, i64 0
  %104 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %104 to i32
  %cmp181 = icmp sge i32 %conv180, 192
  br i1 %cmp181, label %if.then198, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %lor.lhs.false178
  %call184 = call ptr @__ctype_b_loc() #2
  %105 = load ptr, ptr %call184, align 8
  %106 = load ptr, ptr %zPtr, align 8
  %arrayidx185 = getelementptr inbounds i8, ptr %106, i64 0
  %107 = load i8, ptr %arrayidx185, align 1
  %conv186 = sext i8 %107 to i32
  %idxprom187 = sext i32 %conv186 to i64
  %arrayidx188 = getelementptr inbounds i16, ptr %105, i64 %idxprom187
  %108 = load i16, ptr %arrayidx188, align 2
  %conv189 = zext i16 %108 to i32
  %and190 = and i32 %conv189, 2048
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %lor.lhs.false192, label %if.then198

lor.lhs.false192:                                 ; preds = %lor.lhs.false183
  %109 = load ptr, ptr %zPtr, align 8
  %arrayidx193 = getelementptr inbounds i8, ptr %109, i64 0
  %110 = load i8, ptr %arrayidx193, align 1
  %conv194 = sext i8 %110 to i32
  %sub195 = sub nsw i32 %conv194, 48
  %cmp196 = icmp sgt i32 %sub195, 7
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %lor.lhs.false192, %lor.lhs.false183, %lor.lhs.false178, %for.body
  br label %for.end

if.end199:                                        ; preds = %lor.lhs.false192
  %111 = load i32, ptr %c170, align 4
  %mul = mul nsw i32 %111, 8
  %112 = load ptr, ptr %zPtr, align 8
  %arrayidx200 = getelementptr inbounds i8, ptr %112, i64 0
  %113 = load i8, ptr %arrayidx200, align 1
  %conv201 = sext i8 %113 to i32
  %sub202 = sub nsw i32 %conv201, 48
  %add203 = add nsw i32 %mul, %sub202
  store i32 %add203, ptr %c170, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end199
  %114 = load ptr, ptr %zPtr, align 8
  %incdec.ptr204 = getelementptr inbounds nuw i8, ptr %114, i32 1
  store ptr %incdec.ptr204, ptr %zPtr, align 8
  br label %for.cond172, !llvm.loop !8

for.end:                                          ; preds = %if.then198, %for.cond172
  %115 = load i32, ptr %c170, align 4
  %cmp205 = icmp sgt i32 %115, 0
  br i1 %cmp205, label %if.then207, label %if.end209

if.then207:                                       ; preds = %for.end
  %116 = load ptr, ptr %pObj, align 8
  %call208 = call i32 @PH7_MemObjStringAppend(ptr noundef %116, ptr noundef %c170, i32 noundef 1)
  br label %if.end209

if.end209:                                        ; preds = %if.then207, %for.end
  %117 = load ptr, ptr %zPtr, align 8
  %118 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast210 = ptrtoint ptr %117 to i64
  %sub.ptr.rhs.cast211 = ptrtoint ptr %118 to i64
  %sub.ptr.sub212 = sub i64 %sub.ptr.lhs.cast210, %sub.ptr.rhs.cast211
  %conv213 = trunc i64 %sub.ptr.sub212 to i32
  store i32 %conv213, ptr %n, align 4
  br label %if.end216

if.else214:                                       ; preds = %land.lhs.true164, %land.lhs.true155, %land.lhs.true150, %sw.bb146
  %119 = load ptr, ptr %pObj, align 8
  %call215 = call i32 @PH7_MemObjStringAppend(ptr noundef %119, ptr noundef @.str.244, i32 noundef 1)
  br label %if.end216

if.end216:                                        ; preds = %if.else214, %if.end209
  br label %sw.epilog

sw.default:                                       ; preds = %if.end87
  %120 = load ptr, ptr %pObj, align 8
  %121 = load ptr, ptr %zIn, align 8
  %call217 = call i32 @PH7_MemObjStringAppend(ptr noundef %120, ptr noundef %121, i32 noundef 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end216, %if.end145, %sw.bb111, %sw.bb109, %sw.bb107, %sw.bb105, %sw.bb103, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb95, %sw.bb93, %sw.bb91, %sw.bb
  %122 = load i32, ptr %n, align 4
  %123 = load ptr, ptr %zIn, align 8
  %idx.ext = zext i32 %122 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %123, i64 %idx.ext
  store ptr %add.ptr, ptr %zIn, align 8
  br label %for.cond

if.end218:                                        ; preds = %if.end68
  %124 = load ptr, ptr %zIn, align 8
  %arrayidx219 = getelementptr inbounds i8, ptr %124, i64 0
  %125 = load i8, ptr %arrayidx219, align 1
  %conv220 = sext i8 %125 to i32
  %cmp221 = icmp eq i32 %conv220, 123
  br i1 %cmp221, label %if.then223, label %if.else264

if.then223:                                       ; preds = %if.end218
  store i32 1, ptr %iNest, align 4
  %126 = load ptr, ptr %zIn, align 8
  %incdec.ptr224 = getelementptr inbounds nuw i8, ptr %126, i32 1
  store ptr %incdec.ptr224, ptr %zIn, align 8
  %127 = load ptr, ptr %zIn, align 8
  store ptr %127, ptr %zExpr, align 8
  br label %while.cond225

while.cond225:                                    ; preds = %if.end245, %if.then223
  %128 = load ptr, ptr %zIn, align 8
  %129 = load ptr, ptr %zEnd, align 8
  %cmp226 = icmp ult ptr %128, %129
  br i1 %cmp226, label %while.body228, label %while.end247

while.body228:                                    ; preds = %while.cond225
  %130 = load ptr, ptr %zIn, align 8
  %arrayidx229 = getelementptr inbounds i8, ptr %130, i64 0
  %131 = load i8, ptr %arrayidx229, align 1
  %conv230 = sext i8 %131 to i32
  %cmp231 = icmp eq i32 %conv230, 123
  br i1 %cmp231, label %if.then233, label %if.else234

if.then233:                                       ; preds = %while.body228
  %132 = load i32, ptr %iNest, align 4
  %inc = add nsw i32 %132, 1
  store i32 %inc, ptr %iNest, align 4
  br label %if.end245

if.else234:                                       ; preds = %while.body228
  %133 = load ptr, ptr %zIn, align 8
  %arrayidx235 = getelementptr inbounds i8, ptr %133, i64 0
  %134 = load i8, ptr %arrayidx235, align 1
  %conv236 = sext i8 %134 to i32
  %cmp237 = icmp eq i32 %conv236, 125
  br i1 %cmp237, label %if.then239, label %if.end244

if.then239:                                       ; preds = %if.else234
  %135 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %135, -1
  store i32 %dec, ptr %iNest, align 4
  %136 = load i32, ptr %iNest, align 4
  %cmp240 = icmp sle i32 %136, 0
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %if.then239
  br label %while.end247

if.end243:                                        ; preds = %if.then239
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.else234
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %if.then233
  %137 = load ptr, ptr %zIn, align 8
  %incdec.ptr246 = getelementptr inbounds nuw i8, ptr %137, i32 1
  store ptr %incdec.ptr246, ptr %zIn, align 8
  br label %while.cond225, !llvm.loop !9

while.end247:                                     ; preds = %if.then242, %while.cond225
  %138 = load ptr, ptr %pGen.addr, align 8
  %139 = load ptr, ptr %pGen.addr, align 8
  %pIn248 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %139, i32 0, i32 12
  %140 = load ptr, ptr %pIn248, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %140, i32 0, i32 2
  %141 = load i32, ptr %nLine, align 4
  %142 = load ptr, ptr %zExpr, align 8
  %143 = load ptr, ptr %zIn, align 8
  %call249 = call i32 @GenStateProcessStringExpression(ptr noundef %138, i32 noundef %141, ptr noundef %142, ptr noundef %143)
  store i32 %call249, ptr %rc, align 4
  %144 = load i32, ptr %rc, align 4
  %cmp250 = icmp eq i32 %144, -10
  br i1 %cmp250, label %if.then252, label %if.end253

if.then252:                                       ; preds = %while.end247
  store i32 -10, ptr %retval, align 4
  br label %return

if.end253:                                        ; preds = %while.end247
  %145 = load i32, ptr %rc, align 4
  %cmp254 = icmp ne i32 %145, -3
  br i1 %cmp254, label %if.then256, label %if.end258

if.then256:                                       ; preds = %if.end253
  %146 = load i32, ptr %iCons, align 4
  %inc257 = add nsw i32 %146, 1
  store i32 %inc257, ptr %iCons, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then256, %if.end253
  %147 = load ptr, ptr %zIn, align 8
  %148 = load ptr, ptr %zEnd, align 8
  %cmp259 = icmp ult ptr %147, %148
  br i1 %cmp259, label %if.then261, label %if.end263

if.then261:                                       ; preds = %if.end258
  %149 = load ptr, ptr %zIn, align 8
  %incdec.ptr262 = getelementptr inbounds nuw i8, ptr %149, i32 1
  store ptr %incdec.ptr262, ptr %zIn, align 8
  br label %if.end263

if.end263:                                        ; preds = %if.then261, %if.end258
  br label %if.end453

if.else264:                                       ; preds = %if.end218
  %150 = load ptr, ptr %zIn, align 8
  store ptr %150, ptr %zExpr265, align 8
  br label %for.cond266

for.cond266:                                      ; preds = %if.end439, %if.else264
  br label %while.cond267

while.cond267:                                    ; preds = %while.body276, %for.cond266
  %151 = load ptr, ptr %zIn, align 8
  %152 = load ptr, ptr %zEnd, align 8
  %cmp268 = icmp ult ptr %151, %152
  br i1 %cmp268, label %land.rhs270, label %land.end275

land.rhs270:                                      ; preds = %while.cond267
  %153 = load ptr, ptr %zIn, align 8
  %arrayidx271 = getelementptr inbounds i8, ptr %153, i64 0
  %154 = load i8, ptr %arrayidx271, align 1
  %conv272 = sext i8 %154 to i32
  %cmp273 = icmp eq i32 %conv272, 36
  br label %land.end275

land.end275:                                      ; preds = %land.rhs270, %while.cond267
  %155 = phi i1 [ false, %while.cond267 ], [ %cmp273, %land.rhs270 ]
  br i1 %155, label %while.body276, label %while.end278

while.body276:                                    ; preds = %land.end275
  %156 = load ptr, ptr %zIn, align 8
  %incdec.ptr277 = getelementptr inbounds nuw i8, ptr %156, i32 1
  store ptr %incdec.ptr277, ptr %zIn, align 8
  br label %while.cond267, !llvm.loop !10

while.end278:                                     ; preds = %land.end275
  br label %for.cond279

for.cond279:                                      ; preds = %while.end323, %while.end278
  br label %while.cond280

while.cond280:                                    ; preds = %while.body302, %for.cond279
  %157 = load ptr, ptr %zIn, align 8
  %158 = load ptr, ptr %zEnd, align 8
  %cmp281 = icmp ult ptr %157, %158
  br i1 %cmp281, label %land.lhs.true283, label %land.end301

land.lhs.true283:                                 ; preds = %while.cond280
  %159 = load ptr, ptr %zIn, align 8
  %arrayidx284 = getelementptr inbounds i8, ptr %159, i64 0
  %160 = load i8, ptr %arrayidx284, align 1
  %conv285 = zext i8 %160 to i32
  %cmp286 = icmp slt i32 %conv285, 192
  br i1 %cmp286, label %land.rhs288, label %land.end301

land.rhs288:                                      ; preds = %land.lhs.true283
  %call289 = call ptr @__ctype_b_loc() #2
  %161 = load ptr, ptr %call289, align 8
  %162 = load ptr, ptr %zIn, align 8
  %arrayidx290 = getelementptr inbounds i8, ptr %162, i64 0
  %163 = load i8, ptr %arrayidx290, align 1
  %conv291 = sext i8 %163 to i32
  %idxprom292 = sext i32 %conv291 to i64
  %arrayidx293 = getelementptr inbounds i16, ptr %161, i64 %idxprom292
  %164 = load i16, ptr %arrayidx293, align 2
  %conv294 = zext i16 %164 to i32
  %and295 = and i32 %conv294, 8
  %tobool296 = icmp ne i32 %and295, 0
  br i1 %tobool296, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs288
  %165 = load ptr, ptr %zIn, align 8
  %arrayidx297 = getelementptr inbounds i8, ptr %165, i64 0
  %166 = load i8, ptr %arrayidx297, align 1
  %conv298 = sext i8 %166 to i32
  %cmp299 = icmp eq i32 %conv298, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs288
  %167 = phi i1 [ true, %land.rhs288 ], [ %cmp299, %lor.rhs ]
  br label %land.end301

land.end301:                                      ; preds = %lor.end, %land.lhs.true283, %while.cond280
  %168 = phi i1 [ false, %land.lhs.true283 ], [ false, %while.cond280 ], [ %167, %lor.end ]
  br i1 %168, label %while.body302, label %while.end304

while.body302:                                    ; preds = %land.end301
  %169 = load ptr, ptr %zIn, align 8
  %incdec.ptr303 = getelementptr inbounds nuw i8, ptr %169, i32 1
  store ptr %incdec.ptr303, ptr %zIn, align 8
  br label %while.cond280, !llvm.loop !11

while.end304:                                     ; preds = %land.end301
  %170 = load ptr, ptr %zIn, align 8
  %arrayidx305 = getelementptr inbounds i8, ptr %170, i64 0
  %171 = load i8, ptr %arrayidx305, align 1
  %conv306 = zext i8 %171 to i32
  %cmp307 = icmp sge i32 %conv306, 192
  br i1 %cmp307, label %if.then309, label %if.end324

if.then309:                                       ; preds = %while.end304
  %172 = load ptr, ptr %zIn, align 8
  %incdec.ptr310 = getelementptr inbounds nuw i8, ptr %172, i32 1
  store ptr %incdec.ptr310, ptr %zIn, align 8
  br label %while.cond311

while.cond311:                                    ; preds = %while.body321, %if.then309
  %173 = load ptr, ptr %zIn, align 8
  %174 = load ptr, ptr %zEnd, align 8
  %cmp312 = icmp ult ptr %173, %174
  br i1 %cmp312, label %land.rhs314, label %land.end320

land.rhs314:                                      ; preds = %while.cond311
  %175 = load ptr, ptr %zIn, align 8
  %arrayidx315 = getelementptr inbounds i8, ptr %175, i64 0
  %176 = load i8, ptr %arrayidx315, align 1
  %conv316 = zext i8 %176 to i32
  %and317 = and i32 %conv316, 192
  %cmp318 = icmp eq i32 %and317, 128
  br label %land.end320

land.end320:                                      ; preds = %land.rhs314, %while.cond311
  %177 = phi i1 [ false, %while.cond311 ], [ %cmp318, %land.rhs314 ]
  br i1 %177, label %while.body321, label %while.end323

while.body321:                                    ; preds = %land.end320
  %178 = load ptr, ptr %zIn, align 8
  %incdec.ptr322 = getelementptr inbounds nuw i8, ptr %178, i32 1
  store ptr %incdec.ptr322, ptr %zIn, align 8
  br label %while.cond311, !llvm.loop !12

while.end323:                                     ; preds = %land.end320
  br label %for.cond279

if.end324:                                        ; preds = %while.end304
  br label %for.end325

for.end325:                                       ; preds = %if.end324
  %179 = load ptr, ptr %zIn, align 8
  %180 = load ptr, ptr %zEnd, align 8
  %cmp326 = icmp uge ptr %179, %180
  br i1 %cmp326, label %if.then328, label %if.end329

if.then328:                                       ; preds = %for.end325
  br label %for.end440

if.end329:                                        ; preds = %for.end325
  %181 = load ptr, ptr %zIn, align 8
  %arrayidx330 = getelementptr inbounds i8, ptr %181, i64 0
  %182 = load i8, ptr %arrayidx330, align 1
  %conv331 = sext i8 %182 to i32
  %cmp332 = icmp eq i32 %conv331, 91
  br i1 %cmp332, label %if.then334, label %if.else366

if.then334:                                       ; preds = %if.end329
  store i32 1, ptr %iSquare, align 4
  %183 = load ptr, ptr %zIn, align 8
  %incdec.ptr335 = getelementptr inbounds nuw i8, ptr %183, i32 1
  store ptr %incdec.ptr335, ptr %zIn, align 8
  br label %while.cond336

while.cond336:                                    ; preds = %if.end358, %if.then334
  %184 = load ptr, ptr %zIn, align 8
  %185 = load ptr, ptr %zEnd, align 8
  %cmp337 = icmp ult ptr %184, %185
  br i1 %cmp337, label %while.body339, label %while.end360

while.body339:                                    ; preds = %while.cond336
  %186 = load ptr, ptr %zIn, align 8
  %arrayidx340 = getelementptr inbounds i8, ptr %186, i64 0
  %187 = load i8, ptr %arrayidx340, align 1
  %conv341 = sext i8 %187 to i32
  %cmp342 = icmp eq i32 %conv341, 91
  br i1 %cmp342, label %if.then344, label %if.else346

if.then344:                                       ; preds = %while.body339
  %188 = load i32, ptr %iSquare, align 4
  %inc345 = add nsw i32 %188, 1
  store i32 %inc345, ptr %iSquare, align 4
  br label %if.end358

if.else346:                                       ; preds = %while.body339
  %189 = load ptr, ptr %zIn, align 8
  %arrayidx347 = getelementptr inbounds i8, ptr %189, i64 0
  %190 = load i8, ptr %arrayidx347, align 1
  %conv348 = sext i8 %190 to i32
  %cmp349 = icmp eq i32 %conv348, 93
  br i1 %cmp349, label %if.then351, label %if.end357

if.then351:                                       ; preds = %if.else346
  %191 = load i32, ptr %iSquare, align 4
  %dec352 = add nsw i32 %191, -1
  store i32 %dec352, ptr %iSquare, align 4
  %192 = load i32, ptr %iSquare, align 4
  %cmp353 = icmp sle i32 %192, 0
  br i1 %cmp353, label %if.then355, label %if.end356

if.then355:                                       ; preds = %if.then351
  br label %while.end360

if.end356:                                        ; preds = %if.then351
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %if.else346
  br label %if.end358

if.end358:                                        ; preds = %if.end357, %if.then344
  %193 = load ptr, ptr %zIn, align 8
  %incdec.ptr359 = getelementptr inbounds nuw i8, ptr %193, i32 1
  store ptr %incdec.ptr359, ptr %zIn, align 8
  br label %while.cond336, !llvm.loop !13

while.end360:                                     ; preds = %if.then355, %while.cond336
  %194 = load ptr, ptr %zIn, align 8
  %195 = load ptr, ptr %zEnd, align 8
  %cmp361 = icmp ult ptr %194, %195
  br i1 %cmp361, label %if.then363, label %if.end365

if.then363:                                       ; preds = %while.end360
  %196 = load ptr, ptr %zIn, align 8
  %incdec.ptr364 = getelementptr inbounds nuw i8, ptr %196, i32 1
  store ptr %incdec.ptr364, ptr %zIn, align 8
  br label %if.end365

if.end365:                                        ; preds = %if.then363, %while.end360
  br label %for.end440

if.else366:                                       ; preds = %if.end329
  %197 = load ptr, ptr %zIn, align 8
  %arrayidx367 = getelementptr inbounds i8, ptr %197, i64 0
  %198 = load i8, ptr %arrayidx367, align 1
  %conv368 = sext i8 %198 to i32
  %cmp369 = icmp eq i32 %conv368, 123
  br i1 %cmp369, label %if.then371, label %if.else403

if.then371:                                       ; preds = %if.else366
  store i32 1, ptr %iCurly, align 4
  %199 = load ptr, ptr %zIn, align 8
  %incdec.ptr372 = getelementptr inbounds nuw i8, ptr %199, i32 1
  store ptr %incdec.ptr372, ptr %zIn, align 8
  br label %while.cond373

while.cond373:                                    ; preds = %if.end395, %if.then371
  %200 = load ptr, ptr %zIn, align 8
  %201 = load ptr, ptr %zEnd, align 8
  %cmp374 = icmp ult ptr %200, %201
  br i1 %cmp374, label %while.body376, label %while.end397

while.body376:                                    ; preds = %while.cond373
  %202 = load ptr, ptr %zIn, align 8
  %arrayidx377 = getelementptr inbounds i8, ptr %202, i64 0
  %203 = load i8, ptr %arrayidx377, align 1
  %conv378 = sext i8 %203 to i32
  %cmp379 = icmp eq i32 %conv378, 123
  br i1 %cmp379, label %if.then381, label %if.else383

if.then381:                                       ; preds = %while.body376
  %204 = load i32, ptr %iCurly, align 4
  %inc382 = add nsw i32 %204, 1
  store i32 %inc382, ptr %iCurly, align 4
  br label %if.end395

if.else383:                                       ; preds = %while.body376
  %205 = load ptr, ptr %zIn, align 8
  %arrayidx384 = getelementptr inbounds i8, ptr %205, i64 0
  %206 = load i8, ptr %arrayidx384, align 1
  %conv385 = sext i8 %206 to i32
  %cmp386 = icmp eq i32 %conv385, 125
  br i1 %cmp386, label %if.then388, label %if.end394

if.then388:                                       ; preds = %if.else383
  %207 = load i32, ptr %iCurly, align 4
  %dec389 = add nsw i32 %207, -1
  store i32 %dec389, ptr %iCurly, align 4
  %208 = load i32, ptr %iCurly, align 4
  %cmp390 = icmp sle i32 %208, 0
  br i1 %cmp390, label %if.then392, label %if.end393

if.then392:                                       ; preds = %if.then388
  br label %while.end397

if.end393:                                        ; preds = %if.then388
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.else383
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %if.then381
  %209 = load ptr, ptr %zIn, align 8
  %incdec.ptr396 = getelementptr inbounds nuw i8, ptr %209, i32 1
  store ptr %incdec.ptr396, ptr %zIn, align 8
  br label %while.cond373, !llvm.loop !14

while.end397:                                     ; preds = %if.then392, %while.cond373
  %210 = load ptr, ptr %zIn, align 8
  %211 = load ptr, ptr %zEnd, align 8
  %cmp398 = icmp ult ptr %210, %211
  br i1 %cmp398, label %if.then400, label %if.end402

if.then400:                                       ; preds = %while.end397
  %212 = load ptr, ptr %zIn, align 8
  %incdec.ptr401 = getelementptr inbounds nuw i8, ptr %212, i32 1
  store ptr %incdec.ptr401, ptr %zIn, align 8
  br label %if.end402

if.end402:                                        ; preds = %if.then400, %while.end397
  br label %for.end440

if.else403:                                       ; preds = %if.else366
  %213 = load ptr, ptr %zIn, align 8
  %arrayidx404 = getelementptr inbounds i8, ptr %213, i64 0
  %214 = load i8, ptr %arrayidx404, align 1
  %conv405 = sext i8 %214 to i32
  %cmp406 = icmp eq i32 %conv405, 45
  br i1 %cmp406, label %land.lhs.true408, label %if.else419

land.lhs.true408:                                 ; preds = %if.else403
  %215 = load ptr, ptr %zIn, align 8
  %arrayidx409 = getelementptr inbounds i8, ptr %215, i64 1
  %216 = load ptr, ptr %zEnd, align 8
  %cmp410 = icmp ult ptr %arrayidx409, %216
  br i1 %cmp410, label %land.lhs.true412, label %if.else419

land.lhs.true412:                                 ; preds = %land.lhs.true408
  %217 = load ptr, ptr %zIn, align 8
  %arrayidx413 = getelementptr inbounds i8, ptr %217, i64 1
  %218 = load i8, ptr %arrayidx413, align 1
  %conv414 = sext i8 %218 to i32
  %cmp415 = icmp eq i32 %conv414, 62
  br i1 %cmp415, label %if.then417, label %if.else419

if.then417:                                       ; preds = %land.lhs.true412
  %219 = load ptr, ptr %zIn, align 8
  %add.ptr418 = getelementptr inbounds i8, ptr %219, i64 2
  store ptr %add.ptr418, ptr %zIn, align 8
  br label %if.end437

if.else419:                                       ; preds = %land.lhs.true412, %land.lhs.true408, %if.else403
  %220 = load ptr, ptr %zIn, align 8
  %arrayidx420 = getelementptr inbounds i8, ptr %220, i64 0
  %221 = load i8, ptr %arrayidx420, align 1
  %conv421 = sext i8 %221 to i32
  %cmp422 = icmp eq i32 %conv421, 58
  br i1 %cmp422, label %land.lhs.true424, label %if.else435

land.lhs.true424:                                 ; preds = %if.else419
  %222 = load ptr, ptr %zIn, align 8
  %arrayidx425 = getelementptr inbounds i8, ptr %222, i64 1
  %223 = load ptr, ptr %zEnd, align 8
  %cmp426 = icmp ult ptr %arrayidx425, %223
  br i1 %cmp426, label %land.lhs.true428, label %if.else435

land.lhs.true428:                                 ; preds = %land.lhs.true424
  %224 = load ptr, ptr %zIn, align 8
  %arrayidx429 = getelementptr inbounds i8, ptr %224, i64 1
  %225 = load i8, ptr %arrayidx429, align 1
  %conv430 = sext i8 %225 to i32
  %cmp431 = icmp eq i32 %conv430, 58
  br i1 %cmp431, label %if.then433, label %if.else435

if.then433:                                       ; preds = %land.lhs.true428
  %226 = load ptr, ptr %zIn, align 8
  %add.ptr434 = getelementptr inbounds i8, ptr %226, i64 2
  store ptr %add.ptr434, ptr %zIn, align 8
  br label %if.end436

if.else435:                                       ; preds = %land.lhs.true428, %land.lhs.true424, %if.else419
  br label %for.end440

if.end436:                                        ; preds = %if.then433
  br label %if.end437

if.end437:                                        ; preds = %if.end436, %if.then417
  br label %if.end438

if.end438:                                        ; preds = %if.end437
  br label %if.end439

if.end439:                                        ; preds = %if.end438
  br label %for.cond266

for.end440:                                       ; preds = %if.else435, %if.end402, %if.end365, %if.then328
  %227 = load ptr, ptr %pGen.addr, align 8
  %228 = load ptr, ptr %pGen.addr, align 8
  %pIn441 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %228, i32 0, i32 12
  %229 = load ptr, ptr %pIn441, align 8
  %nLine442 = getelementptr inbounds nuw %struct.SyToken, ptr %229, i32 0, i32 2
  %230 = load i32, ptr %nLine442, align 4
  %231 = load ptr, ptr %zExpr265, align 8
  %232 = load ptr, ptr %zIn, align 8
  %call443 = call i32 @GenStateProcessStringExpression(ptr noundef %227, i32 noundef %230, ptr noundef %231, ptr noundef %232)
  store i32 %call443, ptr %rc, align 4
  %233 = load i32, ptr %rc, align 4
  %cmp444 = icmp eq i32 %233, -10
  br i1 %cmp444, label %if.then446, label %if.end447

if.then446:                                       ; preds = %for.end440
  store i32 -10, ptr %retval, align 4
  br label %return

if.end447:                                        ; preds = %for.end440
  %234 = load i32, ptr %rc, align 4
  %cmp448 = icmp ne i32 %234, -3
  br i1 %cmp448, label %if.then450, label %if.end452

if.then450:                                       ; preds = %if.end447
  %235 = load i32, ptr %iCons, align 4
  %inc451 = add nsw i32 %235, 1
  store i32 %inc451, ptr %iCons, align 4
  br label %if.end452

if.end452:                                        ; preds = %if.then450, %if.end447
  br label %if.end453

if.end453:                                        ; preds = %if.end452, %if.end263
  store ptr null, ptr %pObj, align 8
  br label %for.cond

for.end454:                                       ; preds = %if.then77, %if.then67
  %236 = load i32, ptr %iCons, align 4
  %cmp455 = icmp sgt i32 %236, 1
  br i1 %cmp455, label %if.then457, label %if.end460

if.then457:                                       ; preds = %for.end454
  %237 = load ptr, ptr %pGen.addr, align 8
  %pVm458 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %237, i32 0, i32 0
  %238 = load ptr, ptr %pVm458, align 8
  %239 = load i32, ptr %iCons, align 4
  %call459 = call i32 @PH7_VmEmitInstr(ptr noundef %238, i32 noundef 14, i32 noundef %239, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end460

if.end460:                                        ; preds = %if.then457, %for.end454
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end460, %if.then446, %if.then252, %if.then85, %if.then59, %if.then
  %240 = load i32, ptr %retval, align 4
  ret i32 %240
}

; Function Attrs: nounwind uwtable
declare hidden ptr @GenStateNewStrObj(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateProcessStringExpression(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
