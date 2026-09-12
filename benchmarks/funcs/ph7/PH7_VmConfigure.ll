; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.22 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.553 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.554 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.555 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.623 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.625 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.627 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.628 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.629 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmConfigure(ptr noundef %pVm, i32 noundef %nOp, ptr noundef %ap) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %nOp.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %xConsumer = alloca ptr, align 8
  %pUserData = alloca ptr, align 8
  %zPath = alloca ptr, align 8
  %sPath = alloca %struct.SyString, align 8
  %nDepth = alloca i32, align 4
  %pOut = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %nByte146 = alloca i32, align 4
  %nIdx = alloca i32, align 4
  %pRef = alloca ptr, align 8
  %zKey = alloca ptr, align 8
  %zValue = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %pMap = alloca ptr, align 8
  %pValue241 = alloca ptr, align 8
  %zValue289 = alloca ptr, align 8
  %pMap301 = alloca ptr, align 8
  %pValue302 = alloca ptr, align 8
  %n = alloca i32, align 4
  %xErrLog = alloca ptr, align 8
  %ppValue = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %ppOut = alloca ptr, align 8
  %pLen = alloca ptr, align 8
  %zRequest = alloca ptr, align 8
  %nByte441 = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store i32 %nOp, ptr %nOp.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load i32, ptr %nOp.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb15
    i32 4, label %sw.bb91
    i32 5, label %sw.bb92
    i32 6, label %sw.bb111
    i32 7, label %sw.bb123
    i32 8, label %sw.bb123
    i32 10, label %sw.bb207
    i32 11, label %sw.bb207
    i32 12, label %sw.bb207
    i32 13, label %sw.bb207
    i32 14, label %sw.bb207
    i32 15, label %sw.bb207
    i32 16, label %sw.bb207
    i32 19, label %sw.bb288
    i32 21, label %sw.bb336
    i32 17, label %sw.bb349
    i32 18, label %sw.bb361
    i32 20, label %sw.bb404
    i32 9, label %sw.bb429
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %1, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 8
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %2 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %1, i32 0, i32 3
  %reg_save_area = load ptr, ptr %2, align 8
  %3 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %4 = add i32 %gp_offset, 8
  store i32 %4, ptr %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %1, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %3, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %5 = load ptr, ptr %vaarg.addr, align 8
  store ptr %5, ptr %xConsumer, align 8
  %6 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p1 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %6, i32 0, i32 0
  %gp_offset2 = load i32, ptr %gp_offset_p1, align 8
  %fits_in_gp3 = icmp ule i32 %gp_offset2, 40
  br i1 %fits_in_gp3, label %vaarg.in_reg4, label %vaarg.in_mem6

vaarg.in_reg4:                                    ; preds = %vaarg.end
  %7 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %6, i32 0, i32 3
  %reg_save_area5 = load ptr, ptr %7, align 8
  %8 = getelementptr i8, ptr %reg_save_area5, i32 %gp_offset2
  %9 = add i32 %gp_offset2, 8
  store i32 %9, ptr %gp_offset_p1, align 8
  br label %vaarg.end10

vaarg.in_mem6:                                    ; preds = %vaarg.end
  %overflow_arg_area_p7 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %6, i32 0, i32 2
  %overflow_arg_area8 = load ptr, ptr %overflow_arg_area_p7, align 8
  %overflow_arg_area.next9 = getelementptr i8, ptr %overflow_arg_area8, i32 8
  store ptr %overflow_arg_area.next9, ptr %overflow_arg_area_p7, align 8
  br label %vaarg.end10

vaarg.end10:                                      ; preds = %vaarg.in_mem6, %vaarg.in_reg4
  %vaarg.addr11 = phi ptr [ %8, %vaarg.in_reg4 ], [ %overflow_arg_area8, %vaarg.in_mem6 ]
  %10 = load ptr, ptr %vaarg.addr11, align 8
  store ptr %10, ptr %pUserData, align 8
  %11 = load ptr, ptr %xConsumer, align 8
  %12 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 43
  %xConsumer12 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer, i32 0, i32 0
  store ptr %11, ptr %xConsumer12, align 8
  %13 = load ptr, ptr %pUserData, align 8
  %14 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer13 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 43
  %pUserData14 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer13, i32 0, i32 1
  store ptr %13, ptr %pUserData14, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %15 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p16 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %15, i32 0, i32 0
  %gp_offset17 = load i32, ptr %gp_offset_p16, align 8
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg19, label %vaarg.in_mem21

vaarg.in_reg19:                                   ; preds = %sw.bb15
  %16 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %15, i32 0, i32 3
  %reg_save_area20 = load ptr, ptr %16, align 8
  %17 = getelementptr i8, ptr %reg_save_area20, i32 %gp_offset17
  %18 = add i32 %gp_offset17, 8
  store i32 %18, ptr %gp_offset_p16, align 8
  br label %vaarg.end25

vaarg.in_mem21:                                   ; preds = %sw.bb15
  %overflow_arg_area_p22 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %15, i32 0, i32 2
  %overflow_arg_area23 = load ptr, ptr %overflow_arg_area_p22, align 8
  %overflow_arg_area.next24 = getelementptr i8, ptr %overflow_arg_area23, i32 8
  store ptr %overflow_arg_area.next24, ptr %overflow_arg_area_p22, align 8
  br label %vaarg.end25

vaarg.end25:                                      ; preds = %vaarg.in_mem21, %vaarg.in_reg19
  %vaarg.addr26 = phi ptr [ %17, %vaarg.in_reg19 ], [ %overflow_arg_area23, %vaarg.in_mem21 ]
  %19 = load ptr, ptr %vaarg.addr26, align 8
  store ptr %19, ptr %zPath, align 8
  %20 = load ptr, ptr %zPath, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 0
  store ptr %20, ptr %zString, align 8
  %21 = load ptr, ptr %zPath, align 8
  %call = call i32 @SyStrlen(ptr noundef %21)
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  store i32 %call, ptr %nByte, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %vaarg.end25
  %nByte27 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %22 = load i32, ptr %nByte27, align 8
  %cmp = icmp ugt i32 %22, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %zString28 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 0
  %23 = load ptr, ptr %zString28, align 8
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %24 = load i32, ptr %nByte29, align 8
  %sub = sub i32 %24, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %23, i64 %idxprom
  %25 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %25 to i32
  %cmp30 = icmp eq i32 %conv, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %cmp30, %land.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %nByte32 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %27 = load i32, ptr %nByte32, align 8
  %dec = add i32 %27, -1
  store i32 %dec, ptr %nByte32, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond33

while.cond33:                                     ; preds = %while.body51, %while.end
  %nByte34 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %28 = load i32, ptr %nByte34, align 8
  %cmp35 = icmp ugt i32 %28, 0
  br i1 %cmp35, label %land.lhs.true, label %land.end50

land.lhs.true:                                    ; preds = %while.cond33
  %zString37 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 0
  %29 = load ptr, ptr %zString37, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %30 to i32
  %cmp40 = icmp slt i32 %conv39, 192
  br i1 %cmp40, label %land.rhs42, label %land.end50

land.rhs42:                                       ; preds = %land.lhs.true
  %call43 = call ptr @__ctype_b_loc() #2
  %31 = load ptr, ptr %call43, align 8
  %zString44 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 0
  %32 = load ptr, ptr %zString44, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %33 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %31, i64 %idxprom47
  %34 = load i16, ptr %arrayidx48, align 2
  %conv49 = zext i16 %34 to i32
  %and = and i32 %conv49, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end50

land.end50:                                       ; preds = %land.rhs42, %land.lhs.true, %while.cond33
  %35 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond33 ], [ %tobool, %land.rhs42 ]
  br i1 %35, label %while.body51, label %while.end55

