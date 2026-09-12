; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_desc = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@l_desc = external hidden global %struct.tree_desc, align 8
@d_desc = external hidden global %struct.tree_desc, align 8
@opt_len = external hidden global i64, align 8
@dyn_ltree = external hidden global [573 x %struct.ct_data], align 16
@dyn_dtree = external hidden global [61 x %struct.ct_data], align 16
@bl_tree = external hidden global [39 x %struct.ct_data], align 16
@bl_desc = external hidden global %struct.tree_desc, align 8
@bl_order = external hidden global [19 x i8], align 16

; Function Attrs: noinline nounwind uwtable
declare hidden void @build_tree_1(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden i32 @build_bl_tree() #0 {
entry:
  %max_blindex = alloca i32, align 4, !mymd !6
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.tree_desc, ptr @l_desc, i32 0, i32 6), align 4, !mymd !7
  call void @scan_tree(ptr noundef @dyn_ltree, i32 noundef %0), !mymd !8
  %1 = load i32, ptr getelementptr inbounds nuw (%struct.tree_desc, ptr @d_desc, i32 0, i32 6), align 4, !mymd !9
  call void @scan_tree(ptr noundef @dyn_dtree, i32 noundef %1), !mymd !10
  call void @build_tree_1(ptr noundef @bl_desc), !mymd !11
  store i32 18, ptr %max_blindex, align 4, !mymd !12
  br label %for.cond, !mymd !13

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %max_blindex, align 4, !mymd !14
  %cmp = icmp sge i32 %2, 3, !mymd !15
  br i1 %cmp, label %for.body, label %for.end, !mymd !16

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %max_blindex, align 4, !mymd !17
  %idxprom = sext i32 %3 to i64, !mymd !18
  %arrayidx = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %idxprom, !mymd !19
  %4 = load i8, ptr %arrayidx, align 1, !mymd !20
  %idxprom1 = zext i8 %4 to i64, !mymd !21
  %arrayidx2 = getelementptr inbounds nuw [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %idxprom1, !mymd !22
  %dl = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx2, i32 0, i32 1, !mymd !23
  %5 = load i16, ptr %dl, align 2, !mymd !24
  %conv = zext i16 %5 to i32, !mymd !25
  %cmp3 = icmp ne i32 %conv, 0, !mymd !26
  br i1 %cmp3, label %if.then, label %if.end, !mymd !27

if.then:                                          ; preds = %for.body
  br label %for.end, !mymd !28

if.end:                                           ; preds = %for.body
  br label %for.inc, !mymd !29

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %max_blindex, align 4, !mymd !30
  %dec = add nsw i32 %6, -1, !mymd !31
  store i32 %dec, ptr %max_blindex, align 4, !mymd !32
  br label %for.cond, !llvm.loop !33, !mymd !35

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, ptr %max_blindex, align 4, !mymd !36
  %add = add nsw i32 %7, 1, !mymd !37
  %mul = mul nsw i32 3, %add, !mymd !38
  %add5 = add nsw i32 %mul, 5, !mymd !39
  %add6 = add nsw i32 %add5, 5, !mymd !40
  %add7 = add nsw i32 %add6, 4, !mymd !41
  %conv8 = sext i32 %add7 to i64, !mymd !42
  %8 = load i64, ptr @opt_len, align 8, !mymd !43
  %add9 = add i64 %8, %conv8, !mymd !44
  store i64 %add9, ptr @opt_len, align 8, !mymd !45
  %9 = load i32, ptr %max_blindex, align 4, !mymd !46
  ret i32 %9, !mymd !47
}

; Function Attrs: noinline nounwind uwtable
declare hidden void @scan_tree(ptr noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"8201"}
!7 = !{!"8202"}
!8 = !{!"8203"}
!9 = !{!"8204"}
!10 = !{!"8205"}
!11 = !{!"8206"}
!12 = !{!"8207"}
!13 = !{!"8208"}
!14 = !{!"8209"}
!15 = !{!"8210"}
!16 = !{!"8211"}
!17 = !{!"8212"}
!18 = !{!"8213"}
!19 = !{!"8214"}
!20 = !{!"8215"}
!21 = !{!"8216"}
!22 = !{!"8217"}
!23 = !{!"8218"}
!24 = !{!"8219"}
!25 = !{!"8220"}
!26 = !{!"8221"}
!27 = !{!"8222"}
!28 = !{!"8223"}
!29 = !{!"8224"}
!30 = !{!"8225"}
!31 = !{!"8226"}
!32 = !{!"8227"}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"8228"}
!36 = !{!"8229"}
!37 = !{!"8230"}
!38 = !{!"8231"}
!39 = !{!"8232"}
!40 = !{!"8233"}
!41 = !{!"8234"}
!42 = !{!"8235"}
!43 = !{!"8236"}
!44 = !{!"8237"}
!45 = !{!"8238"}
!46 = !{!"8239"}
!47 = !{!"8240"}
