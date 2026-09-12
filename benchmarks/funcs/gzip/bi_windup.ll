; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bi_buf = external hidden global i16, align 2
@bi_valid = external hidden global i32, align 4
@outcnt = external dso_local global i32, align 4
@outbuf = external dso_local global [18432 x i8], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local void @flush_outbuf() #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @bi_windup() #0 {
entry:
  %0 = load i32, ptr @bi_valid, align 4, !mymd !6
  %cmp = icmp sgt i32 %0, 8, !mymd !7
  br i1 %cmp, label %if.then, label %if.else29, !mymd !8

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @outcnt, align 4, !mymd !9
  %cmp1 = icmp ult i32 %1, 16382, !mymd !10
  br i1 %cmp1, label %if.then2, label %if.else, !mymd !11

if.then2:                                         ; preds = %if.then
  %2 = load i16, ptr @bi_buf, align 2, !mymd !12
  %conv = zext i16 %2 to i32, !mymd !13
  %and = and i32 %conv, 255, !mymd !14
  %conv3 = trunc i32 %and to i8, !mymd !15
  %3 = load i32, ptr @outcnt, align 4, !mymd !16
  %inc = add i32 %3, 1, !mymd !17
  store i32 %inc, ptr @outcnt, align 4, !mymd !18
  %idxprom = zext i32 %3 to i64, !mymd !19
  %arrayidx = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom, !mymd !20
  store i8 %conv3, ptr %arrayidx, align 1, !mymd !21
  %4 = load i16, ptr @bi_buf, align 2, !mymd !22
  %conv4 = zext i16 %4 to i32, !mymd !23
  %shr = ashr i32 %conv4, 8, !mymd !24
  %conv5 = trunc i32 %shr to i8, !mymd !25
  %5 = load i32, ptr @outcnt, align 4, !mymd !26
  %inc6 = add i32 %5, 1, !mymd !27
  store i32 %inc6, ptr @outcnt, align 4, !mymd !28
  %idxprom7 = zext i32 %5 to i64, !mymd !29
  %arrayidx8 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom7, !mymd !30
  store i8 %conv5, ptr %arrayidx8, align 1, !mymd !31
  br label %if.end28, !mymd !32

if.else:                                          ; preds = %if.then
  %6 = load i16, ptr @bi_buf, align 2, !mymd !33
  %conv9 = zext i16 %6 to i32, !mymd !34
  %and10 = and i32 %conv9, 255, !mymd !35
  %conv11 = trunc i32 %and10 to i8, !mymd !36
  %7 = load i32, ptr @outcnt, align 4, !mymd !37
  %inc12 = add i32 %7, 1, !mymd !38
  store i32 %inc12, ptr @outcnt, align 4, !mymd !39
  %idxprom13 = zext i32 %7 to i64, !mymd !40
  %arrayidx14 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom13, !mymd !41
  store i8 %conv11, ptr %arrayidx14, align 1, !mymd !42
  %8 = load i32, ptr @outcnt, align 4, !mymd !43
  %cmp15 = icmp eq i32 %8, 16384, !mymd !44
  br i1 %cmp15, label %if.then17, label %if.end, !mymd !45

if.then17:                                        ; preds = %if.else
  call void @flush_outbuf(), !mymd !46
  br label %if.end, !mymd !47

if.end:                                           ; preds = %if.then17, %if.else
  %9 = load i16, ptr @bi_buf, align 2, !mymd !48
  %conv18 = zext i16 %9 to i32, !mymd !49
  %shr19 = ashr i32 %conv18, 8, !mymd !50
  %conv20 = trunc i32 %shr19 to i8, !mymd !51
  %10 = load i32, ptr @outcnt, align 4, !mymd !52
  %inc21 = add i32 %10, 1, !mymd !53
  store i32 %inc21, ptr @outcnt, align 4, !mymd !54
  %idxprom22 = zext i32 %10 to i64, !mymd !55
  %arrayidx23 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom22, !mymd !56
  store i8 %conv20, ptr %arrayidx23, align 1, !mymd !57
  %11 = load i32, ptr @outcnt, align 4, !mymd !58
  %cmp24 = icmp eq i32 %11, 16384, !mymd !59
  br i1 %cmp24, label %if.then26, label %if.end27, !mymd !60

if.then26:                                        ; preds = %if.end
  call void @flush_outbuf(), !mymd !61
  br label %if.end27, !mymd !62

