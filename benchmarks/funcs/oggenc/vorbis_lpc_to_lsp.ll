; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_lpc_to_lsp(ptr noundef %lpc, ptr noundef %lsp, i32 noundef %m) #1 {
entry:
  %retval = alloca i32, align 4
  %lpc.addr = alloca ptr, align 8
  %lsp.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %order2 = alloca i32, align 4
  %g1_order = alloca i32, align 4
  %g2_order = alloca i32, align 4
  %g1 = alloca ptr, align 8
  %g2 = alloca ptr, align 8
  %g1r = alloca ptr, align 8
  %g2r = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %lpc, ptr %lpc.addr, align 8
  store ptr %lsp, ptr %lsp.addr, align 8
  store i32 %m, ptr %m.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  %add = add nsw i32 %0, 1
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %order2, align 4
  %1 = load i32, ptr %order2, align 4
  %add1 = add nsw i32 %1, 1
  %conv = sext i32 %add1 to i64
  %mul = mul i64 4, %conv
  %2 = alloca i8, i64 %mul, align 16
  store ptr %2, ptr %g1, align 8
  %3 = load i32, ptr %order2, align 4
  %add2 = add nsw i32 %3, 1
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 4, %conv3
  %4 = alloca i8, i64 %mul4, align 16
  store ptr %4, ptr %g2, align 8
  %5 = load i32, ptr %order2, align 4
  %add5 = add nsw i32 %5, 1
  %conv6 = sext i32 %add5 to i64
  %mul7 = mul i64 4, %conv6
  %6 = alloca i8, i64 %mul7, align 16
  store ptr %6, ptr %g1r, align 8
  %7 = load i32, ptr %order2, align 4
  %add8 = add nsw i32 %7, 1
  %conv9 = sext i32 %add8 to i64
  %mul10 = mul i64 4, %conv9
  %8 = alloca i8, i64 %mul10, align 16
  store ptr %8, ptr %g2r, align 8
  %9 = load i32, ptr %m.addr, align 4
  %add11 = add nsw i32 %9, 1
  %shr12 = ashr i32 %add11, 1
  store i32 %shr12, ptr %g1_order, align 4
  %10 = load i32, ptr %m.addr, align 4
  %shr13 = ashr i32 %10, 1
  store i32 %shr13, ptr %g2_order, align 4
  %11 = load ptr, ptr %g1, align 8
  %12 = load i32, ptr %g1_order, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds float, ptr %11, i64 %idxprom
  store float 1.000000e+00, ptr %arrayidx, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %g1_order, align 4
  %cmp = icmp sle i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %lpc.addr, align 8
  %16 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds float, ptr %15, i64 %idxprom15
  %17 = load float, ptr %arrayidx16, align 4
  %18 = load ptr, ptr %lpc.addr, align 8
  %19 = load i32, ptr %m.addr, align 4
  %20 = load i32, ptr %i, align 4
  %sub17 = sub nsw i32 %19, %20
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds float, ptr %18, i64 %idxprom18
  %21 = load float, ptr %arrayidx19, align 4
  %add20 = fadd float %17, %21
  %22 = load ptr, ptr %g1, align 8
  %23 = load i32, ptr %g1_order, align 4
  %24 = load i32, ptr %i, align 4
  %sub21 = sub nsw i32 %23, %24
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds float, ptr %22, i64 %idxprom22
  store float %add20, ptr %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %g2, align 8
  %27 = load i32, ptr %g2_order, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds float, ptr %26, i64 %idxprom24
  store float 1.000000e+00, ptr %arrayidx25, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %for.end
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %g2_order, align 4
  %cmp27 = icmp sle i32 %28, %29
  br i1 %cmp27, label %for.body29, label %for.end42

for.body29:                                       ; preds = %for.cond26
  %30 = load ptr, ptr %lpc.addr, align 8
  %31 = load i32, ptr %i, align 4
  %sub30 = sub nsw i32 %31, 1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %30, i64 %idxprom31
  %32 = load float, ptr %arrayidx32, align 4
  %33 = load ptr, ptr %lpc.addr, align 8
  %34 = load i32, ptr %m.addr, align 4
  %35 = load i32, ptr %i, align 4
  %sub33 = sub nsw i32 %34, %35
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds float, ptr %33, i64 %idxprom34
  %36 = load float, ptr %arrayidx35, align 4
  %sub36 = fsub float %32, %36
  %37 = load ptr, ptr %g2, align 8
  %38 = load i32, ptr %g2_order, align 4
  %39 = load i32, ptr %i, align 4
  %sub37 = sub nsw i32 %38, %39
  %idxprom38 = sext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds float, ptr %37, i64 %idxprom38
  store float %sub36, ptr %arrayidx39, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %for.body29
  %40 = load i32, ptr %i, align 4
  %inc41 = add nsw i32 %40, 1
  store i32 %inc41, ptr %i, align 4
  br label %for.cond26, !llvm.loop !8

