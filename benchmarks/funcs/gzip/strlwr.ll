; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @strlwr(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8, !mymd !6
  %t = alloca ptr, align 8, !mymd !7
  store ptr %s, ptr %s.addr, align 8, !mymd !8
  %0 = load ptr, ptr %s.addr, align 8, !mymd !9
  store ptr %0, ptr %t, align 8, !mymd !10
  br label %for.cond, !mymd !11

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %t, align 8, !mymd !12
  %2 = load i8, ptr %1, align 1, !mymd !13
  %tobool = icmp ne i8 %2, 0, !mymd !14
  br i1 %tobool, label %for.body, label %for.end, !mymd !15

for.body:                                         ; preds = %for.cond
  %call = call ptr @__ctype_b_loc() #3, !mymd !16
  %3 = load ptr, ptr %call, align 8, !mymd !17
  %4 = load ptr, ptr %t, align 8, !mymd !18
  %5 = load i8, ptr %4, align 1, !mymd !19
  %conv = zext i8 %5 to i32, !mymd !20
  %idxprom = sext i32 %conv to i64, !mymd !21
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom, !mymd !22
  %6 = load i16, ptr %arrayidx, align 2, !mymd !23
  %conv1 = zext i16 %6 to i32, !mymd !24
  %and = and i32 %conv1, 256, !mymd !25
  %tobool2 = icmp ne i32 %and, 0, !mymd !26
  br i1 %tobool2, label %cond.true, label %cond.false, !mymd !27

cond.true:                                        ; preds = %for.body
  %7 = load ptr, ptr %t, align 8, !mymd !28
  %8 = load i8, ptr %7, align 1, !mymd !29
  %conv3 = zext i8 %8 to i32, !mymd !30
  %call4 = call i32 @tolower(i32 noundef %conv3) #4, !mymd !31
  br label %cond.end, !mymd !32

cond.false:                                       ; preds = %for.body
  %9 = load ptr, ptr %t, align 8, !mymd !33
  %10 = load i8, ptr %9, align 1, !mymd !34
  %conv5 = zext i8 %10 to i32, !mymd !35
  br label %cond.end, !mymd !36

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call4, %cond.true ], [ %conv5, %cond.false ], !mymd !37
  %conv6 = trunc i32 %cond to i8, !mymd !38
  %11 = load ptr, ptr %t, align 8, !mymd !39
  store i8 %conv6, ptr %11, align 1, !mymd !40
  br label %for.inc, !mymd !41

for.inc:                                          ; preds = %cond.end
  %12 = load ptr, ptr %t, align 8, !mymd !42
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1, !mymd !43
  store ptr %incdec.ptr, ptr %t, align 8, !mymd !44
  br label %for.cond, !llvm.loop !45, !mymd !47

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %s.addr, align 8, !mymd !48
  ret ptr %13, !mymd !49
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10385"}
!7 = !{!"10386"}
!8 = !{!"10387"}
!9 = !{!"10388"}
!10 = !{!"10389"}
!11 = !{!"10390"}
!12 = !{!"10391"}
!13 = !{!"10392"}
!14 = !{!"10393"}
!15 = !{!"10394"}
!16 = !{!"10395"}
!17 = !{!"10396"}
!18 = !{!"10397"}
!19 = !{!"10398"}
!20 = !{!"10399"}
!21 = !{!"10400"}
!22 = !{!"10401"}
!23 = !{!"10402"}
!24 = !{!"10403"}
!25 = !{!"10404"}
!26 = !{!"10405"}
!27 = !{!"10406"}
!28 = !{!"10407"}
!29 = !{!"10408"}
!30 = !{!"10409"}
!31 = !{!"10410"}
!32 = !{!"10411"}
!33 = !{!"10412"}
!34 = !{!"10413"}
!35 = !{!"10414"}
!36 = !{!"10415"}
!37 = !{!"10416"}
!38 = !{!"10417"}
!39 = !{!"10418"}
!40 = !{!"10419"}
!41 = !{!"10420"}
!42 = !{!"10421"}
!43 = !{!"10422"}
!44 = !{!"10423"}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"10424"}
!48 = !{!"10425"}
!49 = !{!"10426"}
