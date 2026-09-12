; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_fmt_info = type { i8, i8, i32, i8, ptr, ptr }

@.str.60 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [2 x i8], align 1
@__const.PH7_InputFormat.spaces = external hidden unnamed_addr constant [51 x i8], align 16
@aFmt = external hidden constant [15 x { i8, i8, [2 x i8], i32, i8, [7 x i8], ptr, ptr }], align 16

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local double @ph7_value_to_double(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_InputFormat(ptr noundef %xConsumer, ptr noundef %pCtx, ptr noundef %zIn, i32 noundef %nByte, i32 noundef %nArg, ptr noundef %apArg, ptr noundef %pUserData, i32 noundef %vf) #0 {
entry:
  %retval = alloca i32, align 4
  %xConsumer.addr = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %zIn.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %vf.addr = alloca i32, align 4
  %spaces = alloca [51 x i8], align 16
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zBuf = alloca ptr, align 8
  %zWorker = alloca [1024 x i8], align 16
  %pInfo = alloca ptr, align 8
  %flag_alternateform = alloca i32, align 4
  %flag_leftjustify = alloca i32, align 4
  %flag_blanksign = alloca i32, align 4
  %flag_plussign = alloca i32, align 4
  %flag_zeropad = alloca i32, align 4
  %pArg = alloca ptr, align 8
  %iVal = alloca i64, align 8
  %precision = alloca i32, align 4
  %zExtra = alloca ptr, align 8
  %c = alloca i32, align 4
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %length = alloca i32, align 4
  %prefix = alloca i32, align 4
  %xtype = alloca i8, align 1
  %width = alloca i32, align 4
  %idx = alloca i32, align 4
  %cset = alloca ptr, align 8
  %base = alloca i32, align 4
  %pre = alloca ptr, align 8
  %x = alloca i8, align 1
  %realvalue = alloca x86_fp80, align 16
  %exp = alloca i32, align 4
  %rounder = alloca double, align 8
  %flag_dp = alloca i32, align 4
  %flag_rtz = alloca i32, align 4
  %flag_exp = alloca i32, align 4
  %nsd = alloca i32, align 4
  %i = alloca i32, align 4
  %nPad = alloca i32, align 4
  %nspace = alloca i32, align 4
  %nspace769 = alloca i32, align 4
  store ptr %xConsumer, ptr %xConsumer.addr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zIn, ptr %zIn.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store i32 %vf, ptr %vf.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %spaces, ptr align 16 @__const.PH7_InputFormat.spaces, i64 51, i1 false)
  %0 = load ptr, ptr %zIn.addr, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %2 = load i32, ptr %vf.addr, align 4
  %cmp = icmp eq i32 %2, 1
  %3 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 1
  store i32 %cond, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end797, %entry
  %4 = load ptr, ptr %zIn.addr, align 8
  store ptr %4, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %5 = load ptr, ptr %zIn.addr, align 8
  %6 = load ptr, ptr %zEnd, align 8
  %cmp1 = icmp ult ptr %5, %6
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %zIn.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %zIn.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %11 = load ptr, ptr %zCur, align 8
  %12 = load ptr, ptr %zIn.addr, align 8
  %cmp5 = icmp ult ptr %11, %12
  br i1 %cmp5, label %if.then, label %if.end11

if.then:                                          ; preds = %while.end
  %13 = load ptr, ptr %xConsumer.addr, align 8
  %14 = load ptr, ptr %pCtx.addr, align 8
  %15 = load ptr, ptr %zCur, align 8
  %16 = load ptr, ptr %zIn.addr, align 8
  %17 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv7 = trunc i64 %sub.ptr.sub to i32
  %18 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 %13(ptr noundef %14, ptr noundef %15, i32 noundef %conv7, ptr noundef %18)
  store i32 %call, ptr %rc, align 4
  %19 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %19, -10
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  br label %for.end798

if.end:                                           ; preds = %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end, %while.end
  %20 = load ptr, ptr %zIn.addr, align 8
  %21 = load ptr, ptr %zEnd, align 8
  %cmp12 = icmp uge ptr %20, %21
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  br label %for.end798

if.end15:                                         ; preds = %if.end11
  store i32 0, ptr %flag_zeropad, align 4
  store i32 0, ptr %flag_alternateform, align 4
  store i32 0, ptr %flag_blanksign, align 4
  store i32 0, ptr %flag_plussign, align 4
  store i32 0, ptr %flag_leftjustify, align 4
  %22 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr16, ptr %zIn.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end43, %if.end15
  %23 = load ptr, ptr %zIn.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %24 to i32
  store i32 %conv18, ptr %c, align 4
  %25 = load i32, ptr %c, align 4
  switch i32 %25, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb19
    i32 32, label %sw.bb20
    i32 35, label %sw.bb21
    i32 48, label %sw.bb22
    i32 39, label %sw.bb23
  ]

sw.bb:                                            ; preds = %do.body
  store i32 1, ptr %flag_leftjustify, align 4
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.body
  store i32 1, ptr %flag_plussign, align 4
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.body
  store i32 1, ptr %flag_blanksign, align 4
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.body
  store i32 1, ptr %flag_alternateform, align 4
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.body
  store i32 1, ptr %flag_zeropad, align 4
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.body
  %26 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %incdec.ptr24, ptr %zIn.addr, align 8
  %27 = load ptr, ptr %zIn.addr, align 8
  %28 = load ptr, ptr %zEnd, align 8
  %cmp25 = icmp ult ptr %27, %28
  br i1 %cmp25, label %if.then27, label %if.end36

if.then27:                                        ; preds = %sw.bb23
  %29 = load ptr, ptr %zIn.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx28, align 1
  %conv29 = sext i8 %30 to i32
  store i32 %conv29, ptr %c, align 4
  store i32 0, ptr %idx, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc, %if.then27
  %31 = load i32, ptr %idx, align 4
  %cmp31 = icmp slt i32 %31, 50
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond30
  %32 = load i32, ptr %c, align 4
  %conv33 = trunc i32 %32 to i8
  %33 = load i32, ptr %idx, align 4
  %idxprom34 = sext i32 %33 to i64
  %arrayidx35 = getelementptr inbounds [51 x i8], ptr %spaces, i64 0, i64 %idxprom34
  store i8 %conv33, ptr %arrayidx35, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %idx, align 4
  br label %for.cond30, !llvm.loop !8

for.end:                                          ; preds = %for.cond30
  store i32 0, ptr %c, align 4
  br label %if.end36

if.end36:                                         ; preds = %for.end, %sw.bb23
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end36, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %35 = load i32, ptr %c, align 4
  %cmp37 = icmp eq i32 %35, 0
  br i1 %cmp37, label %land.rhs39, label %land.end43

land.rhs39:                                       ; preds = %do.cond
  %36 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr40 = getelementptr inbounds nuw i8, ptr %36, i32 1
  store ptr %incdec.ptr40, ptr %zIn.addr, align 8
  %37 = load ptr, ptr %zEnd, align 8
  %cmp41 = icmp ult ptr %36, %37
  br label %land.end43

land.end43:                                       ; preds = %land.rhs39, %do.cond
  %38 = phi i1 [ false, %do.cond ], [ %cmp41, %land.rhs39 ]
  br i1 %38, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %land.end43
  store i32 0, ptr %width, align 4
  br label %while.cond44

while.cond44:                                     ; preds = %while.body59, %do.end
  %39 = load ptr, ptr %zIn.addr, align 8
  %40 = load ptr, ptr %zEnd, align 8
  %cmp45 = icmp ult ptr %39, %40
  br i1 %cmp45, label %land.rhs47, label %land.end58

land.rhs47:                                       ; preds = %while.cond44
  %41 = load ptr, ptr %zIn.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %42 to i32
  %cmp50 = icmp sge i32 %conv49, 48
  br i1 %cmp50, label %land.rhs52, label %land.end57

land.rhs52:                                       ; preds = %land.rhs47
  %43 = load ptr, ptr %zIn.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %43, i64 0
  %44 = load i8, ptr %arrayidx53, align 1
  %conv54 = sext i8 %44 to i32
  %cmp55 = icmp sle i32 %conv54, 57
  br label %land.end57

land.end57:                                       ; preds = %land.rhs52, %land.rhs47
  %45 = phi i1 [ false, %land.rhs47 ], [ %cmp55, %land.rhs52 ]
  br label %land.end58

land.end58:                                       ; preds = %land.end57, %while.cond44
  %46 = phi i1 [ false, %while.cond44 ], [ %45, %land.end57 ]
  br i1 %46, label %while.body59, label %while.end63

while.body59:                                     ; preds = %land.end58
  %47 = load i32, ptr %width, align 4
  %mul = mul nsw i32 %47, 10
  %48 = load ptr, ptr %zIn.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %48, i64 0
  %49 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %49 to i32
  %sub = sub nsw i32 %conv61, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, ptr %width, align 4
  %50 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr62 = getelementptr inbounds nuw i8, ptr %50, i32 1
  store ptr %incdec.ptr62, ptr %zIn.addr, align 8
  br label %while.cond44, !llvm.loop !10

while.end63:                                      ; preds = %land.end58
  %51 = load ptr, ptr %zIn.addr, align 8
  %52 = load ptr, ptr %zEnd, align 8
  %cmp64 = icmp ult ptr %51, %52
  br i1 %cmp64, label %land.lhs.true, label %if.end114

land.lhs.true:                                    ; preds = %while.end63
  %53 = load ptr, ptr %zIn.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx66, align 1
  %conv67 = sext i8 %54 to i32
  %cmp68 = icmp eq i32 %conv67, 36
  br i1 %cmp68, label %if.then70, label %if.end114

if.then70:                                        ; preds = %land.lhs.true
  %55 = load i32, ptr %width, align 4
  %cmp71 = icmp sgt i32 %55, 0
  br i1 %cmp71, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.then70
  %56 = load i32, ptr %width, align 4
  store i32 %56, ptr %n, align 4
  %57 = load i32, ptr %vf.addr, align 4
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %land.lhs.true74, label %if.end78

land.lhs.true74:                                  ; preds = %if.then73
  %58 = load i32, ptr %n, align 4
  %cmp75 = icmp sgt i32 %58, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %land.lhs.true74
  %59 = load i32, ptr %n, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, ptr %n, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %land.lhs.true74, %if.then73
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then70
  %60 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr80 = getelementptr inbounds nuw i8, ptr %60, i32 1
  store ptr %incdec.ptr80, ptr %zIn.addr, align 8
  store i32 0, ptr %width, align 4
  %61 = load ptr, ptr %zIn.addr, align 8
  %62 = load ptr, ptr %zEnd, align 8
  %cmp81 = icmp ult ptr %61, %62
  br i1 %cmp81, label %land.lhs.true83, label %if.end90

land.lhs.true83:                                  ; preds = %if.end79
  %63 = load ptr, ptr %zIn.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %63, i64 0
  %64 = load i8, ptr %arrayidx84, align 1
  %conv85 = sext i8 %64 to i32
  %cmp86 = icmp eq i32 %conv85, 48
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %land.lhs.true83
  store i32 1, ptr %flag_zeropad, align 4
  %65 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %65, i32 1
  store ptr %incdec.ptr89, ptr %zIn.addr, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %land.lhs.true83, %if.end79
  br label %while.cond91

