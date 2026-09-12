; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @fiat_p521_value_barrier_u64(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #6, !srcloc !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p521_addcarryx_u58(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %add = add i64 %arg2, %conv
  %add1 = add i64 %add, %arg3
  %and = and i64 %add1, 288230376151711743
  %shr = lshr i64 %add1, 58
  %conv2 = trunc nuw nsw i64 %shr to i8
  store i64 %and, ptr %out1, align 8, !tbaa !10
  store i8 %conv2, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p521_subborrowx_u58(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %0 = add i64 %arg3, %conv
  %sub1 = sub i64 %arg2, %0
  %shr = ashr i64 %sub1, 58
  %and = and i64 %sub1, 288230376151711743
  store i64 %and, ptr %out1, align 8, !tbaa !10
  %conv3 = trunc nsw i64 %shr to i8
  %sub4 = sub nsw i8 0, %conv3
  store i8 %sub4, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p521_addcarryx_u57(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %add = add i64 %arg2, %conv
  %add1 = add i64 %add, %arg3
  %and = and i64 %add1, 144115188075855871
  %shr = lshr i64 %add1, 57
  %conv2 = trunc nuw nsw i64 %shr to i8
  store i64 %and, ptr %out1, align 8, !tbaa !10
  store i8 %conv2, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p521_subborrowx_u57(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %0 = add i64 %arg3, %conv
  %sub1 = sub i64 %arg2, %0
  %shr = ashr i64 %sub1, 57
  %and = and i64 %sub1, 144115188075855871
  store i64 %and, ptr %out1, align 8, !tbaa !10
  %conv3 = trunc nsw i64 %shr to i8
  %sub4 = sub nsw i8 0, %conv3
  store i8 %sub4, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @fiat_p521_cmovznz_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #2 {
entry:
  %tobool = icmp ne i8 %arg1, 0
  %conv4 = sext i1 %tobool to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4) #6, !srcloc !9
  %and5 = and i64 %0, %arg3
  %not = xor i64 %conv4, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not) #6, !srcloc !9
  %and7 = and i64 %1, %arg2
  %or = or i64 %and7, %and5
  store i64 %or, ptr %out1, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_carry_mul(ptr noundef writeonly captures(none) initializes((0, 72)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 64
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %conv = zext i64 %0 to i128
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg2, i64 64
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %mul = shl i64 %1, 1
  %conv2 = zext i64 %mul to i128
  %mul3 = mul nuw i128 %conv2, %conv
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 56
  %2 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %mul7 = shl i64 %2, 1
  %conv8 = zext i64 %mul7 to i128
  %mul9 = mul nuw i128 %conv8, %conv
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %3 = load i64, ptr %arrayidx12, align 8, !tbaa !10
  %mul13 = shl i64 %3, 1
  %conv14 = zext i64 %mul13 to i128
  %mul15 = mul nuw i128 %conv14, %conv
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arg2, i64 40
  %4 = load i64, ptr %arrayidx18, align 8, !tbaa !10
  %mul19 = shl i64 %4, 1
  %conv20 = zext i64 %mul19 to i128
  %mul21 = mul nuw i128 %conv20, %conv
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %5 = load i64, ptr %arrayidx24, align 8, !tbaa !10
  %mul25 = shl i64 %5, 1
  %conv26 = zext i64 %mul25 to i128
  %mul27 = mul nuw i128 %conv26, %conv
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %6 = load i64, ptr %arrayidx30, align 8, !tbaa !10
  %mul31 = shl i64 %6, 1
  %conv32 = zext i64 %mul31 to i128
  %mul33 = mul nuw i128 %conv32, %conv
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %7 = load i64, ptr %arrayidx36, align 8, !tbaa !10
  %mul37 = shl i64 %7, 1
  %conv38 = zext i64 %mul37 to i128
  %mul39 = mul nuw i128 %conv38, %conv
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %8 = load i64, ptr %arrayidx42, align 8, !tbaa !10
  %mul43 = shl i64 %8, 1
  %conv44 = zext i64 %mul43 to i128
  %mul45 = mul nuw i128 %conv44, %conv
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %9 = load i64, ptr %arrayidx46, align 8, !tbaa !10
  %conv47 = zext i64 %9 to i128
  %mul51 = mul nuw i128 %conv47, %conv2
  %mul57 = mul nuw i128 %conv47, %conv8
  %mul63 = mul nuw i128 %conv47, %conv14
  %mul69 = mul nuw i128 %conv47, %conv20
  %mul75 = mul nuw i128 %conv47, %conv26
  %mul81 = mul nuw i128 %conv47, %conv32
  %mul87 = mul nuw i128 %conv47, %conv38
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %10 = load i64, ptr %arrayidx88, align 8, !tbaa !10
  %conv89 = zext i64 %10 to i128
  %mul93 = mul nuw i128 %conv89, %conv2
  %mul99 = mul nuw i128 %conv89, %conv8
  %mul105 = mul nuw i128 %conv89, %conv14
  %mul111 = mul nuw i128 %conv89, %conv20
  %mul117 = mul nuw i128 %conv89, %conv26
  %mul123 = mul nuw i128 %conv89, %conv32
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %11 = load i64, ptr %arrayidx124, align 8, !tbaa !10
  %conv125 = zext i64 %11 to i128
  %mul129 = mul nuw i128 %conv125, %conv2
  %mul135 = mul nuw i128 %conv125, %conv8
  %mul141 = mul nuw i128 %conv125, %conv14
  %mul147 = mul nuw i128 %conv125, %conv20
  %mul153 = mul nuw i128 %conv125, %conv26
  %arrayidx154 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %12 = load i64, ptr %arrayidx154, align 8, !tbaa !10
  %conv155 = zext i64 %12 to i128
  %mul159 = mul nuw i128 %conv155, %conv2
  %mul165 = mul nuw i128 %conv155, %conv8
  %mul171 = mul nuw i128 %conv155, %conv14
  %mul177 = mul nuw i128 %conv155, %conv20
  %arrayidx178 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %13 = load i64, ptr %arrayidx178, align 8, !tbaa !10
  %conv179 = zext i64 %13 to i128
  %mul183 = mul nuw i128 %conv179, %conv2
  %mul189 = mul nuw i128 %conv179, %conv8
  %mul195 = mul nuw i128 %conv179, %conv14
  %arrayidx196 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %14 = load i64, ptr %arrayidx196, align 8, !tbaa !10
  %conv197 = zext i64 %14 to i128
  %mul201 = mul nuw i128 %conv197, %conv2
  %mul207 = mul nuw i128 %conv197, %conv8
  %arrayidx208 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %15 = load i64, ptr %arrayidx208, align 8, !tbaa !10
  %conv209 = zext i64 %15 to i128
  %mul213 = mul nuw i128 %conv209, %conv2
  %16 = load i64, ptr %arg2, align 8, !tbaa !10
  %conv217 = zext i64 %16 to i128
  %mul218 = mul nuw i128 %conv217, %conv
  %conv222 = zext i64 %8 to i128
  %mul223 = mul nuw i128 %conv47, %conv222
  %mul228 = mul nuw i128 %conv217, %conv47
  %conv232 = zext i64 %7 to i128
  %mul233 = mul nuw i128 %conv89, %conv232
  %mul238 = mul nuw i128 %conv89, %conv222
  %mul243 = mul nuw i128 %conv217, %conv89
  %conv247 = zext i64 %6 to i128
  %mul248 = mul nuw i128 %conv125, %conv247
  %mul253 = mul nuw i128 %conv125, %conv232
  %mul258 = mul nuw i128 %conv125, %conv222
  %mul263 = mul nuw i128 %conv217, %conv125
  %conv267 = zext i64 %5 to i128
  %mul268 = mul nuw i128 %conv155, %conv267
  %mul273 = mul nuw i128 %conv155, %conv247
  %mul278 = mul nuw i128 %conv155, %conv232
  %mul283 = mul nuw i128 %conv155, %conv222
  %mul288 = mul nuw i128 %conv217, %conv155
  %conv292 = zext i64 %4 to i128
  %mul293 = mul nuw i128 %conv179, %conv292
  %mul298 = mul nuw i128 %conv179, %conv267
  %mul303 = mul nuw i128 %conv179, %conv247
  %mul308 = mul nuw i128 %conv179, %conv232
  %mul313 = mul nuw i128 %conv179, %conv222
  %mul318 = mul nuw i128 %conv217, %conv179
  %conv322 = zext i64 %3 to i128
  %mul323 = mul nuw i128 %conv197, %conv322
  %mul328 = mul nuw i128 %conv197, %conv292
  %mul333 = mul nuw i128 %conv197, %conv267
  %mul338 = mul nuw i128 %conv197, %conv247
  %mul343 = mul nuw i128 %conv197, %conv232
  %mul348 = mul nuw i128 %conv197, %conv222
  %mul353 = mul nuw i128 %conv217, %conv197
  %conv357 = zext i64 %2 to i128
  %mul358 = mul nuw i128 %conv209, %conv357
  %mul363 = mul nuw i128 %conv209, %conv322
  %mul368 = mul nuw i128 %conv209, %conv292
  %mul373 = mul nuw i128 %conv209, %conv267
  %mul378 = mul nuw i128 %conv209, %conv247
  %mul383 = mul nuw i128 %conv209, %conv232
  %mul388 = mul nuw i128 %conv209, %conv222
  %mul393 = mul nuw i128 %conv217, %conv209
  %17 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv395 = zext i64 %17 to i128
  %conv397 = zext i64 %1 to i128
  %mul398 = mul nuw i128 %conv395, %conv397
  %mul403 = mul nuw i128 %conv395, %conv357
  %mul408 = mul nuw i128 %conv395, %conv322
  %mul413 = mul nuw i128 %conv395, %conv292
  %mul418 = mul nuw i128 %conv395, %conv267
  %mul423 = mul nuw i128 %conv395, %conv247
  %mul428 = mul nuw i128 %conv395, %conv232
  %mul433 = mul nuw i128 %conv395, %conv222
  %mul438 = mul nuw i128 %conv395, %conv217
  %add = add i128 %mul87, %mul45
  %add439 = add i128 %add, %mul123
  %add440 = add i128 %add439, %mul153
  %add441 = add i128 %add440, %mul177
  %add442 = add i128 %add441, %mul195
  %add443 = add i128 %add442, %mul207
  %add444 = add i128 %add443, %mul213
  %add445 = add i128 %add444, %mul438
  %shr = lshr i128 %add445, 58
  %add463 = add i128 %mul51, %mul9
  %add471 = add i128 %mul57, %mul15
  %add472 = add i128 %add471, %mul93
  %add479 = add i128 %mul63, %mul21
  %add480 = add i128 %add479, %mul99
  %add481 = add i128 %add480, %mul129
  %add487 = add i128 %mul69, %mul27
  %add488 = add i128 %add487, %mul105
  %add489 = add i128 %add488, %mul135
  %add490 = add i128 %add489, %mul159
  %add495 = add i128 %mul75, %mul33
  %add496 = add i128 %add495, %mul111
  %add497 = add i128 %add496, %mul141
  %add498 = add i128 %add497, %mul165
  %add499 = add i128 %add498, %mul183
  %add503 = add i128 %mul81, %mul39
  %add504 = add i128 %add503, %mul117
  %add505 = add i128 %add504, %mul147
  %add506 = add i128 %add505, %mul171
  %add507 = add i128 %add506, %mul189
  %add508 = add i128 %add507, %mul201
  %add509 = add i128 %add508, %mul393
  %add510 = add i128 %add509, %mul433
  %add511 = add i128 %add510, %shr
  %shr512 = lshr i128 %add511, 58
  %18 = trunc i128 %add511 to i64
  %conv514 = and i64 %18, 288230376151711743
  %add500 = add i128 %add499, %mul388
  %add501 = add i128 %add500, %mul353
  %add502 = add i128 %add501, %mul428
  %add515 = add i128 %add502, %shr512
  %shr516 = lshr i128 %add515, 58
  %19 = trunc i128 %add515 to i64
  %conv518 = and i64 %19, 288230376151711743
  %add491 = add i128 %add490, %mul348
  %add492 = add i128 %add491, %mul383
  %add493 = add i128 %add492, %mul318
  %add494 = add i128 %add493, %mul423
  %add519 = add i128 %add494, %shr516
  %shr520 = lshr i128 %add519, 58
  %20 = trunc i128 %add519 to i64
  %conv522 = and i64 %20, 288230376151711743
  %add482 = add i128 %add481, %mul313
  %add483 = add i128 %add482, %mul343
  %add484 = add i128 %add483, %mul378
  %add485 = add i128 %add484, %mul288
  %add486 = add i128 %add485, %mul418
  %add523 = add i128 %add486, %shr520
  %shr524 = lshr i128 %add523, 58
  %21 = trunc i128 %add523 to i64
  %conv526 = and i64 %21, 288230376151711743
  %add473 = add i128 %add472, %mul283
  %add474 = add i128 %add473, %mul308
  %add475 = add i128 %add474, %mul338
  %add476 = add i128 %add475, %mul373
  %add477 = add i128 %add476, %mul263
  %add478 = add i128 %add477, %mul413
  %add527 = add i128 %add478, %shr524
  %shr528 = lshr i128 %add527, 58
  %22 = trunc i128 %add527 to i64
  %conv530 = and i64 %22, 288230376151711743
  %add464 = add i128 %add463, %mul258
  %add465 = add i128 %add464, %mul278
  %add466 = add i128 %add465, %mul303
  %add467 = add i128 %add466, %mul333
  %add468 = add i128 %add467, %mul368
  %add469 = add i128 %add468, %mul243
  %add470 = add i128 %add469, %mul408
  %add531 = add i128 %add470, %shr528
  %shr532 = lshr i128 %add531, 58
  %23 = trunc i128 %add531 to i64
  %conv534 = and i64 %23, 288230376151711743
  %add455 = add i128 %mul238, %mul3
  %add456 = add i128 %add455, %mul253
  %add457 = add i128 %add456, %mul273
  %add458 = add i128 %add457, %mul298
  %add459 = add i128 %add458, %mul328
  %add460 = add i128 %add459, %mul363
  %add461 = add i128 %add460, %mul228
  %add462 = add i128 %add461, %mul403
  %add535 = add i128 %add462, %shr532
  %shr536 = lshr i128 %add535, 58
  %24 = trunc i128 %add535 to i64
  %conv538 = and i64 %24, 288230376151711743
  %add447 = add i128 %mul233, %mul223
  %add448 = add i128 %add447, %mul248
  %add449 = add i128 %add448, %mul268
  %add450 = add i128 %add449, %mul293
  %add451 = add i128 %add450, %mul323
  %add452 = add i128 %add451, %mul358
  %add453 = add i128 %add452, %mul218
  %add454 = add i128 %add453, %mul398
  %add539 = add i128 %add454, %shr536
  %shr540 = lshr i128 %add539, 57
  %25 = trunc i128 %add539 to i64
  %conv542 = and i64 %25, 144115188075855871
  %conv543 = and i128 %add445, 288230376151711743
  %add544 = add nuw nsw i128 %shr540, %conv543
  %shr545 = lshr i128 %add544, 58
  %conv546 = trunc nuw nsw i128 %shr545 to i64
  %26 = trunc i128 %add544 to i64
  %conv548 = and i64 %26, 288230376151711743
  %add549 = add nuw nsw i64 %conv514, %conv546
  %shr550 = lshr i64 %add549, 58
  %and552 = and i64 %add549, 288230376151711743
  %add554 = add nuw nsw i64 %shr550, %conv518
  store i64 %conv548, ptr %out1, align 8, !tbaa !10
  %arrayidx556 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and552, ptr %arrayidx556, align 8, !tbaa !10
  %arrayidx557 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add554, ptr %arrayidx557, align 8, !tbaa !10
  %arrayidx558 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv522, ptr %arrayidx558, align 8, !tbaa !10
  %arrayidx559 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %conv526, ptr %arrayidx559, align 8, !tbaa !10
  %arrayidx560 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i64 %conv530, ptr %arrayidx560, align 8, !tbaa !10
  %arrayidx561 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i64 %conv534, ptr %arrayidx561, align 8, !tbaa !10
  %arrayidx562 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i64 %conv538, ptr %arrayidx562, align 8, !tbaa !10
  %arrayidx563 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i64 %conv542, ptr %arrayidx563, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_carry_square(ptr noundef writeonly captures(none) initializes((0, 72)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 64
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %mul = shl i64 %0, 1
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %1 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %mul4 = shl i64 %1, 1
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %2 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %mul8 = shl i64 %2, 1
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %3 = load i64, ptr %arrayidx11, align 8, !tbaa !10
  %mul12 = shl i64 %3, 1
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %4 = load i64, ptr %arrayidx15, align 8, !tbaa !10
  %mul16 = shl i64 %4, 1
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %5 = load i64, ptr %arrayidx17, align 8, !tbaa !10
  %mul18 = shl i64 %5, 1
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %6 = load i64, ptr %arrayidx19, align 8, !tbaa !10
  %mul20 = shl i64 %6, 1
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %7 = load i64, ptr %arrayidx21, align 8, !tbaa !10
  %mul22 = shl i64 %7, 1
  %conv = zext i64 %0 to i128
  %conv25 = zext i64 %mul to i128
  %mul26 = mul nuw i128 %conv25, %conv
  %conv28 = zext i64 %1 to i128
  %mul29 = shl i64 %0, 2
  %conv30 = zext i64 %mul29 to i128
  %mul31 = mul nuw i128 %conv28, %conv30
  %conv35 = zext i64 %mul4 to i128
  %mul36 = mul nuw i128 %conv35, %conv28
  %conv38 = zext i64 %2 to i128
  %mul41 = mul nuw i128 %conv38, %conv30
  %mul44 = shl i64 %1, 2
  %conv45 = zext i64 %mul44 to i128
  %mul46 = mul nuw i128 %conv38, %conv45
  %conv50 = zext i64 %mul8 to i128
  %mul51 = mul nuw i128 %conv50, %conv38
  %conv53 = zext i64 %3 to i128
  %mul56 = mul nuw i128 %conv53, %conv30
  %mul61 = mul nuw i128 %conv53, %conv45
  %mul64 = shl i64 %2, 2
  %conv65 = zext i64 %mul64 to i128
  %mul66 = mul nuw i128 %conv53, %conv65
  %conv70 = zext i64 %mul12 to i128
  %mul71 = mul nuw i128 %conv70, %conv53
  %conv73 = zext i64 %4 to i128
  %mul76 = mul nuw i128 %conv73, %conv30
  %mul81 = mul nuw i128 %conv73, %conv45
  %mul86 = mul nuw i128 %conv73, %conv65
  %mul89 = shl i64 %3, 2
  %conv90 = zext i64 %mul89 to i128
  %mul91 = mul nuw i128 %conv73, %conv90
  %mul96 = mul nuw i128 %conv73, %conv73
  %conv98 = zext i64 %5 to i128
  %mul101 = mul nuw i128 %conv98, %conv30
  %mul106 = mul nuw i128 %conv98, %conv45
  %mul111 = mul nuw i128 %conv98, %conv65
  %mul115 = mul nuw i128 %conv98, %conv70
  %conv118 = zext i64 %mul16 to i128
  %mul119 = mul nuw i128 %conv98, %conv118
  %mul124 = mul nuw i128 %conv98, %conv98
  %conv126 = zext i64 %6 to i128
  %mul129 = mul nuw i128 %conv126, %conv30
  %mul134 = mul nuw i128 %conv126, %conv45
  %mul138 = mul nuw i128 %conv126, %conv50
  %mul142 = mul nuw i128 %conv126, %conv70
  %mul146 = mul nuw i128 %conv126, %conv118
  %conv149 = zext i64 %mul18 to i128
  %mul150 = mul nuw i128 %conv126, %conv149
  %mul155 = mul nuw i128 %conv126, %conv126
  %conv157 = zext i64 %7 to i128
  %mul160 = mul nuw i128 %conv157, %conv30
  %mul164 = mul nuw i128 %conv157, %conv35
  %mul168 = mul nuw i128 %conv157, %conv50
  %mul172 = mul nuw i128 %conv157, %conv70
  %mul176 = mul nuw i128 %conv157, %conv118
  %mul180 = mul nuw i128 %conv157, %conv149
  %conv183 = zext i64 %mul20 to i128
  %mul184 = mul nuw i128 %conv157, %conv183
  %mul189 = mul nuw i128 %conv157, %conv157
  %8 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv191 = zext i64 %8 to i128
  %mul193 = mul nuw i128 %conv191, %conv25
  %mul197 = mul nuw i128 %conv191, %conv35
  %mul201 = mul nuw i128 %conv191, %conv50
  %mul205 = mul nuw i128 %conv191, %conv70
  %mul209 = mul nuw i128 %conv191, %conv118
  %mul213 = mul nuw i128 %conv191, %conv149
  %mul217 = mul nuw i128 %conv191, %conv183
  %conv220 = zext i64 %mul22 to i128
  %mul221 = mul nuw i128 %conv191, %conv220
  %mul226 = mul nuw i128 %conv191, %conv191
  %add = add i128 %mul111, %mul91
  %add227 = add i128 %add, %mul134
  %add228 = add i128 %add227, %mul160
  %add229 = add i128 %add228, %mul226
  %shr = lshr i128 %add229, 58
  %add231 = add i128 %mul115, %mul96
  %add232 = add i128 %add231, %mul138
  %add233 = add i128 %add232, %mul164
  %add234 = add i128 %add233, %mul193
  %add235 = add i128 %mul119, %mul26
  %add236 = add i128 %add235, %mul142
  %add237 = add i128 %add236, %mul168
  %add238 = add i128 %add237, %mul197
  %add239 = add i128 %mul124, %mul31
  %add240 = add i128 %add239, %mul146
  %add241 = add i128 %add240, %mul172
  %add242 = add i128 %add241, %mul201
  %add243 = add i128 %mul41, %mul36
  %add244 = add i128 %add243, %mul150
  %add245 = add i128 %add244, %mul176
  %add246 = add i128 %add245, %mul205
  %add247 = add i128 %mul56, %mul46
  %add248 = add i128 %add247, %mul155
  %add249 = add i128 %add248, %mul180
  %add250 = add i128 %add249, %mul209
  %add251 = add i128 %mul61, %mul51
  %add252 = add i128 %add251, %mul76
  %add253 = add i128 %add252, %mul184
  %add254 = add i128 %add253, %mul213
  %add255 = add i128 %mul81, %mul66
  %add256 = add i128 %add255, %mul101
  %add257 = add i128 %add256, %mul189
  %add258 = add i128 %add257, %mul217
  %add259 = add i128 %mul86, %mul71
  %add260 = add i128 %add259, %mul106
  %add261 = add i128 %add260, %mul129
  %add262 = add i128 %add261, %mul221
  %add263 = add i128 %add262, %shr
  %shr264 = lshr i128 %add263, 58
  %9 = trunc i128 %add263 to i64
  %conv266 = and i64 %9, 288230376151711743
  %add267 = add i128 %add258, %shr264
  %shr268 = lshr i128 %add267, 58
  %10 = trunc i128 %add267 to i64
  %conv270 = and i64 %10, 288230376151711743
  %add271 = add i128 %add254, %shr268
  %shr272 = lshr i128 %add271, 58
  %11 = trunc i128 %add271 to i64
  %conv274 = and i64 %11, 288230376151711743
  %add275 = add i128 %add250, %shr272
  %shr276 = lshr i128 %add275, 58
  %12 = trunc i128 %add275 to i64
  %conv278 = and i64 %12, 288230376151711743
  %add279 = add i128 %add246, %shr276
  %shr280 = lshr i128 %add279, 58
  %13 = trunc i128 %add279 to i64
  %conv282 = and i64 %13, 288230376151711743
  %add283 = add i128 %add242, %shr280
  %shr284 = lshr i128 %add283, 58
  %14 = trunc i128 %add283 to i64
  %conv286 = and i64 %14, 288230376151711743
  %add287 = add i128 %add238, %shr284
  %shr288 = lshr i128 %add287, 58
  %15 = trunc i128 %add287 to i64
  %conv290 = and i64 %15, 288230376151711743
  %add291 = add i128 %add234, %shr288
  %shr292 = lshr i128 %add291, 57
  %16 = trunc i128 %add291 to i64
  %conv294 = and i64 %16, 144115188075855871
  %conv295 = and i128 %add229, 288230376151711743
  %add296 = add nuw nsw i128 %shr292, %conv295
  %shr297 = lshr i128 %add296, 58
  %conv298 = trunc nuw nsw i128 %shr297 to i64
  %17 = trunc i128 %add296 to i64
  %conv300 = and i64 %17, 288230376151711743
  %add301 = add nuw nsw i64 %conv266, %conv298
  %shr302 = lshr i64 %add301, 58
  %and304 = and i64 %add301, 288230376151711743
  %add306 = add nuw nsw i64 %shr302, %conv270
  store i64 %conv300, ptr %out1, align 8, !tbaa !10
  %arrayidx308 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and304, ptr %arrayidx308, align 8, !tbaa !10
  %arrayidx309 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add306, ptr %arrayidx309, align 8, !tbaa !10
  %arrayidx310 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv274, ptr %arrayidx310, align 8, !tbaa !10
  %arrayidx311 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %conv278, ptr %arrayidx311, align 8, !tbaa !10
  %arrayidx312 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i64 %conv282, ptr %arrayidx312, align 8, !tbaa !10
  %arrayidx313 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i64 %conv286, ptr %arrayidx313, align 8, !tbaa !10
  %arrayidx314 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i64 %conv290, ptr %arrayidx314, align 8, !tbaa !10
  %arrayidx315 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i64 %conv294, ptr %arrayidx315, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_carry(ptr noundef writeonly captures(none) initializes((0, 72)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %shr = lshr i64 %0, 58
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %add = add i64 %shr, %1
  %shr2 = lshr i64 %add, 58
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %add4 = add i64 %shr2, %2
  %shr5 = lshr i64 %add4, 58
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %3 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %add7 = add i64 %shr5, %3
  %shr8 = lshr i64 %add7, 58
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %4 = load i64, ptr %arrayidx9, align 8, !tbaa !10
  %add10 = add i64 %shr8, %4
  %shr11 = lshr i64 %add10, 58
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %5 = load i64, ptr %arrayidx12, align 8, !tbaa !10
  %add13 = add i64 %shr11, %5
  %shr14 = lshr i64 %add13, 58
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %6 = load i64, ptr %arrayidx15, align 8, !tbaa !10
  %add16 = add i64 %shr14, %6
  %shr17 = lshr i64 %add16, 58
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %7 = load i64, ptr %arrayidx18, align 8, !tbaa !10
  %add19 = add i64 %shr17, %7
  %shr20 = lshr i64 %add19, 58
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %arg1, i64 64
  %8 = load i64, ptr %arrayidx21, align 8, !tbaa !10
  %add22 = add i64 %shr20, %8
  %and = and i64 %0, 288230376151711743
  %shr23 = lshr i64 %add22, 57
  %add24 = add nuw nsw i64 %shr23, %and
  %shr25 = lshr i64 %add24, 58
  %and27 = and i64 %add, 288230376151711743
  %add28 = add nuw nsw i64 %shr25, %and27
  %and29 = and i64 %add24, 288230376151711743
  %and30 = and i64 %add28, 288230376151711743
  %shr31 = lshr i64 %add28, 58
  %and34 = and i64 %add4, 288230376151711743
  %add35 = add nuw nsw i64 %shr31, %and34
  %and36 = and i64 %add7, 288230376151711743
  %and37 = and i64 %add10, 288230376151711743
  %and38 = and i64 %add13, 288230376151711743
  %and39 = and i64 %add16, 288230376151711743
  %and40 = and i64 %add19, 288230376151711743
  %and41 = and i64 %add22, 144115188075855871
  store i64 %and29, ptr %out1, align 8, !tbaa !10
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and30, ptr %arrayidx43, align 8, !tbaa !10
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add35, ptr %arrayidx44, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %and36, ptr %arrayidx45, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %and37, ptr %arrayidx46, align 8, !tbaa !10
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i64 %and38, ptr %arrayidx47, align 8, !tbaa !10
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i64 %and39, ptr %arrayidx48, align 8, !tbaa !10
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i64 %and40, ptr %arrayidx49, align 8, !tbaa !10
  %arrayidx50 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i64 %and41, ptr %arrayidx50, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_add(ptr noundef writeonly captures(none) initializes((0, 72)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 64
  %0 = load i64, ptr %arrayidx23, align 8, !tbaa !10
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg2, i64 64
  %1 = load i64, ptr %arrayidx24, align 8, !tbaa !10
  %add25 = add i64 %1, %0
  %2 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %3 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %4 = add <2 x i64> %3, %2
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %5 = load <2 x i64>, ptr %arrayidx5, align 8, !tbaa !10
  %6 = load <2 x i64>, ptr %arrayidx6, align 8, !tbaa !10
  %7 = add <2 x i64> %6, %5
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %8 = load <2 x i64>, ptr %arrayidx11, align 8, !tbaa !10
  %9 = load <2 x i64>, ptr %arrayidx12, align 8, !tbaa !10
  %10 = add <2 x i64> %9, %8
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %11 = load <2 x i64>, ptr %arrayidx17, align 8, !tbaa !10
  %12 = load <2 x i64>, ptr %arrayidx18, align 8, !tbaa !10
  %13 = add <2 x i64> %12, %11
  store <2 x i64> %4, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %7, ptr %arrayidx28, align 8, !tbaa !10
  store <2 x i64> %10, ptr %arrayidx30, align 8, !tbaa !10
  store <2 x i64> %13, ptr %arrayidx32, align 8, !tbaa !10
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i64 %add25, ptr %arrayidx34, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_sub(ptr noundef writeonly captures(none) initializes((0, 72)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %arg1, i64 64
  %0 = load i64, ptr %arrayidx30, align 8, !tbaa !10
  %add31 = add i64 %0, 288230376151711742
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arg2, i64 64
  %1 = load i64, ptr %arrayidx32, align 8, !tbaa !10
  %sub33 = sub i64 %add31, %1
  %2 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %3 = add <2 x i64> %2, splat (i64 576460752303423486)
  %4 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %5 = sub <2 x i64> %3, %4
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %6 = load <2 x i64>, ptr %arrayidx6, align 8, !tbaa !10
  %7 = add <2 x i64> %6, splat (i64 576460752303423486)
  %8 = load <2 x i64>, ptr %arrayidx8, align 8, !tbaa !10
  %9 = sub <2 x i64> %7, %8
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %10 = load <2 x i64>, ptr %arrayidx14, align 8, !tbaa !10
  %11 = add <2 x i64> %10, splat (i64 576460752303423486)
  %12 = load <2 x i64>, ptr %arrayidx16, align 8, !tbaa !10
  %13 = sub <2 x i64> %11, %12
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %14 = load <2 x i64>, ptr %arrayidx22, align 8, !tbaa !10
  %15 = add <2 x i64> %14, splat (i64 576460752303423486)
  %16 = load <2 x i64>, ptr %arrayidx24, align 8, !tbaa !10
  %17 = sub <2 x i64> %15, %16
  store <2 x i64> %5, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %9, ptr %arrayidx36, align 8, !tbaa !10
  store <2 x i64> %13, ptr %arrayidx38, align 8, !tbaa !10
  store <2 x i64> %17, ptr %arrayidx40, align 8, !tbaa !10
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i64 %sub33, ptr %arrayidx42, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_opp(ptr noundef writeonly captures(none) initializes((0, 72)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 64
  %0 = load i64, ptr %arrayidx15, align 8, !tbaa !10
  %sub16 = sub i64 288230376151711742, %0
  %1 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %2 = sub <2 x i64> splat (i64 576460752303423486), %1
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %3 = load <2 x i64>, ptr %arrayidx3, align 8, !tbaa !10
  %4 = sub <2 x i64> splat (i64 576460752303423486), %3
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %5 = load <2 x i64>, ptr %arrayidx7, align 8, !tbaa !10
  %6 = sub <2 x i64> splat (i64 576460752303423486), %5
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %7 = load <2 x i64>, ptr %arrayidx11, align 8, !tbaa !10
  %8 = sub <2 x i64> splat (i64 576460752303423486), %7
  store <2 x i64> %2, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %4, ptr %arrayidx19, align 8, !tbaa !10
  store <2 x i64> %6, ptr %arrayidx21, align 8, !tbaa !10
  store <2 x i64> %8, ptr %arrayidx23, align 8, !tbaa !10
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i64 %sub16, ptr %arrayidx25, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_selectznz(ptr noundef writeonly captures(none) initializes((0, 72)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #4 {
entry:
  %tobool.i = icmp ne i8 %arg1, 0
  %conv4.i = sext i1 %tobool.i to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #6, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #6, !srcloc !9
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg3, i64 32
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg3, i64 48
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg2, i64 64
  %2 = load i64, ptr %arrayidx16, align 8, !tbaa !10
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg3, i64 64
  %3 = load i64, ptr %arrayidx17, align 8, !tbaa !10
  %and5.i103 = and i64 %3, %0
  %and7.i105 = and i64 %2, %1
  %or.i106 = or i64 %and5.i103, %and7.i105
  %4 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %5 = load <2 x i64>, ptr %arg3, align 8, !tbaa !10
  %6 = insertelement <2 x i64> poison, i64 %0, i64 0
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> zeroinitializer
  %8 = and <2 x i64> %7, %5
  %9 = insertelement <2 x i64> poison, i64 %1, i64 0
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer
  %11 = and <2 x i64> %10, %4
  %12 = or <2 x i64> %8, %11
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %13 = load <2 x i64>, ptr %arrayidx4, align 8, !tbaa !10
  %14 = load <2 x i64>, ptr %arrayidx5, align 8, !tbaa !10
  %15 = and <2 x i64> %14, %7
  %16 = and <2 x i64> %13, %10
  %17 = or <2 x i64> %15, %16
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %18 = load <2 x i64>, ptr %arrayidx8, align 8, !tbaa !10
  %19 = load <2 x i64>, ptr %arrayidx9, align 8, !tbaa !10
  %20 = and <2 x i64> %19, %7
  %21 = and <2 x i64> %18, %10
  %22 = or <2 x i64> %20, %21
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %23 = load <2 x i64>, ptr %arrayidx12, align 8, !tbaa !10
  %24 = load <2 x i64>, ptr %arrayidx13, align 8, !tbaa !10
  %25 = and <2 x i64> %24, %7
  %26 = and <2 x i64> %23, %10
  %27 = or <2 x i64> %25, %26
  store <2 x i64> %12, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %17, ptr %arrayidx20, align 8, !tbaa !10
  store <2 x i64> %22, ptr %arrayidx22, align 8, !tbaa !10
  store <2 x i64> %27, ptr %arrayidx24, align 8, !tbaa !10
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i64 %or.i106, ptr %arrayidx26, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_to_bytes(ptr noundef writeonly initializes((0, 66)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %sub1.i = add i64 %0, -288230376151711743
  %shr.i = ashr i64 %sub1.i, 58
  %and.i = and i64 %sub1.i, 288230376151711743
  %sub4.i = sub nsw i64 0, %shr.i
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv.i = and i64 %sub4.i, 255
  %.neg = add i64 %1, -288230376151711743
  %sub1.i428 = sub i64 %.neg, %conv.i
  %shr.i429 = ashr i64 %sub1.i428, 58
  %and.i430 = and i64 %sub1.i428, 288230376151711743
  %sub4.i432 = sub nsw i64 0, %shr.i429
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %conv.i433 = and i64 %sub4.i432, 255
  %.neg532 = add i64 %2, -288230376151711743
  %sub1.i434 = sub i64 %.neg532, %conv.i433
  %shr.i435 = ashr i64 %sub1.i434, 58
  %and.i436 = and i64 %sub1.i434, 288230376151711743
  %sub4.i438 = sub nsw i64 0, %shr.i435
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %3 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv.i439 = and i64 %sub4.i438, 255
  %.neg533 = add i64 %3, -288230376151711743
  %sub1.i440 = sub i64 %.neg533, %conv.i439
  %shr.i441 = ashr i64 %sub1.i440, 58
  %and.i442 = and i64 %sub1.i440, 288230376151711743
  %sub4.i444 = sub nsw i64 0, %shr.i441
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %4 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %conv.i445 = and i64 %sub4.i444, 255
  %.neg534 = add i64 %4, -288230376151711743
  %sub1.i446 = sub i64 %.neg534, %conv.i445
  %shr.i447 = ashr i64 %sub1.i446, 58
  %and.i448 = and i64 %sub1.i446, 288230376151711743
  %sub4.i450 = sub nsw i64 0, %shr.i447
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %5 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv.i451 = and i64 %sub4.i450, 255
  %.neg535 = add i64 %5, -288230376151711743
  %sub1.i452 = sub i64 %.neg535, %conv.i451
  %shr.i453 = ashr i64 %sub1.i452, 58
  %and.i454 = and i64 %sub1.i452, 288230376151711743
  %sub4.i456 = sub nsw i64 0, %shr.i453
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %6 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %conv.i457 = and i64 %sub4.i456, 255
  %.neg536 = add i64 %6, -288230376151711743
  %sub1.i458 = sub i64 %.neg536, %conv.i457
  %shr.i459 = ashr i64 %sub1.i458, 58
  %and.i460 = and i64 %sub1.i458, 288230376151711743
  %sub4.i462 = sub nsw i64 0, %shr.i459
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %7 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %conv.i463 = and i64 %sub4.i462, 255
  %.neg537 = add i64 %7, -288230376151711743
  %sub1.i464 = sub i64 %.neg537, %conv.i463
  %shr.i465 = ashr i64 %sub1.i464, 58
  %and.i466 = and i64 %sub1.i464, 288230376151711743
  %sub4.i468 = sub nsw i64 0, %shr.i465
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 64
  %8 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %conv.i469 = and i64 %sub4.i468, 255
  %.neg538 = add i64 %8, -144115188075855871
  %sub1.i470 = sub i64 %.neg538, %conv.i469
  %tobool.i = icmp ugt i64 %sub1.i470, 144115188075855871
  %conv4.i = sext i1 %tobool.i to i64
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #6, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %10 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #6, !srcloc !9
  %and = and i64 %9, 288230376151711743
  %add1.i = add nuw nsw i64 %and, %and.i
  %shr.i476 = lshr i64 %add1.i, 58
  %add.i = add nuw nsw i64 %and, %and.i430
  %add1.i478 = add nuw nsw i64 %add.i, %shr.i476
  %shr.i480 = lshr i64 %add1.i478, 58
  %add.i483 = add nuw nsw i64 %and, %and.i436
  %add1.i484 = add nuw nsw i64 %add.i483, %shr.i480
  %shr.i486 = lshr i64 %add1.i484, 58
  %add.i489 = add nuw nsw i64 %and.i442, %and
  %add1.i490 = add nuw nsw i64 %add.i489, %shr.i486
  %shr.i492 = lshr i64 %add1.i490, 58
  %add.i495 = add nuw nsw i64 %and.i448, %and
  %add1.i496 = add nuw nsw i64 %add.i495, %shr.i492
  %shr.i498 = lshr i64 %add1.i496, 58
  %add.i501 = add nuw nsw i64 %and.i454, %and
  %add1.i502 = add nuw nsw i64 %add.i501, %shr.i498
  %shr.i504 = lshr i64 %add1.i502, 58
  %add.i507 = add nuw nsw i64 %and.i460, %and
  %add1.i508 = add nuw nsw i64 %add.i507, %shr.i504
  %shr.i510 = lshr i64 %add1.i508, 58
  %add.i513 = add nuw nsw i64 %and.i466, %and
  %add1.i514 = add nuw nsw i64 %add.i513, %shr.i510
  %shr.i516 = lshr i64 %add1.i514, 58
  %add.i519 = add i64 %sub1.i470, %9
  %add1.i520 = add i64 %add.i519, %shr.i516
  %and.i515 = shl i64 %add1.i514, 6
  %and.i509 = shl nuw nsw i64 %add1.i508, 4
  %and.i503 = shl nuw nsw i64 %add1.i502, 2
  %and.i491 = shl i64 %add1.i490, 6
  %and.i485 = shl nuw nsw i64 %add1.i484, 4
  %and.i479 = shl nuw nsw i64 %add1.i478, 2
  %conv = trunc i64 %add1.i to i8
  %shr = lshr i64 %add1.i, 8
  %conv24 = trunc i64 %shr to i8
  %shr25 = lshr i64 %add1.i, 16
  %conv27 = trunc i64 %shr25 to i8
  %shr28 = lshr i64 %add1.i, 24
  %conv30 = trunc i64 %shr28 to i8
  %shr31 = lshr i64 %add1.i, 32
  %conv33 = trunc i64 %shr31 to i8
  %shr34 = lshr i64 %add1.i, 40
  %conv36 = trunc i64 %shr34 to i8
  %shr37 = lshr i64 %add1.i, 48
  %conv39 = trunc i64 %shr37 to i8
  %and.i475 = lshr i64 %add1.i, 56
  %shr40 = and i64 %and.i475, 3
  %add = or disjoint i64 %and.i479, %shr40
  %conv44 = trunc i64 %add to i8
  %shr45 = lshr i64 %add1.i478, 6
  %conv47 = trunc i64 %shr45 to i8
  %shr48 = lshr i64 %add1.i478, 14
  %conv50 = trunc i64 %shr48 to i8
  %shr51 = lshr i64 %add1.i478, 22
  %conv53 = trunc i64 %shr51 to i8
  %shr54 = lshr i64 %add1.i478, 30
  %conv56 = trunc i64 %shr54 to i8
  %shr57 = lshr i64 %add1.i478, 38
  %conv59 = trunc i64 %shr57 to i8
  %shr60 = lshr i64 %add1.i478, 46
  %conv62 = trunc i64 %shr60 to i8
  %shl21 = lshr i64 %add1.i478, 54
  %shr63 = and i64 %shl21, 15
  %add66 = or disjoint i64 %and.i485, %shr63
  %conv68 = trunc i64 %add66 to i8
  %shr69 = lshr i64 %add1.i484, 4
  %conv71 = trunc i64 %shr69 to i8
  %shr72 = lshr i64 %add1.i484, 12
  %conv74 = trunc i64 %shr72 to i8
  %shr75 = lshr i64 %add1.i484, 20
  %conv77 = trunc i64 %shr75 to i8
  %shr78 = lshr i64 %add1.i484, 28
  %conv80 = trunc i64 %shr78 to i8
  %shr81 = lshr i64 %add1.i484, 36
  %conv83 = trunc i64 %shr81 to i8
  %shr84 = lshr i64 %add1.i484, 44
  %conv86 = trunc i64 %shr84 to i8
  %shl20 = lshr i64 %add1.i484, 52
  %shr87 = and i64 %shl20, 63
  %add90 = or disjoint i64 %and.i491, %shr87
  %conv92 = trunc i64 %add90 to i8
  %shr93 = lshr i64 %and.i491, 8
  %conv95 = trunc i64 %shr93 to i8
  %shr96 = lshr i64 %and.i491, 16
  %conv98 = trunc i64 %shr96 to i8
  %shr99 = lshr i64 %and.i491, 24
  %conv101 = trunc i64 %shr99 to i8
  %shr102 = lshr i64 %and.i491, 32
  %conv104 = trunc i64 %shr102 to i8
  %shr105 = lshr i64 %and.i491, 40
  %conv107 = trunc i64 %shr105 to i8
  %shr108 = lshr i64 %and.i491, 48
  %conv110 = trunc i64 %shr108 to i8
  %shr111 = lshr i64 %and.i491, 56
  %conv112 = trunc nuw i64 %shr111 to i8
  %conv114 = trunc i64 %add1.i496 to i8
  %shr115 = lshr i64 %add1.i496, 8
  %conv117 = trunc i64 %shr115 to i8
  %shr118 = lshr i64 %add1.i496, 16
  %conv120 = trunc i64 %shr118 to i8
  %shr121 = lshr i64 %add1.i496, 24
  %conv123 = trunc i64 %shr121 to i8
  %shr124 = lshr i64 %add1.i496, 32
  %conv126 = trunc i64 %shr124 to i8
  %shr127 = lshr i64 %add1.i496, 40
  %conv129 = trunc i64 %shr127 to i8
  %shr130 = lshr i64 %add1.i496, 48
  %conv132 = trunc i64 %shr130 to i8
  %and.i497 = lshr i64 %add1.i496, 56
  %shr133 = and i64 %and.i497, 3
  %add136 = or disjoint i64 %and.i503, %shr133
  %conv138 = trunc i64 %add136 to i8
  %shr139 = lshr i64 %add1.i502, 6
  %conv141 = trunc i64 %shr139 to i8
  %shr142 = lshr i64 %add1.i502, 14
  %conv144 = trunc i64 %shr142 to i8
  %shr145 = lshr i64 %add1.i502, 22
  %conv147 = trunc i64 %shr145 to i8
  %shr148 = lshr i64 %add1.i502, 30
  %conv150 = trunc i64 %shr148 to i8
  %shr151 = lshr i64 %add1.i502, 38
  %conv153 = trunc i64 %shr151 to i8
  %shr154 = lshr i64 %add1.i502, 46
  %conv156 = trunc i64 %shr154 to i8
  %shl18 = lshr i64 %add1.i502, 54
  %shr157 = and i64 %shl18, 15
  %add160 = or disjoint i64 %and.i509, %shr157
  %conv162 = trunc i64 %add160 to i8
  %shr163 = lshr i64 %add1.i508, 4
  %conv165 = trunc i64 %shr163 to i8
  %shr166 = lshr i64 %add1.i508, 12
  %conv168 = trunc i64 %shr166 to i8
  %shr169 = lshr i64 %add1.i508, 20
  %conv171 = trunc i64 %shr169 to i8
  %shr172 = lshr i64 %add1.i508, 28
  %conv174 = trunc i64 %shr172 to i8
  %shr175 = lshr i64 %add1.i508, 36
  %conv177 = trunc i64 %shr175 to i8
  %shr178 = lshr i64 %add1.i508, 44
  %conv180 = trunc i64 %shr178 to i8
  %shl17 = lshr i64 %add1.i508, 52
  %shr181 = and i64 %shl17, 63
  %add184 = or disjoint i64 %and.i515, %shr181
  %conv186 = trunc i64 %add184 to i8
  %shr187 = lshr i64 %and.i515, 8
  %conv189 = trunc i64 %shr187 to i8
  %shr190 = lshr i64 %and.i515, 16
  %conv192 = trunc i64 %shr190 to i8
  %shr193 = lshr i64 %and.i515, 24
  %conv195 = trunc i64 %shr193 to i8
  %shr196 = lshr i64 %and.i515, 32
  %conv198 = trunc i64 %shr196 to i8
  %shr199 = lshr i64 %and.i515, 40
  %conv201 = trunc i64 %shr199 to i8
  %shr202 = lshr i64 %and.i515, 48
  %conv204 = trunc i64 %shr202 to i8
  %shr205 = lshr i64 %and.i515, 56
  %conv206 = trunc nuw i64 %shr205 to i8
  %conv208 = trunc i64 %add1.i520 to i8
  %shr209 = lshr i64 %add1.i520, 8
  %conv211 = trunc i64 %shr209 to i8
  %shr212 = lshr i64 %add1.i520, 16
  %conv214 = trunc i64 %shr212 to i8
  %shr215 = lshr i64 %add1.i520, 24
  %conv217 = trunc i64 %shr215 to i8
  %shr218 = lshr i64 %add1.i520, 32
  %conv220 = trunc i64 %shr218 to i8
  %shr221 = lshr i64 %add1.i520, 40
  %conv223 = trunc i64 %shr221 to i8
  %shr224 = lshr i64 %add1.i520, 48
  %conv226 = trunc i64 %shr224 to i8
  %and.i521 = lshr i64 %add1.i520, 56
  %11 = trunc nuw i64 %and.i521 to i8
  %conv228 = and i8 %11, 1
  store i8 %conv, ptr %out1, align 1, !tbaa !12
  %arrayidx230 = getelementptr inbounds nuw i8, ptr %out1, i64 1
  store i8 %conv24, ptr %arrayidx230, align 1, !tbaa !12
  %arrayidx231 = getelementptr inbounds nuw i8, ptr %out1, i64 2
  store i8 %conv27, ptr %arrayidx231, align 1, !tbaa !12
  %arrayidx232 = getelementptr inbounds nuw i8, ptr %out1, i64 3
  store i8 %conv30, ptr %arrayidx232, align 1, !tbaa !12
  %arrayidx233 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i8 %conv33, ptr %arrayidx233, align 1, !tbaa !12
  %arrayidx234 = getelementptr inbounds nuw i8, ptr %out1, i64 5
  store i8 %conv36, ptr %arrayidx234, align 1, !tbaa !12
  %arrayidx235 = getelementptr inbounds nuw i8, ptr %out1, i64 6
  store i8 %conv39, ptr %arrayidx235, align 1, !tbaa !12
  %arrayidx236 = getelementptr inbounds nuw i8, ptr %out1, i64 7
  store i8 %conv44, ptr %arrayidx236, align 1, !tbaa !12
  %arrayidx237 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i8 %conv47, ptr %arrayidx237, align 1, !tbaa !12
  %arrayidx238 = getelementptr inbounds nuw i8, ptr %out1, i64 9
  store i8 %conv50, ptr %arrayidx238, align 1, !tbaa !12
  %arrayidx239 = getelementptr inbounds nuw i8, ptr %out1, i64 10
  store i8 %conv53, ptr %arrayidx239, align 1, !tbaa !12
  %arrayidx240 = getelementptr inbounds nuw i8, ptr %out1, i64 11
  store i8 %conv56, ptr %arrayidx240, align 1, !tbaa !12
  %arrayidx241 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i8 %conv59, ptr %arrayidx241, align 1, !tbaa !12
  %arrayidx242 = getelementptr inbounds nuw i8, ptr %out1, i64 13
  store i8 %conv62, ptr %arrayidx242, align 1, !tbaa !12
  %arrayidx243 = getelementptr inbounds nuw i8, ptr %out1, i64 14
  store i8 %conv68, ptr %arrayidx243, align 1, !tbaa !12
  %arrayidx244 = getelementptr inbounds nuw i8, ptr %out1, i64 15
  store i8 %conv71, ptr %arrayidx244, align 1, !tbaa !12
  %arrayidx245 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i8 %conv74, ptr %arrayidx245, align 1, !tbaa !12
  %arrayidx246 = getelementptr inbounds nuw i8, ptr %out1, i64 17
  store i8 %conv77, ptr %arrayidx246, align 1, !tbaa !12
  %arrayidx247 = getelementptr inbounds nuw i8, ptr %out1, i64 18
  store i8 %conv80, ptr %arrayidx247, align 1, !tbaa !12
  %arrayidx248 = getelementptr inbounds nuw i8, ptr %out1, i64 19
  store i8 %conv83, ptr %arrayidx248, align 1, !tbaa !12
  %arrayidx249 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i8 %conv86, ptr %arrayidx249, align 1, !tbaa !12
  %arrayidx250 = getelementptr inbounds nuw i8, ptr %out1, i64 21
  store i8 %conv92, ptr %arrayidx250, align 1, !tbaa !12
  %arrayidx251 = getelementptr inbounds nuw i8, ptr %out1, i64 22
  store i8 %conv95, ptr %arrayidx251, align 1, !tbaa !12
  %arrayidx252 = getelementptr inbounds nuw i8, ptr %out1, i64 23
  store i8 %conv98, ptr %arrayidx252, align 1, !tbaa !12
  %arrayidx253 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i8 %conv101, ptr %arrayidx253, align 1, !tbaa !12
  %arrayidx254 = getelementptr inbounds nuw i8, ptr %out1, i64 25
  store i8 %conv104, ptr %arrayidx254, align 1, !tbaa !12
  %arrayidx255 = getelementptr inbounds nuw i8, ptr %out1, i64 26
  store i8 %conv107, ptr %arrayidx255, align 1, !tbaa !12
  %arrayidx256 = getelementptr inbounds nuw i8, ptr %out1, i64 27
  store i8 %conv110, ptr %arrayidx256, align 1, !tbaa !12
  %arrayidx257 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i8 %conv112, ptr %arrayidx257, align 1, !tbaa !12
  %arrayidx258 = getelementptr inbounds nuw i8, ptr %out1, i64 29
  store i8 %conv114, ptr %arrayidx258, align 1, !tbaa !12
  %arrayidx259 = getelementptr inbounds nuw i8, ptr %out1, i64 30
  store i8 %conv117, ptr %arrayidx259, align 1, !tbaa !12
  %arrayidx260 = getelementptr inbounds nuw i8, ptr %out1, i64 31
  store i8 %conv120, ptr %arrayidx260, align 1, !tbaa !12
  %arrayidx261 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i8 %conv123, ptr %arrayidx261, align 1, !tbaa !12
  %arrayidx262 = getelementptr inbounds nuw i8, ptr %out1, i64 33
  store i8 %conv126, ptr %arrayidx262, align 1, !tbaa !12
  %arrayidx263 = getelementptr inbounds nuw i8, ptr %out1, i64 34
  store i8 %conv129, ptr %arrayidx263, align 1, !tbaa !12
  %arrayidx264 = getelementptr inbounds nuw i8, ptr %out1, i64 35
  store i8 %conv132, ptr %arrayidx264, align 1, !tbaa !12
  %arrayidx265 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i8 %conv138, ptr %arrayidx265, align 1, !tbaa !12
  %arrayidx266 = getelementptr inbounds nuw i8, ptr %out1, i64 37
  store i8 %conv141, ptr %arrayidx266, align 1, !tbaa !12
  %arrayidx267 = getelementptr inbounds nuw i8, ptr %out1, i64 38
  store i8 %conv144, ptr %arrayidx267, align 1, !tbaa !12
  %arrayidx268 = getelementptr inbounds nuw i8, ptr %out1, i64 39
  store i8 %conv147, ptr %arrayidx268, align 1, !tbaa !12
  %arrayidx269 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i8 %conv150, ptr %arrayidx269, align 1, !tbaa !12
  %arrayidx270 = getelementptr inbounds nuw i8, ptr %out1, i64 41
  store i8 %conv153, ptr %arrayidx270, align 1, !tbaa !12
  %arrayidx271 = getelementptr inbounds nuw i8, ptr %out1, i64 42
  store i8 %conv156, ptr %arrayidx271, align 1, !tbaa !12
  %arrayidx272 = getelementptr inbounds nuw i8, ptr %out1, i64 43
  store i8 %conv162, ptr %arrayidx272, align 1, !tbaa !12
  %arrayidx273 = getelementptr inbounds nuw i8, ptr %out1, i64 44
  store i8 %conv165, ptr %arrayidx273, align 1, !tbaa !12
  %arrayidx274 = getelementptr inbounds nuw i8, ptr %out1, i64 45
  store i8 %conv168, ptr %arrayidx274, align 1, !tbaa !12
  %arrayidx275 = getelementptr inbounds nuw i8, ptr %out1, i64 46
  store i8 %conv171, ptr %arrayidx275, align 1, !tbaa !12
  %arrayidx276 = getelementptr inbounds nuw i8, ptr %out1, i64 47
  store i8 %conv174, ptr %arrayidx276, align 1, !tbaa !12
  %arrayidx277 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i8 %conv177, ptr %arrayidx277, align 1, !tbaa !12
  %arrayidx278 = getelementptr inbounds nuw i8, ptr %out1, i64 49
  store i8 %conv180, ptr %arrayidx278, align 1, !tbaa !12
  %arrayidx279 = getelementptr inbounds nuw i8, ptr %out1, i64 50
  store i8 %conv186, ptr %arrayidx279, align 1, !tbaa !12
  %arrayidx280 = getelementptr inbounds nuw i8, ptr %out1, i64 51
  store i8 %conv189, ptr %arrayidx280, align 1, !tbaa !12
  %arrayidx281 = getelementptr inbounds nuw i8, ptr %out1, i64 52
  store i8 %conv192, ptr %arrayidx281, align 1, !tbaa !12
  %arrayidx282 = getelementptr inbounds nuw i8, ptr %out1, i64 53
  store i8 %conv195, ptr %arrayidx282, align 1, !tbaa !12
  %arrayidx283 = getelementptr inbounds nuw i8, ptr %out1, i64 54
  store i8 %conv198, ptr %arrayidx283, align 1, !tbaa !12
  %arrayidx284 = getelementptr inbounds nuw i8, ptr %out1, i64 55
  store i8 %conv201, ptr %arrayidx284, align 1, !tbaa !12
  %arrayidx285 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i8 %conv204, ptr %arrayidx285, align 1, !tbaa !12
  %arrayidx286 = getelementptr inbounds nuw i8, ptr %out1, i64 57
  store i8 %conv206, ptr %arrayidx286, align 1, !tbaa !12
  %arrayidx287 = getelementptr inbounds nuw i8, ptr %out1, i64 58
  store i8 %conv208, ptr %arrayidx287, align 1, !tbaa !12
  %arrayidx288 = getelementptr inbounds nuw i8, ptr %out1, i64 59
  store i8 %conv211, ptr %arrayidx288, align 1, !tbaa !12
  %arrayidx289 = getelementptr inbounds nuw i8, ptr %out1, i64 60
  store i8 %conv214, ptr %arrayidx289, align 1, !tbaa !12
  %arrayidx290 = getelementptr inbounds nuw i8, ptr %out1, i64 61
  store i8 %conv217, ptr %arrayidx290, align 1, !tbaa !12
  %arrayidx291 = getelementptr inbounds nuw i8, ptr %out1, i64 62
  store i8 %conv220, ptr %arrayidx291, align 1, !tbaa !12
  %arrayidx292 = getelementptr inbounds nuw i8, ptr %out1, i64 63
  store i8 %conv223, ptr %arrayidx292, align 1, !tbaa !12
  %arrayidx293 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i8 %conv226, ptr %arrayidx293, align 1, !tbaa !12
  %arrayidx294 = getelementptr inbounds nuw i8, ptr %out1, i64 65
  store i8 %conv228, ptr %arrayidx294, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_from_bytes(ptr noundef writeonly captures(none) initializes((0, 72)) %out1, ptr noundef readonly %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 65
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %0 to i64
  %shl = shl nuw i64 %conv, 56
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 64
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !12
  %conv2 = zext i8 %1 to i64
  %shl3 = shl nuw nsw i64 %conv2, 48
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 63
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv5 = zext i8 %2 to i64
  %shl6 = shl nuw nsw i64 %conv5, 40
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 62
  %3 = load i8, ptr %arrayidx7, align 1, !tbaa !12
  %conv8 = zext i8 %3 to i64
  %shl9 = shl nuw nsw i64 %conv8, 32
  %4 = getelementptr i8, ptr %arg1, i64 58
  %5 = load i32, ptr %4, align 1
  %6 = zext i32 %5 to i64
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arg1, i64 57
  %7 = load i8, ptr %arrayidx20, align 1, !tbaa !12
  %conv21 = zext i8 %7 to i64
  %shl22 = shl nuw nsw i64 %conv21, 50
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %8 = load i8, ptr %arrayidx23, align 1, !tbaa !12
  %conv24 = zext i8 %8 to i64
  %shl25 = shl nuw nsw i64 %conv24, 42
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %arg1, i64 55
  %9 = load i8, ptr %arrayidx26, align 1, !tbaa !12
  %conv27 = zext i8 %9 to i64
  %shl28 = shl nuw nsw i64 %conv27, 34
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %arg1, i64 54
  %10 = load i8, ptr %arrayidx29, align 1, !tbaa !12
  %conv30 = zext i8 %10 to i64
  %shl31 = shl nuw nsw i64 %conv30, 26
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arg1, i64 53
  %11 = load i8, ptr %arrayidx32, align 1, !tbaa !12
  %conv33 = zext i8 %11 to i64
  %shl34 = shl nuw nsw i64 %conv33, 18
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arg1, i64 52
  %12 = load i8, ptr %arrayidx35, align 1, !tbaa !12
  %conv36 = zext i8 %12 to i64
  %shl37 = shl nuw nsw i64 %conv36, 10
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %arg1, i64 51
  %13 = load i8, ptr %arrayidx38, align 1, !tbaa !12
  %conv39 = zext i8 %13 to i64
  %shl40 = shl nuw nsw i64 %conv39, 2
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %arg1, i64 50
  %14 = load i8, ptr %arrayidx41, align 1, !tbaa !12
  %conv42 = zext i8 %14 to i64
  %shl43 = shl nuw nsw i64 %conv42, 52
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %arg1, i64 49
  %15 = load i8, ptr %arrayidx44, align 1, !tbaa !12
  %conv45 = zext i8 %15 to i64
  %shl46 = shl nuw nsw i64 %conv45, 44
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %16 = load i8, ptr %arrayidx47, align 1, !tbaa !12
  %conv48 = zext i8 %16 to i64
  %shl49 = shl nuw nsw i64 %conv48, 36
  %arrayidx50 = getelementptr inbounds nuw i8, ptr %arg1, i64 47
  %17 = load i8, ptr %arrayidx50, align 1, !tbaa !12
  %conv51 = zext i8 %17 to i64
  %shl52 = shl nuw nsw i64 %conv51, 28
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %arg1, i64 46
  %18 = load i8, ptr %arrayidx53, align 1, !tbaa !12
  %conv54 = zext i8 %18 to i64
  %shl55 = shl nuw nsw i64 %conv54, 20
  %arrayidx56 = getelementptr inbounds nuw i8, ptr %arg1, i64 45
  %19 = load i8, ptr %arrayidx56, align 1, !tbaa !12
  %conv57 = zext i8 %19 to i64
  %shl58 = shl nuw nsw i64 %conv57, 12
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %arg1, i64 44
  %20 = load i8, ptr %arrayidx59, align 1, !tbaa !12
  %conv60 = zext i8 %20 to i64
  %shl61 = shl nuw nsw i64 %conv60, 4
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %arg1, i64 43
  %21 = load i8, ptr %arrayidx62, align 1, !tbaa !12
  %conv63 = zext i8 %21 to i64
  %shl64 = shl nuw nsw i64 %conv63, 54
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %arg1, i64 42
  %22 = load i8, ptr %arrayidx65, align 1, !tbaa !12
  %conv66 = zext i8 %22 to i64
  %shl67 = shl nuw nsw i64 %conv66, 46
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %arg1, i64 41
  %23 = load i8, ptr %arrayidx68, align 1, !tbaa !12
  %conv69 = zext i8 %23 to i64
  %shl70 = shl nuw nsw i64 %conv69, 38
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %24 = load i8, ptr %arrayidx71, align 1, !tbaa !12
  %conv72 = zext i8 %24 to i64
  %shl73 = shl nuw nsw i64 %conv72, 30
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %arg1, i64 39
  %25 = load i8, ptr %arrayidx74, align 1, !tbaa !12
  %conv75 = zext i8 %25 to i64
  %shl76 = shl nuw nsw i64 %conv75, 22
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %arg1, i64 38
  %26 = load i8, ptr %arrayidx77, align 1, !tbaa !12
  %conv78 = zext i8 %26 to i64
  %shl79 = shl nuw nsw i64 %conv78, 14
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %arg1, i64 37
  %27 = load i8, ptr %arrayidx80, align 1, !tbaa !12
  %conv81 = zext i8 %27 to i64
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %28 = load i8, ptr %arrayidx83, align 1, !tbaa !12
  %conv84 = zext i8 %28 to i64
  %shl85 = shl nuw i64 %conv84, 56
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %arg1, i64 35
  %29 = load i8, ptr %arrayidx86, align 1, !tbaa !12
  %conv87 = zext i8 %29 to i64
  %shl88 = shl nuw nsw i64 %conv87, 48
  %arrayidx89 = getelementptr inbounds nuw i8, ptr %arg1, i64 34
  %30 = load i8, ptr %arrayidx89, align 1, !tbaa !12
  %conv90 = zext i8 %30 to i64
  %shl91 = shl nuw nsw i64 %conv90, 40
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %arg1, i64 33
  %31 = load i8, ptr %arrayidx92, align 1, !tbaa !12
  %conv93 = zext i8 %31 to i64
  %shl94 = shl nuw nsw i64 %conv93, 32
  %32 = getelementptr i8, ptr %arg1, i64 29
  %33 = load i32, ptr %32, align 1
  %34 = zext i32 %33 to i64
  %arrayidx105 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %35 = load i8, ptr %arrayidx105, align 1, !tbaa !12
  %conv106 = zext i8 %35 to i64
  %shl107 = shl nuw nsw i64 %conv106, 50
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %arg1, i64 27
  %36 = load i8, ptr %arrayidx108, align 1, !tbaa !12
  %conv109 = zext i8 %36 to i64
  %shl110 = shl nuw nsw i64 %conv109, 42
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %arg1, i64 26
  %37 = load i8, ptr %arrayidx111, align 1, !tbaa !12
  %conv112 = zext i8 %37 to i64
  %shl113 = shl nuw nsw i64 %conv112, 34
  %arrayidx114 = getelementptr inbounds nuw i8, ptr %arg1, i64 25
  %38 = load i8, ptr %arrayidx114, align 1, !tbaa !12
  %conv115 = zext i8 %38 to i64
  %shl116 = shl nuw nsw i64 %conv115, 26
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %39 = load i8, ptr %arrayidx117, align 1, !tbaa !12
  %conv118 = zext i8 %39 to i64
  %shl119 = shl nuw nsw i64 %conv118, 18
  %arrayidx120 = getelementptr inbounds nuw i8, ptr %arg1, i64 23
  %40 = load i8, ptr %arrayidx120, align 1, !tbaa !12
  %conv121 = zext i8 %40 to i64
  %shl122 = shl nuw nsw i64 %conv121, 10
  %arrayidx123 = getelementptr inbounds nuw i8, ptr %arg1, i64 22
  %41 = load i8, ptr %arrayidx123, align 1, !tbaa !12
  %conv124 = zext i8 %41 to i64
  %shl125 = shl nuw nsw i64 %conv124, 2
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %arg1, i64 21
  %42 = load i8, ptr %arrayidx126, align 1, !tbaa !12
  %conv127 = zext i8 %42 to i64
  %shl128 = shl nuw nsw i64 %conv127, 52
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %43 = load i8, ptr %arrayidx129, align 1, !tbaa !12
  %conv130 = zext i8 %43 to i64
  %shl131 = shl nuw nsw i64 %conv130, 44
  %arrayidx132 = getelementptr inbounds nuw i8, ptr %arg1, i64 19
  %44 = load i8, ptr %arrayidx132, align 1, !tbaa !12
  %conv133 = zext i8 %44 to i64
  %shl134 = shl nuw nsw i64 %conv133, 36
  %arrayidx135 = getelementptr inbounds nuw i8, ptr %arg1, i64 18
  %45 = load i8, ptr %arrayidx135, align 1, !tbaa !12
  %conv136 = zext i8 %45 to i64
  %shl137 = shl nuw nsw i64 %conv136, 28
  %arrayidx138 = getelementptr inbounds nuw i8, ptr %arg1, i64 17
  %46 = load i8, ptr %arrayidx138, align 1, !tbaa !12
  %conv139 = zext i8 %46 to i64
  %shl140 = shl nuw nsw i64 %conv139, 20
  %arrayidx141 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %47 = load i8, ptr %arrayidx141, align 1, !tbaa !12
  %conv142 = zext i8 %47 to i64
  %shl143 = shl nuw nsw i64 %conv142, 12
  %arrayidx144 = getelementptr inbounds nuw i8, ptr %arg1, i64 15
  %48 = load i8, ptr %arrayidx144, align 1, !tbaa !12
  %conv145 = zext i8 %48 to i64
  %shl146 = shl nuw nsw i64 %conv145, 4
  %arrayidx147 = getelementptr inbounds nuw i8, ptr %arg1, i64 14
  %49 = load i8, ptr %arrayidx147, align 1, !tbaa !12
  %conv148 = zext i8 %49 to i64
  %shl149 = shl nuw nsw i64 %conv148, 54
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %arg1, i64 13
  %50 = load i8, ptr %arrayidx150, align 1, !tbaa !12
  %conv151 = zext i8 %50 to i64
  %shl152 = shl nuw nsw i64 %conv151, 46
  %arrayidx153 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %51 = load i8, ptr %arrayidx153, align 1, !tbaa !12
  %conv154 = zext i8 %51 to i64
  %shl155 = shl nuw nsw i64 %conv154, 38
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %arg1, i64 11
  %52 = load i8, ptr %arrayidx156, align 1, !tbaa !12
  %conv157 = zext i8 %52 to i64
  %shl158 = shl nuw nsw i64 %conv157, 30
  %arrayidx159 = getelementptr inbounds nuw i8, ptr %arg1, i64 10
  %53 = load i8, ptr %arrayidx159, align 1, !tbaa !12
  %conv160 = zext i8 %53 to i64
  %shl161 = shl nuw nsw i64 %conv160, 22
  %arrayidx162 = getelementptr inbounds nuw i8, ptr %arg1, i64 9
  %54 = load i8, ptr %arrayidx162, align 1, !tbaa !12
  %conv163 = zext i8 %54 to i64
  %shl164 = shl nuw nsw i64 %conv163, 14
  %arrayidx165 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %55 = load i8, ptr %arrayidx165, align 1, !tbaa !12
  %conv166 = zext i8 %55 to i64
  %arrayidx168 = getelementptr inbounds nuw i8, ptr %arg1, i64 7
  %56 = load i8, ptr %arrayidx168, align 1, !tbaa !12
  %conv169 = zext i8 %56 to i64
  %shl170 = shl nuw i64 %conv169, 56
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %arg1, i64 6
  %57 = load i8, ptr %arrayidx171, align 1, !tbaa !12
  %conv172 = zext i8 %57 to i64
  %shl173 = shl nuw nsw i64 %conv172, 48
  %arrayidx174 = getelementptr inbounds nuw i8, ptr %arg1, i64 5
  %58 = load i8, ptr %arrayidx174, align 1, !tbaa !12
  %conv175 = zext i8 %58 to i64
  %shl176 = shl nuw nsw i64 %conv175, 40
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %59 = load i8, ptr %arrayidx177, align 1, !tbaa !12
  %conv178 = zext i8 %59 to i64
  %shl179 = shl nuw nsw i64 %conv178, 32
  %60 = load i32, ptr %arg1, align 1
  %61 = zext i32 %60 to i64
  %add193 = or disjoint i64 %shl176, %61
  %add194 = or disjoint i64 %add193, %shl179
  %shl170.masked = and i64 %shl170, 216172782113783808
  %add195.masked = or disjoint i64 %shl173, %shl170.masked
  %and = or disjoint i64 %add195.masked, %add194
  %add199 = tail call i64 @llvm.fshl.i64(i64 %conv166, i64 %shl170, i64 6)
  %shl149.masked = and i64 %shl149, 270215977642229760
  %add204.masked = or disjoint i64 %shl152, %shl149.masked
  %add200.masked = or disjoint i64 %add204.masked, %shl155
  %add201.masked = or disjoint i64 %add200.masked, %shl158
  %add202.masked = or disjoint i64 %add201.masked, %shl161
  %add203.masked = or disjoint i64 %add202.masked, %shl164
  %and206 = or disjoint i64 %add203.masked, %add199
  %shr207 = lshr i64 %conv148, 4
  %add210 = or disjoint i64 %shl131, %shl128
  %add211 = or disjoint i64 %add210, %shl134
  %add212 = or disjoint i64 %add211, %shl137
  %add213 = or disjoint i64 %add212, %shl140
  %add214 = or disjoint i64 %add213, %shl143
  %add215 = or disjoint i64 %add214, %shl146
  %add216 = add nuw nsw i64 %add215, %shr207
  %and217 = and i64 %add216, 288230376151711743
  %shr218 = lshr i64 %add216, 58
  %add221 = or disjoint i64 %shl110, %shl107
  %add222 = or disjoint i64 %add221, %shl113
  %add223 = or disjoint i64 %add222, %shl116
  %add224 = or disjoint i64 %add223, %shl119
  %add225 = or disjoint i64 %add224, %shl122
  %add226 = or disjoint i64 %add225, %shl125
  %add227 = add nuw nsw i64 %add226, %shr218
  %add232 = or disjoint i64 %shl91, %34
  %add233 = or disjoint i64 %add232, %shl94
  %shl85.masked = and i64 %shl85, 216172782113783808
  %add234.masked = or disjoint i64 %shl88, %shl85.masked
  %and236 = or disjoint i64 %add234.masked, %add233
  %add240 = tail call i64 @llvm.fshl.i64(i64 %conv81, i64 %shl85, i64 6)
  %shl64.masked = and i64 %shl64, 270215977642229760
  %add245.masked = or disjoint i64 %shl67, %shl64.masked
  %add241.masked = or disjoint i64 %add245.masked, %shl70
  %add242.masked = or disjoint i64 %add241.masked, %shl73
  %add243.masked = or disjoint i64 %add242.masked, %shl76
  %add244.masked = or disjoint i64 %add243.masked, %shl79
  %and247 = or disjoint i64 %add244.masked, %add240
  %shr248 = lshr i64 %conv63, 4
  %add251 = or disjoint i64 %shl46, %shl43
  %add252 = or disjoint i64 %add251, %shl49
  %add253 = or disjoint i64 %add252, %shl52
  %add254 = or disjoint i64 %add253, %shl55
  %add255 = or disjoint i64 %add254, %shl58
  %add256 = or disjoint i64 %add255, %shl61
  %add257 = add nuw nsw i64 %add256, %shr248
  %and258 = and i64 %add257, 288230376151711743
  %shr259 = lshr i64 %add257, 58
  %add262 = or disjoint i64 %shl25, %shl22
  %add263 = or disjoint i64 %add262, %shl28
  %add264 = or disjoint i64 %add263, %shl31
  %add265 = or disjoint i64 %add264, %shl34
  %add266 = or disjoint i64 %add265, %shl37
  %add267 = or disjoint i64 %add266, %shl40
  %add268 = add nuw nsw i64 %add267, %shr259
  %add273 = or disjoint i64 %shl6, %6
  %add274 = or disjoint i64 %add273, %shl9
  %add275 = or disjoint i64 %shl3, %shl
  %add276 = or disjoint i64 %add275, %add274
  store i64 %and, ptr %out1, align 8, !tbaa !10
  %arrayidx278 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and206, ptr %arrayidx278, align 8, !tbaa !10
  %arrayidx279 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %and217, ptr %arrayidx279, align 8, !tbaa !10
  %arrayidx280 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %add227, ptr %arrayidx280, align 8, !tbaa !10
  %arrayidx281 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %and236, ptr %arrayidx281, align 8, !tbaa !10
  %arrayidx282 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i64 %and247, ptr %arrayidx282, align 8, !tbaa !10
  %arrayidx283 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i64 %and258, ptr %arrayidx283, align 8, !tbaa !10
  %arrayidx284 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i64 %add268, ptr %arrayidx284, align 8, !tbaa !10
  %arrayidx285 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i64 %add276, ptr %arrayidx285, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p521_relax(ptr noundef writeonly captures(none) initializes((0, 72)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 64
  %0 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %1 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %2 = load <2 x i64>, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %3 = load <2 x i64>, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %4 = load <2 x i64>, ptr %arrayidx6, align 8, !tbaa !10
  store <2 x i64> %1, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %2, ptr %arrayidx11, align 8, !tbaa !10
  store <2 x i64> %3, ptr %arrayidx13, align 8, !tbaa !10
  store <2 x i64> %4, ptr %arrayidx15, align 8, !tbaa !10
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out1, i64 64
  store i64 %0, ptr %arrayidx17, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind memory(none) }

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
!9 = !{i64 3583}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
