; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4
@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetAllSchemasOfConnection(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FindDbName(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_test_control(i32 noundef %op, ...) #0 {
entry:
  %op.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %db = alloca ptr, align 8
  %sz = alloca i32, align 4
  %aProg = alloca ptr, align 8
  %xBenignBegin = alloca ptr, align 8
  %xBenignEnd = alloca ptr, align 8
  %newVal = alloca i32, align 4
  %x97 = alloca i32, align 4
  %x99 = alloca i32, align 4
  %db115 = alloca ptr, align 8
  %x128 = alloca i32, align 4
  %db146 = alloca ptr, align 8
  %db239 = alloca ptr, align 8
  %db270 = alloca ptr, align 8
  %pCtx = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 0, ptr %rc, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load i32, ptr %op.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 5, label %sw.bb
    i32 6, label %sw.bb1
    i32 28, label %sw.bb2
    i32 8, label %sw.bb16
    i32 9, label %sw.bb41
    i32 10, label %sw.bb55
    i32 11, label %sw.bb80
    i32 12, label %sw.bb96
    i32 13, label %sw.bb98
    i32 22, label %sw.bb113
    i32 14, label %sw.bb114
    i32 15, label %sw.bb145
    i32 18, label %sw.bb171
    i32 17, label %sw.bb184
    i32 20, label %sw.bb197
    i32 29, label %sw.bb210
    i32 19, label %sw.bb224
    i32 21, label %sw.bb237
    i32 24, label %sw.bb238
    i32 23, label %sw.bb264
    i32 25, label %sw.bb269
    i32 27, label %sw.bb339
  ]

sw.bb:                                            ; preds = %entry
  call void @sqlite3PrngSaveState()
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @sqlite3PrngRestoreState()
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay3, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb2
  %1 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay3, i32 0, i32 3
  %reg_save_area = load ptr, ptr %1, align 16
  %2 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %3 = add i32 %gp_offset, 8
  store i32 %3, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb2
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay3, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %4 = load i32, ptr %vaarg.addr, align 4
  store i32 %4, ptr %x, align 4
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p5 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay4, i32 0, i32 0
  %gp_offset6 = load i32, ptr %gp_offset_p5, align 16
  %fits_in_gp7 = icmp ule i32 %gp_offset6, 40
  br i1 %fits_in_gp7, label %vaarg.in_reg8, label %vaarg.in_mem10

vaarg.in_reg8:                                    ; preds = %vaarg.end
  %5 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay4, i32 0, i32 3
  %reg_save_area9 = load ptr, ptr %5, align 16
  %6 = getelementptr i8, ptr %reg_save_area9, i32 %gp_offset6
  %7 = add i32 %gp_offset6, 8
  store i32 %7, ptr %gp_offset_p5, align 16
  br label %vaarg.end14

vaarg.in_mem10:                                   ; preds = %vaarg.end
  %overflow_arg_area_p11 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay4, i32 0, i32 2
  %overflow_arg_area12 = load ptr, ptr %overflow_arg_area_p11, align 8
  %overflow_arg_area.next13 = getelementptr i8, ptr %overflow_arg_area12, i32 8
  store ptr %overflow_arg_area.next13, ptr %overflow_arg_area_p11, align 8
  br label %vaarg.end14

vaarg.end14:                                      ; preds = %vaarg.in_mem10, %vaarg.in_reg8
  %vaarg.addr15 = phi ptr [ %6, %vaarg.in_reg8 ], [ %overflow_arg_area12, %vaarg.in_mem10 ]
  %8 = load ptr, ptr %vaarg.addr15, align 8
  store ptr %8, ptr %db, align 8
  %9 = load ptr, ptr %db, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %vaarg.end14
  %10 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %aDb, align 8
  %arrayidx = getelementptr inbounds %struct.Db, ptr %11, i64 0
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %12 = load ptr, ptr %pSchema, align 8
  %schema_cookie = getelementptr inbounds nuw %struct.Schema, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %schema_cookie, align 8
  store i32 %13, ptr %y, align 4
  %cmp = icmp ne i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, ptr %y, align 4
  store i32 %14, ptr %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %vaarg.end14
  %15 = load i32, ptr %x, align 4
  store i32 %15, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 41), align 8
  call void @sqlite3_randomness(i32 noundef 0, ptr noundef null)
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p18 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay17, i32 0, i32 0
  %gp_offset19 = load i32, ptr %gp_offset_p18, align 16
  %fits_in_gp20 = icmp ule i32 %gp_offset19, 40
  br i1 %fits_in_gp20, label %vaarg.in_reg21, label %vaarg.in_mem23

vaarg.in_reg21:                                   ; preds = %sw.bb16
  %16 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay17, i32 0, i32 3
  %reg_save_area22 = load ptr, ptr %16, align 16
  %17 = getelementptr i8, ptr %reg_save_area22, i32 %gp_offset19
  %18 = add i32 %gp_offset19, 8
  store i32 %18, ptr %gp_offset_p18, align 16
  br label %vaarg.end27

vaarg.in_mem23:                                   ; preds = %sw.bb16
  %overflow_arg_area_p24 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay17, i32 0, i32 2
  %overflow_arg_area25 = load ptr, ptr %overflow_arg_area_p24, align 8
  %overflow_arg_area.next26 = getelementptr i8, ptr %overflow_arg_area25, i32 8
  store ptr %overflow_arg_area.next26, ptr %overflow_arg_area_p24, align 8
  br label %vaarg.end27

vaarg.end27:                                      ; preds = %vaarg.in_mem23, %vaarg.in_reg21
  %vaarg.addr28 = phi ptr [ %17, %vaarg.in_reg21 ], [ %overflow_arg_area25, %vaarg.in_mem23 ]
  %19 = load i32, ptr %vaarg.addr28, align 4
  store i32 %19, ptr %sz, align 4
  %arraydecay29 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p30 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay29, i32 0, i32 0
  %gp_offset31 = load i32, ptr %gp_offset_p30, align 16
  %fits_in_gp32 = icmp ule i32 %gp_offset31, 40
  br i1 %fits_in_gp32, label %vaarg.in_reg33, label %vaarg.in_mem35

