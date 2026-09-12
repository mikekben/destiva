; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @seed_chase(ptr noundef %seeds, i32 noundef %linesper, i64 noundef %n) #0 {
entry:
  %seeds.addr = alloca ptr, align 8
  %linesper.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %posstack = alloca ptr, align 8
  %ampstack = alloca ptr, align 8
  %stack = alloca i64, align 8
  %pos = alloca i64, align 8
  %i = alloca i64, align 8
  %endpos = alloca i64, align 8
  store ptr %seeds, ptr %seeds.addr, align 8
  store i32 %linesper, ptr %linesper.addr, align 4
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %mul = mul i64 %0, 8
  %1 = alloca i8, i64 %mul, align 16
  store ptr %1, ptr %posstack, align 8
  %2 = load i64, ptr %n.addr, align 8
  %mul1 = mul i64 %2, 4
  %3 = alloca i8, i64 %mul1, align 16
  store ptr %3, ptr %ampstack, align 8
  store i64 0, ptr %stack, align 8
  store i64 0, ptr %pos, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %i, align 8
  %5 = load i64, ptr %n.addr, align 8
  %cmp = icmp slt i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %stack, align 8
  %cmp2 = icmp slt i64 %6, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8
  %8 = load ptr, ptr %posstack, align 8
  %9 = load i64, ptr %stack, align 8
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %9
  store i64 %7, ptr %arrayidx, align 8
  %10 = load ptr, ptr %seeds.addr, align 8
  %11 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds float, ptr %10, i64 %11
  %12 = load float, ptr %arrayidx3, align 4
  %13 = load ptr, ptr %ampstack, align 8
  %14 = load i64, ptr %stack, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %stack, align 8
  %arrayidx4 = getelementptr inbounds float, ptr %13, i64 %14
  store float %12, ptr %arrayidx4, align 4
  br label %if.end40

if.else:                                          ; preds = %for.body
  br label %while.body

while.body:                                       ; preds = %if.then34, %if.else
  %15 = load ptr, ptr %seeds.addr, align 8
  %16 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %15, i64 %16
  %17 = load float, ptr %arrayidx5, align 4
  %18 = load ptr, ptr %ampstack, align 8
  %19 = load i64, ptr %stack, align 8
  %sub = sub nsw i64 %19, 1
  %arrayidx6 = getelementptr inbounds float, ptr %18, i64 %sub
  %20 = load float, ptr %arrayidx6, align 4
  %cmp7 = fcmp olt float %17, %20
  br i1 %cmp7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %while.body
  %21 = load i64, ptr %i, align 8
  %22 = load ptr, ptr %posstack, align 8
  %23 = load i64, ptr %stack, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %22, i64 %23
  store i64 %21, ptr %arrayidx9, align 8
  %24 = load ptr, ptr %seeds.addr, align 8
  %25 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %24, i64 %25
  %26 = load float, ptr %arrayidx10, align 4
  %27 = load ptr, ptr %ampstack, align 8
  %28 = load i64, ptr %stack, align 8
  %inc11 = add nsw i64 %28, 1
  store i64 %inc11, ptr %stack, align 8
  %arrayidx12 = getelementptr inbounds float, ptr %27, i64 %28
  store float %26, ptr %arrayidx12, align 4
  br label %while.end

if.else13:                                        ; preds = %while.body
  %29 = load i64, ptr %i, align 8
  %30 = load ptr, ptr %posstack, align 8
  %31 = load i64, ptr %stack, align 8
  %sub14 = sub nsw i64 %31, 1
  %arrayidx15 = getelementptr inbounds i64, ptr %30, i64 %sub14
  %32 = load i64, ptr %arrayidx15, align 8
  %33 = load i32, ptr %linesper.addr, align 4
  %conv = sext i32 %33 to i64
  %add = add nsw i64 %32, %conv
  %cmp16 = icmp slt i64 %29, %add
  br i1 %cmp16, label %if.then18, label %if.end35

if.then18:                                        ; preds = %if.else13
  %34 = load i64, ptr %stack, align 8
  %cmp19 = icmp sgt i64 %34, 1
  br i1 %cmp19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then18
  %35 = load ptr, ptr %ampstack, align 8
  %36 = load i64, ptr %stack, align 8
  %sub21 = sub nsw i64 %36, 1
  %arrayidx22 = getelementptr inbounds float, ptr %35, i64 %sub21
  %37 = load float, ptr %arrayidx22, align 4
  %38 = load ptr, ptr %ampstack, align 8
  %39 = load i64, ptr %stack, align 8
  %sub23 = sub nsw i64 %39, 2
  %arrayidx24 = getelementptr inbounds float, ptr %38, i64 %sub23
  %40 = load float, ptr %arrayidx24, align 4
  %cmp25 = fcmp ole float %37, %40
  br i1 %cmp25, label %land.lhs.true27, label %if.end

land.lhs.true27:                                  ; preds = %land.lhs.true
  %41 = load i64, ptr %i, align 8
  %42 = load ptr, ptr %posstack, align 8
  %43 = load i64, ptr %stack, align 8
  %sub28 = sub nsw i64 %43, 2
  %arrayidx29 = getelementptr inbounds i64, ptr %42, i64 %sub28
  %44 = load i64, ptr %arrayidx29, align 8
  %45 = load i32, ptr %linesper.addr, align 4
  %conv30 = sext i32 %45 to i64
  %add31 = add nsw i64 %44, %conv30
  %cmp32 = icmp slt i64 %41, %add31
  br i1 %cmp32, label %if.then34, label %if.end

