; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @dradb2(i32 noundef %ido, i32 noundef %l1, ptr noundef %cc, ptr noundef %ch, ptr noundef %wa1) #1 {
entry:
  %ido.addr = alloca i32, align 4
  %l1.addr = alloca i32, align 4
  %cc.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  %wa1.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %t0 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %t4 = alloca i32, align 4
  %t5 = alloca i32, align 4
  %t6 = alloca i32, align 4
  %ti2 = alloca float, align 4
  %tr2 = alloca float, align 4
  store i32 %ido, ptr %ido.addr, align 4
  store i32 %l1, ptr %l1.addr, align 4
  store ptr %cc, ptr %cc.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  store ptr %wa1, ptr %wa1.addr, align 8
  %0 = load i32, ptr %l1.addr, align 4
  %1 = load i32, ptr %ido.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, ptr %t0, align 4
  store i32 0, ptr %t1, align 4
  store i32 0, ptr %t2, align 4
  %2 = load i32, ptr %ido.addr, align 4
  %shl = shl i32 %2, 1
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, ptr %t3, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %k, align 4
  %4 = load i32, ptr %l1.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cc.addr, align 8
  %6 = load i32, ptr %t2, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, ptr %5, i64 %idxprom
  %7 = load float, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cc.addr, align 8
  %9 = load i32, ptr %t3, align 4
  %10 = load i32, ptr %t2, align 4
  %add = add nsw i32 %9, %10
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds float, ptr %8, i64 %idxprom1
  %11 = load float, ptr %arrayidx2, align 4
  %add3 = fadd float %7, %11
  %12 = load ptr, ptr %ch.addr, align 8
  %13 = load i32, ptr %t1, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds float, ptr %12, i64 %idxprom4
  store float %add3, ptr %arrayidx5, align 4
  %14 = load ptr, ptr %cc.addr, align 8
  %15 = load i32, ptr %t2, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %14, i64 %idxprom6
  %16 = load float, ptr %arrayidx7, align 4
  %17 = load ptr, ptr %cc.addr, align 8
  %18 = load i32, ptr %t3, align 4
  %19 = load i32, ptr %t2, align 4
  %add8 = add nsw i32 %18, %19
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds float, ptr %17, i64 %idxprom9
  %20 = load float, ptr %arrayidx10, align 4
  %sub11 = fsub float %16, %20
  %21 = load ptr, ptr %ch.addr, align 8
  %22 = load i32, ptr %t1, align 4
  %23 = load i32, ptr %t0, align 4
  %add12 = add nsw i32 %22, %23
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds float, ptr %21, i64 %idxprom13
  store float %sub11, ptr %arrayidx14, align 4
  %24 = load i32, ptr %ido.addr, align 4
  %25 = load i32, ptr %t1, align 4
  %add15 = add nsw i32 %25, %24
  store i32 %add15, ptr %t1, align 4
  %shl16 = shl i32 %add15, 1
  store i32 %shl16, ptr %t2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %ido.addr, align 4
  %cmp17 = icmp slt i32 %27, 2
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %for.end122

if.end:                                           ; preds = %for.end
  %28 = load i32, ptr %ido.addr, align 4
  %cmp18 = icmp eq i32 %28, 2
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  br label %L105

if.end20:                                         ; preds = %if.end
  store i32 0, ptr %t1, align 4
  store i32 0, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc89, %if.end20
  %29 = load i32, ptr %k, align 4
  %30 = load i32, ptr %l1.addr, align 4
  %cmp22 = icmp slt i32 %29, %30
  br i1 %cmp22, label %for.body23, label %for.end91

for.body23:                                       ; preds = %for.cond21
  %31 = load i32, ptr %t1, align 4
  store i32 %31, ptr %t3, align 4
  %32 = load i32, ptr %t2, align 4
  store i32 %32, ptr %t4, align 4
  %33 = load i32, ptr %ido.addr, align 4
  %shl24 = shl i32 %33, 1
  %add25 = add nsw i32 %32, %shl24
  store i32 %add25, ptr %t5, align 4
  %34 = load i32, ptr %t0, align 4
  %35 = load i32, ptr %t1, align 4
  %add26 = add nsw i32 %34, %35
  store i32 %add26, ptr %t6, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc84, %for.body23
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %ido.addr, align 4
  %cmp28 = icmp slt i32 %36, %37
  br i1 %cmp28, label %for.body29, label %for.end86

