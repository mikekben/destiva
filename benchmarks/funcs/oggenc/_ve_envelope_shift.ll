; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envelope_lookup = type { i32, i32, i32, float, %struct.mdct_lookup, ptr, [7 x %struct.envelope_band], ptr, i32, ptr, i64, i64, i64, i64 }
%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }
%struct.envelope_band = type { i32, i32, ptr, float }

; Function Attrs: nounwind uwtable
define dso_local void @_ve_envelope_shift(ptr noundef %e, i64 noundef %shift) #0 {
entry:
  %e.addr = alloca ptr, align 8
  %shift.addr = alloca i64, align 8
  %smallsize = alloca i32, align 4
  %smallshift = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  store i64 %shift, ptr %shift.addr, align 8
  %0 = load ptr, ptr %e.addr, align 8
  %current = getelementptr inbounds nuw %struct.envelope_lookup, ptr %0, i32 0, i32 11
  %1 = load i64, ptr %current, align 8
  %2 = load ptr, ptr %e.addr, align 8
  %searchstep = getelementptr inbounds nuw %struct.envelope_lookup, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %searchstep, align 8
  %conv = sext i32 %3 to i64
  %div = sdiv i64 %1, %conv
  %add = add nsw i64 %div, 2
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, ptr %smallsize, align 4
  %4 = load i64, ptr %shift.addr, align 8
  %5 = load ptr, ptr %e.addr, align 8
  %searchstep2 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %searchstep2, align 8
  %conv3 = sext i32 %6 to i64
  %div4 = sdiv i64 %4, %conv3
  %conv5 = trunc i64 %div4 to i32
  store i32 %conv5, ptr %smallshift, align 4
  %7 = load ptr, ptr %e.addr, align 8
  %mark = getelementptr inbounds nuw %struct.envelope_lookup, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %mark, align 8
  %9 = load ptr, ptr %e.addr, align 8
  %mark6 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %mark6, align 8
  %11 = load i32, ptr %smallshift, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i32, ptr %10, i64 %idx.ext
  %12 = load i32, ptr %smallsize, align 4
  %13 = load i32, ptr %smallshift, align 4
  %sub = sub nsw i32 %12, %13
  %conv7 = sext i32 %sub to i64
  %mul = mul i64 %conv7, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %8, ptr align 4 %add.ptr, i64 %mul, i1 false)
  %14 = load i64, ptr %shift.addr, align 8
  %15 = load ptr, ptr %e.addr, align 8
  %current8 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %15, i32 0, i32 11
  %16 = load i64, ptr %current8, align 8
  %sub9 = sub nsw i64 %16, %14
  store i64 %sub9, ptr %current8, align 8
  %17 = load ptr, ptr %e.addr, align 8
  %curmark = getelementptr inbounds nuw %struct.envelope_lookup, ptr %17, i32 0, i32 12
  %18 = load i64, ptr %curmark, align 8
  %cmp = icmp sge i64 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i64, ptr %shift.addr, align 8
  %20 = load ptr, ptr %e.addr, align 8
  %curmark11 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %20, i32 0, i32 12
  %21 = load i64, ptr %curmark11, align 8
  %sub12 = sub nsw i64 %21, %19
  store i64 %sub12, ptr %curmark11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i64, ptr %shift.addr, align 8
  %23 = load ptr, ptr %e.addr, align 8
  %cursor = getelementptr inbounds nuw %struct.envelope_lookup, ptr %23, i32 0, i32 13
  %24 = load i64, ptr %cursor, align 8
  %sub13 = sub nsw i64 %24, %22
  store i64 %sub13, ptr %cursor, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
