; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@io_bitbuf = external hidden global i16, align 2
@subbitbuf = external hidden global i32, align 4
@bitcount = external hidden global i32, align 4

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fill_inbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden void @fillbuf(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4, !mymd !6
  store i32 %n, ptr %n.addr, align 4, !mymd !7
  %0 = load i32, ptr %n.addr, align 4, !mymd !8
  %1 = load i16, ptr @io_bitbuf, align 2, !mymd !9
  %conv = zext i16 %1 to i32, !mymd !10
  %shl = shl i32 %conv, %0, !mymd !11
  %conv1 = trunc i32 %shl to i16, !mymd !12
  store i16 %conv1, ptr @io_bitbuf, align 2, !mymd !13
  br label %while.cond, !mymd !14

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr %n.addr, align 4, !mymd !15
  %3 = load i32, ptr @bitcount, align 4, !mymd !16
  %cmp = icmp sgt i32 %2, %3, !mymd !17
  br i1 %cmp, label %while.body, label %while.end, !mymd !18

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr @subbitbuf, align 4, !mymd !19
  %5 = load i32, ptr @bitcount, align 4, !mymd !20
  %6 = load i32, ptr %n.addr, align 4, !mymd !21
  %sub = sub nsw i32 %6, %5, !mymd !22
  store i32 %sub, ptr %n.addr, align 4, !mymd !23
  %shl3 = shl i32 %4, %sub, !mymd !24
  %7 = load i16, ptr @io_bitbuf, align 2, !mymd !25
  %conv4 = zext i16 %7 to i32, !mymd !26
  %or = or i32 %conv4, %shl3, !mymd !27
  %conv5 = trunc i32 %or to i16, !mymd !28
  store i16 %conv5, ptr @io_bitbuf, align 2, !mymd !29
  %8 = load i32, ptr @inptr, align 4, !mymd !30
  %9 = load i32, ptr @insize, align 4, !mymd !31
  %cmp6 = icmp ult i32 %8, %9, !mymd !32
  br i1 %cmp6, label %cond.true, label %cond.false, !mymd !33

cond.true:                                        ; preds = %while.body
  %10 = load i32, ptr @inptr, align 4, !mymd !34
  %inc = add i32 %10, 1, !mymd !35
  store i32 %inc, ptr @inptr, align 4, !mymd !36
  %idxprom = zext i32 %10 to i64, !mymd !37
  %arrayidx = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom, !mymd !38
  %11 = load i8, ptr %arrayidx, align 1, !mymd !39
  %conv8 = zext i8 %11 to i32, !mymd !40
  br label %cond.end, !mymd !41

cond.false:                                       ; preds = %while.body
  %call = call i32 @fill_inbuf(i32 noundef 1), !mymd !42
  br label %cond.end, !mymd !43

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv8, %cond.true ], [ %call, %cond.false ], !mymd !44
  store i32 %cond, ptr @subbitbuf, align 4, !mymd !45
  %12 = load i32, ptr @subbitbuf, align 4, !mymd !46
  %cmp9 = icmp eq i32 %12, -1, !mymd !47
  br i1 %cmp9, label %if.then, label %if.end, !mymd !48

if.then:                                          ; preds = %cond.end
  store i32 0, ptr @subbitbuf, align 4, !mymd !49
  br label %if.end, !mymd !50

if.end:                                           ; preds = %if.then, %cond.end
  store i32 8, ptr @bitcount, align 4, !mymd !51
  br label %while.cond, !llvm.loop !52, !mymd !54

while.end:                                        ; preds = %while.cond
  %13 = load i32, ptr @subbitbuf, align 4, !mymd !55
  %14 = load i32, ptr %n.addr, align 4, !mymd !56
  %15 = load i32, ptr @bitcount, align 4, !mymd !57
  %sub11 = sub nsw i32 %15, %14, !mymd !58
  store i32 %sub11, ptr @bitcount, align 4, !mymd !59
  %shr = lshr i32 %13, %sub11, !mymd !60
  %16 = load i16, ptr @io_bitbuf, align 2, !mymd !61
  %conv12 = zext i16 %16 to i32, !mymd !62
  %or13 = or i32 %conv12, %shr, !mymd !63
  %conv14 = trunc i32 %or13 to i16, !mymd !64
  store i16 %conv14, ptr @io_bitbuf, align 2, !mymd !65
  ret void, !mymd !66
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
!6 = !{!"13235"}
!7 = !{!"13236"}
!8 = !{!"13237"}
!9 = !{!"13238"}
!10 = !{!"13239"}
!11 = !{!"13240"}
!12 = !{!"13241"}
!13 = !{!"13242"}
!14 = !{!"13243"}
!15 = !{!"13244"}
!16 = !{!"13245"}
!17 = !{!"13246"}
!18 = !{!"13247"}
!19 = !{!"13248"}
!20 = !{!"13249"}
!21 = !{!"13250"}
!22 = !{!"13251"}
!23 = !{!"13252"}
!24 = !{!"13253"}
!25 = !{!"13254"}
!26 = !{!"13255"}
!27 = !{!"13256"}
!28 = !{!"13257"}
!29 = !{!"13258"}
!30 = !{!"13259"}
!31 = !{!"13260"}
!32 = !{!"13261"}
!33 = !{!"13262"}
!34 = !{!"13263"}
!35 = !{!"13264"}
!36 = !{!"13265"}
!37 = !{!"13266"}
!38 = !{!"13267"}
!39 = !{!"13268"}
!40 = !{!"13269"}
!41 = !{!"13270"}
!42 = !{!"13271"}
!43 = !{!"13272"}
!44 = !{!"13273"}
!45 = !{!"13274"}
!46 = !{!"13275"}
!47 = !{!"13276"}
!48 = !{!"13277"}
!49 = !{!"13278"}
!50 = !{!"13279"}
!51 = !{!"13280"}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"13281"}
!55 = !{!"13282"}
!56 = !{!"13283"}
!57 = !{!"13284"}
!58 = !{!"13285"}
!59 = !{!"13286"}
!60 = !{!"13287"}
!61 = !{!"13288"}
!62 = !{!"13289"}
!63 = !{!"13290"}
!64 = !{!"13291"}
!65 = !{!"13292"}
!66 = !{!"13293"}