for.body29:                                       ; preds = %for.cond27
  %38 = load i32, ptr %t3, align 4
  %add30 = add nsw i32 %38, 2
  store i32 %add30, ptr %t3, align 4
  %39 = load i32, ptr %t4, align 4
  %add31 = add nsw i32 %39, 2
  store i32 %add31, ptr %t4, align 4
  %40 = load i32, ptr %t5, align 4
  %sub32 = sub nsw i32 %40, 2
  store i32 %sub32, ptr %t5, align 4
  %41 = load i32, ptr %t6, align 4
  %add33 = add nsw i32 %41, 2
  store i32 %add33, ptr %t6, align 4
  %42 = load ptr, ptr %cc.addr, align 8
  %43 = load i32, ptr %t4, align 4
  %sub34 = sub nsw i32 %43, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds float, ptr %42, i64 %idxprom35
  %44 = load float, ptr %arrayidx36, align 4
  %45 = load ptr, ptr %cc.addr, align 8
  %46 = load i32, ptr %t5, align 4
  %sub37 = sub nsw i32 %46, 1
  %idxprom38 = sext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds float, ptr %45, i64 %idxprom38
  %47 = load float, ptr %arrayidx39, align 4
  %add40 = fadd float %44, %47
  %48 = load ptr, ptr %ch.addr, align 8
  %49 = load i32, ptr %t3, align 4
  %sub41 = sub nsw i32 %49, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %48, i64 %idxprom42
  store float %add40, ptr %arrayidx43, align 4
  %50 = load ptr, ptr %cc.addr, align 8
  %51 = load i32, ptr %t4, align 4
  %sub44 = sub nsw i32 %51, 1
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds float, ptr %50, i64 %idxprom45
  %52 = load float, ptr %arrayidx46, align 4
  %53 = load ptr, ptr %cc.addr, align 8
  %54 = load i32, ptr %t5, align 4
  %sub47 = sub nsw i32 %54, 1
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds float, ptr %53, i64 %idxprom48
  %55 = load float, ptr %arrayidx49, align 4
  %sub50 = fsub float %52, %55
  store float %sub50, ptr %tr2, align 4
  %56 = load ptr, ptr %cc.addr, align 8
  %57 = load i32, ptr %t4, align 4
  %idxprom51 = sext i32 %57 to i64
  %arrayidx52 = getelementptr inbounds float, ptr %56, i64 %idxprom51
  %58 = load float, ptr %arrayidx52, align 4
  %59 = load ptr, ptr %cc.addr, align 8
  %60 = load i32, ptr %t5, align 4
  %idxprom53 = sext i32 %60 to i64
  %arrayidx54 = getelementptr inbounds float, ptr %59, i64 %idxprom53
  %61 = load float, ptr %arrayidx54, align 4
  %sub55 = fsub float %58, %61
  %62 = load ptr, ptr %ch.addr, align 8
  %63 = load i32, ptr %t3, align 4
  %idxprom56 = sext i32 %63 to i64
  %arrayidx57 = getelementptr inbounds float, ptr %62, i64 %idxprom56
  store float %sub55, ptr %arrayidx57, align 4
  %64 = load ptr, ptr %cc.addr, align 8
  %65 = load i32, ptr %t4, align 4
  %idxprom58 = sext i32 %65 to i64
  %arrayidx59 = getelementptr inbounds float, ptr %64, i64 %idxprom58
  %66 = load float, ptr %arrayidx59, align 4
  %67 = load ptr, ptr %cc.addr, align 8
  %68 = load i32, ptr %t5, align 4
  %idxprom60 = sext i32 %68 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %67, i64 %idxprom60
  %69 = load float, ptr %arrayidx61, align 4
  %add62 = fadd float %66, %69
  store float %add62, ptr %ti2, align 4
  %70 = load ptr, ptr %wa1.addr, align 8
  %71 = load i32, ptr %i, align 4
  %sub63 = sub nsw i32 %71, 2
  %idxprom64 = sext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %70, i64 %idxprom64
  %72 = load float, ptr %arrayidx65, align 4
  %73 = load float, ptr %tr2, align 4
  %74 = load ptr, ptr %wa1.addr, align 8
  %75 = load i32, ptr %i, align 4
  %sub67 = sub nsw i32 %75, 1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds float, ptr %74, i64 %idxprom68
  %76 = load float, ptr %arrayidx69, align 4
  %77 = load float, ptr %ti2, align 4
  %mul70 = fmul float %76, %77
  %neg = fneg float %mul70
  %78 = call float @llvm.fmuladd.f32(float %72, float %73, float %neg)
  %79 = load ptr, ptr %ch.addr, align 8
  %80 = load i32, ptr %t6, align 4
  %sub71 = sub nsw i32 %80, 1
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds float, ptr %79, i64 %idxprom72
  store float %78, ptr %arrayidx73, align 4
  %81 = load ptr, ptr %wa1.addr, align 8
  %82 = load i32, ptr %i, align 4
  %sub74 = sub nsw i32 %82, 2
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds float, ptr %81, i64 %idxprom75
  %83 = load float, ptr %arrayidx76, align 4
  %84 = load float, ptr %ti2, align 4
  %85 = load ptr, ptr %wa1.addr, align 8
  %86 = load i32, ptr %i, align 4
  %sub78 = sub nsw i32 %86, 1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds float, ptr %85, i64 %idxprom79
  %87 = load float, ptr %arrayidx80, align 4
  %88 = load float, ptr %tr2, align 4
  %mul81 = fmul float %87, %88
  %89 = call float @llvm.fmuladd.f32(float %83, float %84, float %mul81)
  %90 = load ptr, ptr %ch.addr, align 8
  %91 = load i32, ptr %t6, align 4
  %idxprom82 = sext i32 %91 to i64
  %arrayidx83 = getelementptr inbounds float, ptr %90, i64 %idxprom82
  store float %89, ptr %arrayidx83, align 4
  br label %for.inc84

