; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @fiat_secp256k1_montgomery_value_barrier_u64(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #8, !srcloc !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_secp256k1_montgomery_addcarryx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
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
define dso_local void @fiat_secp256k1_montgomery_subborrowx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
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
define dso_local void @fiat_secp256k1_montgomery_mulx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 8)) %out2, i64 noundef %arg1, i64 noundef %arg2) local_unnamed_addr #1 {
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
define dso_local void @fiat_secp256k1_montgomery_cmovznz_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #2 {
entry:
  %tobool = icmp ne i8 %arg1, 0
  %conv4 = sext i1 %tobool to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4) #8, !srcloc !9
  %and5 = and i64 %0, %arg3
  %not = xor i64 %conv4, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not) #8, !srcloc !9
  %and7 = and i64 %1, %arg2
  %or = or i64 %and7, %and5
  store i64 %or, ptr %out1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_mul(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %3 = load i64, ptr %arg1, align 8, !tbaa !10
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %4 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %conv.i = zext i64 %3 to i128
  %conv1.i = zext i64 %4 to i128
  %mul.i = mul nuw i128 %conv1.i, %conv.i
  %shr.i = lshr i128 %mul.i, 64
  %conv3.i = trunc nuw i128 %shr.i to i64
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %5 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv1.i82 = zext i64 %5 to i128
  %mul.i83 = mul nuw i128 %conv1.i82, %conv.i
  %shr.i85 = lshr i128 %mul.i83, 64
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %6 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %conv1.i88 = zext i64 %6 to i128
  %mul.i89 = mul nuw i128 %conv1.i88, %conv.i
  %shr.i91 = lshr i128 %mul.i89, 64
  %7 = load i64, ptr %arg2, align 8, !tbaa !10
  %conv1.i94 = zext i64 %7 to i128
  %mul.i95 = mul nuw i128 %conv1.i94, %conv.i
  %shr.i97 = lshr i128 %mul.i95, 64
  %conv2.i100 = and i128 %mul.i89, 18446744073709551615
  %add3.i = add nuw nsw i128 %shr.i97, %conv2.i100
  %shr.i101 = lshr i128 %add3.i, 64
  %conv2.i104 = and i128 %mul.i83, 18446744073709551615
  %add.i = add nuw nsw i128 %shr.i91, %conv2.i104
  %add3.i105 = add nuw nsw i128 %add.i, %shr.i101
  %shr.i107 = lshr i128 %add3.i105, 64
  %conv2.i112 = and i128 %mul.i, 18446744073709551615
  %add.i111 = add nuw nsw i128 %shr.i85, %conv2.i112
  %add3.i113 = add nuw nsw i128 %add.i111, %shr.i107
  %shr.i115 = lshr i128 %add3.i113, 64
  %conv5.i116 = trunc nuw nsw i128 %shr.i115 to i64
  %add = add nuw i64 %conv5.i116, %conv3.i
  %conv.i117 = and i128 %mul.i95, 18446744073709551615
  %8 = trunc i128 %mul.i95 to i64
  %conv2.i119 = mul i64 %8, -2866531139136965327
  %conv.i122 = zext i64 %conv2.i119 to i128
  %mul.i123 = mul nuw i128 %conv.i122, 18446744073709551615
  %shr.i125 = lshr i128 %mul.i123, 64
  %conv3.i126 = trunc nuw i128 %shr.i125 to i64
  %mul.i138 = mul nuw i128 %conv.i122, 18446744069414583343
  %shr.i140 = lshr i128 %mul.i138, 64
  %conv2.i144 = and i128 %mul.i123, 18446744073709551615
  %add3.i145 = add nuw nsw i128 %shr.i140, %conv2.i144
  %shr.i147 = lshr i128 %add3.i145, 64
  %add.i151 = add nuw nsw i128 %conv2.i144, %shr.i125
  %add3.i153 = add nuw nsw i128 %add.i151, %shr.i147
  %shr.i155 = lshr i128 %add3.i153, 64
  %add3.i161 = add nuw nsw i128 %add.i151, %shr.i155
  %shr.i163 = lshr i128 %add3.i161, 64
  %conv5.i164 = trunc nuw nsw i128 %shr.i163 to i64
  %add9 = add nuw i64 %conv5.i164, %conv3.i126
  %conv2.i167 = and i128 %mul.i138, 18446744073709551615
  %add3.i168 = add nuw nsw i128 %conv2.i167, %conv.i117
  %shr.i170 = lshr i128 %add3.i168, 64
  %conv1.i173 = and i128 %add3.i, 18446744073709551615
  %add.i174 = add nuw nsw i128 %shr.i170, %conv1.i173
  %conv2.i175 = and i128 %add3.i145, 18446744073709551615
  %add3.i176 = add nuw nsw i128 %add.i174, %conv2.i175
  %shr.i178 = lshr i128 %add3.i176, 64
  %conv1.i181 = and i128 %add3.i105, 18446744073709551615
  %add.i182 = add nuw nsw i128 %shr.i178, %conv1.i181
  %conv2.i183 = and i128 %add3.i153, 18446744073709551615
  %add3.i184 = add nuw nsw i128 %add.i182, %conv2.i183
  %shr.i186 = lshr i128 %add3.i184, 64
  %conv1.i189 = and i128 %add3.i113, 18446744073709551615
  %add.i190 = add nuw nsw i128 %shr.i186, %conv1.i189
  %conv2.i191 = and i128 %add3.i161, 18446744073709551615
  %add3.i192 = add nuw nsw i128 %add.i190, %conv2.i191
  %shr.i194 = lshr i128 %add3.i192, 64
  %conv1.i197 = zext i64 %add to i128
  %add.i198 = add nuw nsw i128 %shr.i194, %conv1.i197
  %conv2.i199 = zext i64 %add9 to i128
  %add3.i200 = add nuw nsw i128 %add.i198, %conv2.i199
  %shr.i202 = lshr i128 %add3.i200, 64
  %conv.i204 = zext i64 %0 to i128
  %mul.i206 = mul nuw i128 %conv1.i, %conv.i204
  %shr.i208 = lshr i128 %mul.i206, 64
  %conv3.i209 = trunc nuw i128 %shr.i208 to i64
  %mul.i212 = mul nuw i128 %conv1.i82, %conv.i204
  %shr.i214 = lshr i128 %mul.i212, 64
  %mul.i218 = mul nuw i128 %conv1.i88, %conv.i204
  %shr.i220 = lshr i128 %mul.i218, 64
  %mul.i224 = mul nuw i128 %conv1.i94, %conv.i204
  %shr.i226 = lshr i128 %mul.i224, 64
  %conv2.i230 = and i128 %mul.i218, 18446744073709551615
  %add3.i231 = add nuw nsw i128 %shr.i226, %conv2.i230
  %shr.i233 = lshr i128 %add3.i231, 64
  %conv2.i238 = and i128 %mul.i212, 18446744073709551615
  %add.i237 = add nuw nsw i128 %shr.i220, %conv2.i238
  %add3.i239 = add nuw nsw i128 %add.i237, %shr.i233
  %shr.i241 = lshr i128 %add3.i239, 64
  %conv2.i246 = and i128 %mul.i206, 18446744073709551615
  %add.i245 = add nuw nsw i128 %shr.i214, %conv2.i246
  %add3.i247 = add nuw nsw i128 %add.i245, %shr.i241
  %shr.i249 = lshr i128 %add3.i247, 64
  %conv5.i250 = trunc nuw nsw i128 %shr.i249 to i64
  %add15 = add nuw i64 %conv5.i250, %conv3.i209
  %conv1.i251 = and i128 %add3.i176, 18446744073709551615
  %conv2.i253 = and i128 %mul.i224, 18446744073709551615
  %add3.i254 = add nuw nsw i128 %conv1.i251, %conv2.i253
  %shr.i256 = lshr i128 %add3.i254, 64
  %conv1.i259 = and i128 %add3.i184, 18446744073709551615
  %conv2.i261 = and i128 %add3.i231, 18446744073709551615
  %add.i260 = add nuw nsw i128 %shr.i256, %conv2.i261
  %add3.i262 = add nuw nsw i128 %add.i260, %conv1.i259
  %shr.i264 = lshr i128 %add3.i262, 64
  %conv1.i267 = and i128 %add3.i192, 18446744073709551615
  %conv2.i269 = and i128 %add3.i239, 18446744073709551615
  %add.i268 = add nuw nsw i128 %shr.i264, %conv2.i269
  %add3.i270 = add nuw nsw i128 %add.i268, %conv1.i267
  %shr.i272 = lshr i128 %add3.i270, 64
  %conv1.i275 = and i128 %add3.i200, 18446744073709551615
  %conv2.i277 = and i128 %add3.i247, 18446744073709551615
  %add.i276 = add nuw nsw i128 %shr.i272, %conv2.i277
  %add3.i278 = add nuw nsw i128 %add.i276, %conv1.i275
  %shr.i280 = lshr i128 %add3.i278, 64
  %conv2.i285 = zext i64 %add15 to i128
  %add.i284 = add nuw nsw i128 %shr.i202, %conv2.i285
  %add3.i286 = add nuw nsw i128 %add.i284, %shr.i280
  %shr.i288 = lshr i128 %add3.i286, 64
  %conv5.i289 = trunc nuw nsw i128 %shr.i288 to i64
  %conv.i290 = and i128 %add3.i254, 18446744073709551615
  %9 = trunc i128 %add3.i254 to i64
  %conv2.i292 = mul i64 %9, -2866531139136965327
  %conv.i295 = zext i64 %conv2.i292 to i128
  %mul.i296 = mul nuw i128 %conv.i295, 18446744073709551615
  %shr.i298 = lshr i128 %mul.i296, 64
  %conv3.i299 = trunc nuw i128 %shr.i298 to i64
  %mul.i311 = mul nuw i128 %conv.i295, 18446744069414583343
  %shr.i313 = lshr i128 %mul.i311, 64
  %conv2.i317 = and i128 %mul.i296, 18446744073709551615
  %add3.i318 = add nuw nsw i128 %shr.i313, %conv2.i317
  %shr.i320 = lshr i128 %add3.i318, 64
  %add.i324 = add nuw nsw i128 %conv2.i317, %shr.i298
  %add3.i326 = add nuw nsw i128 %add.i324, %shr.i320
  %shr.i328 = lshr i128 %add3.i326, 64
  %add3.i334 = add nuw nsw i128 %add.i324, %shr.i328
  %shr.i336 = lshr i128 %add3.i334, 64
  %conv5.i337 = trunc nuw nsw i128 %shr.i336 to i64
  %add18 = add nuw i64 %conv5.i337, %conv3.i299
  %conv2.i340 = and i128 %mul.i311, 18446744073709551615
  %add3.i341 = add nuw nsw i128 %conv2.i340, %conv.i290
  %shr.i343 = lshr i128 %add3.i341, 64
  %conv1.i346 = and i128 %add3.i262, 18446744073709551615
  %add.i347 = add nuw nsw i128 %shr.i343, %conv1.i346
  %conv2.i348 = and i128 %add3.i318, 18446744073709551615
  %add3.i349 = add nuw nsw i128 %add.i347, %conv2.i348
  %shr.i351 = lshr i128 %add3.i349, 64
  %conv1.i354 = and i128 %add3.i270, 18446744073709551615
  %add.i355 = add nuw nsw i128 %shr.i351, %conv1.i354
  %conv2.i356 = and i128 %add3.i326, 18446744073709551615
  %add3.i357 = add nuw nsw i128 %add.i355, %conv2.i356
  %shr.i359 = lshr i128 %add3.i357, 64
  %conv1.i362 = and i128 %add3.i278, 18446744073709551615
  %add.i363 = add nuw nsw i128 %shr.i359, %conv1.i362
  %conv2.i364 = and i128 %add3.i334, 18446744073709551615
  %add3.i365 = add nuw nsw i128 %add.i363, %conv2.i364
  %shr.i367 = lshr i128 %add3.i365, 64
  %conv1.i370 = and i128 %add3.i286, 18446744073709551615
  %add.i371 = add nuw nsw i128 %shr.i367, %conv1.i370
  %conv2.i372 = zext i64 %add18 to i128
  %add3.i373 = add nuw nsw i128 %add.i371, %conv2.i372
  %shr.i375 = lshr i128 %add3.i373, 64
  %conv5.i376 = trunc nuw nsw i128 %shr.i375 to i64
  %add21 = add nuw nsw i64 %conv5.i376, %conv5.i289
  %conv.i377 = zext i64 %1 to i128
  %mul.i379 = mul nuw i128 %conv1.i, %conv.i377
  %shr.i381 = lshr i128 %mul.i379, 64
  %conv3.i382 = trunc nuw i128 %shr.i381 to i64
  %mul.i385 = mul nuw i128 %conv1.i82, %conv.i377
  %shr.i387 = lshr i128 %mul.i385, 64
  %mul.i391 = mul nuw i128 %conv1.i88, %conv.i377
  %shr.i393 = lshr i128 %mul.i391, 64
  %mul.i397 = mul nuw i128 %conv1.i94, %conv.i377
  %shr.i399 = lshr i128 %mul.i397, 64
  %conv2.i403 = and i128 %mul.i391, 18446744073709551615
  %add3.i404 = add nuw nsw i128 %shr.i399, %conv2.i403
  %shr.i406 = lshr i128 %add3.i404, 64
  %conv2.i411 = and i128 %mul.i385, 18446744073709551615
  %add.i410 = add nuw nsw i128 %shr.i393, %conv2.i411
  %add3.i412 = add nuw nsw i128 %add.i410, %shr.i406
  %shr.i414 = lshr i128 %add3.i412, 64
  %conv2.i419 = and i128 %mul.i379, 18446744073709551615
  %add.i418 = add nuw nsw i128 %shr.i387, %conv2.i419
  %add3.i420 = add nuw nsw i128 %add.i418, %shr.i414
  %shr.i422 = lshr i128 %add3.i420, 64
  %conv5.i423 = trunc nuw nsw i128 %shr.i422 to i64
  %add27 = add nuw i64 %conv5.i423, %conv3.i382
  %conv1.i424 = and i128 %add3.i349, 18446744073709551615
  %conv2.i426 = and i128 %mul.i397, 18446744073709551615
  %add3.i427 = add nuw nsw i128 %conv1.i424, %conv2.i426
  %shr.i429 = lshr i128 %add3.i427, 64
  %conv1.i432 = and i128 %add3.i357, 18446744073709551615
  %conv2.i434 = and i128 %add3.i404, 18446744073709551615
  %add.i433 = add nuw nsw i128 %shr.i429, %conv2.i434
  %add3.i435 = add nuw nsw i128 %add.i433, %conv1.i432
  %shr.i437 = lshr i128 %add3.i435, 64
  %conv1.i440 = and i128 %add3.i365, 18446744073709551615
  %conv2.i442 = and i128 %add3.i412, 18446744073709551615
  %add.i441 = add nuw nsw i128 %shr.i437, %conv2.i442
  %add3.i443 = add nuw nsw i128 %add.i441, %conv1.i440
  %shr.i445 = lshr i128 %add3.i443, 64
  %conv1.i448 = and i128 %add3.i373, 18446744073709551615
  %conv2.i450 = and i128 %add3.i420, 18446744073709551615
  %add.i449 = add nuw nsw i128 %shr.i445, %conv2.i450
  %add3.i451 = add nuw nsw i128 %add.i449, %conv1.i448
  %shr.i453 = lshr i128 %add3.i451, 64
  %conv1.i456 = zext nneg i64 %add21 to i128
  %conv2.i458 = zext i64 %add27 to i128
  %add.i457 = add nuw nsw i128 %conv1.i456, %conv2.i458
  %add3.i459 = add nuw nsw i128 %add.i457, %shr.i453
  %shr.i461 = lshr i128 %add3.i459, 64
  %conv5.i462 = trunc nuw nsw i128 %shr.i461 to i64
  %conv.i463 = and i128 %add3.i427, 18446744073709551615
  %10 = trunc i128 %add3.i427 to i64
  %conv2.i465 = mul i64 %10, -2866531139136965327
  %conv.i468 = zext i64 %conv2.i465 to i128
  %mul.i469 = mul nuw i128 %conv.i468, 18446744073709551615
  %shr.i471 = lshr i128 %mul.i469, 64
  %conv3.i472 = trunc nuw i128 %shr.i471 to i64
  %mul.i484 = mul nuw i128 %conv.i468, 18446744069414583343
  %shr.i486 = lshr i128 %mul.i484, 64
  %conv2.i490 = and i128 %mul.i469, 18446744073709551615
  %add3.i491 = add nuw nsw i128 %shr.i486, %conv2.i490
  %shr.i493 = lshr i128 %add3.i491, 64
  %add.i497 = add nuw nsw i128 %conv2.i490, %shr.i471
  %add3.i499 = add nuw nsw i128 %add.i497, %shr.i493
  %shr.i501 = lshr i128 %add3.i499, 64
  %add3.i507 = add nuw nsw i128 %add.i497, %shr.i501
  %shr.i509 = lshr i128 %add3.i507, 64
  %conv5.i510 = trunc nuw nsw i128 %shr.i509 to i64
  %add29 = add nuw i64 %conv5.i510, %conv3.i472
  %conv2.i513 = and i128 %mul.i484, 18446744073709551615
  %add3.i514 = add nuw nsw i128 %conv2.i513, %conv.i463
  %shr.i516 = lshr i128 %add3.i514, 64
  %conv1.i519 = and i128 %add3.i435, 18446744073709551615
  %add.i520 = add nuw nsw i128 %shr.i516, %conv1.i519
  %conv2.i521 = and i128 %add3.i491, 18446744073709551615
  %add3.i522 = add nuw nsw i128 %add.i520, %conv2.i521
  %shr.i524 = lshr i128 %add3.i522, 64
  %conv1.i527 = and i128 %add3.i443, 18446744073709551615
  %add.i528 = add nuw nsw i128 %shr.i524, %conv1.i527
  %conv2.i529 = and i128 %add3.i499, 18446744073709551615
  %add3.i530 = add nuw nsw i128 %add.i528, %conv2.i529
  %shr.i532 = lshr i128 %add3.i530, 64
  %conv1.i535 = and i128 %add3.i451, 18446744073709551615
  %add.i536 = add nuw nsw i128 %shr.i532, %conv1.i535
  %conv2.i537 = and i128 %add3.i507, 18446744073709551615
  %add3.i538 = add nuw nsw i128 %add.i536, %conv2.i537
  %shr.i540 = lshr i128 %add3.i538, 64
  %conv1.i543 = and i128 %add3.i459, 18446744073709551615
  %add.i544 = add nuw nsw i128 %shr.i540, %conv1.i543
  %conv2.i545 = zext i64 %add29 to i128
  %add3.i546 = add nuw nsw i128 %add.i544, %conv2.i545
  %shr.i548 = lshr i128 %add3.i546, 64
  %conv5.i549 = trunc nuw nsw i128 %shr.i548 to i64
  %add32 = add nuw nsw i64 %conv5.i549, %conv5.i462
  %conv.i550 = zext i64 %2 to i128
  %mul.i552 = mul nuw i128 %conv1.i, %conv.i550
  %shr.i554 = lshr i128 %mul.i552, 64
  %conv3.i555 = trunc nuw i128 %shr.i554 to i64
  %mul.i558 = mul nuw i128 %conv1.i82, %conv.i550
  %shr.i560 = lshr i128 %mul.i558, 64
  %mul.i564 = mul nuw i128 %conv1.i88, %conv.i550
  %shr.i566 = lshr i128 %mul.i564, 64
  %mul.i570 = mul nuw i128 %conv1.i94, %conv.i550
  %shr.i572 = lshr i128 %mul.i570, 64
  %conv2.i576 = and i128 %mul.i564, 18446744073709551615
  %add3.i577 = add nuw nsw i128 %shr.i572, %conv2.i576
  %shr.i579 = lshr i128 %add3.i577, 64
  %conv2.i584 = and i128 %mul.i558, 18446744073709551615
  %add.i583 = add nuw nsw i128 %shr.i566, %conv2.i584
  %add3.i585 = add nuw nsw i128 %add.i583, %shr.i579
  %shr.i587 = lshr i128 %add3.i585, 64
  %conv2.i592 = and i128 %mul.i552, 18446744073709551615
  %add.i591 = add nuw nsw i128 %shr.i560, %conv2.i592
  %add3.i593 = add nuw nsw i128 %add.i591, %shr.i587
  %shr.i595 = lshr i128 %add3.i593, 64
  %conv5.i596 = trunc nuw nsw i128 %shr.i595 to i64
  %add38 = add nuw i64 %conv5.i596, %conv3.i555
  %conv1.i597 = and i128 %add3.i522, 18446744073709551615
  %conv2.i599 = and i128 %mul.i570, 18446744073709551615
  %add3.i600 = add nuw nsw i128 %conv1.i597, %conv2.i599
  %shr.i602 = lshr i128 %add3.i600, 64
  %conv1.i605 = and i128 %add3.i530, 18446744073709551615
  %conv2.i607 = and i128 %add3.i577, 18446744073709551615
  %add.i606 = add nuw nsw i128 %shr.i602, %conv2.i607
  %add3.i608 = add nuw nsw i128 %add.i606, %conv1.i605
  %shr.i610 = lshr i128 %add3.i608, 64
  %conv1.i613 = and i128 %add3.i538, 18446744073709551615
  %conv2.i615 = and i128 %add3.i585, 18446744073709551615
  %add.i614 = add nuw nsw i128 %shr.i610, %conv2.i615
  %add3.i616 = add nuw nsw i128 %add.i614, %conv1.i613
  %shr.i618 = lshr i128 %add3.i616, 64
  %conv1.i621 = and i128 %add3.i546, 18446744073709551615
  %conv2.i623 = and i128 %add3.i593, 18446744073709551615
  %add.i622 = add nuw nsw i128 %shr.i618, %conv2.i623
  %add3.i624 = add nuw nsw i128 %add.i622, %conv1.i621
  %shr.i626 = lshr i128 %add3.i624, 64
  %conv1.i629 = zext nneg i64 %add32 to i128
  %conv2.i631 = zext i64 %add38 to i128
  %add.i630 = add nuw nsw i128 %conv1.i629, %conv2.i631
  %add3.i632 = add nuw nsw i128 %add.i630, %shr.i626
  %shr.i634 = lshr i128 %add3.i632, 64
  %conv5.i635 = trunc nuw nsw i128 %shr.i634 to i64
  %conv.i636 = and i128 %add3.i600, 18446744073709551615
  %11 = trunc i128 %add3.i600 to i64
  %conv2.i638 = mul i64 %11, -2866531139136965327
  %conv.i641 = zext i64 %conv2.i638 to i128
  %mul.i642 = mul nuw i128 %conv.i641, 18446744073709551615
  %shr.i644 = lshr i128 %mul.i642, 64
  %conv3.i645 = trunc nuw i128 %shr.i644 to i64
  %mul.i657 = mul nuw i128 %conv.i641, 18446744069414583343
  %shr.i659 = lshr i128 %mul.i657, 64
  %conv2.i663 = and i128 %mul.i642, 18446744073709551615
  %add3.i664 = add nuw nsw i128 %shr.i659, %conv2.i663
  %shr.i666 = lshr i128 %add3.i664, 64
  %add.i670 = add nuw nsw i128 %conv2.i663, %shr.i644
  %add3.i672 = add nuw nsw i128 %add.i670, %shr.i666
  %shr.i674 = lshr i128 %add3.i672, 64
  %add3.i680 = add nuw nsw i128 %add.i670, %shr.i674
  %shr.i682 = lshr i128 %add3.i680, 64
  %conv5.i683 = trunc nuw nsw i128 %shr.i682 to i64
  %add40 = add nuw i64 %conv5.i683, %conv3.i645
  %conv2.i686 = and i128 %mul.i657, 18446744073709551615
  %add3.i687 = add nuw nsw i128 %conv2.i686, %conv.i636
  %shr.i689 = lshr i128 %add3.i687, 64
  %conv1.i692 = and i128 %add3.i608, 18446744073709551615
  %add.i693 = add nuw nsw i128 %shr.i689, %conv1.i692
  %conv2.i694 = and i128 %add3.i664, 18446744073709551615
  %add3.i695 = add nuw nsw i128 %add.i693, %conv2.i694
  %conv4.i696 = trunc i128 %add3.i695 to i64
  %shr.i697 = lshr i128 %add3.i695, 64
  %conv1.i700 = and i128 %add3.i616, 18446744073709551615
  %add.i701 = add nuw nsw i128 %shr.i697, %conv1.i700
  %conv2.i702 = and i128 %add3.i672, 18446744073709551615
  %add3.i703 = add nuw nsw i128 %add.i701, %conv2.i702
  %conv4.i704 = trunc i128 %add3.i703 to i64
  %shr.i705 = lshr i128 %add3.i703, 64
  %conv1.i708 = and i128 %add3.i624, 18446744073709551615
  %add.i709 = add nuw nsw i128 %shr.i705, %conv1.i708
  %conv2.i710 = and i128 %add3.i680, 18446744073709551615
  %add3.i711 = add nuw nsw i128 %add.i709, %conv2.i710
  %conv4.i712 = trunc i128 %add3.i711 to i64
  %shr.i713 = lshr i128 %add3.i711, 64
  %conv1.i716 = and i128 %add3.i632, 18446744073709551615
  %add.i717 = add nuw nsw i128 %shr.i713, %conv1.i716
  %conv2.i718 = zext i64 %add40 to i128
  %add3.i719 = add nuw nsw i128 %add.i717, %conv2.i718
  %conv4.i720 = trunc i128 %add3.i719 to i64
  %shr.i721 = lshr i128 %add3.i719, 64
  %conv5.i722 = trunc nuw nsw i128 %shr.i721 to i64
  %add43 = add nuw nsw i64 %conv5.i722, %conv5.i635
  %conv.i723 = and i128 %add3.i695, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i723, -18446744069414583343
  %shr.i724 = lshr i128 %sub3.i, 64
  %conv4.i725 = trunc i128 %shr.i724 to i8
  %conv5.i726 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i725
  %conv.i727 = and i128 %add3.i703, 18446744073709551615
  %conv1.i728 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i727, -18446744073709551615
  %sub3.i729 = sub nsw i128 %.neg, %conv1.i728
  %shr.i730 = lshr i128 %sub3.i729, 64
  %conv4.i731 = trunc i128 %shr.i730 to i8
  %conv5.i732 = trunc i128 %sub3.i729 to i64
  %sub7.i733 = sub i8 0, %conv4.i731
  %conv.i734 = and i128 %add3.i711, 18446744073709551615
  %conv1.i735 = zext i8 %sub7.i733 to i128
  %.neg797 = add nsw i128 %conv.i734, -18446744073709551615
  %sub3.i736 = sub nsw i128 %.neg797, %conv1.i735
  %shr.i737 = lshr i128 %sub3.i736, 64
  %conv4.i738 = trunc i128 %shr.i737 to i8
  %conv5.i739 = trunc i128 %sub3.i736 to i64
  %sub7.i740 = sub i8 0, %conv4.i738
  %conv.i741 = and i128 %add3.i719, 18446744073709551615
  %conv1.i742 = zext i8 %sub7.i740 to i128
  %.neg798 = add nsw i128 %conv.i741, -18446744073709551615
  %sub3.i743 = sub nsw i128 %.neg798, %conv1.i742
  %shr.i744 = lshr i128 %sub3.i743, 64
  %conv4.i745 = trunc i128 %shr.i744 to i8
  %conv5.i746 = trunc i128 %sub3.i743 to i64
  %sub7.i747 = sub i8 0, %conv4.i745
  %conv.i748 = zext nneg i64 %add43 to i128
  %conv1.i749 = zext i8 %sub7.i747 to i128
  %sub3.i750 = sub nsw i128 %conv.i748, %conv1.i749
  %shr.i751 = lshr i128 %sub3.i750, 64
  %conv4.i752 = trunc i128 %shr.i751 to i8
  %tobool.i = icmp ne i8 %conv4.i752, 0
  %conv4.i755 = sext i1 %tobool.i to i64
  %12 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i755) #8, !srcloc !9
  %and5.i = and i64 %12, %conv4.i696
  %not.i = xor i64 %conv4.i755, -1
  %13 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %13, %conv5.i726
  %or.i = or i64 %and7.i, %and5.i
  %and5.i758 = and i64 %12, %conv4.i704
  %and7.i760 = and i64 %13, %conv5.i732
  %or.i761 = or i64 %and7.i760, %and5.i758
  %and5.i764 = and i64 %12, %conv4.i712
  %and7.i766 = and i64 %13, %conv5.i739
  %or.i767 = or i64 %and7.i766, %and5.i764
  %and5.i770 = and i64 %12, %conv4.i720
  %and7.i772 = and i64 %13, %conv5.i746
  %or.i773 = or i64 %and7.i772, %and5.i770
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i761, ptr %arrayidx45, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i767, ptr %arrayidx46, align 8, !tbaa !10
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i773, ptr %arrayidx47, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_square(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %3 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i = zext i64 %3 to i128
  %conv1.i = zext i64 %2 to i128
  %mul.i = mul nuw i128 %conv.i, %conv1.i
  %shr.i = lshr i128 %mul.i, 64
  %conv3.i = trunc nuw i128 %shr.i to i64
  %conv1.i83 = zext i64 %1 to i128
  %mul.i84 = mul nuw i128 %conv.i, %conv1.i83
  %shr.i86 = lshr i128 %mul.i84, 64
  %conv1.i89 = zext i64 %0 to i128
  %mul.i90 = mul nuw i128 %conv.i, %conv1.i89
  %shr.i92 = lshr i128 %mul.i90, 64
  %mul.i96 = mul nuw i128 %conv.i, %conv.i
  %shr.i98 = lshr i128 %mul.i96, 64
  %conv2.i101 = and i128 %mul.i90, 18446744073709551615
  %add3.i = add nuw nsw i128 %shr.i98, %conv2.i101
  %shr.i102 = lshr i128 %add3.i, 64
  %conv2.i105 = and i128 %mul.i84, 18446744073709551615
  %add.i = add nuw nsw i128 %conv2.i105, %shr.i92
  %add3.i106 = add nuw nsw i128 %add.i, %shr.i102
  %shr.i108 = lshr i128 %add3.i106, 64
  %conv2.i113 = and i128 %mul.i, 18446744073709551615
  %add.i112 = add nuw nsw i128 %conv2.i113, %shr.i86
  %add3.i114 = add nuw nsw i128 %add.i112, %shr.i108
  %shr.i116 = lshr i128 %add3.i114, 64
  %conv5.i117 = trunc nuw nsw i128 %shr.i116 to i64
  %add = add nuw i64 %conv5.i117, %conv3.i
  %conv.i118 = and i128 %mul.i96, 18446744073709551615
  %4 = trunc i128 %mul.i96 to i64
  %conv2.i120 = mul i64 %4, -2866531139136965327
  %conv.i123 = zext i64 %conv2.i120 to i128
  %mul.i124 = mul nuw i128 %conv.i123, 18446744073709551615
  %shr.i126 = lshr i128 %mul.i124, 64
  %conv3.i127 = trunc nuw i128 %shr.i126 to i64
  %mul.i139 = mul nuw i128 %conv.i123, 18446744069414583343
  %shr.i141 = lshr i128 %mul.i139, 64
  %conv2.i145 = and i128 %mul.i124, 18446744073709551615
  %add3.i146 = add nuw nsw i128 %shr.i141, %conv2.i145
  %shr.i148 = lshr i128 %add3.i146, 64
  %add.i152 = add nuw nsw i128 %conv2.i145, %shr.i126
  %add3.i154 = add nuw nsw i128 %add.i152, %shr.i148
  %shr.i156 = lshr i128 %add3.i154, 64
  %add3.i162 = add nuw nsw i128 %add.i152, %shr.i156
  %shr.i164 = lshr i128 %add3.i162, 64
  %conv5.i165 = trunc nuw nsw i128 %shr.i164 to i64
  %add9 = add nuw i64 %conv5.i165, %conv3.i127
  %conv2.i168 = and i128 %mul.i139, 18446744073709551615
  %add3.i169 = add nuw nsw i128 %conv2.i168, %conv.i118
  %shr.i171 = lshr i128 %add3.i169, 64
  %conv1.i174 = and i128 %add3.i, 18446744073709551615
  %add.i175 = add nuw nsw i128 %shr.i171, %conv1.i174
  %conv2.i176 = and i128 %add3.i146, 18446744073709551615
  %add3.i177 = add nuw nsw i128 %add.i175, %conv2.i176
  %shr.i179 = lshr i128 %add3.i177, 64
  %conv1.i182 = and i128 %add3.i106, 18446744073709551615
  %add.i183 = add nuw nsw i128 %shr.i179, %conv1.i182
  %conv2.i184 = and i128 %add3.i154, 18446744073709551615
  %add3.i185 = add nuw nsw i128 %add.i183, %conv2.i184
  %shr.i187 = lshr i128 %add3.i185, 64
  %conv1.i190 = and i128 %add3.i114, 18446744073709551615
  %add.i191 = add nuw nsw i128 %shr.i187, %conv1.i190
  %conv2.i192 = and i128 %add3.i162, 18446744073709551615
  %add3.i193 = add nuw nsw i128 %add.i191, %conv2.i192
  %shr.i195 = lshr i128 %add3.i193, 64
  %conv1.i198 = zext i64 %add to i128
  %add.i199 = add nuw nsw i128 %shr.i195, %conv1.i198
  %conv2.i200 = zext i64 %add9 to i128
  %add3.i201 = add nuw nsw i128 %add.i199, %conv2.i200
  %shr.i203 = lshr i128 %add3.i201, 64
  %mul.i207 = mul nuw i128 %conv1.i, %conv1.i89
  %shr.i209 = lshr i128 %mul.i207, 64
  %conv3.i210 = trunc nuw i128 %shr.i209 to i64
  %mul.i213 = mul nuw i128 %conv1.i83, %conv1.i89
  %shr.i215 = lshr i128 %mul.i213, 64
  %mul.i219 = mul nuw i128 %conv1.i89, %conv1.i89
  %shr.i221 = lshr i128 %mul.i219, 64
  %conv2.i231 = and i128 %mul.i219, 18446744073709551615
  %add3.i232 = add nuw nsw i128 %shr.i92, %conv2.i231
  %shr.i234 = lshr i128 %add3.i232, 64
  %conv2.i239 = and i128 %mul.i213, 18446744073709551615
  %add.i238 = add nuw nsw i128 %conv2.i239, %shr.i221
  %add3.i240 = add nuw nsw i128 %add.i238, %shr.i234
  %shr.i242 = lshr i128 %add3.i240, 64
  %conv2.i247 = and i128 %mul.i207, 18446744073709551615
  %add.i246 = add nuw nsw i128 %conv2.i247, %shr.i215
  %add3.i248 = add nuw nsw i128 %add.i246, %shr.i242
  %shr.i250 = lshr i128 %add3.i248, 64
  %conv5.i251 = trunc nuw nsw i128 %shr.i250 to i64
  %add15 = add nuw i64 %conv5.i251, %conv3.i210
  %conv1.i252 = and i128 %add3.i177, 18446744073709551615
  %add3.i255 = add nuw nsw i128 %conv1.i252, %conv2.i101
  %shr.i257 = lshr i128 %add3.i255, 64
  %conv1.i260 = and i128 %add3.i185, 18446744073709551615
  %conv2.i262 = and i128 %add3.i232, 18446744073709551615
  %add.i261 = add nuw nsw i128 %shr.i257, %conv2.i262
  %add3.i263 = add nuw nsw i128 %add.i261, %conv1.i260
  %shr.i265 = lshr i128 %add3.i263, 64
  %conv1.i268 = and i128 %add3.i193, 18446744073709551615
  %conv2.i270 = and i128 %add3.i240, 18446744073709551615
  %add.i269 = add nuw nsw i128 %shr.i265, %conv2.i270
  %add3.i271 = add nuw nsw i128 %add.i269, %conv1.i268
  %shr.i273 = lshr i128 %add3.i271, 64
  %conv1.i276 = and i128 %add3.i201, 18446744073709551615
  %conv2.i278 = and i128 %add3.i248, 18446744073709551615
  %add.i277 = add nuw nsw i128 %shr.i273, %conv2.i278
  %add3.i279 = add nuw nsw i128 %add.i277, %conv1.i276
  %shr.i281 = lshr i128 %add3.i279, 64
  %conv2.i286 = zext i64 %add15 to i128
  %add.i285 = add nuw nsw i128 %shr.i203, %conv2.i286
  %add3.i287 = add nuw nsw i128 %add.i285, %shr.i281
  %shr.i289 = lshr i128 %add3.i287, 64
  %conv5.i290 = trunc nuw nsw i128 %shr.i289 to i64
  %conv.i291 = and i128 %add3.i255, 18446744073709551615
  %5 = trunc i128 %add3.i255 to i64
  %conv2.i293 = mul i64 %5, -2866531139136965327
  %conv.i296 = zext i64 %conv2.i293 to i128
  %mul.i297 = mul nuw i128 %conv.i296, 18446744073709551615
  %shr.i299 = lshr i128 %mul.i297, 64
  %conv3.i300 = trunc nuw i128 %shr.i299 to i64
  %mul.i312 = mul nuw i128 %conv.i296, 18446744069414583343
  %shr.i314 = lshr i128 %mul.i312, 64
  %conv2.i318 = and i128 %mul.i297, 18446744073709551615
  %add3.i319 = add nuw nsw i128 %shr.i314, %conv2.i318
  %shr.i321 = lshr i128 %add3.i319, 64
  %add.i325 = add nuw nsw i128 %conv2.i318, %shr.i299
  %add3.i327 = add nuw nsw i128 %add.i325, %shr.i321
  %shr.i329 = lshr i128 %add3.i327, 64
  %add3.i335 = add nuw nsw i128 %add.i325, %shr.i329
  %shr.i337 = lshr i128 %add3.i335, 64
  %conv5.i338 = trunc nuw nsw i128 %shr.i337 to i64
  %add18 = add nuw i64 %conv5.i338, %conv3.i300
  %conv2.i341 = and i128 %mul.i312, 18446744073709551615
  %add3.i342 = add nuw nsw i128 %conv2.i341, %conv.i291
  %shr.i344 = lshr i128 %add3.i342, 64
  %conv1.i347 = and i128 %add3.i263, 18446744073709551615
  %add.i348 = add nuw nsw i128 %shr.i344, %conv1.i347
  %conv2.i349 = and i128 %add3.i319, 18446744073709551615
  %add3.i350 = add nuw nsw i128 %add.i348, %conv2.i349
  %shr.i352 = lshr i128 %add3.i350, 64
  %conv1.i355 = and i128 %add3.i271, 18446744073709551615
  %add.i356 = add nuw nsw i128 %shr.i352, %conv1.i355
  %conv2.i357 = and i128 %add3.i327, 18446744073709551615
  %add3.i358 = add nuw nsw i128 %add.i356, %conv2.i357
  %shr.i360 = lshr i128 %add3.i358, 64
  %conv1.i363 = and i128 %add3.i279, 18446744073709551615
  %add.i364 = add nuw nsw i128 %shr.i360, %conv1.i363
  %conv2.i365 = and i128 %add3.i335, 18446744073709551615
  %add3.i366 = add nuw nsw i128 %add.i364, %conv2.i365
  %shr.i368 = lshr i128 %add3.i366, 64
  %conv1.i371 = and i128 %add3.i287, 18446744073709551615
  %add.i372 = add nuw nsw i128 %shr.i368, %conv1.i371
  %conv2.i373 = zext i64 %add18 to i128
  %add3.i374 = add nuw nsw i128 %add.i372, %conv2.i373
  %shr.i376 = lshr i128 %add3.i374, 64
  %conv5.i377 = trunc nuw nsw i128 %shr.i376 to i64
  %add21 = add nuw nsw i64 %conv5.i377, %conv5.i290
  %mul.i380 = mul nuw i128 %conv1.i, %conv1.i83
  %shr.i382 = lshr i128 %mul.i380, 64
  %conv3.i383 = trunc nuw i128 %shr.i382 to i64
  %mul.i386 = mul nuw i128 %conv1.i83, %conv1.i83
  %shr.i388 = lshr i128 %mul.i386, 64
  %add3.i405 = add nuw nsw i128 %shr.i86, %conv2.i239
  %shr.i407 = lshr i128 %add3.i405, 64
  %conv2.i412 = and i128 %mul.i386, 18446744073709551615
  %add.i411 = add nuw nsw i128 %conv2.i412, %shr.i215
  %add3.i413 = add nuw nsw i128 %add.i411, %shr.i407
  %shr.i415 = lshr i128 %add3.i413, 64
  %conv2.i420 = and i128 %mul.i380, 18446744073709551615
  %add.i419 = add nuw nsw i128 %conv2.i420, %shr.i388
  %add3.i421 = add nuw nsw i128 %add.i419, %shr.i415
  %shr.i423 = lshr i128 %add3.i421, 64
  %conv5.i424 = trunc nuw nsw i128 %shr.i423 to i64
  %add27 = add nuw i64 %conv5.i424, %conv3.i383
  %conv1.i425 = and i128 %add3.i350, 18446744073709551615
  %add3.i428 = add nuw nsw i128 %conv1.i425, %conv2.i105
  %shr.i430 = lshr i128 %add3.i428, 64
  %conv1.i433 = and i128 %add3.i358, 18446744073709551615
  %conv2.i435 = and i128 %add3.i405, 18446744073709551615
  %add.i434 = add nuw nsw i128 %shr.i430, %conv2.i435
  %add3.i436 = add nuw nsw i128 %add.i434, %conv1.i433
  %shr.i438 = lshr i128 %add3.i436, 64
  %conv1.i441 = and i128 %add3.i366, 18446744073709551615
  %conv2.i443 = and i128 %add3.i413, 18446744073709551615
  %add.i442 = add nuw nsw i128 %shr.i438, %conv2.i443
  %add3.i444 = add nuw nsw i128 %add.i442, %conv1.i441
  %shr.i446 = lshr i128 %add3.i444, 64
  %conv1.i449 = and i128 %add3.i374, 18446744073709551615
  %conv2.i451 = and i128 %add3.i421, 18446744073709551615
  %add.i450 = add nuw nsw i128 %shr.i446, %conv2.i451
  %add3.i452 = add nuw nsw i128 %add.i450, %conv1.i449
  %shr.i454 = lshr i128 %add3.i452, 64
  %conv1.i457 = zext nneg i64 %add21 to i128
  %conv2.i459 = zext i64 %add27 to i128
  %add.i458 = add nuw nsw i128 %conv1.i457, %conv2.i459
  %add3.i460 = add nuw nsw i128 %add.i458, %shr.i454
  %shr.i462 = lshr i128 %add3.i460, 64
  %conv5.i463 = trunc nuw nsw i128 %shr.i462 to i64
  %conv.i464 = and i128 %add3.i428, 18446744073709551615
  %6 = trunc i128 %add3.i428 to i64
  %conv2.i466 = mul i64 %6, -2866531139136965327
  %conv.i469 = zext i64 %conv2.i466 to i128
  %mul.i470 = mul nuw i128 %conv.i469, 18446744073709551615
  %shr.i472 = lshr i128 %mul.i470, 64
  %conv3.i473 = trunc nuw i128 %shr.i472 to i64
  %mul.i485 = mul nuw i128 %conv.i469, 18446744069414583343
  %shr.i487 = lshr i128 %mul.i485, 64
  %conv2.i491 = and i128 %mul.i470, 18446744073709551615
  %add3.i492 = add nuw nsw i128 %shr.i487, %conv2.i491
  %shr.i494 = lshr i128 %add3.i492, 64
  %add.i498 = add nuw nsw i128 %conv2.i491, %shr.i472
  %add3.i500 = add nuw nsw i128 %add.i498, %shr.i494
  %shr.i502 = lshr i128 %add3.i500, 64
  %add3.i508 = add nuw nsw i128 %add.i498, %shr.i502
  %shr.i510 = lshr i128 %add3.i508, 64
  %conv5.i511 = trunc nuw nsw i128 %shr.i510 to i64
  %add29 = add nuw i64 %conv5.i511, %conv3.i473
  %conv2.i514 = and i128 %mul.i485, 18446744073709551615
  %add3.i515 = add nuw nsw i128 %conv2.i514, %conv.i464
  %shr.i517 = lshr i128 %add3.i515, 64
  %conv1.i520 = and i128 %add3.i436, 18446744073709551615
  %add.i521 = add nuw nsw i128 %shr.i517, %conv1.i520
  %conv2.i522 = and i128 %add3.i492, 18446744073709551615
  %add3.i523 = add nuw nsw i128 %add.i521, %conv2.i522
  %shr.i525 = lshr i128 %add3.i523, 64
  %conv1.i528 = and i128 %add3.i444, 18446744073709551615
  %add.i529 = add nuw nsw i128 %shr.i525, %conv1.i528
  %conv2.i530 = and i128 %add3.i500, 18446744073709551615
  %add3.i531 = add nuw nsw i128 %add.i529, %conv2.i530
  %shr.i533 = lshr i128 %add3.i531, 64
  %conv1.i536 = and i128 %add3.i452, 18446744073709551615
  %add.i537 = add nuw nsw i128 %shr.i533, %conv1.i536
  %conv2.i538 = and i128 %add3.i508, 18446744073709551615
  %add3.i539 = add nuw nsw i128 %add.i537, %conv2.i538
  %shr.i541 = lshr i128 %add3.i539, 64
  %conv1.i544 = and i128 %add3.i460, 18446744073709551615
  %add.i545 = add nuw nsw i128 %shr.i541, %conv1.i544
  %conv2.i546 = zext i64 %add29 to i128
  %add3.i547 = add nuw nsw i128 %add.i545, %conv2.i546
  %shr.i549 = lshr i128 %add3.i547, 64
  %conv5.i550 = trunc nuw nsw i128 %shr.i549 to i64
  %add32 = add nuw nsw i64 %conv5.i550, %conv5.i463
  %mul.i553 = mul nuw i128 %conv1.i, %conv1.i
  %shr.i555 = lshr i128 %mul.i553, 64
  %conv3.i556 = trunc nuw i128 %shr.i555 to i64
  %add3.i578 = add nuw nsw i128 %shr.i, %conv2.i247
  %shr.i580 = lshr i128 %add3.i578, 64
  %add.i584 = add nuw nsw i128 %conv2.i420, %shr.i209
  %add3.i586 = add nuw nsw i128 %add.i584, %shr.i580
  %shr.i588 = lshr i128 %add3.i586, 64
  %conv2.i593 = and i128 %mul.i553, 18446744073709551615
  %add.i592 = add nuw nsw i128 %conv2.i593, %shr.i382
  %add3.i594 = add nuw nsw i128 %add.i592, %shr.i588
  %shr.i596 = lshr i128 %add3.i594, 64
  %conv5.i597 = trunc nuw nsw i128 %shr.i596 to i64
  %add38 = add nuw i64 %conv5.i597, %conv3.i556
  %conv1.i598 = and i128 %add3.i523, 18446744073709551615
  %add3.i601 = add nuw nsw i128 %conv1.i598, %conv2.i113
  %shr.i603 = lshr i128 %add3.i601, 64
  %conv1.i606 = and i128 %add3.i531, 18446744073709551615
  %conv2.i608 = and i128 %add3.i578, 18446744073709551615
  %add.i607 = add nuw nsw i128 %shr.i603, %conv2.i608
  %add3.i609 = add nuw nsw i128 %add.i607, %conv1.i606
  %shr.i611 = lshr i128 %add3.i609, 64
  %conv1.i614 = and i128 %add3.i539, 18446744073709551615
  %conv2.i616 = and i128 %add3.i586, 18446744073709551615
  %add.i615 = add nuw nsw i128 %shr.i611, %conv2.i616
  %add3.i617 = add nuw nsw i128 %add.i615, %conv1.i614
  %shr.i619 = lshr i128 %add3.i617, 64
  %conv1.i622 = and i128 %add3.i547, 18446744073709551615
  %conv2.i624 = and i128 %add3.i594, 18446744073709551615
  %add.i623 = add nuw nsw i128 %shr.i619, %conv2.i624
  %add3.i625 = add nuw nsw i128 %add.i623, %conv1.i622
  %shr.i627 = lshr i128 %add3.i625, 64
  %conv1.i630 = zext nneg i64 %add32 to i128
  %conv2.i632 = zext i64 %add38 to i128
  %add.i631 = add nuw nsw i128 %conv1.i630, %conv2.i632
  %add3.i633 = add nuw nsw i128 %add.i631, %shr.i627
  %shr.i635 = lshr i128 %add3.i633, 64
  %conv5.i636 = trunc nuw nsw i128 %shr.i635 to i64
  %conv.i637 = and i128 %add3.i601, 18446744073709551615
  %7 = trunc i128 %add3.i601 to i64
  %conv2.i639 = mul i64 %7, -2866531139136965327
  %conv.i642 = zext i64 %conv2.i639 to i128
  %mul.i643 = mul nuw i128 %conv.i642, 18446744073709551615
  %shr.i645 = lshr i128 %mul.i643, 64
  %conv3.i646 = trunc nuw i128 %shr.i645 to i64
  %mul.i658 = mul nuw i128 %conv.i642, 18446744069414583343
  %shr.i660 = lshr i128 %mul.i658, 64
  %conv2.i664 = and i128 %mul.i643, 18446744073709551615
  %add3.i665 = add nuw nsw i128 %shr.i660, %conv2.i664
  %shr.i667 = lshr i128 %add3.i665, 64
  %add.i671 = add nuw nsw i128 %conv2.i664, %shr.i645
  %add3.i673 = add nuw nsw i128 %add.i671, %shr.i667
  %shr.i675 = lshr i128 %add3.i673, 64
  %add3.i681 = add nuw nsw i128 %add.i671, %shr.i675
  %shr.i683 = lshr i128 %add3.i681, 64
  %conv5.i684 = trunc nuw nsw i128 %shr.i683 to i64
  %add40 = add nuw i64 %conv5.i684, %conv3.i646
  %conv2.i687 = and i128 %mul.i658, 18446744073709551615
  %add3.i688 = add nuw nsw i128 %conv2.i687, %conv.i637
  %shr.i690 = lshr i128 %add3.i688, 64
  %conv1.i693 = and i128 %add3.i609, 18446744073709551615
  %add.i694 = add nuw nsw i128 %shr.i690, %conv1.i693
  %conv2.i695 = and i128 %add3.i665, 18446744073709551615
  %add3.i696 = add nuw nsw i128 %add.i694, %conv2.i695
  %conv4.i697 = trunc i128 %add3.i696 to i64
  %shr.i698 = lshr i128 %add3.i696, 64
  %conv1.i701 = and i128 %add3.i617, 18446744073709551615
  %add.i702 = add nuw nsw i128 %shr.i698, %conv1.i701
  %conv2.i703 = and i128 %add3.i673, 18446744073709551615
  %add3.i704 = add nuw nsw i128 %add.i702, %conv2.i703
  %conv4.i705 = trunc i128 %add3.i704 to i64
  %shr.i706 = lshr i128 %add3.i704, 64
  %conv1.i709 = and i128 %add3.i625, 18446744073709551615
  %add.i710 = add nuw nsw i128 %shr.i706, %conv1.i709
  %conv2.i711 = and i128 %add3.i681, 18446744073709551615
  %add3.i712 = add nuw nsw i128 %add.i710, %conv2.i711
  %conv4.i713 = trunc i128 %add3.i712 to i64
  %shr.i714 = lshr i128 %add3.i712, 64
  %conv1.i717 = and i128 %add3.i633, 18446744073709551615
  %add.i718 = add nuw nsw i128 %shr.i714, %conv1.i717
  %conv2.i719 = zext i64 %add40 to i128
  %add3.i720 = add nuw nsw i128 %add.i718, %conv2.i719
  %conv4.i721 = trunc i128 %add3.i720 to i64
  %shr.i722 = lshr i128 %add3.i720, 64
  %conv5.i723 = trunc nuw nsw i128 %shr.i722 to i64
  %add43 = add nuw nsw i64 %conv5.i723, %conv5.i636
  %conv.i724 = and i128 %add3.i696, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i724, -18446744069414583343
  %shr.i725 = lshr i128 %sub3.i, 64
  %conv4.i726 = trunc i128 %shr.i725 to i8
  %conv5.i727 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i726
  %conv.i728 = and i128 %add3.i704, 18446744073709551615
  %conv1.i729 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i728, -18446744073709551615
  %sub3.i730 = sub nsw i128 %.neg, %conv1.i729
  %shr.i731 = lshr i128 %sub3.i730, 64
  %conv4.i732 = trunc i128 %shr.i731 to i8
  %conv5.i733 = trunc i128 %sub3.i730 to i64
  %sub7.i734 = sub i8 0, %conv4.i732
  %conv.i735 = and i128 %add3.i712, 18446744073709551615
  %conv1.i736 = zext i8 %sub7.i734 to i128
  %.neg798 = add nsw i128 %conv.i735, -18446744073709551615
  %sub3.i737 = sub nsw i128 %.neg798, %conv1.i736
  %shr.i738 = lshr i128 %sub3.i737, 64
  %conv4.i739 = trunc i128 %shr.i738 to i8
  %conv5.i740 = trunc i128 %sub3.i737 to i64
  %sub7.i741 = sub i8 0, %conv4.i739
  %conv.i742 = and i128 %add3.i720, 18446744073709551615
  %conv1.i743 = zext i8 %sub7.i741 to i128
  %.neg799 = add nsw i128 %conv.i742, -18446744073709551615
  %sub3.i744 = sub nsw i128 %.neg799, %conv1.i743
  %shr.i745 = lshr i128 %sub3.i744, 64
  %conv4.i746 = trunc i128 %shr.i745 to i8
  %conv5.i747 = trunc i128 %sub3.i744 to i64
  %sub7.i748 = sub i8 0, %conv4.i746
  %conv.i749 = zext nneg i64 %add43 to i128
  %conv1.i750 = zext i8 %sub7.i748 to i128
  %sub3.i751 = sub nsw i128 %conv.i749, %conv1.i750
  %shr.i752 = lshr i128 %sub3.i751, 64
  %conv4.i753 = trunc i128 %shr.i752 to i8
  %tobool.i = icmp ne i8 %conv4.i753, 0
  %conv4.i756 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i756) #8, !srcloc !9
  %and5.i = and i64 %8, %conv4.i697
  %not.i = xor i64 %conv4.i756, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %9, %conv5.i727
  %or.i = or i64 %and7.i, %and5.i
  %and5.i759 = and i64 %8, %conv4.i705
  %and7.i761 = and i64 %9, %conv5.i733
  %or.i762 = or i64 %and7.i761, %and5.i759
  %and5.i765 = and i64 %8, %conv4.i713
  %and7.i767 = and i64 %9, %conv5.i740
  %or.i768 = or i64 %and7.i767, %and5.i765
  %and5.i771 = and i64 %8, %conv4.i721
  %and7.i773 = and i64 %9, %conv5.i747
  %or.i774 = or i64 %and7.i773, %and5.i771
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i762, ptr %arrayidx45, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i768, ptr %arrayidx46, align 8, !tbaa !10
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i774, ptr %arrayidx47, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_add(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %1 = load i64, ptr %arg2, align 8, !tbaa !10
  %add.narrowed = add i64 %1, %0
  %add.narrowed.overflow = icmp ult i64 %add.narrowed, %0
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %3 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv.i = zext i1 %add.narrowed.overflow to i128
  %conv1.i21 = zext i64 %2 to i128
  %add.i = add nuw nsw i128 %conv.i, %conv1.i21
  %conv2.i22 = zext i64 %3 to i128
  %add3.i23 = add nuw nsw i128 %add.i, %conv2.i22
  %conv4.i24 = trunc i128 %add3.i23 to i64
  %shr.i25 = lshr i128 %add3.i23, 64
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %4 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %5 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv1.i28 = zext i64 %4 to i128
  %conv2.i30 = zext i64 %5 to i128
  %add.i29 = add nuw nsw i128 %conv2.i30, %conv1.i28
  %add3.i31 = add nuw nsw i128 %add.i29, %shr.i25
  %conv4.i32 = trunc i128 %add3.i31 to i64
  %shr.i33 = lshr i128 %add3.i31, 64
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %6 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %7 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %conv1.i36 = zext i64 %6 to i128
  %conv2.i38 = zext i64 %7 to i128
  %add.i37 = add nuw nsw i128 %conv2.i38, %conv1.i36
  %add3.i39 = add nuw nsw i128 %add.i37, %shr.i33
  %conv4.i40 = trunc i128 %add3.i39 to i64
  %shr.i41 = lshr i128 %add3.i39, 64
  %conv.i43 = zext i64 %add.narrowed to i128
  %sub3.i = add nsw i128 %conv.i43, -18446744069414583343
  %shr.i44 = lshr i128 %sub3.i, 64
  %conv4.i45 = trunc i128 %shr.i44 to i8
  %conv5.i46 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i45
  %conv.i47 = and i128 %add3.i23, 18446744073709551615
  %conv1.i48 = zext i8 %sub7.i to i128
  %reass.sub = sub nsw i128 %conv.i47, %conv1.i48
  %sub3.i49 = add nsw i128 %reass.sub, -18446744073709551615
  %shr.i50 = lshr i128 %sub3.i49, 64
  %conv4.i51 = trunc i128 %shr.i50 to i8
  %conv5.i52 = trunc i128 %sub3.i49 to i64
  %sub7.i53 = sub i8 0, %conv4.i51
  %conv.i54 = and i128 %add3.i31, 18446744073709551615
  %conv1.i55 = zext i8 %sub7.i53 to i128
  %.neg101 = add nsw i128 %conv.i54, -18446744073709551615
  %sub3.i56 = sub nsw i128 %.neg101, %conv1.i55
  %shr.i57 = lshr i128 %sub3.i56, 64
  %conv4.i58 = trunc i128 %shr.i57 to i8
  %conv5.i59 = trunc i128 %sub3.i56 to i64
  %sub7.i60 = sub i8 0, %conv4.i58
  %conv.i61 = and i128 %add3.i39, 18446744073709551615
  %conv1.i62 = zext i8 %sub7.i60 to i128
  %.neg102 = add nsw i128 %conv.i61, -18446744073709551615
  %sub3.i63 = sub nsw i128 %.neg102, %conv1.i62
  %shr.i64 = lshr i128 %sub3.i63, 64
  %conv4.i65 = trunc i128 %shr.i64 to i8
  %conv5.i66 = trunc i128 %sub3.i63 to i64
  %sub7.i67 = sub i8 0, %conv4.i65
  %conv1.i69 = zext i8 %sub7.i67 to i128
  %sub3.i70 = sub nsw i128 %shr.i41, %conv1.i69
  %shr.i71 = lshr i128 %sub3.i70, 64
  %conv4.i72 = trunc i128 %shr.i71 to i8
  %tobool.i = icmp ne i8 %conv4.i72, 0
  %conv4.i75 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i75) #8, !srcloc !9
  %and5.i = and i64 %8, %add.narrowed
  %not.i = xor i64 %conv4.i75, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %9, %conv5.i46
  %or.i = or i64 %and7.i, %and5.i
  %and5.i78 = and i64 %8, %conv4.i24
  %and7.i80 = and i64 %9, %conv5.i52
  %or.i81 = or i64 %and7.i80, %and5.i78
  %and5.i84 = and i64 %8, %conv4.i32
  %and7.i86 = and i64 %9, %conv5.i59
  %or.i87 = or i64 %and7.i86, %and5.i84
  %and5.i90 = and i64 %8, %conv4.i40
  %and7.i92 = and i64 %9, %conv5.i66
  %or.i93 = or i64 %and7.i92, %and5.i90
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i81, ptr %arrayidx9, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i87, ptr %arrayidx10, align 8, !tbaa !10
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i93, ptr %arrayidx11, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_sub(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %1 = load i64, ptr %arg2, align 8, !tbaa !10
  %conv.i = zext i64 %0 to i128
  %conv2.i = zext i64 %1 to i128
  %sub3.i = sub nsw i128 %conv.i, %conv2.i
  %shr.i = lshr i128 %sub3.i, 64
  %conv4.i = trunc i128 %shr.i to i8
  %sub7.i = sub i8 0, %conv4.i
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %3 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv.i21 = zext i64 %2 to i128
  %conv1.i = zext i8 %sub7.i to i128
  %conv2.i22 = zext i64 %3 to i128
  %4 = add nuw nsw i128 %conv2.i22, %conv1.i
  %sub3.i23 = sub nsw i128 %conv.i21, %4
  %shr.i24 = lshr i128 %sub3.i23, 64
  %conv4.i25 = trunc i128 %shr.i24 to i8
  %sub7.i27 = sub i8 0, %conv4.i25
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %5 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %6 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv.i28 = zext i64 %5 to i128
  %conv1.i29 = zext i8 %sub7.i27 to i128
  %conv2.i30 = zext i64 %6 to i128
  %7 = add nuw nsw i128 %conv2.i30, %conv1.i29
  %sub3.i31 = sub nsw i128 %conv.i28, %7
  %shr.i32 = lshr i128 %sub3.i31, 64
  %conv4.i33 = trunc i128 %shr.i32 to i8
  %sub7.i35 = sub i8 0, %conv4.i33
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %8 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %9 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %conv.i36 = zext i64 %8 to i128
  %conv1.i37 = zext i8 %sub7.i35 to i128
  %conv2.i38 = zext i64 %9 to i128
  %10 = add nuw nsw i128 %conv2.i38, %conv1.i37
  %sub3.i39 = sub nsw i128 %conv.i36, %10
  %11 = and i128 %sub3.i39, 4703919738795935662080
  %tobool.i = icmp ne i128 %11, 0
  %conv4.i44 = sext i1 %tobool.i to i64
  %12 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i44) #8, !srcloc !9
  %not.i = xor i64 %conv4.i44, -1
  %13 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and = and i64 %12, -4294968273
  %conv1.i45 = and i128 %sub3.i, 18446744073709551615
  %conv2.i46 = zext i64 %and to i128
  %add3.i = add nuw nsw i128 %conv1.i45, %conv2.i46
  %conv4.i47 = trunc i128 %add3.i to i64
  %shr.i48 = lshr i128 %add3.i, 64
  %conv1.i51 = and i128 %sub3.i23, 18446744073709551615
  %conv2.i52 = zext i64 %12 to i128
  %add.i = add nuw nsw i128 %conv1.i51, %conv2.i52
  %add3.i53 = add nuw nsw i128 %add.i, %shr.i48
  %conv4.i54 = trunc i128 %add3.i53 to i64
  %shr.i55 = lshr i128 %add3.i53, 64
  %conv1.i58 = and i128 %sub3.i31, 18446744073709551615
  %add.i59 = add nuw nsw i128 %conv1.i58, %conv2.i52
  %add3.i61 = add nuw nsw i128 %add.i59, %shr.i55
  %conv4.i62 = trunc i128 %add3.i61 to i64
  %shr.i63 = lshr i128 %add3.i61, 64
  %add.i67 = add nsw i128 %shr.i63, %sub3.i39
  %14 = trunc i128 %add.i67 to i64
  %conv4.i70 = add i64 %12, %14
  store i64 %conv4.i47, ptr %out1, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i54, ptr %arrayidx9, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i62, ptr %arrayidx10, align 8, !tbaa !10
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i70, ptr %arrayidx11, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_opp(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv2.i = zext i64 %0 to i128
  %sub3.i = sub nsw i128 0, %conv2.i
  %shr.i = lshr i128 %sub3.i, 64
  %conv4.i = trunc i128 %shr.i to i8
  %sub7.i = sub i8 0, %conv4.i
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv1.i = zext i8 %sub7.i to i128
  %conv2.i14 = zext i64 %1 to i128
  %2 = add nuw nsw i128 %conv2.i14, %conv1.i
  %sub3.i15 = sub nsw i128 0, %2
  %shr.i16 = lshr i128 %sub3.i15, 64
  %conv4.i17 = trunc i128 %shr.i16 to i8
  %sub7.i19 = sub i8 0, %conv4.i17
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %3 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %conv1.i20 = zext i8 %sub7.i19 to i128
  %conv2.i21 = zext i64 %3 to i128
  %4 = add nuw nsw i128 %conv2.i21, %conv1.i20
  %sub3.i22 = sub nsw i128 0, %4
  %shr.i23 = lshr i128 %sub3.i22, 64
  %conv4.i24 = trunc i128 %shr.i23 to i8
  %sub7.i26 = sub i8 0, %conv4.i24
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %5 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv1.i27 = zext i8 %sub7.i26 to i128
  %conv2.i28 = zext i64 %5 to i128
  %6 = add nuw nsw i128 %conv1.i27, %conv2.i28
  %sub3.i29 = sub nsw i128 0, %6
  %7 = and i128 %sub3.i29, 4703919738795935662080
  %tobool.i = icmp ne i128 %7, 0
  %conv4.i34 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i34) #8, !srcloc !9
  %not.i = xor i64 %conv4.i34, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and = and i64 %8, -4294968273
  %conv1.i35 = and i128 %sub3.i, 18446744073709551615
  %conv2.i36 = zext i64 %and to i128
  %add3.i = add nuw nsw i128 %conv1.i35, %conv2.i36
  %conv4.i37 = trunc i128 %add3.i to i64
  %shr.i38 = lshr i128 %add3.i, 64
  %conv1.i40 = and i128 %sub3.i15, 18446744073709551615
  %conv2.i41 = zext i64 %8 to i128
  %add.i = add nuw nsw i128 %conv1.i40, %conv2.i41
  %add3.i42 = add nuw nsw i128 %add.i, %shr.i38
  %conv4.i43 = trunc i128 %add3.i42 to i64
  %shr.i44 = lshr i128 %add3.i42, 64
  %conv1.i47 = and i128 %sub3.i22, 18446744073709551615
  %add.i48 = add nuw nsw i128 %conv1.i47, %conv2.i41
  %add3.i50 = add nuw nsw i128 %add.i48, %shr.i44
  %conv4.i51 = trunc i128 %add3.i50 to i64
  %shr.i52 = lshr i128 %add3.i50, 64
  %add.i56 = sub nsw i128 %shr.i52, %6
  %10 = trunc i128 %add.i56 to i64
  %conv4.i59 = add i64 %8, %10
  store i64 %conv4.i37, ptr %out1, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i43, ptr %arrayidx5, align 8, !tbaa !10
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i51, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i59, ptr %arrayidx7, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_from_montgomery(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i = zext i64 %0 to i128
  %mul.i = mul i64 %0, -2866531139136965327
  %conv.i31 = zext i64 %mul.i to i128
  %mul.i32 = mul nuw i128 %conv.i31, 18446744073709551615
  %shr.i34 = lshr i128 %mul.i32, 64
  %conv3.i35 = trunc nuw i128 %shr.i34 to i64
  %mul.i47 = mul nuw i128 %conv.i31, 18446744069414583343
  %shr.i49 = lshr i128 %mul.i47, 64
  %conv2.i51 = and i128 %mul.i32, 18446744073709551615
  %add3.i = add nuw nsw i128 %shr.i49, %conv2.i51
  %shr.i52 = lshr i128 %add3.i, 64
  %add.i = add nuw nsw i128 %conv2.i51, %shr.i34
  %add3.i56 = add nuw nsw i128 %add.i, %shr.i52
  %shr.i58 = lshr i128 %add3.i56, 64
  %add3.i64 = add nuw nsw i128 %add.i, %shr.i58
  %shr.i66 = lshr i128 %add3.i64, 64
  %conv5.i67 = trunc nuw nsw i128 %shr.i66 to i64
  %conv2.i70 = and i128 %mul.i47, 18446744073709551615
  %add3.i71 = add nuw nsw i128 %conv2.i70, %conv.i
  %shr.i73 = lshr i128 %add3.i71, 64
  %conv2.i77 = and i128 %add3.i, 18446744073709551615
  %add3.i78 = add nuw nsw i128 %shr.i73, %conv2.i77
  %shr.i80 = lshr i128 %add3.i78, 64
  %conv2.i84 = and i128 %add3.i56, 18446744073709551615
  %add3.i85 = add nuw nsw i128 %conv2.i84, %shr.i80
  %shr.i87 = lshr i128 %add3.i85, 64
  %conv2.i91 = and i128 %add3.i64, 18446744073709551615
  %add3.i92 = add nuw nsw i128 %conv2.i91, %shr.i87
  %shr.i94 = lshr i128 %add3.i92, 64
  %add = add nuw i64 %conv5.i67, %conv3.i35
  %conv2.i98 = zext i64 %add to i128
  %add3.i99 = add nuw nsw i128 %shr.i94, %conv2.i98
  %shr.i101 = lshr i128 %add3.i99, 64
  %conv5.i102 = trunc nuw nsw i128 %shr.i101 to i64
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv1.i103 = and i128 %add3.i78, 18446744073709551615
  %conv2.i105 = zext i64 %1 to i128
  %add3.i106 = add nuw nsw i128 %conv1.i103, %conv2.i105
  %shr.i108 = lshr i128 %add3.i106, 64
  %conv1.i111 = and i128 %add3.i85, 18446744073709551615
  %add.i112 = add nuw nsw i128 %conv1.i111, %shr.i108
  %shr.i115 = lshr i128 %add.i112, 64
  %conv1.i118 = and i128 %add3.i92, 18446744073709551615
  %add.i119 = add nuw nsw i128 %conv1.i118, %shr.i115
  %shr.i122 = lshr i128 %add.i119, 64
  %conv1.i125 = and i128 %add3.i99, 18446744073709551615
  %add.i126 = add nuw nsw i128 %conv1.i125, %shr.i122
  %shr.i129 = lshr i128 %add.i126, 64
  %conv5.i130 = trunc nuw nsw i128 %shr.i129 to i64
  %conv.i131 = and i128 %add3.i106, 18446744073709551615
  %2 = trunc i128 %add3.i106 to i64
  %conv2.i133 = mul i64 %2, -2866531139136965327
  %conv.i136 = zext i64 %conv2.i133 to i128
  %mul.i137 = mul nuw i128 %conv.i136, 18446744073709551615
  %shr.i139 = lshr i128 %mul.i137, 64
  %conv3.i140 = trunc nuw i128 %shr.i139 to i64
  %mul.i152 = mul nuw i128 %conv.i136, 18446744069414583343
  %shr.i154 = lshr i128 %mul.i152, 64
  %conv2.i158 = and i128 %mul.i137, 18446744073709551615
  %add3.i159 = add nuw nsw i128 %shr.i154, %conv2.i158
  %shr.i161 = lshr i128 %add3.i159, 64
  %add.i165 = add nuw nsw i128 %conv2.i158, %shr.i139
  %add3.i167 = add nuw nsw i128 %add.i165, %shr.i161
  %shr.i169 = lshr i128 %add3.i167, 64
  %add3.i175 = add nuw nsw i128 %add.i165, %shr.i169
  %shr.i177 = lshr i128 %add3.i175, 64
  %conv5.i178 = trunc nuw nsw i128 %shr.i177 to i64
  %conv2.i181 = and i128 %mul.i152, 18446744073709551615
  %add3.i182 = add nuw nsw i128 %conv2.i181, %conv.i131
  %shr.i184 = lshr i128 %add3.i182, 64
  %conv1.i187 = and i128 %add.i112, 18446744073709551615
  %add.i188 = add nuw nsw i128 %shr.i184, %conv1.i187
  %conv2.i189 = and i128 %add3.i159, 18446744073709551615
  %add3.i190 = add nuw nsw i128 %add.i188, %conv2.i189
  %shr.i192 = lshr i128 %add3.i190, 64
  %conv1.i195 = and i128 %add.i119, 18446744073709551615
  %add.i196 = add nuw nsw i128 %shr.i192, %conv1.i195
  %conv2.i197 = and i128 %add3.i167, 18446744073709551615
  %add3.i198 = add nuw nsw i128 %add.i196, %conv2.i197
  %shr.i200 = lshr i128 %add3.i198, 64
  %conv1.i203 = and i128 %add.i126, 18446744073709551615
  %add.i204 = add nuw nsw i128 %shr.i200, %conv1.i203
  %conv2.i205 = and i128 %add3.i175, 18446744073709551615
  %add3.i206 = add nuw nsw i128 %add.i204, %conv2.i205
  %shr.i208 = lshr i128 %add3.i206, 64
  %add4 = add nuw nsw i64 %conv5.i130, %conv5.i102
  %add6 = add nuw i64 %conv5.i178, %conv3.i140
  %conv1.i211 = zext nneg i64 %add4 to i128
  %add.i212 = add nuw nsw i128 %shr.i208, %conv1.i211
  %conv2.i213 = zext i64 %add6 to i128
  %add3.i214 = add nuw nsw i128 %add.i212, %conv2.i213
  %shr.i216 = lshr i128 %add3.i214, 64
  %conv5.i217 = trunc nuw nsw i128 %shr.i216 to i64
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %3 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %conv1.i218 = and i128 %add3.i190, 18446744073709551615
  %conv2.i220 = zext i64 %3 to i128
  %add3.i221 = add nuw nsw i128 %conv1.i218, %conv2.i220
  %shr.i223 = lshr i128 %add3.i221, 64
  %conv1.i226 = and i128 %add3.i198, 18446744073709551615
  %add.i227 = add nuw nsw i128 %conv1.i226, %shr.i223
  %shr.i230 = lshr i128 %add.i227, 64
  %conv1.i233 = and i128 %add3.i206, 18446744073709551615
  %add.i234 = add nuw nsw i128 %conv1.i233, %shr.i230
  %shr.i237 = lshr i128 %add.i234, 64
  %conv1.i240 = and i128 %add3.i214, 18446744073709551615
  %add.i241 = add nuw nsw i128 %conv1.i240, %shr.i237
  %shr.i244 = lshr i128 %add.i241, 64
  %conv5.i245 = trunc nuw nsw i128 %shr.i244 to i64
  %conv.i246 = and i128 %add3.i221, 18446744073709551615
  %4 = trunc i128 %add3.i221 to i64
  %conv2.i248 = mul i64 %4, -2866531139136965327
  %conv.i251 = zext i64 %conv2.i248 to i128
  %mul.i252 = mul nuw i128 %conv.i251, 18446744073709551615
  %shr.i254 = lshr i128 %mul.i252, 64
  %conv3.i255 = trunc nuw i128 %shr.i254 to i64
  %mul.i267 = mul nuw i128 %conv.i251, 18446744069414583343
  %shr.i269 = lshr i128 %mul.i267, 64
  %conv2.i273 = and i128 %mul.i252, 18446744073709551615
  %add3.i274 = add nuw nsw i128 %shr.i269, %conv2.i273
  %shr.i276 = lshr i128 %add3.i274, 64
  %add.i280 = add nuw nsw i128 %conv2.i273, %shr.i254
  %add3.i282 = add nuw nsw i128 %add.i280, %shr.i276
  %shr.i284 = lshr i128 %add3.i282, 64
  %add3.i290 = add nuw nsw i128 %add.i280, %shr.i284
  %shr.i292 = lshr i128 %add3.i290, 64
  %conv5.i293 = trunc nuw nsw i128 %shr.i292 to i64
  %conv2.i296 = and i128 %mul.i267, 18446744073709551615
  %add3.i297 = add nuw nsw i128 %conv2.i296, %conv.i246
  %shr.i299 = lshr i128 %add3.i297, 64
  %conv1.i302 = and i128 %add.i227, 18446744073709551615
  %add.i303 = add nuw nsw i128 %shr.i299, %conv1.i302
  %conv2.i304 = and i128 %add3.i274, 18446744073709551615
  %add3.i305 = add nuw nsw i128 %add.i303, %conv2.i304
  %shr.i307 = lshr i128 %add3.i305, 64
  %conv1.i310 = and i128 %add.i234, 18446744073709551615
  %add.i311 = add nuw nsw i128 %shr.i307, %conv1.i310
  %conv2.i312 = and i128 %add3.i282, 18446744073709551615
  %add3.i313 = add nuw nsw i128 %add.i311, %conv2.i312
  %shr.i315 = lshr i128 %add3.i313, 64
  %conv1.i318 = and i128 %add.i241, 18446744073709551615
  %add.i319 = add nuw nsw i128 %shr.i315, %conv1.i318
  %conv2.i320 = and i128 %add3.i290, 18446744073709551615
  %add3.i321 = add nuw nsw i128 %add.i319, %conv2.i320
  %shr.i323 = lshr i128 %add3.i321, 64
  %add10 = add nuw nsw i64 %conv5.i245, %conv5.i217
  %add12 = add nuw i64 %conv5.i293, %conv3.i255
  %conv1.i326 = zext nneg i64 %add10 to i128
  %add.i327 = add nuw nsw i128 %shr.i323, %conv1.i326
  %conv2.i328 = zext i64 %add12 to i128
  %add3.i329 = add nuw nsw i128 %add.i327, %conv2.i328
  %shr.i331 = lshr i128 %add3.i329, 64
  %conv5.i332 = trunc nuw nsw i128 %shr.i331 to i64
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %5 = load i64, ptr %arrayidx13, align 8, !tbaa !10
  %conv1.i333 = and i128 %add3.i305, 18446744073709551615
  %conv2.i335 = zext i64 %5 to i128
  %add3.i336 = add nuw nsw i128 %conv1.i333, %conv2.i335
  %shr.i338 = lshr i128 %add3.i336, 64
  %conv1.i341 = and i128 %add3.i313, 18446744073709551615
  %add.i342 = add nuw nsw i128 %conv1.i341, %shr.i338
  %shr.i345 = lshr i128 %add.i342, 64
  %conv1.i348 = and i128 %add3.i321, 18446744073709551615
  %add.i349 = add nuw nsw i128 %conv1.i348, %shr.i345
  %shr.i352 = lshr i128 %add.i349, 64
  %conv1.i355 = and i128 %add3.i329, 18446744073709551615
  %add.i356 = add nuw nsw i128 %conv1.i355, %shr.i352
  %shr.i359 = lshr i128 %add.i356, 64
  %conv5.i360 = trunc nuw nsw i128 %shr.i359 to i64
  %conv.i361 = and i128 %add3.i336, 18446744073709551615
  %6 = trunc i128 %add3.i336 to i64
  %conv2.i363 = mul i64 %6, -2866531139136965327
  %conv.i366 = zext i64 %conv2.i363 to i128
  %mul.i367 = mul nuw i128 %conv.i366, 18446744073709551615
  %shr.i369 = lshr i128 %mul.i367, 64
  %conv3.i370 = trunc nuw i128 %shr.i369 to i64
  %mul.i382 = mul nuw i128 %conv.i366, 18446744069414583343
  %shr.i384 = lshr i128 %mul.i382, 64
  %conv2.i388 = and i128 %mul.i367, 18446744073709551615
  %add3.i389 = add nuw nsw i128 %shr.i384, %conv2.i388
  %shr.i391 = lshr i128 %add3.i389, 64
  %add.i395 = add nuw nsw i128 %conv2.i388, %shr.i369
  %add3.i397 = add nuw nsw i128 %add.i395, %shr.i391
  %shr.i399 = lshr i128 %add3.i397, 64
  %add3.i405 = add nuw nsw i128 %add.i395, %shr.i399
  %shr.i407 = lshr i128 %add3.i405, 64
  %conv5.i408 = trunc nuw nsw i128 %shr.i407 to i64
  %conv2.i411 = and i128 %mul.i382, 18446744073709551615
  %add3.i412 = add nuw nsw i128 %conv2.i411, %conv.i361
  %shr.i414 = lshr i128 %add3.i412, 64
  %conv1.i417 = and i128 %add.i342, 18446744073709551615
  %add.i418 = add nuw nsw i128 %shr.i414, %conv1.i417
  %conv2.i419 = and i128 %add3.i389, 18446744073709551615
  %add3.i420 = add nuw nsw i128 %add.i418, %conv2.i419
  %conv4.i421 = trunc i128 %add3.i420 to i64
  %shr.i422 = lshr i128 %add3.i420, 64
  %conv1.i425 = and i128 %add.i349, 18446744073709551615
  %add.i426 = add nuw nsw i128 %shr.i422, %conv1.i425
  %conv2.i427 = and i128 %add3.i397, 18446744073709551615
  %add3.i428 = add nuw nsw i128 %add.i426, %conv2.i427
  %conv4.i429 = trunc i128 %add3.i428 to i64
  %shr.i430 = lshr i128 %add3.i428, 64
  %conv1.i433 = and i128 %add.i356, 18446744073709551615
  %add.i434 = add nuw nsw i128 %shr.i430, %conv1.i433
  %conv2.i435 = and i128 %add3.i405, 18446744073709551615
  %add3.i436 = add nuw nsw i128 %add.i434, %conv2.i435
  %conv4.i437 = trunc i128 %add3.i436 to i64
  %shr.i438 = lshr i128 %add3.i436, 64
  %add16 = add nuw nsw i64 %conv5.i360, %conv5.i332
  %add18 = add nuw i64 %conv5.i408, %conv3.i370
  %conv1.i441 = zext nneg i64 %add16 to i128
  %add.i442 = add nuw nsw i128 %shr.i438, %conv1.i441
  %conv2.i443 = zext i64 %add18 to i128
  %add3.i444 = add nuw nsw i128 %add.i442, %conv2.i443
  %conv4.i445 = trunc i128 %add3.i444 to i64
  %shr.i446 = lshr i128 %add3.i444, 64
  %conv.i448 = and i128 %add3.i420, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i448, -18446744069414583343
  %shr.i449 = lshr i128 %sub3.i, 64
  %conv4.i450 = trunc i128 %shr.i449 to i8
  %conv5.i451 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i450
  %conv.i452 = and i128 %add3.i428, 18446744073709551615
  %conv1.i453 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i452, -18446744073709551615
  %sub3.i454 = sub nsw i128 %.neg, %conv1.i453
  %shr.i455 = lshr i128 %sub3.i454, 64
  %conv4.i456 = trunc i128 %shr.i455 to i8
  %conv5.i457 = trunc i128 %sub3.i454 to i64
  %sub7.i458 = sub i8 0, %conv4.i456
  %conv.i459 = and i128 %add3.i436, 18446744073709551615
  %conv1.i460 = zext i8 %sub7.i458 to i128
  %.neg521 = add nsw i128 %conv.i459, -18446744073709551615
  %sub3.i461 = sub nsw i128 %.neg521, %conv1.i460
  %shr.i462 = lshr i128 %sub3.i461, 64
  %conv4.i463 = trunc i128 %shr.i462 to i8
  %conv5.i464 = trunc i128 %sub3.i461 to i64
  %sub7.i465 = sub i8 0, %conv4.i463
  %conv.i466 = and i128 %add3.i444, 18446744073709551615
  %conv1.i467 = zext i8 %sub7.i465 to i128
  %.neg522 = add nsw i128 %conv.i466, -18446744073709551615
  %sub3.i468 = sub nsw i128 %.neg522, %conv1.i467
  %shr.i469 = lshr i128 %sub3.i468, 64
  %conv4.i470 = trunc i128 %shr.i469 to i8
  %conv5.i471 = trunc i128 %sub3.i468 to i64
  %sub7.i472 = sub i8 0, %conv4.i470
  %conv1.i474 = zext i8 %sub7.i472 to i128
  %sub3.i475 = sub nsw i128 %shr.i446, %conv1.i474
  %shr.i476 = lshr i128 %sub3.i475, 64
  %conv4.i477 = trunc i128 %shr.i476 to i8
  %tobool.i = icmp ne i8 %conv4.i477, 0
  %conv4.i480 = sext i1 %tobool.i to i64
  %7 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i480) #8, !srcloc !9
  %and5.i = and i64 %7, %conv4.i421
  %not.i = xor i64 %conv4.i480, -1
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %8, %conv5.i451
  %or.i = or i64 %and7.i, %and5.i
  %and5.i483 = and i64 %7, %conv4.i429
  %and7.i485 = and i64 %8, %conv5.i457
  %or.i486 = or i64 %and7.i485, %and5.i483
  %and5.i489 = and i64 %7, %conv4.i437
  %and7.i491 = and i64 %8, %conv5.i464
  %or.i492 = or i64 %and7.i491, %and5.i489
  %and5.i495 = and i64 %7, %conv4.i445
  %and7.i497 = and i64 %8, %conv5.i471
  %or.i498 = or i64 %and7.i497, %and5.i495
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i486, ptr %arrayidx21, align 8, !tbaa !10
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i492, ptr %arrayidx22, align 8, !tbaa !10
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i498, ptr %arrayidx23, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_to_montgomery(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %3 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i = zext i64 %3 to i128
  %mul.i = mul nuw nsw i128 %conv.i, 8392367050913
  %shr.i = lshr i128 %mul.i, 64
  %add3.i = add nuw nsw i128 %shr.i, %conv.i
  %shr.i39 = lshr i128 %add3.i, 64
  %conv.i40 = and i128 %mul.i, 18446744073709551615
  %mul.i41 = mul i64 %3, 4294968273
  %conv.i45 = zext i64 %mul.i41 to i128
  %mul.i46 = mul nuw i128 %conv.i45, 18446744073709551615
  %shr.i48 = lshr i128 %mul.i46, 64
  %conv3.i49 = trunc nuw i128 %shr.i48 to i64
  %mul.i61 = mul nuw i128 %conv.i45, 18446744069414583343
  %shr.i63 = lshr i128 %mul.i61, 64
  %conv2.i66 = and i128 %mul.i46, 18446744073709551615
  %add3.i67 = add nuw nsw i128 %shr.i63, %conv2.i66
  %shr.i69 = lshr i128 %add3.i67, 64
  %add.i = add nuw nsw i128 %conv2.i66, %shr.i48
  %add3.i74 = add nuw nsw i128 %add.i, %shr.i69
  %shr.i76 = lshr i128 %add3.i74, 64
  %add3.i82 = add nuw nsw i128 %add.i, %shr.i76
  %shr.i84 = lshr i128 %add3.i82, 64
  %conv5.i85 = trunc nuw nsw i128 %shr.i84 to i64
  %conv2.i88 = and i128 %mul.i61, 18446744073709551615
  %add3.i89 = add nuw nsw i128 %conv2.i88, %conv.i40
  %shr.i91 = lshr i128 %add3.i89, 64
  %conv1.i94 = and i128 %add3.i, 18446744073709551615
  %add.i95 = add nuw nsw i128 %shr.i91, %conv1.i94
  %conv2.i96 = and i128 %add3.i67, 18446744073709551615
  %add3.i97 = add nuw nsw i128 %add.i95, %conv2.i96
  %shr.i99 = lshr i128 %add3.i97, 64
  %add.i103 = add nuw nsw i128 %shr.i99, %shr.i39
  %conv2.i104 = and i128 %add3.i74, 18446744073709551615
  %add3.i105 = add nuw nsw i128 %add.i103, %conv2.i104
  %shr.i107 = lshr i128 %add3.i105, 64
  %conv2.i111 = and i128 %add3.i82, 18446744073709551615
  %add3.i112 = add nuw nsw i128 %shr.i107, %conv2.i111
  %shr.i114 = lshr i128 %add3.i112, 64
  %add = add nuw i64 %conv5.i85, %conv3.i49
  %conv2.i118 = zext i64 %add to i128
  %add3.i119 = add nuw nsw i128 %shr.i114, %conv2.i118
  %shr.i121 = lshr i128 %add3.i119, 64
  %conv5.i122 = trunc nuw nsw i128 %shr.i121 to i64
  %conv.i123 = zext i64 %0 to i128
  %mul.i124 = mul nuw nsw i128 %conv.i123, 8392367050913
  %shr.i126 = lshr i128 %mul.i124, 64
  %add3.i131 = add nuw nsw i128 %shr.i126, %conv.i123
  %shr.i133 = lshr i128 %add3.i131, 64
  %conv1.i135 = and i128 %add3.i97, 18446744073709551615
  %conv2.i137 = and i128 %mul.i124, 18446744073709551615
  %add3.i138 = add nuw nsw i128 %conv1.i135, %conv2.i137
  %shr.i140 = lshr i128 %add3.i138, 64
  %conv1.i143 = and i128 %add3.i105, 18446744073709551615
  %conv2.i145 = and i128 %add3.i131, 18446744073709551615
  %add.i144 = add nuw nsw i128 %shr.i140, %conv2.i145
  %add3.i146 = add nuw nsw i128 %add.i144, %conv1.i143
  %shr.i148 = lshr i128 %add3.i146, 64
  %conv1.i151 = and i128 %add3.i112, 18446744073709551615
  %add.i152 = add nuw nsw i128 %conv1.i151, %shr.i133
  %add3.i154 = add nuw nsw i128 %add.i152, %shr.i148
  %shr.i156 = lshr i128 %add3.i154, 64
  %conv1.i159 = and i128 %add3.i119, 18446744073709551615
  %add.i160 = add nuw nsw i128 %shr.i156, %conv1.i159
  %shr.i163 = lshr i128 %add.i160, 64
  %conv5.i164 = trunc nuw nsw i128 %shr.i163 to i64
  %conv.i165 = and i128 %add3.i138, 18446744073709551615
  %4 = trunc i128 %add3.i138 to i64
  %conv2.i167 = mul i64 %4, -2866531139136965327
  %conv.i170 = zext i64 %conv2.i167 to i128
  %mul.i171 = mul nuw i128 %conv.i170, 18446744073709551615
  %shr.i173 = lshr i128 %mul.i171, 64
  %conv3.i174 = trunc nuw i128 %shr.i173 to i64
  %mul.i186 = mul nuw i128 %conv.i170, 18446744069414583343
  %shr.i188 = lshr i128 %mul.i186, 64
  %conv2.i192 = and i128 %mul.i171, 18446744073709551615
  %add3.i193 = add nuw nsw i128 %shr.i188, %conv2.i192
  %shr.i195 = lshr i128 %add3.i193, 64
  %add.i199 = add nuw nsw i128 %conv2.i192, %shr.i173
  %add3.i201 = add nuw nsw i128 %add.i199, %shr.i195
  %shr.i203 = lshr i128 %add3.i201, 64
  %add3.i209 = add nuw nsw i128 %add.i199, %shr.i203
  %shr.i211 = lshr i128 %add3.i209, 64
  %conv5.i212 = trunc nuw nsw i128 %shr.i211 to i64
  %conv2.i215 = and i128 %mul.i186, 18446744073709551615
  %add3.i216 = add nuw nsw i128 %conv2.i215, %conv.i165
  %shr.i218 = lshr i128 %add3.i216, 64
  %conv1.i221 = and i128 %add3.i146, 18446744073709551615
  %add.i222 = add nuw nsw i128 %shr.i218, %conv1.i221
  %conv2.i223 = and i128 %add3.i193, 18446744073709551615
  %add3.i224 = add nuw nsw i128 %add.i222, %conv2.i223
  %shr.i226 = lshr i128 %add3.i224, 64
  %conv1.i229 = and i128 %add3.i154, 18446744073709551615
  %add.i230 = add nuw nsw i128 %shr.i226, %conv1.i229
  %conv2.i231 = and i128 %add3.i201, 18446744073709551615
  %add3.i232 = add nuw nsw i128 %add.i230, %conv2.i231
  %shr.i234 = lshr i128 %add3.i232, 64
  %conv1.i237 = and i128 %add.i160, 18446744073709551615
  %add.i238 = add nuw nsw i128 %shr.i234, %conv1.i237
  %conv2.i239 = and i128 %add3.i209, 18446744073709551615
  %add3.i240 = add nuw nsw i128 %add.i238, %conv2.i239
  %shr.i242 = lshr i128 %add3.i240, 64
  %add8 = add nuw nsw i64 %conv5.i164, %conv5.i122
  %add10 = add nuw i64 %conv5.i212, %conv3.i174
  %conv1.i245 = zext nneg i64 %add8 to i128
  %add.i246 = add nuw nsw i128 %shr.i242, %conv1.i245
  %conv2.i247 = zext i64 %add10 to i128
  %add3.i248 = add nuw nsw i128 %add.i246, %conv2.i247
  %shr.i250 = lshr i128 %add3.i248, 64
  %conv5.i251 = trunc nuw nsw i128 %shr.i250 to i64
  %conv.i252 = zext i64 %1 to i128
  %mul.i253 = mul nuw nsw i128 %conv.i252, 8392367050913
  %shr.i255 = lshr i128 %mul.i253, 64
  %add3.i260 = add nuw nsw i128 %shr.i255, %conv.i252
  %shr.i262 = lshr i128 %add3.i260, 64
  %conv1.i264 = and i128 %add3.i224, 18446744073709551615
  %conv2.i266 = and i128 %mul.i253, 18446744073709551615
  %add3.i267 = add nuw nsw i128 %conv1.i264, %conv2.i266
  %shr.i269 = lshr i128 %add3.i267, 64
  %conv1.i272 = and i128 %add3.i232, 18446744073709551615
  %conv2.i274 = and i128 %add3.i260, 18446744073709551615
  %add.i273 = add nuw nsw i128 %shr.i269, %conv2.i274
  %add3.i275 = add nuw nsw i128 %add.i273, %conv1.i272
  %shr.i277 = lshr i128 %add3.i275, 64
  %conv1.i280 = and i128 %add3.i240, 18446744073709551615
  %add.i281 = add nuw nsw i128 %shr.i277, %shr.i262
  %add3.i283 = add nuw nsw i128 %add.i281, %conv1.i280
  %shr.i285 = lshr i128 %add3.i283, 64
  %conv1.i288 = and i128 %add3.i248, 18446744073709551615
  %add.i289 = add nuw nsw i128 %conv1.i288, %shr.i285
  %shr.i292 = lshr i128 %add.i289, 64
  %conv5.i293 = trunc nuw nsw i128 %shr.i292 to i64
  %conv.i294 = and i128 %add3.i267, 18446744073709551615
  %5 = trunc i128 %add3.i267 to i64
  %conv2.i296 = mul i64 %5, -2866531139136965327
  %conv.i299 = zext i64 %conv2.i296 to i128
  %mul.i300 = mul nuw i128 %conv.i299, 18446744073709551615
  %shr.i302 = lshr i128 %mul.i300, 64
  %conv3.i303 = trunc nuw i128 %shr.i302 to i64
  %mul.i315 = mul nuw i128 %conv.i299, 18446744069414583343
  %shr.i317 = lshr i128 %mul.i315, 64
  %conv2.i321 = and i128 %mul.i300, 18446744073709551615
  %add3.i322 = add nuw nsw i128 %shr.i317, %conv2.i321
  %shr.i324 = lshr i128 %add3.i322, 64
  %add.i328 = add nuw nsw i128 %conv2.i321, %shr.i302
  %add3.i330 = add nuw nsw i128 %add.i328, %shr.i324
  %shr.i332 = lshr i128 %add3.i330, 64
  %add3.i338 = add nuw nsw i128 %add.i328, %shr.i332
  %shr.i340 = lshr i128 %add3.i338, 64
  %conv5.i341 = trunc nuw nsw i128 %shr.i340 to i64
  %conv2.i344 = and i128 %mul.i315, 18446744073709551615
  %add3.i345 = add nuw nsw i128 %conv2.i344, %conv.i294
  %shr.i347 = lshr i128 %add3.i345, 64
  %conv1.i350 = and i128 %add3.i275, 18446744073709551615
  %add.i351 = add nuw nsw i128 %shr.i347, %conv1.i350
  %conv2.i352 = and i128 %add3.i322, 18446744073709551615
  %add3.i353 = add nuw nsw i128 %add.i351, %conv2.i352
  %shr.i355 = lshr i128 %add3.i353, 64
  %conv1.i358 = and i128 %add3.i283, 18446744073709551615
  %add.i359 = add nuw nsw i128 %shr.i355, %conv1.i358
  %conv2.i360 = and i128 %add3.i330, 18446744073709551615
  %add3.i361 = add nuw nsw i128 %add.i359, %conv2.i360
  %shr.i363 = lshr i128 %add3.i361, 64
  %conv1.i366 = and i128 %add.i289, 18446744073709551615
  %add.i367 = add nuw nsw i128 %shr.i363, %conv1.i366
  %conv2.i368 = and i128 %add3.i338, 18446744073709551615
  %add3.i369 = add nuw nsw i128 %add.i367, %conv2.i368
  %shr.i371 = lshr i128 %add3.i369, 64
  %add14 = add nuw nsw i64 %conv5.i293, %conv5.i251
  %add16 = add nuw i64 %conv5.i341, %conv3.i303
  %conv1.i374 = zext nneg i64 %add14 to i128
  %add.i375 = add nuw nsw i128 %shr.i371, %conv1.i374
  %conv2.i376 = zext i64 %add16 to i128
  %add3.i377 = add nuw nsw i128 %add.i375, %conv2.i376
  %shr.i379 = lshr i128 %add3.i377, 64
  %conv5.i380 = trunc nuw nsw i128 %shr.i379 to i64
  %conv.i381 = zext i64 %2 to i128
  %mul.i382 = mul nuw nsw i128 %conv.i381, 8392367050913
  %shr.i384 = lshr i128 %mul.i382, 64
  %add3.i389 = add nuw nsw i128 %shr.i384, %conv.i381
  %shr.i391 = lshr i128 %add3.i389, 64
  %conv1.i393 = and i128 %add3.i353, 18446744073709551615
  %conv2.i395 = and i128 %mul.i382, 18446744073709551615
  %add3.i396 = add nuw nsw i128 %conv1.i393, %conv2.i395
  %shr.i398 = lshr i128 %add3.i396, 64
  %conv1.i401 = and i128 %add3.i361, 18446744073709551615
  %conv2.i403 = and i128 %add3.i389, 18446744073709551615
  %add.i402 = add nuw nsw i128 %shr.i398, %conv2.i403
  %add3.i404 = add nuw nsw i128 %add.i402, %conv1.i401
  %shr.i406 = lshr i128 %add3.i404, 64
  %conv1.i409 = and i128 %add3.i369, 18446744073709551615
  %add.i410 = add nuw nsw i128 %shr.i406, %shr.i391
  %add3.i412 = add nuw nsw i128 %add.i410, %conv1.i409
  %shr.i414 = lshr i128 %add3.i412, 64
  %conv1.i417 = and i128 %add3.i377, 18446744073709551615
  %add.i418 = add nuw nsw i128 %conv1.i417, %shr.i414
  %shr.i421 = lshr i128 %add.i418, 64
  %conv5.i422 = trunc nuw nsw i128 %shr.i421 to i64
  %conv.i423 = and i128 %add3.i396, 18446744073709551615
  %6 = trunc i128 %add3.i396 to i64
  %conv2.i425 = mul i64 %6, -2866531139136965327
  %conv.i428 = zext i64 %conv2.i425 to i128
  %mul.i429 = mul nuw i128 %conv.i428, 18446744073709551615
  %shr.i431 = lshr i128 %mul.i429, 64
  %conv3.i432 = trunc nuw i128 %shr.i431 to i64
  %mul.i444 = mul nuw i128 %conv.i428, 18446744069414583343
  %shr.i446 = lshr i128 %mul.i444, 64
  %conv2.i450 = and i128 %mul.i429, 18446744073709551615
  %add3.i451 = add nuw nsw i128 %shr.i446, %conv2.i450
  %shr.i453 = lshr i128 %add3.i451, 64
  %add.i457 = add nuw nsw i128 %conv2.i450, %shr.i431
  %add3.i459 = add nuw nsw i128 %add.i457, %shr.i453
  %shr.i461 = lshr i128 %add3.i459, 64
  %add3.i467 = add nuw nsw i128 %add.i457, %shr.i461
  %shr.i469 = lshr i128 %add3.i467, 64
  %conv5.i470 = trunc nuw nsw i128 %shr.i469 to i64
  %conv2.i473 = and i128 %mul.i444, 18446744073709551615
  %add3.i474 = add nuw nsw i128 %conv2.i473, %conv.i423
  %shr.i476 = lshr i128 %add3.i474, 64
  %conv1.i479 = and i128 %add3.i404, 18446744073709551615
  %add.i480 = add nuw nsw i128 %shr.i476, %conv1.i479
  %conv2.i481 = and i128 %add3.i451, 18446744073709551615
  %add3.i482 = add nuw nsw i128 %add.i480, %conv2.i481
  %conv4.i483 = trunc i128 %add3.i482 to i64
  %shr.i484 = lshr i128 %add3.i482, 64
  %conv1.i487 = and i128 %add3.i412, 18446744073709551615
  %add.i488 = add nuw nsw i128 %shr.i484, %conv1.i487
  %conv2.i489 = and i128 %add3.i459, 18446744073709551615
  %add3.i490 = add nuw nsw i128 %add.i488, %conv2.i489
  %conv4.i491 = trunc i128 %add3.i490 to i64
  %shr.i492 = lshr i128 %add3.i490, 64
  %conv1.i495 = and i128 %add.i418, 18446744073709551615
  %add.i496 = add nuw nsw i128 %shr.i492, %conv1.i495
  %conv2.i497 = and i128 %add3.i467, 18446744073709551615
  %add3.i498 = add nuw nsw i128 %add.i496, %conv2.i497
  %conv4.i499 = trunc i128 %add3.i498 to i64
  %shr.i500 = lshr i128 %add3.i498, 64
  %add20 = add nuw nsw i64 %conv5.i422, %conv5.i380
  %add22 = add nuw i64 %conv5.i470, %conv3.i432
  %conv1.i503 = zext nneg i64 %add20 to i128
  %add.i504 = add nuw nsw i128 %shr.i500, %conv1.i503
  %conv2.i505 = zext i64 %add22 to i128
  %add3.i506 = add nuw nsw i128 %add.i504, %conv2.i505
  %conv4.i507 = trunc i128 %add3.i506 to i64
  %shr.i508 = lshr i128 %add3.i506, 64
  %conv.i510 = and i128 %add3.i482, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i510, -18446744069414583343
  %shr.i511 = lshr i128 %sub3.i, 64
  %conv4.i512 = trunc i128 %shr.i511 to i8
  %conv5.i513 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i512
  %conv.i514 = and i128 %add3.i490, 18446744073709551615
  %conv1.i515 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i514, -18446744073709551615
  %sub3.i516 = sub nsw i128 %.neg, %conv1.i515
  %shr.i517 = lshr i128 %sub3.i516, 64
  %conv4.i518 = trunc i128 %shr.i517 to i8
  %conv5.i519 = trunc i128 %sub3.i516 to i64
  %sub7.i520 = sub i8 0, %conv4.i518
  %conv.i521 = and i128 %add3.i498, 18446744073709551615
  %conv1.i522 = zext i8 %sub7.i520 to i128
  %.neg584 = add nsw i128 %conv.i521, -18446744073709551615
  %sub3.i523 = sub nsw i128 %.neg584, %conv1.i522
  %shr.i524 = lshr i128 %sub3.i523, 64
  %conv4.i525 = trunc i128 %shr.i524 to i8
  %conv5.i526 = trunc i128 %sub3.i523 to i64
  %sub7.i527 = sub i8 0, %conv4.i525
  %conv.i528 = and i128 %add3.i506, 18446744073709551615
  %conv1.i529 = zext i8 %sub7.i527 to i128
  %.neg585 = add nsw i128 %conv.i528, -18446744073709551615
  %sub3.i530 = sub nsw i128 %.neg585, %conv1.i529
  %shr.i531 = lshr i128 %sub3.i530, 64
  %conv4.i532 = trunc i128 %shr.i531 to i8
  %conv5.i533 = trunc i128 %sub3.i530 to i64
  %sub7.i534 = sub i8 0, %conv4.i532
  %conv1.i536 = zext i8 %sub7.i534 to i128
  %sub3.i537 = sub nsw i128 %shr.i508, %conv1.i536
  %shr.i538 = lshr i128 %sub3.i537, 64
  %conv4.i539 = trunc i128 %shr.i538 to i8
  %tobool.i = icmp ne i8 %conv4.i539, 0
  %conv4.i542 = sext i1 %tobool.i to i64
  %7 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i542) #8, !srcloc !9
  %and5.i = and i64 %7, %conv4.i483
  %not.i = xor i64 %conv4.i542, -1
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %8, %conv5.i513
  %or.i = or i64 %and7.i, %and5.i
  %and5.i545 = and i64 %7, %conv4.i491
  %and7.i547 = and i64 %8, %conv5.i519
  %or.i548 = or i64 %and7.i547, %and5.i545
  %and5.i551 = and i64 %7, %conv4.i499
  %and7.i553 = and i64 %8, %conv5.i526
  %or.i554 = or i64 %and7.i553, %and5.i551
  %and5.i557 = and i64 %7, %conv4.i507
  %and7.i559 = and i64 %8, %conv5.i533
  %or.i560 = or i64 %and7.i559, %and5.i557
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i548, ptr %arrayidx25, align 8, !tbaa !10
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i554, ptr %arrayidx26, align 8, !tbaa !10
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i560, ptr %arrayidx27, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_nonzero(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load <4 x i64>, ptr %arg1, align 8, !tbaa !10
  %1 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %0)
  store i64 %1, ptr %out1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_selectznz(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #3 {
entry:
  %tobool.i = icmp ne i8 %arg1, 0
  %conv4.i = sext i1 %tobool.i to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #8, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %2 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %3 = load <2 x i64>, ptr %arg3, align 8, !tbaa !10
  %4 = insertelement <2 x i64> poison, i64 %0, i64 0
  %5 = shufflevector <2 x i64> %4, <2 x i64> poison, <2 x i32> zeroinitializer
  %6 = and <2 x i64> %5, %3
  %7 = insertelement <2 x i64> poison, i64 %1, i64 0
  %8 = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer
  %9 = and <2 x i64> %8, %2
  %10 = or <2 x i64> %6, %9
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %11 = load <2 x i64>, ptr %arrayidx4, align 8, !tbaa !10
  %12 = load <2 x i64>, ptr %arrayidx5, align 8, !tbaa !10
  %13 = and <2 x i64> %12, %5
  %14 = and <2 x i64> %11, %8
  %15 = or <2 x i64> %13, %14
  store <2 x i64> %10, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %15, ptr %arrayidx10, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_to_bytes(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %arrayidx105 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %1 = load <2 x i64>, ptr %arrayidx1, align 8, !tbaa !10
  store <2 x i64> %0, ptr %out1, align 1
  store <2 x i64> %1, ptr %arrayidx105, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_from_bytes(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 31
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %0 to i64
  %shl = shl nuw i64 %conv, 56
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 30
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !12
  %conv2 = zext i8 %1 to i64
  %shl3 = shl nuw nsw i64 %conv2, 48
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 29
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv5 = zext i8 %2 to i64
  %shl6 = shl nuw nsw i64 %conv5, 40
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %3 = load i8, ptr %arrayidx7, align 1, !tbaa !12
  %conv8 = zext i8 %3 to i64
  %shl9 = shl nuw nsw i64 %conv8, 32
  %4 = getelementptr i8, ptr %arg1, i64 24
  %5 = load i32, ptr %4, align 1
  %6 = zext i32 %5 to i64
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arg1, i64 23
  %7 = load i8, ptr %arrayidx20, align 1, !tbaa !12
  %conv21 = zext i8 %7 to i64
  %shl22 = shl nuw i64 %conv21, 56
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 22
  %8 = load i8, ptr %arrayidx23, align 1, !tbaa !12
  %conv24 = zext i8 %8 to i64
  %shl25 = shl nuw nsw i64 %conv24, 48
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %arg1, i64 21
  %9 = load i8, ptr %arrayidx26, align 1, !tbaa !12
  %conv27 = zext i8 %9 to i64
  %shl28 = shl nuw nsw i64 %conv27, 40
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %10 = load i8, ptr %arrayidx29, align 1, !tbaa !12
  %conv30 = zext i8 %10 to i64
  %shl31 = shl nuw nsw i64 %conv30, 32
  %11 = getelementptr i8, ptr %arg1, i64 16
  %12 = load i32, ptr %11, align 1
  %13 = zext i32 %12 to i64
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %arg1, i64 15
  %14 = load i8, ptr %arrayidx42, align 1, !tbaa !12
  %conv43 = zext i8 %14 to i64
  %shl44 = shl nuw i64 %conv43, 56
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %arg1, i64 14
  %15 = load i8, ptr %arrayidx45, align 1, !tbaa !12
  %conv46 = zext i8 %15 to i64
  %shl47 = shl nuw nsw i64 %conv46, 48
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %arg1, i64 13
  %16 = load i8, ptr %arrayidx48, align 1, !tbaa !12
  %conv49 = zext i8 %16 to i64
  %shl50 = shl nuw nsw i64 %conv49, 40
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %17 = load i8, ptr %arrayidx51, align 1, !tbaa !12
  %conv52 = zext i8 %17 to i64
  %shl53 = shl nuw nsw i64 %conv52, 32
  %18 = getelementptr i8, ptr %arg1, i64 8
  %19 = load i32, ptr %18, align 1
  %20 = zext i32 %19 to i64
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %arg1, i64 7
  %21 = load i8, ptr %arrayidx64, align 1, !tbaa !12
  %conv65 = zext i8 %21 to i64
  %shl66 = shl nuw i64 %conv65, 56
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %arg1, i64 6
  %22 = load i8, ptr %arrayidx67, align 1, !tbaa !12
  %conv68 = zext i8 %22 to i64
  %shl69 = shl nuw nsw i64 %conv68, 48
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %arg1, i64 5
  %23 = load i8, ptr %arrayidx70, align 1, !tbaa !12
  %conv71 = zext i8 %23 to i64
  %shl72 = shl nuw nsw i64 %conv71, 40
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %24 = load i8, ptr %arrayidx73, align 1, !tbaa !12
  %conv74 = zext i8 %24 to i64
  %shl75 = shl nuw nsw i64 %conv74, 32
  %25 = load i32, ptr %arg1, align 1
  %26 = zext i32 %25 to i64
  %add89 = or disjoint i64 %shl72, %26
  %add90 = or disjoint i64 %add89, %shl75
  %add91 = or disjoint i64 %shl69, %shl66
  %add92 = or disjoint i64 %add91, %add90
  %add97 = or disjoint i64 %shl50, %20
  %add98 = or disjoint i64 %add97, %shl53
  %add99 = or disjoint i64 %shl47, %shl44
  %add100 = or disjoint i64 %add99, %add98
  %add105 = or disjoint i64 %shl28, %13
  %add106 = or disjoint i64 %add105, %shl31
  %add107 = or disjoint i64 %shl25, %shl22
  %add108 = or disjoint i64 %add107, %add106
  %add113 = or disjoint i64 %shl6, %6
  %add114 = or disjoint i64 %add113, %shl9
  %add115 = or disjoint i64 %shl3, %shl
  %add116 = or disjoint i64 %add115, %add114
  store i64 %add92, ptr %out1, align 8, !tbaa !10
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %add100, ptr %arrayidx118, align 8, !tbaa !10
  %arrayidx119 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add108, ptr %arrayidx119, align 8, !tbaa !10
  %arrayidx120 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %add116, ptr %arrayidx120, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_secp256k1_montgomery_set_one(ptr noundef writeonly captures(none) initializes((0, 32)) %out1) local_unnamed_addr #1 {
entry:
  store i64 4294968273, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayidx1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_secp256k1_montgomery_msat(ptr noundef writeonly captures(none) initializes((0, 40)) %out1) local_unnamed_addr #1 {
entry:
  store i64 -4294968273, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayidx1, i8 -1, i64 24, i1 false)
  store i64 0, ptr %arrayidx4, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_secp256k1_montgomery_divstep(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 40)) %out2, ptr noundef writeonly captures(none) initializes((0, 40)) %out3, ptr noundef writeonly captures(none) initializes((0, 32)) %out4, ptr noundef writeonly captures(none) initializes((0, 32)) %out5, i64 noundef %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3, ptr noundef readonly captures(none) %arg4, ptr noundef readonly captures(none) %arg5) local_unnamed_addr #3 {
