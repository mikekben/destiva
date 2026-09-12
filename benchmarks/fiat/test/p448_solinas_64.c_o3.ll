; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @fiat_p448_value_barrier_u64(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #5, !srcloc !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p448_addcarryx_u56(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %add = add i64 %arg2, %conv
  %add1 = add i64 %add, %arg3
  %and = and i64 %add1, 72057594037927935
  %shr = lshr i64 %add1, 56
  %conv2 = trunc nuw i64 %shr to i8
  store i64 %and, ptr %out1, align 8, !tbaa !10
  store i8 %conv2, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p448_subborrowx_u56(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %0 = add i64 %arg3, %conv
  %sub1 = sub i64 %arg2, %0
  %and = and i64 %sub1, 72057594037927935
  store i64 %and, ptr %out1, align 8, !tbaa !10
  %1 = lshr i64 %sub1, 56
  %conv3 = trunc nuw i64 %1 to i8
  %sub4 = sub i8 0, %conv3
  store i8 %sub4, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @fiat_p448_cmovznz_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #2 {
entry:
  %tobool = icmp ne i8 %arg1, 0
  %conv4 = sext i1 %tobool to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4) #5, !srcloc !9
  %and5 = and i64 %0, %arg3
  %not = xor i64 %conv4, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not) #5, !srcloc !9
  %and7 = and i64 %1, %arg2
  %or = or i64 %and7, %and5
  store i64 %or, ptr %out1, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_carry_mul(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %conv = zext i64 %0 to i128
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg2, i64 56
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv2 = zext i64 %1 to i128
  %mul = mul nuw i128 %conv2, %conv
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %2 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv6 = zext i64 %2 to i128
  %mul7 = mul nuw i128 %conv6, %conv
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg2, i64 40
  %3 = load i64, ptr %arrayidx10, align 8, !tbaa !10
  %conv11 = zext i64 %3 to i128
  %mul12 = mul nuw i128 %conv11, %conv
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %4 = load i64, ptr %arrayidx13, align 8, !tbaa !10
  %conv14 = zext i64 %4 to i128
  %mul17 = mul nuw i128 %conv14, %conv2
  %mul22 = mul nuw i128 %conv14, %conv6
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %5 = load i64, ptr %arrayidx23, align 8, !tbaa !10
  %conv24 = zext i64 %5 to i128
  %mul27 = mul nuw i128 %conv24, %conv2
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %6 = load i64, ptr %arrayidx75, align 8, !tbaa !10
  %conv76 = zext i64 %6 to i128
  %mul77 = mul nuw i128 %conv76, %conv
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %7 = load i64, ptr %arrayidx80, align 8, !tbaa !10
  %conv81 = zext i64 %7 to i128
  %mul82 = mul nuw i128 %conv81, %conv
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %8 = load i64, ptr %arrayidx85, align 8, !tbaa !10
  %conv86 = zext i64 %8 to i128
  %mul87 = mul nuw i128 %conv86, %conv
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %9 = load i64, ptr %arrayidx90, align 8, !tbaa !10
  %conv91 = zext i64 %9 to i128
  %mul92 = mul nuw i128 %conv91, %conv
  %mul107 = mul nuw i128 %conv14, %conv11
  %mul112 = mul nuw i128 %conv76, %conv14
  %mul117 = mul nuw i128 %conv81, %conv14
  %mul122 = mul nuw i128 %conv86, %conv14
  %mul132 = mul nuw i128 %conv24, %conv6
  %mul137 = mul nuw i128 %conv24, %conv11
  %mul142 = mul nuw i128 %conv76, %conv24
  %mul147 = mul nuw i128 %conv81, %conv24
  %arrayidx148 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %10 = load i64, ptr %arrayidx148, align 8, !tbaa !10
  %conv149 = zext i64 %10 to i128
  %mul152 = mul nuw i128 %conv149, %conv2
  %mul157 = mul nuw i128 %conv149, %conv6
  %mul162 = mul nuw i128 %conv149, %conv11
  %mul167 = mul nuw i128 %conv149, %conv76
  %arrayidx168 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %11 = load i64, ptr %arrayidx168, align 8, !tbaa !10
  %conv169 = zext i64 %11 to i128
  %mul172 = mul nuw i128 %conv169, %conv2
  %mul177 = mul nuw i128 %conv169, %conv6
  %mul182 = mul nuw i128 %conv169, %conv11
  %arrayidx183 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %12 = load i64, ptr %arrayidx183, align 8, !tbaa !10
  %conv184 = zext i64 %12 to i128
  %mul187 = mul nuw i128 %conv184, %conv2
  %mul192 = mul nuw i128 %conv184, %conv6
  %arrayidx193 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %13 = load i64, ptr %arrayidx193, align 8, !tbaa !10
  %conv194 = zext i64 %13 to i128
  %mul197 = mul nuw i128 %conv194, %conv2
  %14 = load i64, ptr %arg2, align 8, !tbaa !10
  %conv311 = zext i64 %14 to i128
  %mul312 = mul nuw i128 %conv311, %conv
  %mul317 = mul nuw i128 %conv91, %conv14
  %mul322 = mul nuw i128 %conv311, %conv14
  %mul327 = mul nuw i128 %conv86, %conv24
  %mul332 = mul nuw i128 %conv91, %conv24
  %mul337 = mul nuw i128 %conv311, %conv24
  %mul342 = mul nuw i128 %conv149, %conv81
  %mul347 = mul nuw i128 %conv149, %conv86
  %mul352 = mul nuw i128 %conv149, %conv91
  %mul357 = mul nuw i128 %conv311, %conv149
  %mul362 = mul nuw i128 %conv169, %conv76
  %mul367 = mul nuw i128 %conv169, %conv81
  %mul372 = mul nuw i128 %conv169, %conv86
  %mul377 = mul nuw i128 %conv169, %conv91
  %mul382 = mul nuw i128 %conv311, %conv169
  %mul387 = mul nuw i128 %conv184, %conv11
  %mul392 = mul nuw i128 %conv184, %conv76
  %mul397 = mul nuw i128 %conv184, %conv81
  %mul402 = mul nuw i128 %conv184, %conv86
  %mul407 = mul nuw i128 %conv184, %conv91
  %mul412 = mul nuw i128 %conv311, %conv184
  %mul417 = mul nuw i128 %conv194, %conv6
  %mul422 = mul nuw i128 %conv194, %conv11
  %mul427 = mul nuw i128 %conv194, %conv76
  %mul432 = mul nuw i128 %conv194, %conv81
  %mul437 = mul nuw i128 %conv194, %conv86
  %mul442 = mul nuw i128 %conv194, %conv91
  %mul447 = mul nuw i128 %conv311, %conv194
  %15 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv449 = zext i64 %15 to i128
  %mul452 = mul nuw i128 %conv449, %conv2
  %mul457 = mul nuw i128 %conv449, %conv6
  %mul462 = mul nuw i128 %conv449, %conv11
  %mul467 = mul nuw i128 %conv449, %conv76
  %mul472 = mul nuw i128 %conv449, %conv81
  %mul477 = mul nuw i128 %conv449, %conv86
  %mul482 = mul nuw i128 %conv449, %conv91
  %mul487 = mul nuw i128 %conv449, %conv311
  %add = add i128 %mul132, %mul107
  %add488 = add i128 %add, %mul77
  %add489 = add i128 %add488, %mul152
  %add490 = add i128 %mul407, %add489
  %add491 = add i128 %add490, %mul437
  %add492 = add i128 %add491, %mul382
  %add493 = add i128 %add492, %mul472
  %shr = lshr i128 %add493, 56
  %16 = trunc i128 %add493 to i64
  %conv495 = and i64 %16, 72057594037927935
  %add499 = add i128 %mul317, %mul327
  %add500 = add i128 %add499, %mul342
  %add501 = add i128 %add500, %add489
  %add502 = add i128 %add501, %mul362
  %add503 = add i128 %add502, %mul387
  %add504 = add i128 %add503, %mul417
  %add505 = add i128 %add504, %mul312
  %add506 = add i128 %add505, %mul452
  %add507 = shl i128 %mul, 1
  %add520 = add i128 %mul17, %mul7
  %add535 = add i128 %mul22, %mul12
  %add536 = add i128 %add535, %mul27
  %conv579 = and i128 %shr, 18446744073709551615
  %shr581 = lshr i128 %add506, 56
  %17 = trunc i128 %add506 to i64
  %conv584 = and i64 %17, 72057594037927935
  %conv585 = and i128 %shr581, 18446744073709551615
  %add539 = shl i128 %add536, 1
  %add540 = add i128 %add539, %mul147
  %add541 = add i128 %add540, %mul122
  %add542 = add i128 %add541, %mul92
  %add543 = add i128 %add542, %mul167
  %add544 = add i128 %add543, %mul182
  %add545 = add i128 %add544, %mul377
  %add546 = add i128 %add545, %mul192
  %add547 = add i128 %add546, %mul402
  %add548 = add i128 %add547, %mul197
  %add549 = add i128 %add548, %mul432
  %add550 = add i128 %add549, %mul357
  %add551 = add i128 %add550, %mul467
  %add580 = add i128 %add551, %conv579
  %add586 = add i128 %add580, %conv585
  %shr587 = lshr i128 %add586, 56
  %18 = trunc i128 %add586 to i64
  %conv590 = and i64 %18, 72057594037927935
  %add571 = add i128 %mul147, %add536
  %add572 = add i128 %add571, %mul122
  %add573 = add i128 %add572, %mul92
  %add574 = add i128 %add573, %mul167
  %add575 = add i128 %add574, %mul182
  %add576 = add i128 %add575, %mul192
  %add577 = add i128 %add576, %mul197
  %add578 = add i128 %add577, %mul487
  %add592 = add i128 %add578, %conv585
  %conv593 = and i128 %shr587, 18446744073709551615
  %add522 = shl i128 %add520, 1
  %add523 = add i128 %add522, %mul142
  %add524 = add i128 %add523, %mul117
  %add525 = add i128 %add524, %mul87
  %add526 = add i128 %add525, %mul162
  %add527 = add i128 %add526, %mul352
  %add528 = add i128 %add527, %mul177
  %add529 = add i128 %add528, %mul372
  %add530 = add i128 %add529, %mul187
  %add531 = add i128 %add530, %mul397
  %add532 = add i128 %add531, %mul427
  %add533 = add i128 %add532, %mul337
  %add534 = add i128 %add533, %mul462
  %add594 = add i128 %add534, %conv593
  %shr595 = lshr i128 %add592, 56
  %19 = trunc i128 %add592 to i64
  %conv598 = and i64 %19, 72057594037927935
  %conv599 = and i128 %shr595, 18446744073709551615
  %add561 = add i128 %mul142, %add520
  %add562 = add i128 %add561, %mul117
  %add563 = add i128 %add562, %mul87
  %add564 = add i128 %add563, %mul162
  %add565 = add i128 %add564, %mul177
  %add566 = add i128 %add565, %mul187
  %add567 = add i128 %add566, %mul447
  %add568 = add i128 %add567, %mul482
  %add600 = add i128 %add568, %conv599
  %shr601 = lshr i128 %add594, 56
  %20 = trunc i128 %add594 to i64
  %conv604 = and i64 %20, 72057594037927935
  %conv605 = and i128 %shr601, 18446744073709551615
  %add508 = add i128 %mul137, %add507
  %add509 = add i128 %add508, %mul112
  %add510 = add i128 %add509, %mul82
  %add511 = add i128 %add510, %mul332
  %add512 = add i128 %add511, %mul157
  %add513 = add i128 %add512, %mul347
  %add514 = add i128 %add513, %mul172
  %add515 = add i128 %add514, %mul367
  %add516 = add i128 %add515, %mul392
  %add517 = add i128 %add516, %mul422
  %add518 = add i128 %add517, %mul322
  %add519 = add i128 %add518, %mul457
  %add606 = add i128 %add519, %conv605
  %shr607 = lshr i128 %add600, 56
  %21 = trunc i128 %add600 to i64
  %conv610 = and i64 %21, 72057594037927935
  %conv611 = and i128 %shr607, 18446744073709551615
  %add552 = add i128 %mul137, %mul
  %add553 = add i128 %add552, %mul112
  %add554 = add i128 %add553, %mul82
  %add555 = add i128 %add554, %mul157
  %add556 = add i128 %add555, %mul172
  %add557 = add i128 %add556, %mul442
  %add558 = add i128 %add557, %mul412
  %add559 = add i128 %add558, %mul477
  %add612 = add i128 %add559, %conv611
  %shr613 = lshr i128 %add606, 56
  %conv614 = trunc i128 %shr613 to i64
  %22 = trunc i128 %add606 to i64
  %conv616 = and i64 %22, 72057594037927935
  %add617 = add i64 %conv584, %conv614
  %shr618 = lshr i128 %add612, 56
  %conv619 = trunc i128 %shr618 to i64
  %23 = trunc i128 %add612 to i64
  %conv621 = and i64 %23, 72057594037927935
  %add622 = add i64 %conv495, %conv619
  %shr623 = lshr i64 %add617, 56
  %and624 = and i64 %add617, 72057594037927935
  %shr625 = lshr i64 %add622, 56
  %and626 = and i64 %add622, 72057594037927935
  %add627 = add nuw nsw i64 %shr623, %conv590
  %add628 = add nuw nsw i64 %shr623, %conv598
  %add629 = add nuw nsw i64 %add627, %shr625
  %shr630 = lshr i64 %add629, 56
  %and632 = and i64 %add629, 72057594037927935
  %add634 = add nuw nsw i64 %shr630, %conv604
  %shr635 = lshr i64 %add628, 56
  %and637 = and i64 %add628, 72057594037927935
  %add639 = add nuw nsw i64 %shr635, %conv610
  store i64 %and637, ptr %out1, align 8, !tbaa !10
  %arrayidx641 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %add639, ptr %arrayidx641, align 8, !tbaa !10
  %arrayidx642 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv621, ptr %arrayidx642, align 8, !tbaa !10
  %arrayidx643 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %and626, ptr %arrayidx643, align 8, !tbaa !10
  %arrayidx644 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %and632, ptr %arrayidx644, align 8, !tbaa !10
  %arrayidx645 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i64 %add634, ptr %arrayidx645, align 8, !tbaa !10
  %arrayidx646 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i64 %conv616, ptr %arrayidx646, align 8, !tbaa !10
  %arrayidx647 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i64 %and624, ptr %arrayidx647, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_carry_square(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %mul = shl i64 %0, 1
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %1 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %mul7 = shl i64 %1, 1
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %2 = load i64, ptr %arrayidx11, align 8, !tbaa !10
  %mul13 = shl i64 %2, 1
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %3 = load i64, ptr %arrayidx17, align 8, !tbaa !10
  %mul20 = shl i64 %3, 1
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %4 = load i64, ptr %arrayidx21, align 8, !tbaa !10
  %mul22 = shl i64 %4, 1
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %5 = load i64, ptr %arrayidx23, align 8, !tbaa !10
  %mul24 = shl i64 %5, 1
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %6 = load i64, ptr %arrayidx25, align 8, !tbaa !10
  %mul26 = shl i64 %6, 1
  %conv = zext i64 %0 to i128
  %mul29 = mul nuw i128 %conv, %conv
  %conv31 = zext i64 %1 to i128
  %conv32 = zext i64 %mul to i128
  %mul33 = mul nuw i128 %conv31, %conv32
  %mul37 = mul nuw i128 %conv31, %conv31
  %conv39 = zext i64 %2 to i128
  %mul41 = mul nuw i128 %conv39, %conv32
  %conv76 = zext i64 %mul7 to i128
  %mul77 = mul nuw i128 %conv39, %conv76
  %mul85 = mul nuw i128 %conv39, %conv39
  %conv91 = zext i64 %3 to i128
  %mul93 = mul nuw i128 %conv91, %conv32
  %mul101 = mul nuw i128 %conv91, %conv76
  %conv108 = zext i64 %mul13 to i128
  %mul109 = mul nuw i128 %conv91, %conv108
  %mul117 = mul nuw i128 %conv91, %conv91
  %conv123 = zext i64 %4 to i128
  %mul125 = mul nuw i128 %conv123, %conv32
  %mul133 = mul nuw i128 %conv123, %conv76
  %mul141 = mul nuw i128 %conv123, %conv108
  %conv148 = zext i64 %mul20 to i128
  %mul149 = mul nuw i128 %conv123, %conv148
  %mul154 = mul nuw i128 %conv123, %conv123
  %conv156 = zext i64 %5 to i128
  %mul158 = mul nuw i128 %conv156, %conv32
  %mul166 = mul nuw i128 %conv156, %conv76
  %mul174 = mul nuw i128 %conv156, %conv108
  %mul178 = mul nuw i128 %conv156, %conv148
  %conv181 = zext i64 %mul22 to i128
  %mul182 = mul nuw i128 %conv156, %conv181
  %mul187 = mul nuw i128 %conv156, %conv156
  %conv189 = zext i64 %6 to i128
  %mul191 = mul nuw i128 %conv189, %conv32
  %mul199 = mul nuw i128 %conv189, %conv76
  %mul203 = mul nuw i128 %conv189, %conv108
  %mul207 = mul nuw i128 %conv189, %conv148
  %mul211 = mul nuw i128 %conv189, %conv181
  %conv214 = zext i64 %mul24 to i128
  %mul215 = mul nuw i128 %conv189, %conv214
  %mul220 = mul nuw i128 %conv189, %conv189
  %7 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv222 = zext i64 %7 to i128
  %mul224 = mul nuw i128 %conv222, %conv32
  %mul228 = mul nuw i128 %conv222, %conv76
  %mul232 = mul nuw i128 %conv222, %conv108
  %mul236 = mul nuw i128 %conv222, %conv148
  %mul240 = mul nuw i128 %conv222, %conv181
  %mul244 = mul nuw i128 %conv222, %conv214
  %conv247 = zext i64 %mul26 to i128
  %mul248 = mul nuw i128 %conv222, %conv247
  %mul253 = mul nuw i128 %conv222, %conv222
  %add = add i128 %mul93, %mul77
  %add254 = add i128 %mul215, %add
  %add255 = add i128 %add254, %mul240
  %shr = lshr i128 %add255, 56
  %8 = trunc i128 %add255 to i64
  %conv257 = and i64 %8, 72057594037927935
  %add259 = add i128 %mul149, %add
  %add260 = add i128 %add259, %mul174
  %add261 = add i128 %add260, %mul199
  %add262 = add i128 %add261, %mul224
  %add263 = shl i128 %mul29, 1
  %add271 = shl i128 %mul33, 1
  %add278 = add i128 %mul41, %mul37
  %add298 = add i128 %mul117, %add278
  %add299 = add i128 %add298, %mul141
  %add300 = add i128 %add299, %mul166
  %add301 = add i128 %add300, %mul191
  %add302 = add i128 %add301, %mul253
  %conv303 = and i128 %shr, 18446744073709551615
  %shr305 = lshr i128 %add262, 56
  %9 = trunc i128 %add262 to i64
  %conv308 = and i64 %9, 72057594037927935
  %conv309 = and i128 %shr305, 18446744073709551615
  %add280 = shl i128 %add278, 1
  %add281 = add i128 %add280, %mul117
  %add282 = add i128 %add281, %mul141
  %add283 = add i128 %add282, %mul166
  %add284 = add i128 %add283, %mul187
  %add285 = add i128 %add284, %mul191
  %add286 = add i128 %add285, %mul211
  %add287 = add i128 %add286, %mul236
  %add304 = add i128 %add287, %conv303
  %add310 = add i128 %add304, %conv309
  %shr311 = lshr i128 %add310, 56
  %10 = trunc i128 %add310 to i64
  %conv314 = and i64 %10, 72057594037927935
  %add316 = add i128 %add302, %conv309
  %conv317 = and i128 %shr311, 18446744073709551615
  %add272 = add i128 %mul133, %mul109
  %add273 = add i128 %add272, %add271
  %add274 = add i128 %add273, %mul158
  %add275 = add i128 %add274, %mul182
  %add276 = add i128 %add275, %mul207
  %add277 = add i128 %add276, %mul232
  %add318 = add i128 %add277, %conv317
  %shr319 = lshr i128 %add316, 56
  %11 = trunc i128 %add316 to i64
  %conv322 = and i64 %11, 72057594037927935
  %conv323 = and i128 %shr319, 18446744073709551615
  %add294 = add i128 %add272, %mul33
  %add295 = add i128 %add294, %mul158
  %add296 = add i128 %add295, %mul248
  %add324 = add i128 %add296, %conv323
  %shr325 = lshr i128 %add318, 56
  %12 = trunc i128 %add318 to i64
  %conv328 = and i64 %12, 72057594037927935
  %conv329 = and i128 %shr325, 18446744073709551615
  %add264 = add i128 %mul101, %mul85
  %add265 = add i128 %add264, %add263
  %add266 = add i128 %add265, %mul125
  %add267 = add i128 %add266, %mul154
  %add268 = add i128 %add267, %mul178
  %add269 = add i128 %add268, %mul203
  %add270 = add i128 %add269, %mul228
  %add330 = add i128 %add270, %conv329
  %shr331 = lshr i128 %add324, 56
  %13 = trunc i128 %add324 to i64
  %conv334 = and i64 %13, 72057594037927935
  %conv335 = and i128 %shr331, 18446744073709551615
  %add289 = add i128 %add264, %mul29
  %add290 = add i128 %add289, %mul125
  %add291 = add i128 %add290, %mul220
  %add292 = add i128 %add291, %mul244
  %add336 = add i128 %add292, %conv335
  %shr337 = lshr i128 %add330, 56
  %conv338 = trunc i128 %shr337 to i64
  %14 = trunc i128 %add330 to i64
  %conv340 = and i64 %14, 72057594037927935
  %add341 = add i64 %conv308, %conv338
  %shr342 = lshr i128 %add336, 56
  %conv343 = trunc i128 %shr342 to i64
  %15 = trunc i128 %add336 to i64
  %conv345 = and i64 %15, 72057594037927935
  %add346 = add i64 %conv257, %conv343
  %shr347 = lshr i64 %add341, 56
  %and348 = and i64 %add341, 72057594037927935
  %shr349 = lshr i64 %add346, 56
  %and350 = and i64 %add346, 72057594037927935
  %add352 = add nuw nsw i64 %shr347, %conv322
  %add351 = add nuw nsw i64 %shr349, %conv314
  %add353 = add nuw nsw i64 %add351, %shr347
  %shr354 = lshr i64 %add353, 56
  %and356 = and i64 %add353, 72057594037927935
  %add358 = add nuw nsw i64 %shr354, %conv328
  %shr359 = lshr i64 %add352, 56
  %and361 = and i64 %add352, 72057594037927935
  %add363 = add nuw nsw i64 %shr359, %conv334
  store i64 %and361, ptr %out1, align 8, !tbaa !10
  %arrayidx365 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %add363, ptr %arrayidx365, align 8, !tbaa !10
  %arrayidx366 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv345, ptr %arrayidx366, align 8, !tbaa !10
  %arrayidx367 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %and350, ptr %arrayidx367, align 8, !tbaa !10
  %arrayidx368 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %and356, ptr %arrayidx368, align 8, !tbaa !10
  %arrayidx369 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i64 %add358, ptr %arrayidx369, align 8, !tbaa !10
  %arrayidx370 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i64 %conv340, ptr %arrayidx370, align 8, !tbaa !10
  %arrayidx371 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i64 %and348, ptr %arrayidx371, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_carry(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %shr = lshr i64 %1, 56
  %shr2 = lshr i64 %0, 56
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %2 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %add = add i64 %2, %shr2
  %add4 = add i64 %add, %shr
  %3 = load i64, ptr %arg1, align 8, !tbaa !10
  %add6 = add i64 %3, %shr
  %shr7 = lshr i64 %add4, 56
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %4 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %add9 = add i64 %shr7, %4
  %shr10 = lshr i64 %add6, 56
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %5 = load i64, ptr %arrayidx11, align 8, !tbaa !10
  %add12 = add i64 %shr10, %5
  %shr13 = lshr i64 %add9, 56
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %6 = load i64, ptr %arrayidx14, align 8, !tbaa !10
  %add15 = add i64 %shr13, %6
  %shr16 = lshr i64 %add12, 56
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %7 = load i64, ptr %arrayidx17, align 8, !tbaa !10
  %add18 = add i64 %shr16, %7
  %shr19 = lshr i64 %add15, 56
  %and = and i64 %1, 72057594037927935
  %add20 = add nuw nsw i64 %shr19, %and
  %shr21 = lshr i64 %add18, 56
  %and22 = and i64 %0, 72057594037927935
  %add23 = add nuw nsw i64 %shr21, %and22
  %shr24 = lshr i64 %add20, 56
  %and25 = and i64 %add6, 72057594037927935
  %add27 = add nuw nsw i64 %shr24, %and25
  %shr28 = lshr i64 %add23, 56
  %and31 = and i64 %add4, 72057594037927935
  %add33 = add nuw nsw i64 %shr24, %and31
  %add34 = add nuw nsw i64 %add33, %shr28
  %and35 = and i64 %add27, 72057594037927935
  %shr36 = lshr i64 %add27, 56
  %and39 = and i64 %add12, 72057594037927935
  %add40 = add nuw nsw i64 %shr36, %and39
  %and41 = and i64 %add18, 72057594037927935
  %and42 = and i64 %add23, 72057594037927935
  %and43 = and i64 %add34, 72057594037927935
  %shr44 = lshr i64 %add34, 56
  %and47 = and i64 %add9, 72057594037927935
  %add48 = add nuw nsw i64 %shr44, %and47
  %and49 = and i64 %add15, 72057594037927935
  %and50 = and i64 %add20, 72057594037927935
  store i64 %and35, ptr %out1, align 8, !tbaa !10
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %add40, ptr %arrayidx52, align 8, !tbaa !10
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %and41, ptr %arrayidx53, align 8, !tbaa !10
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %and42, ptr %arrayidx54, align 8, !tbaa !10
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %and43, ptr %arrayidx55, align 8, !tbaa !10
  %arrayidx56 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i64 %add48, ptr %arrayidx56, align 8, !tbaa !10
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i64 %and49, ptr %arrayidx57, align 8, !tbaa !10
  %arrayidx58 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i64 %and50, ptr %arrayidx58, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_add(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %0 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %1 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %2 = add <2 x i64> %1, %0
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %3 = load <2 x i64>, ptr %arrayidx5, align 8, !tbaa !10
  %4 = load <2 x i64>, ptr %arrayidx6, align 8, !tbaa !10
  %5 = add <2 x i64> %4, %3
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %6 = load <2 x i64>, ptr %arrayidx11, align 8, !tbaa !10
  %7 = load <2 x i64>, ptr %arrayidx12, align 8, !tbaa !10
  %8 = add <2 x i64> %7, %6
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %9 = load <2 x i64>, ptr %arrayidx17, align 8, !tbaa !10
  %10 = load <2 x i64>, ptr %arrayidx18, align 8, !tbaa !10
  %11 = add <2 x i64> %10, %9
  store <2 x i64> %2, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %5, ptr %arrayidx25, align 8, !tbaa !10
  store <2 x i64> %8, ptr %arrayidx27, align 8, !tbaa !10
  store <2 x i64> %11, ptr %arrayidx29, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_sub(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %0 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %1 = add <2 x i64> %0, splat (i64 144115188075855870)
  %2 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %3 = sub <2 x i64> %1, %2
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %4 = load <2 x i64>, ptr %arrayidx6, align 8, !tbaa !10
  %5 = add <2 x i64> %4, splat (i64 144115188075855870)
  %6 = load <2 x i64>, ptr %arrayidx8, align 8, !tbaa !10
  %7 = sub <2 x i64> %5, %6
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %8 = load <2 x i64>, ptr %arrayidx14, align 8, !tbaa !10
  %9 = add <2 x i64> %8, <i64 144115188075855868, i64 144115188075855870>
  %10 = load <2 x i64>, ptr %arrayidx16, align 8, !tbaa !10
  %11 = sub <2 x i64> %9, %10
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %12 = load <2 x i64>, ptr %arrayidx22, align 8, !tbaa !10
  %13 = add <2 x i64> %12, splat (i64 144115188075855870)
  %14 = load <2 x i64>, ptr %arrayidx24, align 8, !tbaa !10
  %15 = sub <2 x i64> %13, %14
  store <2 x i64> %3, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %7, ptr %arrayidx32, align 8, !tbaa !10
  store <2 x i64> %11, ptr %arrayidx34, align 8, !tbaa !10
  store <2 x i64> %15, ptr %arrayidx36, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_opp(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %0 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %1 = sub <2 x i64> splat (i64 144115188075855870), %0
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %2 = load <2 x i64>, ptr %arrayidx3, align 8, !tbaa !10
  %3 = sub <2 x i64> splat (i64 144115188075855870), %2
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %4 = load <2 x i64>, ptr %arrayidx7, align 8, !tbaa !10
  %5 = sub <2 x i64> <i64 144115188075855868, i64 144115188075855870>, %4
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %6 = load <2 x i64>, ptr %arrayidx11, align 8, !tbaa !10
  %7 = sub <2 x i64> splat (i64 144115188075855870), %6
  store <2 x i64> %1, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %3, ptr %arrayidx17, align 8, !tbaa !10
  store <2 x i64> %5, ptr %arrayidx19, align 8, !tbaa !10
  store <2 x i64> %7, ptr %arrayidx21, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_selectznz(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #4 {
entry:
  %tobool.i = icmp ne i8 %arg1, 0
  %conv4.i = sext i1 %tobool.i to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #5, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #5, !srcloc !9
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg3, i64 32
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg3, i64 48
  %2 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %3 = load <2 x i64>, ptr %arg3, align 8, !tbaa !10
  %4 = insertelement <2 x i64> poison, i64 %0, i64 0
  %5 = shufflevector <2 x i64> %4, <2 x i64> poison, <2 x i32> zeroinitializer
  %6 = and <2 x i64> %5, %3
  %7 = insertelement <2 x i64> poison, i64 %1, i64 0
  %8 = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer
  %9 = and <2 x i64> %8, %2
  %10 = or <2 x i64> %6, %9
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %11 = load <2 x i64>, ptr %arrayidx4, align 8, !tbaa !10
  %12 = load <2 x i64>, ptr %arrayidx5, align 8, !tbaa !10
  %13 = and <2 x i64> %12, %5
  %14 = and <2 x i64> %11, %8
  %15 = or <2 x i64> %13, %14
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %16 = load <2 x i64>, ptr %arrayidx8, align 8, !tbaa !10
  %17 = load <2 x i64>, ptr %arrayidx9, align 8, !tbaa !10
  %18 = and <2 x i64> %17, %5
  %19 = and <2 x i64> %16, %8
  %20 = or <2 x i64> %18, %19
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %21 = load <2 x i64>, ptr %arrayidx12, align 8, !tbaa !10
  %22 = load <2 x i64>, ptr %arrayidx13, align 8, !tbaa !10
  %23 = and <2 x i64> %22, %5
  %24 = and <2 x i64> %21, %8
  %25 = or <2 x i64> %23, %24
  store <2 x i64> %10, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %15, ptr %arrayidx18, align 8, !tbaa !10
  store <2 x i64> %20, ptr %arrayidx20, align 8, !tbaa !10
  store <2 x i64> %25, ptr %arrayidx22, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_to_bytes(ptr noundef writeonly initializes((0, 56)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %sub1.i = add i64 %0, -72057594037927935
  %and.i = and i64 %sub1.i, 72057594037927935
  %1 = lshr i64 %sub1.i, 56
  %sub4.i = sub nsw i64 0, %1
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %2 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv.i = and i64 %sub4.i, 255
  %.neg = add i64 %2, -72057594037927935
  %sub1.i323 = sub i64 %.neg, %conv.i
  %and.i324 = and i64 %sub1.i323, 72057594037927935
  %3 = lshr i64 %sub1.i323, 56
  %sub4.i326 = sub nsw i64 0, %3
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %4 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %conv.i327 = and i64 %sub4.i326, 255
  %.neg406 = add i64 %4, -72057594037927935
  %sub1.i328 = sub i64 %.neg406, %conv.i327
  %and.i329 = and i64 %sub1.i328, 72057594037927935
  %5 = lshr i64 %sub1.i328, 56
  %sub4.i331 = sub nsw i64 0, %5
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %6 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv.i332 = and i64 %sub4.i331, 255
  %.neg407 = add i64 %6, -72057594037927935
  %sub1.i333 = sub i64 %.neg407, %conv.i332
  %and.i334 = and i64 %sub1.i333, 72057594037927935
  %7 = lshr i64 %sub1.i333, 56
  %sub4.i336 = sub nsw i64 0, %7
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %8 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %conv.i337 = and i64 %sub4.i336, 255
  %.neg408 = add i64 %8, -72057594037927934
  %sub1.i338 = sub i64 %.neg408, %conv.i337
  %and.i339 = and i64 %sub1.i338, 72057594037927935
  %9 = lshr i64 %sub1.i338, 56
  %sub4.i341 = sub nsw i64 0, %9
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %10 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv.i342 = and i64 %sub4.i341, 255
  %.neg409 = add i64 %10, -72057594037927935
  %sub1.i343 = sub i64 %.neg409, %conv.i342
  %and.i344 = and i64 %sub1.i343, 72057594037927935
  %11 = lshr i64 %sub1.i343, 56
  %sub4.i346 = sub nsw i64 0, %11
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %12 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %conv.i347 = and i64 %sub4.i346, 255
  %.neg410 = add i64 %12, -72057594037927935
  %sub1.i348 = sub i64 %.neg410, %conv.i347
  %and.i349 = and i64 %sub1.i348, 72057594037927935
  %13 = lshr i64 %sub1.i348, 56
  %sub4.i351 = sub nsw i64 0, %13
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %14 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %conv.i352 = and i64 %sub4.i351, 255
  %.neg411 = add i64 %14, -72057594037927935
  %sub1.i353 = sub i64 %.neg411, %conv.i352
  %tobool.i = icmp ugt i64 %sub1.i353, 72057594037927935
  %conv4.i = sext i1 %tobool.i to i64
  %15 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #5, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %16 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #5, !srcloc !9
  %and = and i64 %15, 72057594037927935
  %add1.i = add nuw nsw i64 %and, %and.i
  %shr.i = lshr i64 %add1.i, 56
  %add.i = add nuw nsw i64 %and, %and.i324
  %add1.i359 = add nuw nsw i64 %add.i, %shr.i
  %shr.i361 = lshr i64 %add1.i359, 56
  %add.i364 = add nuw nsw i64 %and, %and.i329
  %add1.i365 = add nuw nsw i64 %add.i364, %shr.i361
  %shr.i367 = lshr i64 %add1.i365, 56
  %add.i370 = add nuw nsw i64 %and.i334, %and
  %add1.i371 = add nuw nsw i64 %add.i370, %shr.i367
  %shr.i373 = lshr i64 %add1.i371, 56
  %and11 = and i64 %15, 72057594037927934
  %add.i376 = add nuw nsw i64 %and.i339, %and11
  %add1.i377 = add nuw nsw i64 %add.i376, %shr.i373
  %shr.i379 = lshr i64 %add1.i377, 56
  %add.i382 = add nuw nsw i64 %and.i344, %and
  %add1.i383 = add nuw nsw i64 %add.i382, %shr.i379
  %shr.i385 = lshr i64 %add1.i383, 56
  %add.i388 = add nuw nsw i64 %and.i349, %and
  %add1.i389 = add nuw nsw i64 %add.i388, %shr.i385
  %shr.i391 = lshr i64 %add1.i389, 56
  %add.i394 = add i64 %sub1.i353, %15
  %add1.i395 = add i64 %add.i394, %shr.i391
  %conv = trunc i64 %add1.i to i8
  %shr = lshr i64 %add1.i, 8
  %conv17 = trunc i64 %shr to i8
  %shr18 = lshr i64 %add1.i, 16
  %conv20 = trunc i64 %shr18 to i8
  %shr21 = lshr i64 %add1.i, 24
  %conv23 = trunc i64 %shr21 to i8
  %shr24 = lshr i64 %add1.i, 32
  %conv26 = trunc i64 %shr24 to i8
  %shr27 = lshr i64 %add1.i, 40
  %conv29 = trunc i64 %shr27 to i8
  %and.i357 = lshr i64 %add1.i, 48
  %conv31 = trunc i64 %and.i357 to i8
  %conv33 = trunc i64 %add1.i359 to i8
  %shr34 = lshr i64 %add1.i359, 8
  %conv36 = trunc i64 %shr34 to i8
  %shr37 = lshr i64 %add1.i359, 16
  %conv39 = trunc i64 %shr37 to i8
  %shr40 = lshr i64 %add1.i359, 24
  %conv42 = trunc i64 %shr40 to i8
  %shr43 = lshr i64 %add1.i359, 32
  %conv45 = trunc i64 %shr43 to i8
  %shr46 = lshr i64 %add1.i359, 40
  %conv48 = trunc i64 %shr46 to i8
  %and.i360 = lshr i64 %add1.i359, 48
  %conv50 = trunc i64 %and.i360 to i8
  %conv52 = trunc i64 %add1.i365 to i8
  %shr53 = lshr i64 %add1.i365, 8
  %conv55 = trunc i64 %shr53 to i8
  %shr56 = lshr i64 %add1.i365, 16
  %conv58 = trunc i64 %shr56 to i8
  %shr59 = lshr i64 %add1.i365, 24
  %conv61 = trunc i64 %shr59 to i8
  %shr62 = lshr i64 %add1.i365, 32
  %conv64 = trunc i64 %shr62 to i8
  %shr65 = lshr i64 %add1.i365, 40
  %conv67 = trunc i64 %shr65 to i8
  %and.i366 = lshr i64 %add1.i365, 48
  %conv69 = trunc i64 %and.i366 to i8
  %conv71 = trunc i64 %add1.i371 to i8
  %shr72 = lshr i64 %add1.i371, 8
  %conv74 = trunc i64 %shr72 to i8
  %shr75 = lshr i64 %add1.i371, 16
  %conv77 = trunc i64 %shr75 to i8
  %shr78 = lshr i64 %add1.i371, 24
  %conv80 = trunc i64 %shr78 to i8
  %shr81 = lshr i64 %add1.i371, 32
  %conv83 = trunc i64 %shr81 to i8
  %shr84 = lshr i64 %add1.i371, 40
  %conv86 = trunc i64 %shr84 to i8
  %and.i372 = lshr i64 %add1.i371, 48
  %conv88 = trunc i64 %and.i372 to i8
  %conv90 = trunc i64 %add1.i377 to i8
  %shr91 = lshr i64 %add1.i377, 8
  %conv93 = trunc i64 %shr91 to i8
  %shr94 = lshr i64 %add1.i377, 16
  %conv96 = trunc i64 %shr94 to i8
  %shr97 = lshr i64 %add1.i377, 24
  %conv99 = trunc i64 %shr97 to i8
  %shr100 = lshr i64 %add1.i377, 32
  %conv102 = trunc i64 %shr100 to i8
  %shr103 = lshr i64 %add1.i377, 40
  %conv105 = trunc i64 %shr103 to i8
  %and.i378 = lshr i64 %add1.i377, 48
  %conv107 = trunc i64 %and.i378 to i8
  %conv109 = trunc i64 %add1.i383 to i8
  %shr110 = lshr i64 %add1.i383, 8
  %conv112 = trunc i64 %shr110 to i8
  %shr113 = lshr i64 %add1.i383, 16
  %conv115 = trunc i64 %shr113 to i8
  %shr116 = lshr i64 %add1.i383, 24
  %conv118 = trunc i64 %shr116 to i8
  %shr119 = lshr i64 %add1.i383, 32
  %conv121 = trunc i64 %shr119 to i8
  %shr122 = lshr i64 %add1.i383, 40
  %conv124 = trunc i64 %shr122 to i8
  %and.i384 = lshr i64 %add1.i383, 48
  %conv126 = trunc i64 %and.i384 to i8
  %conv128 = trunc i64 %add1.i389 to i8
  %shr129 = lshr i64 %add1.i389, 8
  %conv131 = trunc i64 %shr129 to i8
  %shr132 = lshr i64 %add1.i389, 16
  %conv134 = trunc i64 %shr132 to i8
  %shr135 = lshr i64 %add1.i389, 24
  %conv137 = trunc i64 %shr135 to i8
  %shr138 = lshr i64 %add1.i389, 32
  %conv140 = trunc i64 %shr138 to i8
  %shr141 = lshr i64 %add1.i389, 40
  %conv143 = trunc i64 %shr141 to i8
  %and.i390 = lshr i64 %add1.i389, 48
  %conv145 = trunc i64 %and.i390 to i8
  %conv147 = trunc i64 %add1.i395 to i8
  %shr148 = lshr i64 %add1.i395, 8
  %conv150 = trunc i64 %shr148 to i8
  %shr151 = lshr i64 %add1.i395, 16
  %conv153 = trunc i64 %shr151 to i8
  %shr154 = lshr i64 %add1.i395, 24
  %conv156 = trunc i64 %shr154 to i8
  %shr157 = lshr i64 %add1.i395, 32
  %conv159 = trunc i64 %shr157 to i8
  %shr160 = lshr i64 %add1.i395, 40
  %conv162 = trunc i64 %shr160 to i8
  %and.i396 = lshr i64 %add1.i395, 48
  %conv164 = trunc i64 %and.i396 to i8
  store i8 %conv, ptr %out1, align 1, !tbaa !12
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %out1, i64 1
  store i8 %conv17, ptr %arrayidx166, align 1, !tbaa !12
  %arrayidx167 = getelementptr inbounds nuw i8, ptr %out1, i64 2
  store i8 %conv20, ptr %arrayidx167, align 1, !tbaa !12
  %arrayidx168 = getelementptr inbounds nuw i8, ptr %out1, i64 3
  store i8 %conv23, ptr %arrayidx168, align 1, !tbaa !12
  %arrayidx169 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i8 %conv26, ptr %arrayidx169, align 1, !tbaa !12
  %arrayidx170 = getelementptr inbounds nuw i8, ptr %out1, i64 5
  store i8 %conv29, ptr %arrayidx170, align 1, !tbaa !12
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %out1, i64 6
  store i8 %conv31, ptr %arrayidx171, align 1, !tbaa !12
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %out1, i64 7
  store i8 %conv33, ptr %arrayidx172, align 1, !tbaa !12
  %arrayidx173 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i8 %conv36, ptr %arrayidx173, align 1, !tbaa !12
  %arrayidx174 = getelementptr inbounds nuw i8, ptr %out1, i64 9
  store i8 %conv39, ptr %arrayidx174, align 1, !tbaa !12
  %arrayidx175 = getelementptr inbounds nuw i8, ptr %out1, i64 10
  store i8 %conv42, ptr %arrayidx175, align 1, !tbaa !12
  %arrayidx176 = getelementptr inbounds nuw i8, ptr %out1, i64 11
  store i8 %conv45, ptr %arrayidx176, align 1, !tbaa !12
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i8 %conv48, ptr %arrayidx177, align 1, !tbaa !12
  %arrayidx178 = getelementptr inbounds nuw i8, ptr %out1, i64 13
  store i8 %conv50, ptr %arrayidx178, align 1, !tbaa !12
  %arrayidx179 = getelementptr inbounds nuw i8, ptr %out1, i64 14
  store i8 %conv52, ptr %arrayidx179, align 1, !tbaa !12
  %arrayidx180 = getelementptr inbounds nuw i8, ptr %out1, i64 15
  store i8 %conv55, ptr %arrayidx180, align 1, !tbaa !12
  %arrayidx181 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i8 %conv58, ptr %arrayidx181, align 1, !tbaa !12
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %out1, i64 17
  store i8 %conv61, ptr %arrayidx182, align 1, !tbaa !12
  %arrayidx183 = getelementptr inbounds nuw i8, ptr %out1, i64 18
  store i8 %conv64, ptr %arrayidx183, align 1, !tbaa !12
  %arrayidx184 = getelementptr inbounds nuw i8, ptr %out1, i64 19
  store i8 %conv67, ptr %arrayidx184, align 1, !tbaa !12
  %arrayidx185 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i8 %conv69, ptr %arrayidx185, align 1, !tbaa !12
  %arrayidx186 = getelementptr inbounds nuw i8, ptr %out1, i64 21
  store i8 %conv71, ptr %arrayidx186, align 1, !tbaa !12
  %arrayidx187 = getelementptr inbounds nuw i8, ptr %out1, i64 22
  store i8 %conv74, ptr %arrayidx187, align 1, !tbaa !12
  %arrayidx188 = getelementptr inbounds nuw i8, ptr %out1, i64 23
  store i8 %conv77, ptr %arrayidx188, align 1, !tbaa !12
  %arrayidx189 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i8 %conv80, ptr %arrayidx189, align 1, !tbaa !12
  %arrayidx190 = getelementptr inbounds nuw i8, ptr %out1, i64 25
  store i8 %conv83, ptr %arrayidx190, align 1, !tbaa !12
  %arrayidx191 = getelementptr inbounds nuw i8, ptr %out1, i64 26
  store i8 %conv86, ptr %arrayidx191, align 1, !tbaa !12
  %arrayidx192 = getelementptr inbounds nuw i8, ptr %out1, i64 27
  store i8 %conv88, ptr %arrayidx192, align 1, !tbaa !12
  %arrayidx193 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i8 %conv90, ptr %arrayidx193, align 1, !tbaa !12
  %arrayidx194 = getelementptr inbounds nuw i8, ptr %out1, i64 29
  store i8 %conv93, ptr %arrayidx194, align 1, !tbaa !12
  %arrayidx195 = getelementptr inbounds nuw i8, ptr %out1, i64 30
  store i8 %conv96, ptr %arrayidx195, align 1, !tbaa !12
  %arrayidx196 = getelementptr inbounds nuw i8, ptr %out1, i64 31
  store i8 %conv99, ptr %arrayidx196, align 1, !tbaa !12
  %arrayidx197 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i8 %conv102, ptr %arrayidx197, align 1, !tbaa !12
  %arrayidx198 = getelementptr inbounds nuw i8, ptr %out1, i64 33
  store i8 %conv105, ptr %arrayidx198, align 1, !tbaa !12
  %arrayidx199 = getelementptr inbounds nuw i8, ptr %out1, i64 34
  store i8 %conv107, ptr %arrayidx199, align 1, !tbaa !12
  %arrayidx200 = getelementptr inbounds nuw i8, ptr %out1, i64 35
  store i8 %conv109, ptr %arrayidx200, align 1, !tbaa !12
  %arrayidx201 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i8 %conv112, ptr %arrayidx201, align 1, !tbaa !12
  %arrayidx202 = getelementptr inbounds nuw i8, ptr %out1, i64 37
  store i8 %conv115, ptr %arrayidx202, align 1, !tbaa !12
  %arrayidx203 = getelementptr inbounds nuw i8, ptr %out1, i64 38
  store i8 %conv118, ptr %arrayidx203, align 1, !tbaa !12
  %arrayidx204 = getelementptr inbounds nuw i8, ptr %out1, i64 39
  store i8 %conv121, ptr %arrayidx204, align 1, !tbaa !12
  %arrayidx205 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i8 %conv124, ptr %arrayidx205, align 1, !tbaa !12
  %arrayidx206 = getelementptr inbounds nuw i8, ptr %out1, i64 41
  store i8 %conv126, ptr %arrayidx206, align 1, !tbaa !12
  %arrayidx207 = getelementptr inbounds nuw i8, ptr %out1, i64 42
  store i8 %conv128, ptr %arrayidx207, align 1, !tbaa !12
  %arrayidx208 = getelementptr inbounds nuw i8, ptr %out1, i64 43
  store i8 %conv131, ptr %arrayidx208, align 1, !tbaa !12
  %arrayidx209 = getelementptr inbounds nuw i8, ptr %out1, i64 44
  store i8 %conv134, ptr %arrayidx209, align 1, !tbaa !12
  %arrayidx210 = getelementptr inbounds nuw i8, ptr %out1, i64 45
  store i8 %conv137, ptr %arrayidx210, align 1, !tbaa !12
  %arrayidx211 = getelementptr inbounds nuw i8, ptr %out1, i64 46
  store i8 %conv140, ptr %arrayidx211, align 1, !tbaa !12
  %arrayidx212 = getelementptr inbounds nuw i8, ptr %out1, i64 47
  store i8 %conv143, ptr %arrayidx212, align 1, !tbaa !12
  %arrayidx213 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i8 %conv145, ptr %arrayidx213, align 1, !tbaa !12
  %arrayidx214 = getelementptr inbounds nuw i8, ptr %out1, i64 49
  store i8 %conv147, ptr %arrayidx214, align 1, !tbaa !12
  %arrayidx215 = getelementptr inbounds nuw i8, ptr %out1, i64 50
  store i8 %conv150, ptr %arrayidx215, align 1, !tbaa !12
  %arrayidx216 = getelementptr inbounds nuw i8, ptr %out1, i64 51
  store i8 %conv153, ptr %arrayidx216, align 1, !tbaa !12
  %arrayidx217 = getelementptr inbounds nuw i8, ptr %out1, i64 52
  store i8 %conv156, ptr %arrayidx217, align 1, !tbaa !12
  %arrayidx218 = getelementptr inbounds nuw i8, ptr %out1, i64 53
  store i8 %conv159, ptr %arrayidx218, align 1, !tbaa !12
  %arrayidx219 = getelementptr inbounds nuw i8, ptr %out1, i64 54
  store i8 %conv162, ptr %arrayidx219, align 1, !tbaa !12
  %arrayidx220 = getelementptr inbounds nuw i8, ptr %out1, i64 55
  store i8 %conv164, ptr %arrayidx220, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_from_bytes(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 55
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %0 to i64
  %shl = shl nuw nsw i64 %conv, 48
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 54
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !12
  %conv2 = zext i8 %1 to i64
  %shl3 = shl nuw nsw i64 %conv2, 40
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 53
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv5 = zext i8 %2 to i64
  %shl6 = shl nuw nsw i64 %conv5, 32
  %3 = getelementptr i8, ptr %arg1, i64 49
  %4 = load i32, ptr %3, align 1
  %5 = zext i32 %4 to i64
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %6 = load i8, ptr %arrayidx17, align 1, !tbaa !12
  %conv18 = zext i8 %6 to i64
  %shl19 = shl nuw nsw i64 %conv18, 48
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arg1, i64 47
  %7 = load i8, ptr %arrayidx20, align 1, !tbaa !12
  %conv21 = zext i8 %7 to i64
  %shl22 = shl nuw nsw i64 %conv21, 40
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 46
  %8 = load i8, ptr %arrayidx23, align 1, !tbaa !12
  %conv24 = zext i8 %8 to i64
  %shl25 = shl nuw nsw i64 %conv24, 32
  %9 = getelementptr i8, ptr %arg1, i64 42
  %10 = load i32, ptr %9, align 1
  %11 = zext i32 %10 to i64
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg1, i64 41
  %12 = load i8, ptr %arrayidx36, align 1, !tbaa !12
  %conv37 = zext i8 %12 to i64
  %shl38 = shl nuw nsw i64 %conv37, 48
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %13 = load i8, ptr %arrayidx39, align 1, !tbaa !12
  %conv40 = zext i8 %13 to i64
  %shl41 = shl nuw nsw i64 %conv40, 40
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %arg1, i64 39
  %14 = load i8, ptr %arrayidx42, align 1, !tbaa !12
  %conv43 = zext i8 %14 to i64
  %shl44 = shl nuw nsw i64 %conv43, 32
  %15 = getelementptr i8, ptr %arg1, i64 35
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %arg1, i64 34
  %18 = load i8, ptr %arrayidx55, align 1, !tbaa !12
  %conv56 = zext i8 %18 to i64
  %shl57 = shl nuw nsw i64 %conv56, 48
  %arrayidx58 = getelementptr inbounds nuw i8, ptr %arg1, i64 33
  %19 = load i8, ptr %arrayidx58, align 1, !tbaa !12
  %conv59 = zext i8 %19 to i64
  %shl60 = shl nuw nsw i64 %conv59, 40
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %20 = load i8, ptr %arrayidx61, align 1, !tbaa !12
  %conv62 = zext i8 %20 to i64
  %shl63 = shl nuw nsw i64 %conv62, 32
  %21 = getelementptr i8, ptr %arg1, i64 28
  %22 = load i32, ptr %21, align 1
  %23 = zext i32 %22 to i64
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %arg1, i64 27
  %24 = load i8, ptr %arrayidx74, align 1, !tbaa !12
  %conv75 = zext i8 %24 to i64
  %shl76 = shl nuw nsw i64 %conv75, 48
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %arg1, i64 26
  %25 = load i8, ptr %arrayidx77, align 1, !tbaa !12
  %conv78 = zext i8 %25 to i64
  %shl79 = shl nuw nsw i64 %conv78, 40
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %arg1, i64 25
  %26 = load i8, ptr %arrayidx80, align 1, !tbaa !12
  %conv81 = zext i8 %26 to i64
  %shl82 = shl nuw nsw i64 %conv81, 32
  %27 = getelementptr i8, ptr %arg1, i64 21
  %28 = load i32, ptr %27, align 1
  %29 = zext i32 %28 to i64
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %30 = load i8, ptr %arrayidx93, align 1, !tbaa !12
  %conv94 = zext i8 %30 to i64
  %shl95 = shl nuw nsw i64 %conv94, 48
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %arg1, i64 19
  %31 = load i8, ptr %arrayidx96, align 1, !tbaa !12
  %conv97 = zext i8 %31 to i64
  %shl98 = shl nuw nsw i64 %conv97, 40
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %arg1, i64 18
  %32 = load i8, ptr %arrayidx99, align 1, !tbaa !12
  %conv100 = zext i8 %32 to i64
  %shl101 = shl nuw nsw i64 %conv100, 32
  %33 = getelementptr i8, ptr %arg1, i64 14
  %34 = load i32, ptr %33, align 1
  %35 = zext i32 %34 to i64
  %arrayidx112 = getelementptr inbounds nuw i8, ptr %arg1, i64 13
  %36 = load i8, ptr %arrayidx112, align 1, !tbaa !12
  %conv113 = zext i8 %36 to i64
  %shl114 = shl nuw nsw i64 %conv113, 48
  %arrayidx115 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %37 = load i8, ptr %arrayidx115, align 1, !tbaa !12
  %conv116 = zext i8 %37 to i64
  %shl117 = shl nuw nsw i64 %conv116, 40
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %arg1, i64 11
  %38 = load i8, ptr %arrayidx118, align 1, !tbaa !12
  %conv119 = zext i8 %38 to i64
  %shl120 = shl nuw nsw i64 %conv119, 32
  %39 = getelementptr i8, ptr %arg1, i64 7
  %40 = load i32, ptr %39, align 1
  %41 = zext i32 %40 to i64
  %arrayidx131 = getelementptr inbounds nuw i8, ptr %arg1, i64 6
  %42 = load i8, ptr %arrayidx131, align 1, !tbaa !12
  %conv132 = zext i8 %42 to i64
  %shl133 = shl nuw nsw i64 %conv132, 48
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %arg1, i64 5
  %43 = load i8, ptr %arrayidx134, align 1, !tbaa !12
  %conv135 = zext i8 %43 to i64
  %shl136 = shl nuw nsw i64 %conv135, 40
  %arrayidx137 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %44 = load i8, ptr %arrayidx137, align 1, !tbaa !12
  %conv138 = zext i8 %44 to i64
  %shl139 = shl nuw nsw i64 %conv138, 32
  %45 = load i32, ptr %arg1, align 1
  %46 = zext i32 %45 to i64
  %add153 = or disjoint i64 %shl136, %46
  %add154 = or disjoint i64 %add153, %shl139
  %add155 = or disjoint i64 %add154, %shl133
  %add160 = or disjoint i64 %shl117, %41
  %add161 = or disjoint i64 %add160, %shl120
  %add162 = or disjoint i64 %add161, %shl114
  %add167 = or disjoint i64 %shl98, %35
  %add168 = or disjoint i64 %add167, %shl101
  %add169 = or disjoint i64 %add168, %shl95
  %add174 = or disjoint i64 %shl79, %29
  %add175 = or disjoint i64 %add174, %shl82
  %add176 = or disjoint i64 %add175, %shl76
  %add181 = or disjoint i64 %shl60, %23
  %add182 = or disjoint i64 %add181, %shl63
  %add183 = or disjoint i64 %add182, %shl57
  %add188 = or disjoint i64 %shl41, %17
  %add189 = or disjoint i64 %add188, %shl44
  %add190 = or disjoint i64 %add189, %shl38
  %add195 = or disjoint i64 %shl22, %11
  %add196 = or disjoint i64 %add195, %shl25
  %add197 = or disjoint i64 %add196, %shl19
  %add202 = or disjoint i64 %shl3, %5
  %add203 = or disjoint i64 %add202, %shl6
  %add204 = or disjoint i64 %add203, %shl
  store i64 %add155, ptr %out1, align 8, !tbaa !10
  %arrayidx206 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %add162, ptr %arrayidx206, align 8, !tbaa !10
  %arrayidx207 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add169, ptr %arrayidx207, align 8, !tbaa !10
  %arrayidx208 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %add176, ptr %arrayidx208, align 8, !tbaa !10
  %arrayidx209 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %add183, ptr %arrayidx209, align 8, !tbaa !10
  %arrayidx210 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i64 %add190, ptr %arrayidx210, align 8, !tbaa !10
  %arrayidx211 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i64 %add197, ptr %arrayidx211, align 8, !tbaa !10
  %arrayidx212 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i64 %add204, ptr %arrayidx212, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_relax(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %0 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %1 = load <2 x i64>, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %2 = load <2 x i64>, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %3 = load <2 x i64>, ptr %arrayidx6, align 8, !tbaa !10
  store <2 x i64> %0, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %1, ptr %arrayidx10, align 8, !tbaa !10
  store <2 x i64> %2, ptr %arrayidx12, align 8, !tbaa !10
  store <2 x i64> %3, ptr %arrayidx14, align 8, !tbaa !10
  ret void
}

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i64 3321}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