for.inc84:                                        ; preds = %for.body29
  %92 = load i32, ptr %i, align 4
  %add85 = add nsw i32 %92, 2
  store i32 %add85, ptr %i, align 4
  br label %for.cond27, !llvm.loop !8

for.end86:                                        ; preds = %for.cond27
  %93 = load i32, ptr %ido.addr, align 4
  %94 = load i32, ptr %t1, align 4
  %add87 = add nsw i32 %94, %93
  store i32 %add87, ptr %t1, align 4
  %shl88 = shl i32 %add87, 1
  store i32 %shl88, ptr %t2, align 4
  br label %for.inc89

for.inc89:                                        ; preds = %for.end86
  %95 = load i32, ptr %k, align 4
  %inc90 = add nsw i32 %95, 1
  store i32 %inc90, ptr %k, align 4
  br label %for.cond21, !llvm.loop !9

for.end91:                                        ; preds = %for.cond21
  %96 = load i32, ptr %ido.addr, align 4
  %rem = srem i32 %96, 2
  %cmp92 = icmp eq i32 %rem, 1
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %for.end91
  br label %for.end122

if.end94:                                         ; preds = %for.end91
  br label %L105

L105:                                             ; preds = %if.end94, %if.then19
  %97 = load i32, ptr %ido.addr, align 4
  %sub95 = sub nsw i32 %97, 1
  store i32 %sub95, ptr %t1, align 4
  %98 = load i32, ptr %ido.addr, align 4
  %sub96 = sub nsw i32 %98, 1
  store i32 %sub96, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc120, %L105
  %99 = load i32, ptr %k, align 4
  %100 = load i32, ptr %l1.addr, align 4
  %cmp98 = icmp slt i32 %99, %100
  br i1 %cmp98, label %for.body99, label %for.end122

for.body99:                                       ; preds = %for.cond97
  %101 = load ptr, ptr %cc.addr, align 8
  %102 = load i32, ptr %t2, align 4
  %idxprom100 = sext i32 %102 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %101, i64 %idxprom100
  %103 = load float, ptr %arrayidx101, align 4
  %104 = load ptr, ptr %cc.addr, align 8
  %105 = load i32, ptr %t2, align 4
  %idxprom102 = sext i32 %105 to i64
  %arrayidx103 = getelementptr inbounds float, ptr %104, i64 %idxprom102
  %106 = load float, ptr %arrayidx103, align 4
  %add104 = fadd float %103, %106
  %107 = load ptr, ptr %ch.addr, align 8
  %108 = load i32, ptr %t1, align 4
  %idxprom105 = sext i32 %108 to i64
  %arrayidx106 = getelementptr inbounds float, ptr %107, i64 %idxprom105
  store float %add104, ptr %arrayidx106, align 4
  %109 = load ptr, ptr %cc.addr, align 8
  %110 = load i32, ptr %t2, align 4
  %add107 = add nsw i32 %110, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds float, ptr %109, i64 %idxprom108
  %111 = load float, ptr %arrayidx109, align 4
  %112 = load ptr, ptr %cc.addr, align 8
  %113 = load i32, ptr %t2, align 4
  %add110 = add nsw i32 %113, 1
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds float, ptr %112, i64 %idxprom111
  %114 = load float, ptr %arrayidx112, align 4
  %add113 = fadd float %111, %114
  %fneg = fneg float %add113
  %115 = load ptr, ptr %ch.addr, align 8
  %116 = load i32, ptr %t1, align 4
  %117 = load i32, ptr %t0, align 4
  %add114 = add nsw i32 %116, %117
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds float, ptr %115, i64 %idxprom115
  store float %fneg, ptr %arrayidx116, align 4
  %118 = load i32, ptr %ido.addr, align 4
  %119 = load i32, ptr %t1, align 4
  %add117 = add nsw i32 %119, %118
  store i32 %add117, ptr %t1, align 4
  %120 = load i32, ptr %ido.addr, align 4
  %shl118 = shl i32 %120, 1
  %121 = load i32, ptr %t2, align 4
  %add119 = add nsw i32 %121, %shl118
  store i32 %add119, ptr %t2, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %for.body99
  %122 = load i32, ptr %k, align 4
  %inc121 = add nsw i32 %122, 1
  store i32 %inc121, ptr %k, align 4
  br label %for.cond97, !llvm.loop !10

for.end122:                                       ; preds = %for.cond97, %if.then93, %if.then
  ret void
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
