; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @dradf2(i32 noundef %ido, i32 noundef %l1, ptr noundef %cc, ptr noundef %ch, ptr noundef %wa1) #1 {
entry:
  %ido.addr = alloca i32, align 4
  %l1.addr = alloca i32, align 4
  %cc.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  %wa1.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %ti2 = alloca float, align 4
  %tr2 = alloca float, align 4
  %t0 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %t4 = alloca i32, align 4
  %t5 = alloca i32, align 4
  %t6 = alloca i32, align 4
  store i32 %ido, ptr %ido.addr, align 4
  store i32 %l1, ptr %l1.addr, align 4
  store ptr %cc, ptr %cc.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  store ptr %wa1, ptr %wa1.addr, align 8
  store i32 0, ptr %t1, align 4
  %0 = load i32, ptr %l1.addr, align 4
  %1 = load i32, ptr %ido.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, ptr %t2, align 4
  store i32 %mul, ptr %t0, align 4
  %2 = load i32, ptr %ido.addr, align 4
  %shl = shl i32 %2, 1
  store i32 %shl, ptr %t3, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %k, align 4
  %4 = load i32, ptr %l1.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cc.addr, align 8
  %6 = load i32, ptr %t1, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds float, ptr %5, i64 %idxprom
  %7 = load float, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cc.addr, align 8
  %9 = load i32, ptr %t2, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds float, ptr %8, i64 %idxprom1
  %10 = load float, ptr %arrayidx2, align 4
  %add = fadd float %7, %10
  %11 = load ptr, ptr %ch.addr, align 8
  %12 = load i32, ptr %t1, align 4
  %shl3 = shl i32 %12, 1
  %idxprom4 = sext i32 %shl3 to i64
  %arrayidx5 = getelementptr inbounds float, ptr %11, i64 %idxprom4
  store float %add, ptr %arrayidx5, align 4
  %13 = load ptr, ptr %cc.addr, align 8
  %14 = load i32, ptr %t1, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %13, i64 %idxprom6
  %15 = load float, ptr %arrayidx7, align 4
  %16 = load ptr, ptr %cc.addr, align 8
  %17 = load i32, ptr %t2, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds float, ptr %16, i64 %idxprom8
  %18 = load float, ptr %arrayidx9, align 4
  %sub = fsub float %15, %18
  %19 = load ptr, ptr %ch.addr, align 8
  %20 = load i32, ptr %t1, align 4
  %shl10 = shl i32 %20, 1
  %21 = load i32, ptr %t3, align 4
  %add11 = add nsw i32 %shl10, %21
  %sub12 = sub nsw i32 %add11, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds float, ptr %19, i64 %idxprom13
  store float %sub, ptr %arrayidx14, align 4
  %22 = load i32, ptr %ido.addr, align 4
  %23 = load i32, ptr %t1, align 4
  %add15 = add nsw i32 %23, %22
  store i32 %add15, ptr %t1, align 4
  %24 = load i32, ptr %ido.addr, align 4
  %25 = load i32, ptr %t2, align 4
  %add16 = add nsw i32 %25, %24
  store i32 %add16, ptr %t2, align 4
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
  br label %for.end116

if.end:                                           ; preds = %for.end
  %28 = load i32, ptr %ido.addr, align 4
  %cmp18 = icmp eq i32 %28, 2
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  br label %L105

if.end20:                                         ; preds = %if.end
  store i32 0, ptr %t1, align 4
  %29 = load i32, ptr %t0, align 4
  store i32 %29, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc90, %if.end20
  %30 = load i32, ptr %k, align 4
  %31 = load i32, ptr %l1.addr, align 4
  %cmp22 = icmp slt i32 %30, %31
  br i1 %cmp22, label %for.body23, label %for.end92

for.body23:                                       ; preds = %for.cond21
  %32 = load i32, ptr %t2, align 4
  store i32 %32, ptr %t3, align 4
  %33 = load i32, ptr %t1, align 4
  %shl24 = shl i32 %33, 1
  %34 = load i32, ptr %ido.addr, align 4
  %shl25 = shl i32 %34, 1
  %add26 = add nsw i32 %shl24, %shl25
  store i32 %add26, ptr %t4, align 4
  %35 = load i32, ptr %t1, align 4
  store i32 %35, ptr %t5, align 4
  %36 = load i32, ptr %t1, align 4
  %37 = load i32, ptr %t1, align 4
  %add27 = add nsw i32 %36, %37
  store i32 %add27, ptr %t6, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc85, %for.body23
  %38 = load i32, ptr %i, align 4
  %39 = load i32, ptr %ido.addr, align 4
  %cmp29 = icmp slt i32 %38, %39
  br i1 %cmp29, label %for.body30, label %for.end87

