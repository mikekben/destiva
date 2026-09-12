; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsfit_acc = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vorbis_info_floor1 = type { i32, [31 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x [8 x i32]], i32, [65 x i32], float, float, float, float, float, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @accumulate_fit(ptr noundef %flr, ptr noundef %mdct, i32 noundef %x0, i32 noundef %x1, ptr noundef %a, i32 noundef %n, ptr noundef %info) #1 {
entry:
  %flr.addr = alloca ptr, align 8
  %mdct.addr = alloca ptr, align 8
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %xa = alloca i64, align 8
  %ya = alloca i64, align 8
  %x2a = alloca i64, align 8
  %y2a = alloca i64, align 8
  %xya = alloca i64, align 8
  %na = alloca i64, align 8
  %xb = alloca i64, align 8
  %yb = alloca i64, align 8
  %x2b = alloca i64, align 8
  %y2b = alloca i64, align 8
  %xyb = alloca i64, align 8
  %nb = alloca i64, align 8
  %quantized = alloca i32, align 4
  %weight = alloca i32, align 4
  store ptr %flr, ptr %flr.addr, align 8
  store ptr %mdct, ptr %mdct.addr, align 8
  store i32 %x0, ptr %x0.addr, align 4
  store i32 %x1, ptr %x1.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %info, ptr %info.addr, align 8
  store i64 0, ptr %xa, align 8
  store i64 0, ptr %ya, align 8
  store i64 0, ptr %x2a, align 8
  store i64 0, ptr %y2a, align 8
  store i64 0, ptr %xya, align 8
  store i64 0, ptr %na, align 8
  store i64 0, ptr %xb, align 8
  store i64 0, ptr %yb, align 8
  store i64 0, ptr %x2b, align 8
  store i64 0, ptr %y2b, align 8
  store i64 0, ptr %xyb, align 8
  store i64 0, ptr %nb, align 8
  %0 = load ptr, ptr %a.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 64, i1 false)
  %1 = load i32, ptr %x0.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load ptr, ptr %a.addr, align 8
  %x01 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %2, i32 0, i32 0
  store i64 %conv, ptr %x01, align 8
  %3 = load i32, ptr %x1.addr, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load ptr, ptr %a.addr, align 8
  %x13 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %4, i32 0, i32 1
  store i64 %conv2, ptr %x13, align 8
  %5 = load i32, ptr %x1.addr, align 4
  %6 = load i32, ptr %n.addr, align 4
  %cmp = icmp sge i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, ptr %x1.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %x0.addr, align 4
  %conv5 = sext i32 %8 to i64
  store i64 %conv5, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i64, ptr %i, align 8
  %10 = load i32, ptr %x1.addr, align 4
  %conv6 = sext i32 %10 to i64
  %cmp7 = icmp sle i64 %9, %conv6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %flr.addr, align 8
  %12 = load i64, ptr %i, align 8
  %add.ptr = getelementptr inbounds float, ptr %11, i64 %12
  %call = call i32 @vorbis_dBquant(ptr noundef %add.ptr)
  store i32 %call, ptr %quantized, align 4
  %13 = load i32, ptr %quantized, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then9, label %if.end37

