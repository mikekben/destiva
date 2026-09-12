; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define hidden i32 @name_too_long(ptr noundef %name, ptr noundef %statb) #3 {
entry:
  %name.addr = alloca ptr, align 8, !mymd !6
  %statb.addr = alloca ptr, align 8, !mymd !7
  %s = alloca i32, align 4, !mymd !8
  %c = alloca i8, align 1, !mymd !9
  %tstat = alloca %struct.stat, align 8, !mymd !10
  %res = alloca i32, align 4, !mymd !11
  store ptr %name, ptr %name.addr, align 8, !mymd !12
  store ptr %statb, ptr %statb.addr, align 8, !mymd !13
  %0 = load ptr, ptr %name.addr, align 8, !mymd !14
  %call = call i64 @strlen(ptr noundef %0) #4, !mymd !15
  %conv = trunc i64 %call to i32, !mymd !16
  store i32 %conv, ptr %s, align 4, !mymd !17
  %1 = load ptr, ptr %name.addr, align 8, !mymd !18
  %2 = load i32, ptr %s, align 4, !mymd !19
  %sub = sub nsw i32 %2, 1, !mymd !20
  %idxprom = sext i32 %sub to i64, !mymd !21
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom, !mymd !22
  %3 = load i8, ptr %arrayidx, align 1, !mymd !23
  store i8 %3, ptr %c, align 1, !mymd !24
  %4 = load ptr, ptr %statb.addr, align 8, !mymd !25
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tstat, ptr align 8 %4, i64 144, i1 false), !mymd !26
  %5 = load ptr, ptr %name.addr, align 8, !mymd !27
  %6 = load i32, ptr %s, align 4, !mymd !28
  %sub1 = sub nsw i32 %6, 1, !mymd !29
  %idxprom2 = sext i32 %sub1 to i64, !mymd !30
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 %idxprom2, !mymd !31
  store i8 0, ptr %arrayidx3, align 1, !mymd !32
  %7 = load ptr, ptr %name.addr, align 8, !mymd !33
  %call4 = call i32 @lstat(ptr noundef %7, ptr noundef %tstat) #5, !mymd !34
  %cmp = icmp eq i32 %call4, 0, !mymd !35
  br i1 %cmp, label %land.rhs, label %land.end, !mymd !36

land.rhs:                                         ; preds = %entry
  %8 = load ptr, ptr %statb.addr, align 8, !mymd !37
  %call6 = call i32 @same_file(ptr noundef %8, ptr noundef %tstat), !mymd !38
  %tobool = icmp ne i32 %call6, 0, !mymd !39
  br label %land.end, !mymd !40

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !mymd !41
  %land.ext = zext i1 %9 to i32, !mymd !42
  store i32 %land.ext, ptr %res, align 4, !mymd !43
  %10 = load i8, ptr %c, align 1, !mymd !44
  %11 = load ptr, ptr %name.addr, align 8, !mymd !45
  %12 = load i32, ptr %s, align 4, !mymd !46
  %sub7 = sub nsw i32 %12, 1, !mymd !47
  %idxprom8 = sext i32 %sub7 to i64, !mymd !48
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom8, !mymd !49
  store i8 %10, ptr %arrayidx9, align 1, !mymd !50
  %13 = load i32, ptr %res, align 4, !mymd !51
  ret i32 %13, !mymd !52
}

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @same_file(ptr noundef, ptr noundef) #3

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"12230"}
!7 = !{!"12231"}
!8 = !{!"12232"}
!9 = !{!"12233"}
!10 = !{!"12234"}
!11 = !{!"12235"}
!12 = !{!"12236"}
!13 = !{!"12237"}
!14 = !{!"12238"}
!15 = !{!"12239"}
!16 = !{!"12240"}
!17 = !{!"12241"}
!18 = !{!"12242"}
!19 = !{!"12243"}
!20 = !{!"12244"}
!21 = !{!"12245"}
!22 = !{!"12246"}
!23 = !{!"12247"}
!24 = !{!"12248"}
!25 = !{!"12249"}
!26 = !{!"12250"}
!27 = !{!"12251"}
!28 = !{!"12252"}
!29 = !{!"12253"}
!30 = !{!"12254"}
!31 = !{!"12255"}
!32 = !{!"12256"}
!33 = !{!"12257"}
!34 = !{!"12258"}
!35 = !{!"12259"}
!36 = !{!"12260"}
!37 = !{!"12261"}
!38 = !{!"12262"}
!39 = !{!"12263"}
!40 = !{!"12264"}
!41 = !{!"12265"}
!42 = !{!"12266"}
!43 = !{!"12267"}
!44 = !{!"12268"}
!45 = !{!"12269"}
!46 = !{!"12270"}
!47 = !{!"12271"}
!48 = !{!"12272"}
!49 = !{!"12273"}
!50 = !{!"12274"}
!51 = !{!"12275"}
!52 = !{!"12276"}
