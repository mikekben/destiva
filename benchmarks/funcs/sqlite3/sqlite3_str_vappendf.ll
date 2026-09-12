; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_info = type { i8, i8, i8, i8, i8, i8 }
%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

@.str = external hidden unnamed_addr constant [2 x i8], align 1
@fmtinfo = external hidden constant [23 x %struct.et_info], align 16
@sqlite3_str_vappendf.zOrd = external hidden constant [9 x i8], align 1
@aDigits = external hidden constant [33 x i8], align 16
@aPrefix = external hidden constant [7 x i8], align 1
@arRound = external hidden constant [10 x double], align 16
@.str.1 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.2 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.5 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.6 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @sqlite3_str_vappendf(ptr noundef %pAccum, ptr noundef %fmt, ptr noundef %ap) #0 {
entry:
  %pAccum.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %bufpt = alloca ptr, align 8
  %precision = alloca i32, align 4
  %length = alloca i32, align 4
  %idx = alloca i32, align 4
  %width = alloca i32, align 4
  %flag_leftjustify = alloca i8, align 1
  %flag_prefix = alloca i8, align 1
  %flag_alternateform = alloca i8, align 1
  %flag_altform2 = alloca i8, align 1
  %flag_zeropad = alloca i8, align 1
  %flag_long = alloca i8, align 1
  %done = alloca i8, align 1
  %cThousand = alloca i8, align 1
  %xtype = alloca i8, align 1
  %bArgList = alloca i8, align 1
  %prefix = alloca i8, align 1
  %longvalue = alloca i64, align 8
  %realvalue = alloca x86_fp80, align 16
  %infop = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %nOut = alloca i32, align 4
  %zExtra = alloca ptr, align 8
  %exp = alloca i32, align 4
  %e2 = alloca i32, align 4
  %nsd = alloca i32, align 4
  %rounder = alloca double, align 8
  %flag_dp = alloca i8, align 1
  %flag_rtz = alloca i8, align 1
  %pArgList = alloca ptr, align 8
  %buf = alloca [70 x i8], align 16
  %wx = alloca i32, align 4
  %px = alloca i32, align 4
  %v = alloca i64, align 8
  %n = alloca i64, align 8
  %x = alloca i32, align 4
  %cset = alloca ptr, align 8
  %base = alloca i8, align 1
  %nn = alloca i32, align 4
  %ix = alloca i32, align 4
  %pre = alloca ptr, align 8
  %x423 = alloca i8, align 1
  %rx = alloca double, align 8
  %u = alloca i64, align 8
  %ex = alloca i32, align 4
  %scale = alloca x86_fp80, align 16
  %szBufNeeded = alloca i64, align 8
  %i = alloca i32, align 4
  %nPad = alloca i32, align 4
  %ch = alloca i32, align 4
  %z = alloca ptr, align 8
  %ii = alloca i32, align 4
  %i1087 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n1088 = alloca i32, align 4
  %isnull = alloca i32, align 4
  %needQuote = alloca i32, align 4
  %ch1089 = alloca i8, align 1
  %q = alloca i8, align 1
  %escarg = alloca ptr, align 8
  %pToken = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %k1245 = alloca i32, align 4
  %pItem = alloca ptr, align 8
  store ptr %pAccum, ptr %pAccum.addr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  store i8 17, ptr %xtype, align 1
  store ptr null, ptr %zExtra, align 8
  store ptr null, ptr %pArgList, align 8
  store ptr null, ptr %bufpt, align 8
  %0 = load ptr, ptr %pAccum.addr, align 8
  %printfFlags = getelementptr inbounds nuw %struct.sqlite3_str, ptr %0, i32 0, i32 6
  %1 = load i8, ptr %printfFlags, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %2, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 8
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then
  %3 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %2, i32 0, i32 3
  %reg_save_area = load ptr, ptr %3, align 8
  %4 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %5 = add i32 %gp_offset, 8
  store i32 %5, ptr %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %2, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %6 = load ptr, ptr %vaarg.addr, align 8
  store ptr %6, ptr %pArgList, align 8
  store i8 1, ptr %bArgList, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 0, ptr %bArgList, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %vaarg.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc1299, %if.end
  %7 = load ptr, ptr %fmt.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv2 = sext i8 %8 to i32
  store i32 %conv2, ptr %c, align 4
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %for.body, label %for.end1301

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %c, align 4
  %cmp5 = icmp ne i32 %9, 37
  br i1 %cmp5, label %if.then7, label %if.end18

if.then7:                                         ; preds = %for.body
  %10 = load ptr, ptr %fmt.addr, align 8
  store ptr %10, ptr %bufpt, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then7
  %11 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %fmt.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load ptr, ptr %fmt.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv8 = sext i8 %13 to i32
  %tobool = icmp ne i32 %conv8, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %14 = load ptr, ptr %fmt.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv9 = sext i8 %15 to i32
  %cmp10 = icmp ne i32 %conv9, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %16 = phi i1 [ false, %do.cond ], [ %cmp10, %land.rhs ]
  br i1 %16, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end
  %17 = load ptr, ptr %pAccum.addr, align 8
  %18 = load ptr, ptr %bufpt, align 8
  %19 = load ptr, ptr %fmt.addr, align 8
  %20 = load ptr, ptr %bufpt, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv12 = trunc i64 %sub.ptr.sub to i32
  call void @sqlite3_str_append(ptr noundef %17, ptr noundef %18, i32 noundef %conv12)
  %21 = load ptr, ptr %fmt.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv13 = sext i8 %22 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end
  br label %for.end1301

if.end17:                                         ; preds = %do.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %for.body
  %23 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr19, ptr %fmt.addr, align 8
  %24 = load i8, ptr %incdec.ptr19, align 1
  %conv20 = sext i8 %24 to i32
  store i32 %conv20, ptr %c, align 4
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  %25 = load ptr, ptr %pAccum.addr, align 8
  call void @sqlite3_str_append(ptr noundef %25, ptr noundef @.str, i32 noundef 1)
  br label %for.end1301

if.end24:                                         ; preds = %if.end18
  store i8 0, ptr %flag_zeropad, align 1
  store i8 0, ptr %flag_altform2, align 1
  store i8 0, ptr %flag_alternateform, align 1
  store i8 0, ptr %cThousand, align 1
  store i8 0, ptr %flag_prefix, align 1
  store i8 0, ptr %flag_leftjustify, align 1
  store i8 0, ptr %done, align 1
  store i32 0, ptr %width, align 4
  store i8 0, ptr %flag_long, align 1
  store i32 -1, ptr %precision, align 4
  br label %do.body25

do.body25:                                        ; preds = %land.end160, %if.end24
  %26 = load i32, ptr %c, align 4
  switch i32 %26, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb26
    i32 32, label %sw.bb27
    i32 35, label %sw.bb28
    i32 33, label %sw.bb29
    i32 48, label %sw.bb30
    i32 44, label %sw.bb31
    i32 108, label %sw.bb32
    i32 49, label %sw.bb41
    i32 50, label %sw.bb41
    i32 51, label %sw.bb41
    i32 52, label %sw.bb41
    i32 53, label %sw.bb41
    i32 54, label %sw.bb41
    i32 55, label %sw.bb41
    i32 56, label %sw.bb41
    i32 57, label %sw.bb41
    i32 42, label %sw.bb60
    i32 46, label %sw.bb94
  ]

sw.bb:                                            ; preds = %do.body25
  store i8 1, ptr %flag_leftjustify, align 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body25
  store i8 43, ptr %flag_prefix, align 1
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.body25
  store i8 32, ptr %flag_prefix, align 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.body25
  store i8 1, ptr %flag_alternateform, align 1
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.body25
  store i8 1, ptr %flag_altform2, align 1
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.body25
  store i8 1, ptr %flag_zeropad, align 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %do.body25
  store i8 44, ptr %cThousand, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %do.body25
  store i8 1, ptr %done, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.body25
  store i8 1, ptr %flag_long, align 1
  %27 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %incdec.ptr33, ptr %fmt.addr, align 8
  %28 = load i8, ptr %incdec.ptr33, align 1
  %conv34 = sext i8 %28 to i32
  store i32 %conv34, ptr %c, align 4
  %29 = load i32, ptr %c, align 4
  %cmp35 = icmp eq i32 %29, 108
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %sw.bb32
  %30 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr38, ptr %fmt.addr, align 8
  %31 = load i8, ptr %incdec.ptr38, align 1
  %conv39 = sext i8 %31 to i32
  store i32 %conv39, ptr %c, align 4
  store i8 2, ptr %flag_long, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %sw.bb32
  store i8 1, ptr %done, align 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.body25, %do.body25, %do.body25, %do.body25, %do.body25, %do.body25, %do.body25, %do.body25, %do.body25
  %32 = load i32, ptr %c, align 4
  %sub = sub nsw i32 %32, 48
  store i32 %sub, ptr %wx, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb41
  %33 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr42 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %incdec.ptr42, ptr %fmt.addr, align 8
  %34 = load i8, ptr %incdec.ptr42, align 1
  %conv43 = sext i8 %34 to i32
  store i32 %conv43, ptr %c, align 4
  %cmp44 = icmp sge i32 %conv43, 48
  br i1 %cmp44, label %land.rhs46, label %land.end49

land.rhs46:                                       ; preds = %while.cond
  %35 = load i32, ptr %c, align 4
  %cmp47 = icmp sle i32 %35, 57
  br label %land.end49

land.end49:                                       ; preds = %land.rhs46, %while.cond
  %36 = phi i1 [ false, %while.cond ], [ %cmp47, %land.rhs46 ]
  br i1 %36, label %while.body, label %while.end

while.body:                                       ; preds = %land.end49
  %37 = load i32, ptr %wx, align 4
  %mul = mul i32 %37, 10
  %38 = load i32, ptr %c, align 4
  %add = add i32 %mul, %38
  %sub50 = sub i32 %add, 48
  store i32 %sub50, ptr %wx, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end49
  %39 = load i32, ptr %wx, align 4
  %and51 = and i32 %39, 2147483647
  store i32 %and51, ptr %width, align 4
  %40 = load i32, ptr %c, align 4
  %cmp52 = icmp ne i32 %40, 46
  br i1 %cmp52, label %land.lhs.true, label %if.else57

land.lhs.true:                                    ; preds = %while.end
  %41 = load i32, ptr %c, align 4
  %cmp54 = icmp ne i32 %41, 108
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %land.lhs.true
  store i8 1, ptr %done, align 1
  br label %if.end59

if.else57:                                        ; preds = %land.lhs.true, %while.end
  %42 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %42, i32 -1
  store ptr %incdec.ptr58, ptr %fmt.addr, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then56
  br label %sw.epilog

sw.bb60:                                          ; preds = %do.body25
  %43 = load i8, ptr %bArgList, align 1
  %tobool61 = icmp ne i8 %43, 0
  br i1 %tobool61, label %if.then62, label %if.else64

if.then62:                                        ; preds = %sw.bb60
  %44 = load ptr, ptr %pArgList, align 8
  %call = call i64 @getIntArg(ptr noundef %44)
  %conv63 = trunc i64 %call to i32
  store i32 %conv63, ptr %width, align 4
  br label %if.end76

if.else64:                                        ; preds = %sw.bb60
  %45 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p65 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %45, i32 0, i32 0
  %gp_offset66 = load i32, ptr %gp_offset_p65, align 8
  %fits_in_gp67 = icmp ule i32 %gp_offset66, 40
  br i1 %fits_in_gp67, label %vaarg.in_reg68, label %vaarg.in_mem70

vaarg.in_reg68:                                   ; preds = %if.else64
  %46 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %45, i32 0, i32 3
  %reg_save_area69 = load ptr, ptr %46, align 8
  %47 = getelementptr i8, ptr %reg_save_area69, i32 %gp_offset66
  %48 = add i32 %gp_offset66, 8
  store i32 %48, ptr %gp_offset_p65, align 8
  br label %vaarg.end74

vaarg.in_mem70:                                   ; preds = %if.else64
  %overflow_arg_area_p71 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %45, i32 0, i32 2
  %overflow_arg_area72 = load ptr, ptr %overflow_arg_area_p71, align 8
  %overflow_arg_area.next73 = getelementptr i8, ptr %overflow_arg_area72, i32 8
  store ptr %overflow_arg_area.next73, ptr %overflow_arg_area_p71, align 8
  br label %vaarg.end74

vaarg.end74:                                      ; preds = %vaarg.in_mem70, %vaarg.in_reg68
  %vaarg.addr75 = phi ptr [ %47, %vaarg.in_reg68 ], [ %overflow_arg_area72, %vaarg.in_mem70 ]
  %49 = load i32, ptr %vaarg.addr75, align 4
  store i32 %49, ptr %width, align 4
  br label %if.end76

if.end76:                                         ; preds = %vaarg.end74, %if.then62
  %50 = load i32, ptr %width, align 4
  %cmp77 = icmp slt i32 %50, 0
  br i1 %cmp77, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.end76
  store i8 1, ptr %flag_leftjustify, align 1
  %51 = load i32, ptr %width, align 4
  %cmp80 = icmp sge i32 %51, -2147483647
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then79
  %52 = load i32, ptr %width, align 4
  %sub82 = sub nsw i32 0, %52
  br label %cond.end

cond.false:                                       ; preds = %if.then79
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub82, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %width, align 4
  br label %if.end83

if.end83:                                         ; preds = %cond.end, %if.end76
  %53 = load ptr, ptr %fmt.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %53, i64 1
  %54 = load i8, ptr %arrayidx, align 1
  %conv84 = sext i8 %54 to i32
  store i32 %conv84, ptr %c, align 4
  %cmp85 = icmp ne i32 %conv84, 46
  br i1 %cmp85, label %land.lhs.true87, label %if.end93

land.lhs.true87:                                  ; preds = %if.end83
  %55 = load i32, ptr %c, align 4
  %cmp88 = icmp ne i32 %55, 108
  br i1 %cmp88, label %if.then90, label %if.end93

if.then90:                                        ; preds = %land.lhs.true87
  %56 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr91 = getelementptr inbounds nuw i8, ptr %56, i32 1
  store ptr %incdec.ptr91, ptr %fmt.addr, align 8
  %57 = load i8, ptr %incdec.ptr91, align 1
  %conv92 = sext i8 %57 to i32
  store i32 %conv92, ptr %c, align 4
  store i8 1, ptr %done, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %land.lhs.true87, %if.end83
  br label %sw.epilog

sw.bb94:                                          ; preds = %do.body25
  %58 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr95 = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr95, ptr %fmt.addr, align 8
  %59 = load i8, ptr %incdec.ptr95, align 1
  %conv96 = sext i8 %59 to i32
  store i32 %conv96, ptr %c, align 4
  %60 = load i32, ptr %c, align 4
  %cmp97 = icmp eq i32 %60, 42
  br i1 %cmp97, label %if.then99, label %if.else130

if.then99:                                        ; preds = %sw.bb94
  %61 = load i8, ptr %bArgList, align 1
  %tobool100 = icmp ne i8 %61, 0
  br i1 %tobool100, label %if.then101, label %if.else104

if.then101:                                       ; preds = %if.then99
  %62 = load ptr, ptr %pArgList, align 8
  %call102 = call i64 @getIntArg(ptr noundef %62)
  %conv103 = trunc i64 %call102 to i32
  store i32 %conv103, ptr %precision, align 4
  br label %if.end116

if.else104:                                       ; preds = %if.then99
  %63 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p105 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %63, i32 0, i32 0
  %gp_offset106 = load i32, ptr %gp_offset_p105, align 8
  %fits_in_gp107 = icmp ule i32 %gp_offset106, 40
  br i1 %fits_in_gp107, label %vaarg.in_reg108, label %vaarg.in_mem110

vaarg.in_reg108:                                  ; preds = %if.else104
  %64 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %63, i32 0, i32 3
  %reg_save_area109 = load ptr, ptr %64, align 8
  %65 = getelementptr i8, ptr %reg_save_area109, i32 %gp_offset106
  %66 = add i32 %gp_offset106, 8
  store i32 %66, ptr %gp_offset_p105, align 8
  br label %vaarg.end114

vaarg.in_mem110:                                  ; preds = %if.else104
  %overflow_arg_area_p111 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %63, i32 0, i32 2
  %overflow_arg_area112 = load ptr, ptr %overflow_arg_area_p111, align 8
  %overflow_arg_area.next113 = getelementptr i8, ptr %overflow_arg_area112, i32 8
  store ptr %overflow_arg_area.next113, ptr %overflow_arg_area_p111, align 8
  br label %vaarg.end114

vaarg.end114:                                     ; preds = %vaarg.in_mem110, %vaarg.in_reg108
  %vaarg.addr115 = phi ptr [ %65, %vaarg.in_reg108 ], [ %overflow_arg_area112, %vaarg.in_mem110 ]
  %67 = load i32, ptr %vaarg.addr115, align 4
  store i32 %67, ptr %precision, align 4
  br label %if.end116

if.end116:                                        ; preds = %vaarg.end114, %if.then101
  %68 = load i32, ptr %precision, align 4
  %cmp117 = icmp slt i32 %68, 0
  br i1 %cmp117, label %if.then119, label %if.end127

if.then119:                                       ; preds = %if.end116
  %69 = load i32, ptr %precision, align 4
  %cmp120 = icmp sge i32 %69, -2147483647
  br i1 %cmp120, label %cond.true122, label %cond.false124

cond.true122:                                     ; preds = %if.then119
  %70 = load i32, ptr %precision, align 4
  %sub123 = sub nsw i32 0, %70
  br label %cond.end125

cond.false124:                                    ; preds = %if.then119
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.true122
  %cond126 = phi i32 [ %sub123, %cond.true122 ], [ -1, %cond.false124 ]
  store i32 %cond126, ptr %precision, align 4
  br label %if.end127

if.end127:                                        ; preds = %cond.end125, %if.end116
  %71 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr128 = getelementptr inbounds nuw i8, ptr %71, i32 1
  store ptr %incdec.ptr128, ptr %fmt.addr, align 8
  %72 = load i8, ptr %incdec.ptr128, align 1
  %conv129 = sext i8 %72 to i32
  store i32 %conv129, ptr %c, align 4
  br label %if.end146

if.else130:                                       ; preds = %sw.bb94
  store i32 0, ptr %px, align 4
  br label %while.cond131

while.cond131:                                    ; preds = %while.body138, %if.else130
  %73 = load i32, ptr %c, align 4
  %cmp132 = icmp sge i32 %73, 48
  br i1 %cmp132, label %land.rhs134, label %land.end137

land.rhs134:                                      ; preds = %while.cond131
  %74 = load i32, ptr %c, align 4
  %cmp135 = icmp sle i32 %74, 57
  br label %land.end137

land.end137:                                      ; preds = %land.rhs134, %while.cond131
  %75 = phi i1 [ false, %while.cond131 ], [ %cmp135, %land.rhs134 ]
  br i1 %75, label %while.body138, label %while.end144

