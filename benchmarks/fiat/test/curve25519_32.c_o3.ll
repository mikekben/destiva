; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @fiat_25519_value_barrier_u32(i32 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #5, !srcloc !9
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_25519_addcarryx_u26(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i32
  %add = add i32 %arg2, %conv
  %add1 = add i32 %add, %arg3
  %and = and i32 %add1, 67108863
  %shr = lshr i32 %add1, 26
  %conv2 = trunc nuw nsw i32 %shr to i8
  store i32 %and, ptr %out1, align 4, !tbaa !5
  store i8 %conv2, ptr %out2, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_25519_subborrowx_u26(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i32
  %0 = add i32 %arg3, %conv
  %sub1 = sub i32 %arg2, %0
  %shr = ashr i32 %sub1, 26
  %and = and i32 %sub1, 67108863
  store i32 %and, ptr %out1, align 4, !tbaa !5
  %1 = trunc nsw i32 %shr to i8
  %conv5 = sub nsw i8 0, %1
  store i8 %conv5, ptr %out2, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_25519_addcarryx_u25(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i32
  %add = add i32 %arg2, %conv
  %add1 = add i32 %add, %arg3
  %and = and i32 %add1, 33554431
  %shr = lshr i32 %add1, 25
  %conv2 = trunc nuw nsw i32 %shr to i8
  store i32 %and, ptr %out1, align 4, !tbaa !5
  store i8 %conv2, ptr %out2, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_25519_subborrowx_u25(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i32
  %0 = add i32 %arg3, %conv
  %sub1 = sub i32 %arg2, %0
  %shr = ashr i32 %sub1, 25
  %and = and i32 %sub1, 33554431
  store i32 %and, ptr %out1, align 4, !tbaa !5
  %1 = trunc nsw i32 %shr to i8
  %conv5 = sub nsw i8 0, %1
  store i8 %conv5, ptr %out2, align 1, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @fiat_25519_cmovznz_u32(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #2 {
entry:
  %tobool = icmp ne i8 %arg1, 0
  %conv4 = sext i1 %tobool to i32
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv4) #5, !srcloc !9
  %and5 = and i32 %0, %arg3
  %not = xor i32 %conv4, -1
  %1 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %not) #5, !srcloc !9
  %and7 = and i32 %1, %arg2
  %or = or i32 %and7, %and5
  store i32 %or, ptr %out1, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_carry_mul(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %conv = zext i32 %0 to i64
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg2, i64 36
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %mul = mul i32 %1, 38
  %conv2 = zext i32 %mul to i64
  %mul3 = mul nuw i64 %conv2, %conv
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %mul7 = mul i32 %2, 19
  %conv8 = zext i32 %mul7 to i64
  %mul9 = mul nuw i64 %conv8, %conv
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 28
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %mul13 = mul i32 %3, 38
  %conv14 = zext i32 %mul13 to i64
  %mul15 = mul nuw i64 %conv14, %conv
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %4 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %mul19 = mul i32 %4, 19
  %conv20 = zext i32 %mul19 to i64
  %mul21 = mul nuw i64 %conv20, %conv
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg2, i64 20
  %5 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %mul25 = mul i32 %5, 38
  %conv26 = zext i32 %mul25 to i64
  %mul27 = mul nuw i64 %conv26, %conv
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %6 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %mul31 = mul i32 %6, 19
  %conv32 = zext i32 %mul31 to i64
  %mul33 = mul nuw i64 %conv32, %conv
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg2, i64 12
  %7 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %mul37 = mul i32 %7, 38
  %conv38 = zext i32 %mul37 to i64
  %mul39 = mul nuw i64 %conv38, %conv
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %8 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %mul43 = mul i32 %8, 19
  %conv44 = zext i32 %mul43 to i64
  %mul45 = mul nuw i64 %conv44, %conv
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %arg2, i64 4
  %9 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %mul49 = mul i32 %9, 38
  %conv50 = zext i32 %mul49 to i64
  %mul51 = mul nuw i64 %conv50, %conv
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %10 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %conv53 = zext i32 %10 to i64
  %mul55 = mul i32 %1, 19
  %conv56 = zext i32 %mul55 to i64
  %mul57 = mul nuw i64 %conv53, %conv56
  %mul63 = mul nuw i64 %conv53, %conv8
  %mul67 = mul i32 %3, 19
  %conv68 = zext i32 %mul67 to i64
  %mul69 = mul nuw i64 %conv53, %conv68
  %mul75 = mul nuw i64 %conv53, %conv20
  %mul79 = mul i32 %5, 19
  %conv80 = zext i32 %mul79 to i64
  %mul81 = mul nuw i64 %conv53, %conv80
  %mul87 = mul nuw i64 %conv53, %conv32
  %mul91 = mul i32 %7, 19
  %conv92 = zext i32 %mul91 to i64
  %mul93 = mul nuw i64 %conv53, %conv92
  %mul99 = mul nuw i64 %conv53, %conv44
  %arrayidx100 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %11 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %conv101 = zext i32 %11 to i64
  %mul105 = mul nuw i64 %conv101, %conv2
  %mul111 = mul nuw i64 %conv101, %conv8
  %mul117 = mul nuw i64 %conv101, %conv14
  %mul123 = mul nuw i64 %conv101, %conv20
  %mul129 = mul nuw i64 %conv101, %conv26
  %mul135 = mul nuw i64 %conv101, %conv32
  %mul141 = mul nuw i64 %conv101, %conv38
  %arrayidx142 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %12 = load i32, ptr %arrayidx142, align 4, !tbaa !5
  %conv143 = zext i32 %12 to i64
  %mul147 = mul nuw i64 %conv143, %conv56
  %mul153 = mul nuw i64 %conv143, %conv8
  %mul159 = mul nuw i64 %conv143, %conv68
  %mul165 = mul nuw i64 %conv143, %conv20
  %mul171 = mul nuw i64 %conv143, %conv80
  %mul177 = mul nuw i64 %conv143, %conv32
  %arrayidx178 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %13 = load i32, ptr %arrayidx178, align 4, !tbaa !5
  %conv179 = zext i32 %13 to i64
  %mul183 = mul nuw i64 %conv179, %conv2
  %mul189 = mul nuw i64 %conv179, %conv8
  %mul195 = mul nuw i64 %conv179, %conv14
  %mul201 = mul nuw i64 %conv179, %conv20
  %mul207 = mul nuw i64 %conv179, %conv26
  %arrayidx208 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %14 = load i32, ptr %arrayidx208, align 4, !tbaa !5
  %conv209 = zext i32 %14 to i64
  %mul213 = mul nuw i64 %conv209, %conv56
  %mul219 = mul nuw i64 %conv209, %conv8
  %mul225 = mul nuw i64 %conv209, %conv68
  %mul231 = mul nuw i64 %conv209, %conv20
  %arrayidx232 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %15 = load i32, ptr %arrayidx232, align 4, !tbaa !5
  %conv233 = zext i32 %15 to i64
  %mul237 = mul nuw i64 %conv233, %conv2
  %mul243 = mul nuw i64 %conv233, %conv8
  %mul249 = mul nuw i64 %conv233, %conv14
  %arrayidx250 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %16 = load i32, ptr %arrayidx250, align 4, !tbaa !5
  %conv251 = zext i32 %16 to i64
  %mul255 = mul nuw i64 %conv251, %conv56
  %mul261 = mul nuw i64 %conv251, %conv8
  %arrayidx262 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %17 = load i32, ptr %arrayidx262, align 4, !tbaa !5
  %conv263 = zext i32 %17 to i64
  %mul267 = mul nuw i64 %conv263, %conv2
  %18 = load i32, ptr %arg2, align 4, !tbaa !5
  %conv271 = zext i32 %18 to i64
  %mul272 = mul nuw i64 %conv271, %conv
  %conv276 = zext i32 %9 to i64
  %mul277 = mul nuw i64 %conv53, %conv276
  %mul282 = mul nuw i64 %conv271, %conv53
  %conv286 = zext i32 %8 to i64
  %mul287 = mul nuw i64 %conv101, %conv286
  %mul291 = shl i32 %9, 1
  %conv292 = zext i32 %mul291 to i64
  %mul293 = mul nuw i64 %conv101, %conv292
  %mul298 = mul nuw i64 %conv271, %conv101
  %conv302 = zext i32 %7 to i64
  %mul303 = mul nuw i64 %conv143, %conv302
  %mul308 = mul nuw i64 %conv143, %conv286
  %mul313 = mul nuw i64 %conv143, %conv276
  %mul318 = mul nuw i64 %conv271, %conv143
  %conv322 = zext i32 %6 to i64
  %mul323 = mul nuw i64 %conv179, %conv322
  %mul327 = shl i32 %7, 1
  %conv328 = zext i32 %mul327 to i64
  %mul329 = mul nuw i64 %conv179, %conv328
  %mul334 = mul nuw i64 %conv179, %conv286
  %mul340 = mul nuw i64 %conv179, %conv292
  %mul345 = mul nuw i64 %conv271, %conv179
  %conv349 = zext i32 %5 to i64
  %mul350 = mul nuw i64 %conv209, %conv349
  %mul355 = mul nuw i64 %conv209, %conv322
  %mul360 = mul nuw i64 %conv209, %conv302
  %mul365 = mul nuw i64 %conv209, %conv286
  %mul370 = mul nuw i64 %conv209, %conv276
  %mul375 = mul nuw i64 %conv271, %conv209
  %conv379 = zext i32 %4 to i64
  %mul380 = mul nuw i64 %conv233, %conv379
  %mul384 = shl i32 %5, 1
  %conv385 = zext i32 %mul384 to i64
  %mul386 = mul nuw i64 %conv233, %conv385
  %mul391 = mul nuw i64 %conv233, %conv322
  %mul397 = mul nuw i64 %conv233, %conv328
  %mul402 = mul nuw i64 %conv233, %conv286
  %mul408 = mul nuw i64 %conv233, %conv292
  %mul413 = mul nuw i64 %conv271, %conv233
  %conv417 = zext i32 %3 to i64
  %mul418 = mul nuw i64 %conv251, %conv417
  %mul423 = mul nuw i64 %conv251, %conv379
  %mul428 = mul nuw i64 %conv251, %conv349
  %mul433 = mul nuw i64 %conv251, %conv322
  %mul438 = mul nuw i64 %conv251, %conv302
  %mul443 = mul nuw i64 %conv251, %conv286
  %mul448 = mul nuw i64 %conv251, %conv276
  %mul453 = mul nuw i64 %conv271, %conv251
  %conv457 = zext i32 %2 to i64
  %mul458 = mul nuw i64 %conv263, %conv457
  %mul462 = shl i32 %3, 1
  %conv463 = zext i32 %mul462 to i64
  %mul464 = mul nuw i64 %conv263, %conv463
  %mul469 = mul nuw i64 %conv263, %conv379
  %mul475 = mul nuw i64 %conv263, %conv385
  %mul480 = mul nuw i64 %conv263, %conv322
  %mul486 = mul nuw i64 %conv263, %conv328
  %mul491 = mul nuw i64 %conv263, %conv286
  %mul497 = mul nuw i64 %conv263, %conv292
  %mul502 = mul nuw i64 %conv271, %conv263
  %19 = load i32, ptr %arg1, align 4, !tbaa !5
  %conv504 = zext i32 %19 to i64
  %conv506 = zext i32 %1 to i64
  %mul507 = mul nuw i64 %conv504, %conv506
  %mul512 = mul nuw i64 %conv504, %conv457
  %mul517 = mul nuw i64 %conv504, %conv417
  %mul522 = mul nuw i64 %conv504, %conv379
  %mul527 = mul nuw i64 %conv504, %conv349
  %mul532 = mul nuw i64 %conv504, %conv322
  %mul537 = mul nuw i64 %conv504, %conv302
  %mul542 = mul nuw i64 %conv504, %conv286
  %mul547 = mul nuw i64 %conv504, %conv276
  %mul552 = mul nuw i64 %conv504, %conv271
  %add = add i64 %mul99, %mul51
  %add553 = add i64 %add, %mul141
  %add554 = add i64 %add553, %mul177
  %add555 = add i64 %add554, %mul207
  %add556 = add i64 %add555, %mul231
  %add557 = add i64 %add556, %mul249
  %add558 = add i64 %add557, %mul261
  %add559 = add i64 %add558, %mul267
  %add560 = add i64 %add559, %mul552
  %shr = lshr i64 %add560, 26
  %conv561 = and i64 %add560, 67108863
  %add580 = add i64 %mul57, %mul9
  %add589 = add i64 %mul63, %mul15
  %add590 = add i64 %add589, %mul105
  %add598 = add i64 %mul69, %mul21
  %add599 = add i64 %add598, %mul111
  %add600 = add i64 %add599, %mul147
  %add607 = add i64 %mul75, %mul27
  %add608 = add i64 %add607, %mul117
  %add609 = add i64 %add608, %mul153
  %add610 = add i64 %add609, %mul183
  %add616 = add i64 %mul81, %mul33
  %add617 = add i64 %add616, %mul123
  %add618 = add i64 %add617, %mul159
  %add619 = add i64 %add618, %mul189
  %add620 = add i64 %add619, %mul213
  %add625 = add i64 %mul87, %mul39
  %add626 = add i64 %add625, %mul129
  %add627 = add i64 %add626, %mul165
  %add628 = add i64 %add627, %mul195
  %add629 = add i64 %add628, %mul219
  %add630 = add i64 %add629, %mul237
  %add634 = add i64 %mul93, %mul45
  %add635 = add i64 %add634, %mul135
  %add636 = add i64 %add635, %mul171
  %add637 = add i64 %add636, %mul201
  %add638 = add i64 %add637, %mul225
  %add639 = add i64 %add638, %mul243
  %add640 = add i64 %add639, %mul255
  %add641 = add i64 %add640, %mul502
  %add642 = add i64 %add641, %mul547
  %add643 = add i64 %add642, %shr
  %shr644 = lshr i64 %add643, 25
  %20 = trunc i64 %add643 to i32
  %conv646 = and i32 %20, 33554431
  %add631 = add i64 %add630, %mul497
  %add632 = add i64 %add631, %mul453
  %add633 = add i64 %add632, %mul542
  %add647 = add i64 %add633, %shr644
  %shr648 = lshr i64 %add647, 26
  %21 = trunc i64 %add647 to i32
  %conv650 = and i32 %21, 67108863
  %add621 = add i64 %add620, %mul448
  %add622 = add i64 %add621, %mul491
  %add623 = add i64 %add622, %mul413
  %add624 = add i64 %add623, %mul537
  %add651 = add i64 %add624, %shr648
  %shr652 = lshr i64 %add651, 25
  %22 = trunc i64 %add651 to i32
  %conv654 = and i32 %22, 33554431
  %add611 = add i64 %add610, %mul408
  %add612 = add i64 %add611, %mul443
  %add613 = add i64 %add612, %mul486
  %add614 = add i64 %add613, %mul375
  %add615 = add i64 %add614, %mul532
  %add655 = add i64 %add615, %shr652
  %shr656 = lshr i64 %add655, 26
  %23 = trunc i64 %add655 to i32
  %conv658 = and i32 %23, 67108863
  %add601 = add i64 %add600, %mul370
  %add602 = add i64 %add601, %mul402
  %add603 = add i64 %add602, %mul438
  %add604 = add i64 %add603, %mul480
  %add605 = add i64 %add604, %mul345
  %add606 = add i64 %add605, %mul527
  %add659 = add i64 %add606, %shr656
  %shr660 = lshr i64 %add659, 25
  %24 = trunc i64 %add659 to i32
  %conv662 = and i32 %24, 33554431
  %add591 = add i64 %add590, %mul340
  %add592 = add i64 %add591, %mul365
  %add593 = add i64 %add592, %mul397
  %add594 = add i64 %add593, %mul433
  %add595 = add i64 %add594, %mul475
  %add596 = add i64 %add595, %mul318
  %add597 = add i64 %add596, %mul522
  %add663 = add i64 %add597, %shr660
  %shr664 = lshr i64 %add663, 26
  %25 = trunc i64 %add663 to i32
  %conv666 = and i32 %25, 67108863
  %add581 = add i64 %add580, %mul313
  %add582 = add i64 %add581, %mul334
  %add583 = add i64 %add582, %mul360
  %add584 = add i64 %add583, %mul391
  %add585 = add i64 %add584, %mul428
  %add586 = add i64 %add585, %mul469
  %add587 = add i64 %add586, %mul298
  %add588 = add i64 %add587, %mul517
  %add667 = add i64 %add588, %shr664
  %shr668 = lshr i64 %add667, 25
  %26 = trunc i64 %add667 to i32
  %conv670 = and i32 %26, 33554431
  %add571 = add i64 %mul293, %mul3
  %add572 = add i64 %add571, %mul308
  %add573 = add i64 %add572, %mul329
  %add574 = add i64 %add573, %mul355
  %add575 = add i64 %add574, %mul386
  %add576 = add i64 %add575, %mul423
  %add577 = add i64 %add576, %mul464
  %add578 = add i64 %add577, %mul282
  %add579 = add i64 %add578, %mul512
  %add671 = add i64 %add579, %shr668
  %shr672 = lshr i64 %add671, 26
  %27 = trunc i64 %add671 to i32
  %conv674 = and i32 %27, 67108863
  %add562 = add i64 %mul287, %mul277
  %add563 = add i64 %add562, %mul303
  %add564 = add i64 %add563, %mul323
  %add565 = add i64 %add564, %mul350
  %add566 = add i64 %add565, %mul380
  %add567 = add i64 %add566, %mul418
  %add568 = add i64 %add567, %mul458
  %add569 = add i64 %add568, %mul272
  %add570 = add i64 %add569, %mul507
  %add675 = add i64 %add570, %shr672
  %shr676 = lshr i64 %add675, 25
  %28 = trunc i64 %add675 to i32
  %conv678 = and i32 %28, 33554431
  %mul679 = mul nuw nsw i64 %shr676, 19
  %add681 = add nuw nsw i64 %mul679, %conv561
  %shr682 = lshr i64 %add681, 26
  %conv683 = trunc nuw nsw i64 %shr682 to i32
  %29 = trunc i64 %add681 to i32
  %conv685 = and i32 %29, 67108863
  %add686 = add nuw nsw i32 %conv646, %conv683
  %shr687 = lshr i32 %add686, 25
  %and689 = and i32 %add686, 33554431
  %add691 = add nuw nsw i32 %shr687, %conv650
  store i32 %conv685, ptr %out1, align 4, !tbaa !5
  %arrayidx693 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %and689, ptr %arrayidx693, align 4, !tbaa !5
  %arrayidx694 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %add691, ptr %arrayidx694, align 4, !tbaa !5
  %arrayidx695 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %conv654, ptr %arrayidx695, align 4, !tbaa !5
  %arrayidx696 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %conv658, ptr %arrayidx696, align 4, !tbaa !5
  %arrayidx697 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i32 %conv662, ptr %arrayidx697, align 4, !tbaa !5
  %arrayidx698 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i32 %conv666, ptr %arrayidx698, align 4, !tbaa !5
  %arrayidx699 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i32 %conv670, ptr %arrayidx699, align 4, !tbaa !5
  %arrayidx700 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i32 %conv674, ptr %arrayidx700, align 4, !tbaa !5
  %arrayidx701 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i32 %conv678, ptr %arrayidx701, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_carry_square(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul1 = mul i32 %0, 38
  %mul3 = shl i32 %0, 1
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %mul5 = mul i32 %1, 19
  %conv = zext i32 %mul5 to i64
  %mul6 = shl nuw nsw i64 %conv, 1
  %mul8 = shl i32 %1, 1
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %mul11 = mul i32 %2, 38
  %mul13 = shl i32 %2, 1
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %mul15 = mul i32 %3, 19
  %conv16 = zext i32 %mul15 to i64
  %mul17 = shl nuw nsw i64 %conv16, 1
  %mul19 = shl i32 %3, 1
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %4 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %mul23 = shl i32 %4, 1
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %5 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %mul25 = shl i32 %5, 1
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %6 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %mul27 = shl i32 %6, 1
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %7 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %mul29 = shl i32 %7, 1
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %mul31 = shl i32 %8, 1
  %conv33 = zext i32 %0 to i64
  %conv35 = zext i32 %mul1 to i64
  %mul36 = mul nuw i64 %conv35, %conv33
  %conv38 = zext i32 %1 to i64
  %mul40 = mul nuw i64 %conv38, %conv35
  %mul44 = mul nuw i64 %conv, %conv38
  %conv46 = zext i32 %2 to i64
  %mul48 = shl nuw nsw i64 %conv35, 1
  %mul49 = mul i64 %mul48, %conv46
  %mul52 = mul i64 %mul6, %conv46
  %conv56 = zext i32 %mul11 to i64
  %mul57 = mul nuw i64 %conv56, %conv46
  %conv59 = zext i32 %3 to i64
  %mul61 = mul nuw i64 %conv59, %conv35
  %mul64 = mul i64 %mul6, %conv59
  %mul68 = mul nuw i64 %conv59, %conv56
  %mul72 = mul nuw i64 %conv16, %conv59
  %conv74 = zext i32 %4 to i64
  %mul77 = mul i64 %mul48, %conv74
  %mul80 = mul i64 %mul6, %conv74
  %mul84 = shl nuw nsw i64 %conv56, 1
  %mul85 = mul i64 %mul84, %conv74
  %mul88 = mul i64 %mul17, %conv74
  %mul91 = mul i32 %4, 38
  %conv92 = zext i32 %mul91 to i64
  %mul93 = mul nuw i64 %conv92, %conv74
  %conv95 = zext i32 %5 to i64
  %mul97 = mul nuw i64 %conv95, %conv35
  %mul100 = mul i64 %mul6, %conv95
  %mul104 = mul nuw i64 %conv95, %conv56
  %mul107 = mul i64 %mul17, %conv95
  %conv110 = zext i32 %mul23 to i64
  %mul111 = mul nuw i64 %conv95, %conv110
  %mul116 = mul nuw i64 %conv95, %conv95
  %conv118 = zext i32 %6 to i64
  %mul121 = mul i64 %mul48, %conv118
  %mul124 = mul i64 %mul6, %conv118
  %mul129 = mul i64 %mul84, %conv118
  %conv132 = zext i32 %mul19 to i64
  %mul133 = mul nuw i64 %conv118, %conv132
  %mul136 = shl i32 %4, 2
  %conv137 = zext i32 %mul136 to i64
  %mul138 = mul nuw i64 %conv118, %conv137
  %conv141 = zext i32 %mul25 to i64
  %mul142 = mul nuw i64 %conv118, %conv141
  %conv147 = zext i32 %mul27 to i64
  %mul148 = mul nuw i64 %conv147, %conv118
  %conv150 = zext i32 %7 to i64
  %mul152 = mul nuw i64 %conv150, %conv35
  %mul155 = mul i64 %mul6, %conv150
  %conv158 = zext i32 %mul13 to i64
  %mul159 = mul nuw i64 %conv150, %conv158
  %mul163 = mul nuw i64 %conv150, %conv132
  %mul167 = mul nuw i64 %conv150, %conv110
  %mul171 = mul nuw i64 %conv150, %conv141
  %mul175 = mul nuw i64 %conv150, %conv147
  %mul180 = mul nuw i64 %conv150, %conv150
  %conv182 = zext i32 %8 to i64
  %mul185 = mul i64 %mul48, %conv182
  %conv188 = zext i32 %mul8 to i64
  %mul189 = mul nuw i64 %conv182, %conv188
  %mul192 = shl i32 %2, 2
  %conv193 = zext i32 %mul192 to i64
  %mul194 = mul nuw i64 %conv182, %conv193
  %mul198 = mul nuw i64 %conv182, %conv132
  %mul203 = mul nuw i64 %conv182, %conv137
  %mul207 = mul nuw i64 %conv182, %conv141
  %mul210 = shl i32 %6, 2
  %conv211 = zext i32 %mul210 to i64
  %mul212 = mul nuw i64 %conv182, %conv211
  %conv215 = zext i32 %mul29 to i64
  %mul216 = mul nuw i64 %conv182, %conv215
  %conv221 = zext i32 %mul31 to i64
  %mul222 = mul nuw i64 %conv221, %conv182
  %9 = load i32, ptr %arg1, align 4, !tbaa !5
  %conv224 = zext i32 %9 to i64
  %conv225 = zext i32 %mul3 to i64
  %mul226 = mul nuw i64 %conv224, %conv225
  %mul230 = mul nuw i64 %conv224, %conv188
  %mul234 = mul nuw i64 %conv224, %conv158
  %mul238 = mul nuw i64 %conv224, %conv132
  %mul242 = mul nuw i64 %conv224, %conv110
  %mul246 = mul nuw i64 %conv224, %conv141
  %mul250 = mul nuw i64 %conv224, %conv147
  %mul254 = mul nuw i64 %conv224, %conv215
  %mul258 = mul nuw i64 %conv224, %conv221
  %mul263 = mul nuw i64 %conv224, %conv224
  %add = add i64 %mul107, %mul93
  %add264 = add i64 %add, %mul129
  %add265 = add i64 %add264, %mul155
  %add266 = add i64 %add265, %mul185
  %add267 = add i64 %add266, %mul263
  %shr = lshr i64 %add267, 26
  %conv268 = and i64 %add267, 67108863
  %add269 = add i64 %mul133, %mul111
  %add270 = add i64 %add269, %mul159
  %add271 = add i64 %add270, %mul189
  %add272 = add i64 %add271, %mul226
  %add273 = add i64 %mul116, %mul36
  %add274 = add i64 %add273, %mul138
  %add275 = add i64 %add274, %mul163
  %add276 = add i64 %add275, %mul194
  %add277 = add i64 %add276, %mul230
  %add278 = add i64 %mul142, %mul40
  %add279 = add i64 %add278, %mul167
  %add280 = add i64 %add279, %mul198
  %add281 = add i64 %add280, %mul234
  %add282 = add i64 %mul49, %mul44
  %add283 = add i64 %add282, %mul148
  %add284 = add i64 %add283, %mul171
  %add285 = add i64 %add284, %mul203
  %add286 = add i64 %add285, %mul238
  %add287 = add i64 %mul61, %mul52
  %add288 = add i64 %add287, %mul175
  %add289 = add i64 %add288, %mul207
  %add290 = add i64 %add289, %mul242
  %add291 = add i64 %mul64, %mul57
  %add292 = add i64 %add291, %mul77
  %add293 = add i64 %add292, %mul180
  %add294 = add i64 %add293, %mul212
  %add295 = add i64 %add294, %mul246
  %add296 = add i64 %mul80, %mul68
  %add297 = add i64 %add296, %mul97
  %add298 = add i64 %add297, %mul216
  %add299 = add i64 %add298, %mul250
  %add300 = add i64 %mul85, %mul72
  %add301 = add i64 %add300, %mul100
  %add302 = add i64 %add301, %mul121
  %add303 = add i64 %add302, %mul222
  %add304 = add i64 %add303, %mul254
  %add305 = add i64 %mul104, %mul88
  %add306 = add i64 %add305, %mul124
  %add307 = add i64 %add306, %mul152
  %add308 = add i64 %add307, %mul258
  %add309 = add i64 %add308, %shr
  %shr310 = lshr i64 %add309, 25
  %10 = trunc i64 %add309 to i32
  %conv312 = and i32 %10, 33554431
  %add313 = add i64 %add304, %shr310
  %shr314 = lshr i64 %add313, 26
  %11 = trunc i64 %add313 to i32
  %conv316 = and i32 %11, 67108863
  %add317 = add i64 %add299, %shr314
  %shr318 = lshr i64 %add317, 25
  %12 = trunc i64 %add317 to i32
  %conv320 = and i32 %12, 33554431
  %add321 = add i64 %add295, %shr318
  %shr322 = lshr i64 %add321, 26
  %13 = trunc i64 %add321 to i32
  %conv324 = and i32 %13, 67108863
  %add325 = add i64 %add290, %shr322
  %shr326 = lshr i64 %add325, 25
  %14 = trunc i64 %add325 to i32
  %conv328 = and i32 %14, 33554431
  %add329 = add i64 %add286, %shr326
  %shr330 = lshr i64 %add329, 26
  %15 = trunc i64 %add329 to i32
  %conv332 = and i32 %15, 67108863
  %add333 = add i64 %add281, %shr330
  %shr334 = lshr i64 %add333, 25
  %16 = trunc i64 %add333 to i32
  %conv336 = and i32 %16, 33554431
  %add337 = add i64 %add277, %shr334
  %shr338 = lshr i64 %add337, 26
  %17 = trunc i64 %add337 to i32
  %conv340 = and i32 %17, 67108863
  %add341 = add i64 %add272, %shr338
  %shr342 = lshr i64 %add341, 25
  %18 = trunc i64 %add341 to i32
  %conv344 = and i32 %18, 33554431
  %mul345 = mul nuw nsw i64 %shr342, 19
  %add347 = add nuw nsw i64 %mul345, %conv268
  %shr348 = lshr i64 %add347, 26
  %conv349 = trunc nuw nsw i64 %shr348 to i32
  %19 = trunc i64 %add347 to i32
  %conv351 = and i32 %19, 67108863
  %add352 = add nuw nsw i32 %conv312, %conv349
  %shr353 = lshr i32 %add352, 25
  %and355 = and i32 %add352, 33554431
  %add357 = add nuw nsw i32 %shr353, %conv316
  store i32 %conv351, ptr %out1, align 4, !tbaa !5
  %arrayidx359 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %and355, ptr %arrayidx359, align 4, !tbaa !5
  %arrayidx360 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %add357, ptr %arrayidx360, align 4, !tbaa !5
  %arrayidx361 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %conv320, ptr %arrayidx361, align 4, !tbaa !5
  %arrayidx362 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %conv324, ptr %arrayidx362, align 4, !tbaa !5
  %arrayidx363 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i32 %conv328, ptr %arrayidx363, align 4, !tbaa !5
  %arrayidx364 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i32 %conv332, ptr %arrayidx364, align 4, !tbaa !5
  %arrayidx365 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i32 %conv336, ptr %arrayidx365, align 4, !tbaa !5
  %arrayidx366 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i32 %conv340, ptr %arrayidx366, align 4, !tbaa !5
  %arrayidx367 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i32 %conv344, ptr %arrayidx367, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_carry(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i32, ptr %arg1, align 4, !tbaa !5
  %shr = lshr i32 %0, 26
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %add = add i32 %shr, %1
  %shr2 = lshr i32 %add, 25
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %2 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %add4 = add i32 %shr2, %2
  %shr5 = lshr i32 %add4, 26
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add7 = add i32 %shr5, %3
  %shr8 = lshr i32 %add7, 25
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %add10 = add i32 %shr8, %4
  %shr11 = lshr i32 %add10, 26
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %5 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %add13 = add i32 %shr11, %5
  %shr14 = lshr i32 %add13, 25
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %6 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %add16 = add i32 %shr14, %6
  %shr17 = lshr i32 %add16, 26
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %7 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add19 = add i32 %shr17, %7
  %shr20 = lshr i32 %add19, 25
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %8 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %add22 = add i32 %shr20, %8
  %shr23 = lshr i32 %add22, 26
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %9 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %add25 = add i32 %shr23, %9
  %and = and i32 %0, 67108863
  %shr26 = lshr i32 %add25, 25
  %mul = mul nuw nsw i32 %shr26, 19
  %add27 = add nuw nsw i32 %mul, %and
  %shr28 = lshr i32 %add27, 26
  %and30 = and i32 %add, 33554431
  %add31 = add nuw nsw i32 %shr28, %and30
  %and32 = and i32 %add27, 67108863
  %and33 = and i32 %add31, 33554431
  %shr34 = lshr i32 %add31, 25
  %and37 = and i32 %add4, 67108863
  %add38 = add nuw nsw i32 %shr34, %and37
  %and39 = and i32 %add7, 33554431
  %and40 = and i32 %add10, 67108863
  %and41 = and i32 %add13, 33554431
  %and42 = and i32 %add16, 67108863
  %and43 = and i32 %add19, 33554431
  %and44 = and i32 %add22, 67108863
  %and45 = and i32 %add25, 33554431
  store i32 %and32, ptr %out1, align 4, !tbaa !5
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %and33, ptr %arrayidx47, align 4, !tbaa !5
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %add38, ptr %arrayidx48, align 4, !tbaa !5
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %and39, ptr %arrayidx49, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %and40, ptr %arrayidx50, align 4, !tbaa !5
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i32 %and41, ptr %arrayidx51, align 4, !tbaa !5
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i32 %and42, ptr %arrayidx52, align 4, !tbaa !5
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i32 %and43, ptr %arrayidx53, align 4, !tbaa !5
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i32 %and44, ptr %arrayidx54, align 4, !tbaa !5
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i32 %and45, ptr %arrayidx55, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_add(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %0 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %1 = load <4 x i32>, ptr %arg2, align 4, !tbaa !5
  %2 = add <4 x i32> %1, %0
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %3 = load <4 x i32>, ptr %arrayidx11, align 4, !tbaa !5
  %4 = load <4 x i32>, ptr %arrayidx12, align 4, !tbaa !5
  %5 = add <4 x i32> %4, %3
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %6 = load <2 x i32>, ptr %arrayidx23, align 4, !tbaa !5
  %7 = load <2 x i32>, ptr %arrayidx24, align 4, !tbaa !5
  %8 = add <2 x i32> %7, %6
  store <4 x i32> %2, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %5, ptr %arrayidx33, align 4, !tbaa !5
  store <2 x i32> %8, ptr %arrayidx37, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_sub(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %0 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %1 = add <4 x i32> %0, <i32 134217690, i32 67108862, i32 134217726, i32 67108862>
  %2 = load <4 x i32>, ptr %arg2, align 4, !tbaa !5
  %3 = sub <4 x i32> %1, %2
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %4 = load <4 x i32>, ptr %arrayidx14, align 4, !tbaa !5
  %5 = add <4 x i32> %4, <i32 134217726, i32 67108862, i32 134217726, i32 67108862>
  %6 = load <4 x i32>, ptr %arrayidx16, align 4, !tbaa !5
  %7 = sub <4 x i32> %5, %6
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %8 = load <2 x i32>, ptr %arrayidx30, align 4, !tbaa !5
  %9 = add <2 x i32> %8, <i32 134217726, i32 67108862>
  %10 = load <2 x i32>, ptr %arrayidx32, align 4, !tbaa !5
  %11 = sub <2 x i32> %9, %10
  store <4 x i32> %3, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %7, ptr %arrayidx42, align 4, !tbaa !5
  store <2 x i32> %11, ptr %arrayidx46, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_opp(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %0 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %1 = sub <4 x i32> <i32 134217690, i32 67108862, i32 134217726, i32 67108862>, %0
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %2 = load <4 x i32>, ptr %arrayidx7, align 4, !tbaa !5
  %3 = sub <4 x i32> <i32 134217726, i32 67108862, i32 134217726, i32 67108862>, %2
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %4 = load <2 x i32>, ptr %arrayidx15, align 4, !tbaa !5
  %5 = sub <2 x i32> <i32 134217726, i32 67108862>, %4
  store <4 x i32> %1, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %3, ptr %arrayidx23, align 4, !tbaa !5
  store <2 x i32> %5, ptr %arrayidx27, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_selectznz(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #4 {
entry:
  %tobool.i = icmp ne i8 %arg1, 0
  %conv4.i = sext i1 %tobool.i to i32
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv4.i) #5, !srcloc !9
  %not.i = xor i32 %conv4.i, -1
  %1 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %not.i) #5, !srcloc !9
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg3, i64 32
  %2 = load <4 x i32>, ptr %arg2, align 4, !tbaa !5
  %3 = load <4 x i32>, ptr %arg3, align 4, !tbaa !5
  %4 = insertelement <4 x i32> poison, i32 %0, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = and <4 x i32> %5, %3
  %7 = insertelement <4 x i32> poison, i32 %1, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  %9 = and <4 x i32> %8, %2
  %10 = or <4 x i32> %6, %9
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %11 = load <4 x i32>, ptr %arrayidx8, align 4, !tbaa !5
  %12 = load <4 x i32>, ptr %arrayidx9, align 4, !tbaa !5
  %13 = and <4 x i32> %12, %5
  %14 = and <4 x i32> %11, %8
  %15 = or <4 x i32> %13, %14
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %16 = load <2 x i32>, ptr %arrayidx16, align 4, !tbaa !5
  %17 = load <2 x i32>, ptr %arrayidx17, align 4, !tbaa !5
  %18 = insertelement <2 x i32> poison, i32 %0, i64 0
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <2 x i32> zeroinitializer
  %20 = and <2 x i32> %17, %19
  %21 = insertelement <2 x i32> poison, i32 %1, i64 0
  %22 = shufflevector <2 x i32> %21, <2 x i32> poison, <2 x i32> zeroinitializer
  %23 = and <2 x i32> %16, %22
  %24 = or <2 x i32> %20, %23
  store <4 x i32> %10, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %15, ptr %arrayidx24, align 4, !tbaa !5
  store <2 x i32> %24, ptr %arrayidx28, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_to_bytes(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load i32, ptr %arg1, align 4, !tbaa !5
  %sub1.i = add i32 %0, -67108845
  %shr.i = ashr i32 %sub1.i, 26
  %and.i = and i32 %sub1.i, 67108863
  %conv5.i = sub nsw i32 0, %shr.i
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %conv.i = and i32 %conv5.i, 255
  %.neg = add i32 %1, -33554431
  %sub1.i238 = sub i32 %.neg, %conv.i
  %shr.i239 = ashr i32 %sub1.i238, 25
  %and.i240 = and i32 %sub1.i238, 33554431
  %conv5.i241 = sub nsw i32 0, %shr.i239
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %conv.i242 = and i32 %conv5.i241, 255
  %.neg346 = add i32 %2, -67108863
  %sub1.i243 = sub i32 %.neg346, %conv.i242
  %shr.i244 = ashr i32 %sub1.i243, 26
  %and.i245 = and i32 %sub1.i243, 67108863
  %conv5.i246 = sub nsw i32 0, %shr.i244
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %3 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %conv.i247 = and i32 %conv5.i246, 255
  %.neg347 = add i32 %3, -33554431
  %sub1.i248 = sub i32 %.neg347, %conv.i247
  %shr.i249 = ashr i32 %sub1.i248, 25
  %and.i250 = and i32 %sub1.i248, 33554431
  %conv5.i251 = sub nsw i32 0, %shr.i249
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %conv.i252 = and i32 %conv5.i251, 255
  %.neg348 = add i32 %4, -67108863
  %sub1.i253 = sub i32 %.neg348, %conv.i252
  %shr.i254 = ashr i32 %sub1.i253, 26
  %and.i255 = and i32 %sub1.i253, 67108863
  %conv5.i256 = sub nsw i32 0, %shr.i254
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %5 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %conv.i257 = and i32 %conv5.i256, 255
  %.neg349 = add i32 %5, -33554431
  %sub1.i258 = sub i32 %.neg349, %conv.i257
  %shr.i259 = ashr i32 %sub1.i258, 25
  %and.i260 = and i32 %sub1.i258, 33554431
  %conv5.i261 = sub nsw i32 0, %shr.i259
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %conv.i262 = and i32 %conv5.i261, 255
  %.neg350 = add i32 %6, -67108863
  %sub1.i263 = sub i32 %.neg350, %conv.i262
  %shr.i264 = ashr i32 %sub1.i263, 26
  %and.i265 = and i32 %sub1.i263, 67108863
  %conv5.i266 = sub nsw i32 0, %shr.i264
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %7 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %conv.i267 = and i32 %conv5.i266, 255
  %.neg351 = add i32 %7, -33554431
  %sub1.i268 = sub i32 %.neg351, %conv.i267
  %shr.i269 = ashr i32 %sub1.i268, 25
  %and.i270 = and i32 %sub1.i268, 33554431
  %conv5.i271 = sub nsw i32 0, %shr.i269
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %8 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %conv.i272 = and i32 %conv5.i271, 255
  %.neg352 = add i32 %8, -67108863
  %sub1.i273 = sub i32 %.neg352, %conv.i272
  %shr.i274 = ashr i32 %sub1.i273, 26
  %and.i275 = and i32 %sub1.i273, 67108863
  %conv5.i276 = sub nsw i32 0, %shr.i274
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %conv.i277 = and i32 %conv5.i276, 255
  %.neg353 = add i32 %9, -33554431
  %sub1.i278 = sub i32 %.neg353, %conv.i277
  %tobool.i = icmp ugt i32 %sub1.i278, 33554431
  %conv4.i = sext i1 %tobool.i to i32
  %10 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv4.i) #5, !srcloc !9
  %not.i = xor i32 %conv4.i, -1
  %11 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %not.i) #5, !srcloc !9
  %and = and i32 %10, 67108845
  %add1.i = add nuw nsw i32 %and, %and.i
  %shr.i283 = lshr i32 %add1.i, 26
  %and10 = and i32 %10, 33554431
  %add.i = add nuw nsw i32 %and10, %and.i240
  %add1.i285 = add nuw nsw i32 %add.i, %shr.i283
  %shr.i287 = lshr i32 %add1.i285, 25
  %and11 = and i32 %10, 67108863
  %add.i290 = add nuw nsw i32 %and11, %and.i245
  %add1.i291 = add nuw nsw i32 %add.i290, %shr.i287
  %shr.i293 = lshr i32 %add1.i291, 26
  %add.i296 = add nuw nsw i32 %and10, %and.i250
  %add1.i297 = add nuw nsw i32 %add.i296, %shr.i293
  %shr.i299 = lshr i32 %add1.i297, 25
  %add.i302 = add nuw nsw i32 %and.i255, %and11
  %add1.i303 = add nuw nsw i32 %add.i302, %shr.i299
  %shr.i305 = lshr i32 %add1.i303, 26
  %add.i308 = add nuw nsw i32 %and.i260, %and10
  %add1.i309 = add nuw nsw i32 %add.i308, %shr.i305
  %shr.i311 = lshr i32 %add1.i309, 25
  %add.i314 = add nuw nsw i32 %and.i265, %and11
  %add1.i315 = add nuw nsw i32 %add.i314, %shr.i311
  %shr.i317 = lshr i32 %add1.i315, 26
  %add.i320 = add nuw nsw i32 %and.i270, %and10
  %add1.i321 = add nuw nsw i32 %add.i320, %shr.i317
  %shr.i323 = lshr i32 %add1.i321, 25
  %add.i326 = add nuw nsw i32 %and.i275, %and11
  %add1.i327 = add nuw nsw i32 %add.i326, %shr.i323
  %shr.i329 = lshr i32 %add1.i327, 26
  %add.i332 = add i32 %sub1.i278, %10
  %add1.i333 = add i32 %add.i332, %shr.i329
  %and.i334 = shl i32 %add1.i333, 6
  %and.i328 = shl nuw nsw i32 %add1.i327, 4
  %and.i322 = shl nuw nsw i32 %add1.i321, 3
  %and.i316 = shl nuw nsw i32 %add1.i315, 1
  %and.i304 = shl i32 %add1.i303, 6
  %and.i298 = shl nuw nsw i32 %add1.i297, 5
  %and.i292 = shl nuw nsw i32 %add1.i291, 3
  %and.i286 = shl nuw nsw i32 %add1.i285, 2
  %conv = trunc i32 %add1.i to i8
  %shr = lshr i32 %add1.i, 8
  %conv27 = trunc i32 %shr to i8
  %shr28 = lshr i32 %add1.i, 16
  %conv30 = trunc i32 %shr28 to i8
  %and.i282 = lshr i32 %add1.i, 24
  %shr31 = and i32 %and.i282, 3
  %add = or disjoint i32 %and.i286, %shr31
  %conv35 = trunc i32 %add to i8
  %shl24 = lshr i32 %add1.i285, 22
  %shr42 = and i32 %shl24, 7
  %add45 = or disjoint i32 %and.i292, %shr42
  %conv47 = trunc i32 %add45 to i8
  %shl23 = lshr i32 %add1.i291, 21
  %shr54 = and i32 %shl23, 31
  %add57 = or disjoint i32 %and.i298, %shr54
  %conv59 = trunc i32 %add57 to i8
  %shl22 = lshr i32 %add1.i297, 19
  %shr66 = and i32 %shl22, 63
  %add69 = or disjoint i32 %and.i304, %shr66
  %conv71 = trunc i32 %add69 to i8
  %shr72 = lshr i32 %and.i304, 8
  %conv74 = trunc i32 %shr72 to i8
  %shr75 = lshr i32 %and.i304, 16
  %conv77 = trunc i32 %shr75 to i8
  %shr78 = lshr i32 %and.i304, 24
  %conv79 = trunc nuw i32 %shr78 to i8
  %conv81 = trunc i32 %add1.i309 to i8
  %shr82 = lshr i32 %add1.i309, 8
  %conv84 = trunc i32 %shr82 to i8
  %shr85 = lshr i32 %add1.i309, 16
  %conv87 = trunc i32 %shr85 to i8
  %and.i310 = lshr i32 %add1.i309, 24
  %shr88 = and i32 %and.i310, 1
  %add91 = or disjoint i32 %and.i316, %shr88
  %conv93 = trunc i32 %add91 to i8
  %mul = lshr i32 %add1.i315, 23
  %shr100 = and i32 %mul, 7
  %add103 = or disjoint i32 %and.i322, %shr100
  %conv105 = trunc i32 %add103 to i8
  %shl20 = lshr i32 %add1.i321, 21
  %shr112 = and i32 %shl20, 15
  %add115 = or disjoint i32 %and.i328, %shr112
  %conv117 = trunc i32 %add115 to i8
  %shl19 = lshr i32 %add1.i327, 20
  %shr124 = and i32 %shl19, 63
  %add127 = or disjoint i32 %and.i334, %shr124
  %conv129 = trunc i32 %add127 to i8
  %shl = lshr i32 %and.i334, 24
  %12 = trunc nuw i32 %shl to i8
  %conv137 = and i8 %12, 127
  store i8 %conv, ptr %out1, align 1, !tbaa !10
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %out1, i64 1
  store i8 %conv27, ptr %arrayidx139, align 1, !tbaa !10
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %out1, i64 2
  store i8 %conv30, ptr %arrayidx140, align 1, !tbaa !10
  %arrayidx141 = getelementptr inbounds nuw i8, ptr %out1, i64 3
  store i8 %conv35, ptr %arrayidx141, align 1, !tbaa !10
  %arrayidx142 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  %13 = lshr i32 %add1.i285, 6
  %14 = trunc i32 %13 to i16
  store i16 %14, ptr %arrayidx142, align 1
  %arrayidx144 = getelementptr inbounds nuw i8, ptr %out1, i64 6
  store i8 %conv47, ptr %arrayidx144, align 1, !tbaa !10
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %out1, i64 7
  %15 = lshr i32 %add1.i291, 5
  %16 = trunc i32 %15 to i16
  store i16 %16, ptr %arrayidx145, align 1
  %arrayidx147 = getelementptr inbounds nuw i8, ptr %out1, i64 9
  store i8 %conv59, ptr %arrayidx147, align 1, !tbaa !10
  %arrayidx148 = getelementptr inbounds nuw i8, ptr %out1, i64 10
  %17 = lshr i32 %add1.i297, 3
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr %arrayidx148, align 1
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i8 %conv71, ptr %arrayidx150, align 1, !tbaa !10
  %arrayidx151 = getelementptr inbounds nuw i8, ptr %out1, i64 13
  store i8 %conv74, ptr %arrayidx151, align 1, !tbaa !10
  %arrayidx152 = getelementptr inbounds nuw i8, ptr %out1, i64 14
  store i8 %conv77, ptr %arrayidx152, align 1, !tbaa !10
  %arrayidx153 = getelementptr inbounds nuw i8, ptr %out1, i64 15
  store i8 %conv79, ptr %arrayidx153, align 1, !tbaa !10
  %arrayidx154 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i8 %conv81, ptr %arrayidx154, align 1, !tbaa !10
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %out1, i64 17
  store i8 %conv84, ptr %arrayidx155, align 1, !tbaa !10
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %out1, i64 18
  store i8 %conv87, ptr %arrayidx156, align 1, !tbaa !10
  %arrayidx157 = getelementptr inbounds nuw i8, ptr %out1, i64 19
  store i8 %conv93, ptr %arrayidx157, align 1, !tbaa !10
  %arrayidx158 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  %19 = lshr i32 %add1.i315, 7
  %20 = trunc i32 %19 to i16
  store i16 %20, ptr %arrayidx158, align 1
  %arrayidx160 = getelementptr inbounds nuw i8, ptr %out1, i64 22
  store i8 %conv105, ptr %arrayidx160, align 1, !tbaa !10
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %out1, i64 23
  %21 = lshr i32 %add1.i321, 5
  %22 = trunc i32 %21 to i16
  store i16 %22, ptr %arrayidx161, align 1
  %arrayidx163 = getelementptr inbounds nuw i8, ptr %out1, i64 25
  store i8 %conv117, ptr %arrayidx163, align 1, !tbaa !10
  %arrayidx164 = getelementptr inbounds nuw i8, ptr %out1, i64 26
  %23 = lshr i32 %add1.i327, 4
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr %arrayidx164, align 1
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i8 %conv129, ptr %arrayidx166, align 1, !tbaa !10
  %arrayidx167 = getelementptr inbounds nuw i8, ptr %out1, i64 29
  %25 = lshr i32 %and.i334, 8
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %arrayidx167, align 1
  %arrayidx169 = getelementptr inbounds nuw i8, ptr %out1, i64 31
  store i8 %conv137, ptr %arrayidx169, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_from_bytes(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 31
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %0 to i32
  %shl = shl nuw nsw i32 %conv, 18
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 30
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !10
  %conv2 = zext i8 %1 to i32
  %shl3 = shl nuw nsw i32 %conv2, 10
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 29
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %conv5 = zext i8 %2 to i32
  %shl6 = shl nuw nsw i32 %conv5, 2
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %3 = load i8, ptr %arrayidx7, align 1, !tbaa !10
  %conv8 = zext i8 %3 to i32
  %shl9 = shl nuw nsw i32 %conv8, 20
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg1, i64 27
  %4 = load i8, ptr %arrayidx10, align 1, !tbaa !10
  %conv11 = zext i8 %4 to i32
  %shl12 = shl nuw nsw i32 %conv11, 12
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg1, i64 26
  %5 = load i8, ptr %arrayidx13, align 1, !tbaa !10
  %conv14 = zext i8 %5 to i32
  %shl15 = shl nuw nsw i32 %conv14, 4
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg1, i64 25
  %6 = load i8, ptr %arrayidx16, align 1, !tbaa !10
  %conv17 = zext i8 %6 to i32
  %shl18 = shl nuw nsw i32 %conv17, 21
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %7 = load i8, ptr %arrayidx19, align 1, !tbaa !10
  %conv20 = zext i8 %7 to i32
  %shl21 = shl nuw nsw i32 %conv20, 13
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %arg1, i64 23
  %8 = load i8, ptr %arrayidx22, align 1, !tbaa !10
  %conv23 = zext i8 %8 to i32
  %shl24 = shl nuw nsw i32 %conv23, 5
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %arg1, i64 22
  %9 = load i8, ptr %arrayidx25, align 1, !tbaa !10
  %conv26 = zext i8 %9 to i32
  %shl27 = shl nuw nsw i32 %conv26, 23
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %arg1, i64 21
  %10 = load i8, ptr %arrayidx28, align 1, !tbaa !10
  %conv29 = zext i8 %10 to i32
  %shl30 = shl nuw nsw i32 %conv29, 15
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %11 = load i8, ptr %arrayidx31, align 1, !tbaa !10
  %conv32 = zext i8 %11 to i32
  %shl33 = shl nuw nsw i32 %conv32, 7
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %arg1, i64 19
  %12 = load i8, ptr %arrayidx34, align 1, !tbaa !10
  %conv35 = zext i8 %12 to i32
  %shl36 = shl nuw i32 %conv35, 24
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %arg1, i64 18
  %13 = load i8, ptr %arrayidx37, align 1, !tbaa !10
  %conv38 = zext i8 %13 to i32
  %shl39 = shl nuw nsw i32 %conv38, 16
  %14 = getelementptr i8, ptr %arg1, i64 16
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i32
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %arg1, i64 15
  %17 = load i8, ptr %arrayidx44, align 1, !tbaa !10
  %conv45 = zext i8 %17 to i32
  %shl46 = shl nuw nsw i32 %conv45, 18
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %arg1, i64 14
  %18 = load i8, ptr %arrayidx47, align 1, !tbaa !10
  %conv48 = zext i8 %18 to i32
  %shl49 = shl nuw nsw i32 %conv48, 10
  %arrayidx50 = getelementptr inbounds nuw i8, ptr %arg1, i64 13
  %19 = load i8, ptr %arrayidx50, align 1, !tbaa !10
  %conv51 = zext i8 %19 to i32
  %shl52 = shl nuw nsw i32 %conv51, 2
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %20 = load i8, ptr %arrayidx53, align 1, !tbaa !10
  %conv54 = zext i8 %20 to i32
  %shl55 = shl nuw nsw i32 %conv54, 19
  %arrayidx56 = getelementptr inbounds nuw i8, ptr %arg1, i64 11
  %21 = load i8, ptr %arrayidx56, align 1, !tbaa !10
  %conv57 = zext i8 %21 to i32
  %shl58 = shl nuw nsw i32 %conv57, 11
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %arg1, i64 10
  %22 = load i8, ptr %arrayidx59, align 1, !tbaa !10
  %conv60 = zext i8 %22 to i32
  %shl61 = shl nuw nsw i32 %conv60, 3
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %arg1, i64 9
  %23 = load i8, ptr %arrayidx62, align 1, !tbaa !10
  %conv63 = zext i8 %23 to i32
  %shl64 = shl nuw nsw i32 %conv63, 21
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %24 = load i8, ptr %arrayidx65, align 1, !tbaa !10
  %conv66 = zext i8 %24 to i32
  %shl67 = shl nuw nsw i32 %conv66, 13
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %arg1, i64 7
  %25 = load i8, ptr %arrayidx68, align 1, !tbaa !10
  %conv69 = zext i8 %25 to i32
  %shl70 = shl nuw nsw i32 %conv69, 5
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %arg1, i64 6
  %26 = load i8, ptr %arrayidx71, align 1, !tbaa !10
  %conv72 = zext i8 %26 to i32
  %shl73 = shl nuw nsw i32 %conv72, 22
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %arg1, i64 5
  %27 = load i8, ptr %arrayidx74, align 1, !tbaa !10
  %conv75 = zext i8 %27 to i32
  %shl76 = shl nuw nsw i32 %conv75, 14
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %28 = load i8, ptr %arrayidx77, align 1, !tbaa !10
  %conv78 = zext i8 %28 to i32
  %shl79 = shl nuw nsw i32 %conv78, 6
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %arg1, i64 3
  %29 = load i8, ptr %arrayidx80, align 1, !tbaa !10
  %conv81 = zext i8 %29 to i32
  %shl82 = shl nuw i32 %conv81, 24
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %arg1, i64 2
  %30 = load i8, ptr %arrayidx83, align 1, !tbaa !10
  %conv84 = zext i8 %30 to i32
  %shl85 = shl nuw nsw i32 %conv84, 16
  %31 = load i16, ptr %arg1, align 1
  %32 = zext i16 %31 to i32
  %add91 = or disjoint i32 %shl85, %32
  %shl82.masked = and i32 %shl82, 50331648
  %and = or disjoint i32 %add91, %shl82.masked
  %shr = lshr i8 %29, 2
  %conv94 = zext nneg i8 %shr to i32
  %add95 = or disjoint i32 %shl79, %conv94
  %add96 = or disjoint i32 %add95, %shl76
  %shl73.masked = and i32 %shl73, 29360128
  %and98 = or disjoint i32 %add96, %shl73.masked
  %shr99 = lshr i8 %26, 3
  %conv101 = zext nneg i8 %shr99 to i32
  %add102 = or disjoint i32 %shl70, %conv101
  %add103 = or disjoint i32 %add102, %shl67
  %shl64.masked = and i32 %shl64, 65011712
  %and105 = or disjoint i32 %add103, %shl64.masked
  %shr106 = lshr i8 %23, 5
  %conv108 = zext nneg i8 %shr106 to i32
  %add109 = or disjoint i32 %shl61, %conv108
  %add110 = or disjoint i32 %add109, %shl58
  %shl55.masked = and i32 %shl55, 33030144
  %and112 = or disjoint i32 %add110, %shl55.masked
  %shr113 = lshr i8 %20, 6
  %conv115 = zext nneg i8 %shr113 to i32
  %add116 = or disjoint i32 %shl52, %conv115
  %add117 = or disjoint i32 %add116, %shl49
  %add118 = or disjoint i32 %add117, %shl46
  %add121 = or disjoint i32 %shl39, %16
  %shl36.masked = and i32 %shl36, 16777216
  %and123 = or disjoint i32 %add121, %shl36.masked
  %shr124 = lshr i8 %12, 1
  %conv126 = zext nneg i8 %shr124 to i32
  %add127 = or disjoint i32 %shl33, %conv126
  %add128 = or disjoint i32 %add127, %shl30
  %shl27.masked = and i32 %shl27, 58720256
  %and130 = or disjoint i32 %add128, %shl27.masked
  %shr131 = lshr i8 %9, 3
  %conv133 = zext nneg i8 %shr131 to i32
  %add134 = or disjoint i32 %shl24, %conv133
  %add135 = or disjoint i32 %add134, %shl21
  %shl18.masked = and i32 %shl18, 31457280
  %and137 = or disjoint i32 %add135, %shl18.masked
  %shr138 = lshr i8 %6, 4
  %conv140 = zext nneg i8 %shr138 to i32
  %add141 = or disjoint i32 %shl15, %conv140
  %add142 = or disjoint i32 %add141, %shl12
  %shl9.masked = and i32 %shl9, 66060288
  %and144 = or disjoint i32 %add142, %shl9.masked
  %shr145 = lshr i8 %3, 6
  %conv147 = zext nneg i8 %shr145 to i32
  %add148 = or disjoint i32 %shl6, %conv147
  %add149 = or disjoint i32 %add148, %shl3
  %add150 = or disjoint i32 %add149, %shl
  store i32 %and, ptr %out1, align 4, !tbaa !5
  %arrayidx152 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %and98, ptr %arrayidx152, align 4, !tbaa !5
  %arrayidx153 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %and105, ptr %arrayidx153, align 4, !tbaa !5
  %arrayidx154 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %and112, ptr %arrayidx154, align 4, !tbaa !5
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %add118, ptr %arrayidx155, align 4, !tbaa !5
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i32 %and123, ptr %arrayidx156, align 4, !tbaa !5
  %arrayidx157 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i32 %and130, ptr %arrayidx157, align 4, !tbaa !5
  %arrayidx158 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i32 %and137, ptr %arrayidx158, align 4, !tbaa !5
  %arrayidx159 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i32 %and144, ptr %arrayidx159, align 4, !tbaa !5
  %arrayidx160 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i32 %add150, ptr %arrayidx160, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_relax(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %0 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %1 = load <4 x i32>, ptr %arrayidx4, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %2 = load <2 x i32>, ptr %arrayidx8, align 4, !tbaa !5
  store <4 x i32> %0, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %1, ptr %arrayidx14, align 4, !tbaa !5
  store <2 x i32> %2, ptr %arrayidx18, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_carry_scmul_121666(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %conv = zext i32 %0 to i64
  %mul = mul nuw nsw i64 %conv, 121666
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %conv2 = zext i32 %1 to i64
  %mul3 = mul nuw nsw i64 %conv2, 121666
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %conv5 = zext i32 %2 to i64
  %mul6 = mul nuw nsw i64 %conv5, 121666
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %3 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %conv8 = zext i32 %3 to i64
  %mul9 = mul nuw nsw i64 %conv8, 121666
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %conv11 = zext i32 %4 to i64
  %mul12 = mul nuw nsw i64 %conv11, 121666
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %conv14 = zext i32 %5 to i64
  %mul15 = mul nuw nsw i64 %conv14, 121666
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %6 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %conv17 = zext i32 %6 to i64
  %mul18 = mul nuw nsw i64 %conv17, 121666
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %7 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %conv20 = zext i32 %7 to i64
  %mul21 = mul nuw nsw i64 %conv20, 121666
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %8 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %conv23 = zext i32 %8 to i64
  %mul24 = mul nuw nsw i64 %conv23, 121666
  %9 = load i32, ptr %arg1, align 4, !tbaa !5
  %conv26 = zext i32 %9 to i64
  %mul27 = mul nuw nsw i64 %conv26, 121666
  %shr = lshr i64 %mul27, 26
  %10 = trunc i64 %mul27 to i32
  %conv29 = and i32 %10, 67108862
  %add = add nuw nsw i64 %shr, %mul24
  %shr31 = lshr i64 %add, 25
  %11 = trunc i64 %add to i32
  %conv34 = and i32 %11, 33554431
  %add36 = add nuw nsw i64 %shr31, %mul21
  %shr37 = lshr i64 %add36, 26
  %12 = trunc i64 %add36 to i32
  %conv40 = and i32 %12, 67108863
  %add42 = add nuw nsw i64 %shr37, %mul18
  %shr43 = lshr i64 %add42, 25
  %13 = trunc i64 %add42 to i32
  %conv46 = and i32 %13, 33554431
  %add48 = add nuw nsw i64 %shr43, %mul15
  %shr49 = lshr i64 %add48, 26
  %14 = trunc i64 %add48 to i32
  %conv52 = and i32 %14, 67108863
  %add54 = add nuw nsw i64 %shr49, %mul12
  %shr55 = lshr i64 %add54, 25
  %15 = trunc i64 %add54 to i32
  %conv58 = and i32 %15, 33554431
  %add60 = add nuw nsw i64 %shr55, %mul9
  %shr61 = lshr i64 %add60, 26
  %16 = trunc i64 %add60 to i32
  %conv64 = and i32 %16, 67108863
  %add66 = add nuw nsw i64 %shr61, %mul6
  %shr67 = lshr i64 %add66, 25
  %17 = trunc i64 %add66 to i32
  %conv70 = and i32 %17, 33554431
  %add72 = add nuw nsw i64 %shr67, %mul3
  %shr73 = lshr i64 %add72, 26
  %18 = trunc i64 %add72 to i32
  %conv76 = and i32 %18, 67108863
  %add78 = add nuw nsw i64 %shr73, %mul
  %shr79 = lshr i64 %add78, 25
  %conv80 = trunc nuw nsw i64 %shr79 to i32
  %19 = trunc i64 %add78 to i32
  %conv82 = and i32 %19, 33554431
  %mul83 = mul nuw nsw i32 %conv80, 19
  %add84 = add nuw nsw i32 %mul83, %conv29
  %shr85 = lshr i32 %add84, 26
  %and87 = and i32 %add84, 67108863
  %add89 = add nuw nsw i32 %shr85, %conv34
  %shr90 = lshr i32 %add89, 25
  %and92 = and i32 %add89, 33554431
  %add94 = add nuw nsw i32 %shr90, %conv40
  store i32 %and87, ptr %out1, align 4, !tbaa !5
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %and92, ptr %arrayidx96, align 4, !tbaa !5
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %add94, ptr %arrayidx97, align 4, !tbaa !5
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %conv46, ptr %arrayidx98, align 4, !tbaa !5
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %conv52, ptr %arrayidx99, align 4, !tbaa !5
  %arrayidx100 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i32 %conv58, ptr %arrayidx100, align 4, !tbaa !5
  %arrayidx101 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i32 %conv64, ptr %arrayidx101, align 4, !tbaa !5
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i32 %conv70, ptr %arrayidx102, align 4, !tbaa !5
  %arrayidx103 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i32 %conv76, ptr %arrayidx103, align 4, !tbaa !5
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i32 %conv82, ptr %arrayidx104, align 4, !tbaa !5
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
!9 = !{i64 2618}
!10 = !{!7, !7, i64 0}
