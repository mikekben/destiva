; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_config(i32 noundef %op, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %rc = alloca i32, align 4
  %szMmap = alloca i64, align 8
  %mxMmap = alloca i64, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 27), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sqlite3MisuseError(i32 noundef 156609)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %1 = load i32, ptr %op.addr, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 10, label %sw.bb3
    i32 11, label %sw.bb5
    i32 4, label %sw.bb18
    i32 5, label %sw.bb31
    i32 9, label %sw.bb46
    i32 27, label %sw.bb59
    i32 7, label %sw.bb72
    i32 24, label %sw.bb109
    i32 14, label %sw.bb126
    i32 15, label %sw.bb127
    i32 18, label %sw.bb128
    i32 19, label %sw.bb141
    i32 13, label %sw.bb158
    i32 16, label %sw.bb183
    i32 17, label %sw.bb208
    i32 20, label %sw.bb222
    i32 22, label %sw.bb236
    i32 25, label %sw.bb275
    i32 26, label %sw.bb288
  ]

sw.bb:                                            ; preds = %if.end
  store i8 0, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  store i8 0, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 2), align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  store i8 1, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  store i8 0, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 2), align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store i8 1, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  store i8 1, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 2), align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay4, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb3
  %2 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay4, i32 0, i32 3
  %reg_save_area = load ptr, ptr %2, align 16
  %3 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %4 = add i32 %gp_offset, 8
  store i32 %4, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb3
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay4, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %3, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %5 = load ptr, ptr %vaarg.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 13), ptr align 8 %5, i64 72, i1 false)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p7 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay6, i32 0, i32 0
  %gp_offset8 = load i32, ptr %gp_offset_p7, align 16
  %fits_in_gp9 = icmp ule i32 %gp_offset8, 40
  br i1 %fits_in_gp9, label %vaarg.in_reg10, label %vaarg.in_mem12

vaarg.in_reg10:                                   ; preds = %sw.bb5
  %6 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay6, i32 0, i32 3
  %reg_save_area11 = load ptr, ptr %6, align 16
  %7 = getelementptr i8, ptr %reg_save_area11, i32 %gp_offset8
  %8 = add i32 %gp_offset8, 8
  store i32 %8, ptr %gp_offset_p7, align 16
  br label %vaarg.end16

vaarg.in_mem12:                                   ; preds = %sw.bb5
  %overflow_arg_area_p13 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay6, i32 0, i32 2
  %overflow_arg_area14 = load ptr, ptr %overflow_arg_area_p13, align 8
  %overflow_arg_area.next15 = getelementptr i8, ptr %overflow_arg_area14, i32 8
  store ptr %overflow_arg_area.next15, ptr %overflow_arg_area_p13, align 8
  br label %vaarg.end16

vaarg.end16:                                      ; preds = %vaarg.in_mem12, %vaarg.in_reg10
  %vaarg.addr17 = phi ptr [ %7, %vaarg.in_reg10 ], [ %overflow_arg_area14, %vaarg.in_mem12 ]
  %9 = load ptr, ptr %vaarg.addr17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 13), i64 72, i1 false)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %arraydecay19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p20 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay19, i32 0, i32 0
  %gp_offset21 = load i32, ptr %gp_offset_p20, align 16
  %fits_in_gp22 = icmp ule i32 %gp_offset21, 40
  br i1 %fits_in_gp22, label %vaarg.in_reg23, label %vaarg.in_mem25

vaarg.in_reg23:                                   ; preds = %sw.bb18
  %10 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay19, i32 0, i32 3
  %reg_save_area24 = load ptr, ptr %10, align 16
  %11 = getelementptr i8, ptr %reg_save_area24, i32 %gp_offset21
  %12 = add i32 %gp_offset21, 8
  store i32 %12, ptr %gp_offset_p20, align 16
  br label %vaarg.end29

vaarg.in_mem25:                                   ; preds = %sw.bb18
  %overflow_arg_area_p26 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay19, i32 0, i32 2
  %overflow_arg_area27 = load ptr, ptr %overflow_arg_area_p26, align 8
  %overflow_arg_area.next28 = getelementptr i8, ptr %overflow_arg_area27, i32 8
  store ptr %overflow_arg_area.next28, ptr %overflow_arg_area_p26, align 8
  br label %vaarg.end29

vaarg.end29:                                      ; preds = %vaarg.in_mem25, %vaarg.in_reg23
  %vaarg.addr30 = phi ptr [ %11, %vaarg.in_reg23 ], [ %overflow_arg_area27, %vaarg.in_mem25 ]
  %13 = load ptr, ptr %vaarg.addr30, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), ptr align 8 %13, i64 64, i1 false)
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  %14 = load ptr, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), align 8
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.bb31
  call void @sqlite3MemSetDefault()
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %sw.bb31
  %arraydecay34 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p35 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay34, i32 0, i32 0
  %gp_offset36 = load i32, ptr %gp_offset_p35, align 16
  %fits_in_gp37 = icmp ule i32 %gp_offset36, 40
  br i1 %fits_in_gp37, label %vaarg.in_reg38, label %vaarg.in_mem40