vaarg.in_reg33:                                   ; preds = %vaarg.end27
  %20 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay29, i32 0, i32 3
  %reg_save_area34 = load ptr, ptr %20, align 16
  %21 = getelementptr i8, ptr %reg_save_area34, i32 %gp_offset31
  %22 = add i32 %gp_offset31, 8
  store i32 %22, ptr %gp_offset_p30, align 16
  br label %vaarg.end39

vaarg.in_mem35:                                   ; preds = %vaarg.end27
  %overflow_arg_area_p36 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay29, i32 0, i32 2
  %overflow_arg_area37 = load ptr, ptr %overflow_arg_area_p36, align 8
  %overflow_arg_area.next38 = getelementptr i8, ptr %overflow_arg_area37, i32 8
  store ptr %overflow_arg_area.next38, ptr %overflow_arg_area_p36, align 8
  br label %vaarg.end39

vaarg.end39:                                      ; preds = %vaarg.in_mem35, %vaarg.in_reg33
  %vaarg.addr40 = phi ptr [ %21, %vaarg.in_reg33 ], [ %overflow_arg_area37, %vaarg.in_mem35 ]
  %23 = load ptr, ptr %vaarg.addr40, align 8
  store ptr %23, ptr %aProg, align 8
  %24 = load i32, ptr %sz, align 4
  %25 = load ptr, ptr %aProg, align 8
  %call = call i32 @sqlite3BitvecBuiltinTest(i32 noundef %24, ptr noundef %25)
  store i32 %call, ptr %rc, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  %arraydecay42 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p43 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay42, i32 0, i32 0
  %gp_offset44 = load i32, ptr %gp_offset_p43, align 16
  %fits_in_gp45 = icmp ule i32 %gp_offset44, 40
  br i1 %fits_in_gp45, label %vaarg.in_reg46, label %vaarg.in_mem48

vaarg.in_reg46:                                   ; preds = %sw.bb41
  %26 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay42, i32 0, i32 3
  %reg_save_area47 = load ptr, ptr %26, align 16
  %27 = getelementptr i8, ptr %reg_save_area47, i32 %gp_offset44
  %28 = add i32 %gp_offset44, 8
  store i32 %28, ptr %gp_offset_p43, align 16
  br label %vaarg.end52

vaarg.in_mem48:                                   ; preds = %sw.bb41
  %overflow_arg_area_p49 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay42, i32 0, i32 2
  %overflow_arg_area50 = load ptr, ptr %overflow_arg_area_p49, align 8
  %overflow_arg_area.next51 = getelementptr i8, ptr %overflow_arg_area50, i32 8
  store ptr %overflow_arg_area.next51, ptr %overflow_arg_area_p49, align 8
  br label %vaarg.end52

vaarg.end52:                                      ; preds = %vaarg.in_mem48, %vaarg.in_reg46
  %vaarg.addr53 = phi ptr [ %27, %vaarg.in_reg46 ], [ %overflow_arg_area50, %vaarg.in_mem48 ]
  %29 = load ptr, ptr %vaarg.addr53, align 8
  store ptr %29, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 36), align 8
  %call54 = call i32 @sqlite3FaultSim(i32 noundef 0)
  store i32 %call54, ptr %rc, align 4
  br label %sw.epilog

sw.bb55:                                          ; preds = %entry
  %arraydecay56 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p57 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay56, i32 0, i32 0
  %gp_offset58 = load i32, ptr %gp_offset_p57, align 16
  %fits_in_gp59 = icmp ule i32 %gp_offset58, 40
  br i1 %fits_in_gp59, label %vaarg.in_reg60, label %vaarg.in_mem62

vaarg.in_reg60:                                   ; preds = %sw.bb55
  %30 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay56, i32 0, i32 3
  %reg_save_area61 = load ptr, ptr %30, align 16
  %31 = getelementptr i8, ptr %reg_save_area61, i32 %gp_offset58
  %32 = add i32 %gp_offset58, 8
  store i32 %32, ptr %gp_offset_p57, align 16
  br label %vaarg.end66

vaarg.in_mem62:                                   ; preds = %sw.bb55
  %overflow_arg_area_p63 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay56, i32 0, i32 2
  %overflow_arg_area64 = load ptr, ptr %overflow_arg_area_p63, align 8
  %overflow_arg_area.next65 = getelementptr i8, ptr %overflow_arg_area64, i32 8
  store ptr %overflow_arg_area.next65, ptr %overflow_arg_area_p63, align 8
  br label %vaarg.end66

vaarg.end66:                                      ; preds = %vaarg.in_mem62, %vaarg.in_reg60
  %vaarg.addr67 = phi ptr [ %31, %vaarg.in_reg60 ], [ %overflow_arg_area64, %vaarg.in_mem62 ]
  %33 = load ptr, ptr %vaarg.addr67, align 8
  store ptr %33, ptr %xBenignBegin, align 8
  %arraydecay68 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p69 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay68, i32 0, i32 0
  %gp_offset70 = load i32, ptr %gp_offset_p69, align 16
  %fits_in_gp71 = icmp ule i32 %gp_offset70, 40
  br i1 %fits_in_gp71, label %vaarg.in_reg72, label %vaarg.in_mem74

vaarg.in_reg72:                                   ; preds = %vaarg.end66
  %34 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay68, i32 0, i32 3
  %reg_save_area73 = load ptr, ptr %34, align 16
  %35 = getelementptr i8, ptr %reg_save_area73, i32 %gp_offset70
  %36 = add i32 %gp_offset70, 8
  store i32 %36, ptr %gp_offset_p69, align 16
  br label %vaarg.end78

vaarg.in_mem74:                                   ; preds = %vaarg.end66
  %overflow_arg_area_p75 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay68, i32 0, i32 2
  %overflow_arg_area76 = load ptr, ptr %overflow_arg_area_p75, align 8
  %overflow_arg_area.next77 = getelementptr i8, ptr %overflow_arg_area76, i32 8
  store ptr %overflow_arg_area.next77, ptr %overflow_arg_area_p75, align 8
  br label %vaarg.end78

