; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.SyFmtInfo = type { i8, i8, i32, i8, ptr, ptr }
%struct.SyFmtConsumer = type { i32, i32, i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.SyString = type { ptr, i32 }

@InternFormat.aFmt = external hidden constant [18 x { i8, i8, [2 x i8], i32, i8, [7 x i8], ptr, ptr }], align 16
@InternFormat.spaces = external hidden global [51 x i8], align 16
@.str.59 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.60 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @InternFormat(ptr noundef %xConsumer, ptr noundef %pUserData, ptr noundef %zFormat, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %xConsumer.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %bufpt = alloca ptr, align 8
  %precision = alloca i32, align 4
  %length = alloca i32, align 4
  %idx = alloca i32, align 4
  %width = alloca i32, align 4
  %flag_leftjustify = alloca i8, align 1
  %flag_plussign = alloca i8, align 1
  %flag_blanksign = alloca i8, align 1
  %flag_alternateform = alloca i8, align 1
  %flag_zeropad = alloca i8, align 1
  %flag_long = alloca i8, align 1
  %longvalue = alloca i64, align 8
  %infop = alloca ptr, align 8
  %buf = alloca [1024 x i8], align 16
  %prefix = alloca i8, align 1
  %errorflag = alloca i8, align 1
  %xtype = alloca i8, align 1
  %zExtra = alloca ptr, align 8
  %realvalue = alloca x86_fp80, align 16
  %exp = alloca i32, align 4
  %rounder = alloca double, align 8
  %flag_dp = alloca i8, align 1
  %flag_rtz = alloca i8, align 1
  %flag_exp = alloca i8, align 1
  %nsd = alloca i32, align 4
  %rc = alloca i32, align 4
  %amt = alloca i32, align 4
  %cset = alloca ptr, align 8
  %base = alloca i32, align 4
  %pre = alloca ptr, align 8
  %x = alloca i8, align 1
  %i = alloca i32, align 4
  %nPad = alloca i32, align 4
  %pSize = alloca ptr, align 8
  %pStr = alloca ptr, align 8
  %nspace = alloca i32, align 4
  %nspace834 = alloca i32, align 4
  store ptr %xConsumer, ptr %xConsumer.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  store i8 0, ptr %errorflag, align 1
  store i32 0, ptr %length, align 4
  store ptr null, ptr %bufpt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc861, %entry
  %0 = load ptr, ptr %zFormat.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, ptr %c, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end863

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %c, align 4
  %cmp2 = icmp ne i32 %2, 37
  br i1 %cmp2, label %if.then, label %if.end19

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %zFormat.addr, align 8
  store ptr %3, ptr %bufpt, align 8
  store i32 1, ptr %amt, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %zFormat.addr, align 8
  %5 = load i8, ptr %incdec.ptr, align 1
  %conv4 = sext i8 %5 to i32
  store i32 %conv4, ptr %c, align 4
  %cmp5 = icmp ne i32 %conv4, 37
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %c, align 4
  %cmp7 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, ptr %amt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %amt, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %xConsumer.addr, align 8
  %10 = load ptr, ptr %bufpt, align 8
  %11 = load i32, ptr %amt, align 4
  %12 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 %9(ptr noundef %10, i32 noundef %11, ptr noundef %12)
  store i32 %call, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 %13, 0
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %while.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %14 = load i32, ptr %c, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end
  %15 = load i8, ptr %errorflag, align 1
  %conv15 = zext i8 %15 to i32
  %cmp16 = icmp sgt i32 %conv15, 0
  %16 = zext i1 %cmp16 to i64
  %cond = select i1 %cmp16, i32 -21, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %for.body
  %17 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr20, ptr %zFormat.addr, align 8
  %18 = load i8, ptr %incdec.ptr20, align 1
  %conv21 = sext i8 %18 to i32
  store i32 %conv21, ptr %c, align 4
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.end34

if.then24:                                        ; preds = %if.end19
  store i8 1, ptr %errorflag, align 1
  %19 = load ptr, ptr %xConsumer.addr, align 8
  %20 = load ptr, ptr %pUserData.addr, align 8
  %call25 = call i32 %19(ptr noundef @.str.59, i32 noundef 1, ptr noundef %20)
  store i32 %call25, ptr %rc, align 4
  %21 = load i32, ptr %rc, align 4
  %cmp26 = icmp ne i32 %21, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  store i32 -10, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then24
  %22 = load i8, ptr %errorflag, align 1
  %conv30 = zext i8 %22 to i32
  %cmp31 = icmp sgt i32 %conv30, 0
  %23 = zext i1 %cmp31 to i64
  %cond33 = select i1 %cmp31, i32 -21, i32 0
  store i32 %cond33, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end19
  store i8 0, ptr %flag_zeropad, align 1
  store i8 0, ptr %flag_alternateform, align 1
  store i8 0, ptr %flag_blanksign, align 1
  store i8 0, ptr %flag_plussign, align 1
  store i8 0, ptr %flag_leftjustify, align 1
  br label %do.body

do.body:                                          ; preds = %land.end46, %if.end34
  %24 = load i32, ptr %c, align 4
  switch i32 %24, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb35
    i32 32, label %sw.bb36
    i32 35, label %sw.bb37
    i32 48, label %sw.bb38
  ]

sw.bb:                                            ; preds = %do.body
  store i8 1, ptr %flag_leftjustify, align 1
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.body
  store i8 1, ptr %flag_plussign, align 1
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %do.body
  store i8 1, ptr %flag_blanksign, align 1
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.body
  store i8 1, ptr %flag_alternateform, align 1
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %do.body
  store i8 1, ptr %flag_zeropad, align 1
  store i32 0, ptr %c, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %25 = load i32, ptr %c, align 4
  %cmp39 = icmp eq i32 %25, 0
  br i1 %cmp39, label %land.rhs41, label %land.end46

land.rhs41:                                       ; preds = %do.cond
  %26 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr42 = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %incdec.ptr42, ptr %zFormat.addr, align 8
  %27 = load i8, ptr %incdec.ptr42, align 1
  %conv43 = sext i8 %27 to i32
  store i32 %conv43, ptr %c, align 4
  %cmp44 = icmp ne i32 %conv43, 0
  br label %land.end46

land.end46:                                       ; preds = %land.rhs41, %do.cond
  %28 = phi i1 [ false, %do.cond ], [ %cmp44, %land.rhs41 ]
  br i1 %28, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %land.end46
  store i32 0, ptr %width, align 4
  %29 = load i32, ptr %c, align 4
  %cmp47 = icmp eq i32 %29, 42
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %do.end
  %30 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %30, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 8
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then49
  %31 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %30, i32 0, i32 3
  %reg_save_area = load ptr, ptr %31, align 8
  %32 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %33 = add i32 %gp_offset, 8
  store i32 %33, ptr %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then49
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %30, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %32, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %34 = load i32, ptr %vaarg.addr, align 4
  store i32 %34, ptr %width, align 4
  %35 = load i32, ptr %width, align 4
  %cmp50 = icmp slt i32 %35, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %vaarg.end
  store i8 1, ptr %flag_leftjustify, align 1
  %36 = load i32, ptr %width, align 4
  %sub = sub nsw i32 0, %36
  store i32 %sub, ptr %width, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %vaarg.end
  %37 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr54 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %incdec.ptr54, ptr %zFormat.addr, align 8
  %38 = load i8, ptr %incdec.ptr54, align 1
  %conv55 = sext i8 %38 to i32
  store i32 %conv55, ptr %c, align 4
  br label %if.end68

if.else:                                          ; preds = %do.end
  br label %while.cond56

while.cond56:                                     ; preds = %while.body63, %if.else
  %39 = load i32, ptr %c, align 4
  %cmp57 = icmp sge i32 %39, 48
  br i1 %cmp57, label %land.rhs59, label %land.end62

land.rhs59:                                       ; preds = %while.cond56
  %40 = load i32, ptr %c, align 4
  %cmp60 = icmp sle i32 %40, 57
  br label %land.end62

land.end62:                                       ; preds = %land.rhs59, %while.cond56
  %41 = phi i1 [ false, %while.cond56 ], [ %cmp60, %land.rhs59 ]
  br i1 %41, label %while.body63, label %while.end67

while.body63:                                     ; preds = %land.end62
  %42 = load i32, ptr %width, align 4
  %mul = mul nsw i32 %42, 10
  %43 = load i32, ptr %c, align 4
  %add = add nsw i32 %mul, %43
  %sub64 = sub nsw i32 %add, 48
  store i32 %sub64, ptr %width, align 4
  %44 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr65 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr65, ptr %zFormat.addr, align 8
  %45 = load i8, ptr %incdec.ptr65, align 1
  %conv66 = sext i8 %45 to i32
  store i32 %conv66, ptr %c, align 4
  br label %while.cond56, !llvm.loop !9

while.end67:                                      ; preds = %land.end62
  br label %if.end68

if.end68:                                         ; preds = %while.end67, %if.end53
  %46 = load i32, ptr %width, align 4
  %cmp69 = icmp sgt i32 %46, 1014
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  store i32 1014, ptr %width, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68
  store i32 -1, ptr %precision, align 4
  %47 = load i32, ptr %c, align 4
  %cmp73 = icmp eq i32 %47, 46
  br i1 %cmp73, label %if.then75, label %if.end115

if.then75:                                        ; preds = %if.end72
  store i32 0, ptr %precision, align 4
  %48 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr76 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %incdec.ptr76, ptr %zFormat.addr, align 8
  %49 = load i8, ptr %incdec.ptr76, align 1
  %conv77 = sext i8 %49 to i32
  store i32 %conv77, ptr %c, align 4
  %50 = load i32, ptr %c, align 4
  %cmp78 = icmp eq i32 %50, 42
  br i1 %cmp78, label %if.then80, label %if.else99

if.then80:                                        ; preds = %if.then75
  %51 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p81 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %51, i32 0, i32 0
  %gp_offset82 = load i32, ptr %gp_offset_p81, align 8
  %fits_in_gp83 = icmp ule i32 %gp_offset82, 40
  br i1 %fits_in_gp83, label %vaarg.in_reg84, label %vaarg.in_mem86

vaarg.in_reg84:                                   ; preds = %if.then80
  %52 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %51, i32 0, i32 3
  %reg_save_area85 = load ptr, ptr %52, align 8
  %53 = getelementptr i8, ptr %reg_save_area85, i32 %gp_offset82
  %54 = add i32 %gp_offset82, 8
  store i32 %54, ptr %gp_offset_p81, align 8
  br label %vaarg.end90

vaarg.in_mem86:                                   ; preds = %if.then80
  %overflow_arg_area_p87 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %51, i32 0, i32 2
  %overflow_arg_area88 = load ptr, ptr %overflow_arg_area_p87, align 8
  %overflow_arg_area.next89 = getelementptr i8, ptr %overflow_arg_area88, i32 8
  store ptr %overflow_arg_area.next89, ptr %overflow_arg_area_p87, align 8
  br label %vaarg.end90

vaarg.end90:                                      ; preds = %vaarg.in_mem86, %vaarg.in_reg84
  %vaarg.addr91 = phi ptr [ %53, %vaarg.in_reg84 ], [ %overflow_arg_area88, %vaarg.in_mem86 ]
  %55 = load i32, ptr %vaarg.addr91, align 4
  store i32 %55, ptr %precision, align 4
  %56 = load i32, ptr %precision, align 4
  %cmp92 = icmp slt i32 %56, 0
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %vaarg.end90
  %57 = load i32, ptr %precision, align 4
  %sub95 = sub nsw i32 0, %57
  store i32 %sub95, ptr %precision, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %vaarg.end90
  %58 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr97 = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr97, ptr %zFormat.addr, align 8
  %59 = load i8, ptr %incdec.ptr97, align 1
  %conv98 = sext i8 %59 to i32
  store i32 %conv98, ptr %c, align 4
  br label %if.end114

if.else99:                                        ; preds = %if.then75
  br label %while.cond100

while.cond100:                                    ; preds = %while.body107, %if.else99
  %60 = load i32, ptr %c, align 4
  %cmp101 = icmp sge i32 %60, 48
  br i1 %cmp101, label %land.rhs103, label %land.end106

land.rhs103:                                      ; preds = %while.cond100
  %61 = load i32, ptr %c, align 4
  %cmp104 = icmp sle i32 %61, 57
  br label %land.end106

land.end106:                                      ; preds = %land.rhs103, %while.cond100
  %62 = phi i1 [ false, %while.cond100 ], [ %cmp104, %land.rhs103 ]
  br i1 %62, label %while.body107, label %while.end113

while.body107:                                    ; preds = %land.end106
  %63 = load i32, ptr %precision, align 4
  %mul108 = mul nsw i32 %63, 10
  %64 = load i32, ptr %c, align 4
  %add109 = add nsw i32 %mul108, %64
  %sub110 = sub nsw i32 %add109, 48
  store i32 %sub110, ptr %precision, align 4
  %65 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr111 = getelementptr inbounds nuw i8, ptr %65, i32 1
  store ptr %incdec.ptr111, ptr %zFormat.addr, align 8
  %66 = load i8, ptr %incdec.ptr111, align 1
  %conv112 = sext i8 %66 to i32
  store i32 %conv112, ptr %c, align 4
  br label %while.cond100, !llvm.loop !10

while.end113:                                     ; preds = %land.end106
  br label %if.end114

if.end114:                                        ; preds = %while.end113, %if.end96
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end72
  store i8 0, ptr %flag_long, align 1
  %67 = load i32, ptr %c, align 4
  %cmp116 = icmp eq i32 %67, 108
  br i1 %cmp116, label %if.then120, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end115
  %68 = load i32, ptr %c, align 4
  %cmp118 = icmp eq i32 %68, 113
  br i1 %cmp118, label %if.then120, label %if.end131

if.then120:                                       ; preds = %lor.lhs.false, %if.end115
  %69 = load i32, ptr %c, align 4
  %cmp121 = icmp eq i32 %69, 113
  %70 = zext i1 %cmp121 to i64
  %cond123 = select i1 %cmp121, i32 2, i32 1
  %conv124 = trunc i32 %cond123 to i8
  store i8 %conv124, ptr %flag_long, align 1
  %71 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr125 = getelementptr inbounds nuw i8, ptr %71, i32 1
  store ptr %incdec.ptr125, ptr %zFormat.addr, align 8
  %72 = load i8, ptr %incdec.ptr125, align 1
  %conv126 = sext i8 %72 to i32
  store i32 %conv126, ptr %c, align 4
  %73 = load i32, ptr %c, align 4
  %cmp127 = icmp eq i32 %73, 108
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.then120
  store i8 2, ptr %flag_long, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.then120
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %lor.lhs.false
  store ptr null, ptr %infop, align 8
  store i8 9, ptr %xtype, align 1
  store i32 0, ptr %idx, align 4
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc, %if.end131
  %74 = load i32, ptr %idx, align 4
  %cmp133 = icmp slt i32 %74, 18
  br i1 %cmp133, label %for.body135, label %for.end

for.body135:                                      ; preds = %for.cond132
  %75 = load i32, ptr %c, align 4
  %76 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %76 to i64
  %arrayidx = getelementptr inbounds [18 x %struct.SyFmtInfo], ptr @InternFormat.aFmt, i64 0, i64 %idxprom
  %fmttype = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %arrayidx, i32 0, i32 0
  %77 = load i8, ptr %fmttype, align 16
  %conv136 = sext i8 %77 to i32
  %cmp137 = icmp eq i32 %75, %conv136
  br i1 %cmp137, label %if.then139, label %if.end142

if.then139:                                       ; preds = %for.body135
  %78 = load i32, ptr %idx, align 4
  %idxprom140 = sext i32 %78 to i64
  %arrayidx141 = getelementptr inbounds [18 x %struct.SyFmtInfo], ptr @InternFormat.aFmt, i64 0, i64 %idxprom140
  store ptr %arrayidx141, ptr %infop, align 8
  %79 = load ptr, ptr %infop, align 8
  %type = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %79, i32 0, i32 3
  %80 = load i8, ptr %type, align 8
  store i8 %80, ptr %xtype, align 1
  br label %for.end

if.end142:                                        ; preds = %for.body135
  br label %for.inc

for.inc:                                          ; preds = %if.end142
  %81 = load i32, ptr %idx, align 4
  %inc143 = add nsw i32 %81, 1
  store i32 %inc143, ptr %idx, align 4
  br label %for.cond132, !llvm.loop !11

for.end:                                          ; preds = %if.then139, %for.cond132
  store ptr null, ptr %zExtra, align 8
  %82 = load i8, ptr %xtype, align 1
  %conv144 = zext i8 %82 to i32
  switch i32 %conv144, label %sw.epilog794 [
    i32 1, label %sw.bb145
    i32 2, label %sw.bb318
    i32 3, label %sw.bb318
    i32 4, label %sw.bb318
    i32 5, label %sw.bb689
    i32 7, label %sw.bb701
    i32 8, label %sw.bb704
    i32 6, label %sw.bb738
    i32 13, label %sw.bb766
    i32 9, label %sw.bb786
  ]

sw.bb145:                                         ; preds = %for.end
  %83 = load i8, ptr %flag_long, align 1
  %conv146 = zext i8 %83 to i32
  %cmp147 = icmp sgt i32 %conv146, 0
  br i1 %cmp147, label %if.then149, label %if.else178

if.then149:                                       ; preds = %sw.bb145
  %84 = load i8, ptr %flag_long, align 1
  %conv150 = zext i8 %84 to i32
  %cmp151 = icmp sgt i32 %conv150, 1
  br i1 %cmp151, label %if.then153, label %if.else165

if.then153:                                       ; preds = %if.then149
  %85 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p154 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %85, i32 0, i32 0
  %gp_offset155 = load i32, ptr %gp_offset_p154, align 8
  %fits_in_gp156 = icmp ule i32 %gp_offset155, 40
  br i1 %fits_in_gp156, label %vaarg.in_reg157, label %vaarg.in_mem159

vaarg.in_reg157:                                  ; preds = %if.then153
  %86 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %85, i32 0, i32 3
  %reg_save_area158 = load ptr, ptr %86, align 8
  %87 = getelementptr i8, ptr %reg_save_area158, i32 %gp_offset155
  %88 = add i32 %gp_offset155, 8
  store i32 %88, ptr %gp_offset_p154, align 8
  br label %vaarg.end163

vaarg.in_mem159:                                  ; preds = %if.then153
  %overflow_arg_area_p160 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %85, i32 0, i32 2
  %overflow_arg_area161 = load ptr, ptr %overflow_arg_area_p160, align 8
  %overflow_arg_area.next162 = getelementptr i8, ptr %overflow_arg_area161, i32 8
  store ptr %overflow_arg_area.next162, ptr %overflow_arg_area_p160, align 8
  br label %vaarg.end163

vaarg.end163:                                     ; preds = %vaarg.in_mem159, %vaarg.in_reg157
  %vaarg.addr164 = phi ptr [ %87, %vaarg.in_reg157 ], [ %overflow_arg_area161, %vaarg.in_mem159 ]
  %89 = load i64, ptr %vaarg.addr164, align 8
  store i64 %89, ptr %longvalue, align 8
  br label %if.end177

if.else165:                                       ; preds = %if.then149
  %90 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p166 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %90, i32 0, i32 0
  %gp_offset167 = load i32, ptr %gp_offset_p166, align 8
  %fits_in_gp168 = icmp ule i32 %gp_offset167, 40
  br i1 %fits_in_gp168, label %vaarg.in_reg169, label %vaarg.in_mem171

vaarg.in_reg169:                                  ; preds = %if.else165
  %91 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %90, i32 0, i32 3
  %reg_save_area170 = load ptr, ptr %91, align 8
  %92 = getelementptr i8, ptr %reg_save_area170, i32 %gp_offset167
  %93 = add i32 %gp_offset167, 8
  store i32 %93, ptr %gp_offset_p166, align 8
  br label %vaarg.end175

vaarg.in_mem171:                                  ; preds = %if.else165
  %overflow_arg_area_p172 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %90, i32 0, i32 2
  %overflow_arg_area173 = load ptr, ptr %overflow_arg_area_p172, align 8
  %overflow_arg_area.next174 = getelementptr i8, ptr %overflow_arg_area173, i32 8
  store ptr %overflow_arg_area.next174, ptr %overflow_arg_area_p172, align 8
  br label %vaarg.end175

vaarg.end175:                                     ; preds = %vaarg.in_mem171, %vaarg.in_reg169
  %vaarg.addr176 = phi ptr [ %92, %vaarg.in_reg169 ], [ %overflow_arg_area173, %vaarg.in_mem171 ]
  %94 = load i64, ptr %vaarg.addr176, align 8
  store i64 %94, ptr %longvalue, align 8
  br label %if.end177

if.end177:                                        ; preds = %vaarg.end175, %vaarg.end163
  br label %if.end206

if.else178:                                       ; preds = %sw.bb145
  %95 = load ptr, ptr %infop, align 8
  %flags = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %95, i32 0, i32 2
  %96 = load i32, ptr %flags, align 4
  %and = and i32 %96, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then179, label %if.else192

if.then179:                                       ; preds = %if.else178
  %97 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p180 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %97, i32 0, i32 0
  %gp_offset181 = load i32, ptr %gp_offset_p180, align 8
  %fits_in_gp182 = icmp ule i32 %gp_offset181, 40
  br i1 %fits_in_gp182, label %vaarg.in_reg183, label %vaarg.in_mem185

vaarg.in_reg183:                                  ; preds = %if.then179
  %98 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %97, i32 0, i32 3
  %reg_save_area184 = load ptr, ptr %98, align 8
  %99 = getelementptr i8, ptr %reg_save_area184, i32 %gp_offset181
  %100 = add i32 %gp_offset181, 8
  store i32 %100, ptr %gp_offset_p180, align 8
  br label %vaarg.end189

vaarg.in_mem185:                                  ; preds = %if.then179
  %overflow_arg_area_p186 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %97, i32 0, i32 2
  %overflow_arg_area187 = load ptr, ptr %overflow_arg_area_p186, align 8
  %overflow_arg_area.next188 = getelementptr i8, ptr %overflow_arg_area187, i32 8
  store ptr %overflow_arg_area.next188, ptr %overflow_arg_area_p186, align 8
  br label %vaarg.end189

vaarg.end189:                                     ; preds = %vaarg.in_mem185, %vaarg.in_reg183
  %vaarg.addr190 = phi ptr [ %99, %vaarg.in_reg183 ], [ %overflow_arg_area187, %vaarg.in_mem185 ]
  %101 = load i32, ptr %vaarg.addr190, align 4
  %conv191 = sext i32 %101 to i64
  store i64 %conv191, ptr %longvalue, align 8
  br label %if.end205

if.else192:                                       ; preds = %if.else178
  %102 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p193 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %102, i32 0, i32 0
  %gp_offset194 = load i32, ptr %gp_offset_p193, align 8
  %fits_in_gp195 = icmp ule i32 %gp_offset194, 40
  br i1 %fits_in_gp195, label %vaarg.in_reg196, label %vaarg.in_mem198

vaarg.in_reg196:                                  ; preds = %if.else192
  %103 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %102, i32 0, i32 3
  %reg_save_area197 = load ptr, ptr %103, align 8
  %104 = getelementptr i8, ptr %reg_save_area197, i32 %gp_offset194
  %105 = add i32 %gp_offset194, 8
  store i32 %105, ptr %gp_offset_p193, align 8
  br label %vaarg.end202

vaarg.in_mem198:                                  ; preds = %if.else192
  %overflow_arg_area_p199 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %102, i32 0, i32 2
  %overflow_arg_area200 = load ptr, ptr %overflow_arg_area_p199, align 8
  %overflow_arg_area.next201 = getelementptr i8, ptr %overflow_arg_area200, i32 8
  store ptr %overflow_arg_area.next201, ptr %overflow_arg_area_p199, align 8
  br label %vaarg.end202

vaarg.end202:                                     ; preds = %vaarg.in_mem198, %vaarg.in_reg196
  %vaarg.addr203 = phi ptr [ %104, %vaarg.in_reg196 ], [ %overflow_arg_area200, %vaarg.in_mem198 ]
  %106 = load i32, ptr %vaarg.addr203, align 4
  %conv204 = zext i32 %106 to i64
  store i64 %conv204, ptr %longvalue, align 8
  br label %if.end205

if.end205:                                        ; preds = %vaarg.end202, %vaarg.end189
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end177
  %107 = load i32, ptr %precision, align 4
  %cmp207 = icmp sgt i32 %107, 984
  br i1 %cmp207, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.end206
  store i32 984, ptr %precision, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.then209, %if.end206
  %108 = load i64, ptr %longvalue, align 8
  %cmp211 = icmp eq i64 %108, 0
  br i1 %cmp211, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.end210
  store i8 0, ptr %flag_alternateform, align 1
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %if.end210
  %109 = load ptr, ptr %infop, align 8
  %flags215 = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %109, i32 0, i32 2
  %110 = load i32, ptr %flags215, align 4
  %and216 = and i32 %110, 1
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %if.then218, label %if.else237

if.then218:                                       ; preds = %if.end214
  %111 = load i64, ptr %longvalue, align 8
  %cmp219 = icmp slt i64 %111, 0
  br i1 %cmp219, label %if.then221, label %if.else227

if.then221:                                       ; preds = %if.then218
  %112 = load i64, ptr %longvalue, align 8
  %sub222 = sub nsw i64 0, %112
  store i64 %sub222, ptr %longvalue, align 8
  %113 = load i64, ptr %longvalue, align 8
  %cmp223 = icmp slt i64 %113, 0
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.then221
  store i64 9223372036854775807, ptr %longvalue, align 8
  br label %if.end226

if.end226:                                        ; preds = %if.then225, %if.then221
  store i8 45, ptr %prefix, align 1
  br label %if.end236

if.else227:                                       ; preds = %if.then218
  %114 = load i8, ptr %flag_plussign, align 1
  %tobool228 = icmp ne i8 %114, 0
  br i1 %tobool228, label %if.then229, label %if.else230

if.then229:                                       ; preds = %if.else227
  store i8 43, ptr %prefix, align 1
  br label %if.end235

if.else230:                                       ; preds = %if.else227
  %115 = load i8, ptr %flag_blanksign, align 1
  %tobool231 = icmp ne i8 %115, 0
  br i1 %tobool231, label %if.then232, label %if.else233

if.then232:                                       ; preds = %if.else230
  store i8 32, ptr %prefix, align 1
  br label %if.end234

if.else233:                                       ; preds = %if.else230
  store i8 0, ptr %prefix, align 1
  br label %if.end234

if.end234:                                        ; preds = %if.else233, %if.then232
  br label %if.end235

if.end235:                                        ; preds = %if.end234, %if.then229
  br label %if.end236

if.end236:                                        ; preds = %if.end235, %if.end226
  br label %if.end247

if.else237:                                       ; preds = %if.end214
  %116 = load i64, ptr %longvalue, align 8
  %cmp238 = icmp slt i64 %116, 0
  br i1 %cmp238, label %if.then240, label %if.end246

if.then240:                                       ; preds = %if.else237
  %117 = load i64, ptr %longvalue, align 8
  %sub241 = sub nsw i64 0, %117
  store i64 %sub241, ptr %longvalue, align 8
  %118 = load i64, ptr %longvalue, align 8
  %cmp242 = icmp slt i64 %118, 0
  br i1 %cmp242, label %if.then244, label %if.end245

if.then244:                                       ; preds = %if.then240
  store i64 9223372036854775807, ptr %longvalue, align 8
  br label %if.end245

if.end245:                                        ; preds = %if.then244, %if.then240
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.else237
  store i8 0, ptr %prefix, align 1
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %if.end236
  %119 = load i8, ptr %flag_zeropad, align 1
  %conv248 = zext i8 %119 to i32
  %tobool249 = icmp ne i32 %conv248, 0
  br i1 %tobool249, label %land.lhs.true, label %if.end261

land.lhs.true:                                    ; preds = %if.end247
  %120 = load i32, ptr %precision, align 4
  %121 = load i32, ptr %width, align 4
  %122 = load i8, ptr %prefix, align 1
  %conv250 = sext i8 %122 to i32
  %cmp251 = icmp ne i32 %conv250, 0
  %conv252 = zext i1 %cmp251 to i32
  %sub253 = sub nsw i32 %121, %conv252
  %cmp254 = icmp slt i32 %120, %sub253
  br i1 %cmp254, label %if.then256, label %if.end261

if.then256:                                       ; preds = %land.lhs.true
  %123 = load i32, ptr %width, align 4
  %124 = load i8, ptr %prefix, align 1
  %conv257 = sext i8 %124 to i32
  %cmp258 = icmp ne i32 %conv257, 0
  %conv259 = zext i1 %cmp258 to i32
  %sub260 = sub nsw i32 %123, %conv259
  store i32 %sub260, ptr %precision, align 4
  br label %if.end261

if.end261:                                        ; preds = %if.then256, %land.lhs.true, %if.end247
  %arrayidx262 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 1023
  store ptr %arrayidx262, ptr %bufpt, align 8
  %125 = load ptr, ptr %infop, align 8
  %charset = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %125, i32 0, i32 4
  %126 = load ptr, ptr %charset, align 8
  store ptr %126, ptr %cset, align 8
  %127 = load ptr, ptr %infop, align 8
  %base263 = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %127, i32 0, i32 1
  %128 = load i8, ptr %base263, align 1
  %conv264 = zext i8 %128 to i32
  store i32 %conv264, ptr %base, align 4
  br label %do.body265

do.body265:                                       ; preds = %do.cond270, %if.end261
  %129 = load ptr, ptr %cset, align 8
  %130 = load i64, ptr %longvalue, align 8
  %131 = load i32, ptr %base, align 4
  %conv266 = sext i32 %131 to i64
  %rem = srem i64 %130, %conv266
  %arrayidx267 = getelementptr inbounds i8, ptr %129, i64 %rem
  %132 = load i8, ptr %arrayidx267, align 1
  %133 = load ptr, ptr %bufpt, align 8
  %incdec.ptr268 = getelementptr inbounds i8, ptr %133, i32 -1
  store ptr %incdec.ptr268, ptr %bufpt, align 8
  store i8 %132, ptr %incdec.ptr268, align 1
  %134 = load i64, ptr %longvalue, align 8
  %135 = load i32, ptr %base, align 4
  %conv269 = sext i32 %135 to i64
  %div = sdiv i64 %134, %conv269
  store i64 %div, ptr %longvalue, align 8
  br label %do.cond270

do.cond270:                                       ; preds = %do.body265
  %136 = load i64, ptr %longvalue, align 8
  %cmp271 = icmp sgt i64 %136, 0
  br i1 %cmp271, label %do.body265, label %do.end273, !llvm.loop !12

do.end273:                                        ; preds = %do.cond270
  %arrayidx274 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 1023
  %137 = load ptr, ptr %bufpt, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx274 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %137 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv275 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv275, ptr %length, align 4
  %138 = load i32, ptr %precision, align 4
  %139 = load i32, ptr %length, align 4
  %sub276 = sub nsw i32 %138, %139
  store i32 %sub276, ptr %idx, align 4
  br label %for.cond277

for.cond277:                                      ; preds = %for.inc282, %do.end273
  %140 = load i32, ptr %idx, align 4
  %cmp278 = icmp sgt i32 %140, 0
  br i1 %cmp278, label %for.body280, label %for.end283

for.body280:                                      ; preds = %for.cond277
  %141 = load ptr, ptr %bufpt, align 8
  %incdec.ptr281 = getelementptr inbounds i8, ptr %141, i32 -1
  store ptr %incdec.ptr281, ptr %bufpt, align 8
  store i8 48, ptr %incdec.ptr281, align 1
  br label %for.inc282

for.inc282:                                       ; preds = %for.body280
  %142 = load i32, ptr %idx, align 4
  %dec = add nsw i32 %142, -1
  store i32 %dec, ptr %idx, align 4
  br label %for.cond277, !llvm.loop !13

for.end283:                                       ; preds = %for.cond277
  %143 = load i8, ptr %prefix, align 1
  %tobool284 = icmp ne i8 %143, 0
  br i1 %tobool284, label %if.then285, label %if.end287

if.then285:                                       ; preds = %for.end283
  %144 = load i8, ptr %prefix, align 1
  %145 = load ptr, ptr %bufpt, align 8
  %incdec.ptr286 = getelementptr inbounds i8, ptr %145, i32 -1
  store ptr %incdec.ptr286, ptr %bufpt, align 8
  store i8 %144, ptr %incdec.ptr286, align 1
  br label %if.end287

if.end287:                                        ; preds = %if.then285, %for.end283
  %146 = load i8, ptr %flag_alternateform, align 1
  %conv288 = zext i8 %146 to i32
  %tobool289 = icmp ne i32 %conv288, 0
  br i1 %tobool289, label %land.lhs.true290, label %if.end312

land.lhs.true290:                                 ; preds = %if.end287
  %147 = load ptr, ptr %infop, align 8
  %prefix291 = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %147, i32 0, i32 5
  %148 = load ptr, ptr %prefix291, align 8
  %tobool292 = icmp ne ptr %148, null
  br i1 %tobool292, label %if.then293, label %if.end312

if.then293:                                       ; preds = %land.lhs.true290
  %149 = load ptr, ptr %infop, align 8
  %prefix294 = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %149, i32 0, i32 5
  %150 = load ptr, ptr %prefix294, align 8
  store ptr %150, ptr %pre, align 8
  %151 = load ptr, ptr %bufpt, align 8
  %152 = load i8, ptr %151, align 1
  %conv295 = sext i8 %152 to i32
  %153 = load ptr, ptr %pre, align 8
  %arrayidx296 = getelementptr inbounds i8, ptr %153, i64 0
  %154 = load i8, ptr %arrayidx296, align 1
  %conv297 = sext i8 %154 to i32
  %cmp298 = icmp ne i32 %conv295, %conv297
  br i1 %cmp298, label %if.then300, label %if.end311

if.then300:                                       ; preds = %if.then293
  %155 = load ptr, ptr %infop, align 8
  %prefix301 = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %155, i32 0, i32 5
  %156 = load ptr, ptr %prefix301, align 8
  store ptr %156, ptr %pre, align 8
  br label %for.cond302

for.cond302:                                      ; preds = %for.inc308, %if.then300
  %157 = load ptr, ptr %pre, align 8
  %158 = load i8, ptr %157, align 1
  store i8 %158, ptr %x, align 1
  %conv303 = sext i8 %158 to i32
  %cmp304 = icmp ne i32 %conv303, 0
  br i1 %cmp304, label %for.body306, label %for.end310

for.body306:                                      ; preds = %for.cond302
  %159 = load i8, ptr %x, align 1
  %160 = load ptr, ptr %bufpt, align 8
  %incdec.ptr307 = getelementptr inbounds i8, ptr %160, i32 -1
  store ptr %incdec.ptr307, ptr %bufpt, align 8
  store i8 %159, ptr %incdec.ptr307, align 1
  br label %for.inc308

for.inc308:                                       ; preds = %for.body306
  %161 = load ptr, ptr %pre, align 8
  %incdec.ptr309 = getelementptr inbounds nuw i8, ptr %161, i32 1
  store ptr %incdec.ptr309, ptr %pre, align 8
  br label %for.cond302, !llvm.loop !14

for.end310:                                       ; preds = %for.cond302
  br label %if.end311

if.end311:                                        ; preds = %for.end310, %if.then293
  br label %if.end312

if.end312:                                        ; preds = %if.end311, %land.lhs.true290, %if.end287
  %arrayidx313 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 1023
  %162 = load ptr, ptr %bufpt, align 8
  %sub.ptr.lhs.cast314 = ptrtoint ptr %arrayidx313 to i64
  %sub.ptr.rhs.cast315 = ptrtoint ptr %162 to i64
  %sub.ptr.sub316 = sub i64 %sub.ptr.lhs.cast314, %sub.ptr.rhs.cast315
  %conv317 = trunc i64 %sub.ptr.sub316 to i32
  store i32 %conv317, ptr %length, align 4
  br label %sw.epilog794

sw.bb318:                                         ; preds = %for.end, %for.end, %for.end
  %163 = load ptr, ptr %ap.addr, align 8
  %fp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %163, i32 0, i32 1
  %fp_offset = load i32, ptr %fp_offset_p, align 4
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg319, label %vaarg.in_mem321

vaarg.in_reg319:                                  ; preds = %sw.bb318
  %164 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %163, i32 0, i32 3
  %reg_save_area320 = load ptr, ptr %164, align 8
  %165 = getelementptr i8, ptr %reg_save_area320, i32 %fp_offset
  %166 = add i32 %fp_offset, 16
  store i32 %166, ptr %fp_offset_p, align 4
  br label %vaarg.end325

vaarg.in_mem321:                                  ; preds = %sw.bb318
  %overflow_arg_area_p322 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %163, i32 0, i32 2
  %overflow_arg_area323 = load ptr, ptr %overflow_arg_area_p322, align 8
  %overflow_arg_area.next324 = getelementptr i8, ptr %overflow_arg_area323, i32 8
  store ptr %overflow_arg_area.next324, ptr %overflow_arg_area_p322, align 8
  br label %vaarg.end325

vaarg.end325:                                     ; preds = %vaarg.in_mem321, %vaarg.in_reg319
  %vaarg.addr326 = phi ptr [ %165, %vaarg.in_reg319 ], [ %overflow_arg_area323, %vaarg.in_mem321 ]
  %167 = load double, ptr %vaarg.addr326, align 8
  %conv327 = fpext double %167 to x86_fp80
  store x86_fp80 %conv327, ptr %realvalue, align 16
  %168 = load i32, ptr %precision, align 4
  %cmp328 = icmp slt i32 %168, 0
  br i1 %cmp328, label %if.then330, label %if.end331

if.then330:                                       ; preds = %vaarg.end325
  store i32 6, ptr %precision, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.then330, %vaarg.end325
  %169 = load i32, ptr %precision, align 4
  %cmp332 = icmp sgt i32 %169, 984
  br i1 %cmp332, label %if.then334, label %if.end335

if.then334:                                       ; preds = %if.end331
  store i32 984, ptr %precision, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.then334, %if.end331
  %170 = load x86_fp80, ptr %realvalue, align 16
  %cmp336 = fcmp olt x86_fp80 %170, 0xK00000000000000000000
  br i1 %cmp336, label %if.then338, label %if.else339

if.then338:                                       ; preds = %if.end335
  %171 = load x86_fp80, ptr %realvalue, align 16
  %fneg = fneg x86_fp80 %171
  store x86_fp80 %fneg, ptr %realvalue, align 16
  store i8 45, ptr %prefix, align 1
  br label %if.end348

if.else339:                                       ; preds = %if.end335
  %172 = load i8, ptr %flag_plussign, align 1
  %tobool340 = icmp ne i8 %172, 0
  br i1 %tobool340, label %if.then341, label %if.else342

if.then341:                                       ; preds = %if.else339
  store i8 43, ptr %prefix, align 1
  br label %if.end347

if.else342:                                       ; preds = %if.else339
  %173 = load i8, ptr %flag_blanksign, align 1
  %tobool343 = icmp ne i8 %173, 0
  br i1 %tobool343, label %if.then344, label %if.else345

if.then344:                                       ; preds = %if.else342
  store i8 32, ptr %prefix, align 1
  br label %if.end346

if.else345:                                       ; preds = %if.else342
  store i8 0, ptr %prefix, align 1
  br label %if.end346

if.end346:                                        ; preds = %if.else345, %if.then344
  br label %if.end347

if.end347:                                        ; preds = %if.end346, %if.then341
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %if.then338
  %174 = load ptr, ptr %infop, align 8
  %type349 = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %174, i32 0, i32 3
  %175 = load i8, ptr %type349, align 8
  %conv350 = zext i8 %175 to i32
  %cmp351 = icmp eq i32 %conv350, 4
  br i1 %cmp351, label %land.lhs.true353, label %if.end358

land.lhs.true353:                                 ; preds = %if.end348
  %176 = load i32, ptr %precision, align 4
  %cmp354 = icmp sgt i32 %176, 0
  br i1 %cmp354, label %if.then356, label %if.end358

if.then356:                                       ; preds = %land.lhs.true353
  %177 = load i32, ptr %precision, align 4
  %dec357 = add nsw i32 %177, -1
  store i32 %dec357, ptr %precision, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.then356, %land.lhs.true353, %if.end348
  store double 0.000000e+00, ptr %rounder, align 8
  %178 = load i32, ptr %precision, align 4
  store i32 %178, ptr %idx, align 4
  store double 5.000000e-01, ptr %rounder, align 8
  br label %for.cond359

for.cond359:                                      ; preds = %for.inc363, %if.end358
  %179 = load i32, ptr %idx, align 4
  %cmp360 = icmp sgt i32 %179, 0
  br i1 %cmp360, label %for.body362, label %for.end366

for.body362:                                      ; preds = %for.cond359
  br label %for.inc363

for.inc363:                                       ; preds = %for.body362
  %180 = load i32, ptr %idx, align 4
  %dec364 = add nsw i32 %180, -1
  store i32 %dec364, ptr %idx, align 4
  %181 = load double, ptr %rounder, align 8
  %mul365 = fmul double %181, 1.000000e-01
  store double %mul365, ptr %rounder, align 8
  br label %for.cond359, !llvm.loop !15

for.end366:                                       ; preds = %for.cond359
  %182 = load ptr, ptr %infop, align 8
  %type367 = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %182, i32 0, i32 3
  %183 = load i8, ptr %type367, align 8
  %conv368 = zext i8 %183 to i32
  %cmp369 = icmp eq i32 %conv368, 2
  br i1 %cmp369, label %if.then371, label %if.end374

if.then371:                                       ; preds = %for.end366
  %184 = load double, ptr %rounder, align 8
  %conv372 = fpext double %184 to x86_fp80
  %185 = load x86_fp80, ptr %realvalue, align 16
  %add373 = fadd x86_fp80 %185, %conv372
  store x86_fp80 %add373, ptr %realvalue, align 16
  br label %if.end374

if.end374:                                        ; preds = %if.then371, %for.end366
  store i32 0, ptr %exp, align 4
  %186 = load x86_fp80, ptr %realvalue, align 16
  %cmp375 = fcmp ogt x86_fp80 %186, 0xK00000000000000000000
  br i1 %cmp375, label %if.then377, label %if.end429

if.then377:                                       ; preds = %if.end374
  br label %while.cond378

while.cond378:                                    ; preds = %while.body385, %if.then377
  %187 = load x86_fp80, ptr %realvalue, align 16
  %cmp379 = fcmp oge x86_fp80 %187, 0xK4019BEBC200000000000
  br i1 %cmp379, label %land.rhs381, label %land.end384

land.rhs381:                                      ; preds = %while.cond378
  %188 = load i32, ptr %exp, align 4
  %cmp382 = icmp sle i32 %188, 350
  br label %land.end384

land.end384:                                      ; preds = %land.rhs381, %while.cond378
  %189 = phi i1 [ false, %while.cond378 ], [ %cmp382, %land.rhs381 ]
  br i1 %189, label %while.body385, label %while.end388

while.body385:                                    ; preds = %land.end384
  %190 = load x86_fp80, ptr %realvalue, align 16
  %mul386 = fmul x86_fp80 %190, 0xK3FE4ABCC77118461D000
  store x86_fp80 %mul386, ptr %realvalue, align 16
  %191 = load i32, ptr %exp, align 4
  %add387 = add nsw i32 %191, 8
  store i32 %add387, ptr %exp, align 4
  br label %while.cond378, !llvm.loop !16

while.end388:                                     ; preds = %land.end384
  br label %while.cond389

while.cond389:                                    ; preds = %while.body396, %while.end388
  %192 = load x86_fp80, ptr %realvalue, align 16
  %cmp390 = fcmp oge x86_fp80 %192, 0xK4002A000000000000000
  br i1 %cmp390, label %land.rhs392, label %land.end395

land.rhs392:                                      ; preds = %while.cond389
  %193 = load i32, ptr %exp, align 4
  %cmp393 = icmp sle i32 %193, 350
  br label %land.end395

land.end395:                                      ; preds = %land.rhs392, %while.cond389
  %194 = phi i1 [ false, %while.cond389 ], [ %cmp393, %land.rhs392 ]
  br i1 %194, label %while.body396, label %while.end399

while.body396:                                    ; preds = %land.end395
  %195 = load x86_fp80, ptr %realvalue, align 16
  %mul397 = fmul x86_fp80 %195, 0xK3FFBCCCCCCCCCCCCD000
  store x86_fp80 %mul397, ptr %realvalue, align 16
  %196 = load i32, ptr %exp, align 4
  %inc398 = add nsw i32 %196, 1
  store i32 %inc398, ptr %exp, align 4
  br label %while.cond389, !llvm.loop !17

while.end399:                                     ; preds = %land.end395
  br label %while.cond400

while.cond400:                                    ; preds = %while.body407, %while.end399
  %197 = load x86_fp80, ptr %realvalue, align 16
  %cmp401 = fcmp olt x86_fp80 %197, 0xK3FE4ABCC77118461D000
  br i1 %cmp401, label %land.rhs403, label %land.end406

land.rhs403:                                      ; preds = %while.cond400
  %198 = load i32, ptr %exp, align 4
  %cmp404 = icmp sge i32 %198, -350
  br label %land.end406

land.end406:                                      ; preds = %land.rhs403, %while.cond400
  %199 = phi i1 [ false, %while.cond400 ], [ %cmp404, %land.rhs403 ]
  br i1 %199, label %while.body407, label %while.end410

while.body407:                                    ; preds = %land.end406
  %200 = load x86_fp80, ptr %realvalue, align 16
  %mul408 = fmul x86_fp80 %200, 0xK4019BEBC200000000000
  store x86_fp80 %mul408, ptr %realvalue, align 16
  %201 = load i32, ptr %exp, align 4
  %sub409 = sub nsw i32 %201, 8
  store i32 %sub409, ptr %exp, align 4
  br label %while.cond400, !llvm.loop !18

while.end410:                                     ; preds = %land.end406
  br label %while.cond411

while.cond411:                                    ; preds = %while.body418, %while.end410
  %202 = load x86_fp80, ptr %realvalue, align 16
  %cmp412 = fcmp olt x86_fp80 %202, 0xK3FFF8000000000000000
  br i1 %cmp412, label %land.rhs414, label %land.end417

land.rhs414:                                      ; preds = %while.cond411
  %203 = load i32, ptr %exp, align 4
  %cmp415 = icmp sge i32 %203, -350
  br label %land.end417

land.end417:                                      ; preds = %land.rhs414, %while.cond411
  %204 = phi i1 [ false, %while.cond411 ], [ %cmp415, %land.rhs414 ]
  br i1 %204, label %while.body418, label %while.end421

while.body418:                                    ; preds = %land.end417
  %205 = load x86_fp80, ptr %realvalue, align 16
  %mul419 = fmul x86_fp80 %205, 0xK4002A000000000000000
  store x86_fp80 %mul419, ptr %realvalue, align 16
  %206 = load i32, ptr %exp, align 4
  %dec420 = add nsw i32 %206, -1
  store i32 %dec420, ptr %exp, align 4
  br label %while.cond411, !llvm.loop !19

while.end421:                                     ; preds = %land.end417
  %207 = load i32, ptr %exp, align 4
  %cmp422 = icmp sgt i32 %207, 350
  br i1 %cmp422, label %if.then427, label %lor.lhs.false424

lor.lhs.false424:                                 ; preds = %while.end421
  %208 = load i32, ptr %exp, align 4
  %cmp425 = icmp slt i32 %208, -350
  br i1 %cmp425, label %if.then427, label %if.end428

if.then427:                                       ; preds = %lor.lhs.false424, %while.end421
  store ptr @.str.60, ptr %bufpt, align 8
  store i32 3, ptr %length, align 4
  br label %sw.epilog794

if.end428:                                        ; preds = %lor.lhs.false424
  br label %if.end429

if.end429:                                        ; preds = %if.end428, %if.end374
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %bufpt, align 8
  %209 = load i8, ptr %xtype, align 1
  %conv430 = zext i8 %209 to i32
  %cmp431 = icmp eq i32 %conv430, 3
  %conv432 = zext i1 %cmp431 to i32
  %conv433 = trunc i32 %conv432 to i8
  store i8 %conv433, ptr %flag_exp, align 1
  %210 = load i8, ptr %xtype, align 1
  %conv434 = zext i8 %210 to i32
  %cmp435 = icmp ne i32 %conv434, 2
  br i1 %cmp435, label %if.then437, label %if.end446

if.then437:                                       ; preds = %if.end429
  %211 = load double, ptr %rounder, align 8
  %conv438 = fpext double %211 to x86_fp80
  %212 = load x86_fp80, ptr %realvalue, align 16
  %add439 = fadd x86_fp80 %212, %conv438
  store x86_fp80 %add439, ptr %realvalue, align 16
  %213 = load x86_fp80, ptr %realvalue, align 16
  %cmp440 = fcmp oge x86_fp80 %213, 0xK4002A000000000000000
  br i1 %cmp440, label %if.then442, label %if.end445

if.then442:                                       ; preds = %if.then437
  %214 = load x86_fp80, ptr %realvalue, align 16
  %mul443 = fmul x86_fp80 %214, 0xK3FFBCCCCCCCCCCCCD000
  store x86_fp80 %mul443, ptr %realvalue, align 16
  %215 = load i32, ptr %exp, align 4
  %inc444 = add nsw i32 %215, 1
  store i32 %inc444, ptr %exp, align 4
  br label %if.end445

if.end445:                                        ; preds = %if.then442, %if.then437
  br label %if.end446

if.end446:                                        ; preds = %if.end445, %if.end429
  %216 = load i8, ptr %xtype, align 1
  %conv447 = zext i8 %216 to i32
  %cmp448 = icmp eq i32 %conv447, 4
  br i1 %cmp448, label %if.then450, label %if.else462

if.then450:                                       ; preds = %if.end446
  %217 = load i8, ptr %flag_alternateform, align 1
  %tobool451 = icmp ne i8 %217, 0
  %lnot = xor i1 %tobool451, true
  %lnot.ext = zext i1 %lnot to i32
  %conv452 = trunc i32 %lnot.ext to i8
  store i8 %conv452, ptr %flag_rtz, align 1
  %218 = load i32, ptr %exp, align 4
  %cmp453 = icmp slt i32 %218, -4
  br i1 %cmp453, label %if.then458, label %lor.lhs.false455

lor.lhs.false455:                                 ; preds = %if.then450
  %219 = load i32, ptr %exp, align 4
  %220 = load i32, ptr %precision, align 4
  %cmp456 = icmp sgt i32 %219, %220
  br i1 %cmp456, label %if.then458, label %if.else459

if.then458:                                       ; preds = %lor.lhs.false455, %if.then450
  store i8 3, ptr %xtype, align 1
  br label %if.end461

if.else459:                                       ; preds = %lor.lhs.false455
  %221 = load i32, ptr %precision, align 4
  %222 = load i32, ptr %exp, align 4
  %sub460 = sub nsw i32 %221, %222
  store i32 %sub460, ptr %precision, align 4
  store i8 2, ptr %xtype, align 1
  br label %if.end461

if.end461:                                        ; preds = %if.else459, %if.then458
  br label %if.end463

if.else462:                                       ; preds = %if.end446
  store i8 0, ptr %flag_rtz, align 1
  br label %if.end463

if.end463:                                        ; preds = %if.else462, %if.end461
  store i32 0, ptr %nsd, align 4
  %223 = load i8, ptr %xtype, align 1
  %conv464 = zext i8 %223 to i32
  %cmp465 = icmp eq i32 %conv464, 2
  br i1 %cmp465, label %land.lhs.true467, label %if.else555

land.lhs.true467:                                 ; preds = %if.end463
  %224 = load i32, ptr %exp, align 4
  %225 = load i32, ptr %precision, align 4
  %add468 = add nsw i32 %224, %225
  %cmp469 = icmp slt i32 %add468, 994
  br i1 %cmp469, label %if.then471, label %if.else555

if.then471:                                       ; preds = %land.lhs.true467
  %226 = load i32, ptr %precision, align 4
  %cmp472 = icmp sgt i32 %226, 0
  br i1 %cmp472, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then471
  %227 = load i8, ptr %flag_alternateform, align 1
  %conv474 = zext i8 %227 to i32
  %tobool475 = icmp ne i32 %conv474, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then471
  %228 = phi i1 [ true, %if.then471 ], [ %tobool475, %lor.rhs ]
  %lor.ext = zext i1 %228 to i32
  %conv476 = trunc i32 %lor.ext to i8
  store i8 %conv476, ptr %flag_dp, align 1
  %229 = load i8, ptr %prefix, align 1
  %tobool477 = icmp ne i8 %229, 0
  br i1 %tobool477, label %if.then478, label %if.end480

if.then478:                                       ; preds = %lor.end
  %230 = load i8, ptr %prefix, align 1
  %231 = load ptr, ptr %bufpt, align 8
  %incdec.ptr479 = getelementptr inbounds nuw i8, ptr %231, i32 1
  store ptr %incdec.ptr479, ptr %bufpt, align 8
  store i8 %230, ptr %231, align 1
  br label %if.end480

if.end480:                                        ; preds = %if.then478, %lor.end
  %232 = load i32, ptr %exp, align 4
  %cmp481 = icmp slt i32 %232, 0
  br i1 %cmp481, label %if.then483, label %if.else485

if.then483:                                       ; preds = %if.end480
  %233 = load ptr, ptr %bufpt, align 8
  %incdec.ptr484 = getelementptr inbounds nuw i8, ptr %233, i32 1
  store ptr %incdec.ptr484, ptr %bufpt, align 8
  store i8 48, ptr %233, align 1
  br label %if.end496

if.else485:                                       ; preds = %if.end480
  br label %for.cond486

for.cond486:                                      ; preds = %for.inc493, %if.else485
  %234 = load i32, ptr %exp, align 4
  %cmp487 = icmp sge i32 %234, 0
  br i1 %cmp487, label %for.body489, label %for.end495

for.body489:                                      ; preds = %for.cond486
  %call490 = call i32 @getdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %conv491 = trunc i32 %call490 to i8
  %235 = load ptr, ptr %bufpt, align 8
  %incdec.ptr492 = getelementptr inbounds nuw i8, ptr %235, i32 1
  store ptr %incdec.ptr492, ptr %bufpt, align 8
  store i8 %conv491, ptr %235, align 1
  br label %for.inc493

for.inc493:                                       ; preds = %for.body489
  %236 = load i32, ptr %exp, align 4
  %dec494 = add nsw i32 %236, -1
  store i32 %dec494, ptr %exp, align 4
  br label %for.cond486, !llvm.loop !20

for.end495:                                       ; preds = %for.cond486
  br label %if.end496

if.end496:                                        ; preds = %for.end495, %if.then483
  %237 = load i8, ptr %flag_dp, align 1
  %tobool497 = icmp ne i8 %237, 0
  br i1 %tobool497, label %if.then498, label %if.end500

if.then498:                                       ; preds = %if.end496
  %238 = load ptr, ptr %bufpt, align 8
  %incdec.ptr499 = getelementptr inbounds nuw i8, ptr %238, i32 1
  store ptr %incdec.ptr499, ptr %bufpt, align 8
  store i8 46, ptr %238, align 1
  br label %if.end500

if.end500:                                        ; preds = %if.then498, %if.end496
  %239 = load i32, ptr %exp, align 4
  %inc501 = add nsw i32 %239, 1
  store i32 %inc501, ptr %exp, align 4
  br label %for.cond502

for.cond502:                                      ; preds = %for.inc511, %if.end500
  %240 = load i32, ptr %exp, align 4
  %cmp503 = icmp slt i32 %240, 0
  br i1 %cmp503, label %land.rhs505, label %land.end508

land.rhs505:                                      ; preds = %for.cond502
  %241 = load i32, ptr %precision, align 4
  %cmp506 = icmp sgt i32 %241, 0
  br label %land.end508

land.end508:                                      ; preds = %land.rhs505, %for.cond502
  %242 = phi i1 [ false, %for.cond502 ], [ %cmp506, %land.rhs505 ]
  br i1 %242, label %for.body509, label %for.end514

for.body509:                                      ; preds = %land.end508
  %243 = load ptr, ptr %bufpt, align 8
  %incdec.ptr510 = getelementptr inbounds nuw i8, ptr %243, i32 1
  store ptr %incdec.ptr510, ptr %bufpt, align 8
  store i8 48, ptr %243, align 1
  br label %for.inc511

for.inc511:                                       ; preds = %for.body509
  %244 = load i32, ptr %precision, align 4
  %dec512 = add nsw i32 %244, -1
  store i32 %dec512, ptr %precision, align 4
  %245 = load i32, ptr %exp, align 4
  %inc513 = add nsw i32 %245, 1
  store i32 %inc513, ptr %exp, align 4
  br label %for.cond502, !llvm.loop !21

for.end514:                                       ; preds = %land.end508
  br label %while.cond515

while.cond515:                                    ; preds = %while.body519, %for.end514
  %246 = load i32, ptr %precision, align 4
  %dec516 = add nsw i32 %246, -1
  store i32 %dec516, ptr %precision, align 4
  %cmp517 = icmp sgt i32 %246, 0
  br i1 %cmp517, label %while.body519, label %while.end523

while.body519:                                    ; preds = %while.cond515
  %call520 = call i32 @getdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %conv521 = trunc i32 %call520 to i8
  %247 = load ptr, ptr %bufpt, align 8
  %incdec.ptr522 = getelementptr inbounds nuw i8, ptr %247, i32 1
  store ptr %incdec.ptr522, ptr %bufpt, align 8
  store i8 %conv521, ptr %247, align 1
  br label %while.cond515, !llvm.loop !22

while.end523:                                     ; preds = %while.cond515
  %248 = load ptr, ptr %bufpt, align 8
  %incdec.ptr524 = getelementptr inbounds i8, ptr %248, i32 -1
  store ptr %incdec.ptr524, ptr %bufpt, align 8
  store i8 0, ptr %248, align 1
  %249 = load i8, ptr %flag_rtz, align 1
  %conv525 = zext i8 %249 to i32
  %tobool526 = icmp ne i32 %conv525, 0
  br i1 %tobool526, label %land.lhs.true527, label %if.end553

land.lhs.true527:                                 ; preds = %while.end523
  %250 = load i8, ptr %flag_dp, align 1
  %conv528 = zext i8 %250 to i32
  %tobool529 = icmp ne i32 %conv528, 0
  br i1 %tobool529, label %if.then530, label %if.end553

if.then530:                                       ; preds = %land.lhs.true527
  br label %while.cond531

while.cond531:                                    ; preds = %while.body540, %if.then530
  %251 = load ptr, ptr %bufpt, align 8
  %arraydecay532 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %cmp533 = icmp uge ptr %251, %arraydecay532
  br i1 %cmp533, label %land.rhs535, label %land.end539

land.rhs535:                                      ; preds = %while.cond531
  %252 = load ptr, ptr %bufpt, align 8
  %253 = load i8, ptr %252, align 1
  %conv536 = sext i8 %253 to i32
  %cmp537 = icmp eq i32 %conv536, 48
  br label %land.end539

land.end539:                                      ; preds = %land.rhs535, %while.cond531
  %254 = phi i1 [ false, %while.cond531 ], [ %cmp537, %land.rhs535 ]
  br i1 %254, label %while.body540, label %while.end542

while.body540:                                    ; preds = %land.end539
  %255 = load ptr, ptr %bufpt, align 8
  %incdec.ptr541 = getelementptr inbounds i8, ptr %255, i32 -1
  store ptr %incdec.ptr541, ptr %bufpt, align 8
  store i8 0, ptr %255, align 1
  br label %while.cond531, !llvm.loop !23

while.end542:                                     ; preds = %land.end539
  %256 = load ptr, ptr %bufpt, align 8
  %arraydecay543 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %cmp544 = icmp uge ptr %256, %arraydecay543
  br i1 %cmp544, label %land.lhs.true546, label %if.end552

land.lhs.true546:                                 ; preds = %while.end542
  %257 = load ptr, ptr %bufpt, align 8
  %258 = load i8, ptr %257, align 1
  %conv547 = sext i8 %258 to i32
  %cmp548 = icmp eq i32 %conv547, 46
  br i1 %cmp548, label %if.then550, label %if.end552

if.then550:                                       ; preds = %land.lhs.true546
  %259 = load ptr, ptr %bufpt, align 8
  %incdec.ptr551 = getelementptr inbounds i8, ptr %259, i32 -1
  store ptr %incdec.ptr551, ptr %bufpt, align 8
  store i8 0, ptr %259, align 1
  br label %if.end552

if.end552:                                        ; preds = %if.then550, %land.lhs.true546, %while.end542
  br label %if.end553

if.end553:                                        ; preds = %if.end552, %land.lhs.true527, %while.end523
  %260 = load ptr, ptr %bufpt, align 8
  %incdec.ptr554 = getelementptr inbounds nuw i8, ptr %260, i32 1
  store ptr %incdec.ptr554, ptr %bufpt, align 8
  br label %if.end649

if.else555:                                       ; preds = %land.lhs.true467, %if.end463
  %261 = load i32, ptr %precision, align 4
  %cmp556 = icmp sgt i32 %261, 0
  br i1 %cmp556, label %lor.end561, label %lor.rhs558

lor.rhs558:                                       ; preds = %if.else555
  %262 = load i8, ptr %flag_alternateform, align 1
  %conv559 = zext i8 %262 to i32
  %tobool560 = icmp ne i32 %conv559, 0
  br label %lor.end561

lor.end561:                                       ; preds = %lor.rhs558, %if.else555
  %263 = phi i1 [ true, %if.else555 ], [ %tobool560, %lor.rhs558 ]
  %lor.ext562 = zext i1 %263 to i32
  %conv563 = trunc i32 %lor.ext562 to i8
  store i8 %conv563, ptr %flag_dp, align 1
  %264 = load i8, ptr %prefix, align 1
  %tobool564 = icmp ne i8 %264, 0
  br i1 %tobool564, label %if.then565, label %if.end567

if.then565:                                       ; preds = %lor.end561
  %265 = load i8, ptr %prefix, align 1
  %266 = load ptr, ptr %bufpt, align 8
  %incdec.ptr566 = getelementptr inbounds nuw i8, ptr %266, i32 1
  store ptr %incdec.ptr566, ptr %bufpt, align 8
  store i8 %265, ptr %266, align 1
  br label %if.end567

if.end567:                                        ; preds = %if.then565, %lor.end561
  %call568 = call i32 @getdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %conv569 = trunc i32 %call568 to i8
  %267 = load ptr, ptr %bufpt, align 8
  %incdec.ptr570 = getelementptr inbounds nuw i8, ptr %267, i32 1
  store ptr %incdec.ptr570, ptr %bufpt, align 8
  store i8 %conv569, ptr %267, align 1
  %268 = load i8, ptr %flag_dp, align 1
  %tobool571 = icmp ne i8 %268, 0
  br i1 %tobool571, label %if.then572, label %if.end574

if.then572:                                       ; preds = %if.end567
  %269 = load ptr, ptr %bufpt, align 8
  %incdec.ptr573 = getelementptr inbounds nuw i8, ptr %269, i32 1
  store ptr %incdec.ptr573, ptr %bufpt, align 8
  store i8 46, ptr %269, align 1
  br label %if.end574

if.end574:                                        ; preds = %if.then572, %if.end567
  br label %while.cond575

while.cond575:                                    ; preds = %while.body579, %if.end574
  %270 = load i32, ptr %precision, align 4
  %dec576 = add nsw i32 %270, -1
  store i32 %dec576, ptr %precision, align 4
  %cmp577 = icmp sgt i32 %270, 0
  br i1 %cmp577, label %while.body579, label %while.end583

while.body579:                                    ; preds = %while.cond575
  %call580 = call i32 @getdigit(ptr noundef %realvalue, ptr noundef %nsd)
  %conv581 = trunc i32 %call580 to i8
  %271 = load ptr, ptr %bufpt, align 8
  %incdec.ptr582 = getelementptr inbounds nuw i8, ptr %271, i32 1
  store ptr %incdec.ptr582, ptr %bufpt, align 8
  store i8 %conv581, ptr %271, align 1
  br label %while.cond575, !llvm.loop !24

while.end583:                                     ; preds = %while.cond575
  %272 = load ptr, ptr %bufpt, align 8
  %incdec.ptr584 = getelementptr inbounds i8, ptr %272, i32 -1
  store ptr %incdec.ptr584, ptr %bufpt, align 8
  %273 = load i8, ptr %flag_rtz, align 1
  %conv585 = zext i8 %273 to i32
  %tobool586 = icmp ne i32 %conv585, 0
  br i1 %tobool586, label %land.lhs.true587, label %if.end613

land.lhs.true587:                                 ; preds = %while.end583
  %274 = load i8, ptr %flag_dp, align 1
  %conv588 = zext i8 %274 to i32
  %tobool589 = icmp ne i32 %conv588, 0
  br i1 %tobool589, label %if.then590, label %if.end613

if.then590:                                       ; preds = %land.lhs.true587
  br label %while.cond591

while.cond591:                                    ; preds = %while.body600, %if.then590
  %275 = load ptr, ptr %bufpt, align 8
  %arraydecay592 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %cmp593 = icmp uge ptr %275, %arraydecay592
  br i1 %cmp593, label %land.rhs595, label %land.end599

land.rhs595:                                      ; preds = %while.cond591
  %276 = load ptr, ptr %bufpt, align 8
  %277 = load i8, ptr %276, align 1
  %conv596 = sext i8 %277 to i32
  %cmp597 = icmp eq i32 %conv596, 48
  br label %land.end599

land.end599:                                      ; preds = %land.rhs595, %while.cond591
  %278 = phi i1 [ false, %while.cond591 ], [ %cmp597, %land.rhs595 ]
  br i1 %278, label %while.body600, label %while.end602

while.body600:                                    ; preds = %land.end599
  %279 = load ptr, ptr %bufpt, align 8
  %incdec.ptr601 = getelementptr inbounds i8, ptr %279, i32 -1
  store ptr %incdec.ptr601, ptr %bufpt, align 8
  store i8 0, ptr %279, align 1
  br label %while.cond591, !llvm.loop !25

while.end602:                                     ; preds = %land.end599
  %280 = load ptr, ptr %bufpt, align 8
  %arraydecay603 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %cmp604 = icmp uge ptr %280, %arraydecay603
  br i1 %cmp604, label %land.lhs.true606, label %if.end612

land.lhs.true606:                                 ; preds = %while.end602
  %281 = load ptr, ptr %bufpt, align 8
  %282 = load i8, ptr %281, align 1
  %conv607 = sext i8 %282 to i32
  %cmp608 = icmp eq i32 %conv607, 46
  br i1 %cmp608, label %if.then610, label %if.end612

if.then610:                                       ; preds = %land.lhs.true606
  %283 = load ptr, ptr %bufpt, align 8
  %incdec.ptr611 = getelementptr inbounds i8, ptr %283, i32 -1
  store ptr %incdec.ptr611, ptr %bufpt, align 8
  store i8 0, ptr %283, align 1
  br label %if.end612

if.end612:                                        ; preds = %if.then610, %land.lhs.true606, %while.end602
  br label %if.end613

if.end613:                                        ; preds = %if.end612, %land.lhs.true587, %while.end583
  %284 = load ptr, ptr %bufpt, align 8
  %incdec.ptr614 = getelementptr inbounds nuw i8, ptr %284, i32 1
  store ptr %incdec.ptr614, ptr %bufpt, align 8
  %285 = load i32, ptr %exp, align 4
  %tobool615 = icmp ne i32 %285, 0
  br i1 %tobool615, label %if.then619, label %lor.lhs.false616

lor.lhs.false616:                                 ; preds = %if.end613
  %286 = load i8, ptr %flag_exp, align 1
  %conv617 = zext i8 %286 to i32
  %tobool618 = icmp ne i32 %conv617, 0
  br i1 %tobool618, label %if.then619, label %if.end648

if.then619:                                       ; preds = %lor.lhs.false616, %if.end613
  %287 = load ptr, ptr %infop, align 8
  %charset620 = getelementptr inbounds nuw %struct.SyFmtInfo, ptr %287, i32 0, i32 4
  %288 = load ptr, ptr %charset620, align 8
  %arrayidx621 = getelementptr inbounds i8, ptr %288, i64 0
  %289 = load i8, ptr %arrayidx621, align 1
  %290 = load ptr, ptr %bufpt, align 8
  %incdec.ptr622 = getelementptr inbounds nuw i8, ptr %290, i32 1
  store ptr %incdec.ptr622, ptr %bufpt, align 8
  store i8 %289, ptr %290, align 1
  %291 = load i32, ptr %exp, align 4
  %cmp623 = icmp slt i32 %291, 0
  br i1 %cmp623, label %if.then625, label %if.else628

if.then625:                                       ; preds = %if.then619
  %292 = load ptr, ptr %bufpt, align 8
  %incdec.ptr626 = getelementptr inbounds nuw i8, ptr %292, i32 1
  store ptr %incdec.ptr626, ptr %bufpt, align 8
  store i8 45, ptr %292, align 1
  %293 = load i32, ptr %exp, align 4
  %sub627 = sub nsw i32 0, %293
  store i32 %sub627, ptr %exp, align 4
  br label %if.end630

if.else628:                                       ; preds = %if.then619
  %294 = load ptr, ptr %bufpt, align 8
  %incdec.ptr629 = getelementptr inbounds nuw i8, ptr %294, i32 1
  store ptr %incdec.ptr629, ptr %bufpt, align 8
  store i8 43, ptr %294, align 1
  br label %if.end630

if.end630:                                        ; preds = %if.else628, %if.then625
  %295 = load i32, ptr %exp, align 4
  %cmp631 = icmp sge i32 %295, 100
  br i1 %cmp631, label %if.then633, label %if.end639

if.then633:                                       ; preds = %if.end630
  %296 = load i32, ptr %exp, align 4
  %div634 = sdiv i32 %296, 100
  %add635 = add nsw i32 %div634, 48
  %conv636 = trunc i32 %add635 to i8
  %297 = load ptr, ptr %bufpt, align 8
  %incdec.ptr637 = getelementptr inbounds nuw i8, ptr %297, i32 1
  store ptr %incdec.ptr637, ptr %bufpt, align 8
  store i8 %conv636, ptr %297, align 1
  %298 = load i32, ptr %exp, align 4
  %rem638 = srem i32 %298, 100
  store i32 %rem638, ptr %exp, align 4
  br label %if.end639

if.end639:                                        ; preds = %if.then633, %if.end630
  %299 = load i32, ptr %exp, align 4
  %div640 = sdiv i32 %299, 10
  %add641 = add nsw i32 %div640, 48
  %conv642 = trunc i32 %add641 to i8
  %300 = load ptr, ptr %bufpt, align 8
  %incdec.ptr643 = getelementptr inbounds nuw i8, ptr %300, i32 1
  store ptr %incdec.ptr643, ptr %bufpt, align 8
  store i8 %conv642, ptr %300, align 1
  %301 = load i32, ptr %exp, align 4
  %rem644 = srem i32 %301, 10
  %add645 = add nsw i32 %rem644, 48
  %conv646 = trunc i32 %add645 to i8
  %302 = load ptr, ptr %bufpt, align 8
  %incdec.ptr647 = getelementptr inbounds nuw i8, ptr %302, i32 1
  store ptr %incdec.ptr647, ptr %bufpt, align 8
  store i8 %conv646, ptr %302, align 1
  br label %if.end648

if.end648:                                        ; preds = %if.end639, %lor.lhs.false616
  br label %if.end649

if.end649:                                        ; preds = %if.end648, %if.end553
  %303 = load ptr, ptr %bufpt, align 8
  %arraydecay650 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %sub.ptr.lhs.cast651 = ptrtoint ptr %303 to i64
  %sub.ptr.rhs.cast652 = ptrtoint ptr %arraydecay650 to i64
  %sub.ptr.sub653 = sub i64 %sub.ptr.lhs.cast651, %sub.ptr.rhs.cast652
  %conv654 = trunc i64 %sub.ptr.sub653 to i32
  store i32 %conv654, ptr %length, align 4
  %arraydecay655 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay655, ptr %bufpt, align 8
  %304 = load i8, ptr %flag_zeropad, align 1
  %conv656 = zext i8 %304 to i32
  %tobool657 = icmp ne i32 %conv656, 0
  br i1 %tobool657, label %land.lhs.true658, label %if.end688

land.lhs.true658:                                 ; preds = %if.end649
  %305 = load i8, ptr %flag_leftjustify, align 1
  %tobool659 = icmp ne i8 %305, 0
  br i1 %tobool659, label %if.end688, label %land.lhs.true660

land.lhs.true660:                                 ; preds = %land.lhs.true658
  %306 = load i32, ptr %length, align 4
  %307 = load i32, ptr %width, align 4
  %cmp661 = icmp slt i32 %306, %307
  br i1 %cmp661, label %if.then663, label %if.end688

if.then663:                                       ; preds = %land.lhs.true660
  %308 = load i32, ptr %width, align 4
  %309 = load i32, ptr %length, align 4
  %sub664 = sub nsw i32 %308, %309
  store i32 %sub664, ptr %nPad, align 4
  %310 = load i32, ptr %width, align 4
  store i32 %310, ptr %i, align 4
  br label %for.cond665

for.cond665:                                      ; preds = %for.inc674, %if.then663
  %311 = load i32, ptr %i, align 4
  %312 = load i32, ptr %nPad, align 4
  %cmp666 = icmp sge i32 %311, %312
  br i1 %cmp666, label %for.body668, label %for.end676

for.body668:                                      ; preds = %for.cond665
  %313 = load ptr, ptr %bufpt, align 8
  %314 = load i32, ptr %i, align 4
  %315 = load i32, ptr %nPad, align 4
  %sub669 = sub nsw i32 %314, %315
  %idxprom670 = sext i32 %sub669 to i64
  %arrayidx671 = getelementptr inbounds i8, ptr %313, i64 %idxprom670
  %316 = load i8, ptr %arrayidx671, align 1
  %317 = load ptr, ptr %bufpt, align 8
  %318 = load i32, ptr %i, align 4
  %idxprom672 = sext i32 %318 to i64
  %arrayidx673 = getelementptr inbounds i8, ptr %317, i64 %idxprom672
  store i8 %316, ptr %arrayidx673, align 1
  br label %for.inc674

for.inc674:                                       ; preds = %for.body668
  %319 = load i32, ptr %i, align 4
  %dec675 = add nsw i32 %319, -1
  store i32 %dec675, ptr %i, align 4
  br label %for.cond665, !llvm.loop !26

for.end676:                                       ; preds = %for.cond665
  %320 = load i8, ptr %prefix, align 1
  %conv677 = sext i8 %320 to i32
  %cmp678 = icmp ne i32 %conv677, 0
  %conv679 = zext i1 %cmp678 to i32
  store i32 %conv679, ptr %i, align 4
  br label %while.cond680

while.cond680:                                    ; preds = %while.body683, %for.end676
  %321 = load i32, ptr %nPad, align 4
  %dec681 = add nsw i32 %321, -1
  store i32 %dec681, ptr %nPad, align 4
  %tobool682 = icmp ne i32 %321, 0
  br i1 %tobool682, label %while.body683, label %while.end687

while.body683:                                    ; preds = %while.cond680
  %322 = load ptr, ptr %bufpt, align 8
  %323 = load i32, ptr %i, align 4
  %inc684 = add nsw i32 %323, 1
  store i32 %inc684, ptr %i, align 4
  %idxprom685 = sext i32 %323 to i64
  %arrayidx686 = getelementptr inbounds i8, ptr %322, i64 %idxprom685
  store i8 48, ptr %arrayidx686, align 1
  br label %while.cond680, !llvm.loop !27

while.end687:                                     ; preds = %while.cond680
  %324 = load i32, ptr %width, align 4
  store i32 %324, ptr %length, align 4
  br label %if.end688

if.end688:                                        ; preds = %while.end687, %land.lhs.true660, %land.lhs.true658, %if.end649
  br label %sw.epilog794

sw.bb689:                                         ; preds = %for.end
  %325 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p690 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %325, i32 0, i32 0
  %gp_offset691 = load i32, ptr %gp_offset_p690, align 8
  %fits_in_gp692 = icmp ule i32 %gp_offset691, 40
  br i1 %fits_in_gp692, label %vaarg.in_reg693, label %vaarg.in_mem695

vaarg.in_reg693:                                  ; preds = %sw.bb689
  %326 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %325, i32 0, i32 3
  %reg_save_area694 = load ptr, ptr %326, align 8
  %327 = getelementptr i8, ptr %reg_save_area694, i32 %gp_offset691
  %328 = add i32 %gp_offset691, 8
  store i32 %328, ptr %gp_offset_p690, align 8
  br label %vaarg.end699

vaarg.in_mem695:                                  ; preds = %sw.bb689
  %overflow_arg_area_p696 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %325, i32 0, i32 2
  %overflow_arg_area697 = load ptr, ptr %overflow_arg_area_p696, align 8
  %overflow_arg_area.next698 = getelementptr i8, ptr %overflow_arg_area697, i32 8
  store ptr %overflow_arg_area.next698, ptr %overflow_arg_area_p696, align 8
  br label %vaarg.end699

vaarg.end699:                                     ; preds = %vaarg.in_mem695, %vaarg.in_reg693
  %vaarg.addr700 = phi ptr [ %327, %vaarg.in_reg693 ], [ %overflow_arg_area697, %vaarg.in_mem695 ]
  %329 = load ptr, ptr %vaarg.addr700, align 8
  store ptr %329, ptr %pSize, align 8
  %330 = load ptr, ptr %pUserData.addr, align 8
  %nLen = getelementptr inbounds nuw %struct.SyFmtConsumer, ptr %330, i32 0, i32 0
  %331 = load i32, ptr %nLen, align 8
  %332 = load ptr, ptr %pSize, align 8
  store i32 %331, ptr %332, align 4
  store i32 0, ptr %width, align 4
  store i32 0, ptr %length, align 4
  br label %sw.epilog794

sw.bb701:                                         ; preds = %for.end
  %arrayidx702 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store i8 37, ptr %arrayidx702, align 16
  %arraydecay703 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay703, ptr %bufpt, align 8
  store i32 1, ptr %length, align 4
  br label %sw.epilog794

sw.bb704:                                         ; preds = %for.end
  %333 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p705 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %333, i32 0, i32 0
  %gp_offset706 = load i32, ptr %gp_offset_p705, align 8
  %fits_in_gp707 = icmp ule i32 %gp_offset706, 40
  br i1 %fits_in_gp707, label %vaarg.in_reg708, label %vaarg.in_mem710

vaarg.in_reg708:                                  ; preds = %sw.bb704
  %334 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %333, i32 0, i32 3
  %reg_save_area709 = load ptr, ptr %334, align 8
  %335 = getelementptr i8, ptr %reg_save_area709, i32 %gp_offset706
  %336 = add i32 %gp_offset706, 8
  store i32 %336, ptr %gp_offset_p705, align 8
  br label %vaarg.end714

vaarg.in_mem710:                                  ; preds = %sw.bb704
  %overflow_arg_area_p711 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %333, i32 0, i32 2
  %overflow_arg_area712 = load ptr, ptr %overflow_arg_area_p711, align 8
  %overflow_arg_area.next713 = getelementptr i8, ptr %overflow_arg_area712, i32 8
  store ptr %overflow_arg_area.next713, ptr %overflow_arg_area_p711, align 8
  br label %vaarg.end714

vaarg.end714:                                     ; preds = %vaarg.in_mem710, %vaarg.in_reg708
  %vaarg.addr715 = phi ptr [ %335, %vaarg.in_reg708 ], [ %overflow_arg_area712, %vaarg.in_mem710 ]
  %337 = load i32, ptr %vaarg.addr715, align 4
  store i32 %337, ptr %c, align 4
  %338 = load i32, ptr %c, align 4
  %conv716 = trunc i32 %338 to i8
  %arrayidx717 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv716, ptr %arrayidx717, align 16
  %339 = load i32, ptr %precision, align 4
  %cmp718 = icmp sgt i32 %339, 984
  br i1 %cmp718, label %if.then720, label %if.end721

if.then720:                                       ; preds = %vaarg.end714
  store i32 984, ptr %precision, align 4
  br label %if.end721

if.end721:                                        ; preds = %if.then720, %vaarg.end714
  %340 = load i32, ptr %precision, align 4
  %cmp722 = icmp sge i32 %340, 0
  br i1 %cmp722, label %if.then724, label %if.else735

if.then724:                                       ; preds = %if.end721
  store i32 1, ptr %idx, align 4
  br label %for.cond725

for.cond725:                                      ; preds = %for.inc732, %if.then724
  %341 = load i32, ptr %idx, align 4
  %342 = load i32, ptr %precision, align 4
  %cmp726 = icmp slt i32 %341, %342
  br i1 %cmp726, label %for.body728, label %for.end734

for.body728:                                      ; preds = %for.cond725
  %343 = load i32, ptr %c, align 4
  %conv729 = trunc i32 %343 to i8
  %344 = load i32, ptr %idx, align 4
  %idxprom730 = sext i32 %344 to i64
  %arrayidx731 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 %idxprom730
  store i8 %conv729, ptr %arrayidx731, align 1
  br label %for.inc732

for.inc732:                                       ; preds = %for.body728
  %345 = load i32, ptr %idx, align 4
  %inc733 = add nsw i32 %345, 1
  store i32 %inc733, ptr %idx, align 4
  br label %for.cond725, !llvm.loop !28

for.end734:                                       ; preds = %for.cond725
  %346 = load i32, ptr %precision, align 4
  store i32 %346, ptr %length, align 4
  br label %if.end736

if.else735:                                       ; preds = %if.end721
  store i32 1, ptr %length, align 4
  br label %if.end736

if.end736:                                        ; preds = %if.else735, %for.end734
  %arraydecay737 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay737, ptr %bufpt, align 8
  br label %sw.epilog794

sw.bb738:                                         ; preds = %for.end
  %347 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p739 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %347, i32 0, i32 0
  %gp_offset740 = load i32, ptr %gp_offset_p739, align 8
  %fits_in_gp741 = icmp ule i32 %gp_offset740, 40
  br i1 %fits_in_gp741, label %vaarg.in_reg742, label %vaarg.in_mem744

vaarg.in_reg742:                                  ; preds = %sw.bb738
  %348 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %347, i32 0, i32 3
  %reg_save_area743 = load ptr, ptr %348, align 8
  %349 = getelementptr i8, ptr %reg_save_area743, i32 %gp_offset740
  %350 = add i32 %gp_offset740, 8
  store i32 %350, ptr %gp_offset_p739, align 8
  br label %vaarg.end748

vaarg.in_mem744:                                  ; preds = %sw.bb738
  %overflow_arg_area_p745 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %347, i32 0, i32 2
  %overflow_arg_area746 = load ptr, ptr %overflow_arg_area_p745, align 8
  %overflow_arg_area.next747 = getelementptr i8, ptr %overflow_arg_area746, i32 8
  store ptr %overflow_arg_area.next747, ptr %overflow_arg_area_p745, align 8
  br label %vaarg.end748

vaarg.end748:                                     ; preds = %vaarg.in_mem744, %vaarg.in_reg742
  %vaarg.addr749 = phi ptr [ %349, %vaarg.in_reg742 ], [ %overflow_arg_area746, %vaarg.in_mem744 ]
  %351 = load ptr, ptr %vaarg.addr749, align 8
  store ptr %351, ptr %bufpt, align 8
  %352 = load ptr, ptr %bufpt, align 8
  %cmp750 = icmp eq ptr %352, null
  br i1 %cmp750, label %if.then752, label %if.end753

if.then752:                                       ; preds = %vaarg.end748
  store ptr @.str.61, ptr %bufpt, align 8
  store i32 1, ptr %length, align 4
  br label %sw.epilog794

if.end753:                                        ; preds = %vaarg.end748
  %353 = load i32, ptr %precision, align 4
  store i32 %353, ptr %length, align 4
  %354 = load i32, ptr %precision, align 4
  %cmp754 = icmp slt i32 %354, 0
  br i1 %cmp754, label %if.then756, label %if.end758

if.then756:                                       ; preds = %if.end753
  %355 = load ptr, ptr %bufpt, align 8
  %call757 = call i32 @SyStrlen(ptr noundef %355)
  store i32 %call757, ptr %length, align 4
  br label %if.end758

if.end758:                                        ; preds = %if.then756, %if.end753
  %356 = load i32, ptr %precision, align 4
  %cmp759 = icmp sge i32 %356, 0
  br i1 %cmp759, label %land.lhs.true761, label %if.end765

land.lhs.true761:                                 ; preds = %if.end758
  %357 = load i32, ptr %precision, align 4
  %358 = load i32, ptr %length, align 4
  %cmp762 = icmp slt i32 %357, %358
  br i1 %cmp762, label %if.then764, label %if.end765

if.then764:                                       ; preds = %land.lhs.true761
  %359 = load i32, ptr %precision, align 4
  store i32 %359, ptr %length, align 4
  br label %if.end765

if.end765:                                        ; preds = %if.then764, %land.lhs.true761, %if.end758
  br label %sw.epilog794

sw.bb766:                                         ; preds = %for.end
  %360 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p767 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %360, i32 0, i32 0
  %gp_offset768 = load i32, ptr %gp_offset_p767, align 8
  %fits_in_gp769 = icmp ule i32 %gp_offset768, 40
  br i1 %fits_in_gp769, label %vaarg.in_reg770, label %vaarg.in_mem772

vaarg.in_reg770:                                  ; preds = %sw.bb766
  %361 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %360, i32 0, i32 3
  %reg_save_area771 = load ptr, ptr %361, align 8
  %362 = getelementptr i8, ptr %reg_save_area771, i32 %gp_offset768
  %363 = add i32 %gp_offset768, 8
  store i32 %363, ptr %gp_offset_p767, align 8
  br label %vaarg.end776

vaarg.in_mem772:                                  ; preds = %sw.bb766
  %overflow_arg_area_p773 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %360, i32 0, i32 2
  %overflow_arg_area774 = load ptr, ptr %overflow_arg_area_p773, align 8
  %overflow_arg_area.next775 = getelementptr i8, ptr %overflow_arg_area774, i32 8
  store ptr %overflow_arg_area.next775, ptr %overflow_arg_area_p773, align 8
  br label %vaarg.end776

vaarg.end776:                                     ; preds = %vaarg.in_mem772, %vaarg.in_reg770
  %vaarg.addr777 = phi ptr [ %362, %vaarg.in_reg770 ], [ %overflow_arg_area774, %vaarg.in_mem772 ]
  %364 = load ptr, ptr %vaarg.addr777, align 8
  store ptr %364, ptr %pStr, align 8
  %365 = load ptr, ptr %pStr, align 8
  %cmp778 = icmp eq ptr %365, null
  br i1 %cmp778, label %if.then783, label %lor.lhs.false780

lor.lhs.false780:                                 ; preds = %vaarg.end776
  %366 = load ptr, ptr %pStr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %366, i32 0, i32 0
  %367 = load ptr, ptr %zString, align 8
  %cmp781 = icmp eq ptr %367, null
  br i1 %cmp781, label %if.then783, label %if.end784

if.then783:                                       ; preds = %lor.lhs.false780, %vaarg.end776
  store ptr @.str.61, ptr %bufpt, align 8
  store i32 1, ptr %length, align 4
  br label %sw.epilog794

if.end784:                                        ; preds = %lor.lhs.false780
  %368 = load ptr, ptr %pStr, align 8
  %zString785 = getelementptr inbounds nuw %struct.SyString, ptr %368, i32 0, i32 0
  %369 = load ptr, ptr %zString785, align 8
  store ptr %369, ptr %bufpt, align 8
  %370 = load ptr, ptr %pStr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %370, i32 0, i32 1
  %371 = load i32, ptr %nByte, align 8
  store i32 %371, ptr %length, align 4
  br label %sw.epilog794

sw.bb786:                                         ; preds = %for.end
  %arrayidx787 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store i8 63, ptr %arrayidx787, align 16
  %arraydecay788 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay788, ptr %bufpt, align 8
  store i32 1, ptr %length, align 4
  %372 = load i32, ptr %c, align 4
  %cmp789 = icmp eq i32 %372, 0
  br i1 %cmp789, label %if.then791, label %if.end793

if.then791:                                       ; preds = %sw.bb786
  %373 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr792 = getelementptr inbounds i8, ptr %373, i32 -1
  store ptr %incdec.ptr792, ptr %zFormat.addr, align 8
  br label %if.end793

if.end793:                                        ; preds = %if.then791, %sw.bb786
  br label %sw.epilog794

sw.epilog794:                                     ; preds = %if.end793, %if.end784, %if.then783, %if.end765, %if.then752, %if.end736, %sw.bb701, %vaarg.end699, %if.end688, %if.then427, %if.end312, %for.end
  %374 = load i8, ptr %flag_leftjustify, align 1
  %tobool795 = icmp ne i8 %374, 0
  br i1 %tobool795, label %if.end822, label %if.then796

if.then796:                                       ; preds = %sw.epilog794
  %375 = load i32, ptr %width, align 4
  %376 = load i32, ptr %length, align 4
  %sub797 = sub nsw i32 %375, %376
  store i32 %sub797, ptr %nspace, align 4
  %377 = load i32, ptr %nspace, align 4
  %cmp798 = icmp sgt i32 %377, 0
  br i1 %cmp798, label %if.then800, label %if.end821

if.then800:                                       ; preds = %if.then796
  br label %while.cond801

while.cond801:                                    ; preds = %if.end809, %if.then800
  %378 = load i32, ptr %nspace, align 4
  %cmp802 = icmp sge i32 %378, 50
  br i1 %cmp802, label %while.body804, label %while.end811

while.body804:                                    ; preds = %while.cond801
  %379 = load ptr, ptr %xConsumer.addr, align 8
  %380 = load ptr, ptr %pUserData.addr, align 8
  %call805 = call i32 %379(ptr noundef @InternFormat.spaces, i32 noundef 50, ptr noundef %380)
  store i32 %call805, ptr %rc, align 4
  %381 = load i32, ptr %rc, align 4
  %cmp806 = icmp ne i32 %381, 0
  br i1 %cmp806, label %if.then808, label %if.end809

if.then808:                                       ; preds = %while.body804
  store i32 -10, ptr %retval, align 4
  br label %return

if.end809:                                        ; preds = %while.body804
  %382 = load i32, ptr %nspace, align 4
  %sub810 = sub nsw i32 %382, 50
  store i32 %sub810, ptr %nspace, align 4
  br label %while.cond801, !llvm.loop !29

while.end811:                                     ; preds = %while.cond801
  %383 = load i32, ptr %nspace, align 4
  %cmp812 = icmp sgt i32 %383, 0
  br i1 %cmp812, label %if.then814, label %if.end820

if.then814:                                       ; preds = %while.end811
  %384 = load ptr, ptr %xConsumer.addr, align 8
  %385 = load i32, ptr %nspace, align 4
  %386 = load ptr, ptr %pUserData.addr, align 8
  %call815 = call i32 %384(ptr noundef @InternFormat.spaces, i32 noundef %385, ptr noundef %386)
  store i32 %call815, ptr %rc, align 4
  %387 = load i32, ptr %rc, align 4
  %cmp816 = icmp ne i32 %387, 0
  br i1 %cmp816, label %if.then818, label %if.end819

if.then818:                                       ; preds = %if.then814
  store i32 -10, ptr %retval, align 4
  br label %return

if.end819:                                        ; preds = %if.then814
  br label %if.end820

if.end820:                                        ; preds = %if.end819, %while.end811
  br label %if.end821

if.end821:                                        ; preds = %if.end820, %if.then796
  br label %if.end822

if.end822:                                        ; preds = %if.end821, %sw.epilog794
  %388 = load i32, ptr %length, align 4
  %cmp823 = icmp sgt i32 %388, 0
  br i1 %cmp823, label %if.then825, label %if.end831

if.then825:                                       ; preds = %if.end822
  %389 = load ptr, ptr %xConsumer.addr, align 8
  %390 = load ptr, ptr %bufpt, align 8
  %391 = load i32, ptr %length, align 4
  %392 = load ptr, ptr %pUserData.addr, align 8
  %call826 = call i32 %389(ptr noundef %390, i32 noundef %391, ptr noundef %392)
  store i32 %call826, ptr %rc, align 4
  %393 = load i32, ptr %rc, align 4
  %cmp827 = icmp ne i32 %393, 0
  br i1 %cmp827, label %if.then829, label %if.end830

if.then829:                                       ; preds = %if.then825
  store i32 -10, ptr %retval, align 4
  br label %return

if.end830:                                        ; preds = %if.then825
  br label %if.end831

if.end831:                                        ; preds = %if.end830, %if.end822
  %394 = load i8, ptr %flag_leftjustify, align 1
  %tobool832 = icmp ne i8 %394, 0
  br i1 %tobool832, label %if.then833, label %if.end860

if.then833:                                       ; preds = %if.end831
  %395 = load i32, ptr %width, align 4
  %396 = load i32, ptr %length, align 4
  %sub835 = sub nsw i32 %395, %396
  store i32 %sub835, ptr %nspace834, align 4
  %397 = load i32, ptr %nspace834, align 4
  %cmp836 = icmp sgt i32 %397, 0
  br i1 %cmp836, label %if.then838, label %if.end859

if.then838:                                       ; preds = %if.then833
  br label %while.cond839

while.cond839:                                    ; preds = %if.end847, %if.then838
  %398 = load i32, ptr %nspace834, align 4
  %cmp840 = icmp sge i32 %398, 50
  br i1 %cmp840, label %while.body842, label %while.end849

while.body842:                                    ; preds = %while.cond839
  %399 = load ptr, ptr %xConsumer.addr, align 8
  %400 = load ptr, ptr %pUserData.addr, align 8
  %call843 = call i32 %399(ptr noundef @InternFormat.spaces, i32 noundef 50, ptr noundef %400)
  store i32 %call843, ptr %rc, align 4
  %401 = load i32, ptr %rc, align 4
  %cmp844 = icmp ne i32 %401, 0
  br i1 %cmp844, label %if.then846, label %if.end847

if.then846:                                       ; preds = %while.body842
  store i32 -10, ptr %retval, align 4
  br label %return

if.end847:                                        ; preds = %while.body842
  %402 = load i32, ptr %nspace834, align 4
  %sub848 = sub nsw i32 %402, 50
  store i32 %sub848, ptr %nspace834, align 4
  br label %while.cond839, !llvm.loop !30

while.end849:                                     ; preds = %while.cond839
  %403 = load i32, ptr %nspace834, align 4
  %cmp850 = icmp sgt i32 %403, 0
  br i1 %cmp850, label %if.then852, label %if.end858

if.then852:                                       ; preds = %while.end849
  %404 = load ptr, ptr %xConsumer.addr, align 8
  %405 = load i32, ptr %nspace834, align 4
  %406 = load ptr, ptr %pUserData.addr, align 8
  %call853 = call i32 %404(ptr noundef @InternFormat.spaces, i32 noundef %405, ptr noundef %406)
  store i32 %call853, ptr %rc, align 4
  %407 = load i32, ptr %rc, align 4
  %cmp854 = icmp ne i32 %407, 0
  br i1 %cmp854, label %if.then856, label %if.end857

if.then856:                                       ; preds = %if.then852
  store i32 -10, ptr %retval, align 4
  br label %return

if.end857:                                        ; preds = %if.then852
  br label %if.end858

if.end858:                                        ; preds = %if.end857, %while.end849
  br label %if.end859

if.end859:                                        ; preds = %if.end858, %if.then833
  br label %if.end860

if.end860:                                        ; preds = %if.end859, %if.end831
  br label %for.inc861

for.inc861:                                       ; preds = %if.end860
  %408 = load ptr, ptr %zFormat.addr, align 8
  %incdec.ptr862 = getelementptr inbounds nuw i8, ptr %408, i32 1
  store ptr %incdec.ptr862, ptr %zFormat.addr, align 8
  br label %for.cond, !llvm.loop !31

for.end863:                                       ; preds = %for.cond
  %409 = load i8, ptr %errorflag, align 1
  %conv864 = zext i8 %409 to i32
  %tobool865 = icmp ne i32 %conv864, 0
  %410 = zext i1 %tobool865 to i64
  %cond866 = select i1 %tobool865, i32 -21, i32 0
  store i32 %cond866, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end863, %if.then856, %if.then846, %if.then829, %if.then818, %if.then808, %if.end29, %if.then28, %if.then14, %if.then11
  %411 = load i32, ptr %retval, align 4
  ret i32 %411
}

; Function Attrs: nounwind uwtable
declare hidden i32 @getdigit(ptr noundef, ptr noundef) #0

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
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