while.body138:                                    ; preds = %land.end137
  %76 = load i32, ptr %px, align 4
  %mul139 = mul i32 %76, 10
  %77 = load i32, ptr %c, align 4
  %add140 = add i32 %mul139, %77
  %sub141 = sub i32 %add140, 48
  store i32 %sub141, ptr %px, align 4
  %78 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr142 = getelementptr inbounds nuw i8, ptr %78, i32 1
  store ptr %incdec.ptr142, ptr %fmt.addr, align 8
  %79 = load i8, ptr %incdec.ptr142, align 1
  %conv143 = sext i8 %79 to i32
  store i32 %conv143, ptr %c, align 4
  br label %while.cond131, !llvm.loop !9

while.end144:                                     ; preds = %land.end137
  %80 = load i32, ptr %px, align 4
  %and145 = and i32 %80, 2147483647
  store i32 %and145, ptr %precision, align 4
  br label %if.end146

if.end146:                                        ; preds = %while.end144, %if.end127
  %81 = load i32, ptr %c, align 4
  %cmp147 = icmp eq i32 %81, 108
  br i1 %cmp147, label %if.then149, label %if.else151

if.then149:                                       ; preds = %if.end146
  %82 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i8, ptr %82, i32 -1
  store ptr %incdec.ptr150, ptr %fmt.addr, align 8
  br label %if.end152

if.else151:                                       ; preds = %if.end146
  store i8 1, ptr %done, align 1
  br label %if.end152

if.end152:                                        ; preds = %if.else151, %if.then149
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end152, %if.end93, %if.end59, %if.end40, %sw.default, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb
  br label %do.cond153

do.cond153:                                       ; preds = %sw.epilog
  %83 = load i8, ptr %done, align 1
  %tobool154 = icmp ne i8 %83, 0
  br i1 %tobool154, label %land.end160, label %land.rhs155

land.rhs155:                                      ; preds = %do.cond153
  %84 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr156 = getelementptr inbounds nuw i8, ptr %84, i32 1
  store ptr %incdec.ptr156, ptr %fmt.addr, align 8
  %85 = load i8, ptr %incdec.ptr156, align 1
  %conv157 = sext i8 %85 to i32
  store i32 %conv157, ptr %c, align 4
  %cmp158 = icmp ne i32 %conv157, 0
  br label %land.end160

land.end160:                                      ; preds = %land.rhs155, %do.cond153
  %86 = phi i1 [ false, %do.cond153 ], [ %cmp158, %land.rhs155 ]
  br i1 %86, label %do.body25, label %do.end161, !llvm.loop !10

do.end161:                                        ; preds = %land.end160
  store ptr @fmtinfo, ptr %infop, align 8
  store i8 17, ptr %xtype, align 1
  store i32 0, ptr %idx, align 4
  br label %for.cond162

for.cond162:                                      ; preds = %for.inc, %do.end161
  %87 = load i32, ptr %idx, align 4
  %cmp163 = icmp slt i32 %87, 23
  br i1 %cmp163, label %for.body165, label %for.end

for.body165:                                      ; preds = %for.cond162
  %88 = load i32, ptr %c, align 4
  %89 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %89 to i64
  %arrayidx166 = getelementptr inbounds [23 x %struct.et_info], ptr @fmtinfo, i64 0, i64 %idxprom
  %fmttype = getelementptr inbounds nuw %struct.et_info, ptr %arrayidx166, i32 0, i32 0
  %90 = load i8, ptr %fmttype, align 2
  %conv167 = sext i8 %90 to i32
  %cmp168 = icmp eq i32 %88, %conv167
  br i1 %cmp168, label %if.then170, label %if.end173

if.then170:                                       ; preds = %for.body165
  %91 = load i32, ptr %idx, align 4
  %idxprom171 = sext i32 %91 to i64
  %arrayidx172 = getelementptr inbounds [23 x %struct.et_info], ptr @fmtinfo, i64 0, i64 %idxprom171
  store ptr %arrayidx172, ptr %infop, align 8
  %92 = load ptr, ptr %infop, align 8
  %type = getelementptr inbounds nuw %struct.et_info, ptr %92, i32 0, i32 3
  %93 = load i8, ptr %type, align 1
  store i8 %93, ptr %xtype, align 1
  br label %for.end

if.end173:                                        ; preds = %for.body165
  br label %for.inc

for.inc:                                          ; preds = %if.end173
  %94 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, ptr %idx, align 4
  br label %for.cond162, !llvm.loop !11

for.end:                                          ; preds = %if.then170, %for.cond162
  %95 = load i8, ptr %xtype, align 1
  %conv174 = zext i8 %95 to i32
  switch i32 %conv174, label %sw.default1281 [
    i32 13, label %sw.bb175
    i32 15, label %sw.bb176
    i32 0, label %sw.bb176
    i32 16, label %sw.bb177
    i32 1, label %sw.bb444
    i32 2, label %sw.bb444
    i32 3, label %sw.bb444
    i32 4, label %sw.bb792
    i32 7, label %sw.bb807
    i32 8, label %sw.bb810
    i32 5, label %sw.bb956
    i32 6, label %sw.bb956
    i32 9, label %sw.bb1086
    i32 10, label %sw.bb1086
    i32 14, label %sw.bb1086
    i32 11, label %sw.bb1217
    i32 12, label %sw.bb1244
  ]

sw.bb175:                                         ; preds = %for.end
  store i8 2, ptr %flag_long, align 1
  br label %sw.bb176

sw.bb176:                                         ; preds = %sw.bb175, %for.end, %for.end
  store i8 0, ptr %cThousand, align 1
  br label %sw.bb177

sw.bb177:                                         ; preds = %sw.bb176, %for.end
  %96 = load ptr, ptr %infop, align 8
  %flags = getelementptr inbounds nuw %struct.et_info, ptr %96, i32 0, i32 2
  %97 = load i8, ptr %flags, align 1
  %conv178 = zext i8 %97 to i32
  %and179 = and i32 %conv178, 1
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then181, label %if.else242

if.then181:                                       ; preds = %sw.bb177
  %98 = load i8, ptr %bArgList, align 1
  %tobool182 = icmp ne i8 %98, 0
  br i1 %tobool182, label %if.then183, label %if.else185

if.then183:                                       ; preds = %if.then181
  %99 = load ptr, ptr %pArgList, align 8
  %call184 = call i64 @getIntArg(ptr noundef %99)
  store i64 %call184, ptr %v, align 8
  br label %if.end230

if.else185:                                       ; preds = %if.then181
  %100 = load i8, ptr %flag_long, align 1
  %tobool186 = icmp ne i8 %100, 0
  br i1 %tobool186, label %if.then187, label %if.else216

if.then187:                                       ; preds = %if.else185
  %101 = load i8, ptr %flag_long, align 1
  %conv188 = zext i8 %101 to i32
  %cmp189 = icmp eq i32 %conv188, 2
  br i1 %cmp189, label %if.then191, label %if.else203

if.then191:                                       ; preds = %if.then187
  %102 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p192 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %102, i32 0, i32 0
  %gp_offset193 = load i32, ptr %gp_offset_p192, align 8
  %fits_in_gp194 = icmp ule i32 %gp_offset193, 40
  br i1 %fits_in_gp194, label %vaarg.in_reg195, label %vaarg.in_mem197

vaarg.in_reg195:                                  ; preds = %if.then191
  %103 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %102, i32 0, i32 3
  %reg_save_area196 = load ptr, ptr %103, align 8
  %104 = getelementptr i8, ptr %reg_save_area196, i32 %gp_offset193
  %105 = add i32 %gp_offset193, 8
  store i32 %105, ptr %gp_offset_p192, align 8
  br label %vaarg.end201

vaarg.in_mem197:                                  ; preds = %if.then191
  %overflow_arg_area_p198 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %102, i32 0, i32 2
  %overflow_arg_area199 = load ptr, ptr %overflow_arg_area_p198, align 8
  %overflow_arg_area.next200 = getelementptr i8, ptr %overflow_arg_area199, i32 8
  store ptr %overflow_arg_area.next200, ptr %overflow_arg_area_p198, align 8
  br label %vaarg.end201

vaarg.end201:                                     ; preds = %vaarg.in_mem197, %vaarg.in_reg195
  %vaarg.addr202 = phi ptr [ %104, %vaarg.in_reg195 ], [ %overflow_arg_area199, %vaarg.in_mem197 ]
  %106 = load i64, ptr %vaarg.addr202, align 8
  store i64 %106, ptr %v, align 8
  br label %if.end215

if.else203:                                       ; preds = %if.then187
  %107 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p204 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %107, i32 0, i32 0
  %gp_offset205 = load i32, ptr %gp_offset_p204, align 8
  %fits_in_gp206 = icmp ule i32 %gp_offset205, 40
  br i1 %fits_in_gp206, label %vaarg.in_reg207, label %vaarg.in_mem209

vaarg.in_reg207:                                  ; preds = %if.else203
  %108 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %107, i32 0, i32 3
  %reg_save_area208 = load ptr, ptr %108, align 8
  %109 = getelementptr i8, ptr %reg_save_area208, i32 %gp_offset205
  %110 = add i32 %gp_offset205, 8
  store i32 %110, ptr %gp_offset_p204, align 8
  br label %vaarg.end213

vaarg.in_mem209:                                  ; preds = %if.else203
  %overflow_arg_area_p210 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %107, i32 0, i32 2
  %overflow_arg_area211 = load ptr, ptr %overflow_arg_area_p210, align 8
  %overflow_arg_area.next212 = getelementptr i8, ptr %overflow_arg_area211, i32 8
  store ptr %overflow_arg_area.next212, ptr %overflow_arg_area_p210, align 8
  br label %vaarg.end213

vaarg.end213:                                     ; preds = %vaarg.in_mem209, %vaarg.in_reg207
  %vaarg.addr214 = phi ptr [ %109, %vaarg.in_reg207 ], [ %overflow_arg_area211, %vaarg.in_mem209 ]
  %111 = load i64, ptr %vaarg.addr214, align 8
  store i64 %111, ptr %v, align 8
  br label %if.end215

if.end215:                                        ; preds = %vaarg.end213, %vaarg.end201
  br label %if.end229

if.else216:                                       ; preds = %if.else185
  %112 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p217 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %112, i32 0, i32 0
  %gp_offset218 = load i32, ptr %gp_offset_p217, align 8
  %fits_in_gp219 = icmp ule i32 %gp_offset218, 40
  br i1 %fits_in_gp219, label %vaarg.in_reg220, label %vaarg.in_mem222

vaarg.in_reg220:                                  ; preds = %if.else216
  %113 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %112, i32 0, i32 3
  %reg_save_area221 = load ptr, ptr %113, align 8
  %114 = getelementptr i8, ptr %reg_save_area221, i32 %gp_offset218
  %115 = add i32 %gp_offset218, 8
  store i32 %115, ptr %gp_offset_p217, align 8
  br label %vaarg.end226

vaarg.in_mem222:                                  ; preds = %if.else216
  %overflow_arg_area_p223 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %112, i32 0, i32 2
  %overflow_arg_area224 = load ptr, ptr %overflow_arg_area_p223, align 8
  %overflow_arg_area.next225 = getelementptr i8, ptr %overflow_arg_area224, i32 8
  store ptr %overflow_arg_area.next225, ptr %overflow_arg_area_p223, align 8
  br label %vaarg.end226

vaarg.end226:                                     ; preds = %vaarg.in_mem222, %vaarg.in_reg220
  %vaarg.addr227 = phi ptr [ %114, %vaarg.in_reg220 ], [ %overflow_arg_area224, %vaarg.in_mem222 ]
  %116 = load i32, ptr %vaarg.addr227, align 4
  %conv228 = sext i32 %116 to i64
  store i64 %conv228, ptr %v, align 8
  br label %if.end229

if.end229:                                        ; preds = %vaarg.end226, %if.end215
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.then183
  %117 = load i64, ptr %v, align 8
  %cmp231 = icmp slt i64 %117, 0
  br i1 %cmp231, label %if.then233, label %if.else240

if.then233:                                       ; preds = %if.end230
  %118 = load i64, ptr %v, align 8
  %cmp234 = icmp eq i64 %118, -9223372036854775808
  br i1 %cmp234, label %if.then236, label %if.else237

if.then236:                                       ; preds = %if.then233
  store i64 -9223372036854775808, ptr %longvalue, align 8
  br label %if.end239

if.else237:                                       ; preds = %if.then233
  %119 = load i64, ptr %v, align 8
  %sub238 = sub nsw i64 0, %119
  store i64 %sub238, ptr %longvalue, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.else237, %if.then236
  store i8 45, ptr %prefix, align 1
  br label %if.end241

if.else240:                                       ; preds = %if.end230
  %120 = load i64, ptr %v, align 8
  store i64 %120, ptr %longvalue, align 8
  %121 = load i8, ptr %flag_prefix, align 1
  store i8 %121, ptr %prefix, align 1
  br label %if.end241

if.end241:                                        ; preds = %if.else240, %if.end239
  br label %if.end292

if.else242:                                       ; preds = %sw.bb177
  %122 = load i8, ptr %bArgList, align 1
  %tobool243 = icmp ne i8 %122, 0
  br i1 %tobool243, label %if.then244, label %if.else246

if.then244:                                       ; preds = %if.else242
  %123 = load ptr, ptr %pArgList, align 8
  %call245 = call i64 @getIntArg(ptr noundef %123)
  store i64 %call245, ptr %longvalue, align 8
  br label %if.end291

if.else246:                                       ; preds = %if.else242
  %124 = load i8, ptr %flag_long, align 1
  %tobool247 = icmp ne i8 %124, 0
  br i1 %tobool247, label %if.then248, label %if.else277

if.then248:                                       ; preds = %if.else246
  %125 = load i8, ptr %flag_long, align 1
  %conv249 = zext i8 %125 to i32
  %cmp250 = icmp eq i32 %conv249, 2
  br i1 %cmp250, label %if.then252, label %if.else264

if.then252:                                       ; preds = %if.then248
  %126 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p253 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %126, i32 0, i32 0
  %gp_offset254 = load i32, ptr %gp_offset_p253, align 8
  %fits_in_gp255 = icmp ule i32 %gp_offset254, 40
  br i1 %fits_in_gp255, label %vaarg.in_reg256, label %vaarg.in_mem258

vaarg.in_reg256:                                  ; preds = %if.then252
  %127 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %126, i32 0, i32 3
  %reg_save_area257 = load ptr, ptr %127, align 8
  %128 = getelementptr i8, ptr %reg_save_area257, i32 %gp_offset254
  %129 = add i32 %gp_offset254, 8
  store i32 %129, ptr %gp_offset_p253, align 8
  br label %vaarg.end262

vaarg.in_mem258:                                  ; preds = %if.then252
  %overflow_arg_area_p259 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %126, i32 0, i32 2
  %overflow_arg_area260 = load ptr, ptr %overflow_arg_area_p259, align 8
  %overflow_arg_area.next261 = getelementptr i8, ptr %overflow_arg_area260, i32 8
  store ptr %overflow_arg_area.next261, ptr %overflow_arg_area_p259, align 8
  br label %vaarg.end262

vaarg.end262:                                     ; preds = %vaarg.in_mem258, %vaarg.in_reg256
  %vaarg.addr263 = phi ptr [ %128, %vaarg.in_reg256 ], [ %overflow_arg_area260, %vaarg.in_mem258 ]
  %130 = load i64, ptr %vaarg.addr263, align 8
  store i64 %130, ptr %longvalue, align 8
  br label %if.end276

if.else264:                                       ; preds = %if.then248
  %131 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p265 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %131, i32 0, i32 0
  %gp_offset266 = load i32, ptr %gp_offset_p265, align 8
  %fits_in_gp267 = icmp ule i32 %gp_offset266, 40
  br i1 %fits_in_gp267, label %vaarg.in_reg268, label %vaarg.in_mem270

vaarg.in_reg268:                                  ; preds = %if.else264
  %132 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %131, i32 0, i32 3
  %reg_save_area269 = load ptr, ptr %132, align 8
  %133 = getelementptr i8, ptr %reg_save_area269, i32 %gp_offset266
  %134 = add i32 %gp_offset266, 8
  store i32 %134, ptr %gp_offset_p265, align 8
  br label %vaarg.end274

vaarg.in_mem270:                                  ; preds = %if.else264
  %overflow_arg_area_p271 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %131, i32 0, i32 2
  %overflow_arg_area272 = load ptr, ptr %overflow_arg_area_p271, align 8
  %overflow_arg_area.next273 = getelementptr i8, ptr %overflow_arg_area272, i32 8
  store ptr %overflow_arg_area.next273, ptr %overflow_arg_area_p271, align 8
  br label %vaarg.end274

vaarg.end274:                                     ; preds = %vaarg.in_mem270, %vaarg.in_reg268
  %vaarg.addr275 = phi ptr [ %133, %vaarg.in_reg268 ], [ %overflow_arg_area272, %vaarg.in_mem270 ]
  %135 = load i64, ptr %vaarg.addr275, align 8
  store i64 %135, ptr %longvalue, align 8
  br label %if.end276

if.end276:                                        ; preds = %vaarg.end274, %vaarg.end262
  br label %if.end290

if.else277:                                       ; preds = %if.else246
  %136 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p278 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %136, i32 0, i32 0
  %gp_offset279 = load i32, ptr %gp_offset_p278, align 8
  %fits_in_gp280 = icmp ule i32 %gp_offset279, 40
  br i1 %fits_in_gp280, label %vaarg.in_reg281, label %vaarg.in_mem283

vaarg.in_reg281:                                  ; preds = %if.else277
  %137 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %136, i32 0, i32 3
  %reg_save_area282 = load ptr, ptr %137, align 8
  %138 = getelementptr i8, ptr %reg_save_area282, i32 %gp_offset279
  %139 = add i32 %gp_offset279, 8
  store i32 %139, ptr %gp_offset_p278, align 8
  br label %vaarg.end287

vaarg.in_mem283:                                  ; preds = %if.else277
  %overflow_arg_area_p284 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %136, i32 0, i32 2
  %overflow_arg_area285 = load ptr, ptr %overflow_arg_area_p284, align 8
  %overflow_arg_area.next286 = getelementptr i8, ptr %overflow_arg_area285, i32 8
  store ptr %overflow_arg_area.next286, ptr %overflow_arg_area_p284, align 8
  br label %vaarg.end287

vaarg.end287:                                     ; preds = %vaarg.in_mem283, %vaarg.in_reg281
  %vaarg.addr288 = phi ptr [ %138, %vaarg.in_reg281 ], [ %overflow_arg_area285, %vaarg.in_mem283 ]
  %140 = load i32, ptr %vaarg.addr288, align 4
  %conv289 = zext i32 %140 to i64
  store i64 %conv289, ptr %longvalue, align 8
  br label %if.end290