for.end42:                                        ; preds = %for.cond26
  %41 = load i32, ptr %g1_order, align 4
  %42 = load i32, ptr %g2_order, align 4
  %cmp43 = icmp sgt i32 %41, %42
  br i1 %cmp43, label %if.then, label %if.else

if.then:                                          ; preds = %for.end42
  store i32 2, ptr %i, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc57, %if.then
  %43 = load i32, ptr %i, align 4
  %44 = load i32, ptr %g2_order, align 4
  %cmp46 = icmp sle i32 %43, %44
  br i1 %cmp46, label %for.body48, label %for.end59

for.body48:                                       ; preds = %for.cond45
  %45 = load ptr, ptr %g2, align 8
  %46 = load i32, ptr %g2_order, align 4
  %47 = load i32, ptr %i, align 4
  %sub49 = sub nsw i32 %46, %47
  %add50 = add nsw i32 %sub49, 2
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds float, ptr %45, i64 %idxprom51
  %48 = load float, ptr %arrayidx52, align 4
  %49 = load ptr, ptr %g2, align 8
  %50 = load i32, ptr %g2_order, align 4
  %51 = load i32, ptr %i, align 4
  %sub53 = sub nsw i32 %50, %51
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds float, ptr %49, i64 %idxprom54
  %52 = load float, ptr %arrayidx55, align 4
  %add56 = fadd float %52, %48
  store float %add56, ptr %arrayidx55, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body48
  %53 = load i32, ptr %i, align 4
  %inc58 = add nsw i32 %53, 1
  store i32 %inc58, ptr %i, align 4
  br label %for.cond45, !llvm.loop !9

for.end59:                                        ; preds = %for.cond45
  br label %if.end

if.else:                                          ; preds = %for.end42
  store i32 1, ptr %i, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %if.else
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %g1_order, align 4
  %cmp61 = icmp sle i32 %54, %55
  br i1 %cmp61, label %for.body63, label %for.end74

for.body63:                                       ; preds = %for.cond60
  %56 = load ptr, ptr %g1, align 8
  %57 = load i32, ptr %g1_order, align 4
  %58 = load i32, ptr %i, align 4
  %sub64 = sub nsw i32 %57, %58
  %add65 = add nsw i32 %sub64, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds float, ptr %56, i64 %idxprom66
  %59 = load float, ptr %arrayidx67, align 4
  %60 = load ptr, ptr %g1, align 8
  %61 = load i32, ptr %g1_order, align 4
  %62 = load i32, ptr %i, align 4
  %sub68 = sub nsw i32 %61, %62
  %idxprom69 = sext i32 %sub68 to i64
  %arrayidx70 = getelementptr inbounds float, ptr %60, i64 %idxprom69
  %63 = load float, ptr %arrayidx70, align 4
  %sub71 = fsub float %63, %59
  store float %sub71, ptr %arrayidx70, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %64 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %64, 1
  store i32 %inc73, ptr %i, align 4
  br label %for.cond60, !llvm.loop !10

for.end74:                                        ; preds = %for.cond60
  store i32 1, ptr %i, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc87, %for.end74
  %65 = load i32, ptr %i, align 4
  %66 = load i32, ptr %g2_order, align 4
  %cmp76 = icmp sle i32 %65, %66
  br i1 %cmp76, label %for.body78, label %for.end89

for.body78:                                       ; preds = %for.cond75
  %67 = load ptr, ptr %g2, align 8
  %68 = load i32, ptr %g2_order, align 4
  %69 = load i32, ptr %i, align 4
  %sub79 = sub nsw i32 %68, %69
  %add80 = add nsw i32 %sub79, 1
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds float, ptr %67, i64 %idxprom81
  %70 = load float, ptr %arrayidx82, align 4
  %71 = load ptr, ptr %g2, align 8
  %72 = load i32, ptr %g2_order, align 4
  %73 = load i32, ptr %i, align 4
  %sub83 = sub nsw i32 %72, %73
  %idxprom84 = sext i32 %sub83 to i64
  %arrayidx85 = getelementptr inbounds float, ptr %71, i64 %idxprom84
  %74 = load float, ptr %arrayidx85, align 4
  %add86 = fadd float %74, %70
  store float %add86, ptr %arrayidx85, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %for.body78
  %75 = load i32, ptr %i, align 4
  %inc88 = add nsw i32 %75, 1
  store i32 %inc88, ptr %i, align 4
  br label %for.cond75, !llvm.loop !11

for.end89:                                        ; preds = %for.cond75
  br label %if.end