vaarg.end78:                                      ; preds = %vaarg.in_mem74, %vaarg.in_reg72
  %vaarg.addr79 = phi ptr [ %35, %vaarg.in_reg72 ], [ %overflow_arg_area76, %vaarg.in_mem74 ]
  %37 = load ptr, ptr %vaarg.addr79, align 8
  store ptr %37, ptr %xBenignEnd, align 8
  %38 = load ptr, ptr %xBenignBegin, align 8
  %39 = load ptr, ptr %xBenignEnd, align 8
  call void @sqlite3BenignMallocHooks(ptr noundef %38, ptr noundef %39)
  br label %sw.epilog

sw.bb80:                                          ; preds = %entry
  %40 = load i32, ptr @sqlite3PendingByte, align 4
  store i32 %40, ptr %rc, align 4
  %arraydecay81 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p82 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay81, i32 0, i32 0
  %gp_offset83 = load i32, ptr %gp_offset_p82, align 16
  %fits_in_gp84 = icmp ule i32 %gp_offset83, 40
  br i1 %fits_in_gp84, label %vaarg.in_reg85, label %vaarg.in_mem87

vaarg.in_reg85:                                   ; preds = %sw.bb80
  %41 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay81, i32 0, i32 3
  %reg_save_area86 = load ptr, ptr %41, align 16
  %42 = getelementptr i8, ptr %reg_save_area86, i32 %gp_offset83
  %43 = add i32 %gp_offset83, 8
  store i32 %43, ptr %gp_offset_p82, align 16
  br label %vaarg.end91

vaarg.in_mem87:                                   ; preds = %sw.bb80
  %overflow_arg_area_p88 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay81, i32 0, i32 2
  %overflow_arg_area89 = load ptr, ptr %overflow_arg_area_p88, align 8
  %overflow_arg_area.next90 = getelementptr i8, ptr %overflow_arg_area89, i32 8
  store ptr %overflow_arg_area.next90, ptr %overflow_arg_area_p88, align 8
  br label %vaarg.end91

vaarg.end91:                                      ; preds = %vaarg.in_mem87, %vaarg.in_reg85
  %vaarg.addr92 = phi ptr [ %42, %vaarg.in_reg85 ], [ %overflow_arg_area89, %vaarg.in_mem87 ]
  %44 = load i32, ptr %vaarg.addr92, align 4
  store i32 %44, ptr %newVal, align 4
  %45 = load i32, ptr %newVal, align 4
  %tobool93 = icmp ne i32 %45, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %vaarg.end91
  %46 = load i32, ptr %newVal, align 4
  store i32 %46, ptr @sqlite3PendingByte, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %vaarg.end91
  br label %sw.epilog

sw.bb96:                                          ; preds = %entry
  store volatile i32 0, ptr %x97, align 4
  %47 = load volatile i32, ptr %x97, align 4
  store i32 %47, ptr %rc, align 4
  br label %sw.epilog

sw.bb98:                                          ; preds = %entry
  %arraydecay100 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p101 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay100, i32 0, i32 0
  %gp_offset102 = load i32, ptr %gp_offset_p101, align 16
  %fits_in_gp103 = icmp ule i32 %gp_offset102, 40
  br i1 %fits_in_gp103, label %vaarg.in_reg104, label %vaarg.in_mem106

vaarg.in_reg104:                                  ; preds = %sw.bb98
  %48 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay100, i32 0, i32 3
  %reg_save_area105 = load ptr, ptr %48, align 16
  %49 = getelementptr i8, ptr %reg_save_area105, i32 %gp_offset102
  %50 = add i32 %gp_offset102, 8
  store i32 %50, ptr %gp_offset_p101, align 16
  br label %vaarg.end110

vaarg.in_mem106:                                  ; preds = %sw.bb98
  %overflow_arg_area_p107 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay100, i32 0, i32 2
  %overflow_arg_area108 = load ptr, ptr %overflow_arg_area_p107, align 8
  %overflow_arg_area.next109 = getelementptr i8, ptr %overflow_arg_area108, i32 8
  store ptr %overflow_arg_area.next109, ptr %overflow_arg_area_p107, align 8
  br label %vaarg.end110

vaarg.end110:                                     ; preds = %vaarg.in_mem106, %vaarg.in_reg104
  %vaarg.addr111 = phi ptr [ %49, %vaarg.in_reg104 ], [ %overflow_arg_area108, %vaarg.in_mem106 ]
  %51 = load i32, ptr %vaarg.addr111, align 4
  store i32 %51, ptr %x99, align 4
  %52 = load i32, ptr %x99, align 4
  %tobool112 = icmp ne i32 %52, 0
  br i1 %tobool112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %vaarg.end110
  %53 = load i32, ptr %x99, align 4
  br label %cond.end

cond.false:                                       ; preds = %vaarg.end110
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %53, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  br label %sw.epilog

sw.bb113:                                         ; preds = %entry
  store i32 123410, ptr %rc, align 4
  br label %sw.epilog

sw.bb114:                                         ; preds = %entry
  %arraydecay116 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p117 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay116, i32 0, i32 0
  %gp_offset118 = load i32, ptr %gp_offset_p117, align 16
  %fits_in_gp119 = icmp ule i32 %gp_offset118, 40
  br i1 %fits_in_gp119, label %vaarg.in_reg120, label %vaarg.in_mem122

vaarg.in_reg120:                                  ; preds = %sw.bb114
  %54 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay116, i32 0, i32 3
  %reg_save_area121 = load ptr, ptr %54, align 16
  %55 = getelementptr i8, ptr %reg_save_area121, i32 %gp_offset118
  %56 = add i32 %gp_offset118, 8
  store i32 %56, ptr %gp_offset_p117, align 16
  br label %vaarg.end126

vaarg.in_mem122:                                  ; preds = %sw.bb114
  %overflow_arg_area_p123 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay116, i32 0, i32 2
  %overflow_arg_area124 = load ptr, ptr %overflow_arg_area_p123, align 8
  %overflow_arg_area.next125 = getelementptr i8, ptr %overflow_arg_area124, i32 8
  store ptr %overflow_arg_area.next125, ptr %overflow_arg_area_p123, align 8
  br label %vaarg.end126

