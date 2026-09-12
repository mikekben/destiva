; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_compressBlock(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @prepare_new_block(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @handle_compress(ptr noundef %strm) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %progress_in = alloca i8, align 1
  %progress_out = alloca i8, align 1
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i8 0, ptr %progress_in, align 1
  store i8 0, ptr %progress_out, align 1
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds nuw %struct.bz_stream, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  br label %while.body

while.body:                                       ; preds = %if.end65, %entry
  %2 = load ptr, ptr %s, align 8
  %state1 = getelementptr inbounds nuw %struct.EState, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %state1, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %s, align 8
  %call = call zeroext i8 @copy_output_until_stop(ptr noundef %4)
  %conv = zext i8 %call to i32
  %5 = load i8, ptr %progress_out, align 1
  %conv2 = zext i8 %5 to i32
  %or = or i32 %conv2, %conv
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, ptr %progress_out, align 1
  %6 = load ptr, ptr %s, align 8
  %state_out_pos = getelementptr inbounds nuw %struct.EState, ptr %6, i32 0, i32 20
  %7 = load i32, ptr %state_out_pos, align 8
  %8 = load ptr, ptr %s, align 8
  %numZ = getelementptr inbounds nuw %struct.EState, ptr %8, i32 0, i32 19
  %9 = load i32, ptr %numZ, align 4
  %cmp4 = icmp slt i32 %7, %9
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds nuw %struct.EState, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %mode, align 8
  %cmp7 = icmp eq i32 %11, 4
  br i1 %cmp7, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %s, align 8
  %avail_in_expect = getelementptr inbounds nuw %struct.EState, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %avail_in_expect, align 8
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %s, align 8
  %call12 = call zeroext i8 @isempty_RL(ptr noundef %14)
  %conv13 = zext i8 %call12 to i32
  %tobool = icmp ne i32 %conv13, 0
  br i1 %tobool, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  br label %while.end

if.end15:                                         ; preds = %land.lhs.true11, %land.lhs.true, %if.end
  %15 = load ptr, ptr %s, align 8
  call void @prepare_new_block(ptr noundef %15)
  %16 = load ptr, ptr %s, align 8
  %state16 = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 2
  store i32 2, ptr %state16, align 4
  %17 = load ptr, ptr %s, align 8
  %mode17 = getelementptr inbounds nuw %struct.EState, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %mode17, align 8
  %cmp18 = icmp eq i32 %18, 3
  br i1 %cmp18, label %land.lhs.true20, label %if.end29

land.lhs.true20:                                  ; preds = %if.end15
  %19 = load ptr, ptr %s, align 8
  %avail_in_expect21 = getelementptr inbounds nuw %struct.EState, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %avail_in_expect21, align 8
  %cmp22 = icmp eq i32 %20, 0
  br i1 %cmp22, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %21 = load ptr, ptr %s, align 8
  %call25 = call zeroext i8 @isempty_RL(ptr noundef %21)
  %conv26 = zext i8 %call25 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true24
  br label %while.end

if.end29:                                         ; preds = %land.lhs.true24, %land.lhs.true20, %if.end15
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %while.body
  %22 = load ptr, ptr %s, align 8
  %state31 = getelementptr inbounds nuw %struct.EState, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %state31, align 4
  %cmp32 = icmp eq i32 %23, 2
  br i1 %cmp32, label %if.then34, label %if.end65

if.then34:                                        ; preds = %if.end30
  %24 = load ptr, ptr %s, align 8
  %call35 = call zeroext i8 @copy_input_until_stop(ptr noundef %24)
  %conv36 = zext i8 %call35 to i32
  %25 = load i8, ptr %progress_in, align 1
  %conv37 = zext i8 %25 to i32
  %or38 = or i32 %conv37, %conv36
  %conv39 = trunc i32 %or38 to i8
  store i8 %conv39, ptr %progress_in, align 1
  %26 = load ptr, ptr %s, align 8
  %mode40 = getelementptr inbounds nuw %struct.EState, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %mode40, align 8
  %cmp41 = icmp ne i32 %27, 2
  br i1 %cmp41, label %land.lhs.true43, label %if.else

land.lhs.true43:                                  ; preds = %if.then34
  %28 = load ptr, ptr %s, align 8
  %avail_in_expect44 = getelementptr inbounds nuw %struct.EState, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %avail_in_expect44, align 8
  %cmp45 = icmp eq i32 %29, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %land.lhs.true43
  %30 = load ptr, ptr %s, align 8
  call void @flush_RL(ptr noundef %30)
  %31 = load ptr, ptr %s, align 8
  %32 = load ptr, ptr %s, align 8
  %mode48 = getelementptr inbounds nuw %struct.EState, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %mode48, align 8
  %cmp49 = icmp eq i32 %33, 4
  %conv50 = zext i1 %cmp49 to i32
  %conv51 = trunc i32 %conv50 to i8
  call void @BZ2_compressBlock(ptr noundef %31, i8 noundef zeroext %conv51)
  %34 = load ptr, ptr %s, align 8
  %state52 = getelementptr inbounds nuw %struct.EState, ptr %34, i32 0, i32 2
  store i32 1, ptr %state52, align 4
  br label %if.end64

if.else:                                          ; preds = %land.lhs.true43, %if.then34
  %35 = load ptr, ptr %s, align 8
  %nblock = getelementptr inbounds nuw %struct.EState, ptr %35, i32 0, i32 17
  %36 = load i32, ptr %nblock, align 4
  %37 = load ptr, ptr %s, align 8
  %nblockMAX = getelementptr inbounds nuw %struct.EState, ptr %37, i32 0, i32 18
  %38 = load i32, ptr %nblockMAX, align 8
  %cmp53 = icmp sge i32 %36, %38
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else
  %39 = load ptr, ptr %s, align 8
  call void @BZ2_compressBlock(ptr noundef %39, i8 noundef zeroext 0)
  %40 = load ptr, ptr %s, align 8
  %state56 = getelementptr inbounds nuw %struct.EState, ptr %40, i32 0, i32 2
  store i32 1, ptr %state56, align 4
  br label %if.end63

if.else57:                                        ; preds = %if.else
  %41 = load ptr, ptr %s, align 8
  %strm58 = getelementptr inbounds nuw %struct.EState, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %strm58, align 8
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %avail_in, align 8
  %cmp59 = icmp eq i32 %43, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else57
  br label %while.end

if.end62:                                         ; preds = %if.else57
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then55
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then47
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end30
  br label %while.body

while.end:                                        ; preds = %if.then61, %if.then28, %if.then14, %if.then6
  %44 = load i8, ptr %progress_in, align 1
  %conv66 = zext i8 %44 to i32
  %tobool67 = icmp ne i32 %conv66, 0
  br i1 %tobool67, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %45 = load i8, ptr %progress_out, align 1
  %conv68 = zext i8 %45 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %46 = phi i1 [ true, %while.end ], [ %tobool69, %lor.rhs ]
  %lor.ext = zext i1 %46 to i32
  %conv70 = trunc i32 %lor.ext to i8
  ret i8 %conv70
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @isempty_RL(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @copy_output_until_stop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @copy_input_until_stop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @flush_RL(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
