; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @fiat_curve25519_solinas_value_barrier_u64(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #4, !srcloc !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_curve25519_solinas_addcarryx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i128
  %conv1 = zext i64 %arg2 to i128
  %add = add nuw nsw i128 %conv1, %conv
  %conv2 = zext i64 %arg3 to i128
  %add3 = add nuw nsw i128 %add, %conv2
  %conv4 = trunc i128 %add3 to i64
  %shr = lshr i128 %add3, 64
  %conv5 = trunc nuw nsw i128 %shr to i8
  store i64 %conv4, ptr %out1, align 8, !tbaa !10
  store i8 %conv5, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_curve25519_solinas_subborrowx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i64 %arg2 to i128
  %conv1 = zext i8 %arg1 to i128
  %conv2 = zext i64 %arg3 to i128
  %0 = add nuw nsw i128 %conv1, %conv2
  %sub3 = sub nsw i128 %conv, %0
  %shr = lshr i128 %sub3, 64
  %conv4 = trunc i128 %shr to i8
  %conv5 = trunc i128 %sub3 to i64
  store i64 %conv5, ptr %out1, align 8, !tbaa !10
  %sub7 = sub i8 0, %conv4
  store i8 %sub7, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_curve25519_solinas_mulx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 8)) %out2, i64 noundef %arg1, i64 noundef %arg2) local_unnamed_addr #1 {
entry:
  %conv = zext i64 %arg1 to i128
  %conv1 = zext i64 %arg2 to i128
  %mul = mul nuw i128 %conv1, %conv
  %conv2 = trunc i128 %mul to i64
  %shr = lshr i128 %mul, 64
  %conv3 = trunc nuw i128 %shr to i64
  store i64 %conv2, ptr %out1, align 8, !tbaa !10
  store i64 %conv3, ptr %out2, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @fiat_curve25519_solinas_cmovznz_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #2 {