while.cond91:                                     ; preds = %while.body106, %if.end90
  %66 = load ptr, ptr %zIn.addr, align 8
  %67 = load ptr, ptr %zEnd, align 8
  %cmp92 = icmp ult ptr %66, %67
  br i1 %cmp92, label %land.rhs94, label %land.end105

land.rhs94:                                       ; preds = %while.cond91
  %68 = load ptr, ptr %zIn.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %68, i64 0
  %69 = load i8, ptr %arrayidx95, align 1
  %conv96 = sext i8 %69 to i32
  %cmp97 = icmp sge i32 %conv96, 48
  br i1 %cmp97, label %land.rhs99, label %land.end104

land.rhs99:                                       ; preds = %land.rhs94
  %70 = load ptr, ptr %zIn.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %70, i64 0
  %71 = load i8, ptr %arrayidx100, align 1
  %conv101 = sext i8 %71 to i32
  %cmp102 = icmp sle i32 %conv101, 57
  br label %land.end104

land.end104:                                      ; preds = %land.rhs99, %land.rhs94
  %72 = phi i1 [ false, %land.rhs94 ], [ %cmp102, %land.rhs99 ]
  br label %land.end105

land.end105:                                      ; preds = %land.end104, %while.cond91
  %73 = phi i1 [ false, %while.cond91 ], [ %72, %land.end104 ]
  br i1 %73, label %while.body106, label %while.end113

while.body106:                                    ; preds = %land.end105
  %74 = load i32, ptr %width, align 4
  %mul107 = mul nsw i32 %74, 10
  %75 = load ptr, ptr %zIn.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %75, i64 0
  %76 = load i8, ptr %arrayidx108, align 1
  %conv109 = sext i8 %76 to i32
  %sub110 = sub nsw i32 %conv109, 48
  %add111 = add nsw i32 %mul107, %sub110
  store i32 %add111, ptr %width, align 4
  %77 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr112 = getelementptr inbounds nuw i8, ptr %77, i32 1
  store ptr %incdec.ptr112, ptr %zIn.addr, align 8
  br label %while.cond91, !llvm.loop !11

while.end113:                                     ; preds = %land.end105
  br label %if.end114

if.end114:                                        ; preds = %while.end113, %land.lhs.true, %while.end63
  %78 = load i32, ptr %width, align 4
  %cmp115 = icmp sgt i32 %78, 1014
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end114
  store i32 1014, ptr %width, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end114
  store i32 -1, ptr %precision, align 4
  %79 = load ptr, ptr %zIn.addr, align 8
  %80 = load ptr, ptr %zEnd, align 8
  %cmp119 = icmp ult ptr %79, %80
  br i1 %cmp119, label %land.lhs.true121, label %if.end151

land.lhs.true121:                                 ; preds = %if.end118
  %81 = load ptr, ptr %zIn.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, ptr %81, i64 0
  %82 = load i8, ptr %arrayidx122, align 1
  %conv123 = sext i8 %82 to i32
  %cmp124 = icmp eq i32 %conv123, 46
  br i1 %cmp124, label %if.then126, label %if.end151

if.then126:                                       ; preds = %land.lhs.true121
  store i32 0, ptr %precision, align 4
  %83 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr127 = getelementptr inbounds nuw i8, ptr %83, i32 1
  store ptr %incdec.ptr127, ptr %zIn.addr, align 8
  br label %while.cond128

while.cond128:                                    ; preds = %while.body143, %if.then126
  %84 = load ptr, ptr %zIn.addr, align 8
  %85 = load ptr, ptr %zEnd, align 8
  %cmp129 = icmp ult ptr %84, %85
  br i1 %cmp129, label %land.rhs131, label %land.end142

land.rhs131:                                      ; preds = %while.cond128
  %86 = load ptr, ptr %zIn.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %86, i64 0
  %87 = load i8, ptr %arrayidx132, align 1
  %conv133 = sext i8 %87 to i32
  %cmp134 = icmp sge i32 %conv133, 48
  br i1 %cmp134, label %land.rhs136, label %land.end141

land.rhs136:                                      ; preds = %land.rhs131
  %88 = load ptr, ptr %zIn.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %88, i64 0
  %89 = load i8, ptr %arrayidx137, align 1
  %conv138 = sext i8 %89 to i32
  %cmp139 = icmp sle i32 %conv138, 57
  br label %land.end141

land.end141:                                      ; preds = %land.rhs136, %land.rhs131
  %90 = phi i1 [ false, %land.rhs131 ], [ %cmp139, %land.rhs136 ]
  br label %land.end142

land.end142:                                      ; preds = %land.end141, %while.cond128
  %91 = phi i1 [ false, %while.cond128 ], [ %90, %land.end141 ]
  br i1 %91, label %while.body143, label %while.end150

while.body143:                                    ; preds = %land.end142
  %92 = load i32, ptr %precision, align 4
  %mul144 = mul nsw i32 %92, 10
  %93 = load ptr, ptr %zIn.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %93, i64 0
  %94 = load i8, ptr %arrayidx145, align 1
  %conv146 = sext i8 %94 to i32
  %sub147 = sub nsw i32 %conv146, 48
  %add148 = add nsw i32 %mul144, %sub147
  store i32 %add148, ptr %precision, align 4
  %95 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr149 = getelementptr inbounds nuw i8, ptr %95, i32 1
  store ptr %incdec.ptr149, ptr %zIn.addr, align 8
  br label %while.cond128, !llvm.loop !12

while.end150:                                     ; preds = %land.end142
  br label %if.end151

if.end151:                                        ; preds = %while.end150, %land.lhs.true121, %if.end118
  %96 = load ptr, ptr %zIn.addr, align 8
  %97 = load ptr, ptr %zEnd, align 8
  %cmp152 = icmp uge ptr %96, %97
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.end151
  br label %for.end798

if.end155:                                        ; preds = %if.end151
  store ptr null, ptr %pInfo, align 8
  store i8 9, ptr %xtype, align 1
  %98 = load ptr, ptr %zIn.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %98, i64 0
  %99 = load i8, ptr %arrayidx156, align 1
  %conv157 = sext i8 %99 to i32
  store i32 %conv157, ptr %c, align 4
  %100 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr158 = getelementptr inbounds nuw i8, ptr %100, i32 1
  store ptr %incdec.ptr158, ptr %zIn.addr, align 8
  store i32 0, ptr %idx, align 4
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc172, %if.end155
  %101 = load i32, ptr %idx, align 4
  %cmp160 = icmp slt i32 %101, 15
  br i1 %cmp160, label %for.body162, label %for.end174

for.body162:                                      ; preds = %for.cond159
  %102 = load i32, ptr %c, align 4
  %103 = load i32, ptr %idx, align 4
  %idxprom163 = sext i32 %103 to i64
  %arrayidx164 = getelementptr inbounds [15 x %struct.ph7_fmt_info], ptr @aFmt, i64 0, i64 %idxprom163
  %fmttype = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %arrayidx164, i32 0, i32 0
  %104 = load i8, ptr %fmttype, align 16
  %conv165 = sext i8 %104 to i32
  %cmp166 = icmp eq i32 %102, %conv165
  br i1 %cmp166, label %if.then168, label %if.end171

if.then168:                                       ; preds = %for.body162
  %105 = load i32, ptr %idx, align 4
  %idxprom169 = sext i32 %105 to i64
  %arrayidx170 = getelementptr inbounds [15 x %struct.ph7_fmt_info], ptr @aFmt, i64 0, i64 %idxprom169
  store ptr %arrayidx170, ptr %pInfo, align 8
  %106 = load ptr, ptr %pInfo, align 8
  %type = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %106, i32 0, i32 3
  %107 = load i8, ptr %type, align 8
  store i8 %107, ptr %xtype, align 1
  br label %for.end174

if.end171:                                        ; preds = %for.body162
  br label %for.inc172

for.inc172:                                       ; preds = %if.end171
  %108 = load i32, ptr %idx, align 4
  %inc173 = add nsw i32 %108, 1
  store i32 %inc173, ptr %idx, align 4
  br label %for.cond159, !llvm.loop !13

for.end174:                                       ; preds = %if.then168, %for.cond159
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  store ptr %arraydecay, ptr %zBuf, align 8
  store i32 0, ptr %length, align 4
  store ptr null, ptr %zExtra, align 8
  %109 = load i8, ptr %xtype, align 1
  %conv175 = zext i8 %109 to i32
  switch i32 %conv175, label %sw.default725 [
    i32 7, label %sw.bb176
    i32 8, label %sw.bb178
    i32 6, label %sw.bb192
    i32 1, label %sw.bb231
    i32 2, label %sw.bb358
    i32 3, label %sw.bb358
    i32 4, label %sw.bb358
  ]

sw.bb176:                                         ; preds = %for.end174
  %arrayidx177 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  store i8 37, ptr %arrayidx177, align 16
  store i32 1, ptr %length, align 4
  br label %sw.epilog727

sw.bb178:                                         ; preds = %for.end174
  %110 = load i32, ptr %n, align 4
  %111 = load i32, ptr %nArg.addr, align 4
  %cmp179 = icmp slt i32 %110, %111
  br i1 %cmp179, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb178
  %112 = load ptr, ptr %apArg.addr, align 8
  %113 = load i32, ptr %n, align 4
  %inc181 = add nsw i32 %113, 1
  store i32 %inc181, ptr %n, align 4
  %idxprom182 = sext i32 %113 to i64
  %arrayidx183 = getelementptr inbounds ptr, ptr %112, i64 %idxprom182
  %114 = load ptr, ptr %arrayidx183, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb178
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond184 = phi ptr [ %114, %cond.true ], [ null, %cond.false ]
  store ptr %cond184, ptr %pArg, align 8
  %115 = load ptr, ptr %pArg, align 8
  %cmp185 = icmp eq ptr %115, null
  br i1 %cmp185, label %if.then187, label %if.else

if.then187:                                       ; preds = %cond.end
  store i32 0, ptr %c, align 4
  br label %if.end189

if.else:                                          ; preds = %cond.end
  %116 = load ptr, ptr %pArg, align 8
  %call188 = call i32 @ph7_value_to_int(ptr noundef %116)
  store i32 %call188, ptr %c, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.else, %if.then187
  %117 = load i32, ptr %c, align 4
  %conv190 = trunc i32 %117 to i8
  %arrayidx191 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  store i8 %conv190, ptr %arrayidx191, align 16
  store i32 1, ptr %length, align 4
  br label %sw.epilog727

sw.bb192:                                         ; preds = %for.end174
  %118 = load i32, ptr %n, align 4
  %119 = load i32, ptr %nArg.addr, align 4
  %cmp193 = icmp slt i32 %118, %119
  br i1 %cmp193, label %cond.true195, label %cond.false199