for.body30:                                       ; preds = %for.cond28
  %40 = load i32, ptr %t3, align 4
  %add31 = add nsw i32 %40, 2
  store i32 %add31, ptr %t3, align 4
  %41 = load i32, ptr %t4, align 4
  %sub32 = sub nsw i32 %41, 2
  store i32 %sub32, ptr %t4, align 4
  %42 = load i32, ptr %t5, align 4
  %add33 = add nsw i32 %42, 2
  store i32 %add33, ptr %t5, align 4
  %43 = load i32, ptr %t6, align 4
  %add34 = add nsw i32 %43, 2
  store i32 %add34, ptr %t6, align 4
  %44 = load ptr, ptr %wa1.addr, align 8
  %45 = load i32, ptr %i, align 4
  %sub35 = sub nsw i32 %45, 2
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %44, i64 %idxprom36
  %46 = load float, ptr %arrayidx37, align 4
  %47 = load ptr, ptr %cc.addr, align 8
  %48 = load i32, ptr %t3, align 4
  %sub38 = sub nsw i32 %48, 1
  %idxprom39 = sext i32 %sub38 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %47, i64 %idxprom39
  %49 = load float, ptr %arrayidx40, align 4
  %50 = load ptr, ptr %wa1.addr, align 8
  %51 = load i32, ptr %i, align 4
  %sub42 = sub nsw i32 %51, 1
  %idxprom43 = sext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds float, ptr %50, i64 %idxprom43
  %52 = load float, ptr %arrayidx44, align 4
  %53 = load ptr, ptr %cc.addr, align 8
  %54 = load i32, ptr %t3, align 4
  %idxprom45 = sext i32 %54 to i64
  %arrayidx46 = getelementptr inbounds float, ptr %53, i64 %idxprom45
  %55 = load float, ptr %arrayidx46, align 4
  %mul47 = fmul float %52, %55
  %56 = call float @llvm.fmuladd.f32(float %46, float %49, float %mul47)
  store float %56, ptr %tr2, align 4
  %57 = load ptr, ptr %wa1.addr, align 8
  %58 = load i32, ptr %i, align 4
  %sub48 = sub nsw i32 %58, 2
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds float, ptr %57, i64 %idxprom49
  %59 = load float, ptr %arrayidx50, align 4
  %60 = load ptr, ptr %cc.addr, align 8
  %61 = load i32, ptr %t3, align 4
  %idxprom51 = sext i32 %61 to i64
  %arrayidx52 = getelementptr inbounds float, ptr %60, i64 %idxprom51
  %62 = load float, ptr %arrayidx52, align 4
  %63 = load ptr, ptr %wa1.addr, align 8
  %64 = load i32, ptr %i, align 4
  %sub54 = sub nsw i32 %64, 1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds float, ptr %63, i64 %idxprom55
  %65 = load float, ptr %arrayidx56, align 4
  %66 = load ptr, ptr %cc.addr, align 8
  %67 = load i32, ptr %t3, align 4
  %sub57 = sub nsw i32 %67, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds float, ptr %66, i64 %idxprom58
  %68 = load float, ptr %arrayidx59, align 4
  %mul60 = fmul float %65, %68
  %neg = fneg float %mul60
  %69 = call float @llvm.fmuladd.f32(float %59, float %62, float %neg)
  store float %69, ptr %ti2, align 4
  %70 = load ptr, ptr %cc.addr, align 8
  %71 = load i32, ptr %t5, align 4
  %idxprom61 = sext i32 %71 to i64
  %arrayidx62 = getelementptr inbounds float, ptr %70, i64 %idxprom61
  %72 = load float, ptr %arrayidx62, align 4
  %73 = load float, ptr %ti2, align 4
  %add63 = fadd float %72, %73
  %74 = load ptr, ptr %ch.addr, align 8
  %75 = load i32, ptr %t6, align 4
  %idxprom64 = sext i32 %75 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %74, i64 %idxprom64
  store float %add63, ptr %arrayidx65, align 4
  %76 = load float, ptr %ti2, align 4
  %77 = load ptr, ptr %cc.addr, align 8
  %78 = load i32, ptr %t5, align 4
  %idxprom66 = sext i32 %78 to i64
  %arrayidx67 = getelementptr inbounds float, ptr %77, i64 %idxprom66
  %79 = load float, ptr %arrayidx67, align 4
  %sub68 = fsub float %76, %79
  %80 = load ptr, ptr %ch.addr, align 8
  %81 = load i32, ptr %t4, align 4
  %idxprom69 = sext i32 %81 to i64
  %arrayidx70 = getelementptr inbounds float, ptr %80, i64 %idxprom69
  store float %sub68, ptr %arrayidx70, align 4
  %82 = load ptr, ptr %cc.addr, align 8
  %83 = load i32, ptr %t5, align 4
  %sub71 = sub nsw i32 %83, 1
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds float, ptr %82, i64 %idxprom72
  %84 = load float, ptr %arrayidx73, align 4
  %85 = load float, ptr %tr2, align 4
  %add74 = fadd float %84, %85
  %86 = load ptr, ptr %ch.addr, align 8
  %87 = load i32, ptr %t6, align 4
  %sub75 = sub nsw i32 %87, 1
  %idxprom76 = sext i32 %sub75 to i64
  %arrayidx77 = getelementptr inbounds float, ptr %86, i64 %idxprom76
  store float %add74, ptr %arrayidx77, align 4
  %88 = load ptr, ptr %cc.addr, align 8
  %89 = load i32, ptr %t5, align 4
  %sub78 = sub nsw i32 %89, 1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds float, ptr %88, i64 %idxprom79
  %90 = load float, ptr %arrayidx80, align 4
  %91 = load float, ptr %tr2, align 4
  %sub81 = fsub float %90, %91
  %92 = load ptr, ptr %ch.addr, align 8
  %93 = load i32, ptr %t4, align 4
  %sub82 = sub nsw i32 %93, 1
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds float, ptr %92, i64 %idxprom83
  store float %sub81, ptr %arrayidx84, align 4
  br label %for.inc85