while.body51:                                     ; preds = %land.end50
  %nByte52 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %36 = load i32, ptr %nByte52, align 8
  %dec53 = add i32 %36, -1
  store i32 %dec53, ptr %nByte52, align 8
  %zString54 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 0
  %37 = load ptr, ptr %zString54, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %zString54, align 8
  br label %while.cond33, !llvm.loop !8

while.end55:                                      ; preds = %land.end50
  br label %while.cond56

while.cond56:                                     ; preds = %while.body83, %while.end55
  %nByte57 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %38 = load i32, ptr %nByte57, align 8
  %cmp58 = icmp ugt i32 %38, 0
  br i1 %cmp58, label %land.lhs.true60, label %land.end82

land.lhs.true60:                                  ; preds = %while.cond56
  %zString61 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 0
  %39 = load ptr, ptr %zString61, align 8
  %nByte62 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %40 = load i32, ptr %nByte62, align 8
  %sub63 = sub i32 %40, 1
  %idxprom64 = zext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %39, i64 %idxprom64
  %41 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %41 to i32
  %cmp67 = icmp slt i32 %conv66, 192
  br i1 %cmp67, label %land.rhs69, label %land.end82

land.rhs69:                                       ; preds = %land.lhs.true60
  %call70 = call ptr @__ctype_b_loc() #2
  %42 = load ptr, ptr %call70, align 8
  %zString71 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 0
  %43 = load ptr, ptr %zString71, align 8
  %nByte72 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %44 = load i32, ptr %nByte72, align 8
  %sub73 = sub i32 %44, 1
  %idxprom74 = zext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %43, i64 %idxprom74
  %45 = load i8, ptr %arrayidx75, align 1
  %conv76 = sext i8 %45 to i32
  %idxprom77 = sext i32 %conv76 to i64
  %arrayidx78 = getelementptr inbounds i16, ptr %42, i64 %idxprom77
  %46 = load i16, ptr %arrayidx78, align 2
  %conv79 = zext i16 %46 to i32
  %and80 = and i32 %conv79, 8192
  %tobool81 = icmp ne i32 %and80, 0
  br label %land.end82

land.end82:                                       ; preds = %land.rhs69, %land.lhs.true60, %while.cond56
  %47 = phi i1 [ false, %land.lhs.true60 ], [ false, %while.cond56 ], [ %tobool81, %land.rhs69 ]
  br i1 %47, label %while.body83, label %while.end86

while.body83:                                     ; preds = %land.end82
  %nByte84 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %48 = load i32, ptr %nByte84, align 8
  %dec85 = add i32 %48, -1
  store i32 %dec85, ptr %nByte84, align 8
  br label %while.cond56, !llvm.loop !9

while.end86:                                      ; preds = %land.end82
  %nByte87 = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  %49 = load i32, ptr %nByte87, align 8
  %cmp88 = icmp ugt i32 %49, 0
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %while.end86
  %50 = load ptr, ptr %pVm.addr, align 8
  %aPaths = getelementptr inbounds nuw %struct.ph7_vm, ptr %50, i32 0, i32 20
  %call90 = call i32 @SySetPut(ptr noundef %aPaths, ptr noundef %sPath)
  store i32 %call90, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end86
  br label %sw.epilog

sw.bb91:                                          ; preds = %entry
  %51 = load ptr, ptr %pVm.addr, align 8
  %bErrReport = getelementptr inbounds nuw %struct.ph7_vm, ptr %51, i32 0, i32 33
  store i32 1, ptr %bErrReport, align 8
  br label %sw.epilog

sw.bb92:                                          ; preds = %entry
  %52 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p93 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %52, i32 0, i32 0
  %gp_offset94 = load i32, ptr %gp_offset_p93, align 8
  %fits_in_gp95 = icmp ule i32 %gp_offset94, 40
  br i1 %fits_in_gp95, label %vaarg.in_reg96, label %vaarg.in_mem98

vaarg.in_reg96:                                   ; preds = %sw.bb92
  %53 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %52, i32 0, i32 3
  %reg_save_area97 = load ptr, ptr %53, align 8
  %54 = getelementptr i8, ptr %reg_save_area97, i32 %gp_offset94
  %55 = add i32 %gp_offset94, 8
  store i32 %55, ptr %gp_offset_p93, align 8
  br label %vaarg.end102

vaarg.in_mem98:                                   ; preds = %sw.bb92
  %overflow_arg_area_p99 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %52, i32 0, i32 2
  %overflow_arg_area100 = load ptr, ptr %overflow_arg_area_p99, align 8
  %overflow_arg_area.next101 = getelementptr i8, ptr %overflow_arg_area100, i32 8
  store ptr %overflow_arg_area.next101, ptr %overflow_arg_area_p99, align 8
  br label %vaarg.end102

vaarg.end102:                                     ; preds = %vaarg.in_mem98, %vaarg.in_reg96
  %vaarg.addr103 = phi ptr [ %54, %vaarg.in_reg96 ], [ %overflow_arg_area100, %vaarg.in_mem98 ]
  %56 = load i32, ptr %vaarg.addr103, align 4
  store i32 %56, ptr %nDepth, align 4
  %57 = load i32, ptr %nDepth, align 4
  %cmp104 = icmp sgt i32 %57, 2
  br i1 %cmp104, label %land.lhs.true106, label %if.end110

land.lhs.true106:                                 ; preds = %vaarg.end102
  %58 = load i32, ptr %nDepth, align 4
  %cmp107 = icmp slt i32 %58, 1024
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %land.lhs.true106
  %59 = load i32, ptr %nDepth, align 4
  %60 = load ptr, ptr %pVm.addr, align 8
  %nMaxDepth = getelementptr inbounds nuw %struct.ph7_vm, ptr %60, i32 0, i32 35
  store i32 %59, ptr %nMaxDepth, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %land.lhs.true106, %vaarg.end102
  br label %sw.epilog

sw.bb111:                                         ; preds = %entry
  %61 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p112 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %61, i32 0, i32 0
  %gp_offset113 = load i32, ptr %gp_offset_p112, align 8
  %fits_in_gp114 = icmp ule i32 %gp_offset113, 40
  br i1 %fits_in_gp114, label %vaarg.in_reg115, label %vaarg.in_mem117

vaarg.in_reg115:                                  ; preds = %sw.bb111
  %62 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %61, i32 0, i32 3
  %reg_save_area116 = load ptr, ptr %62, align 8
  %63 = getelementptr i8, ptr %reg_save_area116, i32 %gp_offset113
  %64 = add i32 %gp_offset113, 8
  store i32 %64, ptr %gp_offset_p112, align 8
  br label %vaarg.end121

vaarg.in_mem117:                                  ; preds = %sw.bb111
  %overflow_arg_area_p118 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %61, i32 0, i32 2
  %overflow_arg_area119 = load ptr, ptr %overflow_arg_area_p118, align 8
  %overflow_arg_area.next120 = getelementptr i8, ptr %overflow_arg_area119, i32 8
  store ptr %overflow_arg_area.next120, ptr %overflow_arg_area_p118, align 8
  br label %vaarg.end121

vaarg.end121:                                     ; preds = %vaarg.in_mem117, %vaarg.in_reg115
  %vaarg.addr122 = phi ptr [ %63, %vaarg.in_reg115 ], [ %overflow_arg_area119, %vaarg.in_mem117 ]
  %65 = load ptr, ptr %vaarg.addr122, align 8
  store ptr %65, ptr %pOut, align 8
  %66 = load ptr, ptr %pVm.addr, align 8
  %nOutputLen = getelementptr inbounds nuw %struct.ph7_vm, ptr %66, i32 0, i32 42
  %67 = load i32, ptr %nOutputLen, align 8
  %68 = load ptr, ptr %pOut, align 8
  store i32 %67, ptr %68, align 4
  br label %sw.epilog