if.then34:                                        ; preds = %land.lhs.true27
  %46 = load i64, ptr %stack, align 8
  %dec = add nsw i64 %46, -1
  store i64 %dec, ptr %stack, align 8
  br label %while.body

if.end:                                           ; preds = %land.lhs.true27, %land.lhs.true, %if.then18
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.else13
  %47 = load i64, ptr %i, align 8
  %48 = load ptr, ptr %posstack, align 8
  %49 = load i64, ptr %stack, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %48, i64 %49
  store i64 %47, ptr %arrayidx36, align 8
  %50 = load ptr, ptr %seeds.addr, align 8
  %51 = load i64, ptr %i, align 8
  %arrayidx37 = getelementptr inbounds float, ptr %50, i64 %51
  %52 = load float, ptr %arrayidx37, align 4
  %53 = load ptr, ptr %ampstack, align 8
  %54 = load i64, ptr %stack, align 8
  %inc38 = add nsw i64 %54, 1
  store i64 %inc38, ptr %stack, align 8
  %arrayidx39 = getelementptr inbounds float, ptr %53, i64 %54
  store float %52, ptr %arrayidx39, align 4
  br label %while.end

while.end:                                        ; preds = %if.end35, %if.then8
  br label %if.end40

if.end40:                                         ; preds = %while.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end40
  %55 = load i64, ptr %i, align 8
  %inc41 = add nsw i64 %55, 1
  store i64 %inc41, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc77, %for.end
  %56 = load i64, ptr %i, align 8
  %57 = load i64, ptr %stack, align 8
  %cmp43 = icmp slt i64 %56, %57
  br i1 %cmp43, label %for.body45, label %for.end79

for.body45:                                       ; preds = %for.cond42
  %58 = load i64, ptr %i, align 8
  %59 = load i64, ptr %stack, align 8
  %sub46 = sub nsw i64 %59, 1
  %cmp47 = icmp slt i64 %58, %sub46
  br i1 %cmp47, label %land.lhs.true49, label %if.else58

land.lhs.true49:                                  ; preds = %for.body45
  %60 = load ptr, ptr %ampstack, align 8
  %61 = load i64, ptr %i, align 8
  %add50 = add nsw i64 %61, 1
  %arrayidx51 = getelementptr inbounds float, ptr %60, i64 %add50
  %62 = load float, ptr %arrayidx51, align 4
  %63 = load ptr, ptr %ampstack, align 8
  %64 = load i64, ptr %i, align 8
  %arrayidx52 = getelementptr inbounds float, ptr %63, i64 %64
  %65 = load float, ptr %arrayidx52, align 4
  %cmp53 = fcmp ogt float %62, %65
  br i1 %cmp53, label %if.then55, label %if.else58

if.then55:                                        ; preds = %land.lhs.true49
  %66 = load ptr, ptr %posstack, align 8
  %67 = load i64, ptr %i, align 8
  %add56 = add nsw i64 %67, 1
  %arrayidx57 = getelementptr inbounds i64, ptr %66, i64 %add56
  %68 = load i64, ptr %arrayidx57, align 8
  store i64 %68, ptr %endpos, align 8
  br label %if.end63

if.else58:                                        ; preds = %land.lhs.true49, %for.body45
  %69 = load ptr, ptr %posstack, align 8
  %70 = load i64, ptr %i, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %69, i64 %70
  %71 = load i64, ptr %arrayidx59, align 8
  %72 = load i32, ptr %linesper.addr, align 4
  %conv60 = sext i32 %72 to i64
  %add61 = add nsw i64 %71, %conv60
  %add62 = add nsw i64 %add61, 1
  store i64 %add62, ptr %endpos, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.else58, %if.then55
  %73 = load i64, ptr %endpos, align 8
  %74 = load i64, ptr %n.addr, align 8
  %cmp64 = icmp sgt i64 %73, %74
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end63
  %75 = load i64, ptr %n.addr, align 8
  store i64 %75, ptr %endpos, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc74, %if.end67
  %76 = load i64, ptr %pos, align 8
  %77 = load i64, ptr %endpos, align 8
  %cmp69 = icmp slt i64 %76, %77
  br i1 %cmp69, label %for.body71, label %for.end76

for.body71:                                       ; preds = %for.cond68
  %78 = load ptr, ptr %ampstack, align 8
  %79 = load i64, ptr %i, align 8
  %arrayidx72 = getelementptr inbounds float, ptr %78, i64 %79
  %80 = load float, ptr %arrayidx72, align 4
  %81 = load ptr, ptr %seeds.addr, align 8
  %82 = load i64, ptr %pos, align 8
  %arrayidx73 = getelementptr inbounds float, ptr %81, i64 %82
  store float %80, ptr %arrayidx73, align 4
  br label %for.inc74

for.inc74:                                        ; preds = %for.body71
  %83 = load i64, ptr %pos, align 8
  %inc75 = add nsw i64 %83, 1
  store i64 %inc75, ptr %pos, align 8
  br label %for.cond68, !llvm.loop !8

for.end76:                                        ; preds = %for.cond68
  br label %for.inc77

for.inc77:                                        ; preds = %for.end76
  %84 = load i64, ptr %i, align 8
  %inc78 = add nsw i64 %84, 1
  store i64 %inc78, ptr %i, align 8
  br label %for.cond42, !llvm.loop !9

for.end79:                                        ; preds = %for.cond42
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