cond.true195:                                     ; preds = %sw.bb192
  %120 = load ptr, ptr %apArg.addr, align 8
  %121 = load i32, ptr %n, align 4
  %inc196 = add nsw i32 %121, 1
  store i32 %inc196, ptr %n, align 4
  %idxprom197 = sext i32 %121 to i64
  %arrayidx198 = getelementptr inbounds ptr, ptr %120, i64 %idxprom197
  %122 = load ptr, ptr %arrayidx198, align 8
  br label %cond.end200

cond.false199:                                    ; preds = %sw.bb192
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false199, %cond.true195
  %cond201 = phi ptr [ %122, %cond.true195 ], [ null, %cond.false199 ]
  store ptr %cond201, ptr %pArg, align 8
  %123 = load ptr, ptr %pArg, align 8
  %cmp202 = icmp eq ptr %123, null
  br i1 %cmp202, label %if.then204, label %if.else205

if.then204:                                       ; preds = %cond.end200
  store i32 0, ptr %length, align 4
  br label %if.end207

if.else205:                                       ; preds = %cond.end200
  %124 = load ptr, ptr %pArg, align 8
  %call206 = call ptr @ph7_value_to_string(ptr noundef %124, ptr noundef %length)
  store ptr %call206, ptr %zBuf, align 8
  br label %if.end207

if.end207:                                        ; preds = %if.else205, %if.then204
  %125 = load i32, ptr %length, align 4
  %cmp208 = icmp slt i32 %125, 1
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %if.end207
  store ptr @.str.61, ptr %zBuf, align 8
  store i32 1, ptr %length, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.then210, %if.end207
  %126 = load i32, ptr %precision, align 4
  %cmp212 = icmp sge i32 %126, 0
  br i1 %cmp212, label %land.lhs.true214, label %if.end218

land.lhs.true214:                                 ; preds = %if.end211
  %127 = load i32, ptr %precision, align 4
  %128 = load i32, ptr %length, align 4
  %cmp215 = icmp slt i32 %127, %128
  br i1 %cmp215, label %if.then217, label %if.end218

if.then217:                                       ; preds = %land.lhs.true214
  %129 = load i32, ptr %precision, align 4
  store i32 %129, ptr %length, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then217, %land.lhs.true214, %if.end211
  %130 = load i32, ptr %flag_zeropad, align 4
  %tobool219 = icmp ne i32 %130, 0
  br i1 %tobool219, label %if.then220, label %if.end230

if.then220:                                       ; preds = %if.end218
  store i32 0, ptr %idx, align 4
  br label %for.cond221

for.cond221:                                      ; preds = %for.inc227, %if.then220
  %131 = load i32, ptr %idx, align 4
  %cmp222 = icmp slt i32 %131, 50
  br i1 %cmp222, label %for.body224, label %for.end229

for.body224:                                      ; preds = %for.cond221
  %132 = load i32, ptr %idx, align 4
  %idxprom225 = sext i32 %132 to i64
  %arrayidx226 = getelementptr inbounds [51 x i8], ptr %spaces, i64 0, i64 %idxprom225
  store i8 48, ptr %arrayidx226, align 1
  br label %for.inc227

for.inc227:                                       ; preds = %for.body224
  %133 = load i32, ptr %idx, align 4
  %inc228 = add nsw i32 %133, 1
  store i32 %inc228, ptr %idx, align 4
  br label %for.cond221, !llvm.loop !14

for.end229:                                       ; preds = %for.cond221
  br label %if.end230

if.end230:                                        ; preds = %for.end229, %if.end218
  br label %sw.epilog727

sw.bb231:                                         ; preds = %for.end174
  %134 = load i32, ptr %n, align 4
  %135 = load i32, ptr %nArg.addr, align 4
  %cmp232 = icmp slt i32 %134, %135
  br i1 %cmp232, label %cond.true234, label %cond.false238

cond.true234:                                     ; preds = %sw.bb231
  %136 = load ptr, ptr %apArg.addr, align 8
  %137 = load i32, ptr %n, align 4
  %inc235 = add nsw i32 %137, 1
  store i32 %inc235, ptr %n, align 4
  %idxprom236 = sext i32 %137 to i64
  %arrayidx237 = getelementptr inbounds ptr, ptr %136, i64 %idxprom236
  %138 = load ptr, ptr %arrayidx237, align 8
  br label %cond.end239

cond.false238:                                    ; preds = %sw.bb231
  br label %cond.end239

cond.end239:                                      ; preds = %cond.false238, %cond.true234
  %cond240 = phi ptr [ %138, %cond.true234 ], [ null, %cond.false238 ]
  store ptr %cond240, ptr %pArg, align 8
  %139 = load ptr, ptr %pArg, align 8
  %cmp241 = icmp eq ptr %139, null
  br i1 %cmp241, label %if.then243, label %if.else244

if.then243:                                       ; preds = %cond.end239
  store i64 0, ptr %iVal, align 8
  br label %if.end246

if.else244:                                       ; preds = %cond.end239
  %140 = load ptr, ptr %pArg, align 8
  %call245 = call i64 @ph7_value_to_int64(ptr noundef %140)
  store i64 %call245, ptr %iVal, align 8
  br label %if.end246

if.end246:                                        ; preds = %if.else244, %if.then243
  %141 = load i32, ptr %precision, align 4
  %cmp247 = icmp sgt i32 %141, 984
  br i1 %cmp247, label %if.then249, label %if.end250

if.then249:                                       ; preds = %if.end246
  store i32 984, ptr %precision, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then249, %if.end246
  %142 = load i64, ptr %iVal, align 8
  %cmp251 = icmp eq i64 %142, 0
  br i1 %cmp251, label %if.then253, label %if.end254

if.then253:                                       ; preds = %if.end250
  store i32 0, ptr %flag_alternateform, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then253, %if.end250
  %143 = load ptr, ptr %pInfo, align 8
  %flags = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %143, i32 0, i32 2
  %144 = load i32, ptr %flags, align 4
  %and = and i32 %144, 1
  %tobool255 = icmp ne i32 %and, 0
  br i1 %tobool255, label %if.then256, label %if.else275

if.then256:                                       ; preds = %if.end254
  %145 = load i64, ptr %iVal, align 8
  %cmp257 = icmp slt i64 %145, 0
  br i1 %cmp257, label %if.then259, label %if.else265

if.then259:                                       ; preds = %if.then256
  %146 = load i64, ptr %iVal, align 8
  %sub260 = sub nsw i64 0, %146
  store i64 %sub260, ptr %iVal, align 8
  %147 = load i64, ptr %iVal, align 8
  %cmp261 = icmp slt i64 %147, 0
  br i1 %cmp261, label %if.then263, label %if.end264

if.then263:                                       ; preds = %if.then259
  store i64 9223372036854775807, ptr %iVal, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.then263, %if.then259
  store i32 45, ptr %prefix, align 4
  br label %if.end274

if.else265:                                       ; preds = %if.then256
  %148 = load i32, ptr %flag_plussign, align 4
  %tobool266 = icmp ne i32 %148, 0
  br i1 %tobool266, label %if.then267, label %if.else268

if.then267:                                       ; preds = %if.else265
  store i32 43, ptr %prefix, align 4
  br label %if.end273

if.else268:                                       ; preds = %if.else265
  %149 = load i32, ptr %flag_blanksign, align 4
  %tobool269 = icmp ne i32 %149, 0
  br i1 %tobool269, label %if.then270, label %if.else271

if.then270:                                       ; preds = %if.else268
  store i32 32, ptr %prefix, align 4
  br label %if.end272

if.else271:                                       ; preds = %if.else268
  store i32 0, ptr %prefix, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.else271, %if.then270
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.then267
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.end264
  br label %if.end285

if.else275:                                       ; preds = %if.end254
  %150 = load i64, ptr %iVal, align 8
  %cmp276 = icmp slt i64 %150, 0
  br i1 %cmp276, label %if.then278, label %if.end284

if.then278:                                       ; preds = %if.else275
  %151 = load i64, ptr %iVal, align 8
  %sub279 = sub nsw i64 0, %151
  store i64 %sub279, ptr %iVal, align 8
  %152 = load i64, ptr %iVal, align 8
  %cmp280 = icmp slt i64 %152, 0
  br i1 %cmp280, label %if.then282, label %if.end283

if.then282:                                       ; preds = %if.then278
  store i64 9223372036854775807, ptr %iVal, align 8
  br label %if.end283

if.end283:                                        ; preds = %if.then282, %if.then278
  br label %if.end284

if.end284:                                        ; preds = %if.end283, %if.else275
  store i32 0, ptr %prefix, align 4
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %if.end274
  %153 = load i32, ptr %flag_zeropad, align 4
  %tobool286 = icmp ne i32 %153, 0
  br i1 %tobool286, label %land.lhs.true287, label %if.end297

land.lhs.true287:                                 ; preds = %if.end285
  %154 = load i32, ptr %precision, align 4
  %155 = load i32, ptr %width, align 4
  %156 = load i32, ptr %prefix, align 4
  %cmp288 = icmp ne i32 %156, 0
  %conv289 = zext i1 %cmp288 to i32
  %sub290 = sub nsw i32 %155, %conv289
  %cmp291 = icmp slt i32 %154, %sub290
  br i1 %cmp291, label %if.then293, label %if.end297

if.then293:                                       ; preds = %land.lhs.true287
  %157 = load i32, ptr %width, align 4
  %158 = load i32, ptr %prefix, align 4
  %cmp294 = icmp ne i32 %158, 0
  %conv295 = zext i1 %cmp294 to i32
  %sub296 = sub nsw i32 %157, %conv295
  store i32 %sub296, ptr %precision, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.then293, %land.lhs.true287, %if.end285
  %arrayidx298 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 1023
  store ptr %arrayidx298, ptr %zBuf, align 8
  %159 = load ptr, ptr %pInfo, align 8
  %charset = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %159, i32 0, i32 4
  %160 = load ptr, ptr %charset, align 8
  store ptr %160, ptr %cset, align 8
  %161 = load ptr, ptr %pInfo, align 8
  %base299 = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %161, i32 0, i32 1
  %162 = load i8, ptr %base299, align 1
  %conv300 = zext i8 %162 to i32
  store i32 %conv300, ptr %base, align 4
  br label %do.body301

do.body301:                                       ; preds = %do.cond306, %if.end297
  %163 = load ptr, ptr %cset, align 8
  %164 = load i64, ptr %iVal, align 8
  %165 = load i32, ptr %base, align 4
  %conv302 = sext i32 %165 to i64
  %rem = srem i64 %164, %conv302
  %arrayidx303 = getelementptr inbounds i8, ptr %163, i64 %rem
  %166 = load i8, ptr %arrayidx303, align 1
  %167 = load ptr, ptr %zBuf, align 8
  %incdec.ptr304 = getelementptr inbounds i8, ptr %167, i32 -1
  store ptr %incdec.ptr304, ptr %zBuf, align 8
  store i8 %166, ptr %incdec.ptr304, align 1
  %168 = load i64, ptr %iVal, align 8
  %169 = load i32, ptr %base, align 4
  %conv305 = sext i32 %169 to i64
  %div = sdiv i64 %168, %conv305
  store i64 %div, ptr %iVal, align 8
  br label %do.cond306

