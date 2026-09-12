; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_residue0 = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, i64, i64, i64 }
%struct.vorbis_info_residue0 = type { i64, i64, i32, i32, i32, [64 x i32], [256 x i32], [64 x float], [64 x float] }
%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_book_encode(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_01forward(ptr noundef %vb, ptr noundef %vl, ptr noundef %in, i32 noundef %ch, ptr noundef %partword, ptr noundef %encode) #1 {
entry:
  %vb.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %partword.addr = alloca ptr, align 8
  %encode.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %s = alloca i64, align 8
  %look = alloca ptr, align 8
  %info = alloca ptr, align 8
  %samples_per_partition = alloca i32, align 4
  %possible_partitions = alloca i32, align 4
  %partitions_per_word = alloca i32, align 4
  %n = alloca i32, align 4
  %partvals = alloca i32, align 4
  %resbits = alloca [128 x i64], align 16
  %resvals = alloca [128 x i64], align 16
  %val = alloca i64, align 8
  %offset = alloca i64, align 8
  %statebook = alloca ptr, align 8
  %ret = alloca i32, align 4
  %accumulator = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %vl, ptr %vl.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %partword, ptr %partword.addr, align 8
  store ptr %encode, ptr %encode.addr, align 8
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
  %5 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %partitions, align 4
  store i32 %6, ptr %possible_partitions, align 4
  %7 = load ptr, ptr %look, align 8
  %phrasebook = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %phrasebook, align 8
  %dim = getelementptr inbounds nuw %struct.codebook, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %dim, align 8
  %conv = trunc i64 %9 to i32
  store i32 %conv, ptr %partitions_per_word, align 4
  %10 = load ptr, ptr %info, align 8
  %end = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %end, align 8
  %12 = load ptr, ptr %info, align 8
  %begin = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %begin, align 8
  %sub = sub nsw i64 %11, %13
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, ptr %n, align 4
  %14 = load i32, ptr %n, align 4
  %15 = load i32, ptr %samples_per_partition, align 4
  %div = sdiv i32 %14, %15
  store i32 %div, ptr %partvals, align 4
  %arraydecay = getelementptr inbounds [128 x i64], ptr %resbits, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 1024, i1 false)
  %arraydecay3 = getelementptr inbounds [128 x i64], ptr %resvals, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay3, i8 0, i64 1024, i1 false)
  store i64 0, ptr %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc102, %entry
  %16 = load i64, ptr %s, align 8
  %17 = load ptr, ptr %look, align 8
  %stages = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %stages, align 4
  %conv4 = sext i32 %18 to i64
  %cmp = icmp slt i64 %16, %conv4
  br i1 %cmp, label %for.body, label %for.end104

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %i, align 8
  br label %for.cond6

for.cond6:                                        ; preds = %for.end100, %for.body
  %19 = load i64, ptr %i, align 8
  %20 = load i32, ptr %partvals, align 4
  %conv7 = sext i32 %20 to i64
  %cmp8 = icmp slt i64 %19, %conv7
  br i1 %cmp8, label %for.body10, label %for.end101

for.body10:                                       ; preds = %for.cond6
  %21 = load i64, ptr %s, align 8
  %cmp11 = icmp eq i64 %21, 0
  br i1 %cmp11, label %if.then, label %if.end45

if.then:                                          ; preds = %for.body10
  store i64 0, ptr %j, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc42, %if.then
  %22 = load i64, ptr %j, align 8
  %23 = load i32, ptr %ch.addr, align 4
  %conv14 = sext i32 %23 to i64
  %cmp15 = icmp slt i64 %22, %conv14
  br i1 %cmp15, label %for.body17, label %for.end44

for.body17:                                       ; preds = %for.cond13
  %24 = load ptr, ptr %partword.addr, align 8
  %25 = load i64, ptr %j, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %24, i64 %25
  %26 = load ptr, ptr %arrayidx, align 8
  %27 = load i64, ptr %i, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %26, i64 %27
  %28 = load i64, ptr %arrayidx18, align 8
  store i64 %28, ptr %val, align 8
  store i64 1, ptr %k, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %for.body17
  %29 = load i64, ptr %k, align 8
  %30 = load i32, ptr %partitions_per_word, align 4
  %conv20 = sext i32 %30 to i64
  %cmp21 = icmp slt i64 %29, %conv20
  br i1 %cmp21, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond19
  %31 = load i32, ptr %possible_partitions, align 4
  %conv24 = sext i32 %31 to i64
  %32 = load i64, ptr %val, align 8
  %mul = mul nsw i64 %32, %conv24
  store i64 %mul, ptr %val, align 8
  %33 = load i64, ptr %i, align 8
  %34 = load i64, ptr %k, align 8
  %add = add nsw i64 %33, %34
  %35 = load i32, ptr %partvals, align 4
  %conv25 = sext i32 %35 to i64
  %cmp26 = icmp slt i64 %add, %conv25
  br i1 %cmp26, label %if.then28, label %if.end