if.end290:                                        ; preds = %vaarg.end287, %if.end276
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %if.then244
  store i8 0, ptr %prefix, align 1
  br label %if.end292

if.end292:                                        ; preds = %if.end291, %if.end241
  %141 = load i64, ptr %longvalue, align 8
  %cmp293 = icmp eq i64 %141, 0
  br i1 %cmp293, label %if.then295, label %if.end296

if.then295:                                       ; preds = %if.end292
  store i8 0, ptr %flag_alternateform, align 1
  br label %if.end296

if.end296:                                        ; preds = %if.then295, %if.end292
  %142 = load i8, ptr %flag_zeropad, align 1
  %conv297 = zext i8 %142 to i32
  %tobool298 = icmp ne i32 %conv297, 0
  br i1 %tobool298, label %land.lhs.true299, label %if.end311

land.lhs.true299:                                 ; preds = %if.end296
  %143 = load i32, ptr %precision, align 4
  %144 = load i32, ptr %width, align 4
  %145 = load i8, ptr %prefix, align 1
  %conv300 = sext i8 %145 to i32
  %cmp301 = icmp ne i32 %conv300, 0
  %conv302 = zext i1 %cmp301 to i32
  %sub303 = sub nsw i32 %144, %conv302
  %cmp304 = icmp slt i32 %143, %sub303
  br i1 %cmp304, label %if.then306, label %if.end311

if.then306:                                       ; preds = %land.lhs.true299
  %146 = load i32, ptr %width, align 4
  %147 = load i8, ptr %prefix, align 1
  %conv307 = sext i8 %147 to i32
  %cmp308 = icmp ne i32 %conv307, 0
  %conv309 = zext i1 %cmp308 to i32
  %sub310 = sub nsw i32 %146, %conv309
  store i32 %sub310, ptr %precision, align 4
  br label %if.end311

if.end311:                                        ; preds = %if.then306, %land.lhs.true299, %if.end296
  %148 = load i32, ptr %precision, align 4
  %cmp312 = icmp slt i32 %148, 37
  br i1 %cmp312, label %if.then314, label %if.else315

if.then314:                                       ; preds = %if.end311
  store i32 70, ptr %nOut, align 4
  %arraydecay = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %zOut, align 8
  br label %if.end329

if.else315:                                       ; preds = %if.end311
  %149 = load i32, ptr %precision, align 4
  %conv316 = sext i32 %149 to i64
  %add317 = add i64 %conv316, 10
  store i64 %add317, ptr %n, align 8
  %150 = load i8, ptr %cThousand, align 1
  %tobool318 = icmp ne i8 %150, 0
  br i1 %tobool318, label %if.then319, label %if.end322

if.then319:                                       ; preds = %if.else315
  %151 = load i32, ptr %precision, align 4
  %div = sdiv i32 %151, 3
  %conv320 = sext i32 %div to i64
  %152 = load i64, ptr %n, align 8
  %add321 = add i64 %152, %conv320
  store i64 %add321, ptr %n, align 8
  br label %if.end322

if.end322:                                        ; preds = %if.then319, %if.else315
  %153 = load ptr, ptr %pAccum.addr, align 8
  %154 = load i64, ptr %n, align 8
  %call323 = call ptr @printfTempBuf(ptr noundef %153, i64 noundef %154)
  store ptr %call323, ptr %zExtra, align 8
  store ptr %call323, ptr %zOut, align 8
  %155 = load ptr, ptr %zOut, align 8
  %cmp324 = icmp eq ptr %155, null
  br i1 %cmp324, label %if.then326, label %if.end327

if.then326:                                       ; preds = %if.end322
  br label %for.end1301

if.end327:                                        ; preds = %if.end322
  %156 = load i64, ptr %n, align 8
  %conv328 = trunc i64 %156 to i32
  store i32 %conv328, ptr %nOut, align 4
  br label %if.end329

if.end329:                                        ; preds = %if.end327, %if.then314
  %157 = load ptr, ptr %zOut, align 8
  %158 = load i32, ptr %nOut, align 4
  %sub330 = sub nsw i32 %158, 1
  %idxprom331 = sext i32 %sub330 to i64
  %arrayidx332 = getelementptr inbounds i8, ptr %157, i64 %idxprom331
  store ptr %arrayidx332, ptr %bufpt, align 8
  %159 = load i8, ptr %xtype, align 1
  %conv333 = zext i8 %159 to i32
  %cmp334 = icmp eq i32 %conv333, 15
  br i1 %cmp334, label %if.then336, label %if.end355

if.then336:                                       ; preds = %if.end329
  %160 = load i64, ptr %longvalue, align 8
  %rem = urem i64 %160, 10
  %conv337 = trunc i64 %rem to i32
  store i32 %conv337, ptr %x, align 4
  %161 = load i32, ptr %x, align 4
  %cmp338 = icmp sge i32 %161, 4
  br i1 %cmp338, label %if.then344, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then336
  %162 = load i64, ptr %longvalue, align 8
  %div340 = udiv i64 %162, 10
  %rem341 = urem i64 %div340, 10
  %cmp342 = icmp eq i64 %rem341, 1
  br i1 %cmp342, label %if.then344, label %if.end345

if.then344:                                       ; preds = %lor.lhs.false, %if.then336
  store i32 0, ptr %x, align 4
  br label %if.end345

if.end345:                                        ; preds = %if.then344, %lor.lhs.false
  %163 = load i32, ptr %x, align 4
  %mul346 = mul nsw i32 %163, 2
  %add347 = add nsw i32 %mul346, 1
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds [9 x i8], ptr @sqlite3_str_vappendf.zOrd, i64 0, i64 %idxprom348
  %164 = load i8, ptr %arrayidx349, align 1
  %165 = load ptr, ptr %bufpt, align 8
  %incdec.ptr350 = getelementptr inbounds i8, ptr %165, i32 -1
  store ptr %incdec.ptr350, ptr %bufpt, align 8
  store i8 %164, ptr %incdec.ptr350, align 1
  %166 = load i32, ptr %x, align 4
  %mul351 = mul nsw i32 %166, 2
  %idxprom352 = sext i32 %mul351 to i64
  %arrayidx353 = getelementptr inbounds [9 x i8], ptr @sqlite3_str_vappendf.zOrd, i64 0, i64 %idxprom352
  %167 = load i8, ptr %arrayidx353, align 1
  %168 = load ptr, ptr %bufpt, align 8
  %incdec.ptr354 = getelementptr inbounds i8, ptr %168, i32 -1
  store ptr %incdec.ptr354, ptr %bufpt, align 8
  store i8 %167, ptr %incdec.ptr354, align 1
  br label %if.end355

if.end355:                                        ; preds = %if.end345, %if.end329
  %169 = load ptr, ptr %infop, align 8
  %charset = getelementptr inbounds nuw %struct.et_info, ptr %169, i32 0, i32 4
  %170 = load i8, ptr %charset, align 1
  %idxprom356 = zext i8 %170 to i64
  %arrayidx357 = getelementptr inbounds nuw [33 x i8], ptr @aDigits, i64 0, i64 %idxprom356
  store ptr %arrayidx357, ptr %cset, align 8
  %171 = load ptr, ptr %infop, align 8
  %base358 = getelementptr inbounds nuw %struct.et_info, ptr %171, i32 0, i32 1
  %172 = load i8, ptr %base358, align 1
  store i8 %172, ptr %base, align 1
  br label %do.body359

do.body359:                                       ; preds = %do.cond366, %if.end355
  %173 = load ptr, ptr %cset, align 8
  %174 = load i64, ptr %longvalue, align 8
  %175 = load i8, ptr %base, align 1
  %conv360 = zext i8 %175 to i64
  %rem361 = urem i64 %174, %conv360
  %arrayidx362 = getelementptr inbounds nuw i8, ptr %173, i64 %rem361
  %176 = load i8, ptr %arrayidx362, align 1
  %177 = load ptr, ptr %bufpt, align 8
  %incdec.ptr363 = getelementptr inbounds i8, ptr %177, i32 -1
  store ptr %incdec.ptr363, ptr %bufpt, align 8
  store i8 %176, ptr %incdec.ptr363, align 1
  %178 = load i64, ptr %longvalue, align 8
  %179 = load i8, ptr %base, align 1
  %conv364 = zext i8 %179 to i64
  %div365 = udiv i64 %178, %conv364
  store i64 %div365, ptr %longvalue, align 8
  br label %do.cond366

do.cond366:                                       ; preds = %do.body359
  %180 = load i64, ptr %longvalue, align 8
  %cmp367 = icmp ugt i64 %180, 0
  br i1 %cmp367, label %do.body359, label %do.end369, !llvm.loop !12

do.end369:                                        ; preds = %do.cond366
  %181 = load ptr, ptr %zOut, align 8
  %182 = load i32, ptr %nOut, align 4
  %sub370 = sub nsw i32 %182, 1
  %idxprom371 = sext i32 %sub370 to i64
  %arrayidx372 = getelementptr inbounds i8, ptr %181, i64 %idxprom371
  %183 = load ptr, ptr %bufpt, align 8
  %sub.ptr.lhs.cast373 = ptrtoint ptr %arrayidx372 to i64
  %sub.ptr.rhs.cast374 = ptrtoint ptr %183 to i64
  %sub.ptr.sub375 = sub i64 %sub.ptr.lhs.cast373, %sub.ptr.rhs.cast374
  %conv376 = trunc i64 %sub.ptr.sub375 to i32
  store i32 %conv376, ptr %length, align 4
  br label %while.cond377

while.cond377:                                    ; preds = %while.body380, %do.end369
  %184 = load i32, ptr %precision, align 4
  %185 = load i32, ptr %length, align 4
  %cmp378 = icmp sgt i32 %184, %185
  br i1 %cmp378, label %while.body380, label %while.end383

while.body380:                                    ; preds = %while.cond377
  %186 = load ptr, ptr %bufpt, align 8
  %incdec.ptr381 = getelementptr inbounds i8, ptr %186, i32 -1
  store ptr %incdec.ptr381, ptr %bufpt, align 8
  store i8 48, ptr %incdec.ptr381, align 1
  %187 = load i32, ptr %length, align 4
  %inc382 = add nsw i32 %187, 1
  store i32 %inc382, ptr %length, align 4
  br label %while.cond377, !llvm.loop !13

while.end383:                                     ; preds = %while.cond377
  %188 = load i8, ptr %cThousand, align 1
  %tobool384 = icmp ne i8 %188, 0
  br i1 %tobool384, label %if.then385, label %if.end411

if.then385:                                       ; preds = %while.end383
  %189 = load i32, ptr %length, align 4
  %sub386 = sub nsw i32 %189, 1
  %div387 = sdiv i32 %sub386, 3
  store i32 %div387, ptr %nn, align 4
  %190 = load i32, ptr %length, align 4
  %sub388 = sub nsw i32 %190, 1
  %rem389 = srem i32 %sub388, 3
  %add390 = add nsw i32 %rem389, 1
  store i32 %add390, ptr %ix, align 4
  %191 = load i32, ptr %nn, align 4
  %192 = load ptr, ptr %bufpt, align 8
  %idx.ext = sext i32 %191 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %192, i64 %idx.neg
  store ptr %add.ptr, ptr %bufpt, align 8
  store i32 0, ptr %idx, align 4
  br label %for.cond391

for.cond391:                                      ; preds = %for.inc408, %if.then385
  %193 = load i32, ptr %nn, align 4
  %cmp392 = icmp sgt i32 %193, 0
  br i1 %cmp392, label %for.body394, label %for.end410

for.body394:                                      ; preds = %for.cond391
  %194 = load ptr, ptr %bufpt, align 8
  %195 = load i32, ptr %idx, align 4
  %196 = load i32, ptr %nn, align 4
  %add395 = add nsw i32 %195, %196
  %idxprom396 = sext i32 %add395 to i64
  %arrayidx397 = getelementptr inbounds i8, ptr %194, i64 %idxprom396
  %197 = load i8, ptr %arrayidx397, align 1
  %198 = load ptr, ptr %bufpt, align 8
  %199 = load i32, ptr %idx, align 4
  %idxprom398 = sext i32 %199 to i64
  %arrayidx399 = getelementptr inbounds i8, ptr %198, i64 %idxprom398
  store i8 %197, ptr %arrayidx399, align 1
  %200 = load i32, ptr %ix, align 4
  %dec = add nsw i32 %200, -1
  store i32 %dec, ptr %ix, align 4
  %201 = load i32, ptr %ix, align 4
  %cmp400 = icmp eq i32 %201, 0
  br i1 %cmp400, label %if.then402, label %if.end407

if.then402:                                       ; preds = %for.body394
  %202 = load i8, ptr %cThousand, align 1
  %203 = load ptr, ptr %bufpt, align 8
  %204 = load i32, ptr %idx, align 4
  %inc403 = add nsw i32 %204, 1
  store i32 %inc403, ptr %idx, align 4
  %idxprom404 = sext i32 %inc403 to i64
  %arrayidx405 = getelementptr inbounds i8, ptr %203, i64 %idxprom404
  store i8 %202, ptr %arrayidx405, align 1
  %205 = load i32, ptr %nn, align 4
  %dec406 = add nsw i32 %205, -1
  store i32 %dec406, ptr %nn, align 4
  store i32 3, ptr %ix, align 4
  br label %if.end407

if.end407:                                        ; preds = %if.then402, %for.body394
  br label %for.inc408

for.inc408:                                       ; preds = %if.end407
  %206 = load i32, ptr %idx, align 4
  %inc409 = add nsw i32 %206, 1
  store i32 %inc409, ptr %idx, align 4
  br label %for.cond391, !llvm.loop !14

for.end410:                                       ; preds = %for.cond391
  br label %if.end411

if.end411:                                        ; preds = %for.end410, %while.end383
  %207 = load i8, ptr %prefix, align 1
  %tobool412 = icmp ne i8 %207, 0
  br i1 %tobool412, label %if.then413, label %if.end415

if.then413:                                       ; preds = %if.end411
  %208 = load i8, ptr %prefix, align 1
  %209 = load ptr, ptr %bufpt, align 8
  %incdec.ptr414 = getelementptr inbounds i8, ptr %209, i32 -1
  store ptr %incdec.ptr414, ptr %bufpt, align 8
  store i8 %208, ptr %incdec.ptr414, align 1
  br label %if.end415

if.end415:                                        ; preds = %if.then413, %if.end411
  %210 = load i8, ptr %flag_alternateform, align 1
  %conv416 = zext i8 %210 to i32
  %tobool417 = icmp ne i32 %conv416, 0
  br i1 %tobool417, label %land.lhs.true418, label %if.end436

land.lhs.true418:                                 ; preds = %if.end415
  %211 = load ptr, ptr %infop, align 8
  %prefix419 = getelementptr inbounds nuw %struct.et_info, ptr %211, i32 0, i32 5
  %212 = load i8, ptr %prefix419, align 1
  %conv420 = zext i8 %212 to i32
  %tobool421 = icmp ne i32 %conv420, 0
  br i1 %tobool421, label %if.then422, label %if.end436

if.then422:                                       ; preds = %land.lhs.true418
  %213 = load ptr, ptr %infop, align 8
  %prefix424 = getelementptr inbounds nuw %struct.et_info, ptr %213, i32 0, i32 5
  %214 = load i8, ptr %prefix424, align 1
  %idxprom425 = zext i8 %214 to i64
  %arrayidx426 = getelementptr inbounds nuw [7 x i8], ptr @aPrefix, i64 0, i64 %idxprom425
  store ptr %arrayidx426, ptr %pre, align 8
  br label %for.cond427

for.cond427:                                      ; preds = %for.inc433, %if.then422
  %215 = load ptr, ptr %pre, align 8
  %216 = load i8, ptr %215, align 1
  store i8 %216, ptr %x423, align 1
  %conv428 = sext i8 %216 to i32
  %cmp429 = icmp ne i32 %conv428, 0
  br i1 %cmp429, label %for.body431, label %for.end435

for.body431:                                      ; preds = %for.cond427
  %217 = load i8, ptr %x423, align 1
  %218 = load ptr, ptr %bufpt, align 8
  %incdec.ptr432 = getelementptr inbounds i8, ptr %218, i32 -1
  store ptr %incdec.ptr432, ptr %bufpt, align 8
  store i8 %217, ptr %incdec.ptr432, align 1
  br label %for.inc433

for.inc433:                                       ; preds = %for.body431
  %219 = load ptr, ptr %pre, align 8
  %incdec.ptr434 = getelementptr inbounds nuw i8, ptr %219, i32 1
  store ptr %incdec.ptr434, ptr %pre, align 8
  br label %for.cond427, !llvm.loop !15

for.end435:                                       ; preds = %for.cond427
  br label %if.end436

if.end436:                                        ; preds = %for.end435, %land.lhs.true418, %if.end415
  %220 = load ptr, ptr %zOut, align 8
  %221 = load i32, ptr %nOut, align 4
  %sub437 = sub nsw i32 %221, 1
  %idxprom438 = sext i32 %sub437 to i64
  %arrayidx439 = getelementptr inbounds i8, ptr %220, i64 %idxprom438
  %222 = load ptr, ptr %bufpt, align 8
  %sub.ptr.lhs.cast440 = ptrtoint ptr %arrayidx439 to i64
  %sub.ptr.rhs.cast441 = ptrtoint ptr %222 to i64
  %sub.ptr.sub442 = sub i64 %sub.ptr.lhs.cast440, %sub.ptr.rhs.cast441
  %conv443 = trunc i64 %sub.ptr.sub442 to i32
  store i32 %conv443, ptr %length, align 4
  br label %sw.epilog1282

sw.bb444:                                         ; preds = %for.end, %for.end, %for.end
  %223 = load i8, ptr %bArgList, align 1
  %tobool445 = icmp ne i8 %223, 0
  br i1 %tobool445, label %if.then446, label %if.else449

if.then446:                                       ; preds = %sw.bb444
  %224 = load ptr, ptr %pArgList, align 8
  %call447 = call double @getDoubleArg(ptr noundef %224)
  %conv448 = fpext double %call447 to x86_fp80
  store x86_fp80 %conv448, ptr %realvalue, align 16
  br label %if.end459

if.else449:                                       ; preds = %sw.bb444
  %225 = load ptr, ptr %ap.addr, align 8
  %fp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %225, i32 0, i32 1
  %fp_offset = load i32, ptr %fp_offset_p, align 4
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg450, label %vaarg.in_mem452

vaarg.in_reg450:                                  ; preds = %if.else449
  %226 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %225, i32 0, i32 3
  %reg_save_area451 = load ptr, ptr %226, align 8
  %227 = getelementptr i8, ptr %reg_save_area451, i32 %fp_offset
  %228 = add i32 %fp_offset, 16
  store i32 %228, ptr %fp_offset_p, align 4
  br label %vaarg.end456

