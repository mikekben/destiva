; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info_floor1 = type { i32, [31 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x [8 x i32]], i32, [65 x i32], float, float, float, float, float, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @inspect_error(i32 noundef %x0, i32 noundef %x1, i32 noundef %y0, i32 noundef %y1, ptr noundef %mask, ptr noundef %mdct, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %mask.addr = alloca ptr, align 8
  %mdct.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %dy = alloca i32, align 4
  %adx = alloca i32, align 4
  %ady = alloca i32, align 4
  %base = alloca i32, align 4
  %sy = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %err = alloca i32, align 4
  %val = alloca i32, align 4
  %mse = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %x0, ptr %x0.addr, align 4
  store i32 %x1, ptr %x1.addr, align 4
  store i32 %y0, ptr %y0.addr, align 4
  store i32 %y1, ptr %y1.addr, align 4
  store ptr %mask, ptr %mask.addr, align 8
  store ptr %mdct, ptr %mdct.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load i32, ptr %y1.addr, align 4
  %1 = load i32, ptr %y0.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, ptr %dy, align 4
  %2 = load i32, ptr %x1.addr, align 4
  %3 = load i32, ptr %x0.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, ptr %adx, align 4
  %4 = load i32, ptr %dy, align 4
  %5 = call i32 @llvm.abs.i32(i32 %4, i1 true)
  store i32 %5, ptr %ady, align 4
  %6 = load i32, ptr %dy, align 4
  %7 = load i32, ptr %adx, align 4
  %div = sdiv i32 %6, %7
  store i32 %div, ptr %base, align 4
  %8 = load i32, ptr %dy, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, ptr %base, align 4
  %sub2 = sub nsw i32 %9, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i32, ptr %base, align 4
  %add = add nsw i32 %10, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub2, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, ptr %sy, align 4
  %11 = load i32, ptr %x0.addr, align 4
  store i32 %11, ptr %x, align 4
  %12 = load i32, ptr %y0.addr, align 4
  store i32 %12, ptr %y, align 4
  store i32 0, ptr %err, align 4
  %13 = load ptr, ptr %mask.addr, align 8
  %14 = load i32, ptr %x, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds float, ptr %13, i64 %idx.ext
  %call = call i32 @vorbis_dBquant(ptr noundef %add.ptr)
  store i32 %call, ptr %val, align 4
  store i32 0, ptr %mse, align 4
  store i32 0, ptr %n, align 4
  %15 = load i32, ptr %base, align 4
  %16 = load i32, ptr %adx, align 4
  %mul = mul nsw i32 %15, %16
  %17 = call i32 @llvm.abs.i32(i32 %mul, i1 true)
  %18 = load i32, ptr %ady, align 4
  %sub3 = sub nsw i32 %18, %17
  store i32 %sub3, ptr %ady, align 4
  %19 = load i32, ptr %y, align 4
  %20 = load i32, ptr %val, align 4
  %sub4 = sub nsw i32 %19, %20
  store i32 %sub4, ptr %mse, align 4
  %21 = load i32, ptr %mse, align 4
  %22 = load i32, ptr %mse, align 4
  %mul5 = mul nsw i32 %22, %21
  store i32 %mul5, ptr %mse, align 4
  %23 = load i32, ptr %n, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %n, align 4
  %24 = load ptr, ptr %mdct.addr, align 8
  %25 = load i32, ptr %x, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds float, ptr %24, i64 %idxprom
  %26 = load float, ptr %arrayidx, align 4
  %27 = load ptr, ptr %info.addr, align 8
  %twofitatten = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %27, i32 0, i32 12
  %28 = load float, ptr %twofitatten, align 4
  %add6 = fadd float %26, %28
  %29 = load ptr, ptr %mask.addr, align 8
  %30 = load i32, ptr %x, align 4
  %idxprom7 = sext i32 %30 to i64
  %arrayidx8 = getelementptr inbounds float, ptr %29, i64 %idxprom7
  %31 = load float, ptr %arrayidx8, align 4
  %cmp9 = fcmp oge float %add6, %31
  br i1 %cmp9, label %if.then, label %if.end22

if.then:                                          ; preds = %cond.end
  %32 = load i32, ptr %y, align 4
  %conv = sitofp i32 %32 to float
  %33 = load ptr, ptr %info.addr, align 8
  %maxover = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %33, i32 0, i32 8
  %34 = load float, ptr %maxover, align 4
  %add10 = fadd float %conv, %34
  %35 = load i32, ptr %val, align 4
  %conv11 = sitofp i32 %35 to float
  %cmp12 = fcmp olt float %add10, %conv11
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %36 = load i32, ptr %y, align 4
  %conv15 = sitofp i32 %36 to float
  %37 = load ptr, ptr %info.addr, align 8
  %maxunder = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %37, i32 0, i32 9
  %38 = load float, ptr %maxunder, align 4
  %sub16 = fsub float %conv15, %38
  %39 = load i32, ptr %val, align 4
  %conv17 = sitofp i32 %39 to float
  %cmp18 = fcmp ogt float %sub16, %conv17
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end69, %if.end22
  %40 = load i32, ptr %x, align 4
  %inc23 = add nsw i32 %40, 1
  store i32 %inc23, ptr %x, align 4
  %41 = load i32, ptr %x1.addr, align 4
  %cmp24 = icmp slt i32 %inc23, %41
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i32, ptr %err, align 4
  %43 = load i32, ptr %ady, align 4
  %add26 = add nsw i32 %42, %43
  store i32 %add26, ptr %err, align 4
  %44 = load i32, ptr %err, align 4
  %45 = load i32, ptr %adx, align 4
  %cmp27 = icmp sge i32 %44, %45
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %while.body
  %46 = load i32, ptr %adx, align 4
  %47 = load i32, ptr %err, align 4
  %sub30 = sub nsw i32 %47, %46
  store i32 %sub30, ptr %err, align 4
  %48 = load i32, ptr %sy, align 4
  %49 = load i32, ptr %y, align 4
  %add31 = add nsw i32 %49, %48
  store i32 %add31, ptr %y, align 4
  br label %if.end33

if.else:                                          ; preds = %while.body
  %50 = load i32, ptr %base, align 4
  %51 = load i32, ptr %y, align 4
  %add32 = add nsw i32 %51, %50
  store i32 %add32, ptr %y, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then29
  %52 = load ptr, ptr %mask.addr, align 8
  %53 = load i32, ptr %x, align 4
  %idx.ext34 = sext i32 %53 to i64
  %add.ptr35 = getelementptr inbounds float, ptr %52, i64 %idx.ext34
  %call36 = call i32 @vorbis_dBquant(ptr noundef %add.ptr35)
  store i32 %call36, ptr %val, align 4
  %54 = load i32, ptr %y, align 4
  %55 = load i32, ptr %val, align 4
  %sub37 = sub nsw i32 %54, %55
  %56 = load i32, ptr %y, align 4
  %57 = load i32, ptr %val, align 4
  %sub38 = sub nsw i32 %56, %57
  %mul39 = mul nsw i32 %sub37, %sub38
  %58 = load i32, ptr %mse, align 4
  %add40 = add nsw i32 %58, %mul39
  store i32 %add40, ptr %mse, align 4
  %59 = load i32, ptr %n, align 4
  %inc41 = add nsw i32 %59, 1
  store i32 %inc41, ptr %n, align 4
  %60 = load ptr, ptr %mdct.addr, align 8
  %61 = load i32, ptr %x, align 4
  %idxprom42 = sext i32 %61 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %60, i64 %idxprom42
  %62 = load float, ptr %arrayidx43, align 4
  %63 = load ptr, ptr %info.addr, align 8
  %twofitatten44 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %63, i32 0, i32 12
  %64 = load float, ptr %twofitatten44, align 4
  %add45 = fadd float %62, %64
  %65 = load ptr, ptr %mask.addr, align 8
  %66 = load i32, ptr %x, align 4
  %idxprom46 = sext i32 %66 to i64
  %arrayidx47 = getelementptr inbounds float, ptr %65, i64 %idxprom46
  %67 = load float, ptr %arrayidx47, align 4
  %cmp48 = fcmp oge float %add45, %67
  br i1 %cmp48, label %if.then50, label %if.end69

if.then50:                                        ; preds = %if.end33
  %68 = load i32, ptr %val, align 4
  %tobool = icmp ne i32 %68, 0
  br i1 %tobool, label %if.then51, label %if.end68

if.then51:                                        ; preds = %if.then50
  %69 = load i32, ptr %y, align 4
  %conv52 = sitofp i32 %69 to float
  %70 = load ptr, ptr %info.addr, align 8
  %maxover53 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %70, i32 0, i32 8
  %71 = load float, ptr %maxover53, align 4
  %add54 = fadd float %conv52, %71
  %72 = load i32, ptr %val, align 4
  %conv55 = sitofp i32 %72 to float
  %cmp56 = fcmp olt float %add54, %conv55
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then51
  store i32 1, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.then51
  %73 = load i32, ptr %y, align 4
  %conv60 = sitofp i32 %73 to float
  %74 = load ptr, ptr %info.addr, align 8
  %maxunder61 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %74, i32 0, i32 9
  %75 = load float, ptr %maxunder61, align 4
  %sub62 = fsub float %conv60, %75
  %76 = load i32, ptr %val, align 4
  %conv63 = sitofp i32 %76 to float
  %cmp64 = fcmp ogt float %sub62, %conv63
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end59
  store i32 1, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.end59
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then50
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end33
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %77 = load ptr, ptr %info.addr, align 8
  %maxover70 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %77, i32 0, i32 8
  %78 = load float, ptr %maxover70, align 4
  %79 = load ptr, ptr %info.addr, align 8
  %maxover71 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %79, i32 0, i32 8
  %80 = load float, ptr %maxover71, align 4
  %mul72 = fmul float %78, %80
  %81 = load i32, ptr %n, align 4
  %conv73 = sitofp i32 %81 to float
  %div74 = fdiv float %mul72, %conv73
  %82 = load ptr, ptr %info.addr, align 8
  %maxerr = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %82, i32 0, i32 10
  %83 = load float, ptr %maxerr, align 4
  %cmp75 = fcmp ogt float %div74, %83
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %while.end
  %84 = load ptr, ptr %info.addr, align 8
  %maxunder79 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %84, i32 0, i32 9
  %85 = load float, ptr %maxunder79, align 4
  %86 = load ptr, ptr %info.addr, align 8
  %maxunder80 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %86, i32 0, i32 9
  %87 = load float, ptr %maxunder80, align 4
  %mul81 = fmul float %85, %87
  %88 = load i32, ptr %n, align 4
  %conv82 = sitofp i32 %88 to float
  %div83 = fdiv float %mul81, %conv82
  %89 = load ptr, ptr %info.addr, align 8
  %maxerr84 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %89, i32 0, i32 10
  %90 = load float, ptr %maxerr84, align 4
  %cmp85 = fcmp ogt float %div83, %90
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end78
  store i32 0, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end78
  %91 = load i32, ptr %mse, align 4
  %92 = load i32, ptr %n, align 4
  %div89 = sdiv i32 %91, %92
  %conv90 = sitofp i32 %div89 to float
  %93 = load ptr, ptr %info.addr, align 8
  %maxerr91 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %93, i32 0, i32 10
  %94 = load float, ptr %maxerr91, align 4
  %cmp92 = fcmp ogt float %conv90, %94
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end88
  store i32 1, ptr %retval, align 4
  br label %return

if.end95:                                         ; preds = %if.end88
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end95, %if.then94, %if.then87, %if.then77, %if.then66, %if.then58, %if.then20, %if.then14
  %95 = load i32, ptr %retval, align 4
  ret i32 %95
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @vorbis_dBquant(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