if.then28:                                        ; preds = %for.body23
  %36 = load ptr, ptr %partword.addr, align 8
  %37 = load i64, ptr %j, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %36, i64 %37
  %38 = load ptr, ptr %arrayidx29, align 8
  %39 = load i64, ptr %i, align 8
  %40 = load i64, ptr %k, align 8
  %add30 = add nsw i64 %39, %40
  %arrayidx31 = getelementptr inbounds i64, ptr %38, i64 %add30
  %41 = load i64, ptr %arrayidx31, align 8
  %42 = load i64, ptr %val, align 8
  %add32 = add nsw i64 %42, %41
  store i64 %add32, ptr %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then28, %for.body23
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i64, ptr %k, align 8
  %inc = add nsw i64 %43, 1
  store i64 %inc, ptr %k, align 8
  br label %for.cond19, !llvm.loop !6

for.end:                                          ; preds = %for.cond19
  %44 = load i64, ptr %val, align 8
  %45 = load ptr, ptr %look, align 8
  %phrasebook33 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %phrasebook33, align 8
  %entries = getelementptr inbounds nuw %struct.codebook, ptr %46, i32 0, i32 1
  %47 = load i64, ptr %entries, align 8
  %cmp34 = icmp slt i64 %44, %47
  br i1 %cmp34, label %if.then36, label %if.end41

if.then36:                                        ; preds = %for.end
  %48 = load ptr, ptr %look, align 8
  %phrasebook37 = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %phrasebook37, align 8
  %50 = load i64, ptr %val, align 8
  %conv38 = trunc i64 %50 to i32
  %51 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %51, i32 0, i32 1
  %call = call i32 @vorbis_book_encode(ptr noundef %49, i32 noundef %conv38, ptr noundef %opb)
  %conv39 = sext i32 %call to i64
  %52 = load ptr, ptr %look, align 8
  %phrasebits = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %52, i32 0, i32 9
  %53 = load i64, ptr %phrasebits, align 8
  %add40 = add nsw i64 %53, %conv39
  store i64 %add40, ptr %phrasebits, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %for.end
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %54 = load i64, ptr %j, align 8
  %inc43 = add nsw i64 %54, 1
  store i64 %inc43, ptr %j, align 8
  br label %for.cond13, !llvm.loop !8

for.end44:                                        ; preds = %for.cond13
  br label %if.end45

if.end45:                                         ; preds = %for.end44, %for.body10
  store i64 0, ptr %k, align 8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc97, %if.end45
  %55 = load i64, ptr %k, align 8
  %56 = load i32, ptr %partitions_per_word, align 4
  %conv47 = sext i32 %56 to i64
  %cmp48 = icmp slt i64 %55, %conv47
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond46
  %57 = load i64, ptr %i, align 8
  %58 = load i32, ptr %partvals, align 4
  %conv50 = sext i32 %58 to i64
  %cmp51 = icmp slt i64 %57, %conv50
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond46
  %59 = phi i1 [ false, %for.cond46 ], [ %cmp51, %land.rhs ]
  br i1 %59, label %for.body53, label %for.end100

for.body53:                                       ; preds = %land.end
  %60 = load i64, ptr %i, align 8
  %61 = load i32, ptr %samples_per_partition, align 4
  %conv54 = sext i32 %61 to i64
  %mul55 = mul nsw i64 %60, %conv54
  %62 = load ptr, ptr %info, align 8
  %begin56 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %62, i32 0, i32 0
  %63 = load i64, ptr %begin56, align 8
  %add57 = add nsw i64 %mul55, %63
  store i64 %add57, ptr %offset, align 8
  store i64 0, ptr %j, align 8
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc94, %for.body53
  %64 = load i64, ptr %j, align 8
  %65 = load i32, ptr %ch.addr, align 4
  %conv59 = sext i32 %65 to i64
  %cmp60 = icmp slt i64 %64, %conv59
  br i1 %cmp60, label %for.body62, label %for.end96

for.body62:                                       ; preds = %for.cond58
  %66 = load i64, ptr %s, align 8
  %cmp63 = icmp eq i64 %66, 0
  br i1 %cmp63, label %if.then65, label %if.end71

if.then65:                                        ; preds = %for.body62
  %67 = load i32, ptr %samples_per_partition, align 4
  %conv66 = sext i32 %67 to i64
  %68 = load ptr, ptr %partword.addr, align 8
  %69 = load i64, ptr %j, align 8
  %arrayidx67 = getelementptr inbounds ptr, ptr %68, i64 %69
  %70 = load ptr, ptr %arrayidx67, align 8
  %71 = load i64, ptr %i, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %70, i64 %71
  %72 = load i64, ptr %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds [128 x i64], ptr %resvals, i64 0, i64 %72
  %73 = load i64, ptr %arrayidx69, align 8
  %add70 = add nsw i64 %73, %conv66
  store i64 %add70, ptr %arrayidx69, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %for.body62
  %74 = load ptr, ptr %info, align 8
  %secondstages = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %74, i32 0, i32 5
  %75 = load ptr, ptr %partword.addr, align 8
  %76 = load i64, ptr %j, align 8
  %arrayidx72 = getelementptr inbounds ptr, ptr %75, i64 %76
  %77 = load ptr, ptr %arrayidx72, align 8
  %78 = load i64, ptr %i, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %77, i64 %78
  %79 = load i64, ptr %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds [64 x i32], ptr %secondstages, i64 0, i64 %79
  %80 = load i32, ptr %arrayidx74, align 4
  %81 = load i64, ptr %s, align 8
  %sh_prom = trunc i64 %81 to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %80, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then75, label %if.end93