vaarg.in_mem452:                                  ; preds = %if.else449
  %overflow_arg_area_p453 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %225, i32 0, i32 2
  %overflow_arg_area454 = load ptr, ptr %overflow_arg_area_p453, align 8
  %overflow_arg_area.next455 = getelementptr i8, ptr %overflow_arg_area454, i32 8
  store ptr %overflow_arg_area.next455, ptr %overflow_arg_area_p453, align 8
  br label %vaarg.end456

vaarg.end456:                                     ; preds = %vaarg.in_mem452, %vaarg.in_reg450
  %vaarg.addr457 = phi ptr [ %227, %vaarg.in_reg450 ], [ %overflow_arg_area454, %vaarg.in_mem452 ]
  %229 = load double, ptr %vaarg.addr457, align 8
  %conv458 = fpext double %229 to x86_fp80
  store x86_fp80 %conv458, ptr %realvalue, align 16
  br label %if.end459

if.end459:                                        ; preds = %vaarg.end456, %if.then446
  %230 = load i32, ptr %precision, align 4
  %cmp460 = icmp slt i32 %230, 0
  br i1 %cmp460, label %if.then462, label %if.end463

if.then462:                                       ; preds = %if.end459
  store i32 6, ptr %precision, align 4
  br label %if.end463

if.end463:                                        ; preds = %if.then462, %if.end459
  %231 = load x86_fp80, ptr %realvalue, align 16
  %cmp464 = fcmp olt x86_fp80 %231, 0xK00000000000000000000
  br i1 %cmp464, label %if.then466, label %if.else467

if.then466:                                       ; preds = %if.end463
  %232 = load x86_fp80, ptr %realvalue, align 16
  %fneg = fneg x86_fp80 %232
  store x86_fp80 %fneg, ptr %realvalue, align 16
  store i8 45, ptr %prefix, align 1
  br label %if.end468

if.else467:                                       ; preds = %if.end463
  %233 = load i8, ptr %flag_prefix, align 1
  store i8 %233, ptr %prefix, align 1
  br label %if.end468

if.end468:                                        ; preds = %if.else467, %if.then466
  %234 = load i8, ptr %xtype, align 1
  %conv469 = zext i8 %234 to i32
  %cmp470 = icmp eq i32 %conv469, 3
  br i1 %cmp470, label %land.lhs.true472, label %if.end477

land.lhs.true472:                                 ; preds = %if.end468
  %235 = load i32, ptr %precision, align 4
  %cmp473 = icmp sgt i32 %235, 0
  br i1 %cmp473, label %if.then475, label %if.end477

if.then475:                                       ; preds = %land.lhs.true472
  %236 = load i32, ptr %precision, align 4
  %dec476 = add nsw i32 %236, -1
  store i32 %dec476, ptr %precision, align 4
  br label %if.end477

if.end477:                                        ; preds = %if.then475, %land.lhs.true472, %if.end468
  %237 = load i32, ptr %precision, align 4
  %and478 = and i32 %237, 4095
  store i32 %and478, ptr %idx, align 4
  %238 = load i32, ptr %idx, align 4
  %rem479 = srem i32 %238, 10
  %idxprom480 = sext i32 %rem479 to i64
  %arrayidx481 = getelementptr inbounds [10 x double], ptr @arRound, i64 0, i64 %idxprom480
  %239 = load double, ptr %arrayidx481, align 8
  store double %239, ptr %rounder, align 8
  br label %while.cond482

while.cond482:                                    ; preds = %while.body485, %if.end477
  %240 = load i32, ptr %idx, align 4
  %cmp483 = icmp sge i32 %240, 10
  br i1 %cmp483, label %while.body485, label %while.end488

while.body485:                                    ; preds = %while.cond482
  %241 = load double, ptr %rounder, align 8
  %mul486 = fmul double %241, 1.000000e-10
  store double %mul486, ptr %rounder, align 8
  %242 = load i32, ptr %idx, align 4
  %sub487 = sub nsw i32 %242, 10
  store i32 %sub487, ptr %idx, align 4
  br label %while.cond482, !llvm.loop !16

while.end488:                                     ; preds = %while.cond482
  %243 = load i8, ptr %xtype, align 1
  %conv489 = zext i8 %243 to i32
  %cmp490 = icmp eq i32 %conv489, 1
  br i1 %cmp490, label %if.then492, label %if.end508

if.then492:                                       ; preds = %while.end488
  %244 = load x86_fp80, ptr %realvalue, align 16
  %conv493 = fptrunc x86_fp80 %244 to double
  store double %conv493, ptr %rx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %u, ptr align 8 %rx, i64 8, i1 false)
  %245 = load i64, ptr %u, align 8
  %shr = lshr i64 %245, 52
  %and494 = and i64 %shr, 2047
  %conv495 = trunc i64 %and494 to i32
  %add496 = add nsw i32 -1023, %conv495
  store i32 %add496, ptr %ex, align 4
  %246 = load i32, ptr %precision, align 4
  %247 = load i32, ptr %ex, align 4
  %div497 = sdiv i32 %247, 3
  %add498 = add nsw i32 %246, %div497
  %cmp499 = icmp slt i32 %add498, 15
  br i1 %cmp499, label %if.then501, label %if.end505

if.then501:                                       ; preds = %if.then492
  %248 = load x86_fp80, ptr %realvalue, align 16
  %249 = load double, ptr %rounder, align 8
  %conv503 = fpext double %249 to x86_fp80
  %250 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %248, x86_fp80 0xK3FCBACF02F8F133A6800, x86_fp80 %conv503)
  %conv504 = fptrunc x86_fp80 %250 to double
  store double %conv504, ptr %rounder, align 8
  br label %if.end505

if.end505:                                        ; preds = %if.then501, %if.then492
  %251 = load double, ptr %rounder, align 8
  %conv506 = fpext double %251 to x86_fp80
  %252 = load x86_fp80, ptr %realvalue, align 16
  %add507 = fadd x86_fp80 %252, %conv506
  store x86_fp80 %add507, ptr %realvalue, align 16
  br label %if.end508

if.end508:                                        ; preds = %if.end505, %while.end488
  store i32 0, ptr %exp, align 4
  %253 = load x86_fp80, ptr %realvalue, align 16
  %conv509 = fptrunc x86_fp80 %253 to double
  %call510 = call i32 @sqlite3IsNaN(double noundef %conv509)
  %tobool511 = icmp ne i32 %call510, 0
  br i1 %tobool511, label %if.then512, label %if.end513

if.then512:                                       ; preds = %if.end508
  store ptr @.str.1, ptr %bufpt, align 8
  store i32 3, ptr %length, align 4
  br label %sw.epilog1282

if.end513:                                        ; preds = %if.end508
  %254 = load x86_fp80, ptr %realvalue, align 16
  %cmp514 = fcmp ogt x86_fp80 %254, 0xK00000000000000000000
  br i1 %cmp514, label %if.then516, label %if.end584

if.then516:                                       ; preds = %if.end513
  store x86_fp80 0xK3FFF8000000000000000, ptr %scale, align 16
  br label %while.cond517

while.cond517:                                    ; preds = %while.body525, %if.then516
  %255 = load x86_fp80, ptr %realvalue, align 16
  %256 = load x86_fp80, ptr %scale, align 16
  %mul518 = fmul x86_fp80 0xK414B924D692CA61BE800, %256
  %cmp519 = fcmp oge x86_fp80 %255, %mul518
  br i1 %cmp519, label %land.rhs521, label %land.end524

land.rhs521:                                      ; preds = %while.cond517
  %257 = load i32, ptr %exp, align 4
  %cmp522 = icmp sle i32 %257, 350
  br label %land.end524

land.end524:                                      ; preds = %land.rhs521, %while.cond517
  %258 = phi i1 [ false, %while.cond517 ], [ %cmp522, %land.rhs521 ]
  br i1 %258, label %while.body525, label %while.end528

while.body525:                                    ; preds = %land.end524
  %259 = load x86_fp80, ptr %scale, align 16
  %mul526 = fmul x86_fp80 %259, 0xK414B924D692CA61BE800
  store x86_fp80 %mul526, ptr %scale, align 16
  %260 = load i32, ptr %exp, align 4
  %add527 = add nsw i32 %260, 100
  store i32 %add527, ptr %exp, align 4
  br label %while.cond517, !llvm.loop !17

while.end528:                                     ; preds = %land.end524
  br label %while.cond529

while.cond529:                                    ; preds = %while.body537, %while.end528
  %261 = load x86_fp80, ptr %realvalue, align 16
  %262 = load x86_fp80, ptr %scale, align 16
  %mul530 = fmul x86_fp80 0xK40209502F90000000000, %262
  %cmp531 = fcmp oge x86_fp80 %261, %mul530
  br i1 %cmp531, label %land.rhs533, label %land.end536

land.rhs533:                                      ; preds = %while.cond529
  %263 = load i32, ptr %exp, align 4
  %cmp534 = icmp sle i32 %263, 350
  br label %land.end536

land.end536:                                      ; preds = %land.rhs533, %while.cond529
  %264 = phi i1 [ false, %while.cond529 ], [ %cmp534, %land.rhs533 ]
  br i1 %264, label %while.body537, label %while.end540

while.body537:                                    ; preds = %land.end536
  %265 = load x86_fp80, ptr %scale, align 16
  %mul538 = fmul x86_fp80 %265, 0xK40209502F90000000000
  store x86_fp80 %mul538, ptr %scale, align 16
  %266 = load i32, ptr %exp, align 4
  %add539 = add nsw i32 %266, 10
  store i32 %add539, ptr %exp, align 4
  br label %while.cond529, !llvm.loop !18

while.end540:                                     ; preds = %land.end536
  br label %while.cond541

while.cond541:                                    ; preds = %while.body549, %while.end540
  %267 = load x86_fp80, ptr %realvalue, align 16
  %268 = load x86_fp80, ptr %scale, align 16
  %mul542 = fmul x86_fp80 0xK4002A000000000000000, %268
  %cmp543 = fcmp oge x86_fp80 %267, %mul542
  br i1 %cmp543, label %land.rhs545, label %land.end548

land.rhs545:                                      ; preds = %while.cond541
  %269 = load i32, ptr %exp, align 4
  %cmp546 = icmp sle i32 %269, 350
  br label %land.end548

land.end548:                                      ; preds = %land.rhs545, %while.cond541
  %270 = phi i1 [ false, %while.cond541 ], [ %cmp546, %land.rhs545 ]
  br i1 %270, label %while.body549, label %while.end552

while.body549:                                    ; preds = %land.end548
  %271 = load x86_fp80, ptr %scale, align 16
  %mul550 = fmul x86_fp80 %271, 0xK4002A000000000000000
  store x86_fp80 %mul550, ptr %scale, align 16
  %272 = load i32, ptr %exp, align 4
  %inc551 = add nsw i32 %272, 1
  store i32 %inc551, ptr %exp, align 4
  br label %while.cond541, !llvm.loop !19

while.end552:                                     ; preds = %land.end548
  %273 = load x86_fp80, ptr %scale, align 16
  %274 = load x86_fp80, ptr %realvalue, align 16
  %div553 = fdiv x86_fp80 %274, %273
  store x86_fp80 %div553, ptr %realvalue, align 16
  br label %while.cond554

while.cond554:                                    ; preds = %while.body557, %while.end552
  %275 = load x86_fp80, ptr %realvalue, align 16
  %cmp555 = fcmp olt x86_fp80 %275, 0xK3FE4ABCC77118461D000
  br i1 %cmp555, label %while.body557, label %while.end560

while.body557:                                    ; preds = %while.cond554
  %276 = load x86_fp80, ptr %realvalue, align 16
  %mul558 = fmul x86_fp80 %276, 0xK4019BEBC200000000000
  store x86_fp80 %mul558, ptr %realvalue, align 16
  %277 = load i32, ptr %exp, align 4
  %sub559 = sub nsw i32 %277, 8
  store i32 %sub559, ptr %exp, align 4
  br label %while.cond554, !llvm.loop !20

while.end560:                                     ; preds = %while.cond554
  br label %while.cond561

while.cond561:                                    ; preds = %while.body564, %while.end560
  %278 = load x86_fp80, ptr %realvalue, align 16
  %cmp562 = fcmp olt x86_fp80 %278, 0xK3FFF8000000000000000
  br i1 %cmp562, label %while.body564, label %while.end567

while.body564:                                    ; preds = %while.cond561
  %279 = load x86_fp80, ptr %realvalue, align 16
  %mul565 = fmul x86_fp80 %279, 0xK4002A000000000000000
  store x86_fp80 %mul565, ptr %realvalue, align 16
  %280 = load i32, ptr %exp, align 4
  %dec566 = add nsw i32 %280, -1
  store i32 %dec566, ptr %exp, align 4
  br label %while.cond561, !llvm.loop !21

while.end567:                                     ; preds = %while.cond561
  %281 = load i32, ptr %exp, align 4
  %cmp568 = icmp sgt i32 %281, 350
  br i1 %cmp568, label %if.then570, label %if.end583

if.then570:                                       ; preds = %while.end567
  %arraydecay571 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay571, ptr %bufpt, align 8
  %282 = load i8, ptr %prefix, align 1
  %arrayidx572 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %282, ptr %arrayidx572, align 16
  %arraydecay573 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  %283 = load i8, ptr %prefix, align 1
  %conv574 = sext i8 %283 to i32
  %cmp575 = icmp ne i32 %conv574, 0
  %conv576 = zext i1 %cmp575 to i32
  %idx.ext577 = sext i32 %conv576 to i64
  %add.ptr578 = getelementptr inbounds i8, ptr %arraydecay573, i64 %idx.ext577
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr578, ptr align 1 @.str.2, i64 4, i1 false)
  %284 = load i8, ptr %prefix, align 1
  %conv579 = sext i8 %284 to i32
  %cmp580 = icmp ne i32 %conv579, 0
  %conv581 = zext i1 %cmp580 to i32
  %add582 = add nsw i32 3, %conv581
  store i32 %add582, ptr %length, align 4
  br label %sw.epilog1282

if.end583:                                        ; preds = %while.end567
  br label %if.end584

if.end584:                                        ; preds = %if.end583, %if.end513
  %arraydecay585 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay585, ptr %bufpt, align 8
  %285 = load i8, ptr %xtype, align 1
  %conv586 = zext i8 %285 to i32
  %cmp587 = icmp ne i32 %conv586, 1
  br i1 %cmp587, label %if.then589, label %if.end598

if.then589:                                       ; preds = %if.end584
  %286 = load double, ptr %rounder, align 8
  %conv590 = fpext double %286 to x86_fp80
  %287 = load x86_fp80, ptr %realvalue, align 16
  %add591 = fadd x86_fp80 %287, %conv590
  store x86_fp80 %add591, ptr %realvalue, align 16
  %288 = load x86_fp80, ptr %realvalue, align 16
  %cmp592 = fcmp oge x86_fp80 %288, 0xK4002A000000000000000
  br i1 %cmp592, label %if.then594, label %if.end597

if.then594:                                       ; preds = %if.then589
  %289 = load x86_fp80, ptr %realvalue, align 16
  %mul595 = fmul x86_fp80 %289, 0xK3FFBCCCCCCCCCCCCD000
  store x86_fp80 %mul595, ptr %realvalue, align 16
  %290 = load i32, ptr %exp, align 4
  %inc596 = add nsw i32 %290, 1
  store i32 %inc596, ptr %exp, align 4
  br label %if.end597

if.end597:                                        ; preds = %if.then594, %if.then589
  br label %if.end598

if.end598:                                        ; preds = %if.end597, %if.end584
  %291 = load i8, ptr %xtype, align 1
  %conv599 = zext i8 %291 to i32
  %cmp600 = icmp eq i32 %conv599, 3
  br i1 %cmp600, label %if.then602, label %if.else614

if.then602:                                       ; preds = %if.end598
  %292 = load i8, ptr %flag_alternateform, align 1
  %tobool603 = icmp ne i8 %292, 0
  %lnot = xor i1 %tobool603, true
  %lnot.ext = zext i1 %lnot to i32
  %conv604 = trunc i32 %lnot.ext to i8
  store i8 %conv604, ptr %flag_rtz, align 1
  %293 = load i32, ptr %exp, align 4
  %cmp605 = icmp slt i32 %293, -4
  br i1 %cmp605, label %if.then610, label %lor.lhs.false607

lor.lhs.false607:                                 ; preds = %if.then602
  %294 = load i32, ptr %exp, align 4
  %295 = load i32, ptr %precision, align 4
  %cmp608 = icmp sgt i32 %294, %295
  br i1 %cmp608, label %if.then610, label %if.else611

if.then610:                                       ; preds = %lor.lhs.false607, %if.then602
  store i8 2, ptr %xtype, align 1
  br label %if.end613

if.else611:                                       ; preds = %lor.lhs.false607
  %296 = load i32, ptr %precision, align 4
  %297 = load i32, ptr %exp, align 4
  %sub612 = sub nsw i32 %296, %297
  store i32 %sub612, ptr %precision, align 4
  store i8 1, ptr %xtype, align 1
  br label %if.end613

if.end613:                                        ; preds = %if.else611, %if.then610
  br label %if.end615

if.else614:                                       ; preds = %if.end598
  %298 = load i8, ptr %flag_altform2, align 1
  store i8 %298, ptr %flag_rtz, align 1
  br label %if.end615

if.end615:                                        ; preds = %if.else614, %if.end613
  %299 = load i8, ptr %xtype, align 1
  %conv616 = zext i8 %299 to i32
  %cmp617 = icmp eq i32 %conv616, 2
  br i1 %cmp617, label %if.then619, label %if.else620

if.then619:                                       ; preds = %if.end615
  store i32 0, ptr %e2, align 4
  br label %if.end621

if.else620:                                       ; preds = %if.end615
  %300 = load i32, ptr %exp, align 4
  store i32 %300, ptr %e2, align 4
  br label %if.end621

if.end621:                                        ; preds = %if.else620, %if.then619
  %301 = load i32, ptr %e2, align 4
  %cmp622 = icmp sgt i32 %301, 0
  br i1 %cmp622, label %cond.true624, label %cond.false625

cond.true624:                                     ; preds = %if.end621
  %302 = load i32, ptr %e2, align 4
  br label %cond.end626

cond.false625:                                    ; preds = %if.end621
  br label %cond.end626

cond.end626:                                      ; preds = %cond.false625, %cond.true624
  %cond627 = phi i32 [ %302, %cond.true624 ], [ 0, %cond.false625 ]
  %conv628 = sext i32 %cond627 to i64
  %303 = load i32, ptr %precision, align 4
  %conv629 = sext i32 %303 to i64
  %add630 = add nsw i64 %conv628, %conv629
  %304 = load i32, ptr %width, align 4
  %conv631 = sext i32 %304 to i64
  %add632 = add nsw i64 %add630, %conv631
  %add633 = add nsw i64 %add632, 15
  store i64 %add633, ptr %szBufNeeded, align 8
  %305 = load i64, ptr %szBufNeeded, align 8
  %cmp634 = icmp sgt i64 %305, 70
  br i1 %cmp634, label %if.then636, label %if.end642

