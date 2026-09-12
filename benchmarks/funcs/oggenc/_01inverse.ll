; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_residue0 = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, i64, i64, i64 }
%struct.vorbis_info_residue0 = type { i64, i64, i32, i32, i32, [64 x i32], [256 x i32], [64 x float], [64 x float] }
%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @vorbis_book_decode(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @_01inverse(ptr noundef %vb, ptr noundef %vl, ptr noundef %in, i32 noundef %ch, ptr noundef %decodepart) #0 {
entry:
  %vb.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %decodepart.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %l = alloca i64, align 8
  %s = alloca i64, align 8
  %look = alloca ptr, align 8
  %info = alloca ptr, align 8
  %samples_per_partition = alloca i32, align 4
  %partitions_per_word = alloca i32, align 4
  %n = alloca i32, align 4
  %partvals = alloca i32, align 4
  %partwords = alloca i32, align 4
  %partword = alloca ptr, align 8
  %temp = alloca i32, align 4
  %offset = alloca i64, align 8
  %stagebook = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %vl, ptr %vl.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %decodepart, ptr %decodepart.addr, align 8
  %0 = load ptr, ptr %vl.addr, align 8
  store ptr %0, ptr %look, align 8
  %1 = load ptr, ptr %look, align 8
  %info1 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %info1, align 8
  store ptr %2, ptr %info, align 8
  %3 = load ptr, ptr %info, align 8
  %grouping = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %grouping, align 8
  store i32 %4, ptr %samples_per_partition, align 4
  %5 = load ptr, ptr %look, align 8
  %phrasebook = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %phrasebook, align 8
  %dim = getelementptr inbounds nuw %struct.codebook, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %dim, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, ptr %partitions_per_word, align 4
  %8 = load ptr, ptr %info, align 8
  %end = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %end, align 8
  %10 = load ptr, ptr %info, align 8
  %begin = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %begin, align 8
  %sub = sub nsw i64 %9, %11
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, ptr %n, align 4
  %12 = load i32, ptr %n, align 4
  %13 = load i32, ptr %samples_per_partition, align 4
  %div = sdiv i32 %12, %13
  store i32 %div, ptr %partvals, align 4
  %14 = load i32, ptr %partvals, align 4
  %15 = load i32, ptr %partitions_per_word, align 4
  %add = add nsw i32 %14, %15
  %sub3 = sub nsw i32 %add, 1
  %16 = load i32, ptr %partitions_per_word, align 4
  %div4 = sdiv i32 %sub3, %16
  store i32 %div4, ptr %partwords, align 4
  %17 = load i32, ptr %ch.addr, align 4
  %conv5 = sext i32 %17 to i64
  %mul = mul i64 %conv5, 8
  %18 = alloca i8, i64 %mul, align 16
  store ptr %18, ptr %partword, align 8
  store i64 0, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i64, ptr %j, align 8
  %20 = load i32, ptr %ch.addr, align 4
  %conv6 = sext i32 %20 to i64
  %cmp = icmp slt i64 %19, %conv6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %vb.addr, align 8
  %22 = load i32, ptr %partwords, align 4
  %conv8 = sext i32 %22 to i64
  %mul9 = mul i64 %conv8, 8
  %call = call ptr @_vorbis_block_alloc(ptr noundef %21, i64 noundef %mul9)
  %23 = load ptr, ptr %partword, align 8
  %24 = load i64, ptr %j, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %call, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i64, ptr %j, align 8
  %inc = add nsw i64 %25, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %s, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc96, %for.end
  %26 = load i64, ptr %s, align 8
  %27 = load ptr, ptr %look, align 8
  %stages = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %stages, align 4
  %conv11 = sext i32 %28 to i64
  %cmp12 = icmp slt i64 %26, %conv11
  br i1 %cmp12, label %for.body14, label %for.end98

for.body14:                                       ; preds = %for.cond10
  store i64 0, ptr %i, align 8
  store i64 0, ptr %l, align 8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc93, %for.body14
  %29 = load i64, ptr %i, align 8
  %30 = load i32, ptr %partvals, align 4
  %conv16 = sext i32 %30 to i64
  %cmp17 = icmp slt i64 %29, %conv16
  br i1 %cmp17, label %for.body19, label %for.end95

for.body19:                                       ; preds = %for.cond15
  %31 = load i64, ptr %s, align 8
  %cmp20 = icmp eq i64 %31, 0
  br i1 %cmp20, label %if.then, label %if.end45

if.then:                                          ; preds = %for.body19
  store i64 0, ptr %j, align 8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc42, %if.then
  %32 = load i64, ptr %j, align 8
  %33 = load i32, ptr %ch.addr, align 4
  %conv23 = sext i32 %33 to i64
  %cmp24 = icmp slt i64 %32, %conv23
  br i1 %cmp24, label %for.body26, label %for.end44

for.body26:                                       ; preds = %for.cond22
  %34 = load ptr, ptr %look, align 8
  %phrasebook27 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %phrasebook27, align 8
  %36 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %36, i32 0, i32 1
  %call28 = call i64 @vorbis_book_decode(ptr noundef %35, ptr noundef %opb)
  %conv29 = trunc i64 %call28 to i32
  store i32 %conv29, ptr %temp, align 4
  %37 = load i32, ptr %temp, align 4
  %cmp30 = icmp eq i32 %37, -1
  br i1 %cmp30, label %if.then32, label %if.end

if.then32:                                        ; preds = %for.body26
  br label %eopbreak

if.end:                                           ; preds = %for.body26
  %38 = load ptr, ptr %look, align 8
  %decodemap = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %38, i32 0, i32 7
  %39 = load ptr, ptr %decodemap, align 8
  %40 = load i32, ptr %temp, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %39, i64 %idxprom
  %41 = load ptr, ptr %arrayidx33, align 8
  %42 = load ptr, ptr %partword, align 8
  %43 = load i64, ptr %j, align 8
  %arrayidx34 = getelementptr inbounds ptr, ptr %42, i64 %43
  %44 = load ptr, ptr %arrayidx34, align 8
  %45 = load i64, ptr %l, align 8
  %arrayidx35 = getelementptr inbounds ptr, ptr %44, i64 %45
  store ptr %41, ptr %arrayidx35, align 8
  %46 = load ptr, ptr %partword, align 8
  %47 = load i64, ptr %j, align 8
  %arrayidx36 = getelementptr inbounds ptr, ptr %46, i64 %47
  %48 = load ptr, ptr %arrayidx36, align 8
  %49 = load i64, ptr %l, align 8
  %arrayidx37 = getelementptr inbounds ptr, ptr %48, i64 %49
  %50 = load ptr, ptr %arrayidx37, align 8
  %cmp38 = icmp eq ptr %50, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end
  br label %errout

if.end41:                                         ; preds = %if.end
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %51 = load i64, ptr %j, align 8
  %inc43 = add nsw i64 %51, 1
  store i64 %inc43, ptr %j, align 8
  br label %for.cond22, !llvm.loop !8

for.end44:                                        ; preds = %for.cond22
  br label %if.end45

if.end45:                                         ; preds = %for.end44, %for.body19
  store i64 0, ptr %k, align 8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc89, %if.end45
  %52 = load i64, ptr %k, align 8
  %53 = load i32, ptr %partitions_per_word, align 4
  %conv47 = sext i32 %53 to i64
  %cmp48 = icmp slt i64 %52, %conv47
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond46
  %54 = load i64, ptr %i, align 8
  %55 = load i32, ptr %partvals, align 4
  %conv50 = sext i32 %55 to i64
  %cmp51 = icmp slt i64 %54, %conv50
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond46
  %56 = phi i1 [ false, %for.cond46 ], [ %cmp51, %land.rhs ]
  br i1 %56, label %for.body53, label %for.end92

for.body53:                                       ; preds = %land.end
  store i64 0, ptr %j, align 8
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc86, %for.body53
  %57 = load i64, ptr %j, align 8
  %58 = load i32, ptr %ch.addr, align 4
  %conv55 = sext i32 %58 to i64
  %cmp56 = icmp slt i64 %57, %conv55
  br i1 %cmp56, label %for.body58, label %for.end88

for.body58:                                       ; preds = %for.cond54
  %59 = load ptr, ptr %info, align 8
  %begin59 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %59, i32 0, i32 0
  %60 = load i64, ptr %begin59, align 8
  %61 = load i64, ptr %i, align 8
  %62 = load i32, ptr %samples_per_partition, align 4
  %conv60 = sext i32 %62 to i64
  %mul61 = mul nsw i64 %61, %conv60
  %add62 = add nsw i64 %60, %mul61
  store i64 %add62, ptr %offset, align 8
  %63 = load ptr, ptr %info, align 8
  %secondstages = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %63, i32 0, i32 5
  %64 = load ptr, ptr %partword, align 8
  %65 = load i64, ptr %j, align 8
  %arrayidx63 = getelementptr inbounds ptr, ptr %64, i64 %65
  %66 = load ptr, ptr %arrayidx63, align 8
  %67 = load i64, ptr %l, align 8
  %arrayidx64 = getelementptr inbounds ptr, ptr %66, i64 %67
  %68 = load ptr, ptr %arrayidx64, align 8
  %69 = load i64, ptr %k, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %68, i64 %69
  %70 = load i32, ptr %arrayidx65, align 4
  %idxprom66 = sext i32 %70 to i64
  %arrayidx67 = getelementptr inbounds [64 x i32], ptr %secondstages, i64 0, i64 %idxprom66
  %71 = load i32, ptr %arrayidx67, align 4
  %72 = load i64, ptr %s, align 8
  %sh_prom = trunc i64 %72 to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %71, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then68, label %if.end85

if.then68:                                        ; preds = %for.body58
  %73 = load ptr, ptr %look, align 8
  %partbooks = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %73, i32 0, i32 5
  %74 = load ptr, ptr %partbooks, align 8
  %75 = load ptr, ptr %partword, align 8
  %76 = load i64, ptr %j, align 8
  %arrayidx69 = getelementptr inbounds ptr, ptr %75, i64 %76
  %77 = load ptr, ptr %arrayidx69, align 8
  %78 = load i64, ptr %l, align 8
  %arrayidx70 = getelementptr inbounds ptr, ptr %77, i64 %78
  %79 = load ptr, ptr %arrayidx70, align 8
  %80 = load i64, ptr %k, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %79, i64 %80
  %81 = load i32, ptr %arrayidx71, align 4
  %idxprom72 = sext i32 %81 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %74, i64 %idxprom72
  %82 = load ptr, ptr %arrayidx73, align 8
  %83 = load i64, ptr %s, align 8
  %arrayidx74 = getelementptr inbounds ptr, ptr %82, i64 %83
  %84 = load ptr, ptr %arrayidx74, align 8
  store ptr %84, ptr %stagebook, align 8
  %85 = load ptr, ptr %stagebook, align 8
  %tobool75 = icmp ne ptr %85, null
  br i1 %tobool75, label %if.then76, label %if.end84

if.then76:                                        ; preds = %if.then68
  %86 = load ptr, ptr %decodepart.addr, align 8
  %87 = load ptr, ptr %stagebook, align 8
  %88 = load ptr, ptr %in.addr, align 8
  %89 = load i64, ptr %j, align 8
  %arrayidx77 = getelementptr inbounds ptr, ptr %88, i64 %89
  %90 = load ptr, ptr %arrayidx77, align 8
  %91 = load i64, ptr %offset, align 8
  %add.ptr = getelementptr inbounds float, ptr %90, i64 %91
  %92 = load ptr, ptr %vb.addr, align 8
  %opb78 = getelementptr inbounds nuw %struct.vorbis_block, ptr %92, i32 0, i32 1
  %93 = load i32, ptr %samples_per_partition, align 4
  %call79 = call i64 %86(ptr noundef %87, ptr noundef %add.ptr, ptr noundef %opb78, i32 noundef %93)
  %cmp80 = icmp eq i64 %call79, -1
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then76
  br label %eopbreak

if.end83:                                         ; preds = %if.then76
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then68
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %for.body58
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85
  %94 = load i64, ptr %j, align 8
  %inc87 = add nsw i64 %94, 1
  store i64 %inc87, ptr %j, align 8
  br label %for.cond54, !llvm.loop !9

for.end88:                                        ; preds = %for.cond54
  br label %for.inc89

for.inc89:                                        ; preds = %for.end88
  %95 = load i64, ptr %k, align 8
  %inc90 = add nsw i64 %95, 1
  store i64 %inc90, ptr %k, align 8
  %96 = load i64, ptr %i, align 8
  %inc91 = add nsw i64 %96, 1
  store i64 %inc91, ptr %i, align 8
  br label %for.cond46, !llvm.loop !10

for.end92:                                        ; preds = %land.end
  br label %for.inc93

for.inc93:                                        ; preds = %for.end92
  %97 = load i64, ptr %l, align 8
  %inc94 = add nsw i64 %97, 1
  store i64 %inc94, ptr %l, align 8
  br label %for.cond15, !llvm.loop !11

for.end95:                                        ; preds = %for.cond15
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %98 = load i64, ptr %s, align 8
  %inc97 = add nsw i64 %98, 1
  store i64 %inc97, ptr %s, align 8
  br label %for.cond10, !llvm.loop !12

for.end98:                                        ; preds = %for.cond10
  br label %errout

errout:                                           ; preds = %for.end98, %if.then40
  br label %eopbreak

eopbreak:                                         ; preds = %errout, %if.then82, %if.then32
  ret i32 0
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