vaarg.in_reg38:                                   ; preds = %if.end33
  %15 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay34, i32 0, i32 3
  %reg_save_area39 = load ptr, ptr %15, align 16
  %16 = getelementptr i8, ptr %reg_save_area39, i32 %gp_offset36
  %17 = add i32 %gp_offset36, 8
  store i32 %17, ptr %gp_offset_p35, align 16
  br label %vaarg.end44

vaarg.in_mem40:                                   ; preds = %if.end33
  %overflow_arg_area_p41 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay34, i32 0, i32 2
  %overflow_arg_area42 = load ptr, ptr %overflow_arg_area_p41, align 8
  %overflow_arg_area.next43 = getelementptr i8, ptr %overflow_arg_area42, i32 8
  store ptr %overflow_arg_area.next43, ptr %overflow_arg_area_p41, align 8
  br label %vaarg.end44

vaarg.end44:                                      ; preds = %vaarg.in_mem40, %vaarg.in_reg38
  %vaarg.addr45 = phi ptr [ %16, %vaarg.in_reg38 ], [ %overflow_arg_area42, %vaarg.in_mem40 ]
  %18 = load ptr, ptr %vaarg.addr45, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), i64 64, i1 false)
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end
  %arraydecay47 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p48 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay47, i32 0, i32 0
  %gp_offset49 = load i32, ptr %gp_offset_p48, align 16
  %fits_in_gp50 = icmp ule i32 %gp_offset49, 40
  br i1 %fits_in_gp50, label %vaarg.in_reg51, label %vaarg.in_mem53

vaarg.in_reg51:                                   ; preds = %sw.bb46
  %19 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay47, i32 0, i32 3
  %reg_save_area52 = load ptr, ptr %19, align 16
  %20 = getelementptr i8, ptr %reg_save_area52, i32 %gp_offset49
  %21 = add i32 %gp_offset49, 8
  store i32 %21, ptr %gp_offset_p48, align 16
  br label %vaarg.end57

vaarg.in_mem53:                                   ; preds = %sw.bb46
  %overflow_arg_area_p54 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay47, i32 0, i32 2
  %overflow_arg_area55 = load ptr, ptr %overflow_arg_area_p54, align 8
  %overflow_arg_area.next56 = getelementptr i8, ptr %overflow_arg_area55, i32 8
  store ptr %overflow_arg_area.next56, ptr %overflow_arg_area_p54, align 8
  br label %vaarg.end57

vaarg.end57:                                      ; preds = %vaarg.in_mem53, %vaarg.in_reg51
  %vaarg.addr58 = phi ptr [ %20, %vaarg.in_reg51 ], [ %overflow_arg_area55, %vaarg.in_mem53 ]
  %22 = load i32, ptr %vaarg.addr58, align 4
  store i32 %22, ptr @sqlite3Config, align 8
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end
  %arraydecay60 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p61 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay60, i32 0, i32 0
  %gp_offset62 = load i32, ptr %gp_offset_p61, align 16
  %fits_in_gp63 = icmp ule i32 %gp_offset62, 40
  br i1 %fits_in_gp63, label %vaarg.in_reg64, label %vaarg.in_mem66

vaarg.in_reg64:                                   ; preds = %sw.bb59
  %23 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay60, i32 0, i32 3
  %reg_save_area65 = load ptr, ptr %23, align 16
  %24 = getelementptr i8, ptr %reg_save_area65, i32 %gp_offset62
  %25 = add i32 %gp_offset62, 8
  store i32 %25, ptr %gp_offset_p61, align 16
  br label %vaarg.end70

vaarg.in_mem66:                                   ; preds = %sw.bb59
  %overflow_arg_area_p67 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay60, i32 0, i32 2
  %overflow_arg_area68 = load ptr, ptr %overflow_arg_area_p67, align 8
  %overflow_arg_area.next69 = getelementptr i8, ptr %overflow_arg_area68, i32 8
  store ptr %overflow_arg_area.next69, ptr %overflow_arg_area_p67, align 8
  br label %vaarg.end70

vaarg.end70:                                      ; preds = %vaarg.in_mem66, %vaarg.in_reg64
  %vaarg.addr71 = phi ptr [ %24, %vaarg.in_reg64 ], [ %overflow_arg_area68, %vaarg.in_mem66 ]
  %26 = load i32, ptr %vaarg.addr71, align 4
  %conv = trunc i32 %26 to i8
  store i8 %conv, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 5), align 8
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end
  %arraydecay73 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p74 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay73, i32 0, i32 0
  %gp_offset75 = load i32, ptr %gp_offset_p74, align 16
  %fits_in_gp76 = icmp ule i32 %gp_offset75, 40
  br i1 %fits_in_gp76, label %vaarg.in_reg77, label %vaarg.in_mem79