if.then9:                                         ; preds = %for.body
  %14 = load ptr, ptr %mdct.addr, align 8
  %15 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds float, ptr %14, i64 %15
  %16 = load float, ptr %arrayidx, align 4
  %17 = load ptr, ptr %info.addr, align 8
  %twofitatten = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %17, i32 0, i32 12
  %18 = load float, ptr %twofitatten, align 4
  %add = fadd float %16, %18
  %19 = load ptr, ptr %flr.addr, align 8
  %20 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %19, i64 %20
  %21 = load float, ptr %arrayidx10, align 4
  %cmp11 = fcmp oge float %add, %21
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  %22 = load i64, ptr %i, align 8
  %23 = load i64, ptr %xa, align 8
  %add14 = add nsw i64 %23, %22
  store i64 %add14, ptr %xa, align 8
  %24 = load i32, ptr %quantized, align 4
  %conv15 = sext i32 %24 to i64
  %25 = load i64, ptr %ya, align 8
  %add16 = add nsw i64 %25, %conv15
  store i64 %add16, ptr %ya, align 8
  %26 = load i64, ptr %i, align 8
  %27 = load i64, ptr %i, align 8
  %mul = mul nsw i64 %26, %27
  %28 = load i64, ptr %x2a, align 8
  %add17 = add nsw i64 %28, %mul
  store i64 %add17, ptr %x2a, align 8
  %29 = load i32, ptr %quantized, align 4
  %30 = load i32, ptr %quantized, align 4
  %mul18 = mul nsw i32 %29, %30
  %conv19 = sext i32 %mul18 to i64
  %31 = load i64, ptr %y2a, align 8
  %add20 = add nsw i64 %31, %conv19
  store i64 %add20, ptr %y2a, align 8
  %32 = load i64, ptr %i, align 8
  %33 = load i32, ptr %quantized, align 4
  %conv21 = sext i32 %33 to i64
  %mul22 = mul nsw i64 %32, %conv21
  %34 = load i64, ptr %xya, align 8
  %add23 = add nsw i64 %34, %mul22
  store i64 %add23, ptr %xya, align 8
  %35 = load i64, ptr %na, align 8
  %inc = add nsw i64 %35, 1
  store i64 %inc, ptr %na, align 8
  br label %if.end36

