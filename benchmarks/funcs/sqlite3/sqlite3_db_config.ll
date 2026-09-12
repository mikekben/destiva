; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.7 = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@sqlite3_db_config.aFlagOp = external hidden constant [14 x %struct.anon.7], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExpirePreparedStatements(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_db_config(ptr noundef %db, i32 noundef %op, ...) #1 {
entry:
  %db.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %rc = alloca i32, align 4
  %pBuf = alloca ptr, align 8
  %sz = alloca i32, align 4
  %cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %onoff = alloca i32, align 4
  %pRes = alloca ptr, align 8
  %oldFlags = alloca i64, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load i32, ptr %op.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1000, label %sw.bb
    i32 1001, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %1 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 3
  %reg_save_area = load ptr, ptr %1, align 16
  %2 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %3 = add i32 %gp_offset, 8
  store i32 %3, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %4 = load ptr, ptr %vaarg.addr, align 8
  %5 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %aDb, align 8
  %arrayidx = getelementptr inbounds %struct.Db, ptr %6, i64 0
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  store ptr %4, ptr %zDbSName, align 8
  store i32 0, ptr %rc, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p4 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, ptr %gp_offset_p4, align 16
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg7, label %vaarg.in_mem9

vaarg.in_reg7:                                    ; preds = %sw.bb2
  %7 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load ptr, ptr %7, align 16
  %8 = getelementptr i8, ptr %reg_save_area8, i32 %gp_offset5
  %9 = add i32 %gp_offset5, 8
  store i32 %9, ptr %gp_offset_p4, align 16
  br label %vaarg.end13

vaarg.in_mem9:                                    ; preds = %sw.bb2
  %overflow_arg_area_p10 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load ptr, ptr %overflow_arg_area_p10, align 8
  %overflow_arg_area.next12 = getelementptr i8, ptr %overflow_arg_area11, i32 8
  store ptr %overflow_arg_area.next12, ptr %overflow_arg_area_p10, align 8
  br label %vaarg.end13

vaarg.end13:                                      ; preds = %vaarg.in_mem9, %vaarg.in_reg7
  %vaarg.addr14 = phi ptr [ %8, %vaarg.in_reg7 ], [ %overflow_arg_area11, %vaarg.in_mem9 ]
  %10 = load ptr, ptr %vaarg.addr14, align 8
  store ptr %10, ptr %pBuf, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p16 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, ptr %gp_offset_p16, align 16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg19, label %vaarg.in_mem21

vaarg.in_reg19:                                   ; preds = %vaarg.end13
  %11 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load ptr, ptr %11, align 16
  %12 = getelementptr i8, ptr %reg_save_area20, i32 %gp_offset17
  %13 = add i32 %gp_offset17, 8
  store i32 %13, ptr %gp_offset_p16, align 16
  br label %vaarg.end25

vaarg.in_mem21:                                   ; preds = %vaarg.end13
  %overflow_arg_area_p22 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load ptr, ptr %overflow_arg_area_p22, align 8
  %overflow_arg_area.next24 = getelementptr i8, ptr %overflow_arg_area23, i32 8
  store ptr %overflow_arg_area.next24, ptr %overflow_arg_area_p22, align 8
  br label %vaarg.end25

vaarg.end25:                                      ; preds = %vaarg.in_mem21, %vaarg.in_reg19
  %vaarg.addr26 = phi ptr [ %12, %vaarg.in_reg19 ], [ %overflow_arg_area23, %vaarg.in_mem21 ]
  %14 = load i32, ptr %vaarg.addr26, align 4
  store i32 %14, ptr %sz, align 4
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p28 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay27, i32 0, i32 0
  %gp_offset29 = load i32, ptr %gp_offset_p28, align 16
  %fits_in_gp30 = icmp ule i32 %gp_offset29, 40
  br i1 %fits_in_gp30, label %vaarg.in_reg31, label %vaarg.in_mem33

vaarg.in_reg31:                                   ; preds = %vaarg.end25
  %15 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay27, i32 0, i32 3
  %reg_save_area32 = load ptr, ptr %15, align 16
  %16 = getelementptr i8, ptr %reg_save_area32, i32 %gp_offset29
  %17 = add i32 %gp_offset29, 8
  store i32 %17, ptr %gp_offset_p28, align 16
  br label %vaarg.end37

vaarg.in_mem33:                                   ; preds = %vaarg.end25
  %overflow_arg_area_p34 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay27, i32 0, i32 2
  %overflow_arg_area35 = load ptr, ptr %overflow_arg_area_p34, align 8
  %overflow_arg_area.next36 = getelementptr i8, ptr %overflow_arg_area35, i32 8
  store ptr %overflow_arg_area.next36, ptr %overflow_arg_area_p34, align 8
  br label %vaarg.end37

vaarg.end37:                                      ; preds = %vaarg.in_mem33, %vaarg.in_reg31
  %vaarg.addr38 = phi ptr [ %16, %vaarg.in_reg31 ], [ %overflow_arg_area35, %vaarg.in_mem33 ]
  %18 = load i32, ptr %vaarg.addr38, align 4
  store i32 %18, ptr %cnt, align 4
  %19 = load ptr, ptr %db.addr, align 8
  %20 = load ptr, ptr %pBuf, align 8
  %21 = load i32, ptr %sz, align 4
  %22 = load i32, ptr %cnt, align 4
  %call = call i32 @setupLookaside(ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22)
  store i32 %call, ptr %rc, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 1, ptr %rc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %23 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %23, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, ptr %i, align 4
  %idxprom = zext i32 %24 to i64
  %arrayidx39 = getelementptr inbounds nuw [14 x %struct.anon.7], ptr @sqlite3_db_config.aFlagOp, i64 0, i64 %idxprom
  %op40 = getelementptr inbounds nuw %struct.anon.7, ptr %arrayidx39, i32 0, i32 0
  %25 = load i32, ptr %op40, align 8
  %26 = load i32, ptr %op.addr, align 4
  %cmp41 = icmp eq i32 %25, %26
  br i1 %cmp41, label %if.then, label %if.end95

if.then:                                          ; preds = %for.body
  %arraydecay42 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p43 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay42, i32 0, i32 0
  %gp_offset44 = load i32, ptr %gp_offset_p43, align 16
  %fits_in_gp45 = icmp ule i32 %gp_offset44, 40
  br i1 %fits_in_gp45, label %vaarg.in_reg46, label %vaarg.in_mem48

vaarg.in_reg46:                                   ; preds = %if.then
  %27 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay42, i32 0, i32 3
  %reg_save_area47 = load ptr, ptr %27, align 16
  %28 = getelementptr i8, ptr %reg_save_area47, i32 %gp_offset44
  %29 = add i32 %gp_offset44, 8
  store i32 %29, ptr %gp_offset_p43, align 16
  br label %vaarg.end52

vaarg.in_mem48:                                   ; preds = %if.then
  %overflow_arg_area_p49 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay42, i32 0, i32 2
  %overflow_arg_area50 = load ptr, ptr %overflow_arg_area_p49, align 8
  %overflow_arg_area.next51 = getelementptr i8, ptr %overflow_arg_area50, i32 8
  store ptr %overflow_arg_area.next51, ptr %overflow_arg_area_p49, align 8
  br label %vaarg.end52

vaarg.end52:                                      ; preds = %vaarg.in_mem48, %vaarg.in_reg46
  %vaarg.addr53 = phi ptr [ %28, %vaarg.in_reg46 ], [ %overflow_arg_area50, %vaarg.in_mem48 ]
  %30 = load i32, ptr %vaarg.addr53, align 4
  store i32 %30, ptr %onoff, align 4
  %arraydecay54 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p55 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay54, i32 0, i32 0
  %gp_offset56 = load i32, ptr %gp_offset_p55, align 16
  %fits_in_gp57 = icmp ule i32 %gp_offset56, 40
  br i1 %fits_in_gp57, label %vaarg.in_reg58, label %vaarg.in_mem60

vaarg.in_reg58:                                   ; preds = %vaarg.end52
  %31 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay54, i32 0, i32 3
  %reg_save_area59 = load ptr, ptr %31, align 16
  %32 = getelementptr i8, ptr %reg_save_area59, i32 %gp_offset56
  %33 = add i32 %gp_offset56, 8
  store i32 %33, ptr %gp_offset_p55, align 16
  br label %vaarg.end64

vaarg.in_mem60:                                   ; preds = %vaarg.end52
  %overflow_arg_area_p61 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay54, i32 0, i32 2
  %overflow_arg_area62 = load ptr, ptr %overflow_arg_area_p61, align 8
  %overflow_arg_area.next63 = getelementptr i8, ptr %overflow_arg_area62, i32 8
  store ptr %overflow_arg_area.next63, ptr %overflow_arg_area_p61, align 8
  br label %vaarg.end64

vaarg.end64:                                      ; preds = %vaarg.in_mem60, %vaarg.in_reg58
  %vaarg.addr65 = phi ptr [ %32, %vaarg.in_reg58 ], [ %overflow_arg_area62, %vaarg.in_mem60 ]
  %34 = load ptr, ptr %vaarg.addr65, align 8
  store ptr %34, ptr %pRes, align 8
  %35 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 7
  %36 = load i64, ptr %flags, align 8
  store i64 %36, ptr %oldFlags, align 8
  %37 = load i32, ptr %onoff, align 4
  %cmp66 = icmp sgt i32 %37, 0
  br i1 %cmp66, label %if.then67, label %if.else

if.then67:                                        ; preds = %vaarg.end64
  %38 = load i32, ptr %i, align 4
  %idxprom68 = zext i32 %38 to i64
  %arrayidx69 = getelementptr inbounds nuw [14 x %struct.anon.7], ptr @sqlite3_db_config.aFlagOp, i64 0, i64 %idxprom68
  %mask = getelementptr inbounds nuw %struct.anon.7, ptr %arrayidx69, i32 0, i32 1
  %39 = load i32, ptr %mask, align 4
  %conv = zext i32 %39 to i64
  %40 = load ptr, ptr %db.addr, align 8
  %flags70 = getelementptr inbounds nuw %struct.sqlite3, ptr %40, i32 0, i32 7
  %41 = load i64, ptr %flags70, align 8
  %or = or i64 %41, %conv
  store i64 %or, ptr %flags70, align 8
  br label %if.end79

if.else:                                          ; preds = %vaarg.end64
  %42 = load i32, ptr %onoff, align 4
  %cmp71 = icmp eq i32 %42, 0
  br i1 %cmp71, label %if.then73, label %if.end

if.then73:                                        ; preds = %if.else
  %43 = load i32, ptr %i, align 4
  %idxprom74 = zext i32 %43 to i64
  %arrayidx75 = getelementptr inbounds nuw [14 x %struct.anon.7], ptr @sqlite3_db_config.aFlagOp, i64 0, i64 %idxprom74
  %mask76 = getelementptr inbounds nuw %struct.anon.7, ptr %arrayidx75, i32 0, i32 1
  %44 = load i32, ptr %mask76, align 4
  %conv77 = zext i32 %44 to i64
  %not = xor i64 %conv77, -1
  %45 = load ptr, ptr %db.addr, align 8
  %flags78 = getelementptr inbounds nuw %struct.sqlite3, ptr %45, i32 0, i32 7
  %46 = load i64, ptr %flags78, align 8
  %and = and i64 %46, %not
  store i64 %and, ptr %flags78, align 8
  br label %if.end

if.end:                                           ; preds = %if.then73, %if.else
  br label %if.end79

if.end79:                                         ; preds = %if.end, %if.then67
  %47 = load i64, ptr %oldFlags, align 8
  %48 = load ptr, ptr %db.addr, align 8
  %flags80 = getelementptr inbounds nuw %struct.sqlite3, ptr %48, i32 0, i32 7
  %49 = load i64, ptr %flags80, align 8
  %cmp81 = icmp ne i64 %47, %49
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end79
  %50 = load ptr, ptr %db.addr, align 8
  call void @sqlite3ExpirePreparedStatements(ptr noundef %50, i32 noundef 0)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end79
  %51 = load ptr, ptr %pRes, align 8
  %tobool = icmp ne ptr %51, null
  br i1 %tobool, label %if.then85, label %if.end94

if.then85:                                        ; preds = %if.end84
  %52 = load ptr, ptr %db.addr, align 8
  %flags86 = getelementptr inbounds nuw %struct.sqlite3, ptr %52, i32 0, i32 7
  %53 = load i64, ptr %flags86, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom87 = zext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds nuw [14 x %struct.anon.7], ptr @sqlite3_db_config.aFlagOp, i64 0, i64 %idxprom87
  %mask89 = getelementptr inbounds nuw %struct.anon.7, ptr %arrayidx88, i32 0, i32 1
  %55 = load i32, ptr %mask89, align 4
  %conv90 = zext i32 %55 to i64
  %and91 = and i64 %53, %conv90
  %cmp92 = icmp ne i64 %and91, 0
  %conv93 = zext i1 %cmp92 to i32
  %56 = load ptr, ptr %pRes, align 8
  store i32 %conv93, ptr %56, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then85, %if.end84
  store i32 0, ptr %rc, align 4
  br label %for.end

if.end95:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end95
  %57 = load i32, ptr %i, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.end94, %for.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %vaarg.end37, %vaarg.end
  %arraydecay96 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay96)
  %58 = load i32, ptr %rc, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
declare hidden i32 @setupLookaside(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
