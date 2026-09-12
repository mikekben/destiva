; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@getDigits.aMx = external hidden constant [6 x i16], align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #0

; Function Attrs: nounwind uwtable
define hidden i32 @getDigits(ptr noundef %zDate, ptr noundef %zFormat, ...) #1 {
entry:
  %zDate.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %cnt = alloca i32, align 4
  %nextC = alloca i8, align 1
  %N = alloca i8, align 1
  %min = alloca i8, align 1
  %val = alloca i32, align 4
  %max = alloca i16, align 2
  store ptr %zDate, ptr %zDate.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store i32 0, ptr %cnt, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %zFormat.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %sub = sub nsw i32 %conv, 48
  %conv1 = trunc i32 %sub to i8
  store i8 %conv1, ptr %N, align 1
  %2 = load ptr, ptr %zFormat.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %sub4 = sub nsw i32 %conv3, 48
  %conv5 = trunc i32 %sub4 to i8
  store i8 %conv5, ptr %min, align 1
  store i32 0, ptr %val, align 4
  %4 = load ptr, ptr %zFormat.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %5 to i32
  %sub8 = sub nsw i32 %conv7, 97
  %idxprom = sext i32 %sub8 to i64
  %arrayidx9 = getelementptr inbounds [6 x i16], ptr @getDigits.aMx, i64 0, i64 %idxprom
  %6 = load i16, ptr %arrayidx9, align 2
  store i16 %6, ptr %max, align 2
  %7 = load ptr, ptr %zFormat.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx10, align 1
  store i8 %8, ptr %nextC, align 1
  store i32 0, ptr %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %do.body
  %9 = load i8, ptr %N, align 1
  %dec = add i8 %9, -1
  store i8 %dec, ptr %N, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %zDate.addr, align 8
  %11 = load i8, ptr %10, align 1
  %idxprom11 = zext i8 %11 to i64
  %arrayidx12 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom11
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %and = and i32 %conv13, 4
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %end_getDigits

if.end:                                           ; preds = %while.body
  %13 = load i32, ptr %val, align 4
  %mul = mul nsw i32 %13, 10
  %14 = load ptr, ptr %zDate.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv15 = sext i8 %15 to i32
  %add = add nsw i32 %mul, %conv15
  %sub16 = sub nsw i32 %add, 48
  store i32 %sub16, ptr %val, align 4
  %16 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %zDate.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %17 = load i32, ptr %val, align 4
  %18 = load i8, ptr %min, align 1
  %conv17 = sext i8 %18 to i32
  %cmp = icmp slt i32 %17, %conv17
  br i1 %cmp, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %19 = load i32, ptr %val, align 4
  %20 = load i16, ptr %max, align 2
  %conv19 = zext i16 %20 to i32
  %cmp20 = icmp sgt i32 %19, %conv19
  br i1 %cmp20, label %if.then30, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %21 = load i8, ptr %nextC, align 1
  %conv23 = sext i8 %21 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %lor.lhs.false22
  %22 = load i8, ptr %nextC, align 1
  %conv26 = sext i8 %22 to i32
  %23 = load ptr, ptr %zDate.addr, align 8
  %24 = load i8, ptr %23, align 1
  %conv27 = sext i8 %24 to i32
  %cmp28 = icmp ne i32 %conv26, %conv27
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true, %lor.lhs.false, %while.end
  br label %end_getDigits

if.end31:                                         ; preds = %land.lhs.true, %lor.lhs.false22
  %25 = load i32, ptr %val, align 4
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay32, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.end31
  %26 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay32, i32 0, i32 3
  %reg_save_area = load ptr, ptr %26, align 16
  %27 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %28 = add i32 %gp_offset, 8
  store i32 %28, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.end31
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay32, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %27, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %29 = load ptr, ptr %vaarg.addr, align 8
  store i32 %25, ptr %29, align 4
  %30 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr33, ptr %zDate.addr, align 8
  %31 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %cnt, align 4
  %32 = load ptr, ptr %zFormat.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 4
  store ptr %add.ptr, ptr %zFormat.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %vaarg.end
  %33 = load i8, ptr %nextC, align 1
  %tobool34 = icmp ne i8 %33, 0
  br i1 %tobool34, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %end_getDigits

end_getDigits:                                    ; preds = %do.end, %if.then30, %if.then
  %arraydecay35 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay35)
  %34 = load i32, ptr %cnt, align 4
  ret i32 %34
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
!8 = distinct !{!8, !7}