vaarg.in_reg77:                                   ; preds = %sw.bb72
  %27 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay73, i32 0, i32 3
  %reg_save_area78 = load ptr, ptr %27, align 16
  %28 = getelementptr i8, ptr %reg_save_area78, i32 %gp_offset75
  %29 = add i32 %gp_offset75, 8
  store i32 %29, ptr %gp_offset_p74, align 16
  br label %vaarg.end83

vaarg.in_mem79:                                   ; preds = %sw.bb72
  %overflow_arg_area_p80 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay73, i32 0, i32 2
  %overflow_arg_area81 = load ptr, ptr %overflow_arg_area_p80, align 8
  %overflow_arg_area.next82 = getelementptr i8, ptr %overflow_arg_area81, i32 8
  store ptr %overflow_arg_area.next82, ptr %overflow_arg_area_p80, align 8
  br label %vaarg.end83

vaarg.end83:                                      ; preds = %vaarg.in_mem79, %vaarg.in_reg77
  %vaarg.addr84 = phi ptr [ %28, %vaarg.in_reg77 ], [ %overflow_arg_area81, %vaarg.in_mem79 ]
  %30 = load ptr, ptr %vaarg.addr84, align 8
  store ptr %30, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 21), align 8
  %arraydecay85 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p86 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay85, i32 0, i32 0
  %gp_offset87 = load i32, ptr %gp_offset_p86, align 16
  %fits_in_gp88 = icmp ule i32 %gp_offset87, 40
  br i1 %fits_in_gp88, label %vaarg.in_reg89, label %vaarg.in_mem91

vaarg.in_reg89:                                   ; preds = %vaarg.end83
  %31 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay85, i32 0, i32 3
  %reg_save_area90 = load ptr, ptr %31, align 16
  %32 = getelementptr i8, ptr %reg_save_area90, i32 %gp_offset87
  %33 = add i32 %gp_offset87, 8
  store i32 %33, ptr %gp_offset_p86, align 16
  br label %vaarg.end95

vaarg.in_mem91:                                   ; preds = %vaarg.end83
  %overflow_arg_area_p92 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay85, i32 0, i32 2
  %overflow_arg_area93 = load ptr, ptr %overflow_arg_area_p92, align 8
  %overflow_arg_area.next94 = getelementptr i8, ptr %overflow_arg_area93, i32 8
  store ptr %overflow_arg_area.next94, ptr %overflow_arg_area_p92, align 8
  br label %vaarg.end95

vaarg.end95:                                      ; preds = %vaarg.in_mem91, %vaarg.in_reg89
  %vaarg.addr96 = phi ptr [ %32, %vaarg.in_reg89 ], [ %overflow_arg_area93, %vaarg.in_mem91 ]
  %34 = load i32, ptr %vaarg.addr96, align 4
  store i32 %34, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 22), align 8
  %arraydecay97 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p98 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay97, i32 0, i32 0
  %gp_offset99 = load i32, ptr %gp_offset_p98, align 16
  %fits_in_gp100 = icmp ule i32 %gp_offset99, 40
  br i1 %fits_in_gp100, label %vaarg.in_reg101, label %vaarg.in_mem103

vaarg.in_reg101:                                  ; preds = %vaarg.end95
  %35 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay97, i32 0, i32 3
  %reg_save_area102 = load ptr, ptr %35, align 16
  %36 = getelementptr i8, ptr %reg_save_area102, i32 %gp_offset99
  %37 = add i32 %gp_offset99, 8
  store i32 %37, ptr %gp_offset_p98, align 16
  br label %vaarg.end107

vaarg.in_mem103:                                  ; preds = %vaarg.end95
  %overflow_arg_area_p104 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay97, i32 0, i32 2
  %overflow_arg_area105 = load ptr, ptr %overflow_arg_area_p104, align 8
  %overflow_arg_area.next106 = getelementptr i8, ptr %overflow_arg_area105, i32 8
  store ptr %overflow_arg_area.next106, ptr %overflow_arg_area_p104, align 8
  br label %vaarg.end107