entry:
  %add3.i = sub i64 0, %arg1
  %0 = load i64, ptr %arg3, align 8, !tbaa !10
  %and4163669 = shl i64 %0, 63
  %shr670 = and i64 %and4163669, %add3.i
  %sext = ashr exact i64 %shr670, 63
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %sext) #8, !srcloc !9
  %and5.i = and i64 %1, %add3.i
  %not.i = xor i64 %sext, -1
  %2 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %2, %arg1
  %or.i = or i64 %and7.i, %and5.i
  %3 = load i64, ptr %arg2, align 8, !tbaa !10
  %and5.i172 = and i64 %1, %0
  %and7.i174 = and i64 %3, %2
  %or.i175 = or i64 %and7.i174, %and5.i172
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %4 = load i64, ptr %arrayidx9, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg3, i64 8
  %5 = load i64, ptr %arrayidx10, align 8, !tbaa !10
  %and5.i178 = and i64 %5, %1
  %and7.i180 = and i64 %4, %2
  %or.i181 = or i64 %and5.i178, %and7.i180
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %6 = load i64, ptr %arrayidx11, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %7 = load i64, ptr %arrayidx12, align 8, !tbaa !10
  %and5.i184 = and i64 %7, %1
  %and7.i186 = and i64 %6, %2
  %or.i187 = or i64 %and5.i184, %and7.i186
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %8 = load i64, ptr %arrayidx13, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg3, i64 24
  %9 = load i64, ptr %arrayidx14, align 8, !tbaa !10
  %and5.i190 = and i64 %9, %1
  %and7.i192 = and i64 %8, %2
  %or.i193 = or i64 %and5.i190, %and7.i192
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %10 = load i64, ptr %arrayidx15, align 8, !tbaa !10
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg3, i64 32
  %11 = load i64, ptr %arrayidx16, align 8, !tbaa !10
  %and5.i196 = and i64 %11, %1
  %and7.i198 = and i64 %10, %2
  %or.i199 = or i64 %and5.i196, %and7.i198
  %not18 = xor i64 %3, -1
  %conv2.i = zext i64 %not18 to i128
  %add3.i200 = add nuw nsw i128 %conv2.i, 1
  %conv4.i201 = trunc i128 %add3.i200 to i64
  %shr.i202 = lshr i128 %add3.i200, 64
  %not20 = xor i64 %4, -1
  %conv2.i204 = zext i64 %not20 to i128
  %add3.i205 = add nuw nsw i128 %shr.i202, %conv2.i204
  %conv4.i206 = trunc i128 %add3.i205 to i64
  %shr.i207 = lshr i128 %add3.i205, 64
  %not22 = xor i64 %6, -1
  %conv2.i210 = zext i64 %not22 to i128
  %add3.i211 = add nuw nsw i128 %shr.i207, %conv2.i210
  %conv4.i212 = trunc i128 %add3.i211 to i64
  %shr.i213 = lshr i128 %add3.i211, 64
  %not24 = xor i64 %8, -1
  %conv2.i216 = zext i64 %not24 to i128
  %add3.i217 = add nuw nsw i128 %shr.i213, %conv2.i216
  %conv4.i218 = trunc i128 %add3.i217 to i64
  %shr.i219 = lshr i128 %add3.i217, 64
  %not26 = xor i64 %10, -1
  %12 = trunc nuw nsw i128 %shr.i219 to i64
  %conv4.i224 = add i64 %12, %not26
  %and5.i229 = and i64 %1, %conv4.i201
  %and7.i231 = and i64 %2, %0
  %or.i232 = or i64 %and5.i229, %and7.i231
  %and5.i235 = and i64 %1, %conv4.i206
  %and7.i237 = and i64 %5, %2
  %or.i238 = or i64 %and5.i235, %and7.i237
  %and5.i241 = and i64 %1, %conv4.i212
  %and7.i243 = and i64 %7, %2
  %or.i244 = or i64 %and5.i241, %and7.i243
  %and5.i247 = and i64 %1, %conv4.i218
  %and7.i249 = and i64 %9, %2
  %or.i250 = or i64 %and5.i247, %and7.i249
  %and5.i253 = and i64 %conv4.i224, %1
  %and7.i255 = and i64 %11, %2
  %or.i256 = or i64 %and5.i253, %and7.i255
  %13 = load i64, ptr %arg4, align 8, !tbaa !10
  %14 = load i64, ptr %arg5, align 8, !tbaa !10
  %and5.i259 = and i64 %14, %1
  %and7.i261 = and i64 %13, %2
  %or.i262 = or i64 %and5.i259, %and7.i261
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %arg4, i64 8
  %15 = load i64, ptr %arrayidx34, align 8, !tbaa !10
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arg5, i64 8
  %16 = load i64, ptr %arrayidx35, align 8, !tbaa !10
  %and5.i265 = and i64 %16, %1
  %and7.i267 = and i64 %15, %2
  %or.i268 = or i64 %and5.i265, %and7.i267
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg4, i64 16
  %17 = load i64, ptr %arrayidx36, align 8, !tbaa !10
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %arg5, i64 16
  %18 = load i64, ptr %arrayidx37, align 8, !tbaa !10
  %and5.i271 = and i64 %18, %1
  %and7.i273 = and i64 %17, %2
  %or.i274 = or i64 %and5.i271, %and7.i273
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %arg4, i64 24
  %19 = load i64, ptr %arrayidx38, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %arg5, i64 24
  %20 = load i64, ptr %arrayidx39, align 8, !tbaa !10
  %and5.i277 = and i64 %20, %1
  %and7.i279 = and i64 %19, %2
  %or.i280 = or i64 %and5.i277, %and7.i279
  %add3.i283 = shl i64 %or.i262, 1
  %conv4.i291 = tail call i64 @llvm.fshl.i64(i64 %or.i268, i64 %or.i262, i64 1)
  %conv4.i299 = tail call i64 @llvm.fshl.i64(i64 %or.i274, i64 %or.i268, i64 1)
  %conv4.i307 = tail call i64 @llvm.fshl.i64(i64 %or.i280, i64 %or.i274, i64 1)
  %21 = lshr i64 %or.i280, 63
  %conv.i310 = zext i64 %add3.i283 to i128
  %sub3.i = add nsw i128 %conv.i310, -18446744069414583343
  %shr.i311 = lshr i128 %sub3.i, 64
  %conv4.i312 = trunc i128 %shr.i311 to i8
  %conv5.i313 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i312
  %conv.i314 = zext i64 %conv4.i291 to i128
  %conv1.i315 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i314, -18446744073709551615
  %sub3.i316 = sub nsw i128 %.neg, %conv1.i315
  %shr.i317 = lshr i128 %sub3.i316, 64
  %conv4.i318 = trunc i128 %shr.i317 to i8
  %conv5.i319 = trunc i128 %sub3.i316 to i64
  %sub7.i320 = sub i8 0, %conv4.i318
  %conv.i321 = zext i64 %conv4.i299 to i128
  %conv1.i322 = zext i8 %sub7.i320 to i128
  %.neg674 = add nsw i128 %conv.i321, -18446744073709551615
  %sub3.i323 = sub nsw i128 %.neg674, %conv1.i322
  %shr.i324 = lshr i128 %sub3.i323, 64
  %conv4.i325 = trunc i128 %shr.i324 to i8
  %conv5.i326 = trunc i128 %sub3.i323 to i64
  %sub7.i327 = sub i8 0, %conv4.i325
  %conv.i328 = zext i64 %conv4.i307 to i128
  %conv1.i329 = zext i8 %sub7.i327 to i128
  %.neg675 = add nsw i128 %conv.i328, -18446744073709551615
  %sub3.i330 = sub nsw i128 %.neg675, %conv1.i329
  %shr.i331 = lshr i128 %sub3.i330, 64
  %conv4.i332 = trunc i128 %shr.i331 to i8
  %conv5.i333 = trunc i128 %sub3.i330 to i64
  %sub7.i334 = sub i8 0, %conv4.i332
  %conv.i335 = zext nneg i64 %21 to i128
  %conv1.i336 = zext i8 %sub7.i334 to i128
  %sub3.i337 = sub nsw i128 %conv.i335, %conv1.i336
  %shr.i338 = lshr i128 %sub3.i337, 64
  %conv4.i339 = trunc i128 %shr.i338 to i8
  %conv2.i342 = zext i64 %13 to i128
  %sub3.i343 = sub nsw i128 0, %conv2.i342
  %shr.i344 = lshr i128 %sub3.i343, 64
  %conv4.i345 = trunc i128 %shr.i344 to i8
  %sub7.i347 = sub i8 0, %conv4.i345
  %conv1.i348 = zext i8 %sub7.i347 to i128
  %conv2.i349 = zext i64 %15 to i128
  %22 = add nuw nsw i128 %conv2.i349, %conv1.i348
  %sub3.i350 = sub nsw i128 0, %22
  %shr.i351 = lshr i128 %sub3.i350, 64
  %conv4.i352 = trunc i128 %shr.i351 to i8
  %sub7.i354 = sub i8 0, %conv4.i352
  %conv1.i355 = zext i8 %sub7.i354 to i128
  %conv2.i356 = zext i64 %17 to i128
  %23 = add nuw nsw i128 %conv2.i356, %conv1.i355
  %sub3.i357 = sub nsw i128 0, %23
  %shr.i358 = lshr i128 %sub3.i357, 64
  %conv4.i359 = trunc i128 %shr.i358 to i8
  %sub7.i361 = sub i8 0, %conv4.i359
  %conv1.i362 = zext i8 %sub7.i361 to i128
  %conv2.i363 = zext i64 %19 to i128
  %24 = add nuw nsw i128 %conv1.i362, %conv2.i363
  %sub3.i364 = sub nsw i128 0, %24
  %25 = and i128 %sub3.i364, 4703919738795935662080
  %tobool.i369 = icmp ne i128 %25, 0
  %conv4.i370 = sext i1 %tobool.i369 to i64
  %26 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i370) #8, !srcloc !9
  %not.i372 = xor i64 %conv4.i370, -1
  %27 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i372) #8, !srcloc !9
  %and45 = and i64 %26, -4294968273
  %conv1.i375 = and i128 %sub3.i343, 18446744073709551615
  %conv2.i377 = zext i64 %and45 to i128
  %add3.i378 = add nuw nsw i128 %conv1.i375, %conv2.i377
  %conv4.i379 = trunc i128 %add3.i378 to i64
  %shr.i380 = lshr i128 %add3.i378, 64
  %conv1.i383 = and i128 %sub3.i350, 18446744073709551615
  %conv2.i385 = zext i64 %26 to i128
  %add.i384 = add nuw nsw i128 %conv1.i383, %conv2.i385
  %add3.i386 = add nuw nsw i128 %add.i384, %shr.i380
  %conv4.i387 = trunc i128 %add3.i386 to i64
  %shr.i388 = lshr i128 %add3.i386, 64
  %conv1.i391 = and i128 %sub3.i357, 18446744073709551615
  %add.i392 = add nuw nsw i128 %conv1.i391, %conv2.i385
  %add3.i394 = add nuw nsw i128 %add.i392, %shr.i388
  %conv4.i395 = trunc i128 %add3.i394 to i64
  %shr.i396 = lshr i128 %add3.i394, 64
  %add.i400 = sub nsw i128 %shr.i396, %24
  %28 = trunc i128 %add.i400 to i64
  %conv4.i403 = add i64 %26, %28
  %and5.i408 = and i64 %1, %conv4.i379
  %and7.i410 = and i64 %14, %2
  %or.i411 = or i64 %and5.i408, %and7.i410
  %and5.i414 = and i64 %1, %conv4.i387
  %and7.i416 = and i64 %16, %2
  %or.i417 = or i64 %and5.i414, %and7.i416
  %and5.i420 = and i64 %1, %conv4.i395
  %and7.i422 = and i64 %18, %2
  %or.i423 = or i64 %and5.i420, %and7.i422
  %and5.i426 = and i64 %conv4.i403, %1
  %and7.i428 = and i64 %20, %2
  %or.i429 = or i64 %and5.i426, %and7.i428
  %29 = and i64 %or.i232, 1
  %conv4.i431 = sub nsw i64 0, %29
  %30 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i431) #8, !srcloc !9
  %and5.i432 = and i64 %30, %or.i175
  %not.i433 = add nsw i64 %29, -1
  %31 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i433) #8, !srcloc !9
  %and5.i438 = and i64 %30, %or.i181
  %and5.i444 = and i64 %30, %or.i187
  %and5.i450 = and i64 %30, %or.i193
  %and5.i456 = and i64 %30, %or.i199
  %add.narrowed = add i64 %and5.i432, %or.i232
  %add.narrowed.overflow = icmp ult i64 %add.narrowed, %or.i232
  %conv.i467 = zext i1 %add.narrowed.overflow to i128
  %conv1.i468 = zext i64 %or.i238 to i128
  %conv2.i470 = zext i64 %and5.i438 to i128
  %add.i469 = add nuw nsw i128 %conv2.i470, %conv1.i468
  %add3.i471 = add nuw nsw i128 %add.i469, %conv.i467
  %conv4.i472 = trunc i128 %add3.i471 to i64
  %shr.i473 = lshr i128 %add3.i471, 64
  %conv1.i476 = zext i64 %or.i244 to i128
  %conv2.i478 = zext i64 %and5.i444 to i128
  %add.i477 = add nuw nsw i128 %conv2.i478, %conv1.i476
  %add3.i479 = add nuw nsw i128 %add.i477, %shr.i473
  %conv4.i480 = trunc i128 %add3.i479 to i64
  %shr.i481 = lshr i128 %add3.i479, 64
  %conv1.i484 = zext i64 %or.i250 to i128
  %conv2.i486 = zext i64 %and5.i450 to i128
  %add.i485 = add nuw nsw i128 %conv2.i486, %conv1.i484
  %add3.i487 = add nuw nsw i128 %add.i485, %shr.i481
  %conv4.i488 = trunc i128 %add3.i487 to i64
  %shr.i489 = lshr i128 %add3.i487, 64
  %32 = trunc nuw nsw i128 %shr.i489 to i64
  %33 = add i64 %and5.i456, %or.i256
  %conv4.i496 = add i64 %33, %32
  %and5.i501 = and i64 %30, %or.i262
  %and5.i507 = and i64 %30, %or.i268
  %and5.i513 = and i64 %30, %or.i274
  %and5.i519 = and i64 %30, %or.i280
  %add.narrowed672 = add i64 %or.i411, %and5.i501
  %add.narrowed.overflow673 = icmp ult i64 %add.narrowed672, %or.i411
  %conv.i530 = zext i1 %add.narrowed.overflow673 to i128
  %conv1.i531 = zext i64 %or.i417 to i128
  %conv2.i533 = zext i64 %and5.i507 to i128
  %add.i532 = add nuw nsw i128 %conv.i530, %conv2.i533
  %add3.i534 = add nuw nsw i128 %add.i532, %conv1.i531
  %conv4.i535 = trunc i128 %add3.i534 to i64
  %shr.i536 = lshr i128 %add3.i534, 64
  %conv1.i539 = zext i64 %or.i423 to i128
  %conv2.i541 = zext i64 %and5.i513 to i128
  %add.i540 = add nuw nsw i128 %conv1.i539, %conv2.i541
  %add3.i542 = add nuw nsw i128 %add.i540, %shr.i536
  %conv4.i543 = trunc i128 %add3.i542 to i64
  %shr.i544 = lshr i128 %add3.i542, 64
  %conv1.i547 = zext i64 %or.i429 to i128
  %conv2.i549 = zext i64 %and5.i519 to i128
  %add.i548 = add nuw nsw i128 %conv1.i547, %conv2.i549
  %add3.i550 = add nuw nsw i128 %add.i548, %shr.i544
  %conv4.i551 = trunc i128 %add3.i550 to i64
  %shr.i552 = lshr i128 %add3.i550, 64
  %conv.i554 = zext i64 %add.narrowed672 to i128
  %sub3.i555 = add nsw i128 %conv.i554, -18446744069414583343
  %shr.i556 = lshr i128 %sub3.i555, 64
  %conv4.i557 = trunc i128 %shr.i556 to i8
  %conv5.i558 = trunc i128 %sub3.i555 to i64
  %sub7.i559 = sub i8 0, %conv4.i557
  %conv.i560 = and i128 %add3.i534, 18446744073709551615
  %conv1.i561 = zext i8 %sub7.i559 to i128
  %reass.sub = sub nsw i128 %conv.i560, %conv1.i561
  %sub3.i562 = add nsw i128 %reass.sub, -18446744073709551615
  %shr.i563 = lshr i128 %sub3.i562, 64
  %conv4.i564 = trunc i128 %shr.i563 to i8
  %conv5.i565 = trunc i128 %sub3.i562 to i64
  %sub7.i566 = sub i8 0, %conv4.i564
  %conv.i567 = and i128 %add3.i542, 18446744073709551615
  %conv1.i568 = zext i8 %sub7.i566 to i128
  %.neg677 = add nsw i128 %conv.i567, -18446744073709551615
  %sub3.i569 = sub nsw i128 %.neg677, %conv1.i568
  %shr.i570 = lshr i128 %sub3.i569, 64
  %conv4.i571 = trunc i128 %shr.i570 to i8
  %conv5.i572 = trunc i128 %sub3.i569 to i64
  %sub7.i573 = sub i8 0, %conv4.i571
  %conv.i574 = and i128 %add3.i550, 18446744073709551615
  %conv1.i575 = zext i8 %sub7.i573 to i128
  %.neg678 = add nsw i128 %conv.i574, -18446744073709551615
  %sub3.i576 = sub nsw i128 %.neg678, %conv1.i575
  %shr.i577 = lshr i128 %sub3.i576, 64
  %conv4.i578 = trunc i128 %shr.i577 to i8
  %conv5.i579 = trunc i128 %sub3.i576 to i64
  %sub7.i580 = sub i8 0, %conv4.i578
  %conv1.i582 = zext i8 %sub7.i580 to i128
  %sub3.i583 = sub nsw i128 %shr.i552, %conv1.i582
  %shr.i584 = lshr i128 %sub3.i583, 64
  %conv4.i585 = trunc i128 %shr.i584 to i8
  %add3.i590 = add i64 %or.i, 1
  %or = tail call i64 @llvm.fshl.i64(i64 %conv4.i472, i64 %add.narrowed, i64 63)
  %or58 = tail call i64 @llvm.fshl.i64(i64 %conv4.i480, i64 %conv4.i472, i64 63)
  %or62 = tail call i64 @llvm.fshl.i64(i64 %conv4.i488, i64 %conv4.i480, i64 63)
  %or66 = tail call i64 @llvm.fshl.i64(i64 %conv4.i496, i64 %conv4.i488, i64 63)
  %and67 = and i64 %conv4.i496, -9223372036854775808
  %shr68 = lshr i64 %conv4.i496, 1
  %or69 = or disjoint i64 %and67, %shr68
  %tobool.i594 = icmp ne i8 %conv4.i339, 0
  %conv4.i595 = sext i1 %tobool.i594 to i64
  %34 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i595) #8, !srcloc !9
  %and5.i596 = and i64 %34, %add3.i283
  %not.i597 = xor i64 %conv4.i595, -1
  %35 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i597) #8, !srcloc !9
  %and7.i598 = and i64 %35, %conv5.i313
  %or.i599 = or i64 %and7.i598, %and5.i596
  %and5.i602 = and i64 %34, %conv4.i291
  %and7.i604 = and i64 %35, %conv5.i319
  %or.i605 = or i64 %and7.i604, %and5.i602
  %and5.i608 = and i64 %34, %conv4.i299
  %and7.i610 = and i64 %35, %conv5.i326
  %or.i611 = or i64 %and7.i610, %and5.i608
  %and5.i614 = and i64 %34, %conv4.i307
  %and7.i616 = and i64 %35, %conv5.i333
  %or.i617 = or i64 %and7.i616, %and5.i614
  %tobool.i618 = icmp ne i8 %conv4.i585, 0
  %conv4.i619 = sext i1 %tobool.i618 to i64
  %36 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i619) #8, !srcloc !9
  %and5.i620 = and i64 %add.narrowed672, %36
  %not.i621 = xor i64 %conv4.i619, -1
  %37 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i621) #8, !srcloc !9
  %and7.i622 = and i64 %37, %conv5.i558
  %or.i623 = or i64 %and7.i622, %and5.i620
  %and5.i626 = and i64 %36, %conv4.i535
  %and7.i628 = and i64 %37, %conv5.i565
  %or.i629 = or i64 %and7.i628, %and5.i626
  %and5.i632 = and i64 %36, %conv4.i543
  %and7.i634 = and i64 %37, %conv5.i572
  %or.i635 = or i64 %and7.i634, %and5.i632
  %and5.i638 = and i64 %36, %conv4.i551
  %and7.i640 = and i64 %37, %conv5.i579
  %or.i641 = or i64 %and7.i640, %and5.i638
  store i64 %add3.i590, ptr %out1, align 8, !tbaa !10
  store i64 %or.i175, ptr %out2, align 8, !tbaa !10
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %out2, i64 8
  store i64 %or.i181, ptr %arrayidx71, align 8, !tbaa !10
  %arrayidx72 = getelementptr inbounds nuw i8, ptr %out2, i64 16
  store i64 %or.i187, ptr %arrayidx72, align 8, !tbaa !10
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %out2, i64 24
  store i64 %or.i193, ptr %arrayidx73, align 8, !tbaa !10
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %out2, i64 32
  store i64 %or.i199, ptr %arrayidx74, align 8, !tbaa !10
  store i64 %or, ptr %out3, align 8, !tbaa !10
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %out3, i64 8
  store i64 %or58, ptr %arrayidx76, align 8, !tbaa !10
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %out3, i64 16
  store i64 %or62, ptr %arrayidx77, align 8, !tbaa !10
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %out3, i64 24
  store i64 %or66, ptr %arrayidx78, align 8, !tbaa !10
  %arrayidx79 = getelementptr inbounds nuw i8, ptr %out3, i64 32
  store i64 %or69, ptr %arrayidx79, align 8, !tbaa !10
  store i64 %or.i599, ptr %out4, align 8, !tbaa !10
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %out4, i64 8
  store i64 %or.i605, ptr %arrayidx81, align 8, !tbaa !10
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %out4, i64 16
  store i64 %or.i611, ptr %arrayidx82, align 8, !tbaa !10
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %out4, i64 24
  store i64 %or.i617, ptr %arrayidx83, align 8, !tbaa !10
  store i64 %or.i623, ptr %out5, align 8, !tbaa !10
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %out5, i64 8
  store i64 %or.i629, ptr %arrayidx85, align 8, !tbaa !10
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %out5, i64 16
  store i64 %or.i635, ptr %arrayidx86, align 8, !tbaa !10
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %out5, i64 24
  store i64 %or.i641, ptr %arrayidx87, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_secp256k1_montgomery_divstep_precomp(ptr noundef writeonly captures(none) initializes((0, 32)) %out1) local_unnamed_addr #1 {
entry:
  store i64 -1008344417740628470, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 -7398295031810585211, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 -1702315277486518103, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 2664875547656468233, ptr %arrayidx3, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #7

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind memory(none) }

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
!9 = !{i64 3503}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
