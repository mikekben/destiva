; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_floor1 = type { [65 x i32], [65 x i32], [65 x i32], [63 x i32], [63 x i32], i32, i32, i32, ptr, i64, i64, i64 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @floor1_interpolate_fit(ptr noundef %vb, ptr noundef %look, ptr noundef %A, ptr noundef %B, i32 noundef %del) #0 {
entry:
  %vb.addr = alloca ptr, align 8
  %look.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %del.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %posts = alloca i64, align 8
  %output = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %look, ptr %look.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  store i32 %del, ptr %del.addr, align 4
  %0 = load ptr, ptr %look.addr, align 8
  %posts1 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %posts1, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %posts, align 8
  store ptr null, ptr %output, align 8
  %2 = load ptr, ptr %A.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %B.addr, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %if.then, label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %vb.addr, align 8
  %5 = load i64, ptr %posts, align 8
  %mul = mul i64 4, %5
  %call = call ptr @_vorbis_block_alloc(ptr noundef %4, i64 noundef %mul)
  store ptr %call, ptr %output, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %posts, align 8
  %cmp = icmp slt i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %del.addr, align 4
  %sub = sub nsw i32 65536, %8
  %9 = load ptr, ptr %A.addr, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %10
  %11 = load i32, ptr %arrayidx, align 4
  %and = and i32 %11, 32767
  %mul4 = mul nsw i32 %sub, %and
  %12 = load i32, ptr %del.addr, align 4
  %13 = load ptr, ptr %B.addr, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 %14
  %15 = load i32, ptr %arrayidx5, align 4
  %and6 = and i32 %15, 32767
  %mul7 = mul nsw i32 %12, %and6
  %add = add nsw i32 %mul4, %mul7
  %add8 = add nsw i32 %add, 32768
  %shr = ashr i32 %add8, 16
  %16 = load ptr, ptr %output, align 8
  %17 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %16, i64 %17
  store i32 %shr, ptr %arrayidx9, align 4
  %18 = load ptr, ptr %A.addr, align 8
  %19 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 %19
  %20 = load i32, ptr %arrayidx10, align 4
  %and11 = and i32 %20, 32768
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %for.body
  %21 = load ptr, ptr %B.addr, align 8
  %22 = load i64, ptr %i, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %21, i64 %22
  %23 = load i32, ptr %arrayidx14, align 4
  %and15 = and i32 %23, 32768
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.end

if.then17:                                        ; preds = %land.lhs.true13
  %24 = load ptr, ptr %output, align 8
  %25 = load i64, ptr %i, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %24, i64 %25
  %26 = load i32, ptr %arrayidx18, align 4
  %or = or i32 %26, 32768
  store i32 %or, ptr %arrayidx18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %land.lhs.true13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i64, ptr %i, align 8
  %inc = add nsw i64 %27, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end19

if.end19:                                         ; preds = %for.end, %land.lhs.true, %entry
  %28 = load ptr, ptr %output, align 8
  ret ptr %28
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