if.then636:                                       ; preds = %cond.end626
  %306 = load ptr, ptr %pAccum.addr, align 8
  %307 = load i64, ptr %szBufNeeded, align 8
  %call637 = call ptr @printfTempBuf(ptr noundef %306, i64 noundef %307)
  store ptr %call637, ptr %zExtra, align 8
  store ptr %call637, ptr %bufpt, align 8
  %308 = load ptr, ptr %bufpt, align 8
  %cmp638 = icmp eq ptr %308, null
  br i1 %cmp638, label %if.then640, label %if.end641

if.then640:                                       ; preds = %if.then636
  br label %for.end1301

if.end641:                                        ; preds = %if.then636
  br label %if.end642

if.end642:                                        ; preds = %if.end641, %cond.end626
  %309 = load ptr, ptr %bufpt, align 8
  store ptr %309, ptr %zOut, align 8
  %310 = load i8, ptr %flag_altform2, align 1
  %conv643 = zext i8 %310 to i32
  %mul644 = mul nsw i32 %conv643, 10
  %add645 = add nsw i32 16, %mul644
  store i32 %add645, ptr %nsd, align 4
  %311 = load i32, ptr %precision, align 4
  %cmp646 = icmp sgt i32 %311, 0
  %312 = zext i1 %cmp646 to i64
  %cond648 = select i1 %cmp646, i32 1, i32 0
  %313 = load i8, ptr %flag_alternateform, align 1
  %conv649 = zext i8 %313 to i32
  %or = or i32 %cond648, %conv649
  %314 = load i8, ptr %flag_altform2, align 1
  %conv650 = zext i8 %314 to i32
  %or651 = or i32 %or, %conv650
  %conv652 = trunc i32 %or651 to i8
  store i8 %conv652, ptr %flag_dp, align 1
  %315 = load i8, ptr %prefix, align 1
  %tobool653 = icmp ne i8 %315, 0
  br i1 %tobool653, label %if.then654, label %if.end656

if.then654:                                       ; preds = %if.end642
  %316 = load i8, ptr %prefix, align 1
  %317 = load ptr, ptr %bufpt, align 8
  %incdec.ptr655 = getelementptr inbounds nuw i8, ptr %317, i32 1
  store ptr %incdec.ptr655, ptr %bufpt, align 8
  store i8 %316, ptr %317, align 1
  br label %if.end656

if.end656:                                        ; preds = %if.then654, %if.end642
  %318 = load i32, ptr %e2, align 4
  %cmp657 = icmp slt i32 %318, 0
  br i1 %cmp657, label %if.then659, label %if.else661

if.then659:                                       ; preds = %if.end656
  %319 = load ptr, ptr %bufpt, align 8
  %incdec.ptr660 = getelementptr inbounds nuw i8, ptr %319, i32 1
  store ptr %incdec.ptr660, ptr %bufpt, align 8
  store i8 48, ptr %319, align 1
  br label %if.end671

if.else661:                                       ; preds = %if.end656
  br label %for.cond662

for.cond662:                                      ; preds = %for.inc668, %if.else661
  %320 = load i32, ptr %e2, align 4
  %cmp663 = icmp sge i32 %320, 0
  br i1 %cmp663, label %for.body665, label %for.end670

for.body665:                                      ; preds = %for.cond662
  %call666 = call signext i8 @et_getdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %321 = load ptr, ptr %bufpt, align 8
  %incdec.ptr667 = getelementptr inbounds nuw i8, ptr %321, i32 1
  store ptr %incdec.ptr667, ptr %bufpt, align 8
  store i8 %call666, ptr %321, align 1
  br label %for.inc668

for.inc668:                                       ; preds = %for.body665
  %322 = load i32, ptr %e2, align 4
  %dec669 = add nsw i32 %322, -1
  store i32 %dec669, ptr %e2, align 4
  br label %for.cond662, !llvm.loop !22

for.end670:                                       ; preds = %for.cond662
  br label %if.end671

if.end671:                                        ; preds = %for.end670, %if.then659
  %323 = load i8, ptr %flag_dp, align 1
  %tobool672 = icmp ne i8 %323, 0
  br i1 %tobool672, label %if.then673, label %if.end675

if.then673:                                       ; preds = %if.end671
  %324 = load ptr, ptr %bufpt, align 8
  %incdec.ptr674 = getelementptr inbounds nuw i8, ptr %324, i32 1
  store ptr %incdec.ptr674, ptr %bufpt, align 8
  store i8 46, ptr %324, align 1
  br label %if.end675

if.end675:                                        ; preds = %if.then673, %if.end671
  %325 = load i32, ptr %e2, align 4
  %inc676 = add nsw i32 %325, 1
  store i32 %inc676, ptr %e2, align 4
  br label %for.cond677

for.cond677:                                      ; preds = %for.inc682, %if.end675
  %326 = load i32, ptr %e2, align 4
  %cmp678 = icmp slt i32 %326, 0
  br i1 %cmp678, label %for.body680, label %for.end685

for.body680:                                      ; preds = %for.cond677
  %327 = load ptr, ptr %bufpt, align 8
  %incdec.ptr681 = getelementptr inbounds nuw i8, ptr %327, i32 1
  store ptr %incdec.ptr681, ptr %bufpt, align 8
  store i8 48, ptr %327, align 1
  br label %for.inc682

for.inc682:                                       ; preds = %for.body680
  %328 = load i32, ptr %precision, align 4
  %dec683 = add nsw i32 %328, -1
  store i32 %dec683, ptr %precision, align 4
  %329 = load i32, ptr %e2, align 4
  %inc684 = add nsw i32 %329, 1
  store i32 %inc684, ptr %e2, align 4
  br label %for.cond677, !llvm.loop !23

for.end685:                                       ; preds = %for.cond677
  br label %while.cond686

while.cond686:                                    ; preds = %while.body690, %for.end685
  %330 = load i32, ptr %precision, align 4
  %dec687 = add nsw i32 %330, -1
  store i32 %dec687, ptr %precision, align 4
  %cmp688 = icmp sgt i32 %330, 0
  br i1 %cmp688, label %while.body690, label %while.end693

while.body690:                                    ; preds = %while.cond686
  %call691 = call signext i8 @et_getdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %331 = load ptr, ptr %bufpt, align 8
  %incdec.ptr692 = getelementptr inbounds nuw i8, ptr %331, i32 1
  store ptr %incdec.ptr692, ptr %bufpt, align 8
  store i8 %call691, ptr %331, align 1
  br label %while.cond686, !llvm.loop !24

while.end693:                                     ; preds = %while.cond686
  %332 = load i8, ptr %flag_rtz, align 1
  %conv694 = zext i8 %332 to i32
  %tobool695 = icmp ne i32 %conv694, 0
  br i1 %tobool695, label %land.lhs.true696, label %if.end720

land.lhs.true696:                                 ; preds = %while.end693
  %333 = load i8, ptr %flag_dp, align 1
  %conv697 = zext i8 %333 to i32
  %tobool698 = icmp ne i32 %conv697, 0
  br i1 %tobool698, label %if.then699, label %if.end720

if.then699:                                       ; preds = %land.lhs.true696
  br label %while.cond700

while.cond700:                                    ; preds = %while.body705, %if.then699
  %334 = load ptr, ptr %bufpt, align 8
  %arrayidx701 = getelementptr inbounds i8, ptr %334, i64 -1
  %335 = load i8, ptr %arrayidx701, align 1
  %conv702 = sext i8 %335 to i32
  %cmp703 = icmp eq i32 %conv702, 48
  br i1 %cmp703, label %while.body705, label %while.end707

while.body705:                                    ; preds = %while.cond700
  %336 = load ptr, ptr %bufpt, align 8
  %incdec.ptr706 = getelementptr inbounds i8, ptr %336, i32 -1
  store ptr %incdec.ptr706, ptr %bufpt, align 8
  store i8 0, ptr %incdec.ptr706, align 1
  br label %while.cond700, !llvm.loop !25

while.end707:                                     ; preds = %while.cond700
  %337 = load ptr, ptr %bufpt, align 8
  %arrayidx708 = getelementptr inbounds i8, ptr %337, i64 -1
  %338 = load i8, ptr %arrayidx708, align 1
  %conv709 = sext i8 %338 to i32
  %cmp710 = icmp eq i32 %conv709, 46
  br i1 %cmp710, label %if.then712, label %if.end719

if.then712:                                       ; preds = %while.end707
  %339 = load i8, ptr %flag_altform2, align 1
  %tobool713 = icmp ne i8 %339, 0
  br i1 %tobool713, label %if.then714, label %if.else716

if.then714:                                       ; preds = %if.then712
  %340 = load ptr, ptr %bufpt, align 8
  %incdec.ptr715 = getelementptr inbounds nuw i8, ptr %340, i32 1
  store ptr %incdec.ptr715, ptr %bufpt, align 8
  store i8 48, ptr %340, align 1
  br label %if.end718

if.else716:                                       ; preds = %if.then712
  %341 = load ptr, ptr %bufpt, align 8
  %incdec.ptr717 = getelementptr inbounds i8, ptr %341, i32 -1
  store ptr %incdec.ptr717, ptr %bufpt, align 8
  store i8 0, ptr %incdec.ptr717, align 1
  br label %if.end718

if.end718:                                        ; preds = %if.else716, %if.then714
  br label %if.end719

if.end719:                                        ; preds = %if.end718, %while.end707
  br label %if.end720

if.end720:                                        ; preds = %if.end719, %land.lhs.true696, %while.end693
  %342 = load i8, ptr %xtype, align 1
  %conv721 = zext i8 %342 to i32
  %cmp722 = icmp eq i32 %conv721, 2
  br i1 %cmp722, label %if.then724, label %if.end754

if.then724:                                       ; preds = %if.end720
  %343 = load ptr, ptr %infop, align 8
  %charset725 = getelementptr inbounds nuw %struct.et_info, ptr %343, i32 0, i32 4
  %344 = load i8, ptr %charset725, align 1
  %idxprom726 = zext i8 %344 to i64
  %arrayidx727 = getelementptr inbounds nuw [33 x i8], ptr @aDigits, i64 0, i64 %idxprom726
  %345 = load i8, ptr %arrayidx727, align 1
  %346 = load ptr, ptr %bufpt, align 8
  %incdec.ptr728 = getelementptr inbounds nuw i8, ptr %346, i32 1
  store ptr %incdec.ptr728, ptr %bufpt, align 8
  store i8 %345, ptr %346, align 1
  %347 = load i32, ptr %exp, align 4
  %cmp729 = icmp slt i32 %347, 0
  br i1 %cmp729, label %if.then731, label %if.else734

if.then731:                                       ; preds = %if.then724
  %348 = load ptr, ptr %bufpt, align 8
  %incdec.ptr732 = getelementptr inbounds nuw i8, ptr %348, i32 1
  store ptr %incdec.ptr732, ptr %bufpt, align 8
  store i8 45, ptr %348, align 1
  %349 = load i32, ptr %exp, align 4
  %sub733 = sub nsw i32 0, %349
  store i32 %sub733, ptr %exp, align 4
  br label %if.end736

if.else734:                                       ; preds = %if.then724
  %350 = load ptr, ptr %bufpt, align 8
  %incdec.ptr735 = getelementptr inbounds nuw i8, ptr %350, i32 1
  store ptr %incdec.ptr735, ptr %bufpt, align 8
  store i8 43, ptr %350, align 1
  br label %if.end736

if.end736:                                        ; preds = %if.else734, %if.then731
  %351 = load i32, ptr %exp, align 4
  %cmp737 = icmp sge i32 %351, 100
  br i1 %cmp737, label %if.then739, label %if.end745

if.then739:                                       ; preds = %if.end736
  %352 = load i32, ptr %exp, align 4
  %div740 = sdiv i32 %352, 100
  %add741 = add nsw i32 %div740, 48
  %conv742 = trunc i32 %add741 to i8
  %353 = load ptr, ptr %bufpt, align 8
  %incdec.ptr743 = getelementptr inbounds nuw i8, ptr %353, i32 1
  store ptr %incdec.ptr743, ptr %bufpt, align 8
  store i8 %conv742, ptr %353, align 1
  %354 = load i32, ptr %exp, align 4
  %rem744 = srem i32 %354, 100
  store i32 %rem744, ptr %exp, align 4
  br label %if.end745

if.end745:                                        ; preds = %if.then739, %if.end736
  %355 = load i32, ptr %exp, align 4
  %div746 = sdiv i32 %355, 10
  %add747 = add nsw i32 %div746, 48
  %conv748 = trunc i32 %add747 to i8
  %356 = load ptr, ptr %bufpt, align 8
  %incdec.ptr749 = getelementptr inbounds nuw i8, ptr %356, i32 1
  store ptr %incdec.ptr749, ptr %bufpt, align 8
  store i8 %conv748, ptr %356, align 1
  %357 = load i32, ptr %exp, align 4
  %rem750 = srem i32 %357, 10
  %add751 = add nsw i32 %rem750, 48
  %conv752 = trunc i32 %add751 to i8
  %358 = load ptr, ptr %bufpt, align 8
  %incdec.ptr753 = getelementptr inbounds nuw i8, ptr %358, i32 1
  store ptr %incdec.ptr753, ptr %bufpt, align 8
  store i8 %conv752, ptr %358, align 1
  br label %if.end754

if.end754:                                        ; preds = %if.end745, %if.end720
  %359 = load ptr, ptr %bufpt, align 8
  store i8 0, ptr %359, align 1
  %360 = load ptr, ptr %bufpt, align 8
  %361 = load ptr, ptr %zOut, align 8
  %sub.ptr.lhs.cast755 = ptrtoint ptr %360 to i64
  %sub.ptr.rhs.cast756 = ptrtoint ptr %361 to i64
  %sub.ptr.sub757 = sub i64 %sub.ptr.lhs.cast755, %sub.ptr.rhs.cast756
  %conv758 = trunc i64 %sub.ptr.sub757 to i32
  store i32 %conv758, ptr %length, align 4
  %362 = load ptr, ptr %zOut, align 8
  store ptr %362, ptr %bufpt, align 8
  %363 = load i8, ptr %flag_zeropad, align 1
  %conv759 = zext i8 %363 to i32
  %tobool760 = icmp ne i32 %conv759, 0
  br i1 %tobool760, label %land.lhs.true761, label %if.end791

land.lhs.true761:                                 ; preds = %if.end754
  %364 = load i8, ptr %flag_leftjustify, align 1
  %tobool762 = icmp ne i8 %364, 0
  br i1 %tobool762, label %if.end791, label %land.lhs.true763

land.lhs.true763:                                 ; preds = %land.lhs.true761
  %365 = load i32, ptr %length, align 4
  %366 = load i32, ptr %width, align 4
  %cmp764 = icmp slt i32 %365, %366
  br i1 %cmp764, label %if.then766, label %if.end791

if.then766:                                       ; preds = %land.lhs.true763
  %367 = load i32, ptr %width, align 4
  %368 = load i32, ptr %length, align 4
  %sub767 = sub nsw i32 %367, %368
  store i32 %sub767, ptr %nPad, align 4
  %369 = load i32, ptr %width, align 4
  store i32 %369, ptr %i, align 4
  br label %for.cond768

for.cond768:                                      ; preds = %for.inc777, %if.then766
  %370 = load i32, ptr %i, align 4
  %371 = load i32, ptr %nPad, align 4
  %cmp769 = icmp sge i32 %370, %371
  br i1 %cmp769, label %for.body771, label %for.end779

for.body771:                                      ; preds = %for.cond768
  %372 = load ptr, ptr %bufpt, align 8
  %373 = load i32, ptr %i, align 4
  %374 = load i32, ptr %nPad, align 4
  %sub772 = sub nsw i32 %373, %374
  %idxprom773 = sext i32 %sub772 to i64
  %arrayidx774 = getelementptr inbounds i8, ptr %372, i64 %idxprom773
  %375 = load i8, ptr %arrayidx774, align 1
  %376 = load ptr, ptr %bufpt, align 8
  %377 = load i32, ptr %i, align 4
  %idxprom775 = sext i32 %377 to i64
  %arrayidx776 = getelementptr inbounds i8, ptr %376, i64 %idxprom775
  store i8 %375, ptr %arrayidx776, align 1
  br label %for.inc777

for.inc777:                                       ; preds = %for.body771
  %378 = load i32, ptr %i, align 4
  %dec778 = add nsw i32 %378, -1
  store i32 %dec778, ptr %i, align 4
  br label %for.cond768, !llvm.loop !26

for.end779:                                       ; preds = %for.cond768
  %379 = load i8, ptr %prefix, align 1
  %conv780 = sext i8 %379 to i32
  %cmp781 = icmp ne i32 %conv780, 0
  %conv782 = zext i1 %cmp781 to i32
  store i32 %conv782, ptr %i, align 4
  br label %while.cond783

while.cond783:                                    ; preds = %while.body786, %for.end779
  %380 = load i32, ptr %nPad, align 4
  %dec784 = add nsw i32 %380, -1
  store i32 %dec784, ptr %nPad, align 4
  %tobool785 = icmp ne i32 %380, 0
  br i1 %tobool785, label %while.body786, label %while.end790

while.body786:                                    ; preds = %while.cond783
  %381 = load ptr, ptr %bufpt, align 8
  %382 = load i32, ptr %i, align 4
  %inc787 = add nsw i32 %382, 1
  store i32 %inc787, ptr %i, align 4
  %idxprom788 = sext i32 %382 to i64
  %arrayidx789 = getelementptr inbounds i8, ptr %381, i64 %idxprom788
  store i8 48, ptr %arrayidx789, align 1
  br label %while.cond783, !llvm.loop !27

while.end790:                                     ; preds = %while.cond783
  %383 = load i32, ptr %width, align 4
  store i32 %383, ptr %length, align 4
  br label %if.end791

if.end791:                                        ; preds = %while.end790, %land.lhs.true763, %land.lhs.true761, %if.end754
  br label %sw.epilog1282

sw.bb792:                                         ; preds = %for.end
  %384 = load i8, ptr %bArgList, align 1
  %tobool793 = icmp ne i8 %384, 0
  br i1 %tobool793, label %if.end806, label %if.then794

if.then794:                                       ; preds = %sw.bb792
  %385 = load ptr, ptr %pAccum.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %385, i32 0, i32 4
  %386 = load i32, ptr %nChar, align 8
  %387 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p795 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %387, i32 0, i32 0
  %gp_offset796 = load i32, ptr %gp_offset_p795, align 8
  %fits_in_gp797 = icmp ule i32 %gp_offset796, 40
  br i1 %fits_in_gp797, label %vaarg.in_reg798, label %vaarg.in_mem800

