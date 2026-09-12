; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@dyn_ltree = external hidden global [573 x %struct.ct_data], align 16
@dyn_dtree = external hidden global [61 x %struct.ct_data], align 16
@bl_tree = external hidden global [39 x %struct.ct_data], align 16
@bl_order = external hidden global [19 x i8], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local void @send_bits(i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden void @send_all_trees(i32 noundef %lcodes, i32 noundef %dcodes, i32 noundef %blcodes) #0 {
entry:
  %lcodes.addr = alloca i32, align 4, !mymd !6
  %dcodes.addr = alloca i32, align 4, !mymd !7
  %blcodes.addr = alloca i32, align 4, !mymd !8
  %rank = alloca i32, align 4, !mymd !9
  store i32 %lcodes, ptr %lcodes.addr, align 4, !mymd !10
  store i32 %dcodes, ptr %dcodes.addr, align 4, !mymd !11
  store i32 %blcodes, ptr %blcodes.addr, align 4, !mymd !12
  %0 = load i32, ptr %lcodes.addr, align 4, !mymd !13
  %sub = sub nsw i32 %0, 257, !mymd !14
  call void @send_bits(i32 noundef %sub, i32 noundef 5), !mymd !15
  %1 = load i32, ptr %dcodes.addr, align 4, !mymd !16
  %sub1 = sub nsw i32 %1, 1, !mymd !17
  call void @send_bits(i32 noundef %sub1, i32 noundef 5), !mymd !18
  %2 = load i32, ptr %blcodes.addr, align 4, !mymd !19
  %sub2 = sub nsw i32 %2, 4, !mymd !20
  call void @send_bits(i32 noundef %sub2, i32 noundef 4), !mymd !21
  store i32 0, ptr %rank, align 4, !mymd !22
  br label %for.cond, !mymd !23

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %rank, align 4, !mymd !24
  %4 = load i32, ptr %blcodes.addr, align 4, !mymd !25
  %cmp = icmp slt i32 %3, %4, !mymd !26
  br i1 %cmp, label %for.body, label %for.end, !mymd !27

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %rank, align 4, !mymd !28
  %idxprom = sext i32 %5 to i64, !mymd !29
  %arrayidx = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom, !mymd !30
  %6 = load i8, ptr %arrayidx, align 1, !mymd !31
  %idxprom3 = zext i8 %6 to i64, !mymd !32
  %arrayidx4 = getelementptr inbounds nuw [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %idxprom3, !mymd !33
  %dl = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx4, i32 0, i32 1, !mymd !34
  %7 = load i16, ptr %dl, align 2, !mymd !35
  %conv = zext i16 %7 to i32, !mymd !36
  call void @send_bits(i32 noundef %conv, i32 noundef 3), !mymd !37
  br label %for.inc, !mymd !38

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %rank, align 4, !mymd !39
  %inc = add nsw i32 %8, 1, !mymd !40
  store i32 %inc, ptr %rank, align 4, !mymd !41
  br label %for.cond, !llvm.loop !42, !mymd !44

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %lcodes.addr, align 4, !mymd !45
  %sub5 = sub nsw i32 %9, 1, !mymd !46
  call void @send_tree(ptr noundef @dyn_ltree, i32 noundef %sub5), !mymd !47
  %10 = load i32, ptr %dcodes.addr, align 4, !mymd !48
  %sub6 = sub nsw i32 %10, 1, !mymd !49
  call void @send_tree(ptr noundef @dyn_dtree, i32 noundef %sub6), !mymd !50
  ret void, !mymd !51
}

; Function Attrs: noinline nounwind uwtable
declare hidden void @send_tree(ptr noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"8431"}
!7 = !{!"8432"}
!8 = !{!"8433"}
!9 = !{!"8434"}
!10 = !{!"8435"}
!11 = !{!"8436"}
!12 = !{!"8437"}
!13 = !{!"8438"}
!14 = !{!"8439"}
!15 = !{!"8440"}
!16 = !{!"8441"}
!17 = !{!"8442"}
!18 = !{!"8443"}
!19 = !{!"8444"}
!20 = !{!"8445"}
!21 = !{!"8446"}
!22 = !{!"8447"}
!23 = !{!"8448"}
!24 = !{!"8449"}
!25 = !{!"8450"}
!26 = !{!"8451"}
!27 = !{!"8452"}
!28 = !{!"8453"}
!29 = !{!"8454"}
!30 = !{!"8455"}
!31 = !{!"8456"}
!32 = !{!"8457"}
!33 = !{!"8458"}
!34 = !{!"8459"}
!35 = !{!"8460"}
!36 = !{!"8461"}
!37 = !{!"8462"}
!38 = !{!"8463"}
!39 = !{!"8464"}
!40 = !{!"8465"}
!41 = !{!"8466"}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"8467"}
!45 = !{!"8468"}
!46 = !{!"8469"}
!47 = !{!"8470"}
!48 = !{!"8471"}
!49 = !{!"8472"}
!50 = !{!"8473"}
!51 = !{!"8474"}