entry:
  %tobool = icmp ne i8 %arg1, 0
  %conv4 = sext i1 %tobool to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4) #4, !srcloc !9
  %and5 = and i64 %0, %arg3
  %not = xor i64 %conv4, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not) #4, !srcloc !9
  %and7 = and i64 %1, %arg2
  %or = or i64 %and7, %and5
  store i64 %or, ptr %out1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_curve25519_solinas_mul(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv.i = zext i64 %0 to i128
  %conv1.i = zext i64 %1 to i128
  %mul.i = mul nuw i128 %conv1.i, %conv.i
  %shr.i = lshr i128 %mul.i, 64
  %conv3.i = trunc nuw i128 %shr.i to i64
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %2 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv1.i78 = zext i64 %2 to i128
  %mul.i79 = mul nuw i128 %conv1.i78, %conv.i
  %shr.i81 = lshr i128 %mul.i79, 64
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %3 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv1.i84 = zext i64 %3 to i128
  %mul.i85 = mul nuw i128 %conv1.i84, %conv.i
  %shr.i87 = lshr i128 %mul.i85, 64
  %4 = load i64, ptr %arg2, align 8, !tbaa !10
  %conv1.i90 = zext i64 %4 to i128
  %mul.i91 = mul nuw i128 %conv1.i90, %conv.i
  %shr.i93 = lshr i128 %mul.i91, 64
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %5 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %conv.i95 = zext i64 %5 to i128
  %mul.i97 = mul nuw i128 %conv.i95, %conv1.i
  %shr.i99 = lshr i128 %mul.i97, 64
  %conv3.i100 = trunc nuw i128 %shr.i99 to i64
  %mul.i103 = mul nuw i128 %conv.i95, %conv1.i78
  %shr.i105 = lshr i128 %mul.i103, 64
  %mul.i109 = mul nuw i128 %conv.i95, %conv1.i84
  %shr.i111 = lshr i128 %mul.i109, 64
  %mul.i115 = mul nuw i128 %conv.i95, %conv1.i90
  %shr.i117 = lshr i128 %mul.i115, 64
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %6 = load i64, ptr %arrayidx16, align 8, !tbaa !10
  %conv.i119 = zext i64 %6 to i128
  %mul.i121 = mul nuw i128 %conv.i119, %conv1.i
  %shr.i123 = lshr i128 %mul.i121, 64
  %conv3.i124 = trunc nuw i128 %shr.i123 to i64
  %mul.i127 = mul nuw i128 %conv.i119, %conv1.i78
  %shr.i129 = lshr i128 %mul.i127, 64
  %mul.i133 = mul nuw i128 %conv.i119, %conv1.i84
  %shr.i135 = lshr i128 %mul.i133, 64
  %mul.i139 = mul nuw i128 %conv.i119, %conv1.i90
  %shr.i141 = lshr i128 %mul.i139, 64
  %7 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i143 = zext i64 %7 to i128
  %mul.i145 = mul nuw i128 %conv.i143, %conv1.i
  %shr.i147 = lshr i128 %mul.i145, 64
  %mul.i151 = mul nuw i128 %conv.i143, %conv1.i78
  %shr.i153 = lshr i128 %mul.i151, 64
  %mul.i157 = mul nuw i128 %conv.i143, %conv1.i84
  %shr.i159 = lshr i128 %mul.i157, 64
  %mul.i163 = mul nuw i128 %conv.i143, %conv1.i90
  %shr.i165 = lshr i128 %mul.i163, 64
  %conv2.i168 = and i128 %mul.i91, 18446744073709551615
  %add3.i = add nuw nsw i128 %shr.i153, %conv2.i168
  %shr.i169 = lshr i128 %add3.i, 64
  %conv2.i172 = and i128 %mul.i85, 18446744073709551615
  %add.i = add nuw nsw i128 %shr.i147, %conv2.i172
  %add3.i173 = add nuw nsw i128 %add.i, %shr.i169
  %shr.i175 = lshr i128 %add3.i173, 64
  %conv5.i176 = trunc nuw nsw i128 %shr.i175 to i64
  %add = add nuw i64 %conv5.i176, %conv3.i124
  %conv1.i177 = and i128 %add3.i, 18446744073709551615
  %conv2.i179 = and i128 %mul.i109, 18446744073709551615
  %add3.i180 = add nuw nsw i128 %conv1.i177, %conv2.i179
  %shr.i182 = lshr i128 %add3.i180, 64
  %conv1.i185 = and i128 %add3.i173, 18446744073709551615
  %add.i186 = add nuw nsw i128 %shr.i182, %shr.i93
  %add3.i188 = add nuw nsw i128 %add.i186, %conv1.i185
  %shr.i190 = lshr i128 %add3.i188, 64
  %conv1.i193 = zext i64 %add to i128
  %add.i194 = add nuw nsw i128 %shr.i190, %conv1.i193
  %shr.i197 = lshr i128 %add.i194, 64
  %conv5.i198 = trunc nuw nsw i128 %shr.i197 to i64
  %add33 = add nuw i64 %conv5.i198, %conv3.i100
  %conv2.i201 = and i128 %mul.i115, 18446744073709551615
  %add3.i202 = add nuw nsw i128 %shr.i159, %conv2.i201
  %shr.i204 = lshr i128 %add3.i202, 64
  %conv1.i207 = and i128 %add3.i180, 18446744073709551615
  %add.i208 = add nuw nsw i128 %shr.i204, %shr.i117
  %add3.i210 = add nuw nsw i128 %add.i208, %conv1.i207
  %shr.i212 = lshr i128 %add3.i210, 64
  %conv1.i215 = and i128 %add3.i188, 18446744073709551615
  %conv2.i217 = and i128 %mul.i103, 18446744073709551615
  %add.i216 = add nuw nsw i128 %shr.i212, %conv2.i217
  %add3.i218 = add nuw nsw i128 %add.i216, %conv1.i215
  %shr.i220 = lshr i128 %add3.i218, 64
  %conv1.i223 = and i128 %add.i194, 18446744073709551615
  %conv2.i225 = and i128 %mul.i79, 18446744073709551615
  %add.i224 = add nuw nsw i128 %conv1.i223, %conv2.i225
  %add3.i226 = add nuw nsw i128 %add.i224, %shr.i220
  %shr.i228 = lshr i128 %add3.i226, 64
  %conv1.i231 = zext i64 %add33 to i128
  %add.i232 = add nuw nsw i128 %shr.i228, %conv1.i231
  %shr.i235 = lshr i128 %add.i232, 64
  %conv5.i236 = trunc nuw nsw i128 %shr.i235 to i64
  %add35 = add nuw i64 %conv5.i236, %conv3.i
  %conv1.i237 = and i128 %add3.i202, 18446744073709551615
  %conv2.i239 = and i128 %mul.i133, 18446744073709551615
  %add3.i240 = add nuw nsw i128 %conv1.i237, %conv2.i239
  %shr.i242 = lshr i128 %add3.i240, 64
  %conv1.i245 = and i128 %add3.i210, 18446744073709551615
  %conv2.i247 = and i128 %mul.i127, 18446744073709551615
  %add.i246 = add nuw nsw i128 %shr.i242, %conv2.i247
  %add3.i248 = add nuw nsw i128 %add.i246, %conv1.i245
  %shr.i250 = lshr i128 %add3.i248, 64
  %conv1.i253 = and i128 %add3.i218, 18446744073709551615
  %add.i254 = add nuw nsw i128 %shr.i250, %shr.i111
  %add3.i256 = add nuw nsw i128 %add.i254, %conv1.i253
  %shr.i258 = lshr i128 %add3.i256, 64
  %conv1.i261 = and i128 %add3.i226, 18446744073709551615
  %add.i262 = add nuw nsw i128 %shr.i258, %shr.i87
  %add3.i264 = add nuw nsw i128 %add.i262, %conv1.i261
  %shr.i266 = lshr i128 %add3.i264, 64
  %conv1.i269 = and i128 %add.i232, 18446744073709551615
  %add.i270 = add nuw nsw i128 %shr.i266, %conv1.i269
  %shr.i273 = lshr i128 %add.i270, 64
  %8 = trunc nuw nsw i128 %shr.i273 to i64
  %conv4.i279 = add i64 %add35, %8
  %conv2.i284 = and i128 %mul.i139, 18446744073709551615
  %add3.i285 = add nuw nsw i128 %shr.i165, %conv2.i284
  %shr.i287 = lshr i128 %add3.i285, 64
  %conv1.i290 = and i128 %add3.i240, 18446744073709551615
  %add.i291 = add nuw nsw i128 %shr.i287, %shr.i141
  %add3.i293 = add nuw nsw i128 %add.i291, %conv1.i290
  %shr.i295 = lshr i128 %add3.i293, 64
  %conv1.i298 = and i128 %add3.i248, 18446744073709551615
  %add.i299 = add nuw nsw i128 %shr.i295, %shr.i135
  %add3.i301 = add nuw nsw i128 %add.i299, %conv1.i298
  %shr.i303 = lshr i128 %add3.i301, 64
  %conv1.i306 = and i128 %add3.i256, 18446744073709551615
  %conv2.i308 = and i128 %mul.i121, 18446744073709551615
  %add.i307 = add nuw nsw i128 %shr.i303, %conv2.i308
  %add3.i309 = add nuw nsw i128 %add.i307, %conv1.i306
  %shr.i311 = lshr i128 %add3.i309, 64
  %conv1.i314 = and i128 %add3.i264, 18446744073709551615
  %conv2.i316 = and i128 %mul.i97, 18446744073709551615
  %add.i315 = add nuw nsw i128 %shr.i311, %conv2.i316
  %add3.i317 = add nuw nsw i128 %add.i315, %conv1.i314
  %shr.i319 = lshr i128 %add3.i317, 64
  %conv1.i322 = and i128 %add.i270, 18446744073709551615
  %conv2.i324 = and i128 %mul.i, 18446744073709551615
  %add.i323 = add nuw nsw i128 %conv1.i322, %conv2.i324
  %add3.i325 = add nuw nsw i128 %add.i323, %shr.i319
  %shr.i327 = lshr i128 %add3.i325, 64
  %9 = trunc nuw nsw i128 %shr.i327 to i64
  %conv4.i333 = add i64 %conv4.i279, %9
  %conv1.i336 = and i128 %add3.i285, 18446744073709551615
  %conv2.i338 = and i128 %mul.i157, 18446744073709551615
  %add3.i339 = add nuw nsw i128 %conv1.i336, %conv2.i338
  %shr.i341 = lshr i128 %add3.i339, 64
  %conv1.i344 = and i128 %add3.i293, 18446744073709551615
  %conv2.i346 = and i128 %mul.i151, 18446744073709551615
  %add.i345 = add nuw nsw i128 %shr.i341, %conv2.i346
  %add3.i347 = add nuw nsw i128 %add.i345, %conv1.i344
  %shr.i349 = lshr i128 %add3.i347, 64
  %conv1.i352 = and i128 %add3.i301, 18446744073709551615
  %conv2.i354 = and i128 %mul.i145, 18446744073709551615
  %add.i353 = add nuw nsw i128 %shr.i349, %conv2.i354
  %add3.i355 = add nuw nsw i128 %add.i353, %conv1.i352
  %shr.i357 = lshr i128 %add3.i355, 64
  %conv1.i360 = and i128 %add3.i309, 18446744073709551615
  %add.i361 = add nuw nsw i128 %shr.i357, %shr.i129
  %add3.i363 = add nuw nsw i128 %add.i361, %conv1.i360
  %shr.i365 = lshr i128 %add3.i363, 64
  %conv1.i368 = and i128 %add3.i317, 18446744073709551615
  %add.i369 = add nuw nsw i128 %shr.i365, %shr.i105
  %add3.i371 = add nuw nsw i128 %add.i369, %conv1.i368
  %shr.i373 = lshr i128 %add3.i371, 64
  %conv1.i376 = and i128 %add3.i325, 18446744073709551615
  %add.i377 = add nuw nsw i128 %shr.i373, %shr.i81
  %add3.i379 = add nuw nsw i128 %add.i377, %conv1.i376
  %shr.i381 = lshr i128 %add3.i379, 64
  %10 = trunc nuw nsw i128 %shr.i381 to i64
  %conv4.i387 = add i64 %conv4.i333, %10
  %conv1.i390 = zext i64 %conv4.i387 to i128
  %mul.i391 = mul nuw nsw i128 %conv1.i390, 38
  %shr.i393 = lshr i128 %mul.i391, 64
  %conv3.i394 = trunc nuw nsw i128 %shr.i393 to i64
  %conv1.i395 = and i128 %add3.i379, 18446744073709551615
  %mul.i396 = mul nuw nsw i128 %conv1.i395, 38
  %shr.i398 = lshr i128 %mul.i396, 64
  %conv1.i400 = and i128 %add3.i371, 18446744073709551615
  %mul.i401 = mul nuw nsw i128 %conv1.i400, 38
  %shr.i403 = lshr i128 %mul.i401, 64
  %conv1.i405 = and i128 %add3.i363, 18446744073709551615
  %mul.i406 = mul nuw nsw i128 %conv1.i405, 38
  %shr.i408 = lshr i128 %mul.i406, 64
  %conv1.i410 = and i128 %add3.i339, 18446744073709551615
  %conv2.i412 = and i128 %mul.i401, 18446744073709551614
  %add3.i413 = add nuw nsw i128 %conv2.i412, %conv1.i410
  %shr.i415 = lshr i128 %add3.i413, 64
  %conv1.i418 = and i128 %add3.i347, 18446744073709551615
  %add.i419 = add nuw nsw i128 %shr.i415, %conv1.i418
  %conv2.i420 = and i128 %mul.i396, 18446744073709551614
  %add3.i421 = add nuw nsw i128 %add.i419, %conv2.i420
  %shr.i423 = lshr i128 %add3.i421, 64
  %conv1.i426 = and i128 %add3.i355, 18446744073709551615
  %add.i427 = add nuw nsw i128 %shr.i423, %conv1.i426
  %conv2.i428 = and i128 %mul.i391, 18446744073709551614
  %add3.i429 = add nuw nsw i128 %add.i427, %conv2.i428
  %shr.i431 = lshr i128 %add3.i429, 64
  %conv5.i432 = trunc nuw nsw i128 %shr.i431 to i64
  %add37 = add nuw nsw i64 %conv5.i432, %conv3.i394
  %conv1.i433 = and i128 %mul.i163, 18446744073709551615
  %conv2.i435 = and i128 %mul.i406, 18446744073709551614
  %add3.i436 = add nuw nsw i128 %conv2.i435, %conv1.i433
  %shr.i438 = lshr i128 %add3.i436, 64
  %conv1.i441 = and i128 %add3.i413, 18446744073709551615
  %add.i442 = add nuw nsw i128 %shr.i438, %shr.i408
  %add3.i444 = add nuw nsw i128 %add.i442, %conv1.i441
  %shr.i446 = lshr i128 %add3.i444, 64
  %conv1.i449 = and i128 %add3.i421, 18446744073709551615
  %add.i450 = add nuw nsw i128 %shr.i446, %shr.i403
  %add3.i452 = add nuw nsw i128 %add.i450, %conv1.i449
  %shr.i454 = lshr i128 %add3.i452, 64
  %conv1.i457 = and i128 %add3.i429, 18446744073709551615
  %add.i458 = add nuw nsw i128 %shr.i454, %shr.i398
  %add3.i460 = add nuw nsw i128 %add.i458, %conv1.i457
  %shr.i462 = lshr i128 %add3.i460, 64
  %conv5.i463 = trunc nuw nsw i128 %shr.i462 to i64
  %add39 = add nuw nsw i64 %add37, %conv5.i463
  %mul.i465 = mul nuw nsw i64 %add39, 38
  %conv1.i469 = and i128 %add3.i436, 18446744073709551615
  %conv2.i471 = zext nneg i64 %mul.i465 to i128
  %add3.i472 = add nuw nsw i128 %conv1.i469, %conv2.i471
  %shr.i474 = lshr i128 %add3.i472, 64
  %conv1.i477 = and i128 %add3.i444, 18446744073709551615
  %add.i478 = add nuw nsw i128 %shr.i474, %conv1.i477
  %conv4.i480 = trunc i128 %add.i478 to i64
  %shr.i481 = lshr i128 %add.i478, 64
  %conv1.i484 = and i128 %add3.i452, 18446744073709551615
  %add.i485 = add nuw nsw i128 %shr.i481, %conv1.i484
  %conv4.i487 = trunc i128 %add.i485 to i64
  %shr.i488 = lshr i128 %add.i485, 64
  %conv1.i491 = and i128 %add3.i460, 18446744073709551615
  %add.i492 = add nuw nsw i128 %shr.i488, %conv1.i491
  %conv4.i494 = trunc i128 %add.i492 to i64
  %tobool.i = icmp samesign ugt i128 %add.i492, 18446744073709551615
  %conv4.i497 = sext i1 %tobool.i to i64
  %11 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i497) #4, !srcloc !9
  %and5.i = and i64 %11, 38
  %not.i = xor i64 %conv4.i497, -1
  %12 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #4, !srcloc !9
  %13 = trunc i128 %add3.i472 to i64
  %conv4.i502 = add i64 %and5.i, %13
  store i64 %conv4.i502, ptr %out1, align 8, !tbaa !10
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i480, ptr %arrayidx41, align 8, !tbaa !10
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i487, ptr %arrayidx42, align 8, !tbaa !10
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i494, ptr %arrayidx43, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_curve25519_solinas_square(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv.i = zext i64 %0 to i128
  %conv1.i = zext i64 %1 to i128
  %mul.i = mul nuw i128 %conv1.i, %conv.i
  %shr.i = lshr i128 %mul.i, 64
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv1.i56 = zext i64 %2 to i128
  %mul.i57 = mul nuw i128 %conv1.i56, %conv.i
  %shr.i59 = lshr i128 %mul.i57, 64
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %3 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv1.i62 = zext i64 %3 to i128
  %mul.i63 = mul nuw i128 %conv1.i62, %conv.i
  %shr.i65 = lshr i128 %mul.i63, 64
  %mul.i69 = mul nuw i128 %conv1.i56, %conv1.i
  %shr.i71 = lshr i128 %mul.i69, 64
  %conv3.i72 = trunc nuw i128 %shr.i71 to i64
  %mul.i75 = mul nuw i128 %conv1.i62, %conv1.i
  %shr.i77 = lshr i128 %mul.i75, 64
  %conv2.i80 = and i128 %mul.i57, 18446744073709551615
  %add3.i = add nuw nsw i128 %shr.i65, %conv2.i80
  %shr.i81 = lshr i128 %add3.i, 64
  %conv2.i84 = and i128 %mul.i, 18446744073709551615
  %add.i = add nuw nsw i128 %shr.i59, %conv2.i84
  %add3.i85 = add nuw nsw i128 %add.i, %shr.i81
  %shr.i87 = lshr i128 %add3.i85, 64
  %conv2.i92 = and i128 %mul.i75, 18446744073709551615
  %add.i91 = add nuw nsw i128 %conv2.i92, %shr.i
  %add3.i93 = add nuw nsw i128 %add.i91, %shr.i87
  %shr.i95 = lshr i128 %add3.i93, 64
  %conv2.i100 = and i128 %mul.i69, 18446744073709551615
  %add.i99 = add nuw nsw i128 %shr.i77, %conv2.i100
  %add3.i101 = add nuw nsw i128 %add.i99, %shr.i95
  %shr.i103 = lshr i128 %add3.i101, 64
  %conv5.i104 = trunc nuw nsw i128 %shr.i103 to i64
  %add = add nuw i64 %conv5.i104, %conv3.i72
  %mul.i107 = mul nuw i128 %conv1.i62, %conv1.i56
  %shr.i109 = lshr i128 %mul.i107, 64
  %conv1.i111 = and i128 %add3.i85, 18446744073709551615
  %conv2.i113 = and i128 %mul.i107, 18446744073709551615
  %add3.i114 = add nuw nsw i128 %conv1.i111, %conv2.i113
  %shr.i116 = lshr i128 %add3.i114, 64
  %conv1.i119 = and i128 %add3.i93, 18446744073709551615
  %add.i120 = add nuw nsw i128 %shr.i116, %shr.i109
  %add3.i122 = add nuw nsw i128 %add.i120, %conv1.i119
  %shr.i124 = lshr i128 %add3.i122, 64
  %conv1.i127 = and i128 %add3.i101, 18446744073709551615
  %add.i128 = add nuw nsw i128 %conv1.i127, %shr.i124
  %shr.i131 = lshr i128 %add.i128, 64
  %conv1.i134 = zext i64 %add to i128
  %add.i135 = add nuw nsw i128 %shr.i131, %conv1.i134
  %conv1.i140 = shl i128 %mul.i63, 1
  %add3.i143 = lshr i128 %conv1.i140, 64
  %conv.i147 = and i128 %add3.i143, 1
  %conv1.i148 = shl nuw nsw i128 %add3.i, 1
  %reass.add381 = lshr i128 %add3.i, 63
  %conv.i155 = and i128 %reass.add381, 1
  %conv1.i156 = shl nuw nsw i128 %add3.i114, 1
  %reass.add382 = lshr i128 %add3.i114, 63
  %conv.i163 = and i128 %reass.add382, 1
  %conv1.i164 = shl nuw nsw i128 %add3.i122, 1
  %reass.add383 = lshr i128 %add3.i122, 63
  %conv.i171 = and i128 %reass.add383, 1
  %conv1.i172 = shl nuw nsw i128 %add.i128, 1
  %reass.add384 = lshr i128 %add.i128, 63
  %conv.i179 = and i128 %reass.add384, 1
  %conv1.i180 = shl nuw nsw i128 %add.i135, 1
  %4 = trunc i128 %add.i135 to i64
  %5 = lshr i64 %4, 63
  %sh.diff = lshr i128 %add.i135, 63
  %tr.sh.diff = trunc nuw nsw i128 %sh.diff to i64
  %reass.add = and i64 %tr.sh.diff, 2
  %add16 = or disjoint i64 %reass.add, %5
  %mul.i189 = mul nuw i128 %conv1.i, %conv1.i
  %shr.i191 = lshr i128 %mul.i189, 64
  %mul.i195 = mul nuw i128 %conv1.i56, %conv1.i56
  %shr.i197 = lshr i128 %mul.i195, 64
  %mul.i201 = mul nuw i128 %conv1.i62, %conv1.i62
  %shr.i203 = lshr i128 %mul.i201, 64
  %mul.i207 = mul nuw i128 %conv.i, %conv.i
  %shr.i209 = lshr i128 %mul.i207, 64
  %conv1.i211 = and i128 %conv1.i140, 18446744073709551614
  %add3.i214 = add nuw nsw i128 %conv1.i211, %shr.i209
  %shr.i216 = lshr i128 %add3.i214, 64
  %conv1.i148.masked = and i128 %conv1.i148, 18446744073709551614
  %conv2.i221 = and i128 %mul.i201, 18446744073709551615
  %conv1.i219 = add nuw nsw i128 %conv.i147, %conv2.i221
  %add.i220 = add nuw nsw i128 %conv1.i219, %conv1.i148.masked
  %add3.i222 = add nuw nsw i128 %add.i220, %shr.i216
  %shr.i224 = lshr i128 %add3.i222, 64
  %conv1.i156.masked = and i128 %conv1.i156, 18446744073709551614
  %conv1.i227 = add nuw nsw i128 %conv.i155, %shr.i203
  %add.i228 = add nuw nsw i128 %conv1.i227, %shr.i224
  %add3.i230 = add nuw nsw i128 %add.i228, %conv1.i156.masked
  %shr.i232 = lshr i128 %add3.i230, 64
  %conv1.i164.masked = and i128 %conv1.i164, 18446744073709551614
  %conv2.i237 = and i128 %mul.i195, 18446744073709551615
  %conv1.i235 = add nuw nsw i128 %conv.i163, %conv2.i237
  %add.i236 = add nuw nsw i128 %conv1.i235, %conv1.i164.masked
  %add3.i238 = add nuw nsw i128 %add.i236, %shr.i232
  %shr.i240 = lshr i128 %add3.i238, 64
  %conv1.i172.masked = and i128 %conv1.i172, 18446744073709551614
  %conv1.i243 = add nuw nsw i128 %conv.i171, %shr.i197
  %add.i244 = add nuw nsw i128 %conv1.i243, %conv1.i172.masked
  %add3.i246 = add nuw nsw i128 %add.i244, %shr.i240
  %shr.i248 = lshr i128 %add3.i246, 64
  %conv1.i180.masked = and i128 %conv1.i180, 18446744073709551614
  %conv2.i253 = and i128 %mul.i189, 18446744073709551615
  %conv1.i251 = add nuw nsw i128 %conv.i179, %conv2.i253
  %add.i252 = add nuw nsw i128 %conv1.i251, %conv1.i180.masked
  %add3.i254 = add nuw nsw i128 %add.i252, %shr.i248
  %shr.i256 = lshr i128 %add3.i254, 64
  %conv1.i259 = zext nneg i64 %add16 to i128
  %add.i260 = add nuw nsw i128 %shr.i191, %conv1.i259
  %add3.i262 = add nuw nsw i128 %add.i260, %shr.i256
  %conv1.i266 = and i128 %add3.i262, 18446744073709551615
  %mul.i267 = mul nuw nsw i128 %conv1.i266, 38
  %shr.i269 = lshr i128 %mul.i267, 64
  %conv3.i270 = trunc nuw nsw i128 %shr.i269 to i64
  %conv1.i271 = and i128 %add3.i254, 18446744073709551615
  %mul.i272 = mul nuw nsw i128 %conv1.i271, 38
  %shr.i274 = lshr i128 %mul.i272, 64
  %conv1.i276 = and i128 %add3.i246, 18446744073709551615
  %mul.i277 = mul nuw nsw i128 %conv1.i276, 38
  %shr.i279 = lshr i128 %mul.i277, 64
  %conv1.i281 = and i128 %add3.i238, 18446744073709551615
  %mul.i282 = mul nuw nsw i128 %conv1.i281, 38
  %shr.i284 = lshr i128 %mul.i282, 64
  %conv1.i286 = and i128 %add3.i214, 18446744073709551615
  %conv2.i288 = and i128 %mul.i277, 18446744073709551614
  %add3.i289 = add nuw nsw i128 %conv2.i288, %conv1.i286
  %shr.i291 = lshr i128 %add3.i289, 64
  %conv1.i294 = and i128 %add3.i222, 18446744073709551615
  %add.i295 = add nuw nsw i128 %shr.i291, %conv1.i294
  %conv2.i296 = and i128 %mul.i272, 18446744073709551614
  %add3.i297 = add nuw nsw i128 %add.i295, %conv2.i296
  %shr.i299 = lshr i128 %add3.i297, 64
  %conv1.i302 = and i128 %add3.i230, 18446744073709551615
  %add.i303 = add nuw nsw i128 %shr.i299, %conv1.i302
  %conv2.i304 = and i128 %mul.i267, 18446744073709551614
  %add3.i305 = add nuw nsw i128 %add.i303, %conv2.i304
  %shr.i307 = lshr i128 %add3.i305, 64
  %conv5.i308 = trunc nuw nsw i128 %shr.i307 to i64
  %add26 = add nuw nsw i64 %conv5.i308, %conv3.i270
  %conv1.i309 = and i128 %mul.i207, 18446744073709551615
  %conv2.i311 = and i128 %mul.i282, 18446744073709551614
  %add3.i312 = add nuw nsw i128 %conv2.i311, %conv1.i309
  %shr.i314 = lshr i128 %add3.i312, 64
  %conv1.i317 = and i128 %add3.i289, 18446744073709551615
  %add.i318 = add nuw nsw i128 %shr.i314, %shr.i284
  %add3.i320 = add nuw nsw i128 %add.i318, %conv1.i317
  %shr.i322 = lshr i128 %add3.i320, 64
  %conv1.i325 = and i128 %add3.i297, 18446744073709551615
  %add.i326 = add nuw nsw i128 %shr.i322, %shr.i279
  %add3.i328 = add nuw nsw i128 %add.i326, %conv1.i325
  %shr.i330 = lshr i128 %add3.i328, 64
  %conv1.i333 = and i128 %add3.i305, 18446744073709551615
  %add.i334 = add nuw nsw i128 %shr.i330, %shr.i274
  %add3.i336 = add nuw nsw i128 %add.i334, %conv1.i333
  %shr.i338 = lshr i128 %add3.i336, 64
  %conv5.i339 = trunc nuw nsw i128 %shr.i338 to i64
  %add28 = add nuw nsw i64 %add26, %conv5.i339
  %mul.i341 = mul nuw nsw i64 %add28, 38
  %conv1.i345 = and i128 %add3.i312, 18446744073709551615
  %conv2.i347 = zext nneg i64 %mul.i341 to i128
  %add3.i348 = add nuw nsw i128 %conv1.i345, %conv2.i347
  %shr.i350 = lshr i128 %add3.i348, 64
  %conv1.i353 = and i128 %add3.i320, 18446744073709551615
  %add.i354 = add nuw nsw i128 %shr.i350, %conv1.i353
  %conv4.i356 = trunc i128 %add.i354 to i64
  %shr.i357 = lshr i128 %add.i354, 64
  %conv1.i360 = and i128 %add3.i328, 18446744073709551615
  %add.i361 = add nuw nsw i128 %shr.i357, %conv1.i360
  %conv4.i363 = trunc i128 %add.i361 to i64
  %shr.i364 = lshr i128 %add.i361, 64
  %conv1.i367 = and i128 %add3.i336, 18446744073709551615
  %add.i368 = add nuw nsw i128 %shr.i364, %conv1.i367
  %conv4.i370 = trunc i128 %add.i368 to i64
  %tobool.i = icmp samesign ugt i128 %add.i368, 18446744073709551615
  %conv4.i373 = sext i1 %tobool.i to i64
  %6 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i373) #4, !srcloc !9
  %and5.i = and i64 %6, 38
  %not.i = xor i64 %conv4.i373, -1
  %7 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #4, !srcloc !9
  %8 = trunc i128 %add3.i348 to i64
  %conv4.i378 = add i64 %and5.i, %8
  store i64 %conv4.i378, ptr %out1, align 8, !tbaa !10
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i356, ptr %arrayidx30, align 8, !tbaa !10
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i363, ptr %arrayidx31, align 8, !tbaa !10
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i370, ptr %arrayidx32, align 8, !tbaa !10
  ret void
}

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(none) }

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
!9 = !{i64 1184}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