if.end:                                           ; preds = %for.end89, %for.end59
  %76 = load ptr, ptr %g1, align 8
  %77 = load i32, ptr %g1_order, align 4
  call void @cheby(ptr noundef %76, i32 noundef %77)
  %78 = load ptr, ptr %g2, align 8
  %79 = load i32, ptr %g2_order, align 4
  call void @cheby(ptr noundef %78, i32 noundef %79)
  %80 = load ptr, ptr %g1, align 8
  %81 = load i32, ptr %g1_order, align 4
  %82 = load ptr, ptr %g1r, align 8
  %call = call i32 @Laguerre_With_Deflation(ptr noundef %80, i32 noundef %81, ptr noundef %82)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %83 = load ptr, ptr %g2, align 8
  %84 = load i32, ptr %g2_order, align 4
  %85 = load ptr, ptr %g2r, align 8
  %call90 = call i32 @Laguerre_With_Deflation(ptr noundef %83, i32 noundef %84, ptr noundef %85)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end93:                                         ; preds = %lor.lhs.false
  %86 = load ptr, ptr %g1, align 8
  %87 = load i32, ptr %g1_order, align 4
  %88 = load ptr, ptr %g1r, align 8
  %call94 = call i32 @Newton_Raphson(ptr noundef %86, i32 noundef %87, ptr noundef %88)
  %89 = load ptr, ptr %g2, align 8
  %90 = load i32, ptr %g2_order, align 4
  %91 = load ptr, ptr %g2r, align 8
  %call95 = call i32 @Newton_Raphson(ptr noundef %89, i32 noundef %90, ptr noundef %91)
  %92 = load ptr, ptr %g1r, align 8
  %93 = load i32, ptr %g1_order, align 4
  %conv96 = sext i32 %93 to i64
  call void @qsort(ptr noundef %92, i64 noundef %conv96, i64 noundef 4, ptr noundef @comp)
  %94 = load ptr, ptr %g2r, align 8
  %95 = load i32, ptr %g2_order, align 4
  %conv97 = sext i32 %95 to i64
  call void @qsort(ptr noundef %94, i64 noundef %conv97, i64 noundef 4, ptr noundef @comp)
  store i32 0, ptr %i, align 4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc110, %if.end93
  %96 = load i32, ptr %i, align 4
  %97 = load i32, ptr %g1_order, align 4
  %cmp99 = icmp slt i32 %96, %97
  br i1 %cmp99, label %for.body101, label %for.end112

for.body101:                                      ; preds = %for.cond98
  %98 = load ptr, ptr %g1r, align 8
  %99 = load i32, ptr %i, align 4
  %idxprom102 = sext i32 %99 to i64
  %arrayidx103 = getelementptr inbounds float, ptr %98, i64 %idxprom102
  %100 = load float, ptr %arrayidx103, align 4
  %conv104 = fpext float %100 to double
  %call105 = call double @acos(double noundef %conv104) #3
  %conv106 = fptrunc double %call105 to float
  %101 = load ptr, ptr %lsp.addr, align 8
  %102 = load i32, ptr %i, align 4
  %mul107 = mul nsw i32 %102, 2
  %idxprom108 = sext i32 %mul107 to i64
  %arrayidx109 = getelementptr inbounds float, ptr %101, i64 %idxprom108
  store float %conv106, ptr %arrayidx109, align 4
  br label %for.inc110

for.inc110:                                       ; preds = %for.body101
  %103 = load i32, ptr %i, align 4
  %inc111 = add nsw i32 %103, 1
  store i32 %inc111, ptr %i, align 4
  br label %for.cond98, !llvm.loop !12

for.end112:                                       ; preds = %for.cond98
  store i32 0, ptr %i, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc126, %for.end112
  %104 = load i32, ptr %i, align 4
  %105 = load i32, ptr %g2_order, align 4
  %cmp114 = icmp slt i32 %104, %105
  br i1 %cmp114, label %for.body116, label %for.end128

for.body116:                                      ; preds = %for.cond113
  %106 = load ptr, ptr %g2r, align 8
  %107 = load i32, ptr %i, align 4
  %idxprom117 = sext i32 %107 to i64
  %arrayidx118 = getelementptr inbounds float, ptr %106, i64 %idxprom117
  %108 = load float, ptr %arrayidx118, align 4
  %conv119 = fpext float %108 to double
  %call120 = call double @acos(double noundef %conv119) #3
  %conv121 = fptrunc double %call120 to float
  %109 = load ptr, ptr %lsp.addr, align 8
  %110 = load i32, ptr %i, align 4
  %mul122 = mul nsw i32 %110, 2
  %add123 = add nsw i32 %mul122, 1
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds float, ptr %109, i64 %idxprom124
  store float %conv121, ptr %arrayidx125, align 4
  br label %for.inc126

for.inc126:                                       ; preds = %for.body116
  %111 = load i32, ptr %i, align 4
  %inc127 = add nsw i32 %111, 1
  store i32 %inc127, ptr %i, align 4
  br label %for.cond113, !llvm.loop !13

for.end128:                                       ; preds = %for.cond113
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end128, %if.then92
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

; Function Attrs: nounwind uwtable
declare hidden void @cheby(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @Laguerre_With_Deflation(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @Newton_Raphson(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @comp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @acos(double noundef) #2

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