sw.bb123:                                         ; preds = %entry, %entry
  %69 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p124 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %69, i32 0, i32 0
  %gp_offset125 = load i32, ptr %gp_offset_p124, align 8
  %fits_in_gp126 = icmp ule i32 %gp_offset125, 40
  br i1 %fits_in_gp126, label %vaarg.in_reg127, label %vaarg.in_mem129

vaarg.in_reg127:                                  ; preds = %sw.bb123
  %70 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %69, i32 0, i32 3
  %reg_save_area128 = load ptr, ptr %70, align 8
  %71 = getelementptr i8, ptr %reg_save_area128, i32 %gp_offset125
  %72 = add i32 %gp_offset125, 8
  store i32 %72, ptr %gp_offset_p124, align 8
  br label %vaarg.end133

vaarg.in_mem129:                                  ; preds = %sw.bb123
  %overflow_arg_area_p130 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %69, i32 0, i32 2
  %overflow_arg_area131 = load ptr, ptr %overflow_arg_area_p130, align 8
  %overflow_arg_area.next132 = getelementptr i8, ptr %overflow_arg_area131, i32 8
  store ptr %overflow_arg_area.next132, ptr %overflow_arg_area_p130, align 8
  br label %vaarg.end133

vaarg.end133:                                     ; preds = %vaarg.in_mem129, %vaarg.in_reg127
  %vaarg.addr134 = phi ptr [ %71, %vaarg.in_reg127 ], [ %overflow_arg_area131, %vaarg.in_mem129 ]
  %73 = load ptr, ptr %vaarg.addr134, align 8
  store ptr %73, ptr %zName, align 8
  %74 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p135 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %74, i32 0, i32 0
  %gp_offset136 = load i32, ptr %gp_offset_p135, align 8
  %fits_in_gp137 = icmp ule i32 %gp_offset136, 40
  br i1 %fits_in_gp137, label %vaarg.in_reg138, label %vaarg.in_mem140

vaarg.in_reg138:                                  ; preds = %vaarg.end133
  %75 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %74, i32 0, i32 3
  %reg_save_area139 = load ptr, ptr %75, align 8
  %76 = getelementptr i8, ptr %reg_save_area139, i32 %gp_offset136
  %77 = add i32 %gp_offset136, 8
  store i32 %77, ptr %gp_offset_p135, align 8
  br label %vaarg.end144

vaarg.in_mem140:                                  ; preds = %vaarg.end133
  %overflow_arg_area_p141 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %74, i32 0, i32 2
  %overflow_arg_area142 = load ptr, ptr %overflow_arg_area_p141, align 8
  %overflow_arg_area.next143 = getelementptr i8, ptr %overflow_arg_area142, i32 8
  store ptr %overflow_arg_area.next143, ptr %overflow_arg_area_p141, align 8
  br label %vaarg.end144

vaarg.end144:                                     ; preds = %vaarg.in_mem140, %vaarg.in_reg138
  %vaarg.addr145 = phi ptr [ %76, %vaarg.in_reg138 ], [ %overflow_arg_area142, %vaarg.in_mem140 ]
  %78 = load ptr, ptr %vaarg.addr145, align 8
  store ptr %78, ptr %pValue, align 8
  %79 = load ptr, ptr %zName, align 8
  %call147 = call i32 @SyStrlen(ptr noundef %79)
  store i32 %call147, ptr %nByte146, align 4
  %80 = load i32, ptr %nOp.addr, align 4
  %cmp148 = icmp eq i32 %80, 7
  br i1 %cmp148, label %if.then150, label %if.else

if.then150:                                       ; preds = %vaarg.end144
  %81 = load ptr, ptr %pVm.addr, align 8
  %hSuper = getelementptr inbounds nuw %struct.ph7_vm, ptr %81, i32 0, i32 14
  %82 = load ptr, ptr %zName, align 8
  %83 = load i32, ptr %nByte146, align 4
  %call151 = call ptr @SyHashGet(ptr noundef %hSuper, ptr noundef %82, i32 noundef %83)
  store ptr %call151, ptr %pEntry, align 8
  br label %if.end153

if.else:                                          ; preds = %vaarg.end144
  %84 = load ptr, ptr %pVm.addr, align 8
  %pFrame = getelementptr inbounds nuw %struct.ph7_vm, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %pFrame, align 8
  %hVar = getelementptr inbounds nuw %struct.VmFrame, ptr %85, i32 0, i32 5
  %86 = load ptr, ptr %zName, align 8
  %87 = load i32, ptr %nByte146, align 4
  %call152 = call ptr @SyHashGet(ptr noundef %hVar, ptr noundef %86, i32 noundef %87)
  store ptr %call152, ptr %pEntry, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.else, %if.then150
  %88 = load ptr, ptr %pEntry, align 8
  %tobool154 = icmp ne ptr %88, null
  br i1 %tobool154, label %if.then155, label %if.else163

if.then155:                                       ; preds = %if.end153
  %89 = load ptr, ptr %pEntry, align 8
  %pUserData156 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %89, i32 0, i32 2
  %90 = load ptr, ptr %pUserData156, align 8
  %91 = ptrtoint ptr %90 to i64
  %conv157 = trunc i64 %91 to i32
  store i32 %conv157, ptr %nIdx, align 4
  %92 = load ptr, ptr %pVm.addr, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %92, i32 0, i32 6
  %93 = load i32, ptr %nIdx, align 4
  %call158 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %93)
  store ptr %call158, ptr %pObj, align 8
  %94 = load ptr, ptr %pObj, align 8
  %tobool159 = icmp ne ptr %94, null
  br i1 %tobool159, label %if.then160, label %if.end162

if.then160:                                       ; preds = %if.then155
  %95 = load ptr, ptr %pValue, align 8
  %96 = load ptr, ptr %pObj, align 8
  %call161 = call i32 @PH7_MemObjStore(ptr noundef %95, ptr noundef %96)
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %if.then155
  br label %if.end206

if.else163:                                       ; preds = %if.end153
  %97 = load ptr, ptr %pVm.addr, align 8
  %call164 = call ptr @PH7_ReserveMemObj(ptr noundef %97)
  store ptr %call164, ptr %pObj, align 8
  %98 = load ptr, ptr %pObj, align 8
  %cmp165 = icmp eq ptr %98, null
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.else163
  store i32 -1, ptr %rc, align 4
  br label %sw.epilog

if.end168:                                        ; preds = %if.else163
  %99 = load ptr, ptr %pObj, align 8
  %nIdx169 = getelementptr inbounds nuw %struct.ph7_value, ptr %99, i32 0, i32 5
  %100 = load i32, ptr %nIdx169, align 8
  store i32 %100, ptr %nIdx, align 4
  %101 = load ptr, ptr %pValue, align 8
  %102 = load ptr, ptr %pObj, align 8
  %call170 = call i32 @PH7_MemObjStore(ptr noundef %101, ptr noundef %102)
  %103 = load i32, ptr %nOp.addr, align 4
  %cmp171 = icmp eq i32 %103, 7
  br i1 %cmp171, label %if.then173, label %if.else177

if.then173:                                       ; preds = %if.end168
  %104 = load ptr, ptr %pVm.addr, align 8
  %hSuper174 = getelementptr inbounds nuw %struct.ph7_vm, ptr %104, i32 0, i32 14
  %105 = load ptr, ptr %zName, align 8
  %106 = load i32, ptr %nByte146, align 4
  %107 = load i32, ptr %nIdx, align 4
  %conv175 = zext i32 %107 to i64
  %108 = inttoptr i64 %conv175 to ptr
  %call176 = call i32 @SyHashInsert(ptr noundef %hSuper174, ptr noundef %105, i32 noundef %106, ptr noundef %108)
  store i32 %call176, ptr %rc, align 4
  br label %if.end182