vaarg.end126:                                     ; preds = %vaarg.in_mem122, %vaarg.in_reg120
  %vaarg.addr127 = phi ptr [ %55, %vaarg.in_reg120 ], [ %overflow_arg_area124, %vaarg.in_mem122 ]
  %57 = load ptr, ptr %vaarg.addr127, align 8
  store ptr %57, ptr %db115, align 8
  %arraydecay129 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p130 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay129, i32 0, i32 0
  %gp_offset131 = load i32, ptr %gp_offset_p130, align 16
  %fits_in_gp132 = icmp ule i32 %gp_offset131, 40
  br i1 %fits_in_gp132, label %vaarg.in_reg133, label %vaarg.in_mem135

vaarg.in_reg133:                                  ; preds = %vaarg.end126
  %58 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay129, i32 0, i32 3
  %reg_save_area134 = load ptr, ptr %58, align 16
  %59 = getelementptr i8, ptr %reg_save_area134, i32 %gp_offset131
  %60 = add i32 %gp_offset131, 8
  store i32 %60, ptr %gp_offset_p130, align 16
  br label %vaarg.end139

vaarg.in_mem135:                                  ; preds = %vaarg.end126
  %overflow_arg_area_p136 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay129, i32 0, i32 2
  %overflow_arg_area137 = load ptr, ptr %overflow_arg_area_p136, align 8
  %overflow_arg_area.next138 = getelementptr i8, ptr %overflow_arg_area137, i32 8
  store ptr %overflow_arg_area.next138, ptr %overflow_arg_area_p136, align 8
  br label %vaarg.end139

vaarg.end139:                                     ; preds = %vaarg.in_mem135, %vaarg.in_reg133
  %vaarg.addr140 = phi ptr [ %59, %vaarg.in_reg133 ], [ %overflow_arg_area137, %vaarg.in_mem135 ]
  %61 = load i32, ptr %vaarg.addr140, align 4
  store i32 %61, ptr %x128, align 4
  %62 = load ptr, ptr %db115, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %62, i32 0, i32 3
  %63 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %63)
  %64 = load ptr, ptr %db115, align 8
  %aDb141 = getelementptr inbounds nuw %struct.sqlite3, ptr %64, i32 0, i32 4
  %65 = load ptr, ptr %aDb141, align 8
  %arrayidx142 = getelementptr inbounds %struct.Db, ptr %65, i64 0
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx142, i32 0, i32 1
  %66 = load ptr, ptr %pBt, align 8
  %67 = load i32, ptr %x128, align 4
  %call143 = call i32 @sqlite3BtreeSetPageSize(ptr noundef %66, i32 noundef 0, i32 noundef %67, i32 noundef 0)
  %68 = load ptr, ptr %db115, align 8
  %mutex144 = getelementptr inbounds nuw %struct.sqlite3, ptr %68, i32 0, i32 3
  %69 = load ptr, ptr %mutex144, align 8
  call void @sqlite3_mutex_leave(ptr noundef %69)
  br label %sw.epilog

sw.bb145:                                         ; preds = %entry
  %arraydecay147 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p148 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay147, i32 0, i32 0
  %gp_offset149 = load i32, ptr %gp_offset_p148, align 16
  %fits_in_gp150 = icmp ule i32 %gp_offset149, 40
  br i1 %fits_in_gp150, label %vaarg.in_reg151, label %vaarg.in_mem153

vaarg.in_reg151:                                  ; preds = %sw.bb145
  %70 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay147, i32 0, i32 3
  %reg_save_area152 = load ptr, ptr %70, align 16
  %71 = getelementptr i8, ptr %reg_save_area152, i32 %gp_offset149
  %72 = add i32 %gp_offset149, 8
  store i32 %72, ptr %gp_offset_p148, align 16
  br label %vaarg.end157

vaarg.in_mem153:                                  ; preds = %sw.bb145
  %overflow_arg_area_p154 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay147, i32 0, i32 2
  %overflow_arg_area155 = load ptr, ptr %overflow_arg_area_p154, align 8
  %overflow_arg_area.next156 = getelementptr i8, ptr %overflow_arg_area155, i32 8
  store ptr %overflow_arg_area.next156, ptr %overflow_arg_area_p154, align 8
  br label %vaarg.end157

vaarg.end157:                                     ; preds = %vaarg.in_mem153, %vaarg.in_reg151
  %vaarg.addr158 = phi ptr [ %71, %vaarg.in_reg151 ], [ %overflow_arg_area155, %vaarg.in_mem153 ]
  %73 = load ptr, ptr %vaarg.addr158, align 8
  store ptr %73, ptr %db146, align 8
  %arraydecay159 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p160 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay159, i32 0, i32 0
  %gp_offset161 = load i32, ptr %gp_offset_p160, align 16
  %fits_in_gp162 = icmp ule i32 %gp_offset161, 40
  br i1 %fits_in_gp162, label %vaarg.in_reg163, label %vaarg.in_mem165

vaarg.in_reg163:                                  ; preds = %vaarg.end157
  %74 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay159, i32 0, i32 3
  %reg_save_area164 = load ptr, ptr %74, align 16
  %75 = getelementptr i8, ptr %reg_save_area164, i32 %gp_offset161
  %76 = add i32 %gp_offset161, 8
  store i32 %76, ptr %gp_offset_p160, align 16
  br label %vaarg.end169

vaarg.in_mem165:                                  ; preds = %vaarg.end157
  %overflow_arg_area_p166 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay159, i32 0, i32 2
  %overflow_arg_area167 = load ptr, ptr %overflow_arg_area_p166, align 8
  %overflow_arg_area.next168 = getelementptr i8, ptr %overflow_arg_area167, i32 8
  store ptr %overflow_arg_area.next168, ptr %overflow_arg_area_p166, align 8
  br label %vaarg.end169

