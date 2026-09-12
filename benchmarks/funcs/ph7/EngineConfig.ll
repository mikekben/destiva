; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @EngineConfig(ptr noundef %pEngine, i32 noundef %nOp, ptr noundef %ap) #0 {
entry:
  %pEngine.addr = alloca ptr, align 8
  %nOp.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %pConf = alloca ptr, align 8
  %rc = alloca i32, align 4
  %xConsumer = alloca ptr, align 8
  %pUserData = alloca ptr, align 8
  %pzPtr = alloca ptr, align 8
  %pLen = alloca ptr, align 8
  store ptr %pEngine, ptr %pEngine.addr, align 8
  store i32 %nOp, ptr %nOp.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %pEngine.addr, align 8
  %xConf = getelementptr inbounds nuw %struct.ph7, ptr %0, i32 0, i32 2
  store ptr %xConf, ptr %pConf, align 8
  store i32 0, ptr %rc, align 4
  %1 = load i32, ptr %nOp.addr, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb12
    i32 2, label %sw.bb47
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %2, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 8
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %3 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %2, i32 0, i32 3
  %reg_save_area = load ptr, ptr %3, align 8
  %4 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %5 = add i32 %gp_offset, 8
  store i32 %5, ptr %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %2, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %6 = load ptr, ptr %vaarg.addr, align 8
  store ptr %6, ptr %xConsumer, align 8
  %7 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p1 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 0
  %gp_offset2 = load i32, ptr %gp_offset_p1, align 8
  %fits_in_gp3 = icmp ule i32 %gp_offset2, 40
  br i1 %fits_in_gp3, label %vaarg.in_reg4, label %vaarg.in_mem6

vaarg.in_reg4:                                    ; preds = %vaarg.end
  %8 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 3
  %reg_save_area5 = load ptr, ptr %8, align 8
  %9 = getelementptr i8, ptr %reg_save_area5, i32 %gp_offset2
  %10 = add i32 %gp_offset2, 8
  store i32 %10, ptr %gp_offset_p1, align 8
  br label %vaarg.end10

vaarg.in_mem6:                                    ; preds = %vaarg.end
  %overflow_arg_area_p7 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 2
  %overflow_arg_area8 = load ptr, ptr %overflow_arg_area_p7, align 8
  %overflow_arg_area.next9 = getelementptr i8, ptr %overflow_arg_area8, i32 8
  store ptr %overflow_arg_area.next9, ptr %overflow_arg_area_p7, align 8
  br label %vaarg.end10

vaarg.end10:                                      ; preds = %vaarg.in_mem6, %vaarg.in_reg4
  %vaarg.addr11 = phi ptr [ %9, %vaarg.in_reg4 ], [ %overflow_arg_area8, %vaarg.in_mem6 ]
  %11 = load ptr, ptr %vaarg.addr11, align 8
  store ptr %11, ptr %pUserData, align 8
  %12 = load ptr, ptr %xConsumer, align 8
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %vaarg.end10
  store i32 -24, ptr %rc, align 4
  br label %sw.epilog

if.end:                                           ; preds = %vaarg.end10
  %13 = load ptr, ptr %xConsumer, align 8
  %14 = load ptr, ptr %pConf, align 8
  %xErr = getelementptr inbounds nuw %struct.ph7_conf, ptr %14, i32 0, i32 0
  store ptr %13, ptr %xErr, align 8
  %15 = load ptr, ptr %pUserData, align 8
  %16 = load ptr, ptr %pConf, align 8
  %pErrData = getelementptr inbounds nuw %struct.ph7_conf, ptr %16, i32 0, i32 1
  store ptr %15, ptr %pErrData, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %17 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p13 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %17, i32 0, i32 0
  %gp_offset14 = load i32, ptr %gp_offset_p13, align 8
  %fits_in_gp15 = icmp ule i32 %gp_offset14, 40
  br i1 %fits_in_gp15, label %vaarg.in_reg16, label %vaarg.in_mem18

vaarg.in_reg16:                                   ; preds = %sw.bb12
  %18 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %17, i32 0, i32 3
  %reg_save_area17 = load ptr, ptr %18, align 8
  %19 = getelementptr i8, ptr %reg_save_area17, i32 %gp_offset14
  %20 = add i32 %gp_offset14, 8
  store i32 %20, ptr %gp_offset_p13, align 8
  br label %vaarg.end22