if.end27:                                         ; preds = %if.then26, %if.end
  br label %if.end28, !mymd !63

if.end28:                                         ; preds = %if.end27, %if.then2
  br label %if.end42, !mymd !64

if.else29:                                        ; preds = %entry
  %12 = load i32, ptr @bi_valid, align 4, !mymd !65
  %cmp30 = icmp sgt i32 %12, 0, !mymd !66
  br i1 %cmp30, label %if.then32, label %if.end41, !mymd !67

if.then32:                                        ; preds = %if.else29
  %13 = load i16, ptr @bi_buf, align 2, !mymd !68
  %conv33 = trunc i16 %13 to i8, !mymd !69
  %14 = load i32, ptr @outcnt, align 4, !mymd !70
  %inc34 = add i32 %14, 1, !mymd !71
  store i32 %inc34, ptr @outcnt, align 4, !mymd !72
  %idxprom35 = zext i32 %14 to i64, !mymd !73
  %arrayidx36 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom35, !mymd !74
  store i8 %conv33, ptr %arrayidx36, align 1, !mymd !75
  %15 = load i32, ptr @outcnt, align 4, !mymd !76
  %cmp37 = icmp eq i32 %15, 16384, !mymd !77
  br i1 %cmp37, label %if.then39, label %if.end40, !mymd !78

if.then39:                                        ; preds = %if.then32
  call void @flush_outbuf(), !mymd !79
  br label %if.end40, !mymd !80

if.end40:                                         ; preds = %if.then39, %if.then32
  br label %if.end41, !mymd !81

if.end41:                                         ; preds = %if.end40, %if.else29
  br label %if.end42, !mymd !82

if.end42:                                         ; preds = %if.end41, %if.end28
  store i16 0, ptr @bi_buf, align 2, !mymd !83
  store i32 0, ptr @bi_valid, align 4, !mymd !84
  ret void, !mymd !85
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"198"}
!7 = !{!"199"}
!8 = !{!"200"}
!9 = !{!"201"}
!10 = !{!"202"}
!11 = !{!"203"}
!12 = !{!"204"}
!13 = !{!"205"}
!14 = !{!"206"}
!15 = !{!"207"}
!16 = !{!"208"}
!17 = !{!"209"}
!18 = !{!"210"}
!19 = !{!"211"}
!20 = !{!"212"}
!21 = !{!"213"}
!22 = !{!"214"}
!23 = !{!"215"}
!24 = !{!"216"}
!25 = !{!"217"}
!26 = !{!"218"}
!27 = !{!"219"}
!28 = !{!"220"}
!29 = !{!"221"}
!30 = !{!"222"}
!31 = !{!"223"}
!32 = !{!"224"}
!33 = !{!"225"}
!34 = !{!"226"}
!35 = !{!"227"}
!36 = !{!"228"}
!37 = !{!"229"}
!38 = !{!"230"}
!39 = !{!"231"}
!40 = !{!"232"}
!41 = !{!"233"}
!42 = !{!"234"}
!43 = !{!"235"}
!44 = !{!"236"}
!45 = !{!"237"}
!46 = !{!"238"}
!47 = !{!"239"}
!48 = !{!"240"}
!49 = !{!"241"}
!50 = !{!"242"}
!51 = !{!"243"}
!52 = !{!"244"}
!53 = !{!"245"}
!54 = !{!"246"}
!55 = !{!"247"}
!56 = !{!"248"}
!57 = !{!"249"}
!58 = !{!"250"}
!59 = !{!"251"}
!60 = !{!"252"}
!61 = !{!"253"}
!62 = !{!"254"}
!63 = !{!"255"}
!64 = !{!"256"}
!65 = !{!"257"}
!66 = !{!"258"}
!67 = !{!"259"}
!68 = !{!"260"}
!69 = !{!"261"}
!70 = !{!"262"}
!71 = !{!"263"}
!72 = !{!"264"}
!73 = !{!"265"}
!74 = !{!"266"}
!75 = !{!"267"}
!76 = !{!"268"}
!77 = !{!"269"}
!78 = !{!"270"}
!79 = !{!"271"}
!80 = !{!"272"}
!81 = !{!"273"}
!82 = !{!"274"}
!83 = !{!"275"}
!84 = !{!"276"}
!85 = !{!"277"}