vaarg.end107:                                     ; preds = %vaarg.in_mem103, %vaarg.in_reg101
  %vaarg.addr108 = phi ptr [ %36, %vaarg.in_reg101 ], [ %overflow_arg_area105, %vaarg.in_mem103 ]
  %38 = load i32, ptr %vaarg.addr108, align 4
  store i32 %38, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 23), align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end
  %call110 = call i32 @sqlite3HeaderSizeBtree()
  %call111 = call i32 @sqlite3HeaderSizePcache()
  %add = add nsw i32 %call110, %call111
  %call112 = call i32 @sqlite3HeaderSizePcache1()
  %add113 = add nsw i32 %add, %call112
  %arraydecay114 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p115 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay114, i32 0, i32 0
  %gp_offset116 = load i32, ptr %gp_offset_p115, align 16
  %fits_in_gp117 = icmp ule i32 %gp_offset116, 40
  br i1 %fits_in_gp117, label %vaarg.in_reg118, label %vaarg.in_mem120

vaarg.in_reg118:                                  ; preds = %sw.bb109
  %39 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay114, i32 0, i32 3
  %reg_save_area119 = load ptr, ptr %39, align 16
  %40 = getelementptr i8, ptr %reg_save_area119, i32 %gp_offset116
  %41 = add i32 %gp_offset116, 8
  store i32 %41, ptr %gp_offset_p115, align 16
  br label %vaarg.end124

vaarg.in_mem120:                                  ; preds = %sw.bb109
  %overflow_arg_area_p121 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay114, i32 0, i32 2
  %overflow_arg_area122 = load ptr, ptr %overflow_arg_area_p121, align 8
  %overflow_arg_area.next123 = getelementptr i8, ptr %overflow_arg_area122, i32 8
  store ptr %overflow_arg_area.next123, ptr %overflow_arg_area_p121, align 8
  br label %vaarg.end124

vaarg.end124:                                     ; preds = %vaarg.in_mem120, %vaarg.in_reg118
  %vaarg.addr125 = phi ptr [ %40, %vaarg.in_reg118 ], [ %overflow_arg_area122, %vaarg.in_mem120 ]
  %42 = load ptr, ptr %vaarg.addr125, align 8
  store i32 %add113, ptr %42, align 4
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.end
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end
  store i32 1, ptr %rc, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end
  %arraydecay129 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p130 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay129, i32 0, i32 0
  %gp_offset131 = load i32, ptr %gp_offset_p130, align 16
  %fits_in_gp132 = icmp ule i32 %gp_offset131, 40
  br i1 %fits_in_gp132, label %vaarg.in_reg133, label %vaarg.in_mem135

vaarg.in_reg133:                                  ; preds = %sw.bb128
  %43 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay129, i32 0, i32 3
  %reg_save_area134 = load ptr, ptr %43, align 16
  %44 = getelementptr i8, ptr %reg_save_area134, i32 %gp_offset131
  %45 = add i32 %gp_offset131, 8
  store i32 %45, ptr %gp_offset_p130, align 16
  br label %vaarg.end139

vaarg.in_mem135:                                  ; preds = %sw.bb128
  %overflow_arg_area_p136 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay129, i32 0, i32 2
  %overflow_arg_area137 = load ptr, ptr %overflow_arg_area_p136, align 8
  %overflow_arg_area.next138 = getelementptr i8, ptr %overflow_arg_area137, i32 8
  store ptr %overflow_arg_area.next138, ptr %overflow_arg_area_p136, align 8
  br label %vaarg.end139

vaarg.end139:                                     ; preds = %vaarg.in_mem135, %vaarg.in_reg133
  %vaarg.addr140 = phi ptr [ %44, %vaarg.in_reg133 ], [ %overflow_arg_area137, %vaarg.in_mem135 ]
  %46 = load ptr, ptr %vaarg.addr140, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), ptr align 8 %46, i64 104, i1 false)
  br label %sw.epilog

sw.bb141:                                         ; preds = %if.end
  %47 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_pcache_methods2, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), i32 0, i32 2), align 8
  %cmp142 = icmp eq ptr %47, null
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %sw.bb141
  call void @sqlite3PCacheSetDefault()
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %sw.bb141
  %arraydecay146 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p147 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay146, i32 0, i32 0
  %gp_offset148 = load i32, ptr %gp_offset_p147, align 16
  %fits_in_gp149 = icmp ule i32 %gp_offset148, 40
  br i1 %fits_in_gp149, label %vaarg.in_reg150, label %vaarg.in_mem152

vaarg.in_reg150:                                  ; preds = %if.end145
  %48 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay146, i32 0, i32 3
  %reg_save_area151 = load ptr, ptr %48, align 16
  %49 = getelementptr i8, ptr %reg_save_area151, i32 %gp_offset148
  %50 = add i32 %gp_offset148, 8
  store i32 %50, ptr %gp_offset_p147, align 16
  br label %vaarg.end156

vaarg.in_mem152:                                  ; preds = %if.end145
  %overflow_arg_area_p153 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay146, i32 0, i32 2
  %overflow_arg_area154 = load ptr, ptr %overflow_arg_area_p153, align 8
  %overflow_arg_area.next155 = getelementptr i8, ptr %overflow_arg_area154, i32 8
  store ptr %overflow_arg_area.next155, ptr %overflow_arg_area_p153, align 8
  br label %vaarg.end156