if.else177:                                       ; preds = %if.end168
  %109 = load ptr, ptr %pVm.addr, align 8
  %pFrame178 = getelementptr inbounds nuw %struct.ph7_vm, ptr %109, i32 0, i32 4
  %110 = load ptr, ptr %pFrame178, align 8
  %hVar179 = getelementptr inbounds nuw %struct.VmFrame, ptr %110, i32 0, i32 5
  %111 = load ptr, ptr %zName, align 8
  %112 = load i32, ptr %nByte146, align 4
  %113 = load i32, ptr %nIdx, align 4
  %conv180 = zext i32 %113 to i64
  %114 = inttoptr i64 %conv180 to ptr
  %call181 = call i32 @SyHashInsert(ptr noundef %hVar179, ptr noundef %111, i32 noundef %112, ptr noundef %114)
  store i32 %call181, ptr %rc, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.else177, %if.then173
  %115 = load i32, ptr %rc, align 4
  %cmp183 = icmp eq i32 %115, 0
  br i1 %cmp183, label %if.then185, label %if.end205

if.then185:                                       ; preds = %if.end182
  %116 = load i32, ptr %nOp.addr, align 4
  %cmp186 = icmp eq i32 %116, 7
  br i1 %cmp186, label %if.then188, label %if.else191

if.then188:                                       ; preds = %if.then185
  %117 = load ptr, ptr %pVm.addr, align 8
  %hSuper189 = getelementptr inbounds nuw %struct.ph7_vm, ptr %117, i32 0, i32 14
  %call190 = call ptr @SyHashLastEntry(ptr noundef %hSuper189)
  store ptr %call190, ptr %pRef, align 8
  br label %if.end195

if.else191:                                       ; preds = %if.then185
  %118 = load ptr, ptr %pVm.addr, align 8
  %pFrame192 = getelementptr inbounds nuw %struct.ph7_vm, ptr %118, i32 0, i32 4
  %119 = load ptr, ptr %pFrame192, align 8
  %hVar193 = getelementptr inbounds nuw %struct.VmFrame, ptr %119, i32 0, i32 5
  %call194 = call ptr @SyHashLastEntry(ptr noundef %hVar193)
  store ptr %call194, ptr %pRef, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then188
  %120 = load ptr, ptr %pVm.addr, align 8
  %121 = load i32, ptr %nIdx, align 4
  %122 = load ptr, ptr %pRef, align 8
  %call196 = call i32 @PH7_VmRefObjInstall(ptr noundef %120, i32 noundef %121, ptr noundef %122, ptr noundef null, i32 noundef 0)
  %123 = load i32, ptr %nOp.addr, align 4
  %cmp197 = icmp eq i32 %123, 7
  br i1 %cmp197, label %if.then202, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end195
  %124 = load ptr, ptr %pVm.addr, align 8
  %pFrame199 = getelementptr inbounds nuw %struct.ph7_vm, ptr %124, i32 0, i32 4
  %125 = load ptr, ptr %pFrame199, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %pParent, align 8
  %cmp200 = icmp eq ptr %126, null
  br i1 %cmp200, label %if.then202, label %if.end204

if.then202:                                       ; preds = %lor.lhs.false, %if.end195
  %127 = load ptr, ptr %pVm.addr, align 8
  %pGlobal = getelementptr inbounds nuw %struct.ph7_vm, ptr %127, i32 0, i32 51
  %128 = load ptr, ptr %pGlobal, align 8
  %129 = load ptr, ptr %zName, align 8
  %130 = load i32, ptr %nByte146, align 4
  %131 = load i32, ptr %nIdx, align 4
  %call203 = call i32 @VmHashmapRefInsert(ptr noundef %128, ptr noundef %129, i32 noundef %130, i32 noundef %131)
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %lor.lhs.false
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.end182
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end162
  br label %sw.epilog

sw.bb207:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %132 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p208 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %132, i32 0, i32 0
  %gp_offset209 = load i32, ptr %gp_offset_p208, align 8
  %fits_in_gp210 = icmp ule i32 %gp_offset209, 40
  br i1 %fits_in_gp210, label %vaarg.in_reg211, label %vaarg.in_mem213

vaarg.in_reg211:                                  ; preds = %sw.bb207
  %133 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %132, i32 0, i32 3
  %reg_save_area212 = load ptr, ptr %133, align 8
  %134 = getelementptr i8, ptr %reg_save_area212, i32 %gp_offset209
  %135 = add i32 %gp_offset209, 8
  store i32 %135, ptr %gp_offset_p208, align 8
  br label %vaarg.end217

vaarg.in_mem213:                                  ; preds = %sw.bb207
  %overflow_arg_area_p214 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %132, i32 0, i32 2
  %overflow_arg_area215 = load ptr, ptr %overflow_arg_area_p214, align 8
  %overflow_arg_area.next216 = getelementptr i8, ptr %overflow_arg_area215, i32 8
  store ptr %overflow_arg_area.next216, ptr %overflow_arg_area_p214, align 8
  br label %vaarg.end217

vaarg.end217:                                     ; preds = %vaarg.in_mem213, %vaarg.in_reg211
  %vaarg.addr218 = phi ptr [ %134, %vaarg.in_reg211 ], [ %overflow_arg_area215, %vaarg.in_mem213 ]
  %136 = load ptr, ptr %vaarg.addr218, align 8
  store ptr %136, ptr %zKey, align 8
  %137 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p219 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %137, i32 0, i32 0
  %gp_offset220 = load i32, ptr %gp_offset_p219, align 8
  %fits_in_gp221 = icmp ule i32 %gp_offset220, 40
  br i1 %fits_in_gp221, label %vaarg.in_reg222, label %vaarg.in_mem224

vaarg.in_reg222:                                  ; preds = %vaarg.end217
  %138 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %137, i32 0, i32 3
  %reg_save_area223 = load ptr, ptr %138, align 8
  %139 = getelementptr i8, ptr %reg_save_area223, i32 %gp_offset220
  %140 = add i32 %gp_offset220, 8
  store i32 %140, ptr %gp_offset_p219, align 8
  br label %vaarg.end228

vaarg.in_mem224:                                  ; preds = %vaarg.end217
  %overflow_arg_area_p225 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %137, i32 0, i32 2
  %overflow_arg_area226 = load ptr, ptr %overflow_arg_area_p225, align 8
  %overflow_arg_area.next227 = getelementptr i8, ptr %overflow_arg_area226, i32 8
  store ptr %overflow_arg_area.next227, ptr %overflow_arg_area_p225, align 8
  br label %vaarg.end228

vaarg.end228:                                     ; preds = %vaarg.in_mem224, %vaarg.in_reg222
  %vaarg.addr229 = phi ptr [ %139, %vaarg.in_reg222 ], [ %overflow_arg_area226, %vaarg.in_mem224 ]
  %141 = load ptr, ptr %vaarg.addr229, align 8
  store ptr %141, ptr %zValue, align 8
  %142 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p230 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %142, i32 0, i32 0
  %gp_offset231 = load i32, ptr %gp_offset_p230, align 8
  %fits_in_gp232 = icmp ule i32 %gp_offset231, 40
  br i1 %fits_in_gp232, label %vaarg.in_reg233, label %vaarg.in_mem235

