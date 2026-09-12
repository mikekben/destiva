; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info_floor1 = type { i32, [31 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x [8 x i32]], i32, [65 x i32], float, float, float, float, float, i32 }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @floor1_unpack(ptr noundef %vi, ptr noundef %opb) #1 {
entry:
  %retval = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %count = alloca i32, align 4
  %maxclass = alloca i32, align 4
  %rangebits = alloca i32, align 4
  %info = alloca ptr, align 8
  %t = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  store i32 0, ptr %count, align 4
  store i32 -1, ptr %maxclass, align 4
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 1120) #2
  store ptr %call, ptr %info, align 8
  %2 = load ptr, ptr %opb.addr, align 8
  %call1 = call i64 @oggpack_read(ptr noundef %2, i32 noundef 5)
  %conv = trunc i64 %call1 to i32
  %3 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %3, i32 0, i32 0
  store i32 %conv, ptr %partitions, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %j, align 4
  %5 = load ptr, ptr %info, align 8
  %partitions2 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %partitions2, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %opb.addr, align 8
  %call4 = call i64 @oggpack_read(ptr noundef %7, i32 noundef 4)
  %conv5 = trunc i64 %call4 to i32
  %8 = load ptr, ptr %info, align 8
  %partitionclass = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %j, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [31 x i32], ptr %partitionclass, i64 0, i64 %idxprom
  store i32 %conv5, ptr %arrayidx, align 4
  %10 = load i32, ptr %maxclass, align 4
  %11 = load ptr, ptr %info, align 8
  %partitionclass6 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [31 x i32], ptr %partitionclass6, i64 0, i64 %idxprom7
  %13 = load i32, ptr %arrayidx8, align 4
  %cmp9 = icmp slt i32 %10, %13
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %info, align 8
  %partitionclass11 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [31 x i32], ptr %partitionclass11, i64 0, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4
  store i32 %16, ptr %maxclass, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc89, %for.end
  %18 = load i32, ptr %j, align 4
  %19 = load i32, ptr %maxclass, align 4
  %add = add nsw i32 %19, 1
  %cmp15 = icmp slt i32 %18, %add
  br i1 %cmp15, label %for.body17, label %for.end91

for.body17:                                       ; preds = %for.cond14
  %20 = load ptr, ptr %opb.addr, align 8
  %call18 = call i64 @oggpack_read(ptr noundef %20, i32 noundef 3)
  %add19 = add nsw i64 %call18, 1
  %conv20 = trunc i64 %add19 to i32
  %21 = load ptr, ptr %info, align 8
  %class_dim = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %j, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %class_dim, i64 0, i64 %idxprom21
  store i32 %conv20, ptr %arrayidx22, align 4
  %23 = load ptr, ptr %opb.addr, align 8
  %call23 = call i64 @oggpack_read(ptr noundef %23, i32 noundef 2)
  %conv24 = trunc i64 %call23 to i32
  %24 = load ptr, ptr %info, align 8
  %class_subs = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds [16 x i32], ptr %class_subs, i64 0, i64 %idxprom25
  store i32 %conv24, ptr %arrayidx26, align 4
  %26 = load ptr, ptr %info, align 8
  %class_subs27 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %j, align 4
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds [16 x i32], ptr %class_subs27, i64 0, i64 %idxprom28
  %28 = load i32, ptr %arrayidx29, align 4
  %cmp30 = icmp slt i32 %28, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body17
  br label %err_out

if.end33:                                         ; preds = %for.body17
  %29 = load ptr, ptr %info, align 8
  %class_subs34 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %j, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds [16 x i32], ptr %class_subs34, i64 0, i64 %idxprom35
  %31 = load i32, ptr %arrayidx36, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.end33
  %32 = load ptr, ptr %opb.addr, align 8
  %call38 = call i64 @oggpack_read(ptr noundef %32, i32 noundef 8)
  %conv39 = trunc i64 %call38 to i32
  %33 = load ptr, ptr %info, align 8
  %class_book = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %33, i32 0, i32 4
  %34 = load i32, ptr %j, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [16 x i32], ptr %class_book, i64 0, i64 %idxprom40
  store i32 %conv39, ptr %arrayidx41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end33
  %35 = load ptr, ptr %info, align 8
  %class_book43 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %j, align 4
  %idxprom44 = sext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds [16 x i32], ptr %class_book43, i64 0, i64 %idxprom44
  %37 = load i32, ptr %arrayidx45, align 4
  %cmp46 = icmp slt i32 %37, 0
  br i1 %cmp46, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end42
  %38 = load ptr, ptr %info, align 8
  %class_book48 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %j, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [16 x i32], ptr %class_book48, i64 0, i64 %idxprom49
  %40 = load i32, ptr %arrayidx50, align 4
  %41 = load ptr, ptr %ci, align 8
  %books = getelementptr inbounds nuw %struct.codec_setup_info, ptr %41, i32 0, i32 5
  %42 = load i32, ptr %books, align 8
  %cmp51 = icmp sge i32 %40, %42
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false, %if.end42
  br label %err_out