vaarg.end156:                                     ; preds = %vaarg.in_mem152, %vaarg.in_reg150
  %vaarg.addr157 = phi ptr [ %49, %vaarg.in_reg150 ], [ %overflow_arg_area154, %vaarg.in_mem152 ]
  %51 = load ptr, ptr %vaarg.addr157, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %51, ptr align 8 getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), i64 104, i1 false)
  br label %sw.epilog

sw.bb158:                                         ; preds = %if.end
  %arraydecay159 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p160 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay159, i32 0, i32 0
  %gp_offset161 = load i32, ptr %gp_offset_p160, align 16
  %fits_in_gp162 = icmp ule i32 %gp_offset161, 40
  br i1 %fits_in_gp162, label %vaarg.in_reg163, label %vaarg.in_mem165

vaarg.in_reg163:                                  ; preds = %sw.bb158
  %52 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay159, i32 0, i32 3
  %reg_save_area164 = load ptr, ptr %52, align 16
  %53 = getelementptr i8, ptr %reg_save_area164, i32 %gp_offset161
  %54 = add i32 %gp_offset161, 8
  store i32 %54, ptr %gp_offset_p160, align 16
  br label %vaarg.end169

vaarg.in_mem165:                                  ; preds = %sw.bb158
  %overflow_arg_area_p166 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay159, i32 0, i32 2
  %overflow_arg_area167 = load ptr, ptr %overflow_arg_area_p166, align 8
  %overflow_arg_area.next168 = getelementptr i8, ptr %overflow_arg_area167, i32 8
  store ptr %overflow_arg_area.next168, ptr %overflow_arg_area_p166, align 8
  br label %vaarg.end169

vaarg.end169:                                     ; preds = %vaarg.in_mem165, %vaarg.in_reg163
  %vaarg.addr170 = phi ptr [ %53, %vaarg.in_reg163 ], [ %overflow_arg_area167, %vaarg.in_mem165 ]
  %55 = load i32, ptr %vaarg.addr170, align 4
  store i32 %55, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 9), align 4
  %arraydecay171 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p172 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay171, i32 0, i32 0
  %gp_offset173 = load i32, ptr %gp_offset_p172, align 16
  %fits_in_gp174 = icmp ule i32 %gp_offset173, 40
  br i1 %fits_in_gp174, label %vaarg.in_reg175, label %vaarg.in_mem177

vaarg.in_reg175:                                  ; preds = %vaarg.end169
  %56 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay171, i32 0, i32 3
  %reg_save_area176 = load ptr, ptr %56, align 16
  %57 = getelementptr i8, ptr %reg_save_area176, i32 %gp_offset173
  %58 = add i32 %gp_offset173, 8
  store i32 %58, ptr %gp_offset_p172, align 16
  br label %vaarg.end181

vaarg.in_mem177:                                  ; preds = %vaarg.end169
  %overflow_arg_area_p178 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay171, i32 0, i32 2
  %overflow_arg_area179 = load ptr, ptr %overflow_arg_area_p178, align 8
  %overflow_arg_area.next180 = getelementptr i8, ptr %overflow_arg_area179, i32 8
  store ptr %overflow_arg_area.next180, ptr %overflow_arg_area_p178, align 8
  br label %vaarg.end181

vaarg.end181:                                     ; preds = %vaarg.in_mem177, %vaarg.in_reg175
  %vaarg.addr182 = phi ptr [ %57, %vaarg.in_reg175 ], [ %overflow_arg_area179, %vaarg.in_mem177 ]
  %59 = load i32, ptr %vaarg.addr182, align 4
  store i32 %59, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 10), align 8
  br label %sw.epilog

sw.bb183:                                         ; preds = %if.end
  %arraydecay184 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p185 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay184, i32 0, i32 0
  %gp_offset186 = load i32, ptr %gp_offset_p185, align 16
  %fits_in_gp187 = icmp ule i32 %gp_offset186, 40
  br i1 %fits_in_gp187, label %vaarg.in_reg188, label %vaarg.in_mem190

vaarg.in_reg188:                                  ; preds = %sw.bb183
  %60 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay184, i32 0, i32 3
  %reg_save_area189 = load ptr, ptr %60, align 16
  %61 = getelementptr i8, ptr %reg_save_area189, i32 %gp_offset186
  %62 = add i32 %gp_offset186, 8
  store i32 %62, ptr %gp_offset_p185, align 16
  br label %vaarg.end194

