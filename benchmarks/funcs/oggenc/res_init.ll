; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }

@.str.115 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.116 = external hidden unnamed_addr constant [9 x i8], align 1
@__PRETTY_FUNCTION__.res_init = external hidden unnamed_addr constant [61 x i8], align 1
@.str.117 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.118 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.119 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.120 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.121 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.122 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.123 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.124 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.125 = external hidden unnamed_addr constant [41 x i8], align 1

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @res_init(ptr noundef %state, i32 noundef %channels, i32 noundef %outfreq, i32 noundef %infreq, i32 noundef %op1, ...) #2 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %channels.addr = alloca i32, align 4
  %outfreq.addr = alloca i32, align 4
  %infreq.addr = alloca i32, align 4
  %op1.addr = alloca i32, align 4
  %beta = alloca double, align 8
  %cutoff = alloca double, align 8
  %gain = alloca double, align 8
  %taps = alloca i32, align 4
  %factor = alloca i32, align 4
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %state, ptr %state.addr, align 8
  store i32 %channels, ptr %channels.addr, align 4
  store i32 %outfreq, ptr %outfreq.addr, align 4
  store i32 %infreq, ptr %infreq.addr, align 4
  store i32 %op1, ptr %op1.addr, align 4
  store double 1.600000e+01, ptr %beta, align 8
  store double 8.000000e-01, ptr %cutoff, align 8
  store double 1.000000e+00, ptr %gain, align 8
  store i32 45, ptr %taps, align 4
  %0 = load ptr, ptr %state.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.115, ptr noundef @.str.116, i32 noundef 3300, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, ptr %channels.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.117, ptr noundef @.str.116, i32 noundef 3301, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load i32, ptr %outfreq.addr, align 4
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end3
  br label %if.end7

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(ptr noundef @.str.118, ptr noundef @.str.116, i32 noundef 3302, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

if.end7:                                          ; preds = %if.then5
  %3 = load i32, ptr %infreq.addr, align 4
  %cmp8 = icmp sgt i32 %3, 0
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end7
  br label %if.end11

if.else10:                                        ; preds = %if.end7
  call void @__assert_fail(ptr noundef @.str.119, ptr noundef @.str.116, i32 noundef 3303, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

if.end11:                                         ; preds = %if.then9
  %4 = load i32, ptr %taps, align 4
  %cmp12 = icmp sgt i32 %4, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end11
  br label %if.end15

if.else14:                                        ; preds = %if.end11
  call void @__assert_fail(ptr noundef @.str.120, ptr noundef @.str.116, i32 noundef 3304, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

if.end15:                                         ; preds = %if.then13
  %5 = load ptr, ptr %state.addr, align 8
  %cmp16 = icmp eq ptr %5, null
  br i1 %cmp16, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %6 = load i32, ptr %channels.addr, align 4
  %cmp17 = icmp sle i32 %6, 0
  br i1 %cmp17, label %if.then24, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %7 = load i32, ptr %outfreq.addr, align 4
  %cmp19 = icmp sle i32 %7, 0
  br i1 %cmp19, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %8 = load i32, ptr %infreq.addr, align 4
  %cmp21 = icmp sle i32 %8, 0
  br i1 %cmp21, label %if.then24, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %9 = load i32, ptr %taps, align 4
  %cmp23 = icmp sle i32 %9, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false22, %lor.lhs.false20, %lor.lhs.false18, %lor.lhs.false, %if.end15
  store i32 -1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %lor.lhs.false22
  %10 = load i32, ptr %op1.addr, align 4
  %cmp26 = icmp ne i32 %10, 0
  br i1 %cmp26, label %if.then27, label %if.end94

if.then27:                                        ; preds = %if.end25
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then27
  %11 = load i32, ptr %op1.addr, align 4
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb29
    i32 3, label %sw.bb47
    i32 4, label %sw.bb63
  ]

sw.bb:                                            ; preds = %do.body
  %arraydecay28 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  %fp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay28, i32 0, i32 1
  %fp_offset = load i32, ptr %fp_offset_p, align 4
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %12 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay28, i32 0, i32 3
  %reg_save_area = load ptr, ptr %12, align 16
  %13 = getelementptr i8, ptr %reg_save_area, i32 %fp_offset
  %14 = add i32 %fp_offset, 16
  store i32 %14, ptr %fp_offset_p, align 4
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay28, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %13, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %15 = load double, ptr %vaarg.addr, align 8
  store double %15, ptr %gain, align 8
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.body
  %arraydecay30 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  %fp_offset_p31 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay30, i32 0, i32 1
  %fp_offset32 = load i32, ptr %fp_offset_p31, align 4
  %fits_in_fp33 = icmp ule i32 %fp_offset32, 160
  br i1 %fits_in_fp33, label %vaarg.in_reg34, label %vaarg.in_mem36

vaarg.in_reg34:                                   ; preds = %sw.bb29
  %16 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay30, i32 0, i32 3
  %reg_save_area35 = load ptr, ptr %16, align 16
  %17 = getelementptr i8, ptr %reg_save_area35, i32 %fp_offset32
  %18 = add i32 %fp_offset32, 16
  store i32 %18, ptr %fp_offset_p31, align 4
  br label %vaarg.end40

vaarg.in_mem36:                                   ; preds = %sw.bb29
  %overflow_arg_area_p37 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay30, i32 0, i32 2
  %overflow_arg_area38 = load ptr, ptr %overflow_arg_area_p37, align 8
  %overflow_arg_area.next39 = getelementptr i8, ptr %overflow_arg_area38, i32 8
  store ptr %overflow_arg_area.next39, ptr %overflow_arg_area_p37, align 8
  br label %vaarg.end40

vaarg.end40:                                      ; preds = %vaarg.in_mem36, %vaarg.in_reg34
  %vaarg.addr41 = phi ptr [ %17, %vaarg.in_reg34 ], [ %overflow_arg_area38, %vaarg.in_mem36 ]
  %19 = load double, ptr %vaarg.addr41, align 8
  store double %19, ptr %cutoff, align 8
  %20 = load double, ptr %cutoff, align 8
  %cmp42 = fcmp ogt double %20, 1.000000e-02
  br i1 %cmp42, label %land.lhs.true, label %if.else45

land.lhs.true:                                    ; preds = %vaarg.end40
  %21 = load double, ptr %cutoff, align 8
  %cmp43 = fcmp ole double %21, 1.000000e+00
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %land.lhs.true
  br label %if.end46

if.else45:                                        ; preds = %land.lhs.true, %vaarg.end40
  call void @__assert_fail(ptr noundef @.str.121, ptr noundef @.str.116, i32 noundef 3323, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

if.end46:                                         ; preds = %if.then44
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.body
  %arraydecay48 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay48, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg49, label %vaarg.in_mem51

vaarg.in_reg49:                                   ; preds = %sw.bb47
  %22 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay48, i32 0, i32 3
  %reg_save_area50 = load ptr, ptr %22, align 16
  %23 = getelementptr i8, ptr %reg_save_area50, i32 %gp_offset
  %24 = add i32 %gp_offset, 8
  store i32 %24, ptr %gp_offset_p, align 16
  br label %vaarg.end55

vaarg.in_mem51:                                   ; preds = %sw.bb47
  %overflow_arg_area_p52 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay48, i32 0, i32 2
  %overflow_arg_area53 = load ptr, ptr %overflow_arg_area_p52, align 8
  %overflow_arg_area.next54 = getelementptr i8, ptr %overflow_arg_area53, i32 8
  store ptr %overflow_arg_area.next54, ptr %overflow_arg_area_p52, align 8
  br label %vaarg.end55

vaarg.end55:                                      ; preds = %vaarg.in_mem51, %vaarg.in_reg49
  %vaarg.addr56 = phi ptr [ %23, %vaarg.in_reg49 ], [ %overflow_arg_area53, %vaarg.in_mem51 ]
  %25 = load i32, ptr %vaarg.addr56, align 4
  store i32 %25, ptr %taps, align 4
  %26 = load i32, ptr %taps, align 4
  %cmp57 = icmp sgt i32 %26, 2
  br i1 %cmp57, label %land.lhs.true58, label %if.else61

land.lhs.true58:                                  ; preds = %vaarg.end55
  %27 = load i32, ptr %taps, align 4
  %cmp59 = icmp slt i32 %27, 1000
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %land.lhs.true58
  br label %if.end62

if.else61:                                        ; preds = %land.lhs.true58, %vaarg.end55
  call void @__assert_fail(ptr noundef @.str.122, ptr noundef @.str.116, i32 noundef 3328, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

if.end62:                                         ; preds = %if.then60
  br label %sw.epilog

sw.bb63:                                          ; preds = %do.body
  %arraydecay64 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  %fp_offset_p65 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay64, i32 0, i32 1
  %fp_offset66 = load i32, ptr %fp_offset_p65, align 4
  %fits_in_fp67 = icmp ule i32 %fp_offset66, 160
  br i1 %fits_in_fp67, label %vaarg.in_reg68, label %vaarg.in_mem70

vaarg.in_reg68:                                   ; preds = %sw.bb63
  %28 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay64, i32 0, i32 3
  %reg_save_area69 = load ptr, ptr %28, align 16
  %29 = getelementptr i8, ptr %reg_save_area69, i32 %fp_offset66
  %30 = add i32 %fp_offset66, 16
  store i32 %30, ptr %fp_offset_p65, align 4
  br label %vaarg.end74

vaarg.in_mem70:                                   ; preds = %sw.bb63
  %overflow_arg_area_p71 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay64, i32 0, i32 2
  %overflow_arg_area72 = load ptr, ptr %overflow_arg_area_p71, align 8
  %overflow_arg_area.next73 = getelementptr i8, ptr %overflow_arg_area72, i32 8
  store ptr %overflow_arg_area.next73, ptr %overflow_arg_area_p71, align 8
  br label %vaarg.end74

vaarg.end74:                                      ; preds = %vaarg.in_mem70, %vaarg.in_reg68
  %vaarg.addr75 = phi ptr [ %29, %vaarg.in_reg68 ], [ %overflow_arg_area72, %vaarg.in_mem70 ]
  %31 = load double, ptr %vaarg.addr75, align 8
  store double %31, ptr %beta, align 8
  %32 = load double, ptr %beta, align 8
  %cmp76 = fcmp ogt double %32, 2.000000e+00
  br i1 %cmp76, label %if.then77, label %if.else78

if.then77:                                        ; preds = %vaarg.end74
  br label %if.end79

if.else78:                                        ; preds = %vaarg.end74
  call void @__assert_fail(ptr noundef @.str.123, ptr noundef @.str.116, i32 noundef 3333, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

if.end79:                                         ; preds = %if.then77
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  call void @__assert_fail(ptr noundef @.str.124, ptr noundef @.str.116, i32 noundef 3336, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

sw.epilog:                                        ; preds = %if.end79, %if.end62, %if.end46, %vaarg.end
  %arraydecay80 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  %gp_offset_p81 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay80, i32 0, i32 0
  %gp_offset82 = load i32, ptr %gp_offset_p81, align 16
  %fits_in_gp83 = icmp ule i32 %gp_offset82, 40
  br i1 %fits_in_gp83, label %vaarg.in_reg84, label %vaarg.in_mem86

vaarg.in_reg84:                                   ; preds = %sw.epilog
  %33 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay80, i32 0, i32 3
  %reg_save_area85 = load ptr, ptr %33, align 16
  %34 = getelementptr i8, ptr %reg_save_area85, i32 %gp_offset82
  %35 = add i32 %gp_offset82, 8
  store i32 %35, ptr %gp_offset_p81, align 16
  br label %vaarg.end90

vaarg.in_mem86:                                   ; preds = %sw.epilog
  %overflow_arg_area_p87 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay80, i32 0, i32 2
  %overflow_arg_area88 = load ptr, ptr %overflow_arg_area_p87, align 8
  %overflow_arg_area.next89 = getelementptr i8, ptr %overflow_arg_area88, i32 8
  store ptr %overflow_arg_area.next89, ptr %overflow_arg_area_p87, align 8
  br label %vaarg.end90

vaarg.end90:                                      ; preds = %vaarg.in_mem86, %vaarg.in_reg84
  %vaarg.addr91 = phi ptr [ %34, %vaarg.in_reg84 ], [ %overflow_arg_area88, %vaarg.in_mem86 ]
  %36 = load i32, ptr %vaarg.addr91, align 4
  store i32 %36, ptr %op1.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %vaarg.end90
  %37 = load i32, ptr %op1.addr, align 4
  %cmp92 = icmp ne i32 %37, 0
  br i1 %cmp92, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %arraydecay93 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay93)
  br label %if.end94

if.end94:                                         ; preds = %do.end, %if.end25
  %38 = load i32, ptr %infreq.addr, align 4
  %39 = load i32, ptr %outfreq.addr, align 4
  %call = call i32 @hcf(i32 noundef %38, i32 noundef %39)
  store i32 %call, ptr %factor, align 4
  %40 = load i32, ptr %factor, align 4
  %41 = load i32, ptr %outfreq.addr, align 4
  %div = sdiv i32 %41, %40
  store i32 %div, ptr %outfreq.addr, align 4
  %42 = load i32, ptr %factor, align 4
  %43 = load i32, ptr %infreq.addr, align 4
  %div95 = sdiv i32 %43, %42
  store i32 %div95, ptr %infreq.addr, align 4
  %44 = load i32, ptr %outfreq.addr, align 4
  %45 = load i32, ptr %infreq.addr, align 4
  %cmp96 = icmp slt i32 %44, %45
  br i1 %cmp96, label %if.then97, label %if.end102

if.then97:                                        ; preds = %if.end94
  %46 = load double, ptr %cutoff, align 8
  %47 = load i32, ptr %outfreq.addr, align 4
  %conv = sitofp i32 %47 to double
  %mul = fmul double %46, %conv
  %48 = load i32, ptr %infreq.addr, align 4
  %conv98 = sitofp i32 %48 to double
  %div99 = fdiv double %mul, %conv98
  store double %div99, ptr %cutoff, align 8
  %49 = load i32, ptr %taps, align 4
  %50 = load i32, ptr %infreq.addr, align 4
  %mul100 = mul nsw i32 %49, %50
  %51 = load i32, ptr %outfreq.addr, align 4
  %div101 = sdiv i32 %mul100, %51
  store i32 %div101, ptr %taps, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %if.end94
  %52 = load i32, ptr %taps, align 4
  %53 = load i32, ptr %infreq.addr, align 4
  %54 = load i32, ptr %outfreq.addr, align 4
  %add = add nsw i32 %53, %54
  %sub = sub nsw i32 %add, 1
  %55 = load i32, ptr %outfreq.addr, align 4
  %div103 = sdiv i32 %sub, %55
  %cmp104 = icmp sge i32 %52, %div103
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %if.end102
  br label %if.end108

if.else107:                                       ; preds = %if.end102
  call void @__assert_fail(ptr noundef @.str.125, ptr noundef @.str.116, i32 noundef 3359, ptr noundef @__PRETTY_FUNCTION__.res_init) #5
  unreachable

if.end108:                                        ; preds = %if.then106
  %56 = load i32, ptr %outfreq.addr, align 4
  %57 = load i32, ptr %taps, align 4
  %mul109 = mul nsw i32 %56, %57
  %conv110 = sext i32 %mul109 to i64
  %call111 = call noalias ptr @calloc(i64 noundef %conv110, i64 noundef 4) #6
  %58 = load ptr, ptr %state.addr, align 8
  %table = getelementptr inbounds nuw %struct.res_state, ptr %58, i32 0, i32 4
  store ptr %call111, ptr %table, align 8
  %cmp112 = icmp eq ptr %call111, null
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end108
  store i32 -1, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.end108
  %59 = load i32, ptr %channels.addr, align 4
  %60 = load i32, ptr %taps, align 4
  %mul116 = mul nsw i32 %59, %60
  %conv117 = sext i32 %mul116 to i64
  %call118 = call noalias ptr @calloc(i64 noundef %conv117, i64 noundef 4) #6
  %61 = load ptr, ptr %state.addr, align 8
  %pool = getelementptr inbounds nuw %struct.res_state, ptr %61, i32 0, i32 5
  store ptr %call118, ptr %pool, align 8
  %cmp119 = icmp eq ptr %call118, null
  br i1 %cmp119, label %if.then121, label %if.end124

if.then121:                                       ; preds = %if.end115
  %62 = load ptr, ptr %state.addr, align 8
  %table122 = getelementptr inbounds nuw %struct.res_state, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %table122, align 8
  call void @free(ptr noundef %63) #7
  %64 = load ptr, ptr %state.addr, align 8
  %table123 = getelementptr inbounds nuw %struct.res_state, ptr %64, i32 0, i32 4
  store ptr null, ptr %table123, align 8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end124:                                        ; preds = %if.end115
  %65 = load i32, ptr %taps, align 4
  %div125 = sdiv i32 %65, 2
  %add126 = add nsw i32 %div125, 1
  %66 = load ptr, ptr %state.addr, align 8
  %poolfill = getelementptr inbounds nuw %struct.res_state, ptr %66, i32 0, i32 6
  store i32 %add126, ptr %poolfill, align 8
  %67 = load i32, ptr %channels.addr, align 4
  %68 = load ptr, ptr %state.addr, align 8
  %channels127 = getelementptr inbounds nuw %struct.res_state, ptr %68, i32 0, i32 0
  store i32 %67, ptr %channels127, align 8
  %69 = load i32, ptr %outfreq.addr, align 4
  %70 = load ptr, ptr %state.addr, align 8
  %outfreq128 = getelementptr inbounds nuw %struct.res_state, ptr %70, i32 0, i32 2
  store i32 %69, ptr %outfreq128, align 8
  %71 = load i32, ptr %infreq.addr, align 4
  %72 = load ptr, ptr %state.addr, align 8
  %infreq129 = getelementptr inbounds nuw %struct.res_state, ptr %72, i32 0, i32 1
  store i32 %71, ptr %infreq129, align 4
  %73 = load i32, ptr %taps, align 4
  %74 = load ptr, ptr %state.addr, align 8
  %taps130 = getelementptr inbounds nuw %struct.res_state, ptr %74, i32 0, i32 3
  store i32 %73, ptr %taps130, align 4
  %75 = load ptr, ptr %state.addr, align 8
  %offset = getelementptr inbounds nuw %struct.res_state, ptr %75, i32 0, i32 7
  store i32 0, ptr %offset, align 4
  %76 = load ptr, ptr %state.addr, align 8
  %table131 = getelementptr inbounds nuw %struct.res_state, ptr %76, i32 0, i32 4
  %77 = load ptr, ptr %table131, align 8
  %78 = load i32, ptr %outfreq.addr, align 4
  %79 = load i32, ptr %taps, align 4
  %mul132 = mul nsw i32 %78, %79
  %80 = load i32, ptr %outfreq.addr, align 4
  %81 = load double, ptr %cutoff, align 8
  %82 = load double, ptr %gain, align 8
  %83 = load i32, ptr %taps, align 4
  call void @filt_sinc(ptr noundef %77, i32 noundef %mul132, i32 noundef %80, double noundef %81, double noundef %82, i32 noundef %83)
  %84 = load ptr, ptr %state.addr, align 8
  %table133 = getelementptr inbounds nuw %struct.res_state, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %table133, align 8
  %86 = load i32, ptr %outfreq.addr, align 4
  %87 = load i32, ptr %taps, align 4
  %mul134 = mul nsw i32 %86, %87
  %88 = load double, ptr %beta, align 8
  %89 = load i32, ptr %taps, align 4
  call void @win_kaiser(ptr noundef %85, i32 noundef %mul134, double noundef %88, i32 noundef %89)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end124, %if.then121, %if.then114, %if.then24
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nounwind uwtable
declare hidden i32 @hcf(i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @filt_sinc(ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @win_kaiser(ptr noundef, i32 noundef, double noundef, i32 noundef) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { nounwind }

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