do.cond306:                                       ; preds = %do.body301
  %170 = load i64, ptr %iVal, align 8
  %cmp307 = icmp sgt i64 %170, 0
  br i1 %cmp307, label %do.body301, label %do.end309, !llvm.loop !15

do.end309:                                        ; preds = %do.cond306
  %arrayidx310 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 1023
  %171 = load ptr, ptr %zBuf, align 8
  %sub.ptr.lhs.cast311 = ptrtoint ptr %arrayidx310 to i64
  %sub.ptr.rhs.cast312 = ptrtoint ptr %171 to i64
  %sub.ptr.sub313 = sub i64 %sub.ptr.lhs.cast311, %sub.ptr.rhs.cast312
  %conv314 = trunc i64 %sub.ptr.sub313 to i32
  store i32 %conv314, ptr %length, align 4
  %172 = load i32, ptr %precision, align 4
  %173 = load i32, ptr %length, align 4
  %sub315 = sub nsw i32 %172, %173
  store i32 %sub315, ptr %idx, align 4
  br label %for.cond316

for.cond316:                                      ; preds = %for.inc321, %do.end309
  %174 = load i32, ptr %idx, align 4
  %cmp317 = icmp sgt i32 %174, 0
  br i1 %cmp317, label %for.body319, label %for.end323

for.body319:                                      ; preds = %for.cond316
  %175 = load ptr, ptr %zBuf, align 8
  %incdec.ptr320 = getelementptr inbounds i8, ptr %175, i32 -1
  store ptr %incdec.ptr320, ptr %zBuf, align 8
  store i8 48, ptr %incdec.ptr320, align 1
  br label %for.inc321

for.inc321:                                       ; preds = %for.body319
  %176 = load i32, ptr %idx, align 4
  %dec322 = add nsw i32 %176, -1
  store i32 %dec322, ptr %idx, align 4
  br label %for.cond316, !llvm.loop !16

for.end323:                                       ; preds = %for.cond316
  %177 = load i32, ptr %prefix, align 4
  %tobool324 = icmp ne i32 %177, 0
  br i1 %tobool324, label %if.then325, label %if.end328

if.then325:                                       ; preds = %for.end323
  %178 = load i32, ptr %prefix, align 4
  %conv326 = trunc i32 %178 to i8
  %179 = load ptr, ptr %zBuf, align 8
  %incdec.ptr327 = getelementptr inbounds i8, ptr %179, i32 -1
  store ptr %incdec.ptr327, ptr %zBuf, align 8
  store i8 %conv326, ptr %incdec.ptr327, align 1
  br label %if.end328

if.end328:                                        ; preds = %if.then325, %for.end323
  %180 = load i32, ptr %flag_alternateform, align 4
  %tobool329 = icmp ne i32 %180, 0
  br i1 %tobool329, label %land.lhs.true330, label %if.end352

land.lhs.true330:                                 ; preds = %if.end328
  %181 = load ptr, ptr %pInfo, align 8
  %prefix331 = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %181, i32 0, i32 5
  %182 = load ptr, ptr %prefix331, align 8
  %tobool332 = icmp ne ptr %182, null
  br i1 %tobool332, label %if.then333, label %if.end352

if.then333:                                       ; preds = %land.lhs.true330
  %183 = load ptr, ptr %pInfo, align 8
  %prefix334 = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %183, i32 0, i32 5
  %184 = load ptr, ptr %prefix334, align 8
  store ptr %184, ptr %pre, align 8
  %185 = load ptr, ptr %zBuf, align 8
  %186 = load i8, ptr %185, align 1
  %conv335 = sext i8 %186 to i32
  %187 = load ptr, ptr %pre, align 8
  %arrayidx336 = getelementptr inbounds i8, ptr %187, i64 0
  %188 = load i8, ptr %arrayidx336, align 1
  %conv337 = sext i8 %188 to i32
  %cmp338 = icmp ne i32 %conv335, %conv337
  br i1 %cmp338, label %if.then340, label %if.end351

if.then340:                                       ; preds = %if.then333
  %189 = load ptr, ptr %pInfo, align 8
  %prefix341 = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %189, i32 0, i32 5
  %190 = load ptr, ptr %prefix341, align 8
  store ptr %190, ptr %pre, align 8
  br label %for.cond342

for.cond342:                                      ; preds = %for.inc348, %if.then340
  %191 = load ptr, ptr %pre, align 8
  %192 = load i8, ptr %191, align 1
  store i8 %192, ptr %x, align 1
  %conv343 = sext i8 %192 to i32
  %cmp344 = icmp ne i32 %conv343, 0
  br i1 %cmp344, label %for.body346, label %for.end350

for.body346:                                      ; preds = %for.cond342
  %193 = load i8, ptr %x, align 1
  %194 = load ptr, ptr %zBuf, align 8
  %incdec.ptr347 = getelementptr inbounds i8, ptr %194, i32 -1
  store ptr %incdec.ptr347, ptr %zBuf, align 8
  store i8 %193, ptr %incdec.ptr347, align 1
  br label %for.inc348

for.inc348:                                       ; preds = %for.body346
  %195 = load ptr, ptr %pre, align 8
  %incdec.ptr349 = getelementptr inbounds nuw i8, ptr %195, i32 1
  store ptr %incdec.ptr349, ptr %pre, align 8
  br label %for.cond342, !llvm.loop !17

for.end350:                                       ; preds = %for.cond342
  br label %if.end351

if.end351:                                        ; preds = %for.end350, %if.then333
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %land.lhs.true330, %if.end328
  %arrayidx353 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 1023
  %196 = load ptr, ptr %zBuf, align 8
  %sub.ptr.lhs.cast354 = ptrtoint ptr %arrayidx353 to i64
  %sub.ptr.rhs.cast355 = ptrtoint ptr %196 to i64
  %sub.ptr.sub356 = sub i64 %sub.ptr.lhs.cast354, %sub.ptr.rhs.cast355
  %conv357 = trunc i64 %sub.ptr.sub356 to i32
  store i32 %conv357, ptr %length, align 4
  br label %sw.epilog727

sw.bb358:                                         ; preds = %for.end174, %for.end174, %for.end174
  %197 = load i32, ptr %n, align 4
  %198 = load i32, ptr %nArg.addr, align 4
  %cmp359 = icmp slt i32 %197, %198
  br i1 %cmp359, label %cond.true361, label %cond.false365

cond.true361:                                     ; preds = %sw.bb358
  %199 = load ptr, ptr %apArg.addr, align 8
  %200 = load i32, ptr %n, align 4
  %inc362 = add nsw i32 %200, 1
  store i32 %inc362, ptr %n, align 4
  %idxprom363 = sext i32 %200 to i64
  %arrayidx364 = getelementptr inbounds ptr, ptr %199, i64 %idxprom363
  %201 = load ptr, ptr %arrayidx364, align 8
  br label %cond.end366

cond.false365:                                    ; preds = %sw.bb358
  br label %cond.end366

cond.end366:                                      ; preds = %cond.false365, %cond.true361
  %cond367 = phi ptr [ %201, %cond.true361 ], [ null, %cond.false365 ]
  store ptr %cond367, ptr %pArg, align 8
  %202 = load ptr, ptr %pArg, align 8
  %cmp368 = icmp eq ptr %202, null
  br i1 %cmp368, label %if.then370, label %if.else371

if.then370:                                       ; preds = %cond.end366
  store x86_fp80 0xK00000000000000000000, ptr %realvalue, align 16
  br label %if.end374

if.else371:                                       ; preds = %cond.end366
  %203 = load ptr, ptr %pArg, align 8
  %call372 = call double @ph7_value_to_double(ptr noundef %203)
  %conv373 = fpext double %call372 to x86_fp80
  store x86_fp80 %conv373, ptr %realvalue, align 16
  br label %if.end374

if.end374:                                        ; preds = %if.else371, %if.then370
  %204 = load i32, ptr %precision, align 4
  %cmp375 = icmp slt i32 %204, 0
  br i1 %cmp375, label %if.then377, label %if.end378

if.then377:                                       ; preds = %if.end374
  store i32 6, ptr %precision, align 4
  br label %if.end378

if.end378:                                        ; preds = %if.then377, %if.end374
  %205 = load i32, ptr %precision, align 4
  %cmp379 = icmp sgt i32 %205, 984
  br i1 %cmp379, label %if.then381, label %if.end382

if.then381:                                       ; preds = %if.end378
  store i32 984, ptr %precision, align 4
  br label %if.end382

if.end382:                                        ; preds = %if.then381, %if.end378
  %206 = load x86_fp80, ptr %realvalue, align 16
  %cmp383 = fcmp olt x86_fp80 %206, 0xK00000000000000000000
  br i1 %cmp383, label %if.then385, label %if.else386

if.then385:                                       ; preds = %if.end382
  %207 = load x86_fp80, ptr %realvalue, align 16
  %fneg = fneg x86_fp80 %207
  store x86_fp80 %fneg, ptr %realvalue, align 16
  store i32 45, ptr %prefix, align 4
  br label %if.end395

if.else386:                                       ; preds = %if.end382
  %208 = load i32, ptr %flag_plussign, align 4
  %tobool387 = icmp ne i32 %208, 0
  br i1 %tobool387, label %if.then388, label %if.else389

if.then388:                                       ; preds = %if.else386
  store i32 43, ptr %prefix, align 4
  br label %if.end394

if.else389:                                       ; preds = %if.else386
  %209 = load i32, ptr %flag_blanksign, align 4
  %tobool390 = icmp ne i32 %209, 0
  br i1 %tobool390, label %if.then391, label %if.else392

if.then391:                                       ; preds = %if.else389
  store i32 32, ptr %prefix, align 4
  br label %if.end393

if.else392:                                       ; preds = %if.else389
  store i32 0, ptr %prefix, align 4
  br label %if.end393

if.end393:                                        ; preds = %if.else392, %if.then391
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.then388
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %if.then385
  %210 = load ptr, ptr %pInfo, align 8
  %type396 = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %210, i32 0, i32 3
  %211 = load i8, ptr %type396, align 8
  %conv397 = zext i8 %211 to i32
  %cmp398 = icmp eq i32 %conv397, 4
  br i1 %cmp398, label %land.lhs.true400, label %if.end405

land.lhs.true400:                                 ; preds = %if.end395
  %212 = load i32, ptr %precision, align 4
  %cmp401 = icmp sgt i32 %212, 0
  br i1 %cmp401, label %if.then403, label %if.end405

if.then403:                                       ; preds = %land.lhs.true400
  %213 = load i32, ptr %precision, align 4
  %dec404 = add nsw i32 %213, -1
  store i32 %dec404, ptr %precision, align 4
  br label %if.end405

if.end405:                                        ; preds = %if.then403, %land.lhs.true400, %if.end395
  store double 0.000000e+00, ptr %rounder, align 8
  %214 = load i32, ptr %precision, align 4
  store i32 %214, ptr %idx, align 4
  store double 5.000000e-01, ptr %rounder, align 8
  br label %for.cond406