vaarg.in_mem190:                                  ; preds = %sw.bb183
  %overflow_arg_area_p191 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay184, i32 0, i32 2
  %overflow_arg_area192 = load ptr, ptr %overflow_arg_area_p191, align 8
  %overflow_arg_area.next193 = getelementptr i8, ptr %overflow_arg_area192, i32 8
  store ptr %overflow_arg_area.next193, ptr %overflow_arg_area_p191, align 8
  br label %vaarg.end194

vaarg.end194:                                     ; preds = %vaarg.in_mem190, %vaarg.in_reg188
  %vaarg.addr195 = phi ptr [ %61, %vaarg.in_reg188 ], [ %overflow_arg_area192, %vaarg.in_mem190 ]
  %63 = load ptr, ptr %vaarg.addr195, align 8
  store ptr %63, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 34), align 8
  %arraydecay196 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p197 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay196, i32 0, i32 0
  %gp_offset198 = load i32, ptr %gp_offset_p197, align 16
  %fits_in_gp199 = icmp ule i32 %gp_offset198, 40
  br i1 %fits_in_gp199, label %vaarg.in_reg200, label %vaarg.in_mem202

vaarg.in_reg200:                                  ; preds = %vaarg.end194
  %64 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay196, i32 0, i32 3
  %reg_save_area201 = load ptr, ptr %64, align 16
  %65 = getelementptr i8, ptr %reg_save_area201, i32 %gp_offset198
  %66 = add i32 %gp_offset198, 8
  store i32 %66, ptr %gp_offset_p197, align 16
  br label %vaarg.end206

vaarg.in_mem202:                                  ; preds = %vaarg.end194
  %overflow_arg_area_p203 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay196, i32 0, i32 2
  %overflow_arg_area204 = load ptr, ptr %overflow_arg_area_p203, align 8
  %overflow_arg_area.next205 = getelementptr i8, ptr %overflow_arg_area204, i32 8
  store ptr %overflow_arg_area.next205, ptr %overflow_arg_area_p203, align 8
  br label %vaarg.end206

vaarg.end206:                                     ; preds = %vaarg.in_mem202, %vaarg.in_reg200
  %vaarg.addr207 = phi ptr [ %65, %vaarg.in_reg200 ], [ %overflow_arg_area204, %vaarg.in_mem202 ]
  %67 = load ptr, ptr %vaarg.addr207, align 8
  store ptr %67, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 35), align 8
  br label %sw.epilog

sw.bb208:                                         ; preds = %if.end
  %arraydecay209 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p210 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay209, i32 0, i32 0
  %gp_offset211 = load i32, ptr %gp_offset_p210, align 16
  %fits_in_gp212 = icmp ule i32 %gp_offset211, 40
  br i1 %fits_in_gp212, label %vaarg.in_reg213, label %vaarg.in_mem215

vaarg.in_reg213:                                  ; preds = %sw.bb208
  %68 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay209, i32 0, i32 3
  %reg_save_area214 = load ptr, ptr %68, align 16
  %69 = getelementptr i8, ptr %reg_save_area214, i32 %gp_offset211
  %70 = add i32 %gp_offset211, 8
  store i32 %70, ptr %gp_offset_p210, align 16
  br label %vaarg.end219

vaarg.in_mem215:                                  ; preds = %sw.bb208
  %overflow_arg_area_p216 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay209, i32 0, i32 2
  %overflow_arg_area217 = load ptr, ptr %overflow_arg_area_p216, align 8
  %overflow_arg_area.next218 = getelementptr i8, ptr %overflow_arg_area217, i32 8
  store ptr %overflow_arg_area.next218, ptr %overflow_arg_area_p216, align 8
  br label %vaarg.end219

vaarg.end219:                                     ; preds = %vaarg.in_mem215, %vaarg.in_reg213
  %vaarg.addr220 = phi ptr [ %69, %vaarg.in_reg213 ], [ %overflow_arg_area217, %vaarg.in_mem215 ]
  %71 = load i32, ptr %vaarg.addr220, align 4
  %conv221 = trunc i32 %71 to i8
  store i8 %conv221, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 3), align 2
  br label %sw.epilog

sw.bb222:                                         ; preds = %if.end
  %arraydecay223 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p224 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay223, i32 0, i32 0
  %gp_offset225 = load i32, ptr %gp_offset_p224, align 16
  %fits_in_gp226 = icmp ule i32 %gp_offset225, 40
  br i1 %fits_in_gp226, label %vaarg.in_reg227, label %vaarg.in_mem229

vaarg.in_reg227:                                  ; preds = %sw.bb222
  %72 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay223, i32 0, i32 3
  %reg_save_area228 = load ptr, ptr %72, align 16
  %73 = getelementptr i8, ptr %reg_save_area228, i32 %gp_offset225
  %74 = add i32 %gp_offset225, 8
  store i32 %74, ptr %gp_offset_p224, align 16
  br label %vaarg.end233