vaarg.in_reg233:                                  ; preds = %vaarg.end228
  %143 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %142, i32 0, i32 3
  %reg_save_area234 = load ptr, ptr %143, align 8
  %144 = getelementptr i8, ptr %reg_save_area234, i32 %gp_offset231
  %145 = add i32 %gp_offset231, 8
  store i32 %145, ptr %gp_offset_p230, align 8
  br label %vaarg.end239

vaarg.in_mem235:                                  ; preds = %vaarg.end228
  %overflow_arg_area_p236 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %142, i32 0, i32 2
  %overflow_arg_area237 = load ptr, ptr %overflow_arg_area_p236, align 8
  %overflow_arg_area.next238 = getelementptr i8, ptr %overflow_arg_area237, i32 8
  store ptr %overflow_arg_area.next238, ptr %overflow_arg_area_p236, align 8
  br label %vaarg.end239

vaarg.end239:                                     ; preds = %vaarg.in_mem235, %vaarg.in_reg233
  %vaarg.addr240 = phi ptr [ %144, %vaarg.in_reg233 ], [ %overflow_arg_area237, %vaarg.in_mem235 ]
  %146 = load i32, ptr %vaarg.addr240, align 4
  store i32 %146, ptr %nLen, align 4
  %147 = load i32, ptr %nOp.addr, align 4
  %cmp242 = icmp eq i32 %147, 11
  br i1 %cmp242, label %if.then244, label %if.else246

if.then244:                                       ; preds = %vaarg.end239
  %148 = load ptr, ptr %pVm.addr, align 8
  %call245 = call ptr @VmExtractSuper(ptr noundef %148, ptr noundef @.str.627, i32 noundef 4)
  store ptr %call245, ptr %pValue241, align 8
  br label %if.end278

if.else246:                                       ; preds = %vaarg.end239
  %149 = load i32, ptr %nOp.addr, align 4
  %cmp247 = icmp eq i32 %149, 13
  br i1 %cmp247, label %if.then249, label %if.else251

if.then249:                                       ; preds = %if.else246
  %150 = load ptr, ptr %pVm.addr, align 8
  %call250 = call ptr @VmExtractSuper(ptr noundef %150, ptr noundef @.str.554, i32 noundef 5)
  store ptr %call250, ptr %pValue241, align 8
  br label %if.end277

if.else251:                                       ; preds = %if.else246
  %151 = load i32, ptr %nOp.addr, align 4
  %cmp252 = icmp eq i32 %151, 14
  br i1 %cmp252, label %if.then254, label %if.else256

if.then254:                                       ; preds = %if.else251
  %152 = load ptr, ptr %pVm.addr, align 8
  %call255 = call ptr @VmExtractSuper(ptr noundef %152, ptr noundef @.str.553, i32 noundef 4)
  store ptr %call255, ptr %pValue241, align 8
  br label %if.end276

if.else256:                                       ; preds = %if.else251
  %153 = load i32, ptr %nOp.addr, align 4
  %cmp257 = icmp eq i32 %153, 15
  br i1 %cmp257, label %if.then259, label %if.else261

if.then259:                                       ; preds = %if.else256
  %154 = load ptr, ptr %pVm.addr, align 8
  %call260 = call ptr @VmExtractSuper(ptr noundef %154, ptr noundef @.str.555, i32 noundef 7)
  store ptr %call260, ptr %pValue241, align 8
  br label %if.end275

if.else261:                                       ; preds = %if.else256
  %155 = load i32, ptr %nOp.addr, align 4
  %cmp262 = icmp eq i32 %155, 12
  br i1 %cmp262, label %if.then264, label %if.else266

if.then264:                                       ; preds = %if.else261
  %156 = load ptr, ptr %pVm.addr, align 8
  %call265 = call ptr @VmExtractSuper(ptr noundef %156, ptr noundef @.str.625, i32 noundef 8)
  store ptr %call265, ptr %pValue241, align 8
  br label %if.end274

if.else266:                                       ; preds = %if.else261
  %157 = load i32, ptr %nOp.addr, align 4
  %cmp267 = icmp eq i32 %157, 16
  br i1 %cmp267, label %if.then269, label %if.else271

if.then269:                                       ; preds = %if.else266
  %158 = load ptr, ptr %pVm.addr, align 8
  %call270 = call ptr @VmExtractSuper(ptr noundef %158, ptr noundef @.str.628, i32 noundef 7)
  store ptr %call270, ptr %pValue241, align 8
  br label %if.end273

if.else271:                                       ; preds = %if.else266
  %159 = load ptr, ptr %pVm.addr, align 8
  %call272 = call ptr @VmExtractSuper(ptr noundef %159, ptr noundef @.str.623, i32 noundef 7)
  store ptr %call272, ptr %pValue241, align 8
  br label %if.end273

if.end273:                                        ; preds = %if.else271, %if.then269
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.then264
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.then259
  br label %if.end276

if.end276:                                        ; preds = %if.end275, %if.then254
  br label %if.end277

if.end277:                                        ; preds = %if.end276, %if.then249
  br label %if.end278

if.end278:                                        ; preds = %if.end277, %if.then244
  %160 = load ptr, ptr %pValue241, align 8
  %cmp279 = icmp eq ptr %160, null
  br i1 %cmp279, label %if.then285, label %lor.lhs.false281

lor.lhs.false281:                                 ; preds = %if.end278
  %161 = load ptr, ptr %pValue241, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %161, i32 0, i32 2
  %162 = load i32, ptr %iFlags, align 8
  %and282 = and i32 %162, 64
  %cmp283 = icmp eq i32 %and282, 0
  br i1 %cmp283, label %if.then285, label %if.end286

if.then285:                                       ; preds = %lor.lhs.false281, %if.end278
  store i32 -6, ptr %rc, align 4
  br label %sw.epilog

if.end286:                                        ; preds = %lor.lhs.false281
  %163 = load ptr, ptr %pValue241, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %163, i32 0, i32 1
  %164 = load ptr, ptr %x, align 8
  store ptr %164, ptr %pMap, align 8
  %165 = load ptr, ptr %pMap, align 8
  %166 = load ptr, ptr %zKey, align 8
  %167 = load ptr, ptr %zValue, align 8
  %168 = load i32, ptr %nLen, align 4
  %call287 = call i32 @VmHashmapInsert(ptr noundef %165, ptr noundef %166, i32 noundef -1, ptr noundef %167, i32 noundef %168)
  store i32 %call287, ptr %rc, align 4
  br label %sw.epilog

sw.bb288:                                         ; preds = %entry
  %169 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p290 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %169, i32 0, i32 0
  %gp_offset291 = load i32, ptr %gp_offset_p290, align 8
  %fits_in_gp292 = icmp ule i32 %gp_offset291, 40
  br i1 %fits_in_gp292, label %vaarg.in_reg293, label %vaarg.in_mem295

vaarg.in_reg293:                                  ; preds = %sw.bb288
  %170 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %169, i32 0, i32 3
  %reg_save_area294 = load ptr, ptr %170, align 8
  %171 = getelementptr i8, ptr %reg_save_area294, i32 %gp_offset291
  %172 = add i32 %gp_offset291, 8
  store i32 %172, ptr %gp_offset_p290, align 8
  br label %vaarg.end299

vaarg.in_mem295:                                  ; preds = %sw.bb288
  %overflow_arg_area_p296 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %169, i32 0, i32 2
  %overflow_arg_area297 = load ptr, ptr %overflow_arg_area_p296, align 8
  %overflow_arg_area.next298 = getelementptr i8, ptr %overflow_arg_area297, i32 8
  store ptr %overflow_arg_area.next298, ptr %overflow_arg_area_p296, align 8
  br label %vaarg.end299