for.cond406:                                      ; preds = %for.inc410, %if.end405
  %215 = load i32, ptr %idx, align 4
  %cmp407 = icmp sgt i32 %215, 0
  br i1 %cmp407, label %for.body409, label %for.end413

for.body409:                                      ; preds = %for.cond406
  br label %for.inc410

for.inc410:                                       ; preds = %for.body409
  %216 = load i32, ptr %idx, align 4
  %dec411 = add nsw i32 %216, -1
  store i32 %dec411, ptr %idx, align 4
  %217 = load double, ptr %rounder, align 8
  %mul412 = fmul double %217, 1.000000e-01
  store double %mul412, ptr %rounder, align 8
  br label %for.cond406, !llvm.loop !18

for.end413:                                       ; preds = %for.cond406
  %218 = load ptr, ptr %pInfo, align 8
  %type414 = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %218, i32 0, i32 3
  %219 = load i8, ptr %type414, align 8
  %conv415 = zext i8 %219 to i32
  %cmp416 = icmp eq i32 %conv415, 2
  br i1 %cmp416, label %if.then418, label %if.end421

if.then418:                                       ; preds = %for.end413
  %220 = load double, ptr %rounder, align 8
  %conv419 = fpext double %220 to x86_fp80
  %221 = load x86_fp80, ptr %realvalue, align 16
  %add420 = fadd x86_fp80 %221, %conv419
  store x86_fp80 %add420, ptr %realvalue, align 16
  br label %if.end421

if.end421:                                        ; preds = %if.then418, %for.end413
  store i32 0, ptr %exp, align 4
  %222 = load x86_fp80, ptr %realvalue, align 16
  %cmp422 = fcmp ogt x86_fp80 %222, 0xK00000000000000000000
  br i1 %cmp422, label %if.then424, label %if.end475

if.then424:                                       ; preds = %if.end421
  br label %while.cond425

while.cond425:                                    ; preds = %while.body432, %if.then424
  %223 = load x86_fp80, ptr %realvalue, align 16
  %cmp426 = fcmp oge x86_fp80 %223, 0xK4019BEBC200000000000
  br i1 %cmp426, label %land.rhs428, label %land.end431

land.rhs428:                                      ; preds = %while.cond425
  %224 = load i32, ptr %exp, align 4
  %cmp429 = icmp sle i32 %224, 350
  br label %land.end431

land.end431:                                      ; preds = %land.rhs428, %while.cond425
  %225 = phi i1 [ false, %while.cond425 ], [ %cmp429, %land.rhs428 ]
  br i1 %225, label %while.body432, label %while.end435

while.body432:                                    ; preds = %land.end431
  %226 = load x86_fp80, ptr %realvalue, align 16
  %mul433 = fmul x86_fp80 %226, 0xK3FE4ABCC77118461D000
  store x86_fp80 %mul433, ptr %realvalue, align 16
  %227 = load i32, ptr %exp, align 4
  %add434 = add nsw i32 %227, 8
  store i32 %add434, ptr %exp, align 4
  br label %while.cond425, !llvm.loop !19

while.end435:                                     ; preds = %land.end431
  br label %while.cond436

while.cond436:                                    ; preds = %while.body443, %while.end435
  %228 = load x86_fp80, ptr %realvalue, align 16
  %cmp437 = fcmp oge x86_fp80 %228, 0xK4002A000000000000000
  br i1 %cmp437, label %land.rhs439, label %land.end442

land.rhs439:                                      ; preds = %while.cond436
  %229 = load i32, ptr %exp, align 4
  %cmp440 = icmp sle i32 %229, 350
  br label %land.end442

land.end442:                                      ; preds = %land.rhs439, %while.cond436
  %230 = phi i1 [ false, %while.cond436 ], [ %cmp440, %land.rhs439 ]
  br i1 %230, label %while.body443, label %while.end446

while.body443:                                    ; preds = %land.end442
  %231 = load x86_fp80, ptr %realvalue, align 16
  %mul444 = fmul x86_fp80 %231, 0xK3FFBCCCCCCCCCCCCD000
  store x86_fp80 %mul444, ptr %realvalue, align 16
  %232 = load i32, ptr %exp, align 4
  %inc445 = add nsw i32 %232, 1
  store i32 %inc445, ptr %exp, align 4
  br label %while.cond436, !llvm.loop !20

while.end446:                                     ; preds = %land.end442
  br label %while.cond447

while.cond447:                                    ; preds = %while.body454, %while.end446
  %233 = load x86_fp80, ptr %realvalue, align 16
  %cmp448 = fcmp olt x86_fp80 %233, 0xK3FE4ABCC77118461D000
  br i1 %cmp448, label %land.rhs450, label %land.end453

land.rhs450:                                      ; preds = %while.cond447
  %234 = load i32, ptr %exp, align 4
  %cmp451 = icmp sge i32 %234, -350
  br label %land.end453

land.end453:                                      ; preds = %land.rhs450, %while.cond447
  %235 = phi i1 [ false, %while.cond447 ], [ %cmp451, %land.rhs450 ]
  br i1 %235, label %while.body454, label %while.end457

while.body454:                                    ; preds = %land.end453
  %236 = load x86_fp80, ptr %realvalue, align 16
  %mul455 = fmul x86_fp80 %236, 0xK4019BEBC200000000000
  store x86_fp80 %mul455, ptr %realvalue, align 16
  %237 = load i32, ptr %exp, align 4
  %sub456 = sub nsw i32 %237, 8
  store i32 %sub456, ptr %exp, align 4
  br label %while.cond447, !llvm.loop !21

while.end457:                                     ; preds = %land.end453
  br label %while.cond458

while.cond458:                                    ; preds = %while.body465, %while.end457
  %238 = load x86_fp80, ptr %realvalue, align 16
  %cmp459 = fcmp olt x86_fp80 %238, 0xK3FFF8000000000000000
  br i1 %cmp459, label %land.rhs461, label %land.end464

land.rhs461:                                      ; preds = %while.cond458
  %239 = load i32, ptr %exp, align 4
  %cmp462 = icmp sge i32 %239, -350
  br label %land.end464

land.end464:                                      ; preds = %land.rhs461, %while.cond458
  %240 = phi i1 [ false, %while.cond458 ], [ %cmp462, %land.rhs461 ]
  br i1 %240, label %while.body465, label %while.end468

while.body465:                                    ; preds = %land.end464
  %241 = load x86_fp80, ptr %realvalue, align 16
  %mul466 = fmul x86_fp80 %241, 0xK4002A000000000000000
  store x86_fp80 %mul466, ptr %realvalue, align 16
  %242 = load i32, ptr %exp, align 4
  %dec467 = add nsw i32 %242, -1
  store i32 %dec467, ptr %exp, align 4
  br label %while.cond458, !llvm.loop !22

while.end468:                                     ; preds = %land.end464
  %243 = load i32, ptr %exp, align 4
  %cmp469 = icmp sgt i32 %243, 350
  br i1 %cmp469, label %if.then473, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end468
  %244 = load i32, ptr %exp, align 4
  %cmp471 = icmp slt i32 %244, -350
  br i1 %cmp471, label %if.then473, label %if.end474

if.then473:                                       ; preds = %lor.lhs.false, %while.end468
  store ptr @.str.60, ptr %zBuf, align 8
  store i32 3, ptr %length, align 4
  br label %sw.epilog727

if.end474:                                        ; preds = %lor.lhs.false
  br label %if.end475

if.end475:                                        ; preds = %if.end474, %if.end421
  %arraydecay476 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  store ptr %arraydecay476, ptr %zBuf, align 8
  %245 = load i8, ptr %xtype, align 1
  %conv477 = zext i8 %245 to i32
  %cmp478 = icmp eq i32 %conv477, 3
  %conv479 = zext i1 %cmp478 to i32
  store i32 %conv479, ptr %flag_exp, align 4
  %246 = load i8, ptr %xtype, align 1
  %conv480 = zext i8 %246 to i32
  %cmp481 = icmp ne i32 %conv480, 2
  br i1 %cmp481, label %if.then483, label %if.end492

if.then483:                                       ; preds = %if.end475
  %247 = load double, ptr %rounder, align 8
  %conv484 = fpext double %247 to x86_fp80
  %248 = load x86_fp80, ptr %realvalue, align 16
  %add485 = fadd x86_fp80 %248, %conv484
  store x86_fp80 %add485, ptr %realvalue, align 16
  %249 = load x86_fp80, ptr %realvalue, align 16
  %cmp486 = fcmp oge x86_fp80 %249, 0xK4002A000000000000000
  br i1 %cmp486, label %if.then488, label %if.end491

if.then488:                                       ; preds = %if.then483
  %250 = load x86_fp80, ptr %realvalue, align 16
  %mul489 = fmul x86_fp80 %250, 0xK3FFBCCCCCCCCCCCCD000
  store x86_fp80 %mul489, ptr %realvalue, align 16
  %251 = load i32, ptr %exp, align 4
  %inc490 = add nsw i32 %251, 1
  store i32 %inc490, ptr %exp, align 4
  br label %if.end491

if.end491:                                        ; preds = %if.then488, %if.then483
  br label %if.end492

if.end492:                                        ; preds = %if.end491, %if.end475
  %252 = load i8, ptr %xtype, align 1
  %conv493 = zext i8 %252 to i32
  %cmp494 = icmp eq i32 %conv493, 4
  br i1 %cmp494, label %if.then496, label %if.else507

if.then496:                                       ; preds = %if.end492
  %253 = load i32, ptr %flag_alternateform, align 4
  %tobool497 = icmp ne i32 %253, 0
  %lnot = xor i1 %tobool497, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %flag_rtz, align 4
  %254 = load i32, ptr %exp, align 4
  %cmp498 = icmp slt i32 %254, -4
  br i1 %cmp498, label %if.then503, label %lor.lhs.false500

lor.lhs.false500:                                 ; preds = %if.then496
  %255 = load i32, ptr %exp, align 4
  %256 = load i32, ptr %precision, align 4
  %cmp501 = icmp sgt i32 %255, %256
  br i1 %cmp501, label %if.then503, label %if.else504

if.then503:                                       ; preds = %lor.lhs.false500, %if.then496
  store i8 3, ptr %xtype, align 1
  br label %if.end506

if.else504:                                       ; preds = %lor.lhs.false500
  %257 = load i32, ptr %precision, align 4
  %258 = load i32, ptr %exp, align 4
  %sub505 = sub nsw i32 %257, %258
  store i32 %sub505, ptr %precision, align 4
  store i8 2, ptr %xtype, align 1
  br label %if.end506

if.end506:                                        ; preds = %if.else504, %if.then503
  br label %if.end508

if.else507:                                       ; preds = %if.end492
  store i32 0, ptr %flag_rtz, align 4
  br label %if.end508