vaarg.in_mem229:                                  ; preds = %sw.bb222
  %overflow_arg_area_p230 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay223, i32 0, i32 2
  %overflow_arg_area231 = load ptr, ptr %overflow_arg_area_p230, align 8
  %overflow_arg_area.next232 = getelementptr i8, ptr %overflow_arg_area231, i32 8
  store ptr %overflow_arg_area.next232, ptr %overflow_arg_area_p230, align 8
  br label %vaarg.end233

vaarg.end233:                                     ; preds = %vaarg.in_mem229, %vaarg.in_reg227
  %vaarg.addr234 = phi ptr [ %73, %vaarg.in_reg227 ], [ %overflow_arg_area231, %vaarg.in_mem229 ]
  %75 = load i32, ptr %vaarg.addr234, align 4
  %conv235 = trunc i32 %75 to i8
  store i8 %conv235, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 4), align 1
  br label %sw.epilog

sw.bb236:                                         ; preds = %if.end
  %arraydecay237 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p238 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay237, i32 0, i32 0
  %gp_offset239 = load i32, ptr %gp_offset_p238, align 16
  %fits_in_gp240 = icmp ule i32 %gp_offset239, 40
  br i1 %fits_in_gp240, label %vaarg.in_reg241, label %vaarg.in_mem243

vaarg.in_reg241:                                  ; preds = %sw.bb236
  %76 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay237, i32 0, i32 3
  %reg_save_area242 = load ptr, ptr %76, align 16
  %77 = getelementptr i8, ptr %reg_save_area242, i32 %gp_offset239
  %78 = add i32 %gp_offset239, 8
  store i32 %78, ptr %gp_offset_p238, align 16
  br label %vaarg.end247

vaarg.in_mem243:                                  ; preds = %sw.bb236
  %overflow_arg_area_p244 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay237, i32 0, i32 2
  %overflow_arg_area245 = load ptr, ptr %overflow_arg_area_p244, align 8
  %overflow_arg_area.next246 = getelementptr i8, ptr %overflow_arg_area245, i32 8
  store ptr %overflow_arg_area.next246, ptr %overflow_arg_area_p244, align 8
  br label %vaarg.end247

vaarg.end247:                                     ; preds = %vaarg.in_mem243, %vaarg.in_reg241
  %vaarg.addr248 = phi ptr [ %77, %vaarg.in_reg241 ], [ %overflow_arg_area245, %vaarg.in_mem243 ]
  %79 = load i64, ptr %vaarg.addr248, align 8
  store i64 %79, ptr %szMmap, align 8
  %arraydecay249 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p250 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay249, i32 0, i32 0
  %gp_offset251 = load i32, ptr %gp_offset_p250, align 16
  %fits_in_gp252 = icmp ule i32 %gp_offset251, 40
  br i1 %fits_in_gp252, label %vaarg.in_reg253, label %vaarg.in_mem255

vaarg.in_reg253:                                  ; preds = %vaarg.end247
  %80 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay249, i32 0, i32 3
  %reg_save_area254 = load ptr, ptr %80, align 16
  %81 = getelementptr i8, ptr %reg_save_area254, i32 %gp_offset251
  %82 = add i32 %gp_offset251, 8
  store i32 %82, ptr %gp_offset_p250, align 16
  br label %vaarg.end259

vaarg.in_mem255:                                  ; preds = %vaarg.end247
  %overflow_arg_area_p256 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay249, i32 0, i32 2
  %overflow_arg_area257 = load ptr, ptr %overflow_arg_area_p256, align 8
  %overflow_arg_area.next258 = getelementptr i8, ptr %overflow_arg_area257, i32 8
  store ptr %overflow_arg_area.next258, ptr %overflow_arg_area_p256, align 8
  br label %vaarg.end259

vaarg.end259:                                     ; preds = %vaarg.in_mem255, %vaarg.in_reg253
  %vaarg.addr260 = phi ptr [ %81, %vaarg.in_reg253 ], [ %overflow_arg_area257, %vaarg.in_mem255 ]
  %83 = load i64, ptr %vaarg.addr260, align 8
  store i64 %83, ptr %mxMmap, align 8
  %84 = load i64, ptr %mxMmap, align 8
  %cmp261 = icmp slt i64 %84, 0
  br i1 %cmp261, label %if.then265, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %vaarg.end259
  %85 = load i64, ptr %mxMmap, align 8
  %cmp263 = icmp sgt i64 %85, 2147418112
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %lor.lhs.false, %vaarg.end259
  store i64 2147418112, ptr %mxMmap, align 8
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %lor.lhs.false
  %86 = load i64, ptr %szMmap, align 8
  %cmp267 = icmp slt i64 %86, 0
  br i1 %cmp267, label %if.then269, label %if.end270

if.then269:                                       ; preds = %if.end266
  store i64 0, ptr %szMmap, align 8
  br label %if.end270