vaarg.end299:                                     ; preds = %vaarg.in_mem295, %vaarg.in_reg293
  %vaarg.addr300 = phi ptr [ %171, %vaarg.in_reg293 ], [ %overflow_arg_area297, %vaarg.in_mem295 ]
  %173 = load ptr, ptr %vaarg.addr300, align 8
  store ptr %173, ptr %zValue289, align 8
  %174 = load ptr, ptr %zValue289, align 8
  %cmp303 = icmp eq ptr %174, null
  br i1 %cmp303, label %if.then310, label %lor.lhs.false305

lor.lhs.false305:                                 ; preds = %vaarg.end299
  %175 = load ptr, ptr %zValue289, align 8
  %arrayidx306 = getelementptr inbounds i8, ptr %175, i64 0
  %176 = load i8, ptr %arrayidx306, align 1
  %conv307 = sext i8 %176 to i32
  %cmp308 = icmp eq i32 %conv307, 0
  br i1 %cmp308, label %if.then310, label %if.end311

if.then310:                                       ; preds = %lor.lhs.false305, %vaarg.end299
  store i32 -3, ptr %rc, align 4
  br label %sw.epilog

if.end311:                                        ; preds = %lor.lhs.false305
  %177 = load ptr, ptr %pVm.addr, align 8
  %call312 = call ptr @VmExtractSuper(ptr noundef %177, ptr noundef @.str.629, i32 noundef 4)
  store ptr %call312, ptr %pValue302, align 8
  %178 = load ptr, ptr %pValue302, align 8
  %cmp313 = icmp eq ptr %178, null
  br i1 %cmp313, label %if.then320, label %lor.lhs.false315

lor.lhs.false315:                                 ; preds = %if.end311
  %179 = load ptr, ptr %pValue302, align 8
  %iFlags316 = getelementptr inbounds nuw %struct.ph7_value, ptr %179, i32 0, i32 2
  %180 = load i32, ptr %iFlags316, align 8
  %and317 = and i32 %180, 64
  %cmp318 = icmp eq i32 %and317, 0
  br i1 %cmp318, label %if.then320, label %if.end321

if.then320:                                       ; preds = %lor.lhs.false315, %if.end311
  store i32 -6, ptr %rc, align 4
  br label %sw.epilog

if.end321:                                        ; preds = %lor.lhs.false315
  %181 = load ptr, ptr %pValue302, align 8
  %x322 = getelementptr inbounds nuw %struct.ph7_value, ptr %181, i32 0, i32 1
  %182 = load ptr, ptr %x322, align 8
  store ptr %182, ptr %pMap301, align 8
  %183 = load ptr, ptr %zValue289, align 8
  %call323 = call i32 @SyStrlen(ptr noundef %183)
  store i32 %call323, ptr %n, align 4
  %184 = load ptr, ptr %pMap301, align 8
  %185 = load ptr, ptr %zValue289, align 8
  %186 = load i32, ptr %n, align 4
  %call324 = call i32 @VmHashmapInsert(ptr noundef %184, ptr noundef null, i32 noundef 0, ptr noundef %185, i32 noundef %186)
  store i32 %call324, ptr %rc, align 4
  %187 = load i32, ptr %rc, align 4
  %cmp325 = icmp eq i32 %187, 0
  br i1 %cmp325, label %if.then327, label %if.end335

if.then327:                                       ; preds = %if.end321
  %188 = load ptr, ptr %pMap301, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %188, i32 0, i32 6
  %189 = load i32, ptr %nEntry, align 4
  %cmp328 = icmp ugt i32 %189, 1
  br i1 %cmp328, label %if.then330, label %if.end332

if.then330:                                       ; preds = %if.then327
  %190 = load ptr, ptr %pVm.addr, align 8
  %sArgv = getelementptr inbounds nuw %struct.ph7_vm, ptr %190, i32 0, i32 18
  %call331 = call i32 @SyBlobAppend(ptr noundef %sArgv, ptr noundef @.str.61, i32 noundef 1)
  br label %if.end332

if.end332:                                        ; preds = %if.then330, %if.then327
  %191 = load ptr, ptr %pVm.addr, align 8
  %sArgv333 = getelementptr inbounds nuw %struct.ph7_vm, ptr %191, i32 0, i32 18
  %192 = load ptr, ptr %zValue289, align 8
  %193 = load i32, ptr %n, align 4
  %call334 = call i32 @SyBlobAppend(ptr noundef %sArgv333, ptr noundef %192, i32 noundef %193)
  br label %if.end335

if.end335:                                        ; preds = %if.end332, %if.end321
  br label %sw.epilog

sw.bb336:                                         ; preds = %entry
  %194 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p337 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %194, i32 0, i32 0
  %gp_offset338 = load i32, ptr %gp_offset_p337, align 8
  %fits_in_gp339 = icmp ule i32 %gp_offset338, 40
  br i1 %fits_in_gp339, label %vaarg.in_reg340, label %vaarg.in_mem342

vaarg.in_reg340:                                  ; preds = %sw.bb336
  %195 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %194, i32 0, i32 3
  %reg_save_area341 = load ptr, ptr %195, align 8
  %196 = getelementptr i8, ptr %reg_save_area341, i32 %gp_offset338
  %197 = add i32 %gp_offset338, 8
  store i32 %197, ptr %gp_offset_p337, align 8
  br label %vaarg.end346

vaarg.in_mem342:                                  ; preds = %sw.bb336
  %overflow_arg_area_p343 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %194, i32 0, i32 2
  %overflow_arg_area344 = load ptr, ptr %overflow_arg_area_p343, align 8
  %overflow_arg_area.next345 = getelementptr i8, ptr %overflow_arg_area344, i32 8
  store ptr %overflow_arg_area.next345, ptr %overflow_arg_area_p343, align 8
  br label %vaarg.end346

vaarg.end346:                                     ; preds = %vaarg.in_mem342, %vaarg.in_reg340
  %vaarg.addr347 = phi ptr [ %196, %vaarg.in_reg340 ], [ %overflow_arg_area344, %vaarg.in_mem342 ]
  %198 = load ptr, ptr %vaarg.addr347, align 8
  store ptr %198, ptr %xErrLog, align 8
  %199 = load ptr, ptr %xErrLog, align 8
  %200 = load ptr, ptr %pVm.addr, align 8
  %xErrLog348 = getelementptr inbounds nuw %struct.ph7_vm, ptr %200, i32 0, i32 41
  store ptr %199, ptr %xErrLog348, align 8
  br label %sw.epilog

sw.bb349:                                         ; preds = %entry
  %201 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p350 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %201, i32 0, i32 0
  %gp_offset351 = load i32, ptr %gp_offset_p350, align 8
  %fits_in_gp352 = icmp ule i32 %gp_offset351, 40
  br i1 %fits_in_gp352, label %vaarg.in_reg353, label %vaarg.in_mem355

vaarg.in_reg353:                                  ; preds = %sw.bb349
  %202 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %201, i32 0, i32 3
  %reg_save_area354 = load ptr, ptr %202, align 8
  %203 = getelementptr i8, ptr %reg_save_area354, i32 %gp_offset351
  %204 = add i32 %gp_offset351, 8
  store i32 %204, ptr %gp_offset_p350, align 8
  br label %vaarg.end359

vaarg.in_mem355:                                  ; preds = %sw.bb349
  %overflow_arg_area_p356 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %201, i32 0, i32 2
  %overflow_arg_area357 = load ptr, ptr %overflow_arg_area_p356, align 8
  %overflow_arg_area.next358 = getelementptr i8, ptr %overflow_arg_area357, i32 8
  store ptr %overflow_arg_area.next358, ptr %overflow_arg_area_p356, align 8
  br label %vaarg.end359