vaarg.end169:                                     ; preds = %vaarg.in_mem165, %vaarg.in_reg163
  %vaarg.addr170 = phi ptr [ %75, %vaarg.in_reg163 ], [ %overflow_arg_area167, %vaarg.in_mem165 ]
  %77 = load i32, ptr %vaarg.addr170, align 4
  %and = and i32 %77, 65535
  %conv = trunc i32 %and to i16
  %78 = load ptr, ptr %db146, align 8
  %dbOptFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %78, i32 0, i32 15
  store i16 %conv, ptr %dbOptFlags, align 4
  br label %sw.epilog

sw.bb171:                                         ; preds = %entry
  %arraydecay172 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p173 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay172, i32 0, i32 0
  %gp_offset174 = load i32, ptr %gp_offset_p173, align 16
  %fits_in_gp175 = icmp ule i32 %gp_offset174, 40
  br i1 %fits_in_gp175, label %vaarg.in_reg176, label %vaarg.in_mem178

vaarg.in_reg176:                                  ; preds = %sw.bb171
  %79 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay172, i32 0, i32 3
  %reg_save_area177 = load ptr, ptr %79, align 16
  %80 = getelementptr i8, ptr %reg_save_area177, i32 %gp_offset174
  %81 = add i32 %gp_offset174, 8
  store i32 %81, ptr %gp_offset_p173, align 16
  br label %vaarg.end182

vaarg.in_mem178:                                  ; preds = %sw.bb171
  %overflow_arg_area_p179 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay172, i32 0, i32 2
  %overflow_arg_area180 = load ptr, ptr %overflow_arg_area_p179, align 8
  %overflow_arg_area.next181 = getelementptr i8, ptr %overflow_arg_area180, i32 8
  store ptr %overflow_arg_area.next181, ptr %overflow_arg_area_p179, align 8
  br label %vaarg.end182

vaarg.end182:                                     ; preds = %vaarg.in_mem178, %vaarg.in_reg176
  %vaarg.addr183 = phi ptr [ %80, %vaarg.in_reg176 ], [ %overflow_arg_area180, %vaarg.in_mem178 ]
  %82 = load i32, ptr %vaarg.addr183, align 4
  store i32 %82, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 37), align 8
  br label %sw.epilog

sw.bb184:                                         ; preds = %entry
  %arraydecay185 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p186 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay185, i32 0, i32 0
  %gp_offset187 = load i32, ptr %gp_offset_p186, align 16
  %fits_in_gp188 = icmp ule i32 %gp_offset187, 40
  br i1 %fits_in_gp188, label %vaarg.in_reg189, label %vaarg.in_mem191

vaarg.in_reg189:                                  ; preds = %sw.bb184
  %83 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay185, i32 0, i32 3
  %reg_save_area190 = load ptr, ptr %83, align 16
  %84 = getelementptr i8, ptr %reg_save_area190, i32 %gp_offset187
  %85 = add i32 %gp_offset187, 8
  store i32 %85, ptr %gp_offset_p186, align 16
  br label %vaarg.end195

vaarg.in_mem191:                                  ; preds = %sw.bb184
  %overflow_arg_area_p192 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay185, i32 0, i32 2
  %overflow_arg_area193 = load ptr, ptr %overflow_arg_area_p192, align 8
  %overflow_arg_area.next194 = getelementptr i8, ptr %overflow_arg_area193, i32 8
  store ptr %overflow_arg_area.next194, ptr %overflow_arg_area_p192, align 8
  br label %vaarg.end195

vaarg.end195:                                     ; preds = %vaarg.in_mem191, %vaarg.in_reg189
  %vaarg.addr196 = phi ptr [ %84, %vaarg.in_reg189 ], [ %overflow_arg_area193, %vaarg.in_mem191 ]
  %86 = load i32, ptr %vaarg.addr196, align 4
  store i32 %86, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 38), align 4
  br label %sw.epilog

sw.bb197:                                         ; preds = %entry
  %arraydecay198 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p199 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay198, i32 0, i32 0
  %gp_offset200 = load i32, ptr %gp_offset_p199, align 16
  %fits_in_gp201 = icmp ule i32 %gp_offset200, 40
  br i1 %fits_in_gp201, label %vaarg.in_reg202, label %vaarg.in_mem204

vaarg.in_reg202:                                  ; preds = %sw.bb197
  %87 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay198, i32 0, i32 3
  %reg_save_area203 = load ptr, ptr %87, align 16
  %88 = getelementptr i8, ptr %reg_save_area203, i32 %gp_offset200
  %89 = add i32 %gp_offset200, 8
  store i32 %89, ptr %gp_offset_p199, align 16
  br label %vaarg.end208

vaarg.in_mem204:                                  ; preds = %sw.bb197
  %overflow_arg_area_p205 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay198, i32 0, i32 2
  %overflow_arg_area206 = load ptr, ptr %overflow_arg_area_p205, align 8
  %overflow_arg_area.next207 = getelementptr i8, ptr %overflow_arg_area206, i32 8
  store ptr %overflow_arg_area.next207, ptr %overflow_arg_area_p205, align 8
  br label %vaarg.end208

vaarg.end208:                                     ; preds = %vaarg.in_mem204, %vaarg.in_reg202
  %vaarg.addr209 = phi ptr [ %88, %vaarg.in_reg202 ], [ %overflow_arg_area206, %vaarg.in_mem204 ]
  %90 = load i32, ptr %vaarg.addr209, align 4
  store i32 %90, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 8), align 8
  br label %sw.epilog

sw.bb210:                                         ; preds = %entry
  %arraydecay211 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p212 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay211, i32 0, i32 0
  %gp_offset213 = load i32, ptr %gp_offset_p212, align 16
  %fits_in_gp214 = icmp ule i32 %gp_offset213, 40
  br i1 %fits_in_gp214, label %vaarg.in_reg215, label %vaarg.in_mem217

vaarg.in_reg215:                                  ; preds = %sw.bb210
  %91 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay211, i32 0, i32 3
  %reg_save_area216 = load ptr, ptr %91, align 16
  %92 = getelementptr i8, ptr %reg_save_area216, i32 %gp_offset213
  %93 = add i32 %gp_offset213, 8
  store i32 %93, ptr %gp_offset_p212, align 16
  br label %vaarg.end221

