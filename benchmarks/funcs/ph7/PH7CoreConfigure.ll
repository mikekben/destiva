; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.Global_Data = type { %struct.SyMemBackend, ptr, i32, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }

@sMPGlobal = external hidden global { { ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8], [15 x ptr] }, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
define hidden i32 @PH7CoreConfigure(i32 noundef %nOp, ptr noundef %ap) #0 {
entry:
  %nOp.addr = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pVfs = alloca ptr, align 8
  %pMethods = alloca ptr, align 8
  %xMemErr = alloca ptr, align 8
  %pMemErr = alloca ptr, align 8
  %xMemErr15 = alloca ptr, align 8
  %pUserData = alloca ptr, align 8
  store i32 %nOp, ptr %nOp.addr, align 4
  store ptr %ap, ptr %ap.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load i32, ptr %nOp.addr, align 4
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb14
    i32 3, label %sw.bb38
    i32 4, label %sw.bb39
    i32 5, label %sw.bb40
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
  store ptr %5, ptr %pVfs, align 8
  %6 = load ptr, ptr %pVfs, align 8
  store ptr %6, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 1), align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %7 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p2 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 0
  %gp_offset3 = load i32, ptr %gp_offset_p2, align 8
  %fits_in_gp4 = icmp ule i32 %gp_offset3, 40
  br i1 %fits_in_gp4, label %vaarg.in_reg5, label %vaarg.in_mem7

vaarg.in_reg5:                                    ; preds = %sw.bb1
  %8 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 3
  %reg_save_area6 = load ptr, ptr %8, align 8
  %9 = getelementptr i8, ptr %reg_save_area6, i32 %gp_offset3
  %10 = add i32 %gp_offset3, 8
  store i32 %10, ptr %gp_offset_p2, align 8
  br label %vaarg.end11

vaarg.in_mem7:                                    ; preds = %sw.bb1
  %overflow_arg_area_p8 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 2
  %overflow_arg_area9 = load ptr, ptr %overflow_arg_area_p8, align 8
  %overflow_arg_area.next10 = getelementptr i8, ptr %overflow_arg_area9, i32 8
  store ptr %overflow_arg_area.next10, ptr %overflow_arg_area_p8, align 8
  br label %vaarg.end11

vaarg.end11:                                      ; preds = %vaarg.in_mem7, %vaarg.in_reg5
  %vaarg.addr12 = phi ptr [ %9, %vaarg.in_reg5 ], [ %overflow_arg_area9, %vaarg.in_mem7 ]
  %11 = load ptr, ptr %vaarg.addr12, align 8
  store ptr %11, ptr %pMethods, align 8
  %12 = load ptr, ptr getelementptr inbounds nuw (%struct.SyMemBackend, ptr @sMPGlobal, i32 0, i32 4), align 8
  store ptr %12, ptr %xMemErr, align 8
  %13 = load ptr, ptr getelementptr inbounds nuw (%struct.SyMemBackend, ptr @sMPGlobal, i32 0, i32 5), align 8
  store ptr %13, ptr %pMemErr, align 8
  %14 = load ptr, ptr %pMethods, align 8
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %vaarg.end11
  %15 = load ptr, ptr %xMemErr, align 8
  %16 = load ptr, ptr %pMemErr, align 8
  %call = call i32 @SyMemBackendInit(ptr noundef @sMPGlobal, ptr noundef %15, ptr noundef %16)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %vaarg.end11
  %17 = load ptr, ptr %pMethods, align 8
  %18 = load ptr, ptr %xMemErr, align 8
  %19 = load ptr, ptr %pMemErr, align 8
  %call13 = call i32 @SyMemBackendInitFromOthers(ptr noundef @sMPGlobal, ptr noundef %17, ptr noundef %18, ptr noundef %19)
  store i32 %call13, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %20 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p16 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %20, i32 0, i32 0
  %gp_offset17 = load i32, ptr %gp_offset_p16, align 8
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg19, label %vaarg.in_mem21

vaarg.in_reg19:                                   ; preds = %sw.bb14
  %21 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %20, i32 0, i32 3
  %reg_save_area20 = load ptr, ptr %21, align 8
  %22 = getelementptr i8, ptr %reg_save_area20, i32 %gp_offset17
  %23 = add i32 %gp_offset17, 8
  store i32 %23, ptr %gp_offset_p16, align 8
  br label %vaarg.end25

vaarg.in_mem21:                                   ; preds = %sw.bb14
  %overflow_arg_area_p22 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %20, i32 0, i32 2
  %overflow_arg_area23 = load ptr, ptr %overflow_arg_area_p22, align 8
  %overflow_arg_area.next24 = getelementptr i8, ptr %overflow_arg_area23, i32 8
  store ptr %overflow_arg_area.next24, ptr %overflow_arg_area_p22, align 8
  br label %vaarg.end25

vaarg.end25:                                      ; preds = %vaarg.in_mem21, %vaarg.in_reg19
  %vaarg.addr26 = phi ptr [ %22, %vaarg.in_reg19 ], [ %overflow_arg_area23, %vaarg.in_mem21 ]
  %24 = load ptr, ptr %vaarg.addr26, align 8
  store ptr %24, ptr %xMemErr15, align 8
  %25 = load ptr, ptr %ap.addr, align 8
  %gp_offset_p27 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %25, i32 0, i32 0
  %gp_offset28 = load i32, ptr %gp_offset_p27, align 8
  %fits_in_gp29 = icmp ule i32 %gp_offset28, 40
  br i1 %fits_in_gp29, label %vaarg.in_reg30, label %vaarg.in_mem32

vaarg.in_reg30:                                   ; preds = %vaarg.end25
  %26 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %25, i32 0, i32 3
  %reg_save_area31 = load ptr, ptr %26, align 8
  %27 = getelementptr i8, ptr %reg_save_area31, i32 %gp_offset28
  %28 = add i32 %gp_offset28, 8
  store i32 %28, ptr %gp_offset_p27, align 8
  br label %vaarg.end36

vaarg.in_mem32:                                   ; preds = %vaarg.end25
  %overflow_arg_area_p33 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %25, i32 0, i32 2
  %overflow_arg_area34 = load ptr, ptr %overflow_arg_area_p33, align 8
  %overflow_arg_area.next35 = getelementptr i8, ptr %overflow_arg_area34, i32 8
  store ptr %overflow_arg_area.next35, ptr %overflow_arg_area_p33, align 8
  br label %vaarg.end36

vaarg.end36:                                      ; preds = %vaarg.in_mem32, %vaarg.in_reg30
  %vaarg.addr37 = phi ptr [ %27, %vaarg.in_reg30 ], [ %overflow_arg_area34, %vaarg.in_mem32 ]
  %29 = load ptr, ptr %vaarg.addr37, align 8
  store ptr %29, ptr %pUserData, align 8
  %30 = load ptr, ptr %xMemErr15, align 8
  store ptr %30, ptr getelementptr inbounds nuw (%struct.SyMemBackend, ptr @sMPGlobal, i32 0, i32 4), align 8
  %31 = load ptr, ptr %pUserData, align 8
  store ptr %31, ptr getelementptr inbounds nuw (%struct.SyMemBackend, ptr @sMPGlobal, i32 0, i32 5), align 8
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -24, ptr %rc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb39, %sw.bb38, %vaarg.end36, %if.end, %vaarg.end
  %32 = load i32, ptr %rc, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendInit(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendInitFromOthers(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
