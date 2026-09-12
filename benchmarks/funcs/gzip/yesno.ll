; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yesno() #1 {
entry:
  %buf = alloca [128 x i8], align 16, !mymd !6
  %len = alloca i32, align 4, !mymd !7
  %c = alloca i32, align 4, !mymd !8
  store i32 0, ptr %len, align 4, !mymd !9
  br label %while.cond, !mymd !10

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @getchar(), !mymd !11
  store i32 %call, ptr %c, align 4, !mymd !12
  %cmp = icmp ne i32 %call, -1, !mymd !13
  br i1 %cmp, label %land.rhs, label %land.end, !mymd !14

land.rhs:                                         ; preds = %while.cond
  %0 = load i32, ptr %c, align 4, !mymd !15
  %cmp1 = icmp ne i32 %0, 10, !mymd !16
  br label %land.end, !mymd !17

land.end:                                         ; preds = %land.rhs, %while.cond
  %1 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !mymd !18
  br i1 %1, label %while.body, label %while.end, !mymd !19

while.body:                                       ; preds = %land.end
  %2 = load i32, ptr %len, align 4, !mymd !20
  %cmp2 = icmp sgt i32 %2, 0, !mymd !21
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false, !mymd !22

land.lhs.true:                                    ; preds = %while.body
  %3 = load i32, ptr %len, align 4, !mymd !23
  %cmp3 = icmp slt i32 %3, 127, !mymd !24
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !mymd !25

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %4 = load i32, ptr %len, align 4, !mymd !26
  %cmp4 = icmp eq i32 %4, 0, !mymd !27
  br i1 %cmp4, label %land.lhs.true5, label %if.end, !mymd !28

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %call6 = call ptr @__ctype_b_loc() #3, !mymd !29
  %5 = load ptr, ptr %call6, align 8, !mymd !30
  %6 = load i32, ptr %c, align 4, !mymd !31
  %idxprom = sext i32 %6 to i64, !mymd !32
  %arrayidx = getelementptr inbounds i16, ptr %5, i64 %idxprom, !mymd !33
  %7 = load i16, ptr %arrayidx, align 2, !mymd !34
  %conv = zext i16 %7 to i32, !mymd !35
  %and = and i32 %conv, 8192, !mymd !36
  %tobool = icmp ne i32 %and, 0, !mymd !37
  br i1 %tobool, label %if.end, label %if.then, !mymd !38

if.then:                                          ; preds = %land.lhs.true5, %land.lhs.true
  %8 = load i32, ptr %c, align 4, !mymd !39
  %conv7 = trunc i32 %8 to i8, !mymd !40
  %9 = load i32, ptr %len, align 4, !mymd !41
  %inc = add nsw i32 %9, 1, !mymd !42
  store i32 %inc, ptr %len, align 4, !mymd !43
  %idxprom8 = sext i32 %9 to i64, !mymd !44
  %arrayidx9 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 %idxprom8, !mymd !45
  store i8 %conv7, ptr %arrayidx9, align 1, !mymd !46
  br label %if.end, !mymd !47

if.end:                                           ; preds = %if.then, %land.lhs.true5, %lor.lhs.false
  br label %while.cond, !llvm.loop !48, !mymd !50

while.end:                                        ; preds = %land.end
  %10 = load i32, ptr %len, align 4, !mymd !51
  %idxprom10 = sext i32 %10 to i64, !mymd !52
  %arrayidx11 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 %idxprom10, !mymd !53
  store i8 0, ptr %arrayidx11, align 1, !mymd !54
  %arraydecay = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !mymd !55
  %call12 = call i32 @rpmatch(ptr noundef %arraydecay) #4, !mymd !56
  %cmp13 = icmp eq i32 %call12, 1, !mymd !57
  %conv14 = zext i1 %cmp13 to i32, !mymd !58
  ret i32 %conv14, !mymd !59
}

declare i32 @getchar() #2

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @rpmatch(ptr noundef nonnull) #1

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10608"}
!7 = !{!"10609"}
!8 = !{!"10610"}
!9 = !{!"10611"}
!10 = !{!"10612"}
!11 = !{!"10613"}
!12 = !{!"10614"}
!13 = !{!"10615"}
!14 = !{!"10616"}
!15 = !{!"10617"}
!16 = !{!"10618"}
!17 = !{!"10619"}
!18 = !{!"10620"}
!19 = !{!"10621"}
!20 = !{!"10622"}
!21 = !{!"10623"}
!22 = !{!"10624"}
!23 = !{!"10625"}
!24 = !{!"10626"}
!25 = !{!"10627"}
!26 = !{!"10628"}
!27 = !{!"10629"}
!28 = !{!"10630"}
!29 = !{!"10631"}
!30 = !{!"10632"}
!31 = !{!"10633"}
!32 = !{!"10634"}
!33 = !{!"10635"}
!34 = !{!"10636"}
!35 = !{!"10637"}
!36 = !{!"10638"}
!37 = !{!"10639"}
!38 = !{!"10640"}
!39 = !{!"10641"}
!40 = !{!"10642"}
!41 = !{!"10643"}
!42 = !{!"10644"}
!43 = !{!"10645"}
!44 = !{!"10646"}
!45 = !{!"10647"}
!46 = !{!"10648"}
!47 = !{!"10649"}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"10650"}
!51 = !{!"10651"}
!52 = !{!"10652"}
!53 = !{!"10653"}
!54 = !{!"10654"}
!55 = !{!"10655"}
!56 = !{!"10656"}
!57 = !{!"10657"}
!58 = !{!"10658"}
!59 = !{!"10659"}