if.end508:                                        ; preds = %if.else507, %if.end506
  store i32 0, ptr %nsd, align 4
  %259 = load i8, ptr %xtype, align 1
  %conv509 = zext i8 %259 to i32
  %cmp510 = icmp eq i32 %conv509, 2
  br i1 %cmp510, label %land.lhs.true512, label %if.else597

land.lhs.true512:                                 ; preds = %if.end508
  %260 = load i32, ptr %exp, align 4
  %261 = load i32, ptr %precision, align 4
  %add513 = add nsw i32 %260, %261
  %cmp514 = icmp slt i32 %add513, 994
  br i1 %cmp514, label %if.then516, label %if.else597

if.then516:                                       ; preds = %land.lhs.true512
  %262 = load i32, ptr %precision, align 4
  %cmp517 = icmp sgt i32 %262, 0
  br i1 %cmp517, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then516
  %263 = load i32, ptr %flag_alternateform, align 4
  %tobool519 = icmp ne i32 %263, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then516
  %264 = phi i1 [ true, %if.then516 ], [ %tobool519, %lor.rhs ]
  %lor.ext = zext i1 %264 to i32
  store i32 %lor.ext, ptr %flag_dp, align 4
  %265 = load i32, ptr %prefix, align 4
  %tobool520 = icmp ne i32 %265, 0
  br i1 %tobool520, label %if.then521, label %if.end524

if.then521:                                       ; preds = %lor.end
  %266 = load i32, ptr %prefix, align 4
  %conv522 = trunc i32 %266 to i8
  %267 = load ptr, ptr %zBuf, align 8
  %incdec.ptr523 = getelementptr inbounds nuw i8, ptr %267, i32 1
  store ptr %incdec.ptr523, ptr %zBuf, align 8
  store i8 %conv522, ptr %267, align 1
  br label %if.end524

if.end524:                                        ; preds = %if.then521, %lor.end
  %268 = load i32, ptr %exp, align 4
  %cmp525 = icmp slt i32 %268, 0
  br i1 %cmp525, label %if.then527, label %if.else529

if.then527:                                       ; preds = %if.end524
  %269 = load ptr, ptr %zBuf, align 8
  %incdec.ptr528 = getelementptr inbounds nuw i8, ptr %269, i32 1
  store ptr %incdec.ptr528, ptr %zBuf, align 8
  store i8 48, ptr %269, align 1
  br label %if.end540

if.else529:                                       ; preds = %if.end524
  br label %for.cond530

for.cond530:                                      ; preds = %for.inc537, %if.else529
  %270 = load i32, ptr %exp, align 4
  %cmp531 = icmp sge i32 %270, 0
  br i1 %cmp531, label %for.body533, label %for.end539

for.body533:                                      ; preds = %for.cond530
  %call534 = call i32 @vxGetdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %conv535 = trunc i32 %call534 to i8
  %271 = load ptr, ptr %zBuf, align 8
  %incdec.ptr536 = getelementptr inbounds nuw i8, ptr %271, i32 1
  store ptr %incdec.ptr536, ptr %zBuf, align 8
  store i8 %conv535, ptr %271, align 1
  br label %for.inc537

for.inc537:                                       ; preds = %for.body533
  %272 = load i32, ptr %exp, align 4
  %dec538 = add nsw i32 %272, -1
  store i32 %dec538, ptr %exp, align 4
  br label %for.cond530, !llvm.loop !23

for.end539:                                       ; preds = %for.cond530
  br label %if.end540

if.end540:                                        ; preds = %for.end539, %if.then527
  %273 = load i32, ptr %flag_dp, align 4
  %tobool541 = icmp ne i32 %273, 0
  br i1 %tobool541, label %if.then542, label %if.end544

if.then542:                                       ; preds = %if.end540
  %274 = load ptr, ptr %zBuf, align 8
  %incdec.ptr543 = getelementptr inbounds nuw i8, ptr %274, i32 1
  store ptr %incdec.ptr543, ptr %zBuf, align 8
  store i8 46, ptr %274, align 1
  br label %if.end544

if.end544:                                        ; preds = %if.then542, %if.end540
  %275 = load i32, ptr %exp, align 4
  %inc545 = add nsw i32 %275, 1
  store i32 %inc545, ptr %exp, align 4
  br label %for.cond546

for.cond546:                                      ; preds = %for.inc555, %if.end544
  %276 = load i32, ptr %exp, align 4
  %cmp547 = icmp slt i32 %276, 0
  br i1 %cmp547, label %land.rhs549, label %land.end552

land.rhs549:                                      ; preds = %for.cond546
  %277 = load i32, ptr %precision, align 4
  %cmp550 = icmp sgt i32 %277, 0
  br label %land.end552

land.end552:                                      ; preds = %land.rhs549, %for.cond546
  %278 = phi i1 [ false, %for.cond546 ], [ %cmp550, %land.rhs549 ]
  br i1 %278, label %for.body553, label %for.end558

for.body553:                                      ; preds = %land.end552
  %279 = load ptr, ptr %zBuf, align 8
  %incdec.ptr554 = getelementptr inbounds nuw i8, ptr %279, i32 1
  store ptr %incdec.ptr554, ptr %zBuf, align 8
  store i8 48, ptr %279, align 1
  br label %for.inc555

for.inc555:                                       ; preds = %for.body553
  %280 = load i32, ptr %precision, align 4
  %dec556 = add nsw i32 %280, -1
  store i32 %dec556, ptr %precision, align 4
  %281 = load i32, ptr %exp, align 4
  %inc557 = add nsw i32 %281, 1
  store i32 %inc557, ptr %exp, align 4
  br label %for.cond546, !llvm.loop !24

for.end558:                                       ; preds = %land.end552
  br label %while.cond559

while.cond559:                                    ; preds = %while.body563, %for.end558
  %282 = load i32, ptr %precision, align 4
  %dec560 = add nsw i32 %282, -1
  store i32 %dec560, ptr %precision, align 4
  %cmp561 = icmp sgt i32 %282, 0
  br i1 %cmp561, label %while.body563, label %while.end567

while.body563:                                    ; preds = %while.cond559
  %call564 = call i32 @vxGetdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %conv565 = trunc i32 %call564 to i8
  %283 = load ptr, ptr %zBuf, align 8
  %incdec.ptr566 = getelementptr inbounds nuw i8, ptr %283, i32 1
  store ptr %incdec.ptr566, ptr %zBuf, align 8
  store i8 %conv565, ptr %283, align 1
  br label %while.cond559, !llvm.loop !25

while.end567:                                     ; preds = %while.cond559
  %284 = load ptr, ptr %zBuf, align 8
  %incdec.ptr568 = getelementptr inbounds i8, ptr %284, i32 -1
  store ptr %incdec.ptr568, ptr %zBuf, align 8
  store i8 0, ptr %284, align 1
  %285 = load i32, ptr %flag_rtz, align 4
  %tobool569 = icmp ne i32 %285, 0
  br i1 %tobool569, label %land.lhs.true570, label %if.end595

land.lhs.true570:                                 ; preds = %while.end567
  %286 = load i32, ptr %flag_dp, align 4
  %tobool571 = icmp ne i32 %286, 0
  br i1 %tobool571, label %if.then572, label %if.end595

if.then572:                                       ; preds = %land.lhs.true570
  br label %while.cond573

while.cond573:                                    ; preds = %while.body582, %if.then572
  %287 = load ptr, ptr %zBuf, align 8
  %arraydecay574 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  %cmp575 = icmp uge ptr %287, %arraydecay574
  br i1 %cmp575, label %land.rhs577, label %land.end581

land.rhs577:                                      ; preds = %while.cond573
  %288 = load ptr, ptr %zBuf, align 8
  %289 = load i8, ptr %288, align 1
  %conv578 = sext i8 %289 to i32
  %cmp579 = icmp eq i32 %conv578, 48
  br label %land.end581

land.end581:                                      ; preds = %land.rhs577, %while.cond573
  %290 = phi i1 [ false, %while.cond573 ], [ %cmp579, %land.rhs577 ]
  br i1 %290, label %while.body582, label %while.end584

while.body582:                                    ; preds = %land.end581
  %291 = load ptr, ptr %zBuf, align 8
  %incdec.ptr583 = getelementptr inbounds i8, ptr %291, i32 -1
  store ptr %incdec.ptr583, ptr %zBuf, align 8
  store i8 0, ptr %291, align 1
  br label %while.cond573, !llvm.loop !26

while.end584:                                     ; preds = %land.end581
  %292 = load ptr, ptr %zBuf, align 8
  %arraydecay585 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  %cmp586 = icmp uge ptr %292, %arraydecay585
  br i1 %cmp586, label %land.lhs.true588, label %if.end594

land.lhs.true588:                                 ; preds = %while.end584
  %293 = load ptr, ptr %zBuf, align 8
  %294 = load i8, ptr %293, align 1
  %conv589 = sext i8 %294 to i32
  %cmp590 = icmp eq i32 %conv589, 46
  br i1 %cmp590, label %if.then592, label %if.end594

if.then592:                                       ; preds = %land.lhs.true588
  %295 = load ptr, ptr %zBuf, align 8
  %incdec.ptr593 = getelementptr inbounds i8, ptr %295, i32 -1
  store ptr %incdec.ptr593, ptr %zBuf, align 8
  store i8 0, ptr %295, align 1
  br label %if.end594

if.end594:                                        ; preds = %if.then592, %land.lhs.true588, %while.end584
  br label %if.end595

if.end595:                                        ; preds = %if.end594, %land.lhs.true570, %while.end567
  %296 = load ptr, ptr %zBuf, align 8
  %incdec.ptr596 = getelementptr inbounds nuw i8, ptr %296, i32 1
  store ptr %incdec.ptr596, ptr %zBuf, align 8
  br label %if.end687

if.else597:                                       ; preds = %land.lhs.true512, %if.end508
  %297 = load i32, ptr %precision, align 4
  %cmp598 = icmp sgt i32 %297, 0
  br i1 %cmp598, label %lor.end602, label %lor.rhs600

lor.rhs600:                                       ; preds = %if.else597
  %298 = load i32, ptr %flag_alternateform, align 4
  %tobool601 = icmp ne i32 %298, 0
  br label %lor.end602

lor.end602:                                       ; preds = %lor.rhs600, %if.else597
  %299 = phi i1 [ true, %if.else597 ], [ %tobool601, %lor.rhs600 ]
  %lor.ext603 = zext i1 %299 to i32
  store i32 %lor.ext603, ptr %flag_dp, align 4
  %300 = load i32, ptr %prefix, align 4
  %tobool604 = icmp ne i32 %300, 0
  br i1 %tobool604, label %if.then605, label %if.end608

if.then605:                                       ; preds = %lor.end602
  %301 = load i32, ptr %prefix, align 4
  %conv606 = trunc i32 %301 to i8
  %302 = load ptr, ptr %zBuf, align 8
  %incdec.ptr607 = getelementptr inbounds nuw i8, ptr %302, i32 1
  store ptr %incdec.ptr607, ptr %zBuf, align 8
  store i8 %conv606, ptr %302, align 1
  br label %if.end608