vaarg.in_mem217:                                  ; preds = %sw.bb210
  %overflow_arg_area_p218 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay211, i32 0, i32 2
  %overflow_arg_area219 = load ptr, ptr %overflow_arg_area_p218, align 8
  %overflow_arg_area.next220 = getelementptr i8, ptr %overflow_arg_area219, i32 8
  store ptr %overflow_arg_area.next220, ptr %overflow_arg_area_p218, align 8
  br label %vaarg.end221

vaarg.end221:                                     ; preds = %vaarg.in_mem217, %vaarg.in_reg215
  %vaarg.addr222 = phi ptr [ %92, %vaarg.in_reg215 ], [ %overflow_arg_area219, %vaarg.in_mem217 ]
  %94 = load i32, ptr %vaarg.addr222, align 4
  %conv223 = trunc i32 %94 to i8
  store i8 %conv223, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 6), align 1
  br label %sw.epilog

sw.bb224:                                         ; preds = %entry
  %arraydecay225 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p226 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay225, i32 0, i32 0
  %gp_offset227 = load i32, ptr %gp_offset_p226, align 16
  %fits_in_gp228 = icmp ule i32 %gp_offset227, 40
  br i1 %fits_in_gp228, label %vaarg.in_reg229, label %vaarg.in_mem231

vaarg.in_reg229:                                  ; preds = %sw.bb224
  %95 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay225, i32 0, i32 3
  %reg_save_area230 = load ptr, ptr %95, align 16
  %96 = getelementptr i8, ptr %reg_save_area230, i32 %gp_offset227
  %97 = add i32 %gp_offset227, 8
  store i32 %97, ptr %gp_offset_p226, align 16
  br label %vaarg.end235

vaarg.in_mem231:                                  ; preds = %sw.bb224
  %overflow_arg_area_p232 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay225, i32 0, i32 2
  %overflow_arg_area233 = load ptr, ptr %overflow_arg_area_p232, align 8
  %overflow_arg_area.next234 = getelementptr i8, ptr %overflow_arg_area233, i32 8
  store ptr %overflow_arg_area.next234, ptr %overflow_arg_area_p232, align 8
  br label %vaarg.end235

vaarg.end235:                                     ; preds = %vaarg.in_mem231, %vaarg.in_reg229
  %vaarg.addr236 = phi ptr [ %96, %vaarg.in_reg229 ], [ %overflow_arg_area233, %vaarg.in_mem231 ]
  %98 = load i32, ptr %vaarg.addr236, align 4
  store i32 %98, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 39), align 8
  br label %sw.epilog

sw.bb237:                                         ; preds = %entry
  br label %sw.epilog

sw.bb238:                                         ; preds = %entry
  %arraydecay240 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p241 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay240, i32 0, i32 0
  %gp_offset242 = load i32, ptr %gp_offset_p241, align 16
  %fits_in_gp243 = icmp ule i32 %gp_offset242, 40
  br i1 %fits_in_gp243, label %vaarg.in_reg244, label %vaarg.in_mem246

vaarg.in_reg244:                                  ; preds = %sw.bb238
  %99 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay240, i32 0, i32 3
  %reg_save_area245 = load ptr, ptr %99, align 16
  %100 = getelementptr i8, ptr %reg_save_area245, i32 %gp_offset242
  %101 = add i32 %gp_offset242, 8
  store i32 %101, ptr %gp_offset_p241, align 16
  br label %vaarg.end250

vaarg.in_mem246:                                  ; preds = %sw.bb238
  %overflow_arg_area_p247 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay240, i32 0, i32 2
  %overflow_arg_area248 = load ptr, ptr %overflow_arg_area_p247, align 8
  %overflow_arg_area.next249 = getelementptr i8, ptr %overflow_arg_area248, i32 8
  store ptr %overflow_arg_area.next249, ptr %overflow_arg_area_p247, align 8
  br label %vaarg.end250

vaarg.end250:                                     ; preds = %vaarg.in_mem246, %vaarg.in_reg244
  %vaarg.addr251 = phi ptr [ %100, %vaarg.in_reg244 ], [ %overflow_arg_area248, %vaarg.in_mem246 ]
  %102 = load ptr, ptr %vaarg.addr251, align 8
  store ptr %102, ptr %db239, align 8
  %arraydecay252 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p253 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay252, i32 0, i32 0
  %gp_offset254 = load i32, ptr %gp_offset_p253, align 16
  %fits_in_gp255 = icmp ule i32 %gp_offset254, 40
  br i1 %fits_in_gp255, label %vaarg.in_reg256, label %vaarg.in_mem258

vaarg.in_reg256:                                  ; preds = %vaarg.end250
  %103 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay252, i32 0, i32 3
  %reg_save_area257 = load ptr, ptr %103, align 16
  %104 = getelementptr i8, ptr %reg_save_area257, i32 %gp_offset254
  %105 = add i32 %gp_offset254, 8
  store i32 %105, ptr %gp_offset_p253, align 16
  br label %vaarg.end262

vaarg.in_mem258:                                  ; preds = %vaarg.end250
  %overflow_arg_area_p259 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay252, i32 0, i32 2
  %overflow_arg_area260 = load ptr, ptr %overflow_arg_area_p259, align 8
  %overflow_arg_area.next261 = getelementptr i8, ptr %overflow_arg_area260, i32 8
  store ptr %overflow_arg_area.next261, ptr %overflow_arg_area_p259, align 8
  br label %vaarg.end262

vaarg.end262:                                     ; preds = %vaarg.in_mem258, %vaarg.in_reg256
  %vaarg.addr263 = phi ptr [ %104, %vaarg.in_reg256 ], [ %overflow_arg_area260, %vaarg.in_mem258 ]
  %106 = load i32, ptr %vaarg.addr263, align 4
  %107 = load ptr, ptr %db239, align 8
  %nMaxSorterMmap = getelementptr inbounds nuw %struct.sqlite3, ptr %107, i32 0, i32 34
  store i32 %106, ptr %nMaxSorterMmap, align 4
  br label %sw.epilog