for.inc85:                                        ; preds = %for.body30
  %94 = load i32, ptr %i, align 4
  %add86 = add nsw i32 %94, 2
  store i32 %add86, ptr %i, align 4
  br label %for.cond28, !llvm.loop !8

for.end87:                                        ; preds = %for.cond28
  %95 = load i32, ptr %ido.addr, align 4
  %96 = load i32, ptr %t1, align 4
  %add88 = add nsw i32 %96, %95
  store i32 %add88, ptr %t1, align 4
  %97 = load i32, ptr %ido.addr, align 4
  %98 = load i32, ptr %t2, align 4
  %add89 = add nsw i32 %98, %97
  store i32 %add89, ptr %t2, align 4
  br label %for.inc90

for.inc90:                                        ; preds = %for.end87
  %99 = load i32, ptr %k, align 4
  %inc91 = add nsw i32 %99, 1
  store i32 %inc91, ptr %k, align 4
  br label %for.cond21, !llvm.loop !9

for.end92:                                        ; preds = %for.cond21
  %100 = load i32, ptr %ido.addr, align 4
  %rem = srem i32 %100, 2
  %cmp93 = icmp eq i32 %rem, 1
  br i1 %cmp93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %for.end92
  br label %for.end116

if.end95:                                         ; preds = %for.end92
  br label %L105

L105:                                             ; preds = %if.end95, %if.then19
  %101 = load i32, ptr %ido.addr, align 4
  store i32 %101, ptr %t1, align 4
  %sub96 = sub nsw i32 %101, 1
  store i32 %sub96, ptr %t2, align 4
  store i32 %sub96, ptr %t3, align 4
  %102 = load i32, ptr %t0, align 4
  %103 = load i32, ptr %t2, align 4
  %add97 = add nsw i32 %103, %102
  store i32 %add97, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc114, %L105
  %104 = load i32, ptr %k, align 4
  %105 = load i32, ptr %l1.addr, align 4
  %cmp99 = icmp slt i32 %104, %105
  br i1 %cmp99, label %for.body100, label %for.end116

for.body100:                                      ; preds = %for.cond98
  %106 = load ptr, ptr %cc.addr, align 8
  %107 = load i32, ptr %t2, align 4
  %idxprom101 = sext i32 %107 to i64
  %arrayidx102 = getelementptr inbounds float, ptr %106, i64 %idxprom101
  %108 = load float, ptr %arrayidx102, align 4
  %fneg = fneg float %108
  %109 = load ptr, ptr %ch.addr, align 8
  %110 = load i32, ptr %t1, align 4
  %idxprom103 = sext i32 %110 to i64
  %arrayidx104 = getelementptr inbounds float, ptr %109, i64 %idxprom103
  store float %fneg, ptr %arrayidx104, align 4
  %111 = load ptr, ptr %cc.addr, align 8
  %112 = load i32, ptr %t3, align 4
  %idxprom105 = sext i32 %112 to i64
  %arrayidx106 = getelementptr inbounds float, ptr %111, i64 %idxprom105
  %113 = load float, ptr %arrayidx106, align 4
  %114 = load ptr, ptr %ch.addr, align 8
  %115 = load i32, ptr %t1, align 4
  %sub107 = sub nsw i32 %115, 1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds float, ptr %114, i64 %idxprom108
  store float %113, ptr %arrayidx109, align 4
  %116 = load i32, ptr %ido.addr, align 4
  %shl110 = shl i32 %116, 1
  %117 = load i32, ptr %t1, align 4
  %add111 = add nsw i32 %117, %shl110
  store i32 %add111, ptr %t1, align 4
  %118 = load i32, ptr %ido.addr, align 4
  %119 = load i32, ptr %t2, align 4
  %add112 = add nsw i32 %119, %118
  store i32 %add112, ptr %t2, align 4
  %120 = load i32, ptr %ido.addr, align 4
  %121 = load i32, ptr %t3, align 4
  %add113 = add nsw i32 %121, %120
  store i32 %add113, ptr %t3, align 4
  br label %for.inc114

for.inc114:                                       ; preds = %for.body100
  %122 = load i32, ptr %k, align 4
  %inc115 = add nsw i32 %122, 1
  store i32 %inc115, ptr %k, align 4
  br label %for.cond98, !llvm.loop !10

for.end116:                                       ; preds = %for.cond98, %if.then94, %if.then
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