if.end54:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %k, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc86, %if.end54
  %43 = load i32, ptr %k, align 4
  %44 = load ptr, ptr %info, align 8
  %class_subs56 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %44, i32 0, i32 3
  %45 = load i32, ptr %j, align 4
  %idxprom57 = sext i32 %45 to i64
  %arrayidx58 = getelementptr inbounds [16 x i32], ptr %class_subs56, i64 0, i64 %idxprom57
  %46 = load i32, ptr %arrayidx58, align 4
  %shl = shl i32 1, %46
  %cmp59 = icmp slt i32 %43, %shl
  br i1 %cmp59, label %for.body61, label %for.end88

for.body61:                                       ; preds = %for.cond55
  %47 = load ptr, ptr %opb.addr, align 8
  %call62 = call i64 @oggpack_read(ptr noundef %47, i32 noundef 8)
  %sub = sub nsw i64 %call62, 1
  %conv63 = trunc i64 %sub to i32
  %48 = load ptr, ptr %info, align 8
  %class_subbook = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %48, i32 0, i32 5
  %49 = load i32, ptr %j, align 4
  %idxprom64 = sext i32 %49 to i64
  %arrayidx65 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook, i64 0, i64 %idxprom64
  %50 = load i32, ptr %k, align 4
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds [8 x i32], ptr %arrayidx65, i64 0, i64 %idxprom66
  store i32 %conv63, ptr %arrayidx67, align 4
  %51 = load ptr, ptr %info, align 8
  %class_subbook68 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %51, i32 0, i32 5
  %52 = load i32, ptr %j, align 4
  %idxprom69 = sext i32 %52 to i64
  %arrayidx70 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook68, i64 0, i64 %idxprom69
  %53 = load i32, ptr %k, align 4
  %idxprom71 = sext i32 %53 to i64
  %arrayidx72 = getelementptr inbounds [8 x i32], ptr %arrayidx70, i64 0, i64 %idxprom71
  %54 = load i32, ptr %arrayidx72, align 4
  %cmp73 = icmp slt i32 %54, -1
  br i1 %cmp73, label %if.then84, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %for.body61
  %55 = load ptr, ptr %info, align 8
  %class_subbook76 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %55, i32 0, i32 5
  %56 = load i32, ptr %j, align 4
  %idxprom77 = sext i32 %56 to i64
  %arrayidx78 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook76, i64 0, i64 %idxprom77
  %57 = load i32, ptr %k, align 4
  %idxprom79 = sext i32 %57 to i64
  %arrayidx80 = getelementptr inbounds [8 x i32], ptr %arrayidx78, i64 0, i64 %idxprom79
  %58 = load i32, ptr %arrayidx80, align 4
  %59 = load ptr, ptr %ci, align 8
  %books81 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %59, i32 0, i32 5
  %60 = load i32, ptr %books81, align 8
  %cmp82 = icmp sge i32 %58, %60
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %lor.lhs.false75, %for.body61
  br label %err_out

if.end85:                                         ; preds = %lor.lhs.false75
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85
  %61 = load i32, ptr %k, align 4
  %inc87 = add nsw i32 %61, 1
  store i32 %inc87, ptr %k, align 4
  br label %for.cond55, !llvm.loop !8

for.end88:                                        ; preds = %for.cond55
  br label %for.inc89

for.inc89:                                        ; preds = %for.end88
  %62 = load i32, ptr %j, align 4
  %inc90 = add nsw i32 %62, 1
  store i32 %inc90, ptr %j, align 4
  br label %for.cond14, !llvm.loop !9

for.end91:                                        ; preds = %for.cond14
  %63 = load ptr, ptr %opb.addr, align 8
  %call92 = call i64 @oggpack_read(ptr noundef %63, i32 noundef 2)
  %add93 = add nsw i64 %call92, 1
  %conv94 = trunc i64 %add93 to i32
  %64 = load ptr, ptr %info, align 8
  %mult = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %64, i32 0, i32 6
  store i32 %conv94, ptr %mult, align 4
  %65 = load ptr, ptr %opb.addr, align 8
  %call95 = call i64 @oggpack_read(ptr noundef %65, i32 noundef 4)
  %conv96 = trunc i64 %call95 to i32
  store i32 %conv96, ptr %rangebits, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc129, %for.end91
  %66 = load i32, ptr %j, align 4
  %67 = load ptr, ptr %info, align 8
  %partitions98 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %67, i32 0, i32 0
  %68 = load i32, ptr %partitions98, align 4
  %cmp99 = icmp slt i32 %66, %68
  br i1 %cmp99, label %for.body101, label %for.end131

