; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @fiat_25519_scalar_value_barrier_u64(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #7, !srcloc !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_25519_scalar_addcarryx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
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
define dso_local void @fiat_25519_scalar_subborrowx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
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
define dso_local void @fiat_25519_scalar_mulx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 8)) %out2, i64 noundef %arg1, i64 noundef %arg2) local_unnamed_addr #1 {
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
define dso_local void @fiat_25519_scalar_cmovznz_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #2 {
entry:
  %tobool = icmp ne i8 %arg1, 0
  %conv4 = sext i1 %tobool to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4) #7, !srcloc !9
  %and5 = and i64 %0, %arg3
  %not = xor i64 %conv4, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not) #7, !srcloc !9
  %and7 = and i64 %1, %arg2
  %or = or i64 %and7, %and5
  store i64 %or, ptr %out1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_scalar_mul(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
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
  %conv2.i119 = mul i64 %8, -3263669768735654373
  %conv.i122 = zext i64 %conv2.i119 to i128
  %mul.i123 = mul i64 %8, -5764607523034234880
  %shr.i125 = lshr i64 %conv2.i119, 4
  %mul.i128 = mul nuw nsw i128 %conv.i122, 1503914060200516822
  %shr.i130 = lshr i128 %mul.i128, 64
  %conv3.i131 = trunc nuw nsw i128 %shr.i130 to i64
  %mul.i133 = mul nuw nsw i128 %conv.i122, 6346243789798364141
  %shr.i135 = lshr i128 %mul.i133, 64
  %conv2.i139 = and i128 %mul.i128, 18446744073709551614
  %add3.i140 = add nuw nsw i128 %shr.i135, %conv2.i139
  %shr.i142 = lshr i128 %add3.i140, 64
  %conv5.i143 = trunc nuw nsw i128 %shr.i142 to i64
  %add9 = add nuw nsw i64 %conv5.i143, %conv3.i131
  %conv2.i146 = and i128 %mul.i133, 18446744073709551615
  %add3.i147 = add nuw nsw i128 %conv2.i146, %conv.i117
  %shr.i149 = lshr i128 %add3.i147, 64
  %conv1.i152 = and i128 %add3.i, 18446744073709551615
  %add.i153 = add nuw nsw i128 %shr.i149, %conv1.i152
  %conv2.i154 = and i128 %add3.i140, 18446744073709551615
  %add3.i155 = add nuw nsw i128 %add.i153, %conv2.i154
  %shr.i157 = lshr i128 %add3.i155, 64
  %conv1.i160 = and i128 %add3.i105, 18446744073709551615
  %add.i161 = add nuw nsw i128 %shr.i157, %conv1.i160
  %conv2.i162 = zext nneg i64 %add9 to i128
  %add3.i163 = add nuw nsw i128 %add.i161, %conv2.i162
  %shr.i165 = lshr i128 %add3.i163, 64
  %conv1.i168 = and i128 %add3.i113, 18446744073709551615
  %conv2.i170 = zext i64 %mul.i123 to i128
  %add.i169 = add nuw nsw i128 %conv1.i168, %conv2.i170
  %add3.i171 = add nuw nsw i128 %add.i169, %shr.i165
  %shr.i173 = lshr i128 %add3.i171, 64
  %conv1.i176 = zext i64 %add to i128
  %conv2.i178 = zext nneg i64 %shr.i125 to i128
  %add.i177 = add nuw nsw i128 %conv1.i176, %conv2.i178
  %add3.i179 = add nuw nsw i128 %add.i177, %shr.i173
  %shr.i181 = lshr i128 %add3.i179, 64
  %conv.i183 = zext i64 %0 to i128
  %mul.i185 = mul nuw i128 %conv1.i, %conv.i183
  %shr.i187 = lshr i128 %mul.i185, 64
  %conv3.i188 = trunc nuw i128 %shr.i187 to i64
  %mul.i191 = mul nuw i128 %conv1.i82, %conv.i183
  %shr.i193 = lshr i128 %mul.i191, 64
  %mul.i197 = mul nuw i128 %conv1.i88, %conv.i183
  %shr.i199 = lshr i128 %mul.i197, 64
  %mul.i203 = mul nuw i128 %conv1.i94, %conv.i183
  %shr.i205 = lshr i128 %mul.i203, 64
  %conv2.i209 = and i128 %mul.i197, 18446744073709551615
  %add3.i210 = add nuw nsw i128 %shr.i205, %conv2.i209
  %shr.i212 = lshr i128 %add3.i210, 64
  %conv2.i217 = and i128 %mul.i191, 18446744073709551615
  %add.i216 = add nuw nsw i128 %shr.i199, %conv2.i217
  %add3.i218 = add nuw nsw i128 %add.i216, %shr.i212
  %shr.i220 = lshr i128 %add3.i218, 64
  %conv2.i225 = and i128 %mul.i185, 18446744073709551615
  %add.i224 = add nuw nsw i128 %shr.i193, %conv2.i225
  %add3.i226 = add nuw nsw i128 %add.i224, %shr.i220
  %shr.i228 = lshr i128 %add3.i226, 64
  %conv5.i229 = trunc nuw nsw i128 %shr.i228 to i64
  %add15 = add nuw i64 %conv5.i229, %conv3.i188
  %conv1.i230 = and i128 %add3.i155, 18446744073709551615
  %conv2.i232 = and i128 %mul.i203, 18446744073709551615
  %add3.i233 = add nuw nsw i128 %conv1.i230, %conv2.i232
  %shr.i235 = lshr i128 %add3.i233, 64
  %conv1.i238 = and i128 %add3.i163, 18446744073709551615
  %conv2.i240 = and i128 %add3.i210, 18446744073709551615
  %add.i239 = add nuw nsw i128 %shr.i235, %conv2.i240
  %add3.i241 = add nuw nsw i128 %add.i239, %conv1.i238
  %shr.i243 = lshr i128 %add3.i241, 64
  %conv1.i246 = and i128 %add3.i171, 18446744073709551615
  %conv2.i248 = and i128 %add3.i218, 18446744073709551615
  %add.i247 = add nuw nsw i128 %shr.i243, %conv2.i248
  %add3.i249 = add nuw nsw i128 %add.i247, %conv1.i246
  %shr.i251 = lshr i128 %add3.i249, 64
  %conv1.i254 = and i128 %add3.i179, 18446744073709551615
  %conv2.i256 = and i128 %add3.i226, 18446744073709551615
  %add.i255 = add nuw nsw i128 %shr.i251, %conv2.i256
  %add3.i257 = add nuw nsw i128 %add.i255, %conv1.i254
  %shr.i259 = lshr i128 %add3.i257, 64
  %conv2.i264 = zext i64 %add15 to i128
  %add.i263 = add nuw nsw i128 %shr.i181, %conv2.i264
  %add3.i265 = add nuw nsw i128 %add.i263, %shr.i259
  %shr.i267 = lshr i128 %add3.i265, 64
  %conv5.i268 = trunc nuw nsw i128 %shr.i267 to i64
  %conv.i269 = and i128 %add3.i233, 18446744073709551615
  %9 = trunc i128 %add3.i233 to i64
  %conv2.i271 = mul i64 %9, -3263669768735654373
  %conv.i274 = zext i64 %conv2.i271 to i128
  %mul.i275 = mul i64 %9, -5764607523034234880
  %shr.i277 = lshr i64 %conv2.i271, 4
  %mul.i280 = mul nuw nsw i128 %conv.i274, 1503914060200516822
  %shr.i282 = lshr i128 %mul.i280, 64
  %conv3.i283 = trunc nuw nsw i128 %shr.i282 to i64
  %mul.i285 = mul nuw nsw i128 %conv.i274, 6346243789798364141
  %shr.i287 = lshr i128 %mul.i285, 64
  %conv2.i291 = and i128 %mul.i280, 18446744073709551614
  %add3.i292 = add nuw nsw i128 %shr.i287, %conv2.i291
  %shr.i294 = lshr i128 %add3.i292, 64
  %conv5.i295 = trunc nuw nsw i128 %shr.i294 to i64
  %add18 = add nuw nsw i64 %conv5.i295, %conv3.i283
  %conv2.i298 = and i128 %mul.i285, 18446744073709551615
  %add3.i299 = add nuw nsw i128 %conv2.i298, %conv.i269
  %shr.i301 = lshr i128 %add3.i299, 64
  %conv1.i304 = and i128 %add3.i241, 18446744073709551615
  %add.i305 = add nuw nsw i128 %shr.i301, %conv1.i304
  %conv2.i306 = and i128 %add3.i292, 18446744073709551615
  %add3.i307 = add nuw nsw i128 %add.i305, %conv2.i306
  %shr.i309 = lshr i128 %add3.i307, 64
  %conv1.i312 = and i128 %add3.i249, 18446744073709551615
  %add.i313 = add nuw nsw i128 %shr.i309, %conv1.i312
  %conv2.i314 = zext nneg i64 %add18 to i128
  %add3.i315 = add nuw nsw i128 %add.i313, %conv2.i314
  %shr.i317 = lshr i128 %add3.i315, 64
  %conv1.i320 = and i128 %add3.i257, 18446744073709551615
  %conv2.i322 = zext i64 %mul.i275 to i128
  %add.i321 = add nuw nsw i128 %conv1.i320, %conv2.i322
  %add3.i323 = add nuw nsw i128 %add.i321, %shr.i317
  %shr.i325 = lshr i128 %add3.i323, 64
  %conv1.i328 = and i128 %add3.i265, 18446744073709551615
  %conv2.i330 = zext nneg i64 %shr.i277 to i128
  %add.i329 = add nuw nsw i128 %conv1.i328, %conv2.i330
  %add3.i331 = add nuw nsw i128 %add.i329, %shr.i325
  %shr.i333 = lshr i128 %add3.i331, 64
  %conv5.i334 = trunc nuw nsw i128 %shr.i333 to i64
  %add21 = add nuw nsw i64 %conv5.i334, %conv5.i268
  %conv.i335 = zext i64 %1 to i128
  %mul.i337 = mul nuw i128 %conv1.i, %conv.i335
  %shr.i339 = lshr i128 %mul.i337, 64
  %conv3.i340 = trunc nuw i128 %shr.i339 to i64
  %mul.i343 = mul nuw i128 %conv1.i82, %conv.i335
  %shr.i345 = lshr i128 %mul.i343, 64
  %mul.i349 = mul nuw i128 %conv1.i88, %conv.i335
  %shr.i351 = lshr i128 %mul.i349, 64
  %mul.i355 = mul nuw i128 %conv1.i94, %conv.i335
  %shr.i357 = lshr i128 %mul.i355, 64
  %conv2.i361 = and i128 %mul.i349, 18446744073709551615
  %add3.i362 = add nuw nsw i128 %shr.i357, %conv2.i361
  %shr.i364 = lshr i128 %add3.i362, 64
  %conv2.i369 = and i128 %mul.i343, 18446744073709551615
  %add.i368 = add nuw nsw i128 %shr.i351, %conv2.i369
  %add3.i370 = add nuw nsw i128 %add.i368, %shr.i364
  %shr.i372 = lshr i128 %add3.i370, 64
  %conv2.i377 = and i128 %mul.i337, 18446744073709551615
  %add.i376 = add nuw nsw i128 %shr.i345, %conv2.i377
  %add3.i378 = add nuw nsw i128 %add.i376, %shr.i372
  %shr.i380 = lshr i128 %add3.i378, 64
  %conv5.i381 = trunc nuw nsw i128 %shr.i380 to i64
  %add27 = add nuw i64 %conv5.i381, %conv3.i340
  %conv1.i382 = and i128 %add3.i307, 18446744073709551615
  %conv2.i384 = and i128 %mul.i355, 18446744073709551615
  %add3.i385 = add nuw nsw i128 %conv1.i382, %conv2.i384
  %shr.i387 = lshr i128 %add3.i385, 64
  %conv1.i390 = and i128 %add3.i315, 18446744073709551615
  %conv2.i392 = and i128 %add3.i362, 18446744073709551615
  %add.i391 = add nuw nsw i128 %shr.i387, %conv2.i392
  %add3.i393 = add nuw nsw i128 %add.i391, %conv1.i390
  %shr.i395 = lshr i128 %add3.i393, 64
  %conv1.i398 = and i128 %add3.i323, 18446744073709551615
  %conv2.i400 = and i128 %add3.i370, 18446744073709551615
  %add.i399 = add nuw nsw i128 %shr.i395, %conv2.i400
  %add3.i401 = add nuw nsw i128 %add.i399, %conv1.i398
  %shr.i403 = lshr i128 %add3.i401, 64
  %conv1.i406 = and i128 %add3.i331, 18446744073709551615
  %conv2.i408 = and i128 %add3.i378, 18446744073709551615
  %add.i407 = add nuw nsw i128 %shr.i403, %conv2.i408
  %add3.i409 = add nuw nsw i128 %add.i407, %conv1.i406
  %shr.i411 = lshr i128 %add3.i409, 64
  %conv1.i414 = zext nneg i64 %add21 to i128
  %conv2.i416 = zext i64 %add27 to i128
  %add.i415 = add nuw nsw i128 %conv1.i414, %conv2.i416
  %add3.i417 = add nuw nsw i128 %add.i415, %shr.i411
  %shr.i419 = lshr i128 %add3.i417, 64
  %conv5.i420 = trunc nuw nsw i128 %shr.i419 to i64
  %conv.i421 = and i128 %add3.i385, 18446744073709551615
  %10 = trunc i128 %add3.i385 to i64
  %conv2.i423 = mul i64 %10, -3263669768735654373
  %conv.i426 = zext i64 %conv2.i423 to i128
  %mul.i427 = mul i64 %10, -5764607523034234880
  %shr.i429 = lshr i64 %conv2.i423, 4
  %mul.i432 = mul nuw nsw i128 %conv.i426, 1503914060200516822
  %shr.i434 = lshr i128 %mul.i432, 64
  %conv3.i435 = trunc nuw nsw i128 %shr.i434 to i64
  %mul.i437 = mul nuw nsw i128 %conv.i426, 6346243789798364141
  %shr.i439 = lshr i128 %mul.i437, 64
  %conv2.i443 = and i128 %mul.i432, 18446744073709551614
  %add3.i444 = add nuw nsw i128 %shr.i439, %conv2.i443
  %shr.i446 = lshr i128 %add3.i444, 64
  %conv5.i447 = trunc nuw nsw i128 %shr.i446 to i64
  %add29 = add nuw nsw i64 %conv5.i447, %conv3.i435
  %conv2.i450 = and i128 %mul.i437, 18446744073709551615
  %add3.i451 = add nuw nsw i128 %conv2.i450, %conv.i421
  %shr.i453 = lshr i128 %add3.i451, 64
  %conv1.i456 = and i128 %add3.i393, 18446744073709551615
  %add.i457 = add nuw nsw i128 %shr.i453, %conv1.i456
  %conv2.i458 = and i128 %add3.i444, 18446744073709551615
  %add3.i459 = add nuw nsw i128 %add.i457, %conv2.i458
  %shr.i461 = lshr i128 %add3.i459, 64
  %conv1.i464 = and i128 %add3.i401, 18446744073709551615
  %add.i465 = add nuw nsw i128 %shr.i461, %conv1.i464
  %conv2.i466 = zext nneg i64 %add29 to i128
  %add3.i467 = add nuw nsw i128 %add.i465, %conv2.i466
  %shr.i469 = lshr i128 %add3.i467, 64
  %conv1.i472 = and i128 %add3.i409, 18446744073709551615
  %conv2.i474 = zext i64 %mul.i427 to i128
  %add.i473 = add nuw nsw i128 %conv1.i472, %conv2.i474
  %add3.i475 = add nuw nsw i128 %add.i473, %shr.i469
  %shr.i477 = lshr i128 %add3.i475, 64
  %conv1.i480 = and i128 %add3.i417, 18446744073709551615
  %conv2.i482 = zext nneg i64 %shr.i429 to i128
  %add.i481 = add nuw nsw i128 %conv1.i480, %conv2.i482
  %add3.i483 = add nuw nsw i128 %add.i481, %shr.i477
  %shr.i485 = lshr i128 %add3.i483, 64
  %conv5.i486 = trunc nuw nsw i128 %shr.i485 to i64
  %add32 = add nuw nsw i64 %conv5.i486, %conv5.i420
  %conv.i487 = zext i64 %2 to i128
  %mul.i489 = mul nuw i128 %conv1.i, %conv.i487
  %shr.i491 = lshr i128 %mul.i489, 64
  %conv3.i492 = trunc nuw i128 %shr.i491 to i64
  %mul.i495 = mul nuw i128 %conv1.i82, %conv.i487
  %shr.i497 = lshr i128 %mul.i495, 64
  %mul.i501 = mul nuw i128 %conv1.i88, %conv.i487
  %shr.i503 = lshr i128 %mul.i501, 64
  %mul.i507 = mul nuw i128 %conv1.i94, %conv.i487
  %shr.i509 = lshr i128 %mul.i507, 64
  %conv2.i513 = and i128 %mul.i501, 18446744073709551615
  %add3.i514 = add nuw nsw i128 %shr.i509, %conv2.i513
  %shr.i516 = lshr i128 %add3.i514, 64
  %conv2.i521 = and i128 %mul.i495, 18446744073709551615
  %add.i520 = add nuw nsw i128 %shr.i503, %conv2.i521
  %add3.i522 = add nuw nsw i128 %add.i520, %shr.i516
  %shr.i524 = lshr i128 %add3.i522, 64
  %conv2.i529 = and i128 %mul.i489, 18446744073709551615
  %add.i528 = add nuw nsw i128 %shr.i497, %conv2.i529
  %add3.i530 = add nuw nsw i128 %add.i528, %shr.i524
  %shr.i532 = lshr i128 %add3.i530, 64
  %conv5.i533 = trunc nuw nsw i128 %shr.i532 to i64
  %add38 = add nuw i64 %conv5.i533, %conv3.i492
  %conv1.i534 = and i128 %add3.i459, 18446744073709551615
  %conv2.i536 = and i128 %mul.i507, 18446744073709551615
  %add3.i537 = add nuw nsw i128 %conv1.i534, %conv2.i536
  %shr.i539 = lshr i128 %add3.i537, 64
  %conv1.i542 = and i128 %add3.i467, 18446744073709551615
  %conv2.i544 = and i128 %add3.i514, 18446744073709551615
  %add.i543 = add nuw nsw i128 %shr.i539, %conv2.i544
  %add3.i545 = add nuw nsw i128 %add.i543, %conv1.i542
  %shr.i547 = lshr i128 %add3.i545, 64
  %conv1.i550 = and i128 %add3.i475, 18446744073709551615
  %conv2.i552 = and i128 %add3.i522, 18446744073709551615
  %add.i551 = add nuw nsw i128 %shr.i547, %conv2.i552
  %add3.i553 = add nuw nsw i128 %add.i551, %conv1.i550
  %shr.i555 = lshr i128 %add3.i553, 64
  %conv1.i558 = and i128 %add3.i483, 18446744073709551615
  %conv2.i560 = and i128 %add3.i530, 18446744073709551615
  %add.i559 = add nuw nsw i128 %shr.i555, %conv2.i560
  %add3.i561 = add nuw nsw i128 %add.i559, %conv1.i558
  %shr.i563 = lshr i128 %add3.i561, 64
  %conv1.i566 = zext nneg i64 %add32 to i128
  %conv2.i568 = zext i64 %add38 to i128
  %add.i567 = add nuw nsw i128 %conv1.i566, %conv2.i568
  %add3.i569 = add nuw nsw i128 %add.i567, %shr.i563
  %shr.i571 = lshr i128 %add3.i569, 64
  %conv5.i572 = trunc nuw nsw i128 %shr.i571 to i64
  %conv.i573 = and i128 %add3.i537, 18446744073709551615
  %11 = trunc i128 %add3.i537 to i64
  %conv2.i575 = mul i64 %11, -3263669768735654373
  %conv.i578 = zext i64 %conv2.i575 to i128
  %mul.i579 = mul i64 %11, -5764607523034234880
  %shr.i581 = lshr i64 %conv2.i575, 4
  %mul.i584 = mul nuw nsw i128 %conv.i578, 1503914060200516822
  %shr.i586 = lshr i128 %mul.i584, 64
  %conv3.i587 = trunc nuw nsw i128 %shr.i586 to i64
  %mul.i589 = mul nuw nsw i128 %conv.i578, 6346243789798364141
  %shr.i591 = lshr i128 %mul.i589, 64
  %conv2.i595 = and i128 %mul.i584, 18446744073709551614
  %add3.i596 = add nuw nsw i128 %shr.i591, %conv2.i595
  %shr.i598 = lshr i128 %add3.i596, 64
  %conv5.i599 = trunc nuw nsw i128 %shr.i598 to i64
  %add40 = add nuw nsw i64 %conv5.i599, %conv3.i587
  %conv2.i602 = and i128 %mul.i589, 18446744073709551615
  %add3.i603 = add nuw nsw i128 %conv2.i602, %conv.i573
  %shr.i605 = lshr i128 %add3.i603, 64
  %conv1.i608 = and i128 %add3.i545, 18446744073709551615
  %add.i609 = add nuw nsw i128 %shr.i605, %conv1.i608
  %conv2.i610 = and i128 %add3.i596, 18446744073709551615
  %add3.i611 = add nuw nsw i128 %add.i609, %conv2.i610
  %conv4.i612 = trunc i128 %add3.i611 to i64
  %shr.i613 = lshr i128 %add3.i611, 64
  %conv1.i616 = and i128 %add3.i553, 18446744073709551615
  %add.i617 = add nuw nsw i128 %shr.i613, %conv1.i616
  %conv2.i618 = zext nneg i64 %add40 to i128
  %add3.i619 = add nuw nsw i128 %add.i617, %conv2.i618
  %conv4.i620 = trunc i128 %add3.i619 to i64
  %shr.i621 = lshr i128 %add3.i619, 64
  %conv1.i624 = and i128 %add3.i561, 18446744073709551615
  %conv2.i626 = zext i64 %mul.i579 to i128
  %add.i625 = add nuw nsw i128 %conv1.i624, %conv2.i626
  %add3.i627 = add nuw nsw i128 %add.i625, %shr.i621
  %conv4.i628 = trunc i128 %add3.i627 to i64
  %shr.i629 = lshr i128 %add3.i627, 64
  %conv1.i632 = and i128 %add3.i569, 18446744073709551615
  %conv2.i634 = zext nneg i64 %shr.i581 to i128
  %add.i633 = add nuw nsw i128 %conv1.i632, %conv2.i634
  %add3.i635 = add nuw nsw i128 %add.i633, %shr.i629
  %conv4.i636 = trunc i128 %add3.i635 to i64
  %shr.i637 = lshr i128 %add3.i635, 64
  %conv5.i638 = trunc nuw nsw i128 %shr.i637 to i64
  %add43 = add nuw nsw i64 %conv5.i638, %conv5.i572
  %conv.i639 = and i128 %add3.i611, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i639, -6346243789798364141
  %shr.i640 = lshr i128 %sub3.i, 64
  %conv4.i641 = trunc i128 %shr.i640 to i8
  %conv5.i642 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i641
  %conv.i643 = and i128 %add3.i619, 18446744073709551615
  %conv1.i644 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i643, -1503914060200516822
  %sub3.i645 = sub nsw i128 %.neg, %conv1.i644
  %shr.i646 = lshr i128 %sub3.i645, 64
  %conv4.i647 = trunc i128 %shr.i646 to i8
  %conv5.i648 = trunc i128 %sub3.i645 to i64
  %sub7.i649 = sub i8 0, %conv4.i647
  %conv.i650 = and i128 %add3.i627, 18446744073709551615
  %conv1.i651 = zext i8 %sub7.i649 to i128
  %sub3.i652 = sub nsw i128 %conv.i650, %conv1.i651
  %shr.i653 = lshr i128 %sub3.i652, 64
  %conv4.i654 = trunc i128 %shr.i653 to i8
  %conv5.i655 = trunc i128 %sub3.i652 to i64
  %sub7.i656 = sub i8 0, %conv4.i654
  %conv.i657 = and i128 %add3.i635, 18446744073709551615
  %conv1.i658 = zext i8 %sub7.i656 to i128
  %12 = or disjoint i128 %conv1.i658, 1152921504606846976
  %sub3.i659 = sub nsw i128 %conv.i657, %12
  %shr.i660 = lshr i128 %sub3.i659, 64
  %conv4.i661 = trunc i128 %shr.i660 to i8
  %conv5.i662 = trunc i128 %sub3.i659 to i64
  %sub7.i663 = sub i8 0, %conv4.i661
  %conv.i664 = zext nneg i64 %add43 to i128
  %conv1.i665 = zext i8 %sub7.i663 to i128
  %sub3.i666 = sub nsw i128 %conv.i664, %conv1.i665
  %shr.i667 = lshr i128 %sub3.i666, 64
  %conv4.i668 = trunc i128 %shr.i667 to i8
  %tobool.i = icmp ne i8 %conv4.i668, 0
  %conv4.i671 = sext i1 %tobool.i to i64
  %13 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i671) #7, !srcloc !9
  %and5.i = and i64 %13, %conv4.i612
  %not.i = xor i64 %conv4.i671, -1
  %14 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %14, %conv5.i642
  %or.i = or i64 %and7.i, %and5.i
  %and5.i674 = and i64 %13, %conv4.i620
  %and7.i676 = and i64 %14, %conv5.i648
  %or.i677 = or i64 %and7.i676, %and5.i674
  %and5.i680 = and i64 %13, %conv4.i628
  %and7.i682 = and i64 %14, %conv5.i655
  %or.i683 = or i64 %and7.i682, %and5.i680
  %and5.i686 = and i64 %13, %conv4.i636
  %and7.i688 = and i64 %14, %conv5.i662
  %or.i689 = or i64 %and7.i688, %and5.i686
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i677, ptr %arrayidx45, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i683, ptr %arrayidx46, align 8, !tbaa !10
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i689, ptr %arrayidx47, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_scalar_square(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
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
  %conv2.i120 = mul i64 %4, -3263669768735654373
  %conv.i123 = zext i64 %conv2.i120 to i128
  %mul.i124 = mul i64 %4, -5764607523034234880
  %shr.i126 = lshr i64 %conv2.i120, 4
  %mul.i129 = mul nuw nsw i128 %conv.i123, 1503914060200516822
  %shr.i131 = lshr i128 %mul.i129, 64
  %conv3.i132 = trunc nuw nsw i128 %shr.i131 to i64
  %mul.i134 = mul nuw nsw i128 %conv.i123, 6346243789798364141
  %shr.i136 = lshr i128 %mul.i134, 64
  %conv2.i140 = and i128 %mul.i129, 18446744073709551614
  %add3.i141 = add nuw nsw i128 %shr.i136, %conv2.i140
  %shr.i143 = lshr i128 %add3.i141, 64
  %conv5.i144 = trunc nuw nsw i128 %shr.i143 to i64
  %add9 = add nuw nsw i64 %conv5.i144, %conv3.i132
  %conv2.i147 = and i128 %mul.i134, 18446744073709551615
  %add3.i148 = add nuw nsw i128 %conv2.i147, %conv.i118
  %shr.i150 = lshr i128 %add3.i148, 64
  %conv1.i153 = and i128 %add3.i, 18446744073709551615
  %add.i154 = add nuw nsw i128 %shr.i150, %conv1.i153
  %conv2.i155 = and i128 %add3.i141, 18446744073709551615
  %add3.i156 = add nuw nsw i128 %add.i154, %conv2.i155
  %shr.i158 = lshr i128 %add3.i156, 64
  %conv1.i161 = and i128 %add3.i106, 18446744073709551615
  %add.i162 = add nuw nsw i128 %shr.i158, %conv1.i161
  %conv2.i163 = zext nneg i64 %add9 to i128
  %add3.i164 = add nuw nsw i128 %add.i162, %conv2.i163
  %shr.i166 = lshr i128 %add3.i164, 64
  %conv1.i169 = and i128 %add3.i114, 18446744073709551615
  %conv2.i171 = zext i64 %mul.i124 to i128
  %add.i170 = add nuw nsw i128 %conv1.i169, %conv2.i171
  %add3.i172 = add nuw nsw i128 %add.i170, %shr.i166
  %shr.i174 = lshr i128 %add3.i172, 64
  %conv1.i177 = zext i64 %add to i128
  %conv2.i179 = zext nneg i64 %shr.i126 to i128
  %add.i178 = add nuw nsw i128 %conv1.i177, %conv2.i179
  %add3.i180 = add nuw nsw i128 %add.i178, %shr.i174
  %shr.i182 = lshr i128 %add3.i180, 64
  %mul.i186 = mul nuw i128 %conv1.i, %conv1.i89
  %shr.i188 = lshr i128 %mul.i186, 64
  %conv3.i189 = trunc nuw i128 %shr.i188 to i64
  %mul.i192 = mul nuw i128 %conv1.i83, %conv1.i89
  %shr.i194 = lshr i128 %mul.i192, 64
  %mul.i198 = mul nuw i128 %conv1.i89, %conv1.i89
  %shr.i200 = lshr i128 %mul.i198, 64
  %conv2.i210 = and i128 %mul.i198, 18446744073709551615
  %add3.i211 = add nuw nsw i128 %shr.i92, %conv2.i210
  %shr.i213 = lshr i128 %add3.i211, 64
  %conv2.i218 = and i128 %mul.i192, 18446744073709551615
  %add.i217 = add nuw nsw i128 %conv2.i218, %shr.i200
  %add3.i219 = add nuw nsw i128 %add.i217, %shr.i213
  %shr.i221 = lshr i128 %add3.i219, 64
  %conv2.i226 = and i128 %mul.i186, 18446744073709551615
  %add.i225 = add nuw nsw i128 %conv2.i226, %shr.i194
  %add3.i227 = add nuw nsw i128 %add.i225, %shr.i221
  %shr.i229 = lshr i128 %add3.i227, 64
  %conv5.i230 = trunc nuw nsw i128 %shr.i229 to i64
  %add15 = add nuw i64 %conv5.i230, %conv3.i189
  %conv1.i231 = and i128 %add3.i156, 18446744073709551615
  %add3.i234 = add nuw nsw i128 %conv1.i231, %conv2.i101
  %shr.i236 = lshr i128 %add3.i234, 64
  %conv1.i239 = and i128 %add3.i164, 18446744073709551615
  %conv2.i241 = and i128 %add3.i211, 18446744073709551615
  %add.i240 = add nuw nsw i128 %shr.i236, %conv2.i241
  %add3.i242 = add nuw nsw i128 %add.i240, %conv1.i239
  %shr.i244 = lshr i128 %add3.i242, 64
  %conv1.i247 = and i128 %add3.i172, 18446744073709551615
  %conv2.i249 = and i128 %add3.i219, 18446744073709551615
  %add.i248 = add nuw nsw i128 %shr.i244, %conv2.i249
  %add3.i250 = add nuw nsw i128 %add.i248, %conv1.i247
  %shr.i252 = lshr i128 %add3.i250, 64
  %conv1.i255 = and i128 %add3.i180, 18446744073709551615
  %conv2.i257 = and i128 %add3.i227, 18446744073709551615
  %add.i256 = add nuw nsw i128 %shr.i252, %conv2.i257
  %add3.i258 = add nuw nsw i128 %add.i256, %conv1.i255
  %shr.i260 = lshr i128 %add3.i258, 64
  %conv2.i265 = zext i64 %add15 to i128
  %add.i264 = add nuw nsw i128 %shr.i182, %conv2.i265
  %add3.i266 = add nuw nsw i128 %add.i264, %shr.i260
  %shr.i268 = lshr i128 %add3.i266, 64
  %conv5.i269 = trunc nuw nsw i128 %shr.i268 to i64
  %conv.i270 = and i128 %add3.i234, 18446744073709551615
  %5 = trunc i128 %add3.i234 to i64
  %conv2.i272 = mul i64 %5, -3263669768735654373
  %conv.i275 = zext i64 %conv2.i272 to i128
  %mul.i276 = mul i64 %5, -5764607523034234880
  %shr.i278 = lshr i64 %conv2.i272, 4
  %mul.i281 = mul nuw nsw i128 %conv.i275, 1503914060200516822
  %shr.i283 = lshr i128 %mul.i281, 64
  %conv3.i284 = trunc nuw nsw i128 %shr.i283 to i64
  %mul.i286 = mul nuw nsw i128 %conv.i275, 6346243789798364141
  %shr.i288 = lshr i128 %mul.i286, 64
  %conv2.i292 = and i128 %mul.i281, 18446744073709551614
  %add3.i293 = add nuw nsw i128 %shr.i288, %conv2.i292
  %shr.i295 = lshr i128 %add3.i293, 64
  %conv5.i296 = trunc nuw nsw i128 %shr.i295 to i64
  %add18 = add nuw nsw i64 %conv5.i296, %conv3.i284
  %conv2.i299 = and i128 %mul.i286, 18446744073709551615
  %add3.i300 = add nuw nsw i128 %conv2.i299, %conv.i270
  %shr.i302 = lshr i128 %add3.i300, 64
  %conv1.i305 = and i128 %add3.i242, 18446744073709551615
  %add.i306 = add nuw nsw i128 %shr.i302, %conv1.i305
  %conv2.i307 = and i128 %add3.i293, 18446744073709551615
  %add3.i308 = add nuw nsw i128 %add.i306, %conv2.i307
  %shr.i310 = lshr i128 %add3.i308, 64
  %conv1.i313 = and i128 %add3.i250, 18446744073709551615
  %add.i314 = add nuw nsw i128 %shr.i310, %conv1.i313
  %conv2.i315 = zext nneg i64 %add18 to i128
  %add3.i316 = add nuw nsw i128 %add.i314, %conv2.i315
  %shr.i318 = lshr i128 %add3.i316, 64
  %conv1.i321 = and i128 %add3.i258, 18446744073709551615
  %conv2.i323 = zext i64 %mul.i276 to i128
  %add.i322 = add nuw nsw i128 %conv1.i321, %conv2.i323
  %add3.i324 = add nuw nsw i128 %add.i322, %shr.i318
  %shr.i326 = lshr i128 %add3.i324, 64
  %conv1.i329 = and i128 %add3.i266, 18446744073709551615
  %conv2.i331 = zext nneg i64 %shr.i278 to i128
  %add.i330 = add nuw nsw i128 %conv1.i329, %conv2.i331
  %add3.i332 = add nuw nsw i128 %add.i330, %shr.i326
  %shr.i334 = lshr i128 %add3.i332, 64
  %conv5.i335 = trunc nuw nsw i128 %shr.i334 to i64
  %add21 = add nuw nsw i64 %conv5.i335, %conv5.i269
  %mul.i338 = mul nuw i128 %conv1.i, %conv1.i83
  %shr.i340 = lshr i128 %mul.i338, 64
  %conv3.i341 = trunc nuw i128 %shr.i340 to i64
  %mul.i344 = mul nuw i128 %conv1.i83, %conv1.i83
  %shr.i346 = lshr i128 %mul.i344, 64
  %add3.i363 = add nuw nsw i128 %shr.i86, %conv2.i218
  %shr.i365 = lshr i128 %add3.i363, 64
  %conv2.i370 = and i128 %mul.i344, 18446744073709551615
  %add.i369 = add nuw nsw i128 %conv2.i370, %shr.i194
  %add3.i371 = add nuw nsw i128 %add.i369, %shr.i365
  %shr.i373 = lshr i128 %add3.i371, 64
  %conv2.i378 = and i128 %mul.i338, 18446744073709551615
  %add.i377 = add nuw nsw i128 %conv2.i378, %shr.i346
  %add3.i379 = add nuw nsw i128 %add.i377, %shr.i373
  %shr.i381 = lshr i128 %add3.i379, 64
  %conv5.i382 = trunc nuw nsw i128 %shr.i381 to i64
  %add27 = add nuw i64 %conv5.i382, %conv3.i341
  %conv1.i383 = and i128 %add3.i308, 18446744073709551615
  %add3.i386 = add nuw nsw i128 %conv1.i383, %conv2.i105
  %shr.i388 = lshr i128 %add3.i386, 64
  %conv1.i391 = and i128 %add3.i316, 18446744073709551615
  %conv2.i393 = and i128 %add3.i363, 18446744073709551615
  %add.i392 = add nuw nsw i128 %shr.i388, %conv2.i393
  %add3.i394 = add nuw nsw i128 %add.i392, %conv1.i391
  %shr.i396 = lshr i128 %add3.i394, 64
  %conv1.i399 = and i128 %add3.i324, 18446744073709551615
  %conv2.i401 = and i128 %add3.i371, 18446744073709551615
  %add.i400 = add nuw nsw i128 %shr.i396, %conv2.i401
  %add3.i402 = add nuw nsw i128 %add.i400, %conv1.i399
  %shr.i404 = lshr i128 %add3.i402, 64
  %conv1.i407 = and i128 %add3.i332, 18446744073709551615
  %conv2.i409 = and i128 %add3.i379, 18446744073709551615
  %add.i408 = add nuw nsw i128 %shr.i404, %conv2.i409
  %add3.i410 = add nuw nsw i128 %add.i408, %conv1.i407
  %shr.i412 = lshr i128 %add3.i410, 64
  %conv1.i415 = zext nneg i64 %add21 to i128
  %conv2.i417 = zext i64 %add27 to i128
  %add.i416 = add nuw nsw i128 %conv1.i415, %conv2.i417
  %add3.i418 = add nuw nsw i128 %add.i416, %shr.i412
  %shr.i420 = lshr i128 %add3.i418, 64
  %conv5.i421 = trunc nuw nsw i128 %shr.i420 to i64
  %conv.i422 = and i128 %add3.i386, 18446744073709551615
  %6 = trunc i128 %add3.i386 to i64
  %conv2.i424 = mul i64 %6, -3263669768735654373
  %conv.i427 = zext i64 %conv2.i424 to i128
  %mul.i428 = mul i64 %6, -5764607523034234880
  %shr.i430 = lshr i64 %conv2.i424, 4
  %mul.i433 = mul nuw nsw i128 %conv.i427, 1503914060200516822
  %shr.i435 = lshr i128 %mul.i433, 64
  %conv3.i436 = trunc nuw nsw i128 %shr.i435 to i64
  %mul.i438 = mul nuw nsw i128 %conv.i427, 6346243789798364141
  %shr.i440 = lshr i128 %mul.i438, 64
  %conv2.i444 = and i128 %mul.i433, 18446744073709551614
  %add3.i445 = add nuw nsw i128 %shr.i440, %conv2.i444
  %shr.i447 = lshr i128 %add3.i445, 64
  %conv5.i448 = trunc nuw nsw i128 %shr.i447 to i64
  %add29 = add nuw nsw i64 %conv5.i448, %conv3.i436
  %conv2.i451 = and i128 %mul.i438, 18446744073709551615
  %add3.i452 = add nuw nsw i128 %conv2.i451, %conv.i422
  %shr.i454 = lshr i128 %add3.i452, 64
  %conv1.i457 = and i128 %add3.i394, 18446744073709551615
  %add.i458 = add nuw nsw i128 %shr.i454, %conv1.i457
  %conv2.i459 = and i128 %add3.i445, 18446744073709551615
  %add3.i460 = add nuw nsw i128 %add.i458, %conv2.i459
  %shr.i462 = lshr i128 %add3.i460, 64
  %conv1.i465 = and i128 %add3.i402, 18446744073709551615
  %add.i466 = add nuw nsw i128 %shr.i462, %conv1.i465
  %conv2.i467 = zext nneg i64 %add29 to i128
  %add3.i468 = add nuw nsw i128 %add.i466, %conv2.i467
  %shr.i470 = lshr i128 %add3.i468, 64
  %conv1.i473 = and i128 %add3.i410, 18446744073709551615
  %conv2.i475 = zext i64 %mul.i428 to i128
  %add.i474 = add nuw nsw i128 %conv1.i473, %conv2.i475
  %add3.i476 = add nuw nsw i128 %add.i474, %shr.i470
  %shr.i478 = lshr i128 %add3.i476, 64
  %conv1.i481 = and i128 %add3.i418, 18446744073709551615
  %conv2.i483 = zext nneg i64 %shr.i430 to i128
  %add.i482 = add nuw nsw i128 %conv1.i481, %conv2.i483
  %add3.i484 = add nuw nsw i128 %add.i482, %shr.i478
  %shr.i486 = lshr i128 %add3.i484, 64
  %conv5.i487 = trunc nuw nsw i128 %shr.i486 to i64
  %add32 = add nuw nsw i64 %conv5.i487, %conv5.i421
  %mul.i490 = mul nuw i128 %conv1.i, %conv1.i
  %shr.i492 = lshr i128 %mul.i490, 64
  %conv3.i493 = trunc nuw i128 %shr.i492 to i64
  %add3.i515 = add nuw nsw i128 %shr.i, %conv2.i226
  %shr.i517 = lshr i128 %add3.i515, 64
  %add.i521 = add nuw nsw i128 %conv2.i378, %shr.i188
  %add3.i523 = add nuw nsw i128 %add.i521, %shr.i517
  %shr.i525 = lshr i128 %add3.i523, 64
  %conv2.i530 = and i128 %mul.i490, 18446744073709551615
  %add.i529 = add nuw nsw i128 %conv2.i530, %shr.i340
  %add3.i531 = add nuw nsw i128 %add.i529, %shr.i525
  %shr.i533 = lshr i128 %add3.i531, 64
  %conv5.i534 = trunc nuw nsw i128 %shr.i533 to i64
  %add38 = add nuw i64 %conv5.i534, %conv3.i493
  %conv1.i535 = and i128 %add3.i460, 18446744073709551615
  %add3.i538 = add nuw nsw i128 %conv1.i535, %conv2.i113
  %shr.i540 = lshr i128 %add3.i538, 64
  %conv1.i543 = and i128 %add3.i468, 18446744073709551615
  %conv2.i545 = and i128 %add3.i515, 18446744073709551615
  %add.i544 = add nuw nsw i128 %shr.i540, %conv2.i545
  %add3.i546 = add nuw nsw i128 %add.i544, %conv1.i543
  %shr.i548 = lshr i128 %add3.i546, 64
  %conv1.i551 = and i128 %add3.i476, 18446744073709551615
  %conv2.i553 = and i128 %add3.i523, 18446744073709551615
  %add.i552 = add nuw nsw i128 %shr.i548, %conv2.i553
  %add3.i554 = add nuw nsw i128 %add.i552, %conv1.i551
  %shr.i556 = lshr i128 %add3.i554, 64
  %conv1.i559 = and i128 %add3.i484, 18446744073709551615
  %conv2.i561 = and i128 %add3.i531, 18446744073709551615
  %add.i560 = add nuw nsw i128 %shr.i556, %conv2.i561
  %add3.i562 = add nuw nsw i128 %add.i560, %conv1.i559
  %shr.i564 = lshr i128 %add3.i562, 64
  %conv1.i567 = zext nneg i64 %add32 to i128
  %conv2.i569 = zext i64 %add38 to i128
  %add.i568 = add nuw nsw i128 %conv1.i567, %conv2.i569
  %add3.i570 = add nuw nsw i128 %add.i568, %shr.i564
  %shr.i572 = lshr i128 %add3.i570, 64
  %conv5.i573 = trunc nuw nsw i128 %shr.i572 to i64
  %conv.i574 = and i128 %add3.i538, 18446744073709551615
  %7 = trunc i128 %add3.i538 to i64
  %conv2.i576 = mul i64 %7, -3263669768735654373
  %conv.i579 = zext i64 %conv2.i576 to i128
  %mul.i580 = mul i64 %7, -5764607523034234880
  %shr.i582 = lshr i64 %conv2.i576, 4
  %mul.i585 = mul nuw nsw i128 %conv.i579, 1503914060200516822
  %shr.i587 = lshr i128 %mul.i585, 64
  %conv3.i588 = trunc nuw nsw i128 %shr.i587 to i64
  %mul.i590 = mul nuw nsw i128 %conv.i579, 6346243789798364141
  %shr.i592 = lshr i128 %mul.i590, 64
  %conv2.i596 = and i128 %mul.i585, 18446744073709551614
  %add3.i597 = add nuw nsw i128 %shr.i592, %conv2.i596
  %shr.i599 = lshr i128 %add3.i597, 64
  %conv5.i600 = trunc nuw nsw i128 %shr.i599 to i64
  %add40 = add nuw nsw i64 %conv5.i600, %conv3.i588
  %conv2.i603 = and i128 %mul.i590, 18446744073709551615
  %add3.i604 = add nuw nsw i128 %conv2.i603, %conv.i574
  %shr.i606 = lshr i128 %add3.i604, 64
  %conv1.i609 = and i128 %add3.i546, 18446744073709551615
  %add.i610 = add nuw nsw i128 %shr.i606, %conv1.i609
  %conv2.i611 = and i128 %add3.i597, 18446744073709551615
  %add3.i612 = add nuw nsw i128 %add.i610, %conv2.i611
  %conv4.i613 = trunc i128 %add3.i612 to i64
  %shr.i614 = lshr i128 %add3.i612, 64
  %conv1.i617 = and i128 %add3.i554, 18446744073709551615
  %add.i618 = add nuw nsw i128 %shr.i614, %conv1.i617
  %conv2.i619 = zext nneg i64 %add40 to i128
  %add3.i620 = add nuw nsw i128 %add.i618, %conv2.i619
  %conv4.i621 = trunc i128 %add3.i620 to i64
  %shr.i622 = lshr i128 %add3.i620, 64
  %conv1.i625 = and i128 %add3.i562, 18446744073709551615
  %conv2.i627 = zext i64 %mul.i580 to i128
  %add.i626 = add nuw nsw i128 %conv1.i625, %conv2.i627
  %add3.i628 = add nuw nsw i128 %add.i626, %shr.i622
  %conv4.i629 = trunc i128 %add3.i628 to i64
  %shr.i630 = lshr i128 %add3.i628, 64
  %conv1.i633 = and i128 %add3.i570, 18446744073709551615
  %conv2.i635 = zext nneg i64 %shr.i582 to i128
  %add.i634 = add nuw nsw i128 %conv1.i633, %conv2.i635
  %add3.i636 = add nuw nsw i128 %add.i634, %shr.i630
  %conv4.i637 = trunc i128 %add3.i636 to i64
  %shr.i638 = lshr i128 %add3.i636, 64
  %conv5.i639 = trunc nuw nsw i128 %shr.i638 to i64
  %add43 = add nuw nsw i64 %conv5.i639, %conv5.i573
  %conv.i640 = and i128 %add3.i612, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i640, -6346243789798364141
  %shr.i641 = lshr i128 %sub3.i, 64
  %conv4.i642 = trunc i128 %shr.i641 to i8
  %conv5.i643 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i642
  %conv.i644 = and i128 %add3.i620, 18446744073709551615
  %conv1.i645 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i644, -1503914060200516822
  %sub3.i646 = sub nsw i128 %.neg, %conv1.i645
  %shr.i647 = lshr i128 %sub3.i646, 64
  %conv4.i648 = trunc i128 %shr.i647 to i8
  %conv5.i649 = trunc i128 %sub3.i646 to i64
  %sub7.i650 = sub i8 0, %conv4.i648
  %conv.i651 = and i128 %add3.i628, 18446744073709551615
  %conv1.i652 = zext i8 %sub7.i650 to i128
  %sub3.i653 = sub nsw i128 %conv.i651, %conv1.i652
  %shr.i654 = lshr i128 %sub3.i653, 64
  %conv4.i655 = trunc i128 %shr.i654 to i8
  %conv5.i656 = trunc i128 %sub3.i653 to i64
  %sub7.i657 = sub i8 0, %conv4.i655
  %conv.i658 = and i128 %add3.i636, 18446744073709551615
  %conv1.i659 = zext i8 %sub7.i657 to i128
  %8 = or disjoint i128 %conv1.i659, 1152921504606846976
  %sub3.i660 = sub nsw i128 %conv.i658, %8
  %shr.i661 = lshr i128 %sub3.i660, 64
  %conv4.i662 = trunc i128 %shr.i661 to i8
  %conv5.i663 = trunc i128 %sub3.i660 to i64
  %sub7.i664 = sub i8 0, %conv4.i662
  %conv.i665 = zext nneg i64 %add43 to i128
  %conv1.i666 = zext i8 %sub7.i664 to i128
  %sub3.i667 = sub nsw i128 %conv.i665, %conv1.i666
  %shr.i668 = lshr i128 %sub3.i667, 64
  %conv4.i669 = trunc i128 %shr.i668 to i8
  %tobool.i = icmp ne i8 %conv4.i669, 0
  %conv4.i672 = sext i1 %tobool.i to i64
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i672) #7, !srcloc !9
  %and5.i = and i64 %9, %conv4.i613
  %not.i = xor i64 %conv4.i672, -1
  %10 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %10, %conv5.i643
  %or.i = or i64 %and7.i, %and5.i
  %and5.i675 = and i64 %9, %conv4.i621
  %and7.i677 = and i64 %10, %conv5.i649
  %or.i678 = or i64 %and7.i677, %and5.i675
  %and5.i681 = and i64 %9, %conv4.i629
  %and7.i683 = and i64 %10, %conv5.i656
  %or.i684 = or i64 %and7.i683, %and5.i681
  %and5.i687 = and i64 %9, %conv4.i637
  %and7.i689 = and i64 %10, %conv5.i663
  %or.i690 = or i64 %and7.i689, %and5.i687
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i678, ptr %arrayidx45, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i684, ptr %arrayidx46, align 8, !tbaa !10
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i690, ptr %arrayidx47, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_scalar_add(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
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
  %sub3.i = add nsw i128 %conv.i43, -6346243789798364141
  %shr.i44 = lshr i128 %sub3.i, 64
  %conv4.i45 = trunc i128 %shr.i44 to i8
  %conv5.i46 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i45
  %conv.i47 = and i128 %add3.i23, 18446744073709551615
  %conv1.i48 = zext i8 %sub7.i to i128
  %reass.sub = sub nsw i128 %conv.i47, %conv1.i48
  %sub3.i49 = add nsw i128 %reass.sub, -1503914060200516822
  %shr.i50 = lshr i128 %sub3.i49, 64
  %conv4.i51 = trunc i128 %shr.i50 to i8
  %conv5.i52 = trunc i128 %sub3.i49 to i64
  %sub7.i53 = sub i8 0, %conv4.i51
  %conv.i54 = and i128 %add3.i31, 18446744073709551615
  %conv1.i55 = zext i8 %sub7.i53 to i128
  %sub3.i56 = sub nsw i128 %conv.i54, %conv1.i55
  %shr.i57 = lshr i128 %sub3.i56, 64
  %conv4.i58 = trunc i128 %shr.i57 to i8
  %conv5.i59 = trunc i128 %sub3.i56 to i64
  %sub7.i60 = sub i8 0, %conv4.i58
  %conv.i61 = and i128 %add3.i39, 18446744073709551615
  %conv1.i62 = zext i8 %sub7.i60 to i128
  %8 = or disjoint i128 %conv1.i62, 1152921504606846976
  %sub3.i63 = sub nsw i128 %conv.i61, %8
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
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i75) #7, !srcloc !9
  %and5.i = and i64 %9, %add.narrowed
  %not.i = xor i64 %conv4.i75, -1
  %10 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %10, %conv5.i46
  %or.i = or i64 %and7.i, %and5.i
  %and5.i78 = and i64 %9, %conv4.i24
  %and7.i80 = and i64 %10, %conv5.i52
  %or.i81 = or i64 %and7.i80, %and5.i78
  %and5.i84 = and i64 %9, %conv4.i32
  %and7.i86 = and i64 %10, %conv5.i59
  %or.i87 = or i64 %and7.i86, %and5.i84
  %and5.i90 = and i64 %9, %conv4.i40
  %and7.i92 = and i64 %10, %conv5.i66
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
define dso_local void @fiat_25519_scalar_sub(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
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
  %conv.i23 = zext i64 %2 to i128
  %conv1.i = zext i8 %sub7.i to i128
  %conv2.i24 = zext i64 %3 to i128
  %4 = add nuw nsw i128 %conv2.i24, %conv1.i
  %sub3.i25 = sub nsw i128 %conv.i23, %4
  %shr.i26 = lshr i128 %sub3.i25, 64
  %conv4.i27 = trunc i128 %shr.i26 to i8
  %sub7.i29 = sub i8 0, %conv4.i27
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %5 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %6 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv.i30 = zext i64 %5 to i128
  %conv1.i31 = zext i8 %sub7.i29 to i128
  %conv2.i32 = zext i64 %6 to i128
  %7 = add nuw nsw i128 %conv2.i32, %conv1.i31
  %sub3.i33 = sub nsw i128 %conv.i30, %7
  %shr.i34 = lshr i128 %sub3.i33, 64
  %conv4.i35 = trunc i128 %shr.i34 to i8
  %sub7.i37 = sub i8 0, %conv4.i35
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %8 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %9 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %conv.i38 = zext i64 %8 to i128
  %conv1.i39 = zext i8 %sub7.i37 to i128
  %conv2.i40 = zext i64 %9 to i128
  %10 = add nuw nsw i128 %conv2.i40, %conv1.i39
  %sub3.i41 = sub nsw i128 %conv.i38, %10
  %11 = and i128 %sub3.i41, 4703919738795935662080
  %tobool.i = icmp ne i128 %11, 0
  %conv4.i46 = sext i1 %tobool.i to i64
  %12 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i46) #7, !srcloc !9
  %not.i = xor i64 %conv4.i46, -1
  %13 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and = and i64 %12, 6346243789798364141
  %conv1.i47 = and i128 %sub3.i, 18446744073709551615
  %conv2.i48 = zext nneg i64 %and to i128
  %add3.i = add nuw nsw i128 %conv1.i47, %conv2.i48
  %conv4.i49 = trunc i128 %add3.i to i64
  %shr.i50 = lshr i128 %add3.i, 64
  %and8 = and i64 %12, 1503914060200516822
  %conv1.i53 = and i128 %sub3.i25, 18446744073709551615
  %conv2.i54 = zext nneg i64 %and8 to i128
  %add.i = add nuw nsw i128 %conv1.i53, %conv2.i54
  %add3.i55 = add nuw nsw i128 %add.i, %shr.i50
  %conv4.i56 = trunc i128 %add3.i55 to i64
  %shr.i57 = lshr i128 %add3.i55, 64
  %conv1.i60 = and i128 %sub3.i33, 18446744073709551615
  %add.i61 = add nuw nsw i128 %shr.i57, %conv1.i60
  %conv4.i63 = trunc i128 %add.i61 to i64
  %shr.i64 = lshr i128 %add.i61, 64
  %and9 = and i64 %12, 1152921504606846976
  %add.i68 = add nsw i128 %shr.i64, %sub3.i41
  %14 = trunc i128 %add.i68 to i64
  %conv4.i71 = add i64 %and9, %14
  store i64 %conv4.i49, ptr %out1, align 8, !tbaa !10
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i56, ptr %arrayidx11, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i63, ptr %arrayidx12, align 8, !tbaa !10
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i71, ptr %arrayidx13, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_scalar_opp(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
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
  %conv2.i16 = zext i64 %1 to i128
  %2 = add nuw nsw i128 %conv2.i16, %conv1.i
  %sub3.i17 = sub nsw i128 0, %2
  %shr.i18 = lshr i128 %sub3.i17, 64
  %conv4.i19 = trunc i128 %shr.i18 to i8
  %sub7.i21 = sub i8 0, %conv4.i19
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %3 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %conv1.i22 = zext i8 %sub7.i21 to i128
  %conv2.i23 = zext i64 %3 to i128
  %4 = add nuw nsw i128 %conv2.i23, %conv1.i22
  %sub3.i24 = sub nsw i128 0, %4
  %shr.i25 = lshr i128 %sub3.i24, 64
  %conv4.i26 = trunc i128 %shr.i25 to i8
  %sub7.i28 = sub i8 0, %conv4.i26
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %5 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv1.i29 = zext i8 %sub7.i28 to i128
  %conv2.i30 = zext i64 %5 to i128
  %6 = add nuw nsw i128 %conv1.i29, %conv2.i30
  %sub3.i31 = sub nsw i128 0, %6
  %7 = and i128 %sub3.i31, 4703919738795935662080
  %tobool.i = icmp ne i128 %7, 0
  %conv4.i36 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i36) #7, !srcloc !9
  %not.i = xor i64 %conv4.i36, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and = and i64 %8, 6346243789798364141
  %conv1.i37 = and i128 %sub3.i, 18446744073709551615
  %conv2.i38 = zext nneg i64 %and to i128
  %add3.i = add nuw nsw i128 %conv1.i37, %conv2.i38
  %conv4.i39 = trunc i128 %add3.i to i64
  %shr.i40 = lshr i128 %add3.i, 64
  %and4 = and i64 %8, 1503914060200516822
  %conv1.i42 = and i128 %sub3.i17, 18446744073709551615
  %conv2.i43 = zext nneg i64 %and4 to i128
  %add.i = add nuw nsw i128 %conv1.i42, %conv2.i43
  %add3.i44 = add nuw nsw i128 %add.i, %shr.i40
  %conv4.i45 = trunc i128 %add3.i44 to i64
  %shr.i46 = lshr i128 %add3.i44, 64
  %conv1.i49 = and i128 %sub3.i24, 18446744073709551615
  %add.i50 = add nuw nsw i128 %shr.i46, %conv1.i49
  %conv4.i52 = trunc i128 %add.i50 to i64
  %shr.i53 = lshr i128 %add.i50, 64
  %and5 = and i64 %8, 1152921504606846976
  %add.i57 = sub nsw i128 %shr.i53, %6
  %10 = trunc i128 %add.i57 to i64
  %conv4.i60 = add i64 %and5, %10
  store i64 %conv4.i39, ptr %out1, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i45, ptr %arrayidx7, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i52, ptr %arrayidx8, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i60, ptr %arrayidx9, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_scalar_from_montgomery(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i = zext i64 %0 to i128
  %mul.i = mul i64 %0, -3263669768735654373
  %conv.i36 = zext i64 %mul.i to i128
  %mul.i37 = mul i64 %0, -5764607523034234880
  %shr.i39 = lshr i64 %mul.i, 4
  %mul.i42 = mul nuw nsw i128 %conv.i36, 1503914060200516822
  %shr.i44 = lshr i128 %mul.i42, 64
  %conv3.i45 = trunc nuw nsw i128 %shr.i44 to i64
  %mul.i47 = mul nuw nsw i128 %conv.i36, 6346243789798364141
  %shr.i49 = lshr i128 %mul.i47, 64
  %conv2.i51 = and i128 %mul.i42, 18446744073709551614
  %add3.i = add nuw nsw i128 %shr.i49, %conv2.i51
  %shr.i52 = lshr i128 %add3.i, 64
  %conv5.i = trunc nuw nsw i128 %shr.i52 to i64
  %conv2.i54 = and i128 %mul.i47, 18446744073709551615
  %add3.i55 = add nuw nsw i128 %conv2.i54, %conv.i
  %shr.i57 = lshr i128 %add3.i55, 64
  %conv2.i60 = and i128 %add3.i, 18446744073709551615
  %add3.i61 = add nuw nsw i128 %shr.i57, %conv2.i60
  %shr.i63 = lshr i128 %add3.i61, 64
  %conv5.i64 = trunc nuw nsw i128 %shr.i63 to i64
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv1.i65 = and i128 %add3.i61, 18446744073709551615
  %conv2.i66 = zext i64 %1 to i128
  %add3.i67 = add nuw nsw i128 %conv1.i65, %conv2.i66
  %shr.i69 = lshr i128 %add3.i67, 64
  %conv5.i70 = trunc nuw nsw i128 %shr.i69 to i64
  %conv.i71 = and i128 %add3.i67, 18446744073709551615
  %2 = trunc i128 %add3.i67 to i64
  %conv2.i73 = mul i64 %2, -3263669768735654373
  %conv.i76 = zext i64 %conv2.i73 to i128
  %mul.i77 = mul i64 %2, -5764607523034234880
  %shr.i79 = lshr i64 %conv2.i73, 4
  %mul.i82 = mul nuw nsw i128 %conv.i76, 1503914060200516822
  %shr.i84 = lshr i128 %mul.i82, 64
  %conv3.i85 = trunc nuw nsw i128 %shr.i84 to i64
  %mul.i87 = mul nuw nsw i128 %conv.i76, 6346243789798364141
  %shr.i89 = lshr i128 %mul.i87, 64
  %conv2.i92 = and i128 %mul.i82, 18446744073709551614
  %add3.i93 = add nuw nsw i128 %shr.i89, %conv2.i92
  %shr.i95 = lshr i128 %add3.i93, 64
  %conv5.i96 = trunc nuw nsw i128 %shr.i95 to i64
  %conv2.i98 = and i128 %mul.i87, 18446744073709551615
  %add3.i99 = add nuw nsw i128 %conv2.i98, %conv.i71
  %shr.i101 = lshr i128 %add3.i99, 64
  %add = add nuw nsw i64 %conv5.i, %conv3.i45
  %add4 = add nuw nsw i64 %add, %conv5.i64
  %add5 = add nuw nsw i64 %add4, %conv5.i70
  %conv1.i104 = zext nneg i64 %add5 to i128
  %add.i = add nuw nsw i128 %shr.i101, %conv1.i104
  %conv2.i105 = and i128 %add3.i93, 18446744073709551615
  %add3.i106 = add nuw nsw i128 %add.i, %conv2.i105
  %shr.i108 = lshr i128 %add3.i106, 64
  %add7 = add nuw nsw i64 %conv5.i96, %conv3.i85
  %conv1.i111 = zext i64 %mul.i37 to i128
  %add.i112 = or disjoint i128 %shr.i108, %conv1.i111
  %conv2.i113 = zext nneg i64 %add7 to i128
  %add3.i114 = add nuw nsw i128 %add.i112, %conv2.i113
  %shr.i116 = lshr i128 %add3.i114, 64
  %add.i120351 = or disjoint i64 %mul.i77, %shr.i39
  %add.i120 = zext i64 %add.i120351 to i128
  %add3.i122 = add nuw nsw i128 %shr.i116, %add.i120
  %shr.i124 = lshr i128 %add3.i122, 64
  %conv5.i125 = trunc nuw nsw i128 %shr.i124 to i64
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %3 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %conv1.i126 = and i128 %add3.i106, 18446744073709551615
  %conv2.i128 = zext i64 %3 to i128
  %add3.i129 = add nuw nsw i128 %conv1.i126, %conv2.i128
  %shr.i131 = lshr i128 %add3.i129, 64
  %conv1.i134 = and i128 %add3.i114, 18446744073709551615
  %add.i135 = add nuw nsw i128 %conv1.i134, %shr.i131
  %shr.i138 = lshr i128 %add.i135, 64
  %conv1.i141 = and i128 %add3.i122, 18446744073709551615
  %add.i142 = add nuw nsw i128 %conv1.i141, %shr.i138
  %shr.i145 = lshr i128 %add.i142, 64
  %conv5.i146 = trunc nuw nsw i128 %shr.i145 to i64
  %conv.i147 = and i128 %add3.i129, 18446744073709551615
  %4 = trunc i128 %add3.i129 to i64
  %conv2.i149 = mul i64 %4, -3263669768735654373
  %conv.i152 = zext i64 %conv2.i149 to i128
  %mul.i153 = mul i64 %4, -5764607523034234880
  %shr.i155 = lshr i64 %conv2.i149, 4
  %mul.i158 = mul nuw nsw i128 %conv.i152, 1503914060200516822
  %shr.i160 = lshr i128 %mul.i158, 64
  %conv3.i161 = trunc nuw nsw i128 %shr.i160 to i64
  %mul.i163 = mul nuw nsw i128 %conv.i152, 6346243789798364141
  %shr.i165 = lshr i128 %mul.i163, 64
  %conv2.i169 = and i128 %mul.i158, 18446744073709551614
  %add3.i170 = add nuw nsw i128 %shr.i165, %conv2.i169
  %shr.i172 = lshr i128 %add3.i170, 64
  %conv5.i173 = trunc nuw nsw i128 %shr.i172 to i64
  %conv2.i176 = and i128 %mul.i163, 18446744073709551615
  %add3.i177 = add nuw nsw i128 %conv2.i176, %conv.i147
  %shr.i179 = lshr i128 %add3.i177, 64
  %conv1.i182 = and i128 %add.i135, 18446744073709551615
  %add.i183 = add nuw nsw i128 %shr.i179, %conv1.i182
  %conv2.i184 = and i128 %add3.i170, 18446744073709551615
  %add3.i185 = add nuw nsw i128 %add.i183, %conv2.i184
  %shr.i187 = lshr i128 %add3.i185, 64
  %add10 = add nuw nsw i64 %conv5.i173, %conv3.i161
  %conv1.i190 = and i128 %add.i142, 18446744073709551615
  %add.i191 = add nuw nsw i128 %shr.i187, %conv1.i190
  %conv2.i192 = zext nneg i64 %add10 to i128
  %add3.i193 = add nuw nsw i128 %add.i191, %conv2.i192
  %shr.i195 = lshr i128 %add3.i193, 64
  %add13 = add nuw nsw i64 %shr.i79, %conv5.i125
  %add14 = add nuw nsw i64 %add13, %conv5.i146
  %conv1.i198 = zext nneg i64 %add14 to i128
  %conv2.i200 = zext i64 %mul.i153 to i128
  %add.i199 = add nuw nsw i128 %conv1.i198, %conv2.i200
  %add3.i201 = add nuw nsw i128 %add.i199, %shr.i195
  %shr.i203 = lshr i128 %add3.i201, 64
  %conv5.i204 = trunc nuw nsw i128 %shr.i203 to i64
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %5 = load i64, ptr %arrayidx15, align 8, !tbaa !10
  %conv1.i205 = and i128 %add3.i185, 18446744073709551615
  %conv2.i207 = zext i64 %5 to i128
  %add3.i208 = add nuw nsw i128 %conv1.i205, %conv2.i207
  %shr.i210 = lshr i128 %add3.i208, 64
  %conv1.i213 = and i128 %add3.i193, 18446744073709551615
  %add.i214 = add nuw nsw i128 %conv1.i213, %shr.i210
  %shr.i217 = lshr i128 %add.i214, 64
  %conv1.i220 = and i128 %add3.i201, 18446744073709551615
  %add.i221 = add nuw nsw i128 %conv1.i220, %shr.i217
  %shr.i224 = lshr i128 %add.i221, 64
  %conv5.i225 = trunc nuw nsw i128 %shr.i224 to i64
  %conv.i226 = and i128 %add3.i208, 18446744073709551615
  %6 = trunc i128 %add3.i208 to i64
  %conv2.i228 = mul i64 %6, -3263669768735654373
  %conv.i231 = zext i64 %conv2.i228 to i128
  %mul.i232 = mul i64 %6, -5764607523034234880
  %shr.i234 = lshr i64 %conv2.i228, 4
  %mul.i237 = mul nuw nsw i128 %conv.i231, 1503914060200516822
  %shr.i239 = lshr i128 %mul.i237, 64
  %conv3.i240 = trunc nuw nsw i128 %shr.i239 to i64
  %mul.i242 = mul nuw nsw i128 %conv.i231, 6346243789798364141
  %shr.i244 = lshr i128 %mul.i242, 64
  %conv2.i248 = and i128 %mul.i237, 18446744073709551614
  %add3.i249 = add nuw nsw i128 %shr.i244, %conv2.i248
  %shr.i251 = lshr i128 %add3.i249, 64
  %conv5.i252 = trunc nuw nsw i128 %shr.i251 to i64
  %conv2.i255 = and i128 %mul.i242, 18446744073709551615
  %add3.i256 = add nuw nsw i128 %conv2.i255, %conv.i226
  %shr.i258 = lshr i128 %add3.i256, 64
  %conv1.i261 = and i128 %add.i214, 18446744073709551615
  %add.i262 = add nuw nsw i128 %shr.i258, %conv1.i261
  %conv2.i263 = and i128 %add3.i249, 18446744073709551615
  %add3.i264 = add nuw nsw i128 %add.i262, %conv2.i263
  %conv4.i265 = trunc i128 %add3.i264 to i64
  %shr.i266 = lshr i128 %add3.i264, 64
  %add17 = add nuw nsw i64 %conv5.i252, %conv3.i240
  %conv1.i269 = and i128 %add.i221, 18446744073709551615
  %add.i270 = add nuw nsw i128 %shr.i266, %conv1.i269
  %conv2.i271 = zext nneg i64 %add17 to i128
  %add3.i272 = add nuw nsw i128 %add.i270, %conv2.i271
  %conv4.i273 = trunc i128 %add3.i272 to i64
  %shr.i274 = lshr i128 %add3.i272, 64
  %add20 = add nuw nsw i64 %shr.i155, %conv5.i204
  %add21 = add nuw nsw i64 %add20, %conv5.i225
  %conv1.i277 = zext nneg i64 %add21 to i128
  %conv2.i279 = zext i64 %mul.i232 to i128
  %add.i278 = add nuw nsw i128 %conv1.i277, %conv2.i279
  %add3.i280 = add nuw nsw i128 %add.i278, %shr.i274
  %conv4.i281 = trunc i128 %add3.i280 to i64
  %shr.i282 = lshr i128 %add3.i280, 64
  %conv5.i283 = trunc nuw nsw i128 %shr.i282 to i64
  %add23 = add nuw nsw i64 %shr.i234, %conv5.i283
  %conv.i284 = and i128 %add3.i264, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i284, -6346243789798364141
  %shr.i285 = lshr i128 %sub3.i, 64
  %conv4.i286 = trunc i128 %shr.i285 to i8
  %conv5.i287 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i286
  %conv.i288 = and i128 %add3.i272, 18446744073709551615
  %conv1.i289 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i288, -1503914060200516822
  %sub3.i290 = sub nsw i128 %.neg, %conv1.i289
  %shr.i291 = lshr i128 %sub3.i290, 64
  %conv4.i292 = trunc i128 %shr.i291 to i8
  %conv5.i293 = trunc i128 %sub3.i290 to i64
  %sub7.i294 = sub i8 0, %conv4.i292
  %conv.i295 = and i128 %add3.i280, 18446744073709551615
  %conv1.i296 = zext i8 %sub7.i294 to i128
  %sub3.i297 = sub nsw i128 %conv.i295, %conv1.i296
  %shr.i298 = lshr i128 %sub3.i297, 64
  %conv4.i299 = trunc i128 %shr.i298 to i8
  %conv5.i300 = trunc i128 %sub3.i297 to i64
  %sub7.i301 = sub i8 0, %conv4.i299
  %conv.i302 = zext nneg i64 %add23 to i128
  %conv1.i303 = zext i8 %sub7.i301 to i128
  %7 = or disjoint i128 %conv1.i303, 1152921504606846976
  %sub3.i304 = sub nsw i128 %conv.i302, %7
  %shr.i305 = lshr i128 %sub3.i304, 64
  %conv4.i306 = trunc i128 %shr.i305 to i8
  %conv5.i307 = trunc nsw i128 %sub3.i304 to i64
  %sub7.i308 = sub i8 0, %conv4.i306
  %conv1.i309 = zext i8 %sub7.i308 to i128
  %sub3.i310 = sub nsw i128 0, %conv1.i309
  %shr.i311 = lshr i128 %sub3.i310, 64
  %conv4.i312 = trunc i128 %shr.i311 to i8
  %tobool.i = icmp ne i8 %conv4.i312, 0
  %conv4.i315 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i315) #7, !srcloc !9
  %and5.i = and i64 %8, %conv4.i265
  %not.i = xor i64 %conv4.i315, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %9, %conv5.i287
  %or.i = or i64 %and7.i, %and5.i
  %and5.i318 = and i64 %8, %conv4.i273
  %and7.i320 = and i64 %9, %conv5.i293
  %or.i321 = or i64 %and7.i320, %and5.i318
  %and5.i324 = and i64 %8, %conv4.i281
  %and7.i326 = and i64 %9, %conv5.i300
  %or.i327 = or i64 %and7.i326, %and5.i324
  %and5.i330 = and i64 %add23, %8
  %and7.i332 = and i64 %9, %conv5.i307
  %or.i333 = or i64 %and7.i332, %and5.i330
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i321, ptr %arrayidx25, align 8, !tbaa !10
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i327, ptr %arrayidx26, align 8, !tbaa !10
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i333, ptr %arrayidx27, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_scalar_to_montgomery(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %3 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i = zext i64 %3 to i128
  %mul.i = mul nuw nsw i128 %conv.i, 259310039853996605
  %shr.i = lshr i128 %mul.i, 64
  %conv3.i = trunc nuw nsw i128 %shr.i to i64
  %mul.i60 = mul nuw i128 %conv.i, 14910419812499177061
  %shr.i62 = lshr i128 %mul.i60, 64
  %mul.i65 = mul nuw i128 %conv.i, 14991950615390032711
  %shr.i67 = lshr i128 %mul.i65, 64
  %mul.i70 = mul nuw i128 %conv.i, 11819153939886771969
  %shr.i72 = lshr i128 %mul.i70, 64
  %conv2.i74 = and i128 %mul.i65, 18446744073709551615
  %add3.i = add nuw nsw i128 %shr.i72, %conv2.i74
  %shr.i75 = lshr i128 %add3.i, 64
  %conv2.i78 = and i128 %mul.i60, 18446744073709551615
  %add.i = add nuw nsw i128 %conv2.i78, %shr.i67
  %add3.i79 = add nuw nsw i128 %add.i, %shr.i75
  %shr.i81 = lshr i128 %add3.i79, 64
  %conv2.i86 = and i128 %mul.i, 18446744073709551615
  %add.i85 = add nuw nsw i128 %conv2.i86, %shr.i62
  %add3.i87 = add nuw nsw i128 %add.i85, %shr.i81
  %shr.i89 = lshr i128 %add3.i87, 64
  %conv5.i90 = trunc nuw nsw i128 %shr.i89 to i64
  %conv.i91 = and i128 %mul.i70, 18446744073709551615
  %mul.i92 = mul i64 %3, -1324931701940677861
  %conv.i96 = zext i64 %mul.i92 to i128
  %mul.i97 = mul i64 %3, -5764607523034234880
  %shr.i99 = lshr i64 %mul.i92, 4
  %mul.i102 = mul nuw nsw i128 %conv.i96, 1503914060200516822
  %shr.i104 = lshr i128 %mul.i102, 64
  %conv3.i105 = trunc nuw nsw i128 %shr.i104 to i64
  %mul.i107 = mul nuw nsw i128 %conv.i96, 6346243789798364141
  %shr.i109 = lshr i128 %mul.i107, 64
  %conv2.i113 = and i128 %mul.i102, 18446744073709551614
  %add3.i114 = add nuw nsw i128 %shr.i109, %conv2.i113
  %shr.i116 = lshr i128 %add3.i114, 64
  %conv5.i117 = trunc nuw nsw i128 %shr.i116 to i64
  %conv2.i120 = and i128 %mul.i107, 18446744073709551615
  %add3.i121 = add nuw nsw i128 %conv2.i120, %conv.i91
  %shr.i123 = lshr i128 %add3.i121, 64
  %conv1.i126 = and i128 %add3.i, 18446744073709551615
  %add.i127 = add nuw nsw i128 %shr.i123, %conv1.i126
  %conv2.i128 = and i128 %add3.i114, 18446744073709551615
  %add3.i129 = add nuw nsw i128 %add.i127, %conv2.i128
  %shr.i131 = lshr i128 %add3.i129, 64
  %add = add nuw nsw i64 %conv5.i117, %conv3.i105
  %conv1.i134 = and i128 %add3.i79, 18446744073709551615
  %add.i135 = add nuw nsw i128 %shr.i131, %conv1.i134
  %conv2.i136 = zext nneg i64 %add to i128
  %add3.i137 = add nuw nsw i128 %add.i135, %conv2.i136
  %shr.i139 = lshr i128 %add3.i137, 64
  %conv1.i142 = and i128 %add3.i87, 18446744073709551615
  %conv2.i144 = zext i64 %mul.i97 to i128
  %add.i143 = add nuw nsw i128 %conv1.i142, %conv2.i144
  %add3.i145 = add nuw nsw i128 %add.i143, %shr.i139
  %shr.i147 = lshr i128 %add3.i145, 64
  %conv5.i148 = trunc nuw nsw i128 %shr.i147 to i64
  %conv.i149 = zext i64 %0 to i128
  %mul.i150 = mul nuw nsw i128 %conv.i149, 259310039853996605
  %shr.i152 = lshr i128 %mul.i150, 64
  %conv3.i153 = trunc nuw nsw i128 %shr.i152 to i64
  %mul.i155 = mul nuw i128 %conv.i149, 14910419812499177061
  %shr.i157 = lshr i128 %mul.i155, 64
  %mul.i160 = mul nuw i128 %conv.i149, 14991950615390032711
  %shr.i162 = lshr i128 %mul.i160, 64
  %mul.i165 = mul nuw i128 %conv.i149, 11819153939886771969
  %shr.i167 = lshr i128 %mul.i165, 64
  %conv2.i171 = and i128 %mul.i160, 18446744073709551615
  %add3.i172 = add nuw nsw i128 %shr.i167, %conv2.i171
  %shr.i174 = lshr i128 %add3.i172, 64
  %conv2.i179 = and i128 %mul.i155, 18446744073709551615
  %add.i178 = add nuw nsw i128 %conv2.i179, %shr.i162
  %add3.i180 = add nuw nsw i128 %add.i178, %shr.i174
  %shr.i182 = lshr i128 %add3.i180, 64
  %conv2.i187 = and i128 %mul.i150, 18446744073709551615
  %add.i186 = add nuw nsw i128 %conv2.i187, %shr.i157
  %add3.i188 = add nuw nsw i128 %add.i186, %shr.i182
  %shr.i190 = lshr i128 %add3.i188, 64
  %conv5.i191 = trunc nuw nsw i128 %shr.i190 to i64
  %conv1.i192 = and i128 %add3.i129, 18446744073709551615
  %conv2.i194 = and i128 %mul.i165, 18446744073709551615
  %add3.i195 = add nuw nsw i128 %conv1.i192, %conv2.i194
  %shr.i197 = lshr i128 %add3.i195, 64
  %conv1.i200 = and i128 %add3.i137, 18446744073709551615
  %conv2.i202 = and i128 %add3.i172, 18446744073709551615
  %add.i201 = add nuw nsw i128 %shr.i197, %conv2.i202
  %add3.i203 = add nuw nsw i128 %add.i201, %conv1.i200
  %shr.i205 = lshr i128 %add3.i203, 64
  %conv1.i208 = and i128 %add3.i145, 18446744073709551615
  %conv2.i210 = and i128 %add3.i180, 18446744073709551615
  %add.i209 = add nuw nsw i128 %shr.i205, %conv2.i210
  %add3.i211 = add nuw nsw i128 %add.i209, %conv1.i208
  %shr.i213 = lshr i128 %add3.i211, 64
  %add6 = add nuw nsw i64 %shr.i99, %conv3.i
  %add7 = add nuw nsw i64 %add6, %conv5.i90
  %add8 = add nuw nsw i64 %add7, %conv5.i148
  %conv1.i216 = zext nneg i64 %add8 to i128
  %conv2.i218 = and i128 %add3.i188, 18446744073709551615
  %add.i217 = add nuw nsw i128 %shr.i213, %conv2.i218
  %add3.i219 = add nuw nsw i128 %add.i217, %conv1.i216
  %shr.i221 = lshr i128 %add3.i219, 64
  %conv5.i222 = trunc nuw nsw i128 %shr.i221 to i64
  %conv.i223 = and i128 %add3.i195, 18446744073709551615
  %4 = trunc i128 %add3.i195 to i64
  %conv2.i225 = mul i64 %4, -3263669768735654373
  %conv.i228 = zext i64 %conv2.i225 to i128
  %mul.i229 = mul i64 %4, -5764607523034234880
  %shr.i231 = lshr i64 %conv2.i225, 4
  %mul.i234 = mul nuw nsw i128 %conv.i228, 1503914060200516822
  %shr.i236 = lshr i128 %mul.i234, 64
  %conv3.i237 = trunc nuw nsw i128 %shr.i236 to i64
  %mul.i239 = mul nuw nsw i128 %conv.i228, 6346243789798364141
  %shr.i241 = lshr i128 %mul.i239, 64
  %conv2.i245 = and i128 %mul.i234, 18446744073709551614
  %add3.i246 = add nuw nsw i128 %shr.i241, %conv2.i245
  %shr.i248 = lshr i128 %add3.i246, 64
  %conv5.i249 = trunc nuw nsw i128 %shr.i248 to i64
  %conv2.i252 = and i128 %mul.i239, 18446744073709551615
  %add3.i253 = add nuw nsw i128 %conv2.i252, %conv.i223
  %shr.i255 = lshr i128 %add3.i253, 64
  %conv1.i258 = and i128 %add3.i203, 18446744073709551615
  %add.i259 = add nuw nsw i128 %shr.i255, %conv1.i258
  %conv2.i260 = and i128 %add3.i246, 18446744073709551615
  %add3.i261 = add nuw nsw i128 %add.i259, %conv2.i260
  %shr.i263 = lshr i128 %add3.i261, 64
  %add10 = add nuw nsw i64 %conv5.i249, %conv3.i237
  %conv1.i266 = and i128 %add3.i211, 18446744073709551615
  %add.i267 = add nuw nsw i128 %shr.i263, %conv1.i266
  %conv2.i268 = zext nneg i64 %add10 to i128
  %add3.i269 = add nuw nsw i128 %add.i267, %conv2.i268
  %shr.i271 = lshr i128 %add3.i269, 64
  %conv1.i274 = and i128 %add3.i219, 18446744073709551615
  %conv2.i276 = zext i64 %mul.i229 to i128
  %add.i275 = add nuw nsw i128 %conv1.i274, %conv2.i276
  %add3.i277 = add nuw nsw i128 %add.i275, %shr.i271
  %shr.i279 = lshr i128 %add3.i277, 64
  %conv5.i280 = trunc nuw nsw i128 %shr.i279 to i64
  %conv.i281 = zext i64 %1 to i128
  %mul.i282 = mul nuw nsw i128 %conv.i281, 259310039853996605
  %shr.i284 = lshr i128 %mul.i282, 64
  %conv3.i285 = trunc nuw nsw i128 %shr.i284 to i64
  %mul.i287 = mul nuw i128 %conv.i281, 14910419812499177061
  %shr.i289 = lshr i128 %mul.i287, 64
  %mul.i292 = mul nuw i128 %conv.i281, 14991950615390032711
  %shr.i294 = lshr i128 %mul.i292, 64
  %mul.i297 = mul nuw i128 %conv.i281, 11819153939886771969
  %shr.i299 = lshr i128 %mul.i297, 64
  %conv2.i303 = and i128 %mul.i292, 18446744073709551615
  %add3.i304 = add nuw nsw i128 %shr.i299, %conv2.i303
  %shr.i306 = lshr i128 %add3.i304, 64
  %conv2.i311 = and i128 %mul.i287, 18446744073709551615
  %add.i310 = add nuw nsw i128 %conv2.i311, %shr.i294
  %add3.i312 = add nuw nsw i128 %add.i310, %shr.i306
  %shr.i314 = lshr i128 %add3.i312, 64
  %conv2.i319 = and i128 %mul.i282, 18446744073709551615
  %add.i318 = add nuw nsw i128 %conv2.i319, %shr.i289
  %add3.i320 = add nuw nsw i128 %add.i318, %shr.i314
  %shr.i322 = lshr i128 %add3.i320, 64
  %conv5.i323 = trunc nuw nsw i128 %shr.i322 to i64
  %conv1.i324 = and i128 %add3.i261, 18446744073709551615
  %conv2.i326 = and i128 %mul.i297, 18446744073709551615
  %add3.i327 = add nuw nsw i128 %conv1.i324, %conv2.i326
  %shr.i329 = lshr i128 %add3.i327, 64
  %conv1.i332 = and i128 %add3.i269, 18446744073709551615
  %conv2.i334 = and i128 %add3.i304, 18446744073709551615
  %add.i333 = add nuw nsw i128 %shr.i329, %conv2.i334
  %add3.i335 = add nuw nsw i128 %add.i333, %conv1.i332
  %shr.i337 = lshr i128 %add3.i335, 64
  %conv1.i340 = and i128 %add3.i277, 18446744073709551615
  %conv2.i342 = and i128 %add3.i312, 18446744073709551615
  %add.i341 = add nuw nsw i128 %shr.i337, %conv2.i342
  %add3.i343 = add nuw nsw i128 %add.i341, %conv1.i340
  %shr.i345 = lshr i128 %add3.i343, 64
  %add14 = add nuw nsw i64 %conv5.i191, %conv3.i153
  %add15 = add nuw nsw i64 %add14, %shr.i231
  %add16 = add nuw nsw i64 %add15, %conv5.i222
  %add17 = add nuw nsw i64 %add16, %conv5.i280
  %conv1.i348 = zext nneg i64 %add17 to i128
  %conv2.i350 = and i128 %add3.i320, 18446744073709551615
  %add.i349 = add nuw nsw i128 %shr.i345, %conv2.i350
  %add3.i351 = add nuw nsw i128 %add.i349, %conv1.i348
  %shr.i353 = lshr i128 %add3.i351, 64
  %conv5.i354 = trunc nuw nsw i128 %shr.i353 to i64
  %conv.i355 = and i128 %add3.i327, 18446744073709551615
  %5 = trunc i128 %add3.i327 to i64
  %conv2.i357 = mul i64 %5, -3263669768735654373
  %conv.i360 = zext i64 %conv2.i357 to i128
  %mul.i361 = mul i64 %5, -5764607523034234880
  %shr.i363 = lshr i64 %conv2.i357, 4
  %mul.i366 = mul nuw nsw i128 %conv.i360, 1503914060200516822
  %shr.i368 = lshr i128 %mul.i366, 64
  %conv3.i369 = trunc nuw nsw i128 %shr.i368 to i64
  %mul.i371 = mul nuw nsw i128 %conv.i360, 6346243789798364141
  %shr.i373 = lshr i128 %mul.i371, 64
  %conv2.i377 = and i128 %mul.i366, 18446744073709551614
  %add3.i378 = add nuw nsw i128 %shr.i373, %conv2.i377
  %shr.i380 = lshr i128 %add3.i378, 64
  %conv5.i381 = trunc nuw nsw i128 %shr.i380 to i64
  %conv2.i384 = and i128 %mul.i371, 18446744073709551615
  %add3.i385 = add nuw nsw i128 %conv2.i384, %conv.i355
  %shr.i387 = lshr i128 %add3.i385, 64
  %conv1.i390 = and i128 %add3.i335, 18446744073709551615
  %add.i391 = add nuw nsw i128 %shr.i387, %conv1.i390
  %conv2.i392 = and i128 %add3.i378, 18446744073709551615
  %add3.i393 = add nuw nsw i128 %add.i391, %conv2.i392
  %shr.i395 = lshr i128 %add3.i393, 64
  %add19 = add nuw nsw i64 %conv5.i381, %conv3.i369
  %conv1.i398 = and i128 %add3.i343, 18446744073709551615
  %add.i399 = add nuw nsw i128 %shr.i395, %conv1.i398
  %conv2.i400 = zext nneg i64 %add19 to i128
  %add3.i401 = add nuw nsw i128 %add.i399, %conv2.i400
  %shr.i403 = lshr i128 %add3.i401, 64
  %conv1.i406 = and i128 %add3.i351, 18446744073709551615
  %conv2.i408 = zext i64 %mul.i361 to i128
  %add.i407 = add nuw nsw i128 %conv1.i406, %conv2.i408
  %add3.i409 = add nuw nsw i128 %add.i407, %shr.i403
  %shr.i411 = lshr i128 %add3.i409, 64
  %conv5.i412 = trunc nuw nsw i128 %shr.i411 to i64
  %conv.i413 = zext i64 %2 to i128
  %mul.i414 = mul nuw nsw i128 %conv.i413, 259310039853996605
  %shr.i416 = lshr i128 %mul.i414, 64
  %conv3.i417 = trunc nuw nsw i128 %shr.i416 to i64
  %mul.i419 = mul nuw i128 %conv.i413, 14910419812499177061
  %shr.i421 = lshr i128 %mul.i419, 64
  %mul.i424 = mul nuw i128 %conv.i413, 14991950615390032711
  %shr.i426 = lshr i128 %mul.i424, 64
  %mul.i429 = mul nuw i128 %conv.i413, 11819153939886771969
  %shr.i431 = lshr i128 %mul.i429, 64
  %conv2.i435 = and i128 %mul.i424, 18446744073709551615
  %add3.i436 = add nuw nsw i128 %shr.i431, %conv2.i435
  %shr.i438 = lshr i128 %add3.i436, 64
  %conv2.i443 = and i128 %mul.i419, 18446744073709551615
  %add.i442 = add nuw nsw i128 %conv2.i443, %shr.i426
  %add3.i444 = add nuw nsw i128 %add.i442, %shr.i438
  %shr.i446 = lshr i128 %add3.i444, 64
  %conv2.i451 = and i128 %mul.i414, 18446744073709551615
  %add.i450 = add nuw nsw i128 %conv2.i451, %shr.i421
  %add3.i452 = add nuw nsw i128 %add.i450, %shr.i446
  %shr.i454 = lshr i128 %add3.i452, 64
  %conv5.i455 = trunc nuw nsw i128 %shr.i454 to i64
  %conv1.i456 = and i128 %add3.i393, 18446744073709551615
  %conv2.i458 = and i128 %mul.i429, 18446744073709551615
  %add3.i459 = add nuw nsw i128 %conv1.i456, %conv2.i458
  %shr.i461 = lshr i128 %add3.i459, 64
  %conv1.i464 = and i128 %add3.i401, 18446744073709551615
  %conv2.i466 = and i128 %add3.i436, 18446744073709551615
  %add.i465 = add nuw nsw i128 %shr.i461, %conv2.i466
  %add3.i467 = add nuw nsw i128 %add.i465, %conv1.i464
  %shr.i469 = lshr i128 %add3.i467, 64
  %conv1.i472 = and i128 %add3.i409, 18446744073709551615
  %conv2.i474 = and i128 %add3.i444, 18446744073709551615
  %add.i473 = add nuw nsw i128 %shr.i469, %conv2.i474
  %add3.i475 = add nuw nsw i128 %add.i473, %conv1.i472
  %shr.i477 = lshr i128 %add3.i475, 64
  %add23 = add nuw nsw i64 %conv5.i323, %conv3.i285
  %add24 = add nuw nsw i64 %add23, %shr.i363
  %add25 = add nuw nsw i64 %add24, %conv5.i354
  %add26 = add nuw nsw i64 %add25, %conv5.i412
  %conv1.i480 = zext nneg i64 %add26 to i128
  %conv2.i482 = and i128 %add3.i452, 18446744073709551615
  %add.i481 = add nuw nsw i128 %shr.i477, %conv2.i482
  %add3.i483 = add nuw nsw i128 %add.i481, %conv1.i480
  %shr.i485 = lshr i128 %add3.i483, 64
  %conv5.i486 = trunc nuw nsw i128 %shr.i485 to i64
  %conv.i487 = and i128 %add3.i459, 18446744073709551615
  %6 = trunc i128 %add3.i459 to i64
  %conv2.i489 = mul i64 %6, -3263669768735654373
  %conv.i492 = zext i64 %conv2.i489 to i128
  %mul.i493 = mul i64 %6, -5764607523034234880
  %shr.i495 = lshr i64 %conv2.i489, 4
  %mul.i498 = mul nuw nsw i128 %conv.i492, 1503914060200516822
  %shr.i500 = lshr i128 %mul.i498, 64
  %conv3.i501 = trunc nuw nsw i128 %shr.i500 to i64
  %mul.i503 = mul nuw nsw i128 %conv.i492, 6346243789798364141
  %shr.i505 = lshr i128 %mul.i503, 64
  %conv2.i509 = and i128 %mul.i498, 18446744073709551614
  %add3.i510 = add nuw nsw i128 %shr.i505, %conv2.i509
  %shr.i512 = lshr i128 %add3.i510, 64
  %conv5.i513 = trunc nuw nsw i128 %shr.i512 to i64
  %conv2.i516 = and i128 %mul.i503, 18446744073709551615
  %add3.i517 = add nuw nsw i128 %conv2.i516, %conv.i487
  %shr.i519 = lshr i128 %add3.i517, 64
  %conv1.i522 = and i128 %add3.i467, 18446744073709551615
  %add.i523 = add nuw nsw i128 %shr.i519, %conv1.i522
  %conv2.i524 = and i128 %add3.i510, 18446744073709551615
  %add3.i525 = add nuw nsw i128 %add.i523, %conv2.i524
  %conv4.i526 = trunc i128 %add3.i525 to i64
  %shr.i527 = lshr i128 %add3.i525, 64
  %add28 = add nuw nsw i64 %conv5.i513, %conv3.i501
  %conv1.i530 = and i128 %add3.i475, 18446744073709551615
  %add.i531 = add nuw nsw i128 %shr.i527, %conv1.i530
  %conv2.i532 = zext nneg i64 %add28 to i128
  %add3.i533 = add nuw nsw i128 %add.i531, %conv2.i532
  %conv4.i534 = trunc i128 %add3.i533 to i64
  %shr.i535 = lshr i128 %add3.i533, 64
  %conv1.i538 = and i128 %add3.i483, 18446744073709551615
  %conv2.i540 = zext i64 %mul.i493 to i128
  %add.i539 = add nuw nsw i128 %conv1.i538, %conv2.i540
  %add3.i541 = add nuw nsw i128 %add.i539, %shr.i535
  %conv4.i542 = trunc i128 %add3.i541 to i64
  %shr.i543 = lshr i128 %add3.i541, 64
  %conv5.i544 = trunc nuw nsw i128 %shr.i543 to i64
  %add32 = add nuw nsw i64 %conv5.i455, %conv3.i417
  %add33 = add nuw nsw i64 %add32, %shr.i495
  %add34 = add nuw nsw i64 %add33, %conv5.i486
  %add35 = add nuw nsw i64 %add34, %conv5.i544
  %conv.i545 = and i128 %add3.i525, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i545, -6346243789798364141
  %shr.i546 = lshr i128 %sub3.i, 64
  %conv4.i547 = trunc i128 %shr.i546 to i8
  %conv5.i548 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i547
  %conv.i549 = and i128 %add3.i533, 18446744073709551615
  %conv1.i550 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i549, -1503914060200516822
  %sub3.i551 = sub nsw i128 %.neg, %conv1.i550
  %shr.i552 = lshr i128 %sub3.i551, 64
  %conv4.i553 = trunc i128 %shr.i552 to i8
  %conv5.i554 = trunc i128 %sub3.i551 to i64
  %sub7.i555 = sub i8 0, %conv4.i553
  %conv.i556 = and i128 %add3.i541, 18446744073709551615
  %conv1.i557 = zext i8 %sub7.i555 to i128
  %sub3.i558 = sub nsw i128 %conv.i556, %conv1.i557
  %shr.i559 = lshr i128 %sub3.i558, 64
  %conv4.i560 = trunc i128 %shr.i559 to i8
  %conv5.i561 = trunc i128 %sub3.i558 to i64
  %sub7.i562 = sub i8 0, %conv4.i560
  %conv.i563 = zext nneg i64 %add35 to i128
  %conv1.i564 = zext i8 %sub7.i562 to i128
  %7 = or disjoint i128 %conv1.i564, 1152921504606846976
  %sub3.i565 = sub nsw i128 %conv.i563, %7
  %shr.i566 = lshr i128 %sub3.i565, 64
  %conv4.i567 = trunc i128 %shr.i566 to i8
  %conv5.i568 = trunc nsw i128 %sub3.i565 to i64
  %sub7.i569 = sub i8 0, %conv4.i567
  %conv1.i570 = zext i8 %sub7.i569 to i128
  %sub3.i571 = sub nsw i128 0, %conv1.i570
  %shr.i572 = lshr i128 %sub3.i571, 64
  %conv4.i573 = trunc i128 %shr.i572 to i8
  %tobool.i = icmp ne i8 %conv4.i573, 0
  %conv4.i576 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i576) #7, !srcloc !9
  %and5.i = and i64 %8, %conv4.i526
  %not.i = xor i64 %conv4.i576, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %9, %conv5.i548
  %or.i = or i64 %and7.i, %and5.i
  %and5.i579 = and i64 %8, %conv4.i534
  %and7.i581 = and i64 %9, %conv5.i554
  %or.i582 = or i64 %and7.i581, %and5.i579
  %and5.i585 = and i64 %8, %conv4.i542
  %and7.i587 = and i64 %9, %conv5.i561
  %or.i588 = or i64 %and7.i587, %and5.i585
  %and5.i591 = and i64 %add35, %8
  %and7.i593 = and i64 %9, %conv5.i568
  %or.i594 = or i64 %and7.i593, %and5.i591
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i582, ptr %arrayidx37, align 8, !tbaa !10
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i588, ptr %arrayidx38, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i594, ptr %arrayidx39, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_scalar_nonzero(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load <4 x i64>, ptr %arg1, align 8, !tbaa !10
  %1 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %0)
  store i64 %1, ptr %out1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_scalar_selectznz(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #3 {
entry:
  %tobool.i = icmp ne i8 %arg1, 0
  %conv4.i = sext i1 %tobool.i to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #7, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
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
define dso_local void @fiat_25519_scalar_to_bytes(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
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
define dso_local void @fiat_25519_scalar_from_bytes(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
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
define dso_local void @fiat_25519_scalar_set_one(ptr noundef writeonly captures(none) initializes((0, 32)) %out1) local_unnamed_addr #1 {
entry:
  store i64 -2959936478427704035, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 -4111966829298200720, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 -2, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 1152921504606846975, ptr %arrayidx3, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_25519_scalar_msat(ptr noundef writeonly captures(none) initializes((0, 40)) %out1) local_unnamed_addr #1 {
entry:
  store i64 6346243789798364141, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 1503914060200516822, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 0, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 1152921504606846976, ptr %arrayidx3, align 8, !tbaa !10
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 0, ptr %arrayidx4, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_scalar_divstep(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 40)) %out2, ptr noundef writeonly captures(none) initializes((0, 40)) %out3, ptr noundef writeonly captures(none) initializes((0, 32)) %out4, ptr noundef writeonly captures(none) initializes((0, 32)) %out5, i64 noundef %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3, ptr noundef readonly captures(none) %arg4, ptr noundef readonly captures(none) %arg5) local_unnamed_addr #3 {
entry:
  %add3.i = sub i64 0, %arg1
  %0 = load i64, ptr %arg3, align 8, !tbaa !10
  %and4165669 = shl i64 %0, 63
  %shr670 = and i64 %and4165669, %add3.i
  %sext = ashr exact i64 %shr670, 63
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %sext) #7, !srcloc !9
  %and5.i = and i64 %1, %add3.i
  %not.i = xor i64 %sext, -1
  %2 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %2, %arg1
  %or.i = or i64 %and7.i, %and5.i
  %3 = load i64, ptr %arg2, align 8, !tbaa !10
  %and5.i174 = and i64 %1, %0
  %and7.i176 = and i64 %3, %2
  %or.i177 = or i64 %and7.i176, %and5.i174
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %4 = load i64, ptr %arrayidx9, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg3, i64 8
  %5 = load i64, ptr %arrayidx10, align 8, !tbaa !10
  %and5.i180 = and i64 %5, %1
  %and7.i182 = and i64 %4, %2
  %or.i183 = or i64 %and5.i180, %and7.i182
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %6 = load i64, ptr %arrayidx11, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %7 = load i64, ptr %arrayidx12, align 8, !tbaa !10
  %and5.i186 = and i64 %7, %1
  %and7.i188 = and i64 %6, %2
  %or.i189 = or i64 %and5.i186, %and7.i188
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %8 = load i64, ptr %arrayidx13, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg3, i64 24
  %9 = load i64, ptr %arrayidx14, align 8, !tbaa !10
  %and5.i192 = and i64 %9, %1
  %and7.i194 = and i64 %8, %2
  %or.i195 = or i64 %and5.i192, %and7.i194
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %10 = load i64, ptr %arrayidx15, align 8, !tbaa !10
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg3, i64 32
  %11 = load i64, ptr %arrayidx16, align 8, !tbaa !10
  %and5.i198 = and i64 %11, %1
  %and7.i200 = and i64 %10, %2
  %or.i201 = or i64 %and5.i198, %and7.i200
  %not18 = xor i64 %3, -1
  %conv2.i = zext i64 %not18 to i128
  %add3.i202 = add nuw nsw i128 %conv2.i, 1
  %conv4.i203 = trunc i128 %add3.i202 to i64
  %shr.i204 = lshr i128 %add3.i202, 64
  %not20 = xor i64 %4, -1
  %conv2.i206 = zext i64 %not20 to i128
  %add3.i207 = add nuw nsw i128 %shr.i204, %conv2.i206
  %conv4.i208 = trunc i128 %add3.i207 to i64
  %shr.i209 = lshr i128 %add3.i207, 64
  %not22 = xor i64 %6, -1
  %conv2.i212 = zext i64 %not22 to i128
  %add3.i213 = add nuw nsw i128 %shr.i209, %conv2.i212
  %conv4.i214 = trunc i128 %add3.i213 to i64
  %shr.i215 = lshr i128 %add3.i213, 64
  %not24 = xor i64 %8, -1
  %conv2.i218 = zext i64 %not24 to i128
  %add3.i219 = add nuw nsw i128 %shr.i215, %conv2.i218
  %conv4.i220 = trunc i128 %add3.i219 to i64
  %shr.i221 = lshr i128 %add3.i219, 64
  %not26 = xor i64 %10, -1
  %12 = trunc nuw nsw i128 %shr.i221 to i64
  %conv4.i226 = add i64 %12, %not26
  %and5.i231 = and i64 %1, %conv4.i203
  %and7.i233 = and i64 %2, %0
  %or.i234 = or i64 %and5.i231, %and7.i233
  %and5.i237 = and i64 %1, %conv4.i208
  %and7.i239 = and i64 %5, %2
  %or.i240 = or i64 %and5.i237, %and7.i239
  %and5.i243 = and i64 %1, %conv4.i214
  %and7.i245 = and i64 %7, %2
  %or.i246 = or i64 %and5.i243, %and7.i245
  %and5.i249 = and i64 %1, %conv4.i220
  %and7.i251 = and i64 %9, %2
  %or.i252 = or i64 %and5.i249, %and7.i251
  %and5.i255 = and i64 %conv4.i226, %1
  %and7.i257 = and i64 %11, %2
  %or.i258 = or i64 %and5.i255, %and7.i257
  %13 = load i64, ptr %arg4, align 8, !tbaa !10
  %14 = load i64, ptr %arg5, align 8, !tbaa !10
  %and5.i261 = and i64 %14, %1
  %and7.i263 = and i64 %13, %2
  %or.i264 = or i64 %and5.i261, %and7.i263
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %arg4, i64 8
  %15 = load i64, ptr %arrayidx34, align 8, !tbaa !10
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arg5, i64 8
  %16 = load i64, ptr %arrayidx35, align 8, !tbaa !10
  %and5.i267 = and i64 %16, %1
  %and7.i269 = and i64 %15, %2
  %or.i270 = or i64 %and5.i267, %and7.i269
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg4, i64 16
  %17 = load i64, ptr %arrayidx36, align 8, !tbaa !10
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %arg5, i64 16
  %18 = load i64, ptr %arrayidx37, align 8, !tbaa !10
  %and5.i273 = and i64 %18, %1
  %and7.i275 = and i64 %17, %2
  %or.i276 = or i64 %and5.i273, %and7.i275
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %arg4, i64 24
  %19 = load i64, ptr %arrayidx38, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %arg5, i64 24
  %20 = load i64, ptr %arrayidx39, align 8, !tbaa !10
  %and5.i279 = and i64 %20, %1
  %and7.i281 = and i64 %19, %2
  %or.i282 = or i64 %and5.i279, %and7.i281
  %add3.i285 = shl i64 %or.i264, 1
  %conv4.i293 = tail call i64 @llvm.fshl.i64(i64 %or.i270, i64 %or.i264, i64 1)
  %conv4.i301 = tail call i64 @llvm.fshl.i64(i64 %or.i276, i64 %or.i270, i64 1)
  %conv4.i309 = tail call i64 @llvm.fshl.i64(i64 %or.i282, i64 %or.i276, i64 1)
  %21 = lshr i64 %or.i282, 63
  %conv.i312 = zext i64 %add3.i285 to i128
  %sub3.i = add nsw i128 %conv.i312, -6346243789798364141
  %shr.i313 = lshr i128 %sub3.i, 64
  %conv4.i314 = trunc i128 %shr.i313 to i8
  %conv5.i315 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i314
  %conv.i316 = zext i64 %conv4.i293 to i128
  %conv1.i317 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i316, -1503914060200516822
  %sub3.i318 = sub nsw i128 %.neg, %conv1.i317
  %shr.i319 = lshr i128 %sub3.i318, 64
  %conv4.i320 = trunc i128 %shr.i319 to i8
  %conv5.i321 = trunc i128 %sub3.i318 to i64
  %sub7.i322 = sub i8 0, %conv4.i320
  %conv.i323 = zext i64 %conv4.i301 to i128
  %conv1.i324 = zext i8 %sub7.i322 to i128
  %sub3.i325 = sub nsw i128 %conv.i323, %conv1.i324
  %shr.i326 = lshr i128 %sub3.i325, 64
  %conv4.i327 = trunc i128 %shr.i326 to i8
  %conv5.i328 = trunc i128 %sub3.i325 to i64
  %sub7.i329 = sub i8 0, %conv4.i327
  %conv.i330 = zext i64 %conv4.i309 to i128
  %conv1.i331 = zext i8 %sub7.i329 to i128
  %22 = or disjoint i128 %conv1.i331, 1152921504606846976
  %sub3.i332 = sub nsw i128 %conv.i330, %22
  %shr.i333 = lshr i128 %sub3.i332, 64
  %conv4.i334 = trunc i128 %shr.i333 to i8
  %conv5.i335 = trunc i128 %sub3.i332 to i64
  %sub7.i336 = sub i8 0, %conv4.i334
  %conv.i337 = zext nneg i64 %21 to i128
  %conv1.i338 = zext i8 %sub7.i336 to i128
  %sub3.i339 = sub nsw i128 %conv.i337, %conv1.i338
  %shr.i340 = lshr i128 %sub3.i339, 64
  %conv4.i341 = trunc i128 %shr.i340 to i8
  %conv2.i344 = zext i64 %13 to i128
  %sub3.i345 = sub nsw i128 0, %conv2.i344
  %shr.i346 = lshr i128 %sub3.i345, 64
  %conv4.i347 = trunc i128 %shr.i346 to i8
  %sub7.i349 = sub i8 0, %conv4.i347
  %conv1.i350 = zext i8 %sub7.i349 to i128
  %conv2.i351 = zext i64 %15 to i128
  %23 = add nuw nsw i128 %conv2.i351, %conv1.i350
  %sub3.i352 = sub nsw i128 0, %23
  %shr.i353 = lshr i128 %sub3.i352, 64
  %conv4.i354 = trunc i128 %shr.i353 to i8
  %sub7.i356 = sub i8 0, %conv4.i354
  %conv1.i357 = zext i8 %sub7.i356 to i128
  %conv2.i358 = zext i64 %17 to i128
  %24 = add nuw nsw i128 %conv2.i358, %conv1.i357
  %sub3.i359 = sub nsw i128 0, %24
  %shr.i360 = lshr i128 %sub3.i359, 64
  %conv4.i361 = trunc i128 %shr.i360 to i8
  %sub7.i363 = sub i8 0, %conv4.i361
  %conv1.i364 = zext i8 %sub7.i363 to i128
  %conv2.i365 = zext i64 %19 to i128
  %25 = add nuw nsw i128 %conv1.i364, %conv2.i365
  %sub3.i366 = sub nsw i128 0, %25
  %26 = and i128 %sub3.i366, 4703919738795935662080
  %tobool.i371 = icmp ne i128 %26, 0
  %conv4.i372 = sext i1 %tobool.i371 to i64
  %27 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i372) #7, !srcloc !9
  %not.i374 = xor i64 %conv4.i372, -1
  %28 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i374) #7, !srcloc !9
  %and45 = and i64 %27, 6346243789798364141
  %conv1.i377 = and i128 %sub3.i345, 18446744073709551615
  %conv2.i379 = zext nneg i64 %and45 to i128
  %add3.i380 = add nuw nsw i128 %conv1.i377, %conv2.i379
  %conv4.i381 = trunc i128 %add3.i380 to i64
  %shr.i382 = lshr i128 %add3.i380, 64
  %and46 = and i64 %27, 1503914060200516822
  %conv1.i385 = and i128 %sub3.i352, 18446744073709551615
  %conv2.i387 = zext nneg i64 %and46 to i128
  %add.i386 = add nuw nsw i128 %conv1.i385, %conv2.i387
  %add3.i388 = add nuw nsw i128 %add.i386, %shr.i382
  %conv4.i389 = trunc i128 %add3.i388 to i64
  %shr.i390 = lshr i128 %add3.i388, 64
  %conv1.i393 = and i128 %sub3.i359, 18446744073709551615
  %add.i394 = add nuw nsw i128 %shr.i390, %conv1.i393
  %conv4.i396 = trunc i128 %add.i394 to i64
  %shr.i397 = lshr i128 %add.i394, 64
  %and47 = and i64 %27, 1152921504606846976
  %add.i401 = sub nsw i128 %shr.i397, %25
  %29 = trunc i128 %add.i401 to i64
  %conv4.i404 = add i64 %and47, %29
  %and5.i409 = and i64 %1, %conv4.i381
  %and7.i411 = and i64 %14, %2
  %or.i412 = or i64 %and5.i409, %and7.i411
  %and5.i415 = and i64 %1, %conv4.i389
  %and7.i417 = and i64 %16, %2
  %or.i418 = or i64 %and5.i415, %and7.i417
  %and5.i421 = and i64 %1, %conv4.i396
  %and7.i423 = and i64 %18, %2
  %or.i424 = or i64 %and5.i421, %and7.i423
  %and5.i427 = and i64 %conv4.i404, %1
  %and7.i429 = and i64 %20, %2
  %or.i430 = or i64 %and5.i427, %and7.i429
  %30 = and i64 %or.i234, 1
  %conv4.i432 = sub nsw i64 0, %30
  %31 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i432) #7, !srcloc !9
  %and5.i433 = and i64 %31, %or.i177
  %not.i434 = add nsw i64 %30, -1
  %32 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i434) #7, !srcloc !9
  %and5.i439 = and i64 %31, %or.i183
  %and5.i445 = and i64 %31, %or.i189
  %and5.i451 = and i64 %31, %or.i195
  %and5.i457 = and i64 %31, %or.i201
  %add.narrowed = add i64 %and5.i433, %or.i234
  %add.narrowed.overflow = icmp ult i64 %add.narrowed, %or.i234
  %conv.i468 = zext i1 %add.narrowed.overflow to i128
  %conv1.i469 = zext i64 %or.i240 to i128
  %conv2.i471 = zext i64 %and5.i439 to i128
  %add.i470 = add nuw nsw i128 %conv2.i471, %conv1.i469
  %add3.i472 = add nuw nsw i128 %add.i470, %conv.i468
  %conv4.i473 = trunc i128 %add3.i472 to i64
  %shr.i474 = lshr i128 %add3.i472, 64
  %conv1.i477 = zext i64 %or.i246 to i128
  %conv2.i479 = zext i64 %and5.i445 to i128
  %add.i478 = add nuw nsw i128 %conv2.i479, %conv1.i477
  %add3.i480 = add nuw nsw i128 %add.i478, %shr.i474
  %conv4.i481 = trunc i128 %add3.i480 to i64
  %shr.i482 = lshr i128 %add3.i480, 64
  %conv1.i485 = zext i64 %or.i252 to i128
  %conv2.i487 = zext i64 %and5.i451 to i128
  %add.i486 = add nuw nsw i128 %conv2.i487, %conv1.i485
  %add3.i488 = add nuw nsw i128 %add.i486, %shr.i482
  %conv4.i489 = trunc i128 %add3.i488 to i64
  %shr.i490 = lshr i128 %add3.i488, 64
  %33 = trunc nuw nsw i128 %shr.i490 to i64
  %34 = add i64 %and5.i457, %or.i258
  %conv4.i497 = add i64 %34, %33
  %and5.i502 = and i64 %31, %or.i264
  %and5.i508 = and i64 %31, %or.i270
  %and5.i514 = and i64 %31, %or.i276
  %and5.i520 = and i64 %31, %or.i282
  %add.narrowed672 = add i64 %or.i412, %and5.i502
  %add.narrowed.overflow673 = icmp ult i64 %add.narrowed672, %or.i412
  %conv.i531 = zext i1 %add.narrowed.overflow673 to i128
  %conv1.i532 = zext i64 %or.i418 to i128
  %conv2.i534 = zext i64 %and5.i508 to i128
  %add.i533 = add nuw nsw i128 %conv.i531, %conv2.i534
  %add3.i535 = add nuw nsw i128 %add.i533, %conv1.i532
  %conv4.i536 = trunc i128 %add3.i535 to i64
  %shr.i537 = lshr i128 %add3.i535, 64
  %conv1.i540 = zext i64 %or.i424 to i128
  %conv2.i542 = zext i64 %and5.i514 to i128
  %add.i541 = add nuw nsw i128 %conv1.i540, %conv2.i542
  %add3.i543 = add nuw nsw i128 %add.i541, %shr.i537
  %conv4.i544 = trunc i128 %add3.i543 to i64
  %shr.i545 = lshr i128 %add3.i543, 64
  %conv1.i548 = zext i64 %or.i430 to i128
  %conv2.i550 = zext i64 %and5.i520 to i128
  %add.i549 = add nuw nsw i128 %conv1.i548, %conv2.i550
  %add3.i551 = add nuw nsw i128 %add.i549, %shr.i545
  %conv4.i552 = trunc i128 %add3.i551 to i64
  %shr.i553 = lshr i128 %add3.i551, 64
  %conv.i555 = zext i64 %add.narrowed672 to i128
  %sub3.i556 = add nsw i128 %conv.i555, -6346243789798364141
  %shr.i557 = lshr i128 %sub3.i556, 64
  %conv4.i558 = trunc i128 %shr.i557 to i8
  %conv5.i559 = trunc i128 %sub3.i556 to i64
  %sub7.i560 = sub i8 0, %conv4.i558
  %conv.i561 = and i128 %add3.i535, 18446744073709551615
  %conv1.i562 = zext i8 %sub7.i560 to i128
  %reass.sub = sub nsw i128 %conv.i561, %conv1.i562
  %sub3.i563 = add nsw i128 %reass.sub, -1503914060200516822
  %shr.i564 = lshr i128 %sub3.i563, 64
  %conv4.i565 = trunc i128 %shr.i564 to i8
  %conv5.i566 = trunc i128 %sub3.i563 to i64
  %sub7.i567 = sub i8 0, %conv4.i565
  %conv.i568 = and i128 %add3.i543, 18446744073709551615
  %conv1.i569 = zext i8 %sub7.i567 to i128
  %sub3.i570 = sub nsw i128 %conv.i568, %conv1.i569
  %shr.i571 = lshr i128 %sub3.i570, 64
  %conv4.i572 = trunc i128 %shr.i571 to i8
  %conv5.i573 = trunc i128 %sub3.i570 to i64
  %sub7.i574 = sub i8 0, %conv4.i572
  %conv.i575 = and i128 %add3.i551, 18446744073709551615
  %conv1.i576 = zext i8 %sub7.i574 to i128
  %35 = or disjoint i128 %conv1.i576, 1152921504606846976
  %sub3.i577 = sub nsw i128 %conv.i575, %35
  %shr.i578 = lshr i128 %sub3.i577, 64
  %conv4.i579 = trunc i128 %shr.i578 to i8
  %conv5.i580 = trunc i128 %sub3.i577 to i64
  %sub7.i581 = sub i8 0, %conv4.i579
  %conv1.i583 = zext i8 %sub7.i581 to i128
  %sub3.i584 = sub nsw i128 %shr.i553, %conv1.i583
  %shr.i585 = lshr i128 %sub3.i584, 64
  %conv4.i586 = trunc i128 %shr.i585 to i8
  %add3.i591 = add i64 %or.i, 1
  %or = tail call i64 @llvm.fshl.i64(i64 %conv4.i473, i64 %add.narrowed, i64 63)
  %or60 = tail call i64 @llvm.fshl.i64(i64 %conv4.i481, i64 %conv4.i473, i64 63)
  %or64 = tail call i64 @llvm.fshl.i64(i64 %conv4.i489, i64 %conv4.i481, i64 63)
  %or68 = tail call i64 @llvm.fshl.i64(i64 %conv4.i497, i64 %conv4.i489, i64 63)
  %and69 = and i64 %conv4.i497, -9223372036854775808
  %shr70 = lshr i64 %conv4.i497, 1
  %or71 = or disjoint i64 %and69, %shr70
  %tobool.i595 = icmp ne i8 %conv4.i341, 0
  %conv4.i596 = sext i1 %tobool.i595 to i64
  %36 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i596) #7, !srcloc !9
  %and5.i597 = and i64 %36, %add3.i285
  %not.i598 = xor i64 %conv4.i596, -1
  %37 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i598) #7, !srcloc !9
  %and7.i599 = and i64 %37, %conv5.i315
  %or.i600 = or i64 %and7.i599, %and5.i597
  %and5.i603 = and i64 %36, %conv4.i293
  %and7.i605 = and i64 %37, %conv5.i321
  %or.i606 = or i64 %and7.i605, %and5.i603
  %and5.i609 = and i64 %36, %conv4.i301
  %and7.i611 = and i64 %37, %conv5.i328
  %or.i612 = or i64 %and7.i611, %and5.i609
  %and5.i615 = and i64 %36, %conv4.i309
  %and7.i617 = and i64 %37, %conv5.i335
  %or.i618 = or i64 %and7.i617, %and5.i615
  %tobool.i619 = icmp ne i8 %conv4.i586, 0
  %conv4.i620 = sext i1 %tobool.i619 to i64
  %38 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i620) #7, !srcloc !9
  %and5.i621 = and i64 %add.narrowed672, %38
  %not.i622 = xor i64 %conv4.i620, -1
  %39 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i622) #7, !srcloc !9
  %and7.i623 = and i64 %39, %conv5.i559
  %or.i624 = or i64 %and7.i623, %and5.i621
  %and5.i627 = and i64 %38, %conv4.i536
  %and7.i629 = and i64 %39, %conv5.i566
  %or.i630 = or i64 %and7.i629, %and5.i627
  %and5.i633 = and i64 %38, %conv4.i544
  %and7.i635 = and i64 %39, %conv5.i573
  %or.i636 = or i64 %and7.i635, %and5.i633
  %and5.i639 = and i64 %38, %conv4.i552
  %and7.i641 = and i64 %39, %conv5.i580
  %or.i642 = or i64 %and7.i641, %and5.i639
  store i64 %add3.i591, ptr %out1, align 8, !tbaa !10
  store i64 %or.i177, ptr %out2, align 8, !tbaa !10
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %out2, i64 8
  store i64 %or.i183, ptr %arrayidx73, align 8, !tbaa !10
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %out2, i64 16
  store i64 %or.i189, ptr %arrayidx74, align 8, !tbaa !10
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %out2, i64 24
  store i64 %or.i195, ptr %arrayidx75, align 8, !tbaa !10
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %out2, i64 32
  store i64 %or.i201, ptr %arrayidx76, align 8, !tbaa !10
  store i64 %or, ptr %out3, align 8, !tbaa !10
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %out3, i64 8
  store i64 %or60, ptr %arrayidx78, align 8, !tbaa !10
  %arrayidx79 = getelementptr inbounds nuw i8, ptr %out3, i64 16
  store i64 %or64, ptr %arrayidx79, align 8, !tbaa !10
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %out3, i64 24
  store i64 %or68, ptr %arrayidx80, align 8, !tbaa !10
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %out3, i64 32
  store i64 %or71, ptr %arrayidx81, align 8, !tbaa !10
  store i64 %or.i600, ptr %out4, align 8, !tbaa !10
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %out4, i64 8
  store i64 %or.i606, ptr %arrayidx83, align 8, !tbaa !10
  %arrayidx84 = getelementptr inbounds nuw i8, ptr %out4, i64 16
  store i64 %or.i612, ptr %arrayidx84, align 8, !tbaa !10
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %out4, i64 24
  store i64 %or.i618, ptr %arrayidx85, align 8, !tbaa !10
  store i64 %or.i624, ptr %out5, align 8, !tbaa !10
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %out5, i64 8
  store i64 %or.i630, ptr %arrayidx87, align 8, !tbaa !10
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %out5, i64 16
  store i64 %or.i636, ptr %arrayidx88, align 8, !tbaa !10
  %arrayidx89 = getelementptr inbounds nuw i8, ptr %out5, i64 24
  store i64 %or.i642, ptr %arrayidx89, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_25519_scalar_divstep_precomp(ptr noundef writeonly captures(none) initializes((0, 32)) %out1) local_unnamed_addr #1 {
entry:
  store i64 -2951273633929507950, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 6877499626169610585, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 -1770616788559298790, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 115454454455854335, ptr %arrayidx3, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #6

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind memory(none) }

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
!9 = !{i64 3415}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