vaarg.end359:                                     ; preds = %vaarg.in_mem355, %vaarg.in_reg353
  %vaarg.addr360 = phi ptr [ %203, %vaarg.in_reg353 ], [ %overflow_arg_area357, %vaarg.in_mem355 ]
  %205 = load ptr, ptr %vaarg.addr360, align 8
  store ptr %205, ptr %ppValue, align 8
  %206 = load ptr, ptr %pVm.addr, align 8
  %sExec = getelementptr inbounds nuw %struct.ph7_vm, ptr %206, i32 0, i32 27
  %207 = load ptr, ptr %ppValue, align 8
  store ptr %sExec, ptr %207, align 8
  br label %sw.epilog

sw.bb361:                                         ; preds = %entry
  %208 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p362 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %208, i32 0, i32 0
  %gp_offset363 = load i32, ptr %gp_offset_p362, align 8
  %fits_in_gp364 = icmp ule i32 %gp_offset363, 40
  br i1 %fits_in_gp364, label %vaarg.in_reg365, label %vaarg.in_mem367

vaarg.in_reg365:                                  ; preds = %sw.bb361
  %209 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %208, i32 0, i32 3
  %reg_save_area366 = load ptr, ptr %209, align 8
  %210 = getelementptr i8, ptr %reg_save_area366, i32 %gp_offset363
  %211 = add i32 %gp_offset363, 8
  store i32 %211, ptr %gp_offset_p362, align 8
  br label %vaarg.end371

vaarg.in_mem367:                                  ; preds = %sw.bb361
  %overflow_arg_area_p368 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %208, i32 0, i32 2
  %overflow_arg_area369 = load ptr, ptr %overflow_arg_area_p368, align 8
  %overflow_arg_area.next370 = getelementptr i8, ptr %overflow_arg_area369, i32 8
  store ptr %overflow_arg_area.next370, ptr %overflow_arg_area_p368, align 8
  br label %vaarg.end371

vaarg.end371:                                     ; preds = %vaarg.in_mem367, %vaarg.in_reg365
  %vaarg.addr372 = phi ptr [ %210, %vaarg.in_reg365 ], [ %overflow_arg_area369, %vaarg.in_mem367 ]
  %212 = load ptr, ptr %vaarg.addr372, align 8
  store ptr %212, ptr %pStream, align 8
  %213 = load ptr, ptr %pStream, align 8
  %cmp373 = icmp eq ptr %213, null
  br i1 %cmp373, label %if.then391, label %lor.lhs.false375

lor.lhs.false375:                                 ; preds = %vaarg.end371
  %214 = load ptr, ptr %pStream, align 8
  %zName376 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %214, i32 0, i32 0
  %215 = load ptr, ptr %zName376, align 8
  %cmp377 = icmp eq ptr %215, null
  br i1 %cmp377, label %if.then391, label %lor.lhs.false379

lor.lhs.false379:                                 ; preds = %lor.lhs.false375
  %216 = load ptr, ptr %pStream, align 8
  %zName380 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %216, i32 0, i32 0
  %217 = load ptr, ptr %zName380, align 8
  %arrayidx381 = getelementptr inbounds i8, ptr %217, i64 0
  %218 = load i8, ptr %arrayidx381, align 1
  %conv382 = sext i8 %218 to i32
  %cmp383 = icmp eq i32 %conv382, 0
  br i1 %cmp383, label %if.then391, label %lor.lhs.false385

lor.lhs.false385:                                 ; preds = %lor.lhs.false379
  %219 = load ptr, ptr %pStream, align 8
  %xOpen = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %219, i32 0, i32 2
  %220 = load ptr, ptr %xOpen, align 8
  %cmp386 = icmp eq ptr %220, null
  br i1 %cmp386, label %if.then391, label %lor.lhs.false388

lor.lhs.false388:                                 ; preds = %lor.lhs.false385
  %221 = load ptr, ptr %pStream, align 8
  %xRead = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %221, i32 0, i32 6
  %222 = load ptr, ptr %xRead, align 8
  %cmp389 = icmp eq ptr %222, null
  br i1 %cmp389, label %if.then391, label %if.end392

if.then391:                                       ; preds = %lor.lhs.false388, %lor.lhs.false385, %lor.lhs.false379, %lor.lhs.false375, %vaarg.end371
  store i32 -9, ptr %rc, align 4
  br label %sw.epilog

if.end392:                                        ; preds = %lor.lhs.false388
  %223 = load ptr, ptr %pVm.addr, align 8
  %pDefStream = getelementptr inbounds nuw %struct.ph7_vm, ptr %223, i32 0, i32 26
  %224 = load ptr, ptr %pDefStream, align 8
  %cmp393 = icmp eq ptr %224, null
  br i1 %cmp393, label %land.lhs.true395, label %if.end402

land.lhs.true395:                                 ; preds = %if.end392
  %225 = load ptr, ptr %pStream, align 8
  %zName396 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %225, i32 0, i32 0
  %226 = load ptr, ptr %zName396, align 8
  %call397 = call i32 @SyStrnicmp(ptr noundef %226, ptr noundef @.str.22, i32 noundef 4)
  %cmp398 = icmp eq i32 %call397, 0
  br i1 %cmp398, label %if.then400, label %if.end402

if.then400:                                       ; preds = %land.lhs.true395
  %227 = load ptr, ptr %pStream, align 8
  %228 = load ptr, ptr %pVm.addr, align 8
  %pDefStream401 = getelementptr inbounds nuw %struct.ph7_vm, ptr %228, i32 0, i32 26
  store ptr %227, ptr %pDefStream401, align 8
  br label %if.end402

if.end402:                                        ; preds = %if.then400, %land.lhs.true395, %if.end392
  %229 = load ptr, ptr %pVm.addr, align 8
  %aIOstream = getelementptr inbounds nuw %struct.ph7_vm, ptr %229, i32 0, i32 25
  %call403 = call i32 @SySetPut(ptr noundef %aIOstream, ptr noundef %pStream)
  store i32 %call403, ptr %rc, align 4
  br label %sw.epilog

sw.bb404:                                         ; preds = %entry
  %230 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p405 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %230, i32 0, i32 0
  %gp_offset406 = load i32, ptr %gp_offset_p405, align 8
  %fits_in_gp407 = icmp ule i32 %gp_offset406, 40
  br i1 %fits_in_gp407, label %vaarg.in_reg408, label %vaarg.in_mem410

vaarg.in_reg408:                                  ; preds = %sw.bb404
  %231 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %230, i32 0, i32 3
  %reg_save_area409 = load ptr, ptr %231, align 8
  %232 = getelementptr i8, ptr %reg_save_area409, i32 %gp_offset406
  %233 = add i32 %gp_offset406, 8
  store i32 %233, ptr %gp_offset_p405, align 8
  br label %vaarg.end414

vaarg.in_mem410:                                  ; preds = %sw.bb404
  %overflow_arg_area_p411 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %230, i32 0, i32 2
  %overflow_arg_area412 = load ptr, ptr %overflow_arg_area_p411, align 8
  %overflow_arg_area.next413 = getelementptr i8, ptr %overflow_arg_area412, i32 8
  store ptr %overflow_arg_area.next413, ptr %overflow_arg_area_p411, align 8
  br label %vaarg.end414

vaarg.end414:                                     ; preds = %vaarg.in_mem410, %vaarg.in_reg408
  %vaarg.addr415 = phi ptr [ %232, %vaarg.in_reg408 ], [ %overflow_arg_area412, %vaarg.in_mem410 ]
  %234 = load ptr, ptr %vaarg.addr415, align 8
  store ptr %234, ptr %ppOut, align 8
  %235 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p416 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %235, i32 0, i32 0
  %gp_offset417 = load i32, ptr %gp_offset_p416, align 8
  %fits_in_gp418 = icmp ule i32 %gp_offset417, 40
  br i1 %fits_in_gp418, label %vaarg.in_reg419, label %vaarg.in_mem421