for.body101:                                      ; preds = %for.cond97
  %69 = load ptr, ptr %info, align 8
  %class_dim102 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %69, i32 0, i32 2
  %70 = load ptr, ptr %info, align 8
  %partitionclass103 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %j, align 4
  %idxprom104 = sext i32 %71 to i64
  %arrayidx105 = getelementptr inbounds [31 x i32], ptr %partitionclass103, i64 0, i64 %idxprom104
  %72 = load i32, ptr %arrayidx105, align 4
  %idxprom106 = sext i32 %72 to i64
  %arrayidx107 = getelementptr inbounds [16 x i32], ptr %class_dim102, i64 0, i64 %idxprom106
  %73 = load i32, ptr %arrayidx107, align 4
  %74 = load i32, ptr %count, align 4
  %add108 = add nsw i32 %74, %73
  store i32 %add108, ptr %count, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc126, %for.body101
  %75 = load i32, ptr %k, align 4
  %76 = load i32, ptr %count, align 4
  %cmp110 = icmp slt i32 %75, %76
  br i1 %cmp110, label %for.body112, label %for.end128

for.body112:                                      ; preds = %for.cond109
  %77 = load ptr, ptr %opb.addr, align 8
  %78 = load i32, ptr %rangebits, align 4
  %call113 = call i64 @oggpack_read(ptr noundef %77, i32 noundef %78)
  %conv114 = trunc i64 %call113 to i32
  %79 = load ptr, ptr %info, align 8
  %postlist = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %79, i32 0, i32 7
  %80 = load i32, ptr %k, align 4
  %add115 = add nsw i32 %80, 2
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [65 x i32], ptr %postlist, i64 0, i64 %idxprom116
  store i32 %conv114, ptr %arrayidx117, align 4
  store i32 %conv114, ptr %t, align 4
  %81 = load i32, ptr %t, align 4
  %cmp118 = icmp slt i32 %81, 0
  br i1 %cmp118, label %if.then124, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %for.body112
  %82 = load i32, ptr %t, align 4
  %83 = load i32, ptr %rangebits, align 4
  %shl121 = shl i32 1, %83
  %cmp122 = icmp sge i32 %82, %shl121
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %lor.lhs.false120, %for.body112
  br label %err_out

if.end125:                                        ; preds = %lor.lhs.false120
  br label %for.inc126

for.inc126:                                       ; preds = %if.end125
  %84 = load i32, ptr %k, align 4
  %inc127 = add nsw i32 %84, 1
  store i32 %inc127, ptr %k, align 4
  br label %for.cond109, !llvm.loop !10

for.end128:                                       ; preds = %for.cond109
  br label %for.inc129

for.inc129:                                       ; preds = %for.end128
  %85 = load i32, ptr %j, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, ptr %j, align 4
  br label %for.cond97, !llvm.loop !11

for.end131:                                       ; preds = %for.cond97
  %86 = load ptr, ptr %info, align 8
  %postlist132 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %86, i32 0, i32 7
  %arrayidx133 = getelementptr inbounds [65 x i32], ptr %postlist132, i64 0, i64 0
  store i32 0, ptr %arrayidx133, align 4
  %87 = load i32, ptr %rangebits, align 4
  %shl134 = shl i32 1, %87
  %88 = load ptr, ptr %info, align 8
  %postlist135 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %88, i32 0, i32 7
  %arrayidx136 = getelementptr inbounds [65 x i32], ptr %postlist135, i64 0, i64 1
  store i32 %shl134, ptr %arrayidx136, align 4
  %89 = load ptr, ptr %info, align 8
  store ptr %89, ptr %retval, align 8
  br label %return

err_out:                                          ; preds = %if.then124, %if.then84, %if.then53, %if.then32
  %90 = load ptr, ptr %info, align 8
  call void @floor1_free_info(ptr noundef %90)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %err_out, %for.end131
  %91 = load ptr, ptr %retval, align 8
  ret ptr %91
}

; Function Attrs: nounwind uwtable
declare hidden void @floor1_free_info(ptr noundef) #1

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) }

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