sw.bb264:                                         ; preds = %entry
  %108 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 27), align 4
  %cmp265 = icmp eq i32 %108, 0
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %sw.bb264
  store i32 1, ptr %rc, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.then267, %sw.bb264
  br label %sw.epilog

sw.bb269:                                         ; preds = %entry
  %arraydecay271 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p272 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay271, i32 0, i32 0
  %gp_offset273 = load i32, ptr %gp_offset_p272, align 16
  %fits_in_gp274 = icmp ule i32 %gp_offset273, 40
  br i1 %fits_in_gp274, label %vaarg.in_reg275, label %vaarg.in_mem277

vaarg.in_reg275:                                  ; preds = %sw.bb269
  %109 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay271, i32 0, i32 3
  %reg_save_area276 = load ptr, ptr %109, align 16
  %110 = getelementptr i8, ptr %reg_save_area276, i32 %gp_offset273
  %111 = add i32 %gp_offset273, 8
  store i32 %111, ptr %gp_offset_p272, align 16
  br label %vaarg.end281

vaarg.in_mem277:                                  ; preds = %sw.bb269
  %overflow_arg_area_p278 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay271, i32 0, i32 2
  %overflow_arg_area279 = load ptr, ptr %overflow_arg_area_p278, align 8
  %overflow_arg_area.next280 = getelementptr i8, ptr %overflow_arg_area279, i32 8
  store ptr %overflow_arg_area.next280, ptr %overflow_arg_area_p278, align 8
  br label %vaarg.end281

vaarg.end281:                                     ; preds = %vaarg.in_mem277, %vaarg.in_reg275
  %vaarg.addr282 = phi ptr [ %110, %vaarg.in_reg275 ], [ %overflow_arg_area279, %vaarg.in_mem277 ]
  %112 = load ptr, ptr %vaarg.addr282, align 8
  store ptr %112, ptr %db270, align 8
  %113 = load ptr, ptr %db270, align 8
  %mutex283 = getelementptr inbounds nuw %struct.sqlite3, ptr %113, i32 0, i32 3
  %114 = load ptr, ptr %mutex283, align 8
  call void @sqlite3_mutex_enter(ptr noundef %114)
  %115 = load ptr, ptr %db270, align 8
  %arraydecay284 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p285 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay284, i32 0, i32 0
  %gp_offset286 = load i32, ptr %gp_offset_p285, align 16
  %fits_in_gp287 = icmp ule i32 %gp_offset286, 40
  br i1 %fits_in_gp287, label %vaarg.in_reg288, label %vaarg.in_mem290

vaarg.in_reg288:                                  ; preds = %vaarg.end281
  %116 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay284, i32 0, i32 3
  %reg_save_area289 = load ptr, ptr %116, align 16
  %117 = getelementptr i8, ptr %reg_save_area289, i32 %gp_offset286
  %118 = add i32 %gp_offset286, 8
  store i32 %118, ptr %gp_offset_p285, align 16
  br label %vaarg.end294

vaarg.in_mem290:                                  ; preds = %vaarg.end281
  %overflow_arg_area_p291 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay284, i32 0, i32 2
  %overflow_arg_area292 = load ptr, ptr %overflow_arg_area_p291, align 8
  %overflow_arg_area.next293 = getelementptr i8, ptr %overflow_arg_area292, i32 8
  store ptr %overflow_arg_area.next293, ptr %overflow_arg_area_p291, align 8
  br label %vaarg.end294

vaarg.end294:                                     ; preds = %vaarg.in_mem290, %vaarg.in_reg288
  %vaarg.addr295 = phi ptr [ %117, %vaarg.in_reg288 ], [ %overflow_arg_area292, %vaarg.in_mem290 ]
  %119 = load ptr, ptr %vaarg.addr295, align 8
  %call296 = call i32 @sqlite3FindDbName(ptr noundef %115, ptr noundef %119)
  %conv297 = trunc i32 %call296 to i8
  %120 = load ptr, ptr %db270, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %120, i32 0, i32 35
  %iDb = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 1
  store i8 %conv297, ptr %iDb, align 4
  %arraydecay298 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p299 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay298, i32 0, i32 0
  %gp_offset300 = load i32, ptr %gp_offset_p299, align 16
  %fits_in_gp301 = icmp ule i32 %gp_offset300, 40
  br i1 %fits_in_gp301, label %vaarg.in_reg302, label %vaarg.in_mem304

vaarg.in_reg302:                                  ; preds = %vaarg.end294
  %121 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay298, i32 0, i32 3
  %reg_save_area303 = load ptr, ptr %121, align 16
  %122 = getelementptr i8, ptr %reg_save_area303, i32 %gp_offset300
  %123 = add i32 %gp_offset300, 8
  store i32 %123, ptr %gp_offset_p299, align 16
  br label %vaarg.end308

vaarg.in_mem304:                                  ; preds = %vaarg.end294
  %overflow_arg_area_p305 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay298, i32 0, i32 2
  %overflow_arg_area306 = load ptr, ptr %overflow_arg_area_p305, align 8
  %overflow_arg_area.next307 = getelementptr i8, ptr %overflow_arg_area306, i32 8
  store ptr %overflow_arg_area.next307, ptr %overflow_arg_area_p305, align 8
  br label %vaarg.end308

vaarg.end308:                                     ; preds = %vaarg.in_mem304, %vaarg.in_reg302
  %vaarg.addr309 = phi ptr [ %122, %vaarg.in_reg302 ], [ %overflow_arg_area306, %vaarg.in_mem304 ]
  %124 = load i32, ptr %vaarg.addr309, align 4
  %125 = load ptr, ptr %db270, align 8
  %init310 = getelementptr inbounds nuw %struct.sqlite3, ptr %125, i32 0, i32 35
  %imposterTable = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init310, i32 0, i32 3
  %126 = trunc i32 %124 to i8
  %bf.load = load i8, ptr %imposterTable, align 2
  %bf.value = and i8 %126, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %imposterTable, align 2
  %bf.result.cast = zext i8 %bf.value to i32
  %conv311 = trunc i32 %bf.result.cast to i8
  %127 = load ptr, ptr %db270, align 8
  %init312 = getelementptr inbounds nuw %struct.sqlite3, ptr %127, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init312, i32 0, i32 2
  store i8 %conv311, ptr %busy, align 1
  %arraydecay313 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p314 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay313, i32 0, i32 0
  %gp_offset315 = load i32, ptr %gp_offset_p314, align 16
  %fits_in_gp316 = icmp ule i32 %gp_offset315, 40
  br i1 %fits_in_gp316, label %vaarg.in_reg317, label %vaarg.in_mem319