vaarg.in_reg419:                                  ; preds = %vaarg.end414
  %236 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %235, i32 0, i32 3
  %reg_save_area420 = load ptr, ptr %236, align 8
  %237 = getelementptr i8, ptr %reg_save_area420, i32 %gp_offset417
  %238 = add i32 %gp_offset417, 8
  store i32 %238, ptr %gp_offset_p416, align 8
  br label %vaarg.end425

vaarg.in_mem421:                                  ; preds = %vaarg.end414
  %overflow_arg_area_p422 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %235, i32 0, i32 2
  %overflow_arg_area423 = load ptr, ptr %overflow_arg_area_p422, align 8
  %overflow_arg_area.next424 = getelementptr i8, ptr %overflow_arg_area423, i32 8
  store ptr %overflow_arg_area.next424, ptr %overflow_arg_area_p422, align 8
  br label %vaarg.end425

vaarg.end425:                                     ; preds = %vaarg.in_mem421, %vaarg.in_reg419
  %vaarg.addr426 = phi ptr [ %237, %vaarg.in_reg419 ], [ %overflow_arg_area423, %vaarg.in_mem421 ]
  %239 = load ptr, ptr %vaarg.addr426, align 8
  store ptr %239, ptr %pLen, align 8
  %240 = load ptr, ptr %pVm.addr, align 8
  %sConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %240, i32 0, i32 16
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sConsumer, i32 0, i32 1
  %241 = load ptr, ptr %pBlob, align 8
  %242 = load ptr, ptr %ppOut, align 8
  store ptr %241, ptr %242, align 8
  %243 = load ptr, ptr %pVm.addr, align 8
  %sConsumer427 = getelementptr inbounds nuw %struct.ph7_vm, ptr %243, i32 0, i32 16
  %nByte428 = getelementptr inbounds nuw %struct.SyBlob, ptr %sConsumer427, i32 0, i32 2
  %244 = load i32, ptr %nByte428, align 8
  %245 = load ptr, ptr %pLen, align 8
  store i32 %244, ptr %245, align 4
  br label %sw.epilog

sw.bb429:                                         ; preds = %entry
  %246 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p430 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %246, i32 0, i32 0
  %gp_offset431 = load i32, ptr %gp_offset_p430, align 8
  %fits_in_gp432 = icmp ule i32 %gp_offset431, 40
  br i1 %fits_in_gp432, label %vaarg.in_reg433, label %vaarg.in_mem435

vaarg.in_reg433:                                  ; preds = %sw.bb429
  %247 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %246, i32 0, i32 3
  %reg_save_area434 = load ptr, ptr %247, align 8
  %248 = getelementptr i8, ptr %reg_save_area434, i32 %gp_offset431
  %249 = add i32 %gp_offset431, 8
  store i32 %249, ptr %gp_offset_p430, align 8
  br label %vaarg.end439

vaarg.in_mem435:                                  ; preds = %sw.bb429
  %overflow_arg_area_p436 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %246, i32 0, i32 2
  %overflow_arg_area437 = load ptr, ptr %overflow_arg_area_p436, align 8
  %overflow_arg_area.next438 = getelementptr i8, ptr %overflow_arg_area437, i32 8
  store ptr %overflow_arg_area.next438, ptr %overflow_arg_area_p436, align 8
  br label %vaarg.end439

vaarg.end439:                                     ; preds = %vaarg.in_mem435, %vaarg.in_reg433
  %vaarg.addr440 = phi ptr [ %248, %vaarg.in_reg433 ], [ %overflow_arg_area437, %vaarg.in_mem435 ]
  %250 = load ptr, ptr %vaarg.addr440, align 8
  store ptr %250, ptr %zRequest, align 8
  %251 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p442 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %251, i32 0, i32 0
  %gp_offset443 = load i32, ptr %gp_offset_p442, align 8
  %fits_in_gp444 = icmp ule i32 %gp_offset443, 40
  br i1 %fits_in_gp444, label %vaarg.in_reg445, label %vaarg.in_mem447

vaarg.in_reg445:                                  ; preds = %vaarg.end439
  %252 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %251, i32 0, i32 3
  %reg_save_area446 = load ptr, ptr %252, align 8
  %253 = getelementptr i8, ptr %reg_save_area446, i32 %gp_offset443
  %254 = add i32 %gp_offset443, 8
  store i32 %254, ptr %gp_offset_p442, align 8
  br label %vaarg.end451

vaarg.in_mem447:                                  ; preds = %vaarg.end439
  %overflow_arg_area_p448 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %251, i32 0, i32 2
  %overflow_arg_area449 = load ptr, ptr %overflow_arg_area_p448, align 8
  %overflow_arg_area.next450 = getelementptr i8, ptr %overflow_arg_area449, i32 8
  store ptr %overflow_arg_area.next450, ptr %overflow_arg_area_p448, align 8
  br label %vaarg.end451

vaarg.end451:                                     ; preds = %vaarg.in_mem447, %vaarg.in_reg445
  %vaarg.addr452 = phi ptr [ %253, %vaarg.in_reg445 ], [ %overflow_arg_area449, %vaarg.in_mem447 ]
  %255 = load i32, ptr %vaarg.addr452, align 4
  store i32 %255, ptr %nByte441, align 4
  %256 = load ptr, ptr %zRequest, align 8
  %cmp453 = icmp eq ptr %256, null
  br i1 %cmp453, label %if.then460, label %lor.lhs.false455

lor.lhs.false455:                                 ; preds = %vaarg.end451
  %257 = load ptr, ptr %zRequest, align 8
  %arrayidx456 = getelementptr inbounds i8, ptr %257, i64 0
  %258 = load i8, ptr %arrayidx456, align 1
  %conv457 = sext i8 %258 to i32
  %cmp458 = icmp eq i32 %conv457, 0
  br i1 %cmp458, label %if.then460, label %if.end461

if.then460:                                       ; preds = %lor.lhs.false455, %vaarg.end451
  store i32 -3, ptr %rc, align 4
  br label %sw.epilog

if.end461:                                        ; preds = %lor.lhs.false455
  %259 = load i32, ptr %nByte441, align 4
  %cmp462 = icmp slt i32 %259, 0
  br i1 %cmp462, label %if.then464, label %if.end466

if.then464:                                       ; preds = %if.end461
  %260 = load ptr, ptr %zRequest, align 8
  %call465 = call i32 @SyStrlen(ptr noundef %260)
  store i32 %call465, ptr %nByte441, align 4
  br label %if.end466

if.end466:                                        ; preds = %if.then464, %if.end461
  %261 = load ptr, ptr %pVm.addr, align 8
  %262 = load ptr, ptr %zRequest, align 8
  %263 = load i32, ptr %nByte441, align 4
  %call467 = call i32 @VmHttpProcessRequest(ptr noundef %261, ptr noundef %262, i32 noundef %263)
  store i32 %call467, ptr %rc, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -13, ptr %rc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end466, %if.then460, %vaarg.end425, %if.end402, %if.then391, %vaarg.end359, %vaarg.end346, %if.end335, %if.then320, %if.then310, %if.end286, %if.then285, %if.end206, %if.then167, %vaarg.end121, %if.end110, %sw.bb91, %if.end, %vaarg.end10
  %264 = load i32, ptr %rc, align 4
  ret i32 %264
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHashmapRefInsert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjInstall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashLastEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveMemObj(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractSuper(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHashmapInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHttpProcessRequest(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