if.end608:                                        ; preds = %if.then605, %lor.end602
  %call609 = call i32 @vxGetdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %conv610 = trunc i32 %call609 to i8
  %303 = load ptr, ptr %zBuf, align 8
  %incdec.ptr611 = getelementptr inbounds nuw i8, ptr %303, i32 1
  store ptr %incdec.ptr611, ptr %zBuf, align 8
  store i8 %conv610, ptr %303, align 1
  %304 = load i32, ptr %flag_dp, align 4
  %tobool612 = icmp ne i32 %304, 0
  br i1 %tobool612, label %if.then613, label %if.end615

if.then613:                                       ; preds = %if.end608
  %305 = load ptr, ptr %zBuf, align 8
  %incdec.ptr614 = getelementptr inbounds nuw i8, ptr %305, i32 1
  store ptr %incdec.ptr614, ptr %zBuf, align 8
  store i8 46, ptr %305, align 1
  br label %if.end615

if.end615:                                        ; preds = %if.then613, %if.end608
  br label %while.cond616

while.cond616:                                    ; preds = %while.body620, %if.end615
  %306 = load i32, ptr %precision, align 4
  %dec617 = add nsw i32 %306, -1
  store i32 %dec617, ptr %precision, align 4
  %cmp618 = icmp sgt i32 %306, 0
  br i1 %cmp618, label %while.body620, label %while.end624

while.body620:                                    ; preds = %while.cond616
  %call621 = call i32 @vxGetdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %conv622 = trunc i32 %call621 to i8
  %307 = load ptr, ptr %zBuf, align 8
  %incdec.ptr623 = getelementptr inbounds nuw i8, ptr %307, i32 1
  store ptr %incdec.ptr623, ptr %zBuf, align 8
  store i8 %conv622, ptr %307, align 1
  br label %while.cond616, !llvm.loop !27

while.end624:                                     ; preds = %while.cond616
  %308 = load ptr, ptr %zBuf, align 8
  %incdec.ptr625 = getelementptr inbounds i8, ptr %308, i32 -1
  store ptr %incdec.ptr625, ptr %zBuf, align 8
  %309 = load i32, ptr %flag_rtz, align 4
  %tobool626 = icmp ne i32 %309, 0
  br i1 %tobool626, label %land.lhs.true627, label %if.end652

land.lhs.true627:                                 ; preds = %while.end624
  %310 = load i32, ptr %flag_dp, align 4
  %tobool628 = icmp ne i32 %310, 0
  br i1 %tobool628, label %if.then629, label %if.end652

if.then629:                                       ; preds = %land.lhs.true627
  br label %while.cond630

while.cond630:                                    ; preds = %while.body639, %if.then629
  %311 = load ptr, ptr %zBuf, align 8
  %arraydecay631 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  %cmp632 = icmp uge ptr %311, %arraydecay631
  br i1 %cmp632, label %land.rhs634, label %land.end638

land.rhs634:                                      ; preds = %while.cond630
  %312 = load ptr, ptr %zBuf, align 8
  %313 = load i8, ptr %312, align 1
  %conv635 = sext i8 %313 to i32
  %cmp636 = icmp eq i32 %conv635, 48
  br label %land.end638

land.end638:                                      ; preds = %land.rhs634, %while.cond630
  %314 = phi i1 [ false, %while.cond630 ], [ %cmp636, %land.rhs634 ]
  br i1 %314, label %while.body639, label %while.end641

while.body639:                                    ; preds = %land.end638
  %315 = load ptr, ptr %zBuf, align 8
  %incdec.ptr640 = getelementptr inbounds i8, ptr %315, i32 -1
  store ptr %incdec.ptr640, ptr %zBuf, align 8
  store i8 0, ptr %315, align 1
  br label %while.cond630, !llvm.loop !28

while.end641:                                     ; preds = %land.end638
  %316 = load ptr, ptr %zBuf, align 8
  %arraydecay642 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  %cmp643 = icmp uge ptr %316, %arraydecay642
  br i1 %cmp643, label %land.lhs.true645, label %if.end651

land.lhs.true645:                                 ; preds = %while.end641
  %317 = load ptr, ptr %zBuf, align 8
  %318 = load i8, ptr %317, align 1
  %conv646 = sext i8 %318 to i32
  %cmp647 = icmp eq i32 %conv646, 46
  br i1 %cmp647, label %if.then649, label %if.end651

if.then649:                                       ; preds = %land.lhs.true645
  %319 = load ptr, ptr %zBuf, align 8
  %incdec.ptr650 = getelementptr inbounds i8, ptr %319, i32 -1
  store ptr %incdec.ptr650, ptr %zBuf, align 8
  store i8 0, ptr %319, align 1
  br label %if.end651

if.end651:                                        ; preds = %if.then649, %land.lhs.true645, %while.end641
  br label %if.end652

if.end652:                                        ; preds = %if.end651, %land.lhs.true627, %while.end624
  %320 = load ptr, ptr %zBuf, align 8
  %incdec.ptr653 = getelementptr inbounds nuw i8, ptr %320, i32 1
  store ptr %incdec.ptr653, ptr %zBuf, align 8
  %321 = load i32, ptr %exp, align 4
  %tobool654 = icmp ne i32 %321, 0
  br i1 %tobool654, label %if.then657, label %lor.lhs.false655

lor.lhs.false655:                                 ; preds = %if.end652
  %322 = load i32, ptr %flag_exp, align 4
  %tobool656 = icmp ne i32 %322, 0
  br i1 %tobool656, label %if.then657, label %if.end686

if.then657:                                       ; preds = %lor.lhs.false655, %if.end652
  %323 = load ptr, ptr %pInfo, align 8
  %charset658 = getelementptr inbounds nuw %struct.ph7_fmt_info, ptr %323, i32 0, i32 4
  %324 = load ptr, ptr %charset658, align 8
  %arrayidx659 = getelementptr inbounds i8, ptr %324, i64 0
  %325 = load i8, ptr %arrayidx659, align 1
  %326 = load ptr, ptr %zBuf, align 8
  %incdec.ptr660 = getelementptr inbounds nuw i8, ptr %326, i32 1
  store ptr %incdec.ptr660, ptr %zBuf, align 8
  store i8 %325, ptr %326, align 1
  %327 = load i32, ptr %exp, align 4
  %cmp661 = icmp slt i32 %327, 0
  br i1 %cmp661, label %if.then663, label %if.else666

if.then663:                                       ; preds = %if.then657
  %328 = load ptr, ptr %zBuf, align 8
  %incdec.ptr664 = getelementptr inbounds nuw i8, ptr %328, i32 1
  store ptr %incdec.ptr664, ptr %zBuf, align 8
  store i8 45, ptr %328, align 1
  %329 = load i32, ptr %exp, align 4
  %sub665 = sub nsw i32 0, %329
  store i32 %sub665, ptr %exp, align 4
  br label %if.end668

if.else666:                                       ; preds = %if.then657
  %330 = load ptr, ptr %zBuf, align 8
  %incdec.ptr667 = getelementptr inbounds nuw i8, ptr %330, i32 1
  store ptr %incdec.ptr667, ptr %zBuf, align 8
  store i8 43, ptr %330, align 1
  br label %if.end668

if.end668:                                        ; preds = %if.else666, %if.then663
  %331 = load i32, ptr %exp, align 4
  %cmp669 = icmp sge i32 %331, 100
  br i1 %cmp669, label %if.then671, label %if.end677

if.then671:                                       ; preds = %if.end668
  %332 = load i32, ptr %exp, align 4
  %div672 = sdiv i32 %332, 100
  %add673 = add nsw i32 %div672, 48
  %conv674 = trunc i32 %add673 to i8
  %333 = load ptr, ptr %zBuf, align 8
  %incdec.ptr675 = getelementptr inbounds nuw i8, ptr %333, i32 1
  store ptr %incdec.ptr675, ptr %zBuf, align 8
  store i8 %conv674, ptr %333, align 1
  %334 = load i32, ptr %exp, align 4
  %rem676 = srem i32 %334, 100
  store i32 %rem676, ptr %exp, align 4
  br label %if.end677

if.end677:                                        ; preds = %if.then671, %if.end668
  %335 = load i32, ptr %exp, align 4
  %div678 = sdiv i32 %335, 10
  %add679 = add nsw i32 %div678, 48
  %conv680 = trunc i32 %add679 to i8
  %336 = load ptr, ptr %zBuf, align 8
  %incdec.ptr681 = getelementptr inbounds nuw i8, ptr %336, i32 1
  store ptr %incdec.ptr681, ptr %zBuf, align 8
  store i8 %conv680, ptr %336, align 1
  %337 = load i32, ptr %exp, align 4
  %rem682 = srem i32 %337, 10
  %add683 = add nsw i32 %rem682, 48
  %conv684 = trunc i32 %add683 to i8
  %338 = load ptr, ptr %zBuf, align 8
  %incdec.ptr685 = getelementptr inbounds nuw i8, ptr %338, i32 1
  store ptr %incdec.ptr685, ptr %zBuf, align 8
  store i8 %conv684, ptr %338, align 1
  br label %if.end686

if.end686:                                        ; preds = %if.end677, %lor.lhs.false655
  br label %if.end687

if.end687:                                        ; preds = %if.end686, %if.end595
  %339 = load ptr, ptr %zBuf, align 8
  %arraydecay688 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  %sub.ptr.lhs.cast689 = ptrtoint ptr %339 to i64
  %sub.ptr.rhs.cast690 = ptrtoint ptr %arraydecay688 to i64
  %sub.ptr.sub691 = sub i64 %sub.ptr.lhs.cast689, %sub.ptr.rhs.cast690
  %conv692 = trunc i64 %sub.ptr.sub691 to i32
  store i32 %conv692, ptr %length, align 4
  %arraydecay693 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  store ptr %arraydecay693, ptr %zBuf, align 8
  %340 = load i32, ptr %flag_zeropad, align 4
  %tobool694 = icmp ne i32 %340, 0
  br i1 %tobool694, label %land.lhs.true695, label %if.end724

land.lhs.true695:                                 ; preds = %if.end687
  %341 = load i32, ptr %flag_leftjustify, align 4
  %tobool696 = icmp ne i32 %341, 0
  br i1 %tobool696, label %if.end724, label %land.lhs.true697

land.lhs.true697:                                 ; preds = %land.lhs.true695
  %342 = load i32, ptr %length, align 4
  %343 = load i32, ptr %width, align 4
  %cmp698 = icmp slt i32 %342, %343
  br i1 %cmp698, label %if.then700, label %if.end724

if.then700:                                       ; preds = %land.lhs.true697
  %344 = load i32, ptr %width, align 4
  %345 = load i32, ptr %length, align 4
  %sub701 = sub nsw i32 %344, %345
  store i32 %sub701, ptr %nPad, align 4
  %346 = load i32, ptr %width, align 4
  store i32 %346, ptr %i, align 4
  br label %for.cond702

for.cond702:                                      ; preds = %for.inc711, %if.then700
  %347 = load i32, ptr %i, align 4
  %348 = load i32, ptr %nPad, align 4
  %cmp703 = icmp sge i32 %347, %348
  br i1 %cmp703, label %for.body705, label %for.end713

