; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeMultiLoad(ptr noundef %p, i32 noundef %iDest, ptr noundef %zTypes, ...) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %iDest.addr = alloca i32, align 4
  %zTypes.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  %z = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iDest, ptr %iDest.addr, align 4
  store ptr %zTypes, ptr %zTypes.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %zTypes.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  store i8 %2, ptr %c, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8, ptr %c, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 115
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay5, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then
  %4 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay5, i32 0, i32 3
  %reg_save_area = load ptr, ptr %4, align 16
  %5 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %6 = add i32 %gp_offset, 8
  store i32 %6, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay5, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %5, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %7 = load ptr, ptr %vaarg.addr, align 8
  store ptr %7, ptr %z, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load ptr, ptr %z, align 8
  %cmp6 = icmp eq ptr %9, null
  %10 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i32 73, i32 113
  %11 = load i32, ptr %iDest.addr, align 4
  %12 = load i32, ptr %i, align 4
  %add = add nsw i32 %11, %12
  %13 = load ptr, ptr %z, align 8
  %call = call i32 @sqlite3VdbeAddOp4(ptr noundef %8, i32 noundef %cond, i32 noundef 0, i32 noundef %add, i32 noundef 0, ptr noundef %13, i32 noundef 0)
  br label %if.end27

if.else:                                          ; preds = %for.body
  %14 = load i8, ptr %c, align 1
  %conv8 = sext i8 %14 to i32
  %cmp9 = icmp eq i32 %conv8, 105
  br i1 %cmp9, label %if.then11, label %if.else26

if.then11:                                        ; preds = %if.else
  %15 = load ptr, ptr %p.addr, align 8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p13 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay12, i32 0, i32 0
  %gp_offset14 = load i32, ptr %gp_offset_p13, align 16
  %fits_in_gp15 = icmp ule i32 %gp_offset14, 40
  br i1 %fits_in_gp15, label %vaarg.in_reg16, label %vaarg.in_mem18

vaarg.in_reg16:                                   ; preds = %if.then11
  %16 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay12, i32 0, i32 3
  %reg_save_area17 = load ptr, ptr %16, align 16
  %17 = getelementptr i8, ptr %reg_save_area17, i32 %gp_offset14
  %18 = add i32 %gp_offset14, 8
  store i32 %18, ptr %gp_offset_p13, align 16
  br label %vaarg.end22

vaarg.in_mem18:                                   ; preds = %if.then11
  %overflow_arg_area_p19 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay12, i32 0, i32 2
  %overflow_arg_area20 = load ptr, ptr %overflow_arg_area_p19, align 8
  %overflow_arg_area.next21 = getelementptr i8, ptr %overflow_arg_area20, i32 8
  store ptr %overflow_arg_area.next21, ptr %overflow_arg_area_p19, align 8
  br label %vaarg.end22

vaarg.end22:                                      ; preds = %vaarg.in_mem18, %vaarg.in_reg16
  %vaarg.addr23 = phi ptr [ %17, %vaarg.in_reg16 ], [ %overflow_arg_area20, %vaarg.in_mem18 ]
  %19 = load i32, ptr %vaarg.addr23, align 4
  %20 = load i32, ptr %iDest.addr, align 4
  %21 = load i32, ptr %i, align 4
  %add24 = add nsw i32 %20, %21
  %call25 = call i32 @sqlite3VdbeAddOp2(ptr noundef %15, i32 noundef 70, i32 noundef %19, i32 noundef %add24)
  br label %if.end

if.else26:                                        ; preds = %if.else
  br label %skip_op_resultrow

if.end:                                           ; preds = %vaarg.end22
  br label %if.end27

if.end27:                                         ; preds = %if.end, %vaarg.end
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %p.addr, align 8
  %24 = load i32, ptr %iDest.addr, align 4
  %25 = load i32, ptr %i, align 4
  %call28 = call i32 @sqlite3VdbeAddOp2(ptr noundef %23, i32 noundef 81, i32 noundef %24, i32 noundef %25)
  br label %skip_op_resultrow

skip_op_resultrow:                                ; preds = %for.end, %if.else26
  %arraydecay29 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay29)
  ret void
}

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
