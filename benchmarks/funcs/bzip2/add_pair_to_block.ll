; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

@BZ2_crc32Table = external dso_local global [256 x i32], align 16

; Function Attrs: nounwind uwtable
define hidden void @add_pair_to_block(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %state_in_ch = getelementptr inbounds nuw %struct.EState, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %state_in_ch, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, ptr %ch, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %s.addr, align 8
  %state_in_len = getelementptr inbounds nuw %struct.EState, ptr %3, i32 0, i32 14
  %4 = load i32, ptr %state_in_len, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %s.addr, align 8
  %blockCRC = getelementptr inbounds nuw %struct.EState, ptr %5, i32 0, i32 26
  %6 = load i32, ptr %blockCRC, align 8
  %shl = shl i32 %6, 8
  %7 = load ptr, ptr %s.addr, align 8
  %blockCRC2 = getelementptr inbounds nuw %struct.EState, ptr %7, i32 0, i32 26
  %8 = load i32, ptr %blockCRC2, align 8
  %shr = lshr i32 %8, 24
  %9 = load i8, ptr %ch, align 1
  %conv3 = zext i8 %9 to i32
  %xor = xor i32 %shr, %conv3
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  %xor4 = xor i32 %shl, %10
  %11 = load ptr, ptr %s.addr, align 8
  %blockCRC5 = getelementptr inbounds nuw %struct.EState, ptr %11, i32 0, i32 26
  store i32 %xor4, ptr %blockCRC5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %s.addr, align 8
  %inUse = getelementptr inbounds nuw %struct.EState, ptr %13, i32 0, i32 22
  %14 = load ptr, ptr %s.addr, align 8
  %state_in_ch6 = getelementptr inbounds nuw %struct.EState, ptr %14, i32 0, i32 13
  %15 = load i32, ptr %state_in_ch6, align 4
  %idxprom7 = zext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds nuw [256 x i8], ptr %inUse, i64 0, i64 %idxprom7
  store i8 1, ptr %arrayidx8, align 1
  %16 = load ptr, ptr %s.addr, align 8
  %state_in_len9 = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 14
  %17 = load i32, ptr %state_in_len9, align 8
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.end
  %18 = load i8, ptr %ch, align 1
  %19 = load ptr, ptr %s.addr, align 8
  %block = getelementptr inbounds nuw %struct.EState, ptr %19, i32 0, i32 9
  %20 = load ptr, ptr %block, align 8
  %21 = load ptr, ptr %s.addr, align 8
  %nblock = getelementptr inbounds nuw %struct.EState, ptr %21, i32 0, i32 17
  %22 = load i32, ptr %nblock, align 4
  %idxprom10 = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %20, i64 %idxprom10
  store i8 %18, ptr %arrayidx11, align 1
  %23 = load ptr, ptr %s.addr, align 8
  %nblock12 = getelementptr inbounds nuw %struct.EState, ptr %23, i32 0, i32 17
  %24 = load i32, ptr %nblock12, align 4
  %inc13 = add nsw i32 %24, 1
  store i32 %inc13, ptr %nblock12, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.end
  %25 = load i8, ptr %ch, align 1
  %26 = load ptr, ptr %s.addr, align 8
  %block15 = getelementptr inbounds nuw %struct.EState, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %block15, align 8
  %28 = load ptr, ptr %s.addr, align 8
  %nblock16 = getelementptr inbounds nuw %struct.EState, ptr %28, i32 0, i32 17
  %29 = load i32, ptr %nblock16, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %27, i64 %idxprom17
  store i8 %25, ptr %arrayidx18, align 1
  %30 = load ptr, ptr %s.addr, align 8
  %nblock19 = getelementptr inbounds nuw %struct.EState, ptr %30, i32 0, i32 17
  %31 = load i32, ptr %nblock19, align 4
  %inc20 = add nsw i32 %31, 1
  store i32 %inc20, ptr %nblock19, align 4
  %32 = load i8, ptr %ch, align 1
  %33 = load ptr, ptr %s.addr, align 8
  %block21 = getelementptr inbounds nuw %struct.EState, ptr %33, i32 0, i32 9
  %34 = load ptr, ptr %block21, align 8
  %35 = load ptr, ptr %s.addr, align 8
  %nblock22 = getelementptr inbounds nuw %struct.EState, ptr %35, i32 0, i32 17
  %36 = load i32, ptr %nblock22, align 4
  %idxprom23 = sext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %34, i64 %idxprom23
  store i8 %32, ptr %arrayidx24, align 1
  %37 = load ptr, ptr %s.addr, align 8
  %nblock25 = getelementptr inbounds nuw %struct.EState, ptr %37, i32 0, i32 17
  %38 = load i32, ptr %nblock25, align 4
  %inc26 = add nsw i32 %38, 1
  store i32 %inc26, ptr %nblock25, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.end
  %39 = load i8, ptr %ch, align 1
  %40 = load ptr, ptr %s.addr, align 8
  %block28 = getelementptr inbounds nuw %struct.EState, ptr %40, i32 0, i32 9
  %41 = load ptr, ptr %block28, align 8
  %42 = load ptr, ptr %s.addr, align 8
  %nblock29 = getelementptr inbounds nuw %struct.EState, ptr %42, i32 0, i32 17
  %43 = load i32, ptr %nblock29, align 4
  %idxprom30 = sext i32 %43 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %41, i64 %idxprom30
  store i8 %39, ptr %arrayidx31, align 1
  %44 = load ptr, ptr %s.addr, align 8
  %nblock32 = getelementptr inbounds nuw %struct.EState, ptr %44, i32 0, i32 17
  %45 = load i32, ptr %nblock32, align 4
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, ptr %nblock32, align 4
  %46 = load i8, ptr %ch, align 1
  %47 = load ptr, ptr %s.addr, align 8
  %block34 = getelementptr inbounds nuw %struct.EState, ptr %47, i32 0, i32 9
  %48 = load ptr, ptr %block34, align 8
  %49 = load ptr, ptr %s.addr, align 8
  %nblock35 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 17
  %50 = load i32, ptr %nblock35, align 4
  %idxprom36 = sext i32 %50 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %48, i64 %idxprom36
  store i8 %46, ptr %arrayidx37, align 1
  %51 = load ptr, ptr %s.addr, align 8
  %nblock38 = getelementptr inbounds nuw %struct.EState, ptr %51, i32 0, i32 17
  %52 = load i32, ptr %nblock38, align 4
  %inc39 = add nsw i32 %52, 1
  store i32 %inc39, ptr %nblock38, align 4
  %53 = load i8, ptr %ch, align 1
  %54 = load ptr, ptr %s.addr, align 8
  %block40 = getelementptr inbounds nuw %struct.EState, ptr %54, i32 0, i32 9
  %55 = load ptr, ptr %block40, align 8
  %56 = load ptr, ptr %s.addr, align 8
  %nblock41 = getelementptr inbounds nuw %struct.EState, ptr %56, i32 0, i32 17
  %57 = load i32, ptr %nblock41, align 4
  %idxprom42 = sext i32 %57 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %55, i64 %idxprom42
  store i8 %53, ptr %arrayidx43, align 1
  %58 = load ptr, ptr %s.addr, align 8
  %nblock44 = getelementptr inbounds nuw %struct.EState, ptr %58, i32 0, i32 17
  %59 = load i32, ptr %nblock44, align 4
  %inc45 = add nsw i32 %59, 1
  store i32 %inc45, ptr %nblock44, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %60 = load ptr, ptr %s.addr, align 8
  %inUse46 = getelementptr inbounds nuw %struct.EState, ptr %60, i32 0, i32 22
  %61 = load ptr, ptr %s.addr, align 8
  %state_in_len47 = getelementptr inbounds nuw %struct.EState, ptr %61, i32 0, i32 14
  %62 = load i32, ptr %state_in_len47, align 8
  %sub = sub nsw i32 %62, 4
  %idxprom48 = sext i32 %sub to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], ptr %inUse46, i64 0, i64 %idxprom48
  store i8 1, ptr %arrayidx49, align 1
  %63 = load i8, ptr %ch, align 1
  %64 = load ptr, ptr %s.addr, align 8
  %block50 = getelementptr inbounds nuw %struct.EState, ptr %64, i32 0, i32 9
  %65 = load ptr, ptr %block50, align 8
  %66 = load ptr, ptr %s.addr, align 8
  %nblock51 = getelementptr inbounds nuw %struct.EState, ptr %66, i32 0, i32 17
  %67 = load i32, ptr %nblock51, align 4
  %idxprom52 = sext i32 %67 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %65, i64 %idxprom52
  store i8 %63, ptr %arrayidx53, align 1
  %68 = load ptr, ptr %s.addr, align 8
  %nblock54 = getelementptr inbounds nuw %struct.EState, ptr %68, i32 0, i32 17
  %69 = load i32, ptr %nblock54, align 4
  %inc55 = add nsw i32 %69, 1
  store i32 %inc55, ptr %nblock54, align 4
  %70 = load i8, ptr %ch, align 1
  %71 = load ptr, ptr %s.addr, align 8
  %block56 = getelementptr inbounds nuw %struct.EState, ptr %71, i32 0, i32 9
  %72 = load ptr, ptr %block56, align 8
  %73 = load ptr, ptr %s.addr, align 8
  %nblock57 = getelementptr inbounds nuw %struct.EState, ptr %73, i32 0, i32 17
  %74 = load i32, ptr %nblock57, align 4
  %idxprom58 = sext i32 %74 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %72, i64 %idxprom58
  store i8 %70, ptr %arrayidx59, align 1
  %75 = load ptr, ptr %s.addr, align 8
  %nblock60 = getelementptr inbounds nuw %struct.EState, ptr %75, i32 0, i32 17
  %76 = load i32, ptr %nblock60, align 4
  %inc61 = add nsw i32 %76, 1
  store i32 %inc61, ptr %nblock60, align 4
  %77 = load i8, ptr %ch, align 1
  %78 = load ptr, ptr %s.addr, align 8
  %block62 = getelementptr inbounds nuw %struct.EState, ptr %78, i32 0, i32 9
  %79 = load ptr, ptr %block62, align 8
  %80 = load ptr, ptr %s.addr, align 8
  %nblock63 = getelementptr inbounds nuw %struct.EState, ptr %80, i32 0, i32 17
  %81 = load i32, ptr %nblock63, align 4
  %idxprom64 = sext i32 %81 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %79, i64 %idxprom64
  store i8 %77, ptr %arrayidx65, align 1
  %82 = load ptr, ptr %s.addr, align 8
  %nblock66 = getelementptr inbounds nuw %struct.EState, ptr %82, i32 0, i32 17
  %83 = load i32, ptr %nblock66, align 4
  %inc67 = add nsw i32 %83, 1
  store i32 %inc67, ptr %nblock66, align 4
  %84 = load i8, ptr %ch, align 1
  %85 = load ptr, ptr %s.addr, align 8
  %block68 = getelementptr inbounds nuw %struct.EState, ptr %85, i32 0, i32 9
  %86 = load ptr, ptr %block68, align 8
  %87 = load ptr, ptr %s.addr, align 8
  %nblock69 = getelementptr inbounds nuw %struct.EState, ptr %87, i32 0, i32 17
  %88 = load i32, ptr %nblock69, align 4
  %idxprom70 = sext i32 %88 to i64
  %arrayidx71 = getelementptr inbounds i8, ptr %86, i64 %idxprom70
  store i8 %84, ptr %arrayidx71, align 1
  %89 = load ptr, ptr %s.addr, align 8
  %nblock72 = getelementptr inbounds nuw %struct.EState, ptr %89, i32 0, i32 17
  %90 = load i32, ptr %nblock72, align 4
  %inc73 = add nsw i32 %90, 1
  store i32 %inc73, ptr %nblock72, align 4
  %91 = load ptr, ptr %s.addr, align 8
  %state_in_len74 = getelementptr inbounds nuw %struct.EState, ptr %91, i32 0, i32 14
  %92 = load i32, ptr %state_in_len74, align 8
  %sub75 = sub nsw i32 %92, 4
  %conv76 = trunc i32 %sub75 to i8
  %93 = load ptr, ptr %s.addr, align 8
  %block77 = getelementptr inbounds nuw %struct.EState, ptr %93, i32 0, i32 9
  %94 = load ptr, ptr %block77, align 8
  %95 = load ptr, ptr %s.addr, align 8
  %nblock78 = getelementptr inbounds nuw %struct.EState, ptr %95, i32 0, i32 17
  %96 = load i32, ptr %nblock78, align 4
  %idxprom79 = sext i32 %96 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %94, i64 %idxprom79
  store i8 %conv76, ptr %arrayidx80, align 1
  %97 = load ptr, ptr %s.addr, align 8
  %nblock81 = getelementptr inbounds nuw %struct.EState, ptr %97, i32 0, i32 17
  %98 = load i32, ptr %nblock81, align 4
  %inc82 = add nsw i32 %98, 1
  store i32 %inc82, ptr %nblock81, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb14, %sw.bb
  ret void
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