vaarg.in_reg798:                                  ; preds = %if.then794
  %388 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %387, i32 0, i32 3
  %reg_save_area799 = load ptr, ptr %388, align 8
  %389 = getelementptr i8, ptr %reg_save_area799, i32 %gp_offset796
  %390 = add i32 %gp_offset796, 8
  store i32 %390, ptr %gp_offset_p795, align 8
  br label %vaarg.end804

vaarg.in_mem800:                                  ; preds = %if.then794
  %overflow_arg_area_p801 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %387, i32 0, i32 2
  %overflow_arg_area802 = load ptr, ptr %overflow_arg_area_p801, align 8
  %overflow_arg_area.next803 = getelementptr i8, ptr %overflow_arg_area802, i32 8
  store ptr %overflow_arg_area.next803, ptr %overflow_arg_area_p801, align 8
  br label %vaarg.end804

vaarg.end804:                                     ; preds = %vaarg.in_mem800, %vaarg.in_reg798
  %vaarg.addr805 = phi ptr [ %389, %vaarg.in_reg798 ], [ %overflow_arg_area802, %vaarg.in_mem800 ]
  %391 = load ptr, ptr %vaarg.addr805, align 8
  store i32 %386, ptr %391, align 4
  br label %if.end806

if.end806:                                        ; preds = %vaarg.end804, %sw.bb792
  store i32 0, ptr %width, align 4
  store i32 0, ptr %length, align 4
  br label %sw.epilog1282

sw.bb807:                                         ; preds = %for.end
  %arrayidx808 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 37, ptr %arrayidx808, align 16
  %arraydecay809 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay809, ptr %bufpt, align 8
  store i32 1, ptr %length, align 4
  br label %sw.epilog1282

sw.bb810:                                         ; preds = %for.end
  %392 = load i8, ptr %bArgList, align 1
  %tobool811 = icmp ne i8 %392, 0
  br i1 %tobool811, label %if.then812, label %if.else844

if.then812:                                       ; preds = %sw.bb810
  %393 = load ptr, ptr %pArgList, align 8
  %call813 = call ptr @getTextArg(ptr noundef %393)
  store ptr %call813, ptr %bufpt, align 8
  store i32 1, ptr %length, align 4
  %394 = load ptr, ptr %bufpt, align 8
  %tobool814 = icmp ne ptr %394, null
  br i1 %tobool814, label %if.then815, label %if.else841

if.then815:                                       ; preds = %if.then812
  %395 = load ptr, ptr %bufpt, align 8
  %incdec.ptr816 = getelementptr inbounds nuw i8, ptr %395, i32 1
  store ptr %incdec.ptr816, ptr %bufpt, align 8
  %396 = load i8, ptr %395, align 1
  %conv817 = sext i8 %396 to i32
  store i32 %conv817, ptr %c, align 4
  %conv818 = trunc i32 %conv817 to i8
  %arrayidx819 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv818, ptr %arrayidx819, align 16
  %397 = load i32, ptr %c, align 4
  %and820 = and i32 %397, 192
  %cmp821 = icmp eq i32 %and820, 192
  br i1 %cmp821, label %if.then823, label %if.end840

if.then823:                                       ; preds = %if.then815
  br label %while.cond824

while.cond824:                                    ; preds = %while.body834, %if.then823
  %398 = load i32, ptr %length, align 4
  %cmp825 = icmp slt i32 %398, 4
  br i1 %cmp825, label %land.rhs827, label %land.end833

land.rhs827:                                      ; preds = %while.cond824
  %399 = load ptr, ptr %bufpt, align 8
  %arrayidx828 = getelementptr inbounds i8, ptr %399, i64 0
  %400 = load i8, ptr %arrayidx828, align 1
  %conv829 = sext i8 %400 to i32
  %and830 = and i32 %conv829, 192
  %cmp831 = icmp eq i32 %and830, 128
  br label %land.end833

land.end833:                                      ; preds = %land.rhs827, %while.cond824
  %401 = phi i1 [ false, %while.cond824 ], [ %cmp831, %land.rhs827 ]
  br i1 %401, label %while.body834, label %while.end839

while.body834:                                    ; preds = %land.end833
  %402 = load ptr, ptr %bufpt, align 8
  %incdec.ptr835 = getelementptr inbounds nuw i8, ptr %402, i32 1
  store ptr %incdec.ptr835, ptr %bufpt, align 8
  %403 = load i8, ptr %402, align 1
  %404 = load i32, ptr %length, align 4
  %inc836 = add nsw i32 %404, 1
  store i32 %inc836, ptr %length, align 4
  %idxprom837 = sext i32 %404 to i64
  %arrayidx838 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 %idxprom837
  store i8 %403, ptr %arrayidx838, align 1
  br label %while.cond824, !llvm.loop !28

while.end839:                                     ; preds = %land.end833
  br label %if.end840

if.end840:                                        ; preds = %while.end839, %if.then815
  br label %if.end843

if.else841:                                       ; preds = %if.then812
  %arrayidx842 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 0, ptr %arrayidx842, align 16
  br label %if.end843

if.end843:                                        ; preds = %if.else841, %if.end840
  br label %if.end934

if.else844:                                       ; preds = %sw.bb810
  %405 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p845 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %405, i32 0, i32 0
  %gp_offset846 = load i32, ptr %gp_offset_p845, align 8
  %fits_in_gp847 = icmp ule i32 %gp_offset846, 40
  br i1 %fits_in_gp847, label %vaarg.in_reg848, label %vaarg.in_mem850

vaarg.in_reg848:                                  ; preds = %if.else844
  %406 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %405, i32 0, i32 3
  %reg_save_area849 = load ptr, ptr %406, align 8
  %407 = getelementptr i8, ptr %reg_save_area849, i32 %gp_offset846
  %408 = add i32 %gp_offset846, 8
  store i32 %408, ptr %gp_offset_p845, align 8
  br label %vaarg.end854

vaarg.in_mem850:                                  ; preds = %if.else844
  %overflow_arg_area_p851 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %405, i32 0, i32 2
  %overflow_arg_area852 = load ptr, ptr %overflow_arg_area_p851, align 8
  %overflow_arg_area.next853 = getelementptr i8, ptr %overflow_arg_area852, i32 8
  store ptr %overflow_arg_area.next853, ptr %overflow_arg_area_p851, align 8
  br label %vaarg.end854

vaarg.end854:                                     ; preds = %vaarg.in_mem850, %vaarg.in_reg848
  %vaarg.addr855 = phi ptr [ %407, %vaarg.in_reg848 ], [ %overflow_arg_area852, %vaarg.in_mem850 ]
  %409 = load i32, ptr %vaarg.addr855, align 4
  store i32 %409, ptr %ch, align 4
  %410 = load i32, ptr %ch, align 4
  %cmp856 = icmp ult i32 %410, 128
  br i1 %cmp856, label %if.then858, label %if.else862

if.then858:                                       ; preds = %vaarg.end854
  %411 = load i32, ptr %ch, align 4
  %and859 = and i32 %411, 255
  %conv860 = trunc i32 %and859 to i8
  %arrayidx861 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv860, ptr %arrayidx861, align 16
  store i32 1, ptr %length, align 4
  br label %if.end933

if.else862:                                       ; preds = %vaarg.end854
  %412 = load i32, ptr %ch, align 4
  %cmp863 = icmp ult i32 %412, 2048
  br i1 %cmp863, label %if.then865, label %if.else879

if.then865:                                       ; preds = %if.else862
  %413 = load i32, ptr %ch, align 4
  %shr866 = lshr i32 %413, 6
  %and867 = and i32 %shr866, 31
  %conv868 = trunc i32 %and867 to i8
  %conv869 = zext i8 %conv868 to i32
  %add870 = add nsw i32 192, %conv869
  %conv871 = trunc i32 %add870 to i8
  %arrayidx872 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv871, ptr %arrayidx872, align 16
  %414 = load i32, ptr %ch, align 4
  %and873 = and i32 %414, 63
  %conv874 = trunc i32 %and873 to i8
  %conv875 = zext i8 %conv874 to i32
  %add876 = add nsw i32 128, %conv875
  %conv877 = trunc i32 %add876 to i8
  %arrayidx878 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 1
  store i8 %conv877, ptr %arrayidx878, align 1
  store i32 2, ptr %length, align 4
  br label %if.end932

if.else879:                                       ; preds = %if.else862
  %415 = load i32, ptr %ch, align 4
  %cmp880 = icmp ult i32 %415, 65536
  br i1 %cmp880, label %if.then882, label %if.else903

if.then882:                                       ; preds = %if.else879
  %416 = load i32, ptr %ch, align 4
  %shr883 = lshr i32 %416, 12
  %and884 = and i32 %shr883, 15
  %conv885 = trunc i32 %and884 to i8
  %conv886 = zext i8 %conv885 to i32
  %add887 = add nsw i32 224, %conv886
  %conv888 = trunc i32 %add887 to i8
  %arrayidx889 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv888, ptr %arrayidx889, align 16
  %417 = load i32, ptr %ch, align 4
  %shr890 = lshr i32 %417, 6
  %and891 = and i32 %shr890, 63
  %conv892 = trunc i32 %and891 to i8
  %conv893 = zext i8 %conv892 to i32
  %add894 = add nsw i32 128, %conv893
  %conv895 = trunc i32 %add894 to i8
  %arrayidx896 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 1
  store i8 %conv895, ptr %arrayidx896, align 1
  %418 = load i32, ptr %ch, align 4
  %and897 = and i32 %418, 63
  %conv898 = trunc i32 %and897 to i8
  %conv899 = zext i8 %conv898 to i32
  %add900 = add nsw i32 128, %conv899
  %conv901 = trunc i32 %add900 to i8
  %arrayidx902 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 2
  store i8 %conv901, ptr %arrayidx902, align 2
  store i32 3, ptr %length, align 4
  br label %if.end931

if.else903:                                       ; preds = %if.else879
  %419 = load i32, ptr %ch, align 4
  %shr904 = lshr i32 %419, 18
  %and905 = and i32 %shr904, 7
  %conv906 = trunc i32 %and905 to i8
  %conv907 = zext i8 %conv906 to i32
  %add908 = add nsw i32 240, %conv907
  %conv909 = trunc i32 %add908 to i8
  %arrayidx910 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv909, ptr %arrayidx910, align 16
  %420 = load i32, ptr %ch, align 4
  %shr911 = lshr i32 %420, 12
  %and912 = and i32 %shr911, 63
  %conv913 = trunc i32 %and912 to i8
  %conv914 = zext i8 %conv913 to i32
  %add915 = add nsw i32 128, %conv914
  %conv916 = trunc i32 %add915 to i8
  %arrayidx917 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 1
  store i8 %conv916, ptr %arrayidx917, align 1
  %421 = load i32, ptr %ch, align 4
  %shr918 = lshr i32 %421, 6
  %and919 = and i32 %shr918, 63
  %conv920 = trunc i32 %and919 to i8
  %conv921 = zext i8 %conv920 to i32
  %add922 = add nsw i32 128, %conv921
  %conv923 = trunc i32 %add922 to i8
  %arrayidx924 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 2
  store i8 %conv923, ptr %arrayidx924, align 2
  %422 = load i32, ptr %ch, align 4
  %and925 = and i32 %422, 63
  %conv926 = trunc i32 %and925 to i8
  %conv927 = zext i8 %conv926 to i32
  %add928 = add nsw i32 128, %conv927
  %conv929 = trunc i32 %add928 to i8
  %arrayidx930 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 3
  store i8 %conv929, ptr %arrayidx930, align 1
  store i32 4, ptr %length, align 4
  br label %if.end931

if.end931:                                        ; preds = %if.else903, %if.then882
  br label %if.end932

if.end932:                                        ; preds = %if.end931, %if.then865
  br label %if.end933

if.end933:                                        ; preds = %if.end932, %if.then858
  br label %if.end934

if.end934:                                        ; preds = %if.end933, %if.end843
  %423 = load i32, ptr %precision, align 4
  %cmp935 = icmp sgt i32 %423, 1
  br i1 %cmp935, label %if.then937, label %if.end954

if.then937:                                       ; preds = %if.end934
  %424 = load i32, ptr %precision, align 4
  %sub938 = sub nsw i32 %424, 1
  %425 = load i32, ptr %width, align 4
  %sub939 = sub nsw i32 %425, %sub938
  store i32 %sub939, ptr %width, align 4
  %426 = load i32, ptr %width, align 4
  %cmp940 = icmp sgt i32 %426, 1
  br i1 %cmp940, label %land.lhs.true942, label %if.end946

land.lhs.true942:                                 ; preds = %if.then937
  %427 = load i8, ptr %flag_leftjustify, align 1
  %tobool943 = icmp ne i8 %427, 0
  br i1 %tobool943, label %if.end946, label %if.then944

if.then944:                                       ; preds = %land.lhs.true942
  %428 = load ptr, ptr %pAccum.addr, align 8
  %429 = load i32, ptr %width, align 4
  %sub945 = sub nsw i32 %429, 1
  call void @sqlite3_str_appendchar(ptr noundef %428, i32 noundef %sub945, i8 noundef signext 32)
  store i32 0, ptr %width, align 4
  br label %if.end946

if.end946:                                        ; preds = %if.then944, %land.lhs.true942, %if.then937
  br label %while.cond947

while.cond947:                                    ; preds = %while.body951, %if.end946
  %430 = load i32, ptr %precision, align 4
  %dec948 = add nsw i32 %430, -1
  store i32 %dec948, ptr %precision, align 4
  %cmp949 = icmp sgt i32 %430, 1
  br i1 %cmp949, label %while.body951, label %while.end953

while.body951:                                    ; preds = %while.cond947
  %431 = load ptr, ptr %pAccum.addr, align 8
  %arraydecay952 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  %432 = load i32, ptr %length, align 4
  call void @sqlite3_str_append(ptr noundef %431, ptr noundef %arraydecay952, i32 noundef %432)
  br label %while.cond947, !llvm.loop !29

while.end953:                                     ; preds = %while.cond947
  br label %if.end954

if.end954:                                        ; preds = %while.end953, %if.end934
  %arraydecay955 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay955, ptr %bufpt, align 8
  store i8 1, ptr %flag_altform2, align 1
  br label %adjust_width_for_utf8

sw.bb956:                                         ; preds = %for.end, %for.end
  %433 = load i8, ptr %bArgList, align 1
  %tobool957 = icmp ne i8 %433, 0
  br i1 %tobool957, label %if.then958, label %if.else960

if.then958:                                       ; preds = %sw.bb956
  %434 = load ptr, ptr %pArgList, align 8
  %call959 = call ptr @getTextArg(ptr noundef %434)
  store ptr %call959, ptr %bufpt, align 8
  store i8 5, ptr %xtype, align 1
  br label %if.end972

if.else960:                                       ; preds = %sw.bb956
  %435 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p961 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %435, i32 0, i32 0
  %gp_offset962 = load i32, ptr %gp_offset_p961, align 8
  %fits_in_gp963 = icmp ule i32 %gp_offset962, 40
  br i1 %fits_in_gp963, label %vaarg.in_reg964, label %vaarg.in_mem966

vaarg.in_reg964:                                  ; preds = %if.else960
  %436 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %435, i32 0, i32 3
  %reg_save_area965 = load ptr, ptr %436, align 8
  %437 = getelementptr i8, ptr %reg_save_area965, i32 %gp_offset962
  %438 = add i32 %gp_offset962, 8
  store i32 %438, ptr %gp_offset_p961, align 8
  br label %vaarg.end970

vaarg.in_mem966:                                  ; preds = %if.else960
  %overflow_arg_area_p967 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %435, i32 0, i32 2
  %overflow_arg_area968 = load ptr, ptr %overflow_arg_area_p967, align 8
  %overflow_arg_area.next969 = getelementptr i8, ptr %overflow_arg_area968, i32 8
  store ptr %overflow_arg_area.next969, ptr %overflow_arg_area_p967, align 8
  br label %vaarg.end970

vaarg.end970:                                     ; preds = %vaarg.in_mem966, %vaarg.in_reg964
  %vaarg.addr971 = phi ptr [ %437, %vaarg.in_reg964 ], [ %overflow_arg_area968, %vaarg.in_mem966 ]
  %439 = load ptr, ptr %vaarg.addr971, align 8
  store ptr %439, ptr %bufpt, align 8
  br label %if.end972

if.end972:                                        ; preds = %vaarg.end970, %if.then958
  %440 = load ptr, ptr %bufpt, align 8
  %cmp973 = icmp eq ptr %440, null
  br i1 %cmp973, label %if.then975, label %if.else976

if.then975:                                       ; preds = %if.end972
  store ptr @.str.3, ptr %bufpt, align 8
  br label %if.end1008

if.else976:                                       ; preds = %if.end972
  %441 = load i8, ptr %xtype, align 1
  %conv977 = zext i8 %441 to i32
  %cmp978 = icmp eq i32 %conv977, 6
  br i1 %cmp978, label %if.then980, label %if.end1007

if.then980:                                       ; preds = %if.else976
  %442 = load ptr, ptr %pAccum.addr, align 8
  %nChar981 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %442, i32 0, i32 4
  %443 = load i32, ptr %nChar981, align 8
  %cmp982 = icmp eq i32 %443, 0
  br i1 %cmp982, label %land.lhs.true984, label %if.end1006

land.lhs.true984:                                 ; preds = %if.then980
  %444 = load ptr, ptr %pAccum.addr, align 8
  %mxAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %444, i32 0, i32 3
  %445 = load i32, ptr %mxAlloc, align 4
  %tobool985 = icmp ne i32 %445, 0
  br i1 %tobool985, label %land.lhs.true986, label %if.end1006

land.lhs.true986:                                 ; preds = %land.lhs.true984
  %446 = load i32, ptr %width, align 4
  %cmp987 = icmp eq i32 %446, 0
  br i1 %cmp987, label %land.lhs.true989, label %if.end1006

land.lhs.true989:                                 ; preds = %land.lhs.true986
  %447 = load i32, ptr %precision, align 4
  %cmp990 = icmp slt i32 %447, 0
  br i1 %cmp990, label %land.lhs.true992, label %if.end1006

land.lhs.true992:                                 ; preds = %land.lhs.true989
  %448 = load ptr, ptr %pAccum.addr, align 8
  %accError = getelementptr inbounds nuw %struct.sqlite3_str, ptr %448, i32 0, i32 5
  %449 = load i8, ptr %accError, align 4
  %conv993 = zext i8 %449 to i32
  %cmp994 = icmp eq i32 %conv993, 0
  br i1 %cmp994, label %if.then996, label %if.end1006