for.body705:                                      ; preds = %for.cond702
  %349 = load ptr, ptr %zBuf, align 8
  %350 = load i32, ptr %i, align 4
  %351 = load i32, ptr %nPad, align 4
  %sub706 = sub nsw i32 %350, %351
  %idxprom707 = sext i32 %sub706 to i64
  %arrayidx708 = getelementptr inbounds i8, ptr %349, i64 %idxprom707
  %352 = load i8, ptr %arrayidx708, align 1
  %353 = load ptr, ptr %zBuf, align 8
  %354 = load i32, ptr %i, align 4
  %idxprom709 = sext i32 %354 to i64
  %arrayidx710 = getelementptr inbounds i8, ptr %353, i64 %idxprom709
  store i8 %352, ptr %arrayidx710, align 1
  br label %for.inc711

for.inc711:                                       ; preds = %for.body705
  %355 = load i32, ptr %i, align 4
  %dec712 = add nsw i32 %355, -1
  store i32 %dec712, ptr %i, align 4
  br label %for.cond702, !llvm.loop !29

for.end713:                                       ; preds = %for.cond702
  %356 = load i32, ptr %prefix, align 4
  %cmp714 = icmp ne i32 %356, 0
  %conv715 = zext i1 %cmp714 to i32
  store i32 %conv715, ptr %i, align 4
  br label %while.cond716

while.cond716:                                    ; preds = %while.body719, %for.end713
  %357 = load i32, ptr %nPad, align 4
  %dec717 = add nsw i32 %357, -1
  store i32 %dec717, ptr %nPad, align 4
  %tobool718 = icmp ne i32 %357, 0
  br i1 %tobool718, label %while.body719, label %while.end723

while.body719:                                    ; preds = %while.cond716
  %358 = load ptr, ptr %zBuf, align 8
  %359 = load i32, ptr %i, align 4
  %inc720 = add nsw i32 %359, 1
  store i32 %inc720, ptr %i, align 4
  %idxprom721 = sext i32 %359 to i64
  %arrayidx722 = getelementptr inbounds i8, ptr %358, i64 %idxprom721
  store i8 48, ptr %arrayidx722, align 1
  br label %while.cond716, !llvm.loop !30

while.end723:                                     ; preds = %while.cond716
  %360 = load i32, ptr %width, align 4
  store i32 %360, ptr %length, align 4
  br label %if.end724

if.end724:                                        ; preds = %while.end723, %land.lhs.true697, %land.lhs.true695, %if.end687
  br label %sw.epilog727

sw.default725:                                    ; preds = %for.end174
  %arrayidx726 = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  store i8 63, ptr %arrayidx726, align 16
  store i32 1, ptr %length, align 4
  br label %sw.epilog727

sw.epilog727:                                     ; preds = %sw.default725, %if.end724, %if.then473, %if.end352, %if.end230, %if.end189, %sw.bb176
  %361 = load i32, ptr %flag_leftjustify, align 4
  %tobool728 = icmp ne i32 %361, 0
  br i1 %tobool728, label %if.end757, label %if.then729

if.then729:                                       ; preds = %sw.epilog727
  %362 = load i32, ptr %width, align 4
  %363 = load i32, ptr %length, align 4
  %sub730 = sub nsw i32 %362, %363
  store i32 %sub730, ptr %nspace, align 4
  %364 = load i32, ptr %nspace, align 4
  %cmp731 = icmp sgt i32 %364, 0
  br i1 %cmp731, label %if.then733, label %if.end756

if.then733:                                       ; preds = %if.then729
  br label %while.cond734

while.cond734:                                    ; preds = %if.end743, %if.then733
  %365 = load i32, ptr %nspace, align 4
  %cmp735 = icmp sge i32 %365, 50
  br i1 %cmp735, label %while.body737, label %while.end745

while.body737:                                    ; preds = %while.cond734
  %366 = load ptr, ptr %xConsumer.addr, align 8
  %367 = load ptr, ptr %pCtx.addr, align 8
  %arraydecay738 = getelementptr inbounds [51 x i8], ptr %spaces, i64 0, i64 0
  %368 = load ptr, ptr %pUserData.addr, align 8
  %call739 = call i32 %366(ptr noundef %367, ptr noundef %arraydecay738, i32 noundef 50, ptr noundef %368)
  store i32 %call739, ptr %rc, align 4
  %369 = load i32, ptr %rc, align 4
  %cmp740 = icmp ne i32 %369, 0
  br i1 %cmp740, label %if.then742, label %if.end743

if.then742:                                       ; preds = %while.body737
  store i32 -10, ptr %retval, align 4
  br label %return

if.end743:                                        ; preds = %while.body737
  %370 = load i32, ptr %nspace, align 4
  %sub744 = sub nsw i32 %370, 50
  store i32 %sub744, ptr %nspace, align 4
  br label %while.cond734, !llvm.loop !31

while.end745:                                     ; preds = %while.cond734
  %371 = load i32, ptr %nspace, align 4
  %cmp746 = icmp sgt i32 %371, 0
  br i1 %cmp746, label %if.then748, label %if.end755

if.then748:                                       ; preds = %while.end745
  %372 = load ptr, ptr %xConsumer.addr, align 8
  %373 = load ptr, ptr %pCtx.addr, align 8
  %arraydecay749 = getelementptr inbounds [51 x i8], ptr %spaces, i64 0, i64 0
  %374 = load i32, ptr %nspace, align 4
  %375 = load ptr, ptr %pUserData.addr, align 8
  %call750 = call i32 %372(ptr noundef %373, ptr noundef %arraydecay749, i32 noundef %374, ptr noundef %375)
  store i32 %call750, ptr %rc, align 4
  %376 = load i32, ptr %rc, align 4
  %cmp751 = icmp ne i32 %376, 0
  br i1 %cmp751, label %if.then753, label %if.end754

if.then753:                                       ; preds = %if.then748
  store i32 -10, ptr %retval, align 4
  br label %return

if.end754:                                        ; preds = %if.then748
  br label %if.end755

if.end755:                                        ; preds = %if.end754, %while.end745
  br label %if.end756

if.end756:                                        ; preds = %if.end755, %if.then729
  br label %if.end757

if.end757:                                        ; preds = %if.end756, %sw.epilog727
  %377 = load i32, ptr %length, align 4
  %cmp758 = icmp sgt i32 %377, 0
  br i1 %cmp758, label %if.then760, label %if.end766

if.then760:                                       ; preds = %if.end757
  %378 = load ptr, ptr %xConsumer.addr, align 8
  %379 = load ptr, ptr %pCtx.addr, align 8
  %380 = load ptr, ptr %zBuf, align 8
  %381 = load i32, ptr %length, align 4
  %382 = load ptr, ptr %pUserData.addr, align 8
  %call761 = call i32 %378(ptr noundef %379, ptr noundef %380, i32 noundef %381, ptr noundef %382)
  store i32 %call761, ptr %rc, align 4
  %383 = load i32, ptr %rc, align 4
  %cmp762 = icmp ne i32 %383, 0
  br i1 %cmp762, label %if.then764, label %if.end765

if.then764:                                       ; preds = %if.then760
  store i32 -10, ptr %retval, align 4
  br label %return

if.end765:                                        ; preds = %if.then760
  br label %if.end766

if.end766:                                        ; preds = %if.end765, %if.end757
  %384 = load i32, ptr %flag_leftjustify, align 4
  %tobool767 = icmp ne i32 %384, 0
  br i1 %tobool767, label %if.then768, label %if.end797

if.then768:                                       ; preds = %if.end766
  %385 = load i32, ptr %width, align 4
  %386 = load i32, ptr %length, align 4
  %sub770 = sub nsw i32 %385, %386
  store i32 %sub770, ptr %nspace769, align 4
  %387 = load i32, ptr %nspace769, align 4
  %cmp771 = icmp sgt i32 %387, 0
  br i1 %cmp771, label %if.then773, label %if.end796

if.then773:                                       ; preds = %if.then768
  br label %while.cond774

while.cond774:                                    ; preds = %if.end783, %if.then773
  %388 = load i32, ptr %nspace769, align 4
  %cmp775 = icmp sge i32 %388, 50
  br i1 %cmp775, label %while.body777, label %while.end785

while.body777:                                    ; preds = %while.cond774
  %389 = load ptr, ptr %xConsumer.addr, align 8
  %390 = load ptr, ptr %pCtx.addr, align 8
  %arraydecay778 = getelementptr inbounds [51 x i8], ptr %spaces, i64 0, i64 0
  %391 = load ptr, ptr %pUserData.addr, align 8
  %call779 = call i32 %389(ptr noundef %390, ptr noundef %arraydecay778, i32 noundef 50, ptr noundef %391)
  store i32 %call779, ptr %rc, align 4
  %392 = load i32, ptr %rc, align 4
  %cmp780 = icmp ne i32 %392, 0
  br i1 %cmp780, label %if.then782, label %if.end783

if.then782:                                       ; preds = %while.body777
  store i32 -10, ptr %retval, align 4
  br label %return

if.end783:                                        ; preds = %while.body777
  %393 = load i32, ptr %nspace769, align 4
  %sub784 = sub nsw i32 %393, 50
  store i32 %sub784, ptr %nspace769, align 4
  br label %while.cond774, !llvm.loop !32

while.end785:                                     ; preds = %while.cond774
  %394 = load i32, ptr %nspace769, align 4
  %cmp786 = icmp sgt i32 %394, 0
  br i1 %cmp786, label %if.then788, label %if.end795

if.then788:                                       ; preds = %while.end785
  %395 = load ptr, ptr %xConsumer.addr, align 8
  %396 = load ptr, ptr %pCtx.addr, align 8
  %arraydecay789 = getelementptr inbounds [51 x i8], ptr %spaces, i64 0, i64 0
  %397 = load i32, ptr %nspace769, align 4
  %398 = load ptr, ptr %pUserData.addr, align 8
  %call790 = call i32 %395(ptr noundef %396, ptr noundef %arraydecay789, i32 noundef %397, ptr noundef %398)
  store i32 %call790, ptr %rc, align 4
  %399 = load i32, ptr %rc, align 4
  %cmp791 = icmp ne i32 %399, 0
  br i1 %cmp791, label %if.then793, label %if.end794

if.then793:                                       ; preds = %if.then788
  store i32 -10, ptr %retval, align 4
  br label %return

if.end794:                                        ; preds = %if.then788
  br label %if.end795

if.end795:                                        ; preds = %if.end794, %while.end785
  br label %if.end796

if.end796:                                        ; preds = %if.end795, %if.then768
  br label %if.end797

if.end797:                                        ; preds = %if.end796, %if.end766
  br label %for.cond

for.end798:                                       ; preds = %if.then154, %if.then14, %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end798, %if.then793, %if.then782, %if.then764, %if.then753, %if.then742
  %400 = load i32, ptr %retval, align 4
  ret i32 %400
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vxGetdigit(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