vaarg.in_mem18:                                   ; preds = %sw.bb12
  %overflow_arg_area_p19 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %17, i32 0, i32 2
  %overflow_arg_area20 = load ptr, ptr %overflow_arg_area_p19, align 8
  %overflow_arg_area.next21 = getelementptr i8, ptr %overflow_arg_area20, i32 8
  store ptr %overflow_arg_area.next21, ptr %overflow_arg_area_p19, align 8
  br label %vaarg.end22

vaarg.end22:                                      ; preds = %vaarg.in_mem18, %vaarg.in_reg16
  %vaarg.addr23 = phi ptr [ %19, %vaarg.in_reg16 ], [ %overflow_arg_area20, %vaarg.in_mem18 ]
  %21 = load ptr, ptr %vaarg.addr23, align 8
  store ptr %21, ptr %pzPtr, align 8
  %22 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p24 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %22, i32 0, i32 0
  %gp_offset25 = load i32, ptr %gp_offset_p24, align 8
  %fits_in_gp26 = icmp ule i32 %gp_offset25, 40
  br i1 %fits_in_gp26, label %vaarg.in_reg27, label %vaarg.in_mem29

vaarg.in_reg27:                                   ; preds = %vaarg.end22
  %23 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %22, i32 0, i32 3
  %reg_save_area28 = load ptr, ptr %23, align 8
  %24 = getelementptr i8, ptr %reg_save_area28, i32 %gp_offset25
  %25 = add i32 %gp_offset25, 8
  store i32 %25, ptr %gp_offset_p24, align 8
  br label %vaarg.end33

vaarg.in_mem29:                                   ; preds = %vaarg.end22
  %overflow_arg_area_p30 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %22, i32 0, i32 2
  %overflow_arg_area31 = load ptr, ptr %overflow_arg_area_p30, align 8
  %overflow_arg_area.next32 = getelementptr i8, ptr %overflow_arg_area31, i32 8
  store ptr %overflow_arg_area.next32, ptr %overflow_arg_area_p30, align 8
  br label %vaarg.end33

vaarg.end33:                                      ; preds = %vaarg.in_mem29, %vaarg.in_reg27
  %vaarg.addr34 = phi ptr [ %24, %vaarg.in_reg27 ], [ %overflow_arg_area31, %vaarg.in_mem29 ]
  %26 = load ptr, ptr %vaarg.addr34, align 8
  store ptr %26, ptr %pLen, align 8
  %27 = load ptr, ptr %pzPtr, align 8
  %cmp35 = icmp eq ptr %27, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %vaarg.end33
  store i32 -24, ptr %rc, align 4
  br label %sw.epilog

if.end37:                                         ; preds = %vaarg.end33
  %28 = load ptr, ptr %pConf, align 8
  %sErrConsumer = getelementptr inbounds nuw %struct.ph7_conf, ptr %28, i32 0, i32 2
  %call = call i32 @SyBlobNullAppend(ptr noundef %sErrConsumer)
  %29 = load ptr, ptr %pConf, align 8
  %sErrConsumer38 = getelementptr inbounds nuw %struct.ph7_conf, ptr %29, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sErrConsumer38, i32 0, i32 1
  %30 = load ptr, ptr %pBlob, align 8
  %31 = load ptr, ptr %pzPtr, align 8
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %pLen, align 8
  %tobool = icmp ne ptr %32, null
  br i1 %tobool, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end37
  %33 = load ptr, ptr %pConf, align 8
  %sErrConsumer40 = getelementptr inbounds nuw %struct.ph7_conf, ptr %33, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sErrConsumer40, i32 0, i32 2
  %34 = load i32, ptr %nByte, align 8
  %cmp41 = icmp ugt i32 %34, 1
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then39
  %35 = load ptr, ptr %pConf, align 8
  %sErrConsumer43 = getelementptr inbounds nuw %struct.ph7_conf, ptr %35, i32 0, i32 2
  %nByte44 = getelementptr inbounds nuw %struct.SyBlob, ptr %sErrConsumer43, i32 0, i32 2
  %36 = load i32, ptr %nByte44, align 8
  %37 = load ptr, ptr %pLen, align 8
  store i32 %36, ptr %37, align 4
  br label %if.end45

if.else:                                          ; preds = %if.then39
  %38 = load ptr, ptr %pLen, align 8
  store i32 0, ptr %38, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end37
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -24, ptr %rc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb47, %if.end46, %if.then36, %if.end, %if.then
  %39 = load i32, ptr %rc, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobNullAppend(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