if.then996:                                       ; preds = %land.lhs.true992
  %450 = load ptr, ptr %bufpt, align 8
  %451 = load ptr, ptr %pAccum.addr, align 8
  %zText = getelementptr inbounds nuw %struct.sqlite3_str, ptr %451, i32 0, i32 1
  store ptr %450, ptr %zText, align 8
  %452 = load ptr, ptr %pAccum.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_str, ptr %452, i32 0, i32 0
  %453 = load ptr, ptr %db, align 8
  %454 = load ptr, ptr %bufpt, align 8
  %call997 = call i32 @sqlite3DbMallocSize(ptr noundef %453, ptr noundef %454)
  %455 = load ptr, ptr %pAccum.addr, align 8
  %nAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %455, i32 0, i32 2
  store i32 %call997, ptr %nAlloc, align 8
  %456 = load ptr, ptr %bufpt, align 8
  %call998 = call i64 @strlen(ptr noundef %456) #4
  %conv999 = trunc i64 %call998 to i32
  %and1000 = and i32 2147483647, %conv999
  %457 = load ptr, ptr %pAccum.addr, align 8
  %nChar1001 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %457, i32 0, i32 4
  store i32 %and1000, ptr %nChar1001, align 8
  %458 = load ptr, ptr %pAccum.addr, align 8
  %printfFlags1002 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %458, i32 0, i32 6
  %459 = load i8, ptr %printfFlags1002, align 1
  %conv1003 = zext i8 %459 to i32
  %or1004 = or i32 %conv1003, 4
  %conv1005 = trunc i32 %or1004 to i8
  store i8 %conv1005, ptr %printfFlags1002, align 1
  store i32 0, ptr %length, align 4
  br label %sw.epilog1282

if.end1006:                                       ; preds = %land.lhs.true992, %land.lhs.true989, %land.lhs.true986, %land.lhs.true984, %if.then980
  %460 = load ptr, ptr %bufpt, align 8
  store ptr %460, ptr %zExtra, align 8
  br label %if.end1007

if.end1007:                                       ; preds = %if.end1006, %if.else976
  br label %if.end1008

if.end1008:                                       ; preds = %if.end1007, %if.then975
  %461 = load i32, ptr %precision, align 4
  %cmp1009 = icmp sge i32 %461, 0
  br i1 %cmp1009, label %if.then1011, label %if.else1058

if.then1011:                                      ; preds = %if.end1008
  %462 = load i8, ptr %flag_altform2, align 1
  %tobool1012 = icmp ne i8 %462, 0
  br i1 %tobool1012, label %if.then1013, label %if.else1043

if.then1013:                                      ; preds = %if.then1011
  %463 = load ptr, ptr %bufpt, align 8
  store ptr %463, ptr %z, align 8
  br label %while.cond1014

while.cond1014:                                   ; preds = %if.end1037, %if.then1013
  %464 = load i32, ptr %precision, align 4
  %dec1015 = add nsw i32 %464, -1
  store i32 %dec1015, ptr %precision, align 4
  %cmp1016 = icmp sgt i32 %464, 0
  br i1 %cmp1016, label %land.rhs1018, label %land.end1022

land.rhs1018:                                     ; preds = %while.cond1014
  %465 = load ptr, ptr %z, align 8
  %arrayidx1019 = getelementptr inbounds i8, ptr %465, i64 0
  %466 = load i8, ptr %arrayidx1019, align 1
  %conv1020 = zext i8 %466 to i32
  %tobool1021 = icmp ne i32 %conv1020, 0
  br label %land.end1022

land.end1022:                                     ; preds = %land.rhs1018, %while.cond1014
  %467 = phi i1 [ false, %while.cond1014 ], [ %tobool1021, %land.rhs1018 ]
  br i1 %467, label %while.body1023, label %while.end1038

while.body1023:                                   ; preds = %land.end1022
  %468 = load ptr, ptr %z, align 8
  %incdec.ptr1024 = getelementptr inbounds nuw i8, ptr %468, i32 1
  store ptr %incdec.ptr1024, ptr %z, align 8
  %469 = load i8, ptr %468, align 1
  %conv1025 = zext i8 %469 to i32
  %cmp1026 = icmp sge i32 %conv1025, 192
  br i1 %cmp1026, label %if.then1028, label %if.end1037

if.then1028:                                      ; preds = %while.body1023
  br label %while.cond1029

while.cond1029:                                   ; preds = %while.body1034, %if.then1028
  %470 = load ptr, ptr %z, align 8
  %471 = load i8, ptr %470, align 1
  %conv1030 = zext i8 %471 to i32
  %and1031 = and i32 %conv1030, 192
  %cmp1032 = icmp eq i32 %and1031, 128
  br i1 %cmp1032, label %while.body1034, label %while.end1036

while.body1034:                                   ; preds = %while.cond1029
  %472 = load ptr, ptr %z, align 8
  %incdec.ptr1035 = getelementptr inbounds nuw i8, ptr %472, i32 1
  store ptr %incdec.ptr1035, ptr %z, align 8
  br label %while.cond1029, !llvm.loop !30

while.end1036:                                    ; preds = %while.cond1029
  br label %if.end1037

if.end1037:                                       ; preds = %while.end1036, %while.body1023
  br label %while.cond1014, !llvm.loop !31

while.end1038:                                    ; preds = %land.end1022
  %473 = load ptr, ptr %z, align 8
  %474 = load ptr, ptr %bufpt, align 8
  %sub.ptr.lhs.cast1039 = ptrtoint ptr %473 to i64
  %sub.ptr.rhs.cast1040 = ptrtoint ptr %474 to i64
  %sub.ptr.sub1041 = sub i64 %sub.ptr.lhs.cast1039, %sub.ptr.rhs.cast1040
  %conv1042 = trunc i64 %sub.ptr.sub1041 to i32
  store i32 %conv1042, ptr %length, align 4
  br label %if.end1057

if.else1043:                                      ; preds = %if.then1011
  store i32 0, ptr %length, align 4
  br label %for.cond1044

for.cond1044:                                     ; preds = %for.inc1054, %if.else1043
  %475 = load i32, ptr %length, align 4
  %476 = load i32, ptr %precision, align 4
  %cmp1045 = icmp slt i32 %475, %476
  br i1 %cmp1045, label %land.rhs1047, label %land.end1052

land.rhs1047:                                     ; preds = %for.cond1044
  %477 = load ptr, ptr %bufpt, align 8
  %478 = load i32, ptr %length, align 4
  %idxprom1048 = sext i32 %478 to i64
  %arrayidx1049 = getelementptr inbounds i8, ptr %477, i64 %idxprom1048
  %479 = load i8, ptr %arrayidx1049, align 1
  %conv1050 = sext i8 %479 to i32
  %tobool1051 = icmp ne i32 %conv1050, 0
  br label %land.end1052

land.end1052:                                     ; preds = %land.rhs1047, %for.cond1044
  %480 = phi i1 [ false, %for.cond1044 ], [ %tobool1051, %land.rhs1047 ]
  br i1 %480, label %for.body1053, label %for.end1056

for.body1053:                                     ; preds = %land.end1052
  br label %for.inc1054

for.inc1054:                                      ; preds = %for.body1053
  %481 = load i32, ptr %length, align 4
  %inc1055 = add nsw i32 %481, 1
  store i32 %inc1055, ptr %length, align 4
  br label %for.cond1044, !llvm.loop !32

for.end1056:                                      ; preds = %land.end1052
  br label %if.end1057

if.end1057:                                       ; preds = %for.end1056, %while.end1038
  br label %if.end1062

if.else1058:                                      ; preds = %if.end1008
  %482 = load ptr, ptr %bufpt, align 8
  %call1059 = call i64 @strlen(ptr noundef %482) #4
  %conv1060 = trunc i64 %call1059 to i32
  %and1061 = and i32 2147483647, %conv1060
  store i32 %and1061, ptr %length, align 4
  br label %if.end1062

if.end1062:                                       ; preds = %if.else1058, %if.end1057
  br label %adjust_width_for_utf8

adjust_width_for_utf8:                            ; preds = %if.end1214, %if.end1062, %if.end954
  %483 = load i8, ptr %flag_altform2, align 1
  %conv1063 = zext i8 %483 to i32
  %tobool1064 = icmp ne i32 %conv1063, 0
  br i1 %tobool1064, label %land.lhs.true1065, label %if.end1085

land.lhs.true1065:                                ; preds = %adjust_width_for_utf8
  %484 = load i32, ptr %width, align 4
  %cmp1066 = icmp sgt i32 %484, 0
  br i1 %cmp1066, label %if.then1068, label %if.end1085

if.then1068:                                      ; preds = %land.lhs.true1065
  %485 = load i32, ptr %length, align 4
  %sub1069 = sub nsw i32 %485, 1
  store i32 %sub1069, ptr %ii, align 4
  br label %while.cond1070

while.cond1070:                                   ; preds = %if.end1083, %if.then1068
  %486 = load i32, ptr %ii, align 4
  %cmp1071 = icmp sge i32 %486, 0
  br i1 %cmp1071, label %while.body1073, label %while.end1084

while.body1073:                                   ; preds = %while.cond1070
  %487 = load ptr, ptr %bufpt, align 8
  %488 = load i32, ptr %ii, align 4
  %dec1074 = add nsw i32 %488, -1
  store i32 %dec1074, ptr %ii, align 4
  %idxprom1075 = sext i32 %488 to i64
  %arrayidx1076 = getelementptr inbounds i8, ptr %487, i64 %idxprom1075
  %489 = load i8, ptr %arrayidx1076, align 1
  %conv1077 = sext i8 %489 to i32
  %and1078 = and i32 %conv1077, 192
  %cmp1079 = icmp eq i32 %and1078, 128
  br i1 %cmp1079, label %if.then1081, label %if.end1083

if.then1081:                                      ; preds = %while.body1073
  %490 = load i32, ptr %width, align 4
  %inc1082 = add nsw i32 %490, 1
  store i32 %inc1082, ptr %width, align 4
  br label %if.end1083

if.end1083:                                       ; preds = %if.then1081, %while.body1073
  br label %while.cond1070, !llvm.loop !33

while.end1084:                                    ; preds = %while.cond1070
  br label %if.end1085

if.end1085:                                       ; preds = %while.end1084, %land.lhs.true1065, %adjust_width_for_utf8
  br label %sw.epilog1282

sw.bb1086:                                        ; preds = %for.end, %for.end, %for.end
  %491 = load i8, ptr %xtype, align 1
  %conv1090 = zext i8 %491 to i32
  %cmp1091 = icmp eq i32 %conv1090, 14
  %492 = zext i1 %cmp1091 to i64
  %cond1093 = select i1 %cmp1091, i32 34, i32 39
  %conv1094 = trunc i32 %cond1093 to i8
  store i8 %conv1094, ptr %q, align 1
  %493 = load i8, ptr %bArgList, align 1
  %tobool1095 = icmp ne i8 %493, 0
  br i1 %tobool1095, label %if.then1096, label %if.else1098

if.then1096:                                      ; preds = %sw.bb1086
  %494 = load ptr, ptr %pArgList, align 8
  %call1097 = call ptr @getTextArg(ptr noundef %494)
  store ptr %call1097, ptr %escarg, align 8
  br label %if.end1110

if.else1098:                                      ; preds = %sw.bb1086
  %495 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p1099 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %495, i32 0, i32 0
  %gp_offset1100 = load i32, ptr %gp_offset_p1099, align 8
  %fits_in_gp1101 = icmp ule i32 %gp_offset1100, 40
  br i1 %fits_in_gp1101, label %vaarg.in_reg1102, label %vaarg.in_mem1104

vaarg.in_reg1102:                                 ; preds = %if.else1098
  %496 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %495, i32 0, i32 3
  %reg_save_area1103 = load ptr, ptr %496, align 8
  %497 = getelementptr i8, ptr %reg_save_area1103, i32 %gp_offset1100
  %498 = add i32 %gp_offset1100, 8
  store i32 %498, ptr %gp_offset_p1099, align 8
  br label %vaarg.end1108

vaarg.in_mem1104:                                 ; preds = %if.else1098
  %overflow_arg_area_p1105 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %495, i32 0, i32 2
  %overflow_arg_area1106 = load ptr, ptr %overflow_arg_area_p1105, align 8
  %overflow_arg_area.next1107 = getelementptr i8, ptr %overflow_arg_area1106, i32 8
  store ptr %overflow_arg_area.next1107, ptr %overflow_arg_area_p1105, align 8
  br label %vaarg.end1108

vaarg.end1108:                                    ; preds = %vaarg.in_mem1104, %vaarg.in_reg1102
  %vaarg.addr1109 = phi ptr [ %497, %vaarg.in_reg1102 ], [ %overflow_arg_area1106, %vaarg.in_mem1104 ]
  %499 = load ptr, ptr %vaarg.addr1109, align 8
  store ptr %499, ptr %escarg, align 8
  br label %if.end1110

if.end1110:                                       ; preds = %vaarg.end1108, %if.then1096
  %500 = load ptr, ptr %escarg, align 8
  %cmp1111 = icmp eq ptr %500, null
  %conv1112 = zext i1 %cmp1111 to i32
  store i32 %conv1112, ptr %isnull, align 4
  %501 = load i32, ptr %isnull, align 4
  %tobool1113 = icmp ne i32 %501, 0
  br i1 %tobool1113, label %if.then1114, label %if.end1119

if.then1114:                                      ; preds = %if.end1110
  %502 = load i8, ptr %xtype, align 1
  %conv1115 = zext i8 %502 to i32
  %cmp1116 = icmp eq i32 %conv1115, 10
  %503 = zext i1 %cmp1116 to i64
  %cond1118 = select i1 %cmp1116, ptr @.str.4, ptr @.str.5
  store ptr %cond1118, ptr %escarg, align 8
  br label %if.end1119

if.end1119:                                       ; preds = %if.then1114, %if.end1110
  %504 = load i32, ptr %precision, align 4
  store i32 %504, ptr %k, align 4
  store i32 0, ptr %n1088, align 4
  store i32 0, ptr %i1087, align 4
  br label %for.cond1120

for.cond1120:                                     ; preds = %for.inc1158, %if.end1119
  %505 = load i32, ptr %k, align 4
  %cmp1121 = icmp ne i32 %505, 0
  br i1 %cmp1121, label %land.rhs1123, label %land.end1129

land.rhs1123:                                     ; preds = %for.cond1120
  %506 = load ptr, ptr %escarg, align 8
  %507 = load i32, ptr %i1087, align 4
  %idxprom1124 = sext i32 %507 to i64
  %arrayidx1125 = getelementptr inbounds i8, ptr %506, i64 %idxprom1124
  %508 = load i8, ptr %arrayidx1125, align 1
  store i8 %508, ptr %ch1089, align 1
  %conv1126 = sext i8 %508 to i32
  %cmp1127 = icmp ne i32 %conv1126, 0
  br label %land.end1129

land.end1129:                                     ; preds = %land.rhs1123, %for.cond1120
  %509 = phi i1 [ false, %for.cond1120 ], [ %cmp1127, %land.rhs1123 ]
  br i1 %509, label %for.body1130, label %for.end1161

for.body1130:                                     ; preds = %land.end1129
  %510 = load i8, ptr %ch1089, align 1
  %conv1131 = sext i8 %510 to i32
  %511 = load i8, ptr %q, align 1
  %conv1132 = sext i8 %511 to i32
  %cmp1133 = icmp eq i32 %conv1131, %conv1132
  br i1 %cmp1133, label %if.then1135, label %if.end1137

if.then1135:                                      ; preds = %for.body1130
  %512 = load i32, ptr %n1088, align 4
  %inc1136 = add nsw i32 %512, 1
  store i32 %inc1136, ptr %n1088, align 4
  br label %if.end1137

if.end1137:                                       ; preds = %if.then1135, %for.body1130
  %513 = load i8, ptr %flag_altform2, align 1
  %conv1138 = zext i8 %513 to i32
  %tobool1139 = icmp ne i32 %conv1138, 0
  br i1 %tobool1139, label %land.lhs.true1140, label %if.end1157

land.lhs.true1140:                                ; preds = %if.end1137
  %514 = load i8, ptr %ch1089, align 1
  %conv1141 = sext i8 %514 to i32
  %and1142 = and i32 %conv1141, 192
  %cmp1143 = icmp eq i32 %and1142, 192
  br i1 %cmp1143, label %if.then1145, label %if.end1157

if.then1145:                                      ; preds = %land.lhs.true1140
  br label %while.cond1146

while.cond1146:                                   ; preds = %while.body1154, %if.then1145
  %515 = load ptr, ptr %escarg, align 8
  %516 = load i32, ptr %i1087, align 4
  %add1147 = add nsw i32 %516, 1
  %idxprom1148 = sext i32 %add1147 to i64
  %arrayidx1149 = getelementptr inbounds i8, ptr %515, i64 %idxprom1148
  %517 = load i8, ptr %arrayidx1149, align 1
  %conv1150 = sext i8 %517 to i32
  %and1151 = and i32 %conv1150, 192
  %cmp1152 = icmp eq i32 %and1151, 128
  br i1 %cmp1152, label %while.body1154, label %while.end1156

while.body1154:                                   ; preds = %while.cond1146
  %518 = load i32, ptr %i1087, align 4
  %inc1155 = add nsw i32 %518, 1
  store i32 %inc1155, ptr %i1087, align 4
  br label %while.cond1146, !llvm.loop !34

while.end1156:                                    ; preds = %while.cond1146
  br label %if.end1157

if.end1157:                                       ; preds = %while.end1156, %land.lhs.true1140, %if.end1137
  br label %for.inc1158

for.inc1158:                                      ; preds = %if.end1157
  %519 = load i32, ptr %i1087, align 4
  %inc1159 = add nsw i32 %519, 1
  store i32 %inc1159, ptr %i1087, align 4
  %520 = load i32, ptr %k, align 4
  %dec1160 = add nsw i32 %520, -1
  store i32 %dec1160, ptr %k, align 4
  br label %for.cond1120, !llvm.loop !35

for.end1161:                                      ; preds = %land.end1129
  %521 = load i32, ptr %isnull, align 4
  %tobool1162 = icmp ne i32 %521, 0
  br i1 %tobool1162, label %land.end1167, label %land.rhs1163

land.rhs1163:                                     ; preds = %for.end1161
  %522 = load i8, ptr %xtype, align 1
  %conv1164 = zext i8 %522 to i32
  %cmp1165 = icmp eq i32 %conv1164, 10
  br label %land.end1167

land.end1167:                                     ; preds = %land.rhs1163, %for.end1161
  %523 = phi i1 [ false, %for.end1161 ], [ %cmp1165, %land.rhs1163 ]
  %land.ext = zext i1 %523 to i32
  store i32 %land.ext, ptr %needQuote, align 4
  %524 = load i32, ptr %i1087, align 4
  %add1168 = add nsw i32 %524, 3
  %525 = load i32, ptr %n1088, align 4
  %add1169 = add nsw i32 %525, %add1168
  store i32 %add1169, ptr %n1088, align 4
  %526 = load i32, ptr %n1088, align 4
  %cmp1170 = icmp sgt i32 %526, 70
  br i1 %cmp1170, label %if.then1172, label %if.else1179

