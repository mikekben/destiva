; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@bl_count = external hidden global [16 x i16], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @bi_reverse(i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden void @gen_codes(ptr noundef %tree, i32 noundef %max_code) #0 {
entry:
  %tree.addr = alloca ptr, align 8, !mymd !6
  %max_code.addr = alloca i32, align 4, !mymd !7
  %next_code = alloca [16 x i16], align 16, !mymd !8
  %code = alloca i16, align 2, !mymd !9
  %bits = alloca i32, align 4, !mymd !10
  %n = alloca i32, align 4, !mymd !11
  %len = alloca i32, align 4, !mymd !12
  store ptr %tree, ptr %tree.addr, align 8, !mymd !13
  store i32 %max_code, ptr %max_code.addr, align 4, !mymd !14
  store i16 0, ptr %code, align 2, !mymd !15
  store i32 1, ptr %bits, align 4, !mymd !16
  br label %for.cond, !mymd !17

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %bits, align 4, !mymd !18
  %cmp = icmp sle i32 %0, 15, !mymd !19
  br i1 %cmp, label %for.body, label %for.end, !mymd !20

for.body:                                         ; preds = %for.cond
  %1 = load i16, ptr %code, align 2, !mymd !21
  %conv = zext i16 %1 to i32, !mymd !22
  %2 = load i32, ptr %bits, align 4, !mymd !23
  %sub = sub nsw i32 %2, 1, !mymd !24
  %idxprom = sext i32 %sub to i64, !mymd !25
  %arrayidx = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %idxprom, !mymd !26
  %3 = load i16, ptr %arrayidx, align 2, !mymd !27
  %conv1 = zext i16 %3 to i32, !mymd !28
  %add = add nsw i32 %conv, %conv1, !mymd !29
  %shl = shl i32 %add, 1, !mymd !30
  %conv2 = trunc i32 %shl to i16, !mymd !31
  store i16 %conv2, ptr %code, align 2, !mymd !32
  %4 = load i32, ptr %bits, align 4, !mymd !33
  %idxprom3 = sext i32 %4 to i64, !mymd !34
  %arrayidx4 = getelementptr inbounds [16 x i16], ptr %next_code, i64 0, i64 %idxprom3, !mymd !35
  store i16 %conv2, ptr %arrayidx4, align 2, !mymd !36
  br label %for.inc, !mymd !37

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %bits, align 4, !mymd !38
  %inc = add nsw i32 %5, 1, !mymd !39
  store i32 %inc, ptr %bits, align 4, !mymd !40
  br label %for.cond, !llvm.loop !41, !mymd !43

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4, !mymd !44
  br label %for.cond5, !mymd !45

for.cond5:                                        ; preds = %for.inc21, %for.end
  %6 = load i32, ptr %n, align 4, !mymd !46
  %7 = load i32, ptr %max_code.addr, align 4, !mymd !47
  %cmp6 = icmp sle i32 %6, %7, !mymd !48
  br i1 %cmp6, label %for.body8, label %for.end23, !mymd !49

for.body8:                                        ; preds = %for.cond5
  %8 = load ptr, ptr %tree.addr, align 8, !mymd !50
  %9 = load i32, ptr %n, align 4, !mymd !51
  %idxprom9 = sext i32 %9 to i64, !mymd !52
  %arrayidx10 = getelementptr inbounds %struct.ct_data, ptr %8, i64 %idxprom9, !mymd !53
  %dl = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx10, i32 0, i32 1, !mymd !54
  %10 = load i16, ptr %dl, align 2, !mymd !55
  %conv11 = zext i16 %10 to i32, !mymd !56
  store i32 %conv11, ptr %len, align 4, !mymd !57
  %11 = load i32, ptr %len, align 4, !mymd !58
  %cmp12 = icmp eq i32 %11, 0, !mymd !59
  br i1 %cmp12, label %if.then, label %if.end, !mymd !60

if.then:                                          ; preds = %for.body8
  br label %for.inc21, !mymd !61

if.end:                                           ; preds = %for.body8
  %12 = load i32, ptr %len, align 4, !mymd !62
  %idxprom14 = sext i32 %12 to i64, !mymd !63
  %arrayidx15 = getelementptr inbounds [16 x i16], ptr %next_code, i64 0, i64 %idxprom14, !mymd !64
  %13 = load i16, ptr %arrayidx15, align 2, !mymd !65
  %inc16 = add i16 %13, 1, !mymd !66
  store i16 %inc16, ptr %arrayidx15, align 2, !mymd !67
  %conv17 = zext i16 %13 to i32, !mymd !68
  %14 = load i32, ptr %len, align 4, !mymd !69
  %call = call i32 @bi_reverse(i32 noundef %conv17, i32 noundef %14), !mymd !70
  %conv18 = trunc i32 %call to i16, !mymd !71
  %15 = load ptr, ptr %tree.addr, align 8, !mymd !72
  %16 = load i32, ptr %n, align 4, !mymd !73
  %idxprom19 = sext i32 %16 to i64, !mymd !74
  %arrayidx20 = getelementptr inbounds %struct.ct_data, ptr %15, i64 %idxprom19, !mymd !75
  %fc = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx20, i32 0, i32 0, !mymd !76
  store i16 %conv18, ptr %fc, align 2, !mymd !77
  br label %for.inc21, !mymd !78

for.inc21:                                        ; preds = %if.end, %if.then
  %17 = load i32, ptr %n, align 4, !mymd !79
  %inc22 = add nsw i32 %17, 1, !mymd !80
  store i32 %inc22, ptr %n, align 4, !mymd !81
  br label %for.cond5, !llvm.loop !82, !mymd !83

for.end23:                                        ; preds = %for.cond5
  ret void, !mymd !84
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
!6 = !{!"7746"}
!7 = !{!"7747"}
!8 = !{!"7748"}
!9 = !{!"7749"}
!10 = !{!"7750"}
!11 = !{!"7751"}
!12 = !{!"7752"}
!13 = !{!"7753"}
!14 = !{!"7754"}
!15 = !{!"7755"}
!16 = !{!"7756"}
!17 = !{!"7757"}
!18 = !{!"7758"}
!19 = !{!"7759"}
!20 = !{!"7760"}
!21 = !{!"7761"}
!22 = !{!"7762"}
!23 = !{!"7763"}
!24 = !{!"7764"}
!25 = !{!"7765"}
!26 = !{!"7766"}
!27 = !{!"7767"}
!28 = !{!"7768"}
!29 = !{!"7769"}
!30 = !{!"7770"}
!31 = !{!"7771"}
!32 = !{!"7772"}
!33 = !{!"7773"}
!34 = !{!"7774"}
!35 = !{!"7775"}
!36 = !{!"7776"}
!37 = !{!"7777"}
!38 = !{!"7778"}
!39 = !{!"7779"}
!40 = !{!"7780"}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"7781"}
!44 = !{!"7782"}
!45 = !{!"7783"}
!46 = !{!"7784"}
!47 = !{!"7785"}
!48 = !{!"7786"}
!49 = !{!"7787"}
!50 = !{!"7788"}
!51 = !{!"7789"}
!52 = !{!"7790"}
!53 = !{!"7791"}
!54 = !{!"7792"}
!55 = !{!"7793"}
!56 = !{!"7794"}
!57 = !{!"7795"}
!58 = !{!"7796"}
!59 = !{!"7797"}
!60 = !{!"7798"}
!61 = !{!"7799"}
!62 = !{!"7800"}
!63 = !{!"7801"}
!64 = !{!"7802"}
!65 = !{!"7803"}
!66 = !{!"7804"}
!67 = !{!"7805"}
!68 = !{!"7806"}
!69 = !{!"7807"}
!70 = !{!"7808"}
!71 = !{!"7809"}
!72 = !{!"7810"}
!73 = !{!"7811"}
!74 = !{!"7812"}
!75 = !{!"7813"}
!76 = !{!"7814"}
!77 = !{!"7815"}
!78 = !{!"7816"}
!79 = !{!"7817"}
!80 = !{!"7818"}
!81 = !{!"7819"}
!82 = distinct !{!82, !42}
!83 = !{!"7820"}
!84 = !{!"7821"}