if.else:                                          ; preds = %if.then9
  %36 = load i64, ptr %i, align 8
  %37 = load i64, ptr %xb, align 8
  %add24 = add nsw i64 %37, %36
  store i64 %add24, ptr %xb, align 8
  %38 = load i32, ptr %quantized, align 4
  %conv25 = sext i32 %38 to i64
  %39 = load i64, ptr %yb, align 8
  %add26 = add nsw i64 %39, %conv25
  store i64 %add26, ptr %yb, align 8
  %40 = load i64, ptr %i, align 8
  %41 = load i64, ptr %i, align 8
  %mul27 = mul nsw i64 %40, %41
  %42 = load i64, ptr %x2b, align 8
  %add28 = add nsw i64 %42, %mul27
  store i64 %add28, ptr %x2b, align 8
  %43 = load i32, ptr %quantized, align 4
  %44 = load i32, ptr %quantized, align 4
  %mul29 = mul nsw i32 %43, %44
  %conv30 = sext i32 %mul29 to i64
  %45 = load i64, ptr %y2b, align 8
  %add31 = add nsw i64 %45, %conv30
  store i64 %add31, ptr %y2b, align 8
  %46 = load i64, ptr %i, align 8
  %47 = load i32, ptr %quantized, align 4
  %conv32 = sext i32 %47 to i64
  %mul33 = mul nsw i64 %46, %conv32
  %48 = load i64, ptr %xyb, align 8
  %add34 = add nsw i64 %48, %mul33
  store i64 %add34, ptr %xyb, align 8
  %49 = load i64, ptr %nb, align 8
  %inc35 = add nsw i64 %49, 1
  store i64 %inc35, ptr %nb, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then13
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %50 = load i64, ptr %i, align 8
  %inc38 = add nsw i64 %50, 1
  store i64 %inc38, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %51 = load i64, ptr %xa, align 8
  %52 = load i64, ptr %xb, align 8
  %add39 = add nsw i64 %52, %51
  store i64 %add39, ptr %xb, align 8
  %53 = load i64, ptr %ya, align 8
  %54 = load i64, ptr %yb, align 8
  %add40 = add nsw i64 %54, %53
  store i64 %add40, ptr %yb, align 8
  %55 = load i64, ptr %x2a, align 8
  %56 = load i64, ptr %x2b, align 8
  %add41 = add nsw i64 %56, %55
  store i64 %add41, ptr %x2b, align 8
  %57 = load i64, ptr %y2a, align 8
  %58 = load i64, ptr %y2b, align 8
  %add42 = add nsw i64 %58, %57
  store i64 %add42, ptr %y2b, align 8
  %59 = load i64, ptr %xya, align 8
  %60 = load i64, ptr %xyb, align 8
  %add43 = add nsw i64 %60, %59
  store i64 %add43, ptr %xyb, align 8
  %61 = load i64, ptr %na, align 8
  %62 = load i64, ptr %nb, align 8
  %add44 = add nsw i64 %62, %61
  store i64 %add44, ptr %nb, align 8
  %63 = load i64, ptr %nb, align 8
  %conv45 = sitofp i64 %63 to float
  %64 = load ptr, ptr %info.addr, align 8
  %twofitweight = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %64, i32 0, i32 11
  %65 = load float, ptr %twofitweight, align 4
  %mul46 = fmul float %conv45, %65
  %66 = load i64, ptr %na, align 8
  %add47 = add nsw i64 %66, 1
  %conv48 = sitofp i64 %add47 to float
  %div = fdiv float %mul46, %conv48
  %conv49 = fptosi float %div to i32
  store i32 %conv49, ptr %weight, align 4
  %67 = load i64, ptr %xa, align 8
  %68 = load i32, ptr %weight, align 4
  %conv50 = sext i32 %68 to i64
  %mul51 = mul nsw i64 %67, %conv50
  %69 = load i64, ptr %xb, align 8
  %add52 = add nsw i64 %mul51, %69
  %70 = load ptr, ptr %a.addr, align 8
  %xa53 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %70, i32 0, i32 2
  store i64 %add52, ptr %xa53, align 8
  %71 = load i64, ptr %ya, align 8
  %72 = load i32, ptr %weight, align 4
  %conv54 = sext i32 %72 to i64
  %mul55 = mul nsw i64 %71, %conv54
  %73 = load i64, ptr %yb, align 8
  %add56 = add nsw i64 %mul55, %73
  %74 = load ptr, ptr %a.addr, align 8
  %ya57 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %74, i32 0, i32 3
  store i64 %add56, ptr %ya57, align 8
  %75 = load i64, ptr %x2a, align 8
  %76 = load i32, ptr %weight, align 4
  %conv58 = sext i32 %76 to i64
  %mul59 = mul nsw i64 %75, %conv58
  %77 = load i64, ptr %x2b, align 8
  %add60 = add nsw i64 %mul59, %77
  %78 = load ptr, ptr %a.addr, align 8
  %x2a61 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %78, i32 0, i32 4
  store i64 %add60, ptr %x2a61, align 8
  %79 = load i64, ptr %y2a, align 8
  %80 = load i32, ptr %weight, align 4
  %conv62 = sext i32 %80 to i64
  %mul63 = mul nsw i64 %79, %conv62
  %81 = load i64, ptr %y2b, align 8
  %add64 = add nsw i64 %mul63, %81
  %82 = load ptr, ptr %a.addr, align 8
  %y2a65 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %82, i32 0, i32 5
  store i64 %add64, ptr %y2a65, align 8
  %83 = load i64, ptr %xya, align 8
  %84 = load i32, ptr %weight, align 4
  %conv66 = sext i32 %84 to i64
  %mul67 = mul nsw i64 %83, %conv66
  %85 = load i64, ptr %xyb, align 8
  %add68 = add nsw i64 %mul67, %85
  %86 = load ptr, ptr %a.addr, align 8
  %xya69 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %86, i32 0, i32 6
  store i64 %add68, ptr %xya69, align 8
  %87 = load i64, ptr %na, align 8
  %88 = load i32, ptr %weight, align 4
  %conv70 = sext i32 %88 to i64
  %mul71 = mul nsw i64 %87, %conv70
  %89 = load i64, ptr %nb, align 8
  %add72 = add nsw i64 %mul71, %89
  %90 = load ptr, ptr %a.addr, align 8
  %an = getelementptr inbounds nuw %struct.lsfit_acc, ptr %90, i32 0, i32 7
  store i64 %add72, ptr %an, align 8
  %91 = load i64, ptr %na, align 8
  %conv73 = trunc i64 %91 to i32
  ret i32 %conv73
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vorbis_dBquant(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
