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
declare dso_local i64 @vorbis_book_decodevv_add(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @res2_inverse(ptr noundef %vb, ptr noundef %vl, ptr noundef %in, ptr noundef %nonzero, i32 noundef %ch) #0 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %nonzero.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %i = alloca i64, align 8
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
  %stagebook = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %vl, ptr %vl.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %nonzero, ptr %nonzero.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
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
  %17 = load ptr, ptr %vb.addr, align 8
  %18 = load i32, ptr %partwords, align 4
  %conv5 = sext i32 %18 to i64
  %mul = mul i64 %conv5, 8
  %call = call ptr @_vorbis_block_alloc(ptr noundef %17, i64 noundef %mul)
  store ptr %call, ptr %partword, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i64, ptr %i, align 8
  %20 = load i32, ptr %ch.addr, align 4
  %conv6 = sext i32 %20 to i64
  %cmp = icmp slt i64 %19, %conv6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %nonzero.addr, align 8
  %22 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %21, i64 %22
  %23 = load i32, ptr %arrayidx, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i64, ptr %i, align 8
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %25 = load i64, ptr %i, align 8
  %26 = load i32, ptr %ch.addr, align 4
  %conv8 = sext i32 %26 to i64
  %cmp9 = icmp eq i64 %25, %conv8
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %for.end
  store i64 0, ptr %s, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc81, %if.end12
  %27 = load i64, ptr %s, align 8
  %28 = load ptr, ptr %look, align 8
  %stages = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %stages, align 4
  %conv14 = sext i32 %29 to i64
  %cmp15 = icmp slt i64 %27, %conv14
  br i1 %cmp15, label %for.body17, label %for.end83

for.body17:                                       ; preds = %for.cond13
  store i64 0, ptr %i, align 8
  store i64 0, ptr %l, align 8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc78, %for.body17
  %30 = load i64, ptr %i, align 8
  %31 = load i32, ptr %partvals, align 4
  %conv19 = sext i32 %31 to i64
  %cmp20 = icmp slt i64 %30, %conv19
  br i1 %cmp20, label %for.body22, label %for.end80

for.body22:                                       ; preds = %for.cond18
  %32 = load i64, ptr %s, align 8
  %cmp23 = icmp eq i64 %32, 0
  br i1 %cmp23, label %if.then25, label %if.end40

if.then25:                                        ; preds = %for.body22
  %33 = load ptr, ptr %look, align 8
  %phrasebook26 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %phrasebook26, align 8
  %35 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %35, i32 0, i32 1
  %call27 = call i64 @vorbis_book_decode(ptr noundef %34, ptr noundef %opb)
  %conv28 = trunc i64 %call27 to i32
  store i32 %conv28, ptr %temp, align 4
  %36 = load i32, ptr %temp, align 4
  %cmp29 = icmp eq i32 %36, -1
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then25
  br label %eopbreak

if.end32:                                         ; preds = %if.then25
  %37 = load ptr, ptr %look, align 8
  %decodemap = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %37, i32 0, i32 7
  %38 = load ptr, ptr %decodemap, align 8
  %39 = load i32, ptr %temp, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %38, i64 %idxprom
  %40 = load ptr, ptr %arrayidx33, align 8
  %41 = load ptr, ptr %partword, align 8
  %42 = load i64, ptr %l, align 8
  %arrayidx34 = getelementptr inbounds ptr, ptr %41, i64 %42
  store ptr %40, ptr %arrayidx34, align 8
  %43 = load ptr, ptr %partword, align 8
  %44 = load i64, ptr %l, align 8
  %arrayidx35 = getelementptr inbounds ptr, ptr %43, i64 %44
  %45 = load ptr, ptr %arrayidx35, align 8
  %cmp36 = icmp eq ptr %45, null
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end32
  br label %errout

if.end39:                                         ; preds = %if.end32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %for.body22
  store i64 0, ptr %k, align 8
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc74, %if.end40
  %46 = load i64, ptr %k, align 8
  %47 = load i32, ptr %partitions_per_word, align 4
  %conv42 = sext i32 %47 to i64
  %cmp43 = icmp slt i64 %46, %conv42
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond41
  %48 = load i64, ptr %i, align 8
  %49 = load i32, ptr %partvals, align 4
  %conv45 = sext i32 %49 to i64
  %cmp46 = icmp slt i64 %48, %conv45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond41
  %50 = phi i1 [ false, %for.cond41 ], [ %cmp46, %land.rhs ]
  br i1 %50, label %for.body48, label %for.end77

for.body48:                                       ; preds = %land.end
  %51 = load ptr, ptr %info, align 8
  %secondstages = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %51, i32 0, i32 5
  %52 = load ptr, ptr %partword, align 8
  %53 = load i64, ptr %l, align 8
  %arrayidx49 = getelementptr inbounds ptr, ptr %52, i64 %53
  %54 = load ptr, ptr %arrayidx49, align 8
  %55 = load i64, ptr %k, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %54, i64 %55
  %56 = load i32, ptr %arrayidx50, align 4
  %idxprom51 = sext i32 %56 to i64
  %arrayidx52 = getelementptr inbounds [64 x i32], ptr %secondstages, i64 0, i64 %idxprom51
  %57 = load i32, ptr %arrayidx52, align 4
  %58 = load i64, ptr %s, align 8
  %sh_prom = trunc i64 %58 to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %57, %shl
  %tobool53 = icmp ne i32 %and, 0
  br i1 %tobool53, label %if.then54, label %if.end73

if.then54:                                        ; preds = %for.body48
  %59 = load ptr, ptr %look, align 8
  %partbooks = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %59, i32 0, i32 5
  %60 = load ptr, ptr %partbooks, align 8
  %61 = load ptr, ptr %partword, align 8
  %62 = load i64, ptr %l, align 8
  %arrayidx55 = getelementptr inbounds ptr, ptr %61, i64 %62
  %63 = load ptr, ptr %arrayidx55, align 8
  %64 = load i64, ptr %k, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %63, i64 %64
  %65 = load i32, ptr %arrayidx56, align 4
  %idxprom57 = sext i32 %65 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %60, i64 %idxprom57
  %66 = load ptr, ptr %arrayidx58, align 8
  %67 = load i64, ptr %s, align 8
  %arrayidx59 = getelementptr inbounds ptr, ptr %66, i64 %67
  %68 = load ptr, ptr %arrayidx59, align 8
  store ptr %68, ptr %stagebook, align 8
  %69 = load ptr, ptr %stagebook, align 8
  %tobool60 = icmp ne ptr %69, null
  br i1 %tobool60, label %if.then61, label %if.end72

if.then61:                                        ; preds = %if.then54
  %70 = load ptr, ptr %stagebook, align 8
  %71 = load ptr, ptr %in.addr, align 8
  %72 = load i64, ptr %i, align 8
  %73 = load i32, ptr %samples_per_partition, align 4
  %conv62 = sext i32 %73 to i64
  %mul63 = mul nsw i64 %72, %conv62
  %74 = load ptr, ptr %info, align 8
  %begin64 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %74, i32 0, i32 0
  %75 = load i64, ptr %begin64, align 8
  %add65 = add nsw i64 %mul63, %75
  %76 = load i32, ptr %ch.addr, align 4
  %77 = load ptr, ptr %vb.addr, align 8
  %opb66 = getelementptr inbounds nuw %struct.vorbis_block, ptr %77, i32 0, i32 1
  %78 = load i32, ptr %samples_per_partition, align 4
  %call67 = call i64 @vorbis_book_decodevv_add(ptr noundef %70, ptr noundef %71, i64 noundef %add65, i32 noundef %76, ptr noundef %opb66, i32 noundef %78)
  %cmp68 = icmp eq i64 %call67, -1
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then61
  br label %eopbreak

if.end71:                                         ; preds = %if.then61
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then54
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %for.body48
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73
  %79 = load i64, ptr %k, align 8
  %inc75 = add nsw i64 %79, 1
  store i64 %inc75, ptr %k, align 8
  %80 = load i64, ptr %i, align 8
  %inc76 = add nsw i64 %80, 1
  store i64 %inc76, ptr %i, align 8
  br label %for.cond41, !llvm.loop !8

for.end77:                                        ; preds = %land.end
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %81 = load i64, ptr %l, align 8
  %inc79 = add nsw i64 %81, 1
  store i64 %inc79, ptr %l, align 8
  br label %for.cond18, !llvm.loop !9

for.end80:                                        ; preds = %for.cond18
  br label %for.inc81

for.inc81:                                        ; preds = %for.end80
  %82 = load i64, ptr %s, align 8
  %inc82 = add nsw i64 %82, 1
  store i64 %inc82, ptr %s, align 8
  br label %for.cond13, !llvm.loop !10

for.end83:                                        ; preds = %for.cond13
  br label %errout

errout:                                           ; preds = %for.end83, %if.then38
  br label %eopbreak

eopbreak:                                         ; preds = %errout, %if.then70, %if.then31
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %eopbreak, %if.then11
  %83 = load i32, ptr %retval, align 4
  ret i32 %83
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