if.then75:                                        ; preds = %if.end71
  %82 = load ptr, ptr %look, align 8
  %partbooks = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %82, i32 0, i32 5
  %83 = load ptr, ptr %partbooks, align 8
  %84 = load ptr, ptr %partword.addr, align 8
  %85 = load i64, ptr %j, align 8
  %arrayidx76 = getelementptr inbounds ptr, ptr %84, i64 %85
  %86 = load ptr, ptr %arrayidx76, align 8
  %87 = load i64, ptr %i, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %86, i64 %87
  %88 = load i64, ptr %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds ptr, ptr %83, i64 %88
  %89 = load ptr, ptr %arrayidx78, align 8
  %90 = load i64, ptr %s, align 8
  %arrayidx79 = getelementptr inbounds ptr, ptr %89, i64 %90
  %91 = load ptr, ptr %arrayidx79, align 8
  store ptr %91, ptr %statebook, align 8
  %92 = load ptr, ptr %statebook, align 8
  %tobool80 = icmp ne ptr %92, null
  br i1 %tobool80, label %if.then81, label %if.end92

if.then81:                                        ; preds = %if.then75
  store ptr null, ptr %accumulator, align 8
  %93 = load ptr, ptr %encode.addr, align 8
  %94 = load ptr, ptr %vb.addr, align 8
  %opb82 = getelementptr inbounds nuw %struct.vorbis_block, ptr %94, i32 0, i32 1
  %95 = load ptr, ptr %in.addr, align 8
  %96 = load i64, ptr %j, align 8
  %arrayidx83 = getelementptr inbounds ptr, ptr %95, i64 %96
  %97 = load ptr, ptr %arrayidx83, align 8
  %98 = load i64, ptr %offset, align 8
  %add.ptr = getelementptr inbounds float, ptr %97, i64 %98
  %99 = load i32, ptr %samples_per_partition, align 4
  %100 = load ptr, ptr %statebook, align 8
  %101 = load ptr, ptr %accumulator, align 8
  %call84 = call i32 %93(ptr noundef %opb82, ptr noundef %add.ptr, i32 noundef %99, ptr noundef %100, ptr noundef %101)
  store i32 %call84, ptr %ret, align 4
  %102 = load i32, ptr %ret, align 4
  %conv85 = sext i32 %102 to i64
  %103 = load ptr, ptr %look, align 8
  %postbits = getelementptr inbounds nuw %struct.vorbis_look_residue0, ptr %103, i32 0, i32 8
  %104 = load i64, ptr %postbits, align 8
  %add86 = add nsw i64 %104, %conv85
  store i64 %add86, ptr %postbits, align 8
  %105 = load i32, ptr %ret, align 4
  %conv87 = sext i32 %105 to i64
  %106 = load ptr, ptr %partword.addr, align 8
  %107 = load i64, ptr %j, align 8
  %arrayidx88 = getelementptr inbounds ptr, ptr %106, i64 %107
  %108 = load ptr, ptr %arrayidx88, align 8
  %109 = load i64, ptr %i, align 8
  %arrayidx89 = getelementptr inbounds i64, ptr %108, i64 %109
  %110 = load i64, ptr %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds [128 x i64], ptr %resbits, i64 0, i64 %110
  %111 = load i64, ptr %arrayidx90, align 8
  %add91 = add nsw i64 %111, %conv87
  store i64 %add91, ptr %arrayidx90, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then81, %if.then75
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end71
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %112 = load i64, ptr %j, align 8
  %inc95 = add nsw i64 %112, 1
  store i64 %inc95, ptr %j, align 8
  br label %for.cond58, !llvm.loop !9

for.end96:                                        ; preds = %for.cond58
  br label %for.inc97

for.inc97:                                        ; preds = %for.end96
  %113 = load i64, ptr %k, align 8
  %inc98 = add nsw i64 %113, 1
  store i64 %inc98, ptr %k, align 8
  %114 = load i64, ptr %i, align 8
  %inc99 = add nsw i64 %114, 1
  store i64 %inc99, ptr %i, align 8
  br label %for.cond46, !llvm.loop !10

for.end100:                                       ; preds = %land.end
  br label %for.cond6, !llvm.loop !11

for.end101:                                       ; preds = %for.cond6
  br label %for.inc102

for.inc102:                                       ; preds = %for.end101
  %115 = load i64, ptr %s, align 8
  %inc103 = add nsw i64 %115, 1
  store i64 %inc103, ptr %s, align 8
  br label %for.cond, !llvm.loop !12

for.end104:                                       ; preds = %for.cond
  ret i32 0
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
