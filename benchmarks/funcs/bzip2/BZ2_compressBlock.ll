; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

@stderr = external global ptr, align 8
@.str.2 = external hidden unnamed_addr constant [60 x i8], align 1
@.str.3 = external hidden unnamed_addr constant [34 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_blockSort(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bsInitWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_compressBlock(ptr noundef %s, i8 noundef zeroext %is_last_block) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %is_last_block.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i8 %is_last_block, ptr %is_last_block.addr, align 1
  %0 = load ptr, ptr %s.addr, align 8
  %nblock = getelementptr inbounds nuw %struct.EState, ptr %0, i32 0, i32 17
  %1 = load i32, ptr %nblock, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %blockCRC = getelementptr inbounds nuw %struct.EState, ptr %2, i32 0, i32 26
  %3 = load i32, ptr %blockCRC, align 8
  %not = xor i32 %3, -1
  %4 = load ptr, ptr %s.addr, align 8
  %blockCRC1 = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 26
  store i32 %not, ptr %blockCRC1, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %combinedCRC = getelementptr inbounds nuw %struct.EState, ptr %5, i32 0, i32 27
  %6 = load i32, ptr %combinedCRC, align 4
  %shl = shl i32 %6, 1
  %7 = load ptr, ptr %s.addr, align 8
  %combinedCRC2 = getelementptr inbounds nuw %struct.EState, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %combinedCRC2, align 4
  %shr = lshr i32 %8, 31
  %or = or i32 %shl, %shr
  %9 = load ptr, ptr %s.addr, align 8
  %combinedCRC3 = getelementptr inbounds nuw %struct.EState, ptr %9, i32 0, i32 27
  store i32 %or, ptr %combinedCRC3, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %blockCRC4 = getelementptr inbounds nuw %struct.EState, ptr %10, i32 0, i32 26
  %11 = load i32, ptr %blockCRC4, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %combinedCRC5 = getelementptr inbounds nuw %struct.EState, ptr %12, i32 0, i32 27
  %13 = load i32, ptr %combinedCRC5, align 4
  %xor = xor i32 %13, %11
  store i32 %xor, ptr %combinedCRC5, align 4
  %14 = load ptr, ptr %s.addr, align 8
  %blockNo = getelementptr inbounds nuw %struct.EState, ptr %14, i32 0, i32 29
  %15 = load i32, ptr %blockNo, align 4
  %cmp6 = icmp sgt i32 %15, 1
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %16 = load ptr, ptr %s.addr, align 8
  %numZ = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 19
  store i32 0, ptr %numZ, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %17 = load ptr, ptr %s.addr, align 8
  %verbosity = getelementptr inbounds nuw %struct.EState, ptr %17, i32 0, i32 28
  %18 = load i32, ptr %verbosity, align 8
  %cmp8 = icmp sge i32 %18, 2
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %19 = load ptr, ptr @stderr, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %blockNo10 = getelementptr inbounds nuw %struct.EState, ptr %20, i32 0, i32 29
  %21 = load i32, ptr %blockNo10, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %blockCRC11 = getelementptr inbounds nuw %struct.EState, ptr %22, i32 0, i32 26
  %23 = load i32, ptr %blockCRC11, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %combinedCRC12 = getelementptr inbounds nuw %struct.EState, ptr %24, i32 0, i32 27
  %25 = load i32, ptr %combinedCRC12, align 4
  %26 = load ptr, ptr %s.addr, align 8
  %nblock13 = getelementptr inbounds nuw %struct.EState, ptr %26, i32 0, i32 17
  %27 = load i32, ptr %nblock13, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.2, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #2
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end
  %28 = load ptr, ptr %s.addr, align 8
  call void @BZ2_blockSort(ptr noundef %28)
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %29 = load ptr, ptr %s.addr, align 8
  %arr2 = getelementptr inbounds nuw %struct.EState, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %arr2, align 8
  %31 = load ptr, ptr %s.addr, align 8
  %nblock16 = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 17
  %32 = load i32, ptr %nblock16, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds i8, ptr %30, i64 %idxprom
  %33 = load ptr, ptr %s.addr, align 8
  %zbits = getelementptr inbounds nuw %struct.EState, ptr %33, i32 0, i32 11
  store ptr %arrayidx, ptr %zbits, align 8
  %34 = load ptr, ptr %s.addr, align 8
  %blockNo17 = getelementptr inbounds nuw %struct.EState, ptr %34, i32 0, i32 29
  %35 = load i32, ptr %blockNo17, align 4
  %cmp18 = icmp eq i32 %35, 1
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  %36 = load ptr, ptr %s.addr, align 8
  call void @BZ2_bsInitWrite(ptr noundef %36)
  %37 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %37, i8 noundef zeroext 66)
  %38 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %38, i8 noundef zeroext 90)
  %39 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %39, i8 noundef zeroext 104)
  %40 = load ptr, ptr %s.addr, align 8
  %41 = load ptr, ptr %s.addr, align 8
  %blockSize100k = getelementptr inbounds nuw %struct.EState, ptr %41, i32 0, i32 30
  %42 = load i32, ptr %blockSize100k, align 8
  %add = add nsw i32 48, %42
  %conv = trunc i32 %add to i8
  call void @bsPutUChar(ptr noundef %40, i8 noundef zeroext %conv)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15
  %43 = load ptr, ptr %s.addr, align 8
  %nblock21 = getelementptr inbounds nuw %struct.EState, ptr %43, i32 0, i32 17
  %44 = load i32, ptr %nblock21, align 4
  %cmp22 = icmp sgt i32 %44, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  %45 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %45, i8 noundef zeroext 49)
  %46 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %46, i8 noundef zeroext 65)
  %47 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %47, i8 noundef zeroext 89)
  %48 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %48, i8 noundef zeroext 38)
  %49 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %49, i8 noundef zeroext 83)
  %50 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %50, i8 noundef zeroext 89)
  %51 = load ptr, ptr %s.addr, align 8
  %52 = load ptr, ptr %s.addr, align 8
  %blockCRC25 = getelementptr inbounds nuw %struct.EState, ptr %52, i32 0, i32 26
  %53 = load i32, ptr %blockCRC25, align 8
  call void @bsPutUInt32(ptr noundef %51, i32 noundef %53)
  %54 = load ptr, ptr %s.addr, align 8
  call void @bsW(ptr noundef %54, i32 noundef 1, i32 noundef 0)
  %55 = load ptr, ptr %s.addr, align 8
  %56 = load ptr, ptr %s.addr, align 8
  %origPtr = getelementptr inbounds nuw %struct.EState, ptr %56, i32 0, i32 7
  %57 = load i32, ptr %origPtr, align 8
  call void @bsW(ptr noundef %55, i32 noundef 24, i32 noundef %57)
  %58 = load ptr, ptr %s.addr, align 8
  call void @generateMTFValues(ptr noundef %58)
  %59 = load ptr, ptr %s.addr, align 8
  call void @sendMTFValues(ptr noundef %59)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20
  %60 = load i8, ptr %is_last_block.addr, align 1
  %tobool = icmp ne i8 %60, 0
  br i1 %tobool, label %if.then27, label %if.end36