vaarg.in_reg317:                                  ; preds = %vaarg.end308
  %128 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay313, i32 0, i32 3
  %reg_save_area318 = load ptr, ptr %128, align 16
  %129 = getelementptr i8, ptr %reg_save_area318, i32 %gp_offset315
  %130 = add i32 %gp_offset315, 8
  store i32 %130, ptr %gp_offset_p314, align 16
  br label %vaarg.end323

vaarg.in_mem319:                                  ; preds = %vaarg.end308
  %overflow_arg_area_p320 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay313, i32 0, i32 2
  %overflow_arg_area321 = load ptr, ptr %overflow_arg_area_p320, align 8
  %overflow_arg_area.next322 = getelementptr i8, ptr %overflow_arg_area321, i32 8
  store ptr %overflow_arg_area.next322, ptr %overflow_arg_area_p320, align 8
  br label %vaarg.end323

vaarg.end323:                                     ; preds = %vaarg.in_mem319, %vaarg.in_reg317
  %vaarg.addr324 = phi ptr [ %129, %vaarg.in_reg317 ], [ %overflow_arg_area321, %vaarg.in_mem319 ]
  %131 = load i32, ptr %vaarg.addr324, align 4
  %132 = load ptr, ptr %db270, align 8
  %init325 = getelementptr inbounds nuw %struct.sqlite3, ptr %132, i32 0, i32 35
  %newTnum = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init325, i32 0, i32 0
  store i32 %131, ptr %newTnum, align 8
  %133 = load ptr, ptr %db270, align 8
  %init326 = getelementptr inbounds nuw %struct.sqlite3, ptr %133, i32 0, i32 35
  %busy327 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init326, i32 0, i32 2
  %134 = load i8, ptr %busy327, align 1
  %conv328 = zext i8 %134 to i32
  %cmp329 = icmp eq i32 %conv328, 0
  br i1 %cmp329, label %land.lhs.true331, label %if.end337

land.lhs.true331:                                 ; preds = %vaarg.end323
  %135 = load ptr, ptr %db270, align 8
  %init332 = getelementptr inbounds nuw %struct.sqlite3, ptr %135, i32 0, i32 35
  %newTnum333 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init332, i32 0, i32 0
  %136 = load i32, ptr %newTnum333, align 8
  %cmp334 = icmp sgt i32 %136, 0
  br i1 %cmp334, label %if.then336, label %if.end337

if.then336:                                       ; preds = %land.lhs.true331
  %137 = load ptr, ptr %db270, align 8
  call void @sqlite3ResetAllSchemasOfConnection(ptr noundef %137)
  br label %if.end337

if.end337:                                        ; preds = %if.then336, %land.lhs.true331, %vaarg.end323
  %138 = load ptr, ptr %db270, align 8
  %mutex338 = getelementptr inbounds nuw %struct.sqlite3, ptr %138, i32 0, i32 3
  %139 = load ptr, ptr %mutex338, align 8
  call void @sqlite3_mutex_leave(ptr noundef %139)
  br label %sw.epilog

sw.bb339:                                         ; preds = %entry
  %arraydecay340 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p341 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay340, i32 0, i32 0
  %gp_offset342 = load i32, ptr %gp_offset_p341, align 16
  %fits_in_gp343 = icmp ule i32 %gp_offset342, 40
  br i1 %fits_in_gp343, label %vaarg.in_reg344, label %vaarg.in_mem346

vaarg.in_reg344:                                  ; preds = %sw.bb339
  %140 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay340, i32 0, i32 3
  %reg_save_area345 = load ptr, ptr %140, align 16
  %141 = getelementptr i8, ptr %reg_save_area345, i32 %gp_offset342
  %142 = add i32 %gp_offset342, 8
  store i32 %142, ptr %gp_offset_p341, align 16
  br label %vaarg.end350

vaarg.in_mem346:                                  ; preds = %sw.bb339
  %overflow_arg_area_p347 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay340, i32 0, i32 2
  %overflow_arg_area348 = load ptr, ptr %overflow_arg_area_p347, align 8
  %overflow_arg_area.next349 = getelementptr i8, ptr %overflow_arg_area348, i32 8
  store ptr %overflow_arg_area.next349, ptr %overflow_arg_area_p347, align 8
  br label %vaarg.end350

vaarg.end350:                                     ; preds = %vaarg.in_mem346, %vaarg.in_reg344
  %vaarg.addr351 = phi ptr [ %141, %vaarg.in_reg344 ], [ %overflow_arg_area348, %vaarg.in_mem346 ]
  %143 = load ptr, ptr %vaarg.addr351, align 8
  store ptr %143, ptr %pCtx, align 8
  %144 = load ptr, ptr %pCtx, align 8
  call void @sqlite3ResultIntReal(ptr noundef %144)
  br label %sw.epilog

sw.epilog:                                        ; preds = %vaarg.end350, %if.end337, %if.end268, %vaarg.end262, %sw.bb237, %vaarg.end235, %vaarg.end221, %vaarg.end208, %vaarg.end195, %vaarg.end182, %vaarg.end169, %vaarg.end139, %sw.bb113, %cond.end, %sw.bb96, %if.end95, %vaarg.end78, %vaarg.end52, %vaarg.end39, %if.end, %sw.bb1, %sw.bb, %entry
  %arraydecay352 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay352)
  %145 = load i32, ptr %rc, align 4
  ret i32 %145
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PrngSaveState() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PrngRestoreState() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecBuiltinTest(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FaultSim(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BenignMallocHooks(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetPageSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResultIntReal(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