if.then1172:                                      ; preds = %land.end1167
  %527 = load ptr, ptr %pAccum.addr, align 8
  %528 = load i32, ptr %n1088, align 4
  %conv1173 = sext i32 %528 to i64
  %call1174 = call ptr @printfTempBuf(ptr noundef %527, i64 noundef %conv1173)
  store ptr %call1174, ptr %zExtra, align 8
  store ptr %call1174, ptr %bufpt, align 8
  %529 = load ptr, ptr %bufpt, align 8
  %cmp1175 = icmp eq ptr %529, null
  br i1 %cmp1175, label %if.then1177, label %if.end1178

if.then1177:                                      ; preds = %if.then1172
  br label %for.end1301

if.end1178:                                       ; preds = %if.then1172
  br label %if.end1181

if.else1179:                                      ; preds = %land.end1167
  %arraydecay1180 = getelementptr inbounds [70 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay1180, ptr %bufpt, align 8
  br label %if.end1181

if.end1181:                                       ; preds = %if.else1179, %if.end1178
  store i32 0, ptr %j, align 4
  %530 = load i32, ptr %needQuote, align 4
  %tobool1182 = icmp ne i32 %530, 0
  br i1 %tobool1182, label %if.then1183, label %if.end1187

if.then1183:                                      ; preds = %if.end1181
  %531 = load i8, ptr %q, align 1
  %532 = load ptr, ptr %bufpt, align 8
  %533 = load i32, ptr %j, align 4
  %inc1184 = add nsw i32 %533, 1
  store i32 %inc1184, ptr %j, align 4
  %idxprom1185 = sext i32 %533 to i64
  %arrayidx1186 = getelementptr inbounds i8, ptr %532, i64 %idxprom1185
  store i8 %531, ptr %arrayidx1186, align 1
  br label %if.end1187

if.end1187:                                       ; preds = %if.then1183, %if.end1181
  %534 = load i32, ptr %i1087, align 4
  store i32 %534, ptr %k, align 4
  store i32 0, ptr %i1087, align 4
  br label %for.cond1188

for.cond1188:                                     ; preds = %for.inc1206, %if.end1187
  %535 = load i32, ptr %i1087, align 4
  %536 = load i32, ptr %k, align 4
  %cmp1189 = icmp slt i32 %535, %536
  br i1 %cmp1189, label %for.body1191, label %for.end1208

for.body1191:                                     ; preds = %for.cond1188
  %537 = load ptr, ptr %escarg, align 8
  %538 = load i32, ptr %i1087, align 4
  %idxprom1192 = sext i32 %538 to i64
  %arrayidx1193 = getelementptr inbounds i8, ptr %537, i64 %idxprom1192
  %539 = load i8, ptr %arrayidx1193, align 1
  store i8 %539, ptr %ch1089, align 1
  %540 = load ptr, ptr %bufpt, align 8
  %541 = load i32, ptr %j, align 4
  %inc1194 = add nsw i32 %541, 1
  store i32 %inc1194, ptr %j, align 4
  %idxprom1195 = sext i32 %541 to i64
  %arrayidx1196 = getelementptr inbounds i8, ptr %540, i64 %idxprom1195
  store i8 %539, ptr %arrayidx1196, align 1
  %542 = load i8, ptr %ch1089, align 1
  %conv1197 = sext i8 %542 to i32
  %543 = load i8, ptr %q, align 1
  %conv1198 = sext i8 %543 to i32
  %cmp1199 = icmp eq i32 %conv1197, %conv1198
  br i1 %cmp1199, label %if.then1201, label %if.end1205

if.then1201:                                      ; preds = %for.body1191
  %544 = load i8, ptr %ch1089, align 1
  %545 = load ptr, ptr %bufpt, align 8
  %546 = load i32, ptr %j, align 4
  %inc1202 = add nsw i32 %546, 1
  store i32 %inc1202, ptr %j, align 4
  %idxprom1203 = sext i32 %546 to i64
  %arrayidx1204 = getelementptr inbounds i8, ptr %545, i64 %idxprom1203
  store i8 %544, ptr %arrayidx1204, align 1
  br label %if.end1205

if.end1205:                                       ; preds = %if.then1201, %for.body1191
  br label %for.inc1206

for.inc1206:                                      ; preds = %if.end1205
  %547 = load i32, ptr %i1087, align 4
  %inc1207 = add nsw i32 %547, 1
  store i32 %inc1207, ptr %i1087, align 4
  br label %for.cond1188, !llvm.loop !36

for.end1208:                                      ; preds = %for.cond1188
  %548 = load i32, ptr %needQuote, align 4
  %tobool1209 = icmp ne i32 %548, 0
  br i1 %tobool1209, label %if.then1210, label %if.end1214

if.then1210:                                      ; preds = %for.end1208
  %549 = load i8, ptr %q, align 1
  %550 = load ptr, ptr %bufpt, align 8
  %551 = load i32, ptr %j, align 4
  %inc1211 = add nsw i32 %551, 1
  store i32 %inc1211, ptr %j, align 4
  %idxprom1212 = sext i32 %551 to i64
  %arrayidx1213 = getelementptr inbounds i8, ptr %550, i64 %idxprom1212
  store i8 %549, ptr %arrayidx1213, align 1
  br label %if.end1214

if.end1214:                                       ; preds = %if.then1210, %for.end1208
  %552 = load ptr, ptr %bufpt, align 8
  %553 = load i32, ptr %j, align 4
  %idxprom1215 = sext i32 %553 to i64
  %arrayidx1216 = getelementptr inbounds i8, ptr %552, i64 %idxprom1215
  store i8 0, ptr %arrayidx1216, align 1
  %554 = load i32, ptr %j, align 4
  store i32 %554, ptr %length, align 4
  br label %adjust_width_for_utf8

sw.bb1217:                                        ; preds = %for.end
  %555 = load ptr, ptr %pAccum.addr, align 8
  %printfFlags1218 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %555, i32 0, i32 6
  %556 = load i8, ptr %printfFlags1218, align 1
  %conv1219 = zext i8 %556 to i32
  %and1220 = and i32 %conv1219, 1
  %cmp1221 = icmp eq i32 %and1220, 0
  br i1 %cmp1221, label %if.then1223, label %if.end1224

if.then1223:                                      ; preds = %sw.bb1217
  br label %for.end1301

if.end1224:                                       ; preds = %sw.bb1217
  %557 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p1225 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %557, i32 0, i32 0
  %gp_offset1226 = load i32, ptr %gp_offset_p1225, align 8
  %fits_in_gp1227 = icmp ule i32 %gp_offset1226, 40
  br i1 %fits_in_gp1227, label %vaarg.in_reg1228, label %vaarg.in_mem1230

vaarg.in_reg1228:                                 ; preds = %if.end1224
  %558 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %557, i32 0, i32 3
  %reg_save_area1229 = load ptr, ptr %558, align 8
  %559 = getelementptr i8, ptr %reg_save_area1229, i32 %gp_offset1226
  %560 = add i32 %gp_offset1226, 8
  store i32 %560, ptr %gp_offset_p1225, align 8
  br label %vaarg.end1234

vaarg.in_mem1230:                                 ; preds = %if.end1224
  %overflow_arg_area_p1231 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %557, i32 0, i32 2
  %overflow_arg_area1232 = load ptr, ptr %overflow_arg_area_p1231, align 8
  %overflow_arg_area.next1233 = getelementptr i8, ptr %overflow_arg_area1232, i32 8
  store ptr %overflow_arg_area.next1233, ptr %overflow_arg_area_p1231, align 8
  br label %vaarg.end1234

vaarg.end1234:                                    ; preds = %vaarg.in_mem1230, %vaarg.in_reg1228
  %vaarg.addr1235 = phi ptr [ %559, %vaarg.in_reg1228 ], [ %overflow_arg_area1232, %vaarg.in_mem1230 ]
  %561 = load ptr, ptr %vaarg.addr1235, align 8
  store ptr %561, ptr %pToken, align 8
  %562 = load ptr, ptr %pToken, align 8
  %tobool1236 = icmp ne ptr %562, null
  br i1 %tobool1236, label %land.lhs.true1237, label %if.end1243

land.lhs.true1237:                                ; preds = %vaarg.end1234
  %563 = load ptr, ptr %pToken, align 8
  %n1238 = getelementptr inbounds nuw %struct.Token, ptr %563, i32 0, i32 1
  %564 = load i32, ptr %n1238, align 8
  %tobool1239 = icmp ne i32 %564, 0
  br i1 %tobool1239, label %if.then1240, label %if.end1243

if.then1240:                                      ; preds = %land.lhs.true1237
  %565 = load ptr, ptr %pAccum.addr, align 8
  %566 = load ptr, ptr %pToken, align 8
  %z1241 = getelementptr inbounds nuw %struct.Token, ptr %566, i32 0, i32 0
  %567 = load ptr, ptr %z1241, align 8
  %568 = load ptr, ptr %pToken, align 8
  %n1242 = getelementptr inbounds nuw %struct.Token, ptr %568, i32 0, i32 1
  %569 = load i32, ptr %n1242, align 8
  call void @sqlite3_str_append(ptr noundef %565, ptr noundef %567, i32 noundef %569)
  br label %if.end1243

if.end1243:                                       ; preds = %if.then1240, %land.lhs.true1237, %vaarg.end1234
  store i32 0, ptr %width, align 4
  store i32 0, ptr %length, align 4
  br label %sw.epilog1282

sw.bb1244:                                        ; preds = %for.end
  %570 = load ptr, ptr %pAccum.addr, align 8
  %printfFlags1246 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %570, i32 0, i32 6
  %571 = load i8, ptr %printfFlags1246, align 1
  %conv1247 = zext i8 %571 to i32
  %and1248 = and i32 %conv1247, 1
  %cmp1249 = icmp eq i32 %and1248, 0
  br i1 %cmp1249, label %if.then1251, label %if.end1252

if.then1251:                                      ; preds = %sw.bb1244
  br label %for.end1301

if.end1252:                                       ; preds = %sw.bb1244
  %572 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p1253 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %572, i32 0, i32 0
  %gp_offset1254 = load i32, ptr %gp_offset_p1253, align 8
  %fits_in_gp1255 = icmp ule i32 %gp_offset1254, 40
  br i1 %fits_in_gp1255, label %vaarg.in_reg1256, label %vaarg.in_mem1258

vaarg.in_reg1256:                                 ; preds = %if.end1252
  %573 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %572, i32 0, i32 3
  %reg_save_area1257 = load ptr, ptr %573, align 8
  %574 = getelementptr i8, ptr %reg_save_area1257, i32 %gp_offset1254
  %575 = add i32 %gp_offset1254, 8
  store i32 %575, ptr %gp_offset_p1253, align 8
  br label %vaarg.end1262

vaarg.in_mem1258:                                 ; preds = %if.end1252
  %overflow_arg_area_p1259 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %572, i32 0, i32 2
  %overflow_arg_area1260 = load ptr, ptr %overflow_arg_area_p1259, align 8
  %overflow_arg_area.next1261 = getelementptr i8, ptr %overflow_arg_area1260, i32 8
  store ptr %overflow_arg_area.next1261, ptr %overflow_arg_area_p1259, align 8
  br label %vaarg.end1262

vaarg.end1262:                                    ; preds = %vaarg.in_mem1258, %vaarg.in_reg1256
  %vaarg.addr1263 = phi ptr [ %574, %vaarg.in_reg1256 ], [ %overflow_arg_area1260, %vaarg.in_mem1258 ]
  %576 = load ptr, ptr %vaarg.addr1263, align 8
  store ptr %576, ptr %pSrc, align 8
  %577 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p1264 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %577, i32 0, i32 0
  %gp_offset1265 = load i32, ptr %gp_offset_p1264, align 8
  %fits_in_gp1266 = icmp ule i32 %gp_offset1265, 40
  br i1 %fits_in_gp1266, label %vaarg.in_reg1267, label %vaarg.in_mem1269

vaarg.in_reg1267:                                 ; preds = %vaarg.end1262
  %578 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %577, i32 0, i32 3
  %reg_save_area1268 = load ptr, ptr %578, align 8
  %579 = getelementptr i8, ptr %reg_save_area1268, i32 %gp_offset1265
  %580 = add i32 %gp_offset1265, 8
  store i32 %580, ptr %gp_offset_p1264, align 8
  br label %vaarg.end1273

vaarg.in_mem1269:                                 ; preds = %vaarg.end1262
  %overflow_arg_area_p1270 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %577, i32 0, i32 2
  %overflow_arg_area1271 = load ptr, ptr %overflow_arg_area_p1270, align 8
  %overflow_arg_area.next1272 = getelementptr i8, ptr %overflow_arg_area1271, i32 8
  store ptr %overflow_arg_area.next1272, ptr %overflow_arg_area_p1270, align 8
  br label %vaarg.end1273

vaarg.end1273:                                    ; preds = %vaarg.in_mem1269, %vaarg.in_reg1267
  %vaarg.addr1274 = phi ptr [ %579, %vaarg.in_reg1267 ], [ %overflow_arg_area1271, %vaarg.in_mem1269 ]
  %581 = load i32, ptr %vaarg.addr1274, align 4
  store i32 %581, ptr %k1245, align 4
  %582 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %582, i32 0, i32 2
  %583 = load i32, ptr %k1245, align 4
  %idxprom1275 = sext i32 %583 to i64
  %arrayidx1276 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom1275
  store ptr %arrayidx1276, ptr %pItem, align 8
  %584 = load ptr, ptr %pItem, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %584, i32 0, i32 1
  %585 = load ptr, ptr %zDatabase, align 8
  %tobool1277 = icmp ne ptr %585, null
  br i1 %tobool1277, label %if.then1278, label %if.end1280

if.then1278:                                      ; preds = %vaarg.end1273
  %586 = load ptr, ptr %pAccum.addr, align 8
  %587 = load ptr, ptr %pItem, align 8
  %zDatabase1279 = getelementptr inbounds nuw %struct.SrcList_item, ptr %587, i32 0, i32 1
  %588 = load ptr, ptr %zDatabase1279, align 8
  call void @sqlite3_str_appendall(ptr noundef %586, ptr noundef %588)
  %589 = load ptr, ptr %pAccum.addr, align 8
  call void @sqlite3_str_append(ptr noundef %589, ptr noundef @.str.6, i32 noundef 1)
  br label %if.end1280

if.end1280:                                       ; preds = %if.then1278, %vaarg.end1273
  %590 = load ptr, ptr %pAccum.addr, align 8
  %591 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %591, i32 0, i32 2
  %592 = load ptr, ptr %zName, align 8
  call void @sqlite3_str_appendall(ptr noundef %590, ptr noundef %592)
  store i32 0, ptr %width, align 4
  store i32 0, ptr %length, align 4
  br label %sw.epilog1282

sw.default1281:                                   ; preds = %for.end
  br label %for.end1301

sw.epilog1282:                                    ; preds = %if.end1280, %if.end1243, %if.end1085, %if.then996, %sw.bb807, %if.end806, %if.end791, %if.then570, %if.then512, %if.end436
  %593 = load i32, ptr %length, align 4
  %594 = load i32, ptr %width, align 4
  %sub1283 = sub nsw i32 %594, %593
  store i32 %sub1283, ptr %width, align 4
  %595 = load i32, ptr %width, align 4
  %cmp1284 = icmp sgt i32 %595, 0
  br i1 %cmp1284, label %if.then1286, label %if.else1293

if.then1286:                                      ; preds = %sw.epilog1282
  %596 = load i8, ptr %flag_leftjustify, align 1
  %tobool1287 = icmp ne i8 %596, 0
  br i1 %tobool1287, label %if.end1289, label %if.then1288

if.then1288:                                      ; preds = %if.then1286
  %597 = load ptr, ptr %pAccum.addr, align 8
  %598 = load i32, ptr %width, align 4
  call void @sqlite3_str_appendchar(ptr noundef %597, i32 noundef %598, i8 noundef signext 32)
  br label %if.end1289

if.end1289:                                       ; preds = %if.then1288, %if.then1286
  %599 = load ptr, ptr %pAccum.addr, align 8
  %600 = load ptr, ptr %bufpt, align 8
  %601 = load i32, ptr %length, align 4
  call void @sqlite3_str_append(ptr noundef %599, ptr noundef %600, i32 noundef %601)
  %602 = load i8, ptr %flag_leftjustify, align 1
  %tobool1290 = icmp ne i8 %602, 0
  br i1 %tobool1290, label %if.then1291, label %if.end1292

if.then1291:                                      ; preds = %if.end1289
  %603 = load ptr, ptr %pAccum.addr, align 8
  %604 = load i32, ptr %width, align 4
  call void @sqlite3_str_appendchar(ptr noundef %603, i32 noundef %604, i8 noundef signext 32)
  br label %if.end1292

if.end1292:                                       ; preds = %if.then1291, %if.end1289
  br label %if.end1294

if.else1293:                                      ; preds = %sw.epilog1282
  %605 = load ptr, ptr %pAccum.addr, align 8
  %606 = load ptr, ptr %bufpt, align 8
  %607 = load i32, ptr %length, align 4
  call void @sqlite3_str_append(ptr noundef %605, ptr noundef %606, i32 noundef %607)
  br label %if.end1294

if.end1294:                                       ; preds = %if.else1293, %if.end1292
  %608 = load ptr, ptr %zExtra, align 8
  %tobool1295 = icmp ne ptr %608, null
  br i1 %tobool1295, label %if.then1296, label %if.end1298

if.then1296:                                      ; preds = %if.end1294
  %609 = load ptr, ptr %pAccum.addr, align 8
  %db1297 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %609, i32 0, i32 0
  %610 = load ptr, ptr %db1297, align 8
  %611 = load ptr, ptr %zExtra, align 8
  call void @sqlite3DbFree(ptr noundef %610, ptr noundef %611)
  store ptr null, ptr %zExtra, align 8
  br label %if.end1298

if.end1298:                                       ; preds = %if.then1296, %if.end1294
  br label %for.inc1299

for.inc1299:                                      ; preds = %if.end1298
  %612 = load ptr, ptr %fmt.addr, align 8
  %incdec.ptr1300 = getelementptr inbounds nuw i8, ptr %612, i32 1
  store ptr %incdec.ptr1300, ptr %fmt.addr, align 8
  br label %for.cond, !llvm.loop !37

for.end1301:                                      ; preds = %sw.default1281, %if.then1251, %if.then1223, %if.then1177, %if.then640, %if.then326, %if.then23, %if.then16, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @getIntArg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @printfTempBuf(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden double @getDoubleArg(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsNaN(double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @et_getdigit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @getTextArg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendchar(ptr noundef, i32 noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DbMallocSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendall(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

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
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