if.then27:                                        ; preds = %if.end26
  %61 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %61, i8 noundef zeroext 23)
  %62 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %62, i8 noundef zeroext 114)
  %63 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %63, i8 noundef zeroext 69)
  %64 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %64, i8 noundef zeroext 56)
  %65 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %65, i8 noundef zeroext 80)
  %66 = load ptr, ptr %s.addr, align 8
  call void @bsPutUChar(ptr noundef %66, i8 noundef zeroext -112)
  %67 = load ptr, ptr %s.addr, align 8
  %68 = load ptr, ptr %s.addr, align 8
  %combinedCRC28 = getelementptr inbounds nuw %struct.EState, ptr %68, i32 0, i32 27
  %69 = load i32, ptr %combinedCRC28, align 4
  call void @bsPutUInt32(ptr noundef %67, i32 noundef %69)
  %70 = load ptr, ptr %s.addr, align 8
  %verbosity29 = getelementptr inbounds nuw %struct.EState, ptr %70, i32 0, i32 28
  %71 = load i32, ptr %verbosity29, align 8
  %cmp30 = icmp sge i32 %71, 2
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then27
  %72 = load ptr, ptr @stderr, align 8
  %73 = load ptr, ptr %s.addr, align 8
  %combinedCRC33 = getelementptr inbounds nuw %struct.EState, ptr %73, i32 0, i32 27
  %74 = load i32, ptr %combinedCRC33, align 4
  %call34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.3, i32 noundef %74) #2
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then27
  %75 = load ptr, ptr %s.addr, align 8
  call void @bsFinishWrite(ptr noundef %75)
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end26
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @bsPutUChar(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @bsPutUInt32(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @bsW(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @generateMTFValues(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sendMTFValues(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @bsFinishWrite(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