if.end270:                                        ; preds = %if.then269, %if.end266
  %87 = load i64, ptr %szMmap, align 8
  %88 = load i64, ptr %mxMmap, align 8
  %cmp271 = icmp sgt i64 %87, %88
  br i1 %cmp271, label %if.then273, label %if.end274

if.then273:                                       ; preds = %if.end270
  %89 = load i64, ptr %mxMmap, align 8
  store i64 %89, ptr %szMmap, align 8
  br label %if.end274

if.end274:                                        ; preds = %if.then273, %if.end270
  %90 = load i64, ptr %mxMmap, align 8
  store i64 %90, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 20), align 8
  %91 = load i64, ptr %szMmap, align 8
  store i64 %91, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 19), align 8
  br label %sw.epilog

sw.bb275:                                         ; preds = %if.end
  %arraydecay276 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p277 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay276, i32 0, i32 0
  %gp_offset278 = load i32, ptr %gp_offset_p277, align 16
  %fits_in_gp279 = icmp ule i32 %gp_offset278, 40
  br i1 %fits_in_gp279, label %vaarg.in_reg280, label %vaarg.in_mem282

vaarg.in_reg280:                                  ; preds = %sw.bb275
  %92 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay276, i32 0, i32 3
  %reg_save_area281 = load ptr, ptr %92, align 16
  %93 = getelementptr i8, ptr %reg_save_area281, i32 %gp_offset278
  %94 = add i32 %gp_offset278, 8
  store i32 %94, ptr %gp_offset_p277, align 16
  br label %vaarg.end286

vaarg.in_mem282:                                  ; preds = %sw.bb275
  %overflow_arg_area_p283 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay276, i32 0, i32 2
  %overflow_arg_area284 = load ptr, ptr %overflow_arg_area_p283, align 8
  %overflow_arg_area.next285 = getelementptr i8, ptr %overflow_arg_area284, i32 8
  store ptr %overflow_arg_area.next285, ptr %overflow_arg_area_p283, align 8
  br label %vaarg.end286

vaarg.end286:                                     ; preds = %vaarg.in_mem282, %vaarg.in_reg280
  %vaarg.addr287 = phi ptr [ %93, %vaarg.in_reg280 ], [ %overflow_arg_area284, %vaarg.in_mem282 ]
  %95 = load i32, ptr %vaarg.addr287, align 4
  store i32 %95, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 26), align 8
  br label %sw.epilog

sw.bb288:                                         ; preds = %if.end
  %arraydecay289 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p290 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay289, i32 0, i32 0
  %gp_offset291 = load i32, ptr %gp_offset_p290, align 16
  %fits_in_gp292 = icmp ule i32 %gp_offset291, 40
  br i1 %fits_in_gp292, label %vaarg.in_reg293, label %vaarg.in_mem295

vaarg.in_reg293:                                  ; preds = %sw.bb288
  %96 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay289, i32 0, i32 3
  %reg_save_area294 = load ptr, ptr %96, align 16
  %97 = getelementptr i8, ptr %reg_save_area294, i32 %gp_offset291
  %98 = add i32 %gp_offset291, 8
  store i32 %98, ptr %gp_offset_p290, align 16
  br label %vaarg.end299

vaarg.in_mem295:                                  ; preds = %sw.bb288
  %overflow_arg_area_p296 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay289, i32 0, i32 2
  %overflow_arg_area297 = load ptr, ptr %overflow_arg_area_p296, align 8
  %overflow_arg_area.next298 = getelementptr i8, ptr %overflow_arg_area297, i32 8
  store ptr %overflow_arg_area.next298, ptr %overflow_arg_area_p296, align 8
  br label %vaarg.end299

vaarg.end299:                                     ; preds = %vaarg.in_mem295, %vaarg.in_reg293
  %vaarg.addr300 = phi ptr [ %97, %vaarg.in_reg293 ], [ %overflow_arg_area297, %vaarg.in_mem295 ]
  %99 = load i32, ptr %vaarg.addr300, align 4
  store i32 %99, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 11), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 1, ptr %rc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %vaarg.end299, %vaarg.end286, %if.end274, %vaarg.end233, %vaarg.end219, %vaarg.end206, %vaarg.end181, %vaarg.end156, %vaarg.end139, %sw.bb127, %sw.bb126, %vaarg.end124, %vaarg.end107, %vaarg.end70, %vaarg.end57, %vaarg.end44, %vaarg.end29, %vaarg.end16, %vaarg.end, %sw.bb2, %sw.bb1, %sw.bb
  %arraydecay301 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay301)
  %100 = load i32, ptr %rc, align 4
  store i32 %100, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MemSetDefault() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3HeaderSizeBtree() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3HeaderSizePcache() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3HeaderSizePcache1() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PCacheSetDefault() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
