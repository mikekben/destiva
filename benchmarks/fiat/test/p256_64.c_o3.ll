; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @fiat_p256_value_barrier_u64(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #7, !srcloc !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p256_addcarryx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
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
define dso_local void @fiat_p256_subborrowx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
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
define dso_local void @fiat_p256_mulx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 8)) %out2, i64 noundef %arg1, i64 noundef %arg2) local_unnamed_addr #1 {
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
define dso_local void @fiat_p256_cmovznz_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #2 {
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
define dso_local void @fiat_p256_mul(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
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
  %mul.i118 = mul nuw i128 %conv.i117, 18446744069414584321
  %shr.i120 = lshr i128 %mul.i118, 64
  %mul.i123 = mul nuw nsw i128 %conv.i117, 4294967295
  %shr.i125 = lshr i128 %mul.i123, 64
  %conv3.i126 = trunc nuw nsw i128 %shr.i125 to i64
  %mul.i128 = mul nuw i128 %conv.i117, 18446744073709551615
  %shr.i130 = lshr i128 %mul.i128, 64
  %conv2.i134 = and i128 %mul.i123, 18446744073709551615
  %add3.i135 = add nuw nsw i128 %shr.i130, %conv2.i134
  %shr.i137 = lshr i128 %add3.i135, 64
  %conv5.i138 = trunc nuw nsw i128 %shr.i137 to i64
  %add9 = add nuw nsw i64 %conv5.i138, %conv3.i126
  %conv2.i141 = and i128 %mul.i128, 18446744073709551615
  %add3.i142 = add nuw nsw i128 %conv2.i141, %conv.i117
  %shr.i144 = lshr i128 %add3.i142, 64
  %conv1.i147 = and i128 %add3.i, 18446744073709551615
  %add.i148 = add nuw nsw i128 %shr.i144, %conv1.i147
  %conv2.i149 = and i128 %add3.i135, 18446744073709551615
  %add3.i150 = add nuw nsw i128 %add.i148, %conv2.i149
  %shr.i152 = lshr i128 %add3.i150, 64
  %conv1.i155 = and i128 %add3.i105, 18446744073709551615
  %add.i156 = add nuw nsw i128 %shr.i152, %conv1.i155
  %conv2.i157 = zext nneg i64 %add9 to i128
  %add3.i158 = add nuw nsw i128 %add.i156, %conv2.i157
  %shr.i160 = lshr i128 %add3.i158, 64
  %conv1.i163 = and i128 %add3.i113, 18446744073709551615
  %conv2.i165 = and i128 %mul.i118, 18446744073709551615
  %add.i164 = add nuw nsw i128 %conv1.i163, %conv2.i165
  %add3.i166 = add nuw nsw i128 %add.i164, %shr.i160
  %shr.i168 = lshr i128 %add3.i166, 64
  %conv1.i171 = zext i64 %add to i128
  %add.i172 = add nuw nsw i128 %shr.i120, %conv1.i171
  %add3.i174 = add nuw nsw i128 %add.i172, %shr.i168
  %shr.i176 = lshr i128 %add3.i174, 64
  %conv.i178 = zext i64 %0 to i128
  %mul.i180 = mul nuw i128 %conv1.i, %conv.i178
  %shr.i182 = lshr i128 %mul.i180, 64
  %conv3.i183 = trunc nuw i128 %shr.i182 to i64
  %mul.i186 = mul nuw i128 %conv1.i82, %conv.i178
  %shr.i188 = lshr i128 %mul.i186, 64
  %mul.i192 = mul nuw i128 %conv1.i88, %conv.i178
  %shr.i194 = lshr i128 %mul.i192, 64
  %mul.i198 = mul nuw i128 %conv1.i94, %conv.i178
  %shr.i200 = lshr i128 %mul.i198, 64
  %conv2.i204 = and i128 %mul.i192, 18446744073709551615
  %add3.i205 = add nuw nsw i128 %shr.i200, %conv2.i204
  %shr.i207 = lshr i128 %add3.i205, 64
  %conv2.i212 = and i128 %mul.i186, 18446744073709551615
  %add.i211 = add nuw nsw i128 %shr.i194, %conv2.i212
  %add3.i213 = add nuw nsw i128 %add.i211, %shr.i207
  %shr.i215 = lshr i128 %add3.i213, 64
  %conv2.i220 = and i128 %mul.i180, 18446744073709551615
  %add.i219 = add nuw nsw i128 %shr.i188, %conv2.i220
  %add3.i221 = add nuw nsw i128 %add.i219, %shr.i215
  %shr.i223 = lshr i128 %add3.i221, 64
  %conv5.i224 = trunc nuw nsw i128 %shr.i223 to i64
  %add15 = add nuw i64 %conv5.i224, %conv3.i183
  %conv1.i225 = and i128 %add3.i150, 18446744073709551615
  %conv2.i227 = and i128 %mul.i198, 18446744073709551615
  %add3.i228 = add nuw nsw i128 %conv1.i225, %conv2.i227
  %shr.i230 = lshr i128 %add3.i228, 64
  %conv1.i233 = and i128 %add3.i158, 18446744073709551615
  %conv2.i235 = and i128 %add3.i205, 18446744073709551615
  %add.i234 = add nuw nsw i128 %shr.i230, %conv2.i235
  %add3.i236 = add nuw nsw i128 %add.i234, %conv1.i233
  %shr.i238 = lshr i128 %add3.i236, 64
  %conv1.i241 = and i128 %add3.i166, 18446744073709551615
  %conv2.i243 = and i128 %add3.i213, 18446744073709551615
  %add.i242 = add nuw nsw i128 %shr.i238, %conv2.i243
  %add3.i244 = add nuw nsw i128 %add.i242, %conv1.i241
  %shr.i246 = lshr i128 %add3.i244, 64
  %conv1.i249 = and i128 %add3.i174, 18446744073709551615
  %conv2.i251 = and i128 %add3.i221, 18446744073709551615
  %add.i250 = add nuw nsw i128 %shr.i246, %conv2.i251
  %add3.i252 = add nuw nsw i128 %add.i250, %conv1.i249
  %shr.i254 = lshr i128 %add3.i252, 64
  %conv2.i259 = zext i64 %add15 to i128
  %add.i258 = add nuw nsw i128 %shr.i176, %conv2.i259
  %add3.i260 = add nuw nsw i128 %add.i258, %shr.i254
  %shr.i262 = lshr i128 %add3.i260, 64
  %conv5.i263 = trunc nuw nsw i128 %shr.i262 to i64
  %conv.i264 = and i128 %add3.i228, 18446744073709551615
  %mul.i265 = mul nuw i128 %conv.i264, 18446744069414584321
  %shr.i267 = lshr i128 %mul.i265, 64
  %mul.i270 = mul nuw nsw i128 %conv.i264, 4294967295
  %shr.i272 = lshr i128 %mul.i270, 64
  %conv3.i273 = trunc nuw nsw i128 %shr.i272 to i64
  %mul.i275 = mul nuw i128 %conv.i264, 18446744073709551615
  %shr.i277 = lshr i128 %mul.i275, 64
  %conv2.i281 = and i128 %mul.i270, 18446744073709551615
  %add3.i282 = add nuw nsw i128 %shr.i277, %conv2.i281
  %shr.i284 = lshr i128 %add3.i282, 64
  %conv5.i285 = trunc nuw nsw i128 %shr.i284 to i64
  %add18 = add nuw nsw i64 %conv5.i285, %conv3.i273
  %conv2.i288 = and i128 %mul.i275, 18446744073709551615
  %add3.i289 = add nuw nsw i128 %conv2.i288, %conv.i264
  %shr.i291 = lshr i128 %add3.i289, 64
  %conv1.i294 = and i128 %add3.i236, 18446744073709551615
  %add.i295 = add nuw nsw i128 %conv1.i294, %shr.i291
  %conv2.i296 = and i128 %add3.i282, 18446744073709551615
  %add3.i297 = add nuw nsw i128 %add.i295, %conv2.i296
  %shr.i299 = lshr i128 %add3.i297, 64
  %conv1.i302 = and i128 %add3.i244, 18446744073709551615
  %add.i303 = add nuw nsw i128 %conv1.i302, %shr.i299
  %conv2.i304 = zext nneg i64 %add18 to i128
  %add3.i305 = add nuw nsw i128 %add.i303, %conv2.i304
  %shr.i307 = lshr i128 %add3.i305, 64
  %conv1.i310 = and i128 %add3.i252, 18446744073709551615
  %conv2.i312 = and i128 %mul.i265, 18446744073709551615
  %add.i311 = add nuw nsw i128 %shr.i307, %conv2.i312
  %add3.i313 = add nuw nsw i128 %add.i311, %conv1.i310
  %shr.i315 = lshr i128 %add3.i313, 64
  %conv1.i318 = and i128 %add3.i260, 18446744073709551615
  %add.i319 = add nuw nsw i128 %shr.i315, %shr.i267
  %add3.i321 = add nuw nsw i128 %add.i319, %conv1.i318
  %shr.i323 = lshr i128 %add3.i321, 64
  %conv5.i324 = trunc nuw nsw i128 %shr.i323 to i64
  %add21 = add nuw nsw i64 %conv5.i324, %conv5.i263
  %conv.i325 = zext i64 %1 to i128
  %mul.i327 = mul nuw i128 %conv1.i, %conv.i325
  %shr.i329 = lshr i128 %mul.i327, 64
  %conv3.i330 = trunc nuw i128 %shr.i329 to i64
  %mul.i333 = mul nuw i128 %conv1.i82, %conv.i325
  %shr.i335 = lshr i128 %mul.i333, 64
  %mul.i339 = mul nuw i128 %conv1.i88, %conv.i325
  %shr.i341 = lshr i128 %mul.i339, 64
  %mul.i345 = mul nuw i128 %conv1.i94, %conv.i325
  %shr.i347 = lshr i128 %mul.i345, 64
  %conv2.i351 = and i128 %mul.i339, 18446744073709551615
  %add3.i352 = add nuw nsw i128 %shr.i347, %conv2.i351
  %shr.i354 = lshr i128 %add3.i352, 64
  %conv2.i359 = and i128 %mul.i333, 18446744073709551615
  %add.i358 = add nuw nsw i128 %shr.i341, %conv2.i359
  %add3.i360 = add nuw nsw i128 %add.i358, %shr.i354
  %shr.i362 = lshr i128 %add3.i360, 64
  %conv2.i367 = and i128 %mul.i327, 18446744073709551615
  %add.i366 = add nuw nsw i128 %shr.i335, %conv2.i367
  %add3.i368 = add nuw nsw i128 %add.i366, %shr.i362
  %shr.i370 = lshr i128 %add3.i368, 64
  %conv5.i371 = trunc nuw nsw i128 %shr.i370 to i64
  %add27 = add nuw i64 %conv5.i371, %conv3.i330
  %conv1.i372 = and i128 %add3.i297, 18446744073709551615
  %conv2.i374 = and i128 %mul.i345, 18446744073709551615
  %add3.i375 = add nuw nsw i128 %conv1.i372, %conv2.i374
  %shr.i377 = lshr i128 %add3.i375, 64
  %conv1.i380 = and i128 %add3.i305, 18446744073709551615
  %conv2.i382 = and i128 %add3.i352, 18446744073709551615
  %add.i381 = add nuw nsw i128 %shr.i377, %conv2.i382
  %add3.i383 = add nuw nsw i128 %add.i381, %conv1.i380
  %shr.i385 = lshr i128 %add3.i383, 64
  %conv1.i388 = and i128 %add3.i313, 18446744073709551615
  %conv2.i390 = and i128 %add3.i360, 18446744073709551615
  %add.i389 = add nuw nsw i128 %shr.i385, %conv2.i390
  %add3.i391 = add nuw nsw i128 %add.i389, %conv1.i388
  %shr.i393 = lshr i128 %add3.i391, 64
  %conv1.i396 = and i128 %add3.i321, 18446744073709551615
  %conv2.i398 = and i128 %add3.i368, 18446744073709551615
  %add.i397 = add nuw nsw i128 %shr.i393, %conv2.i398
  %add3.i399 = add nuw nsw i128 %add.i397, %conv1.i396
  %shr.i401 = lshr i128 %add3.i399, 64
  %conv1.i404 = zext nneg i64 %add21 to i128
  %conv2.i406 = zext i64 %add27 to i128
  %add.i405 = add nuw nsw i128 %conv1.i404, %conv2.i406
  %add3.i407 = add nuw nsw i128 %add.i405, %shr.i401
  %shr.i409 = lshr i128 %add3.i407, 64
  %conv5.i410 = trunc nuw nsw i128 %shr.i409 to i64
  %conv.i411 = and i128 %add3.i375, 18446744073709551615
  %mul.i412 = mul nuw i128 %conv.i411, 18446744069414584321
  %shr.i414 = lshr i128 %mul.i412, 64
  %mul.i417 = mul nuw nsw i128 %conv.i411, 4294967295
  %shr.i419 = lshr i128 %mul.i417, 64
  %conv3.i420 = trunc nuw nsw i128 %shr.i419 to i64
  %mul.i422 = mul nuw i128 %conv.i411, 18446744073709551615
  %shr.i424 = lshr i128 %mul.i422, 64
  %conv2.i428 = and i128 %mul.i417, 18446744073709551615
  %add3.i429 = add nuw nsw i128 %shr.i424, %conv2.i428
  %shr.i431 = lshr i128 %add3.i429, 64
  %conv5.i432 = trunc nuw nsw i128 %shr.i431 to i64
  %add29 = add nuw nsw i64 %conv5.i432, %conv3.i420
  %conv2.i435 = and i128 %mul.i422, 18446744073709551615
  %add3.i436 = add nuw nsw i128 %conv2.i435, %conv.i411
  %shr.i438 = lshr i128 %add3.i436, 64
  %conv1.i441 = and i128 %add3.i383, 18446744073709551615
  %add.i442 = add nuw nsw i128 %conv1.i441, %shr.i438
  %conv2.i443 = and i128 %add3.i429, 18446744073709551615
  %add3.i444 = add nuw nsw i128 %add.i442, %conv2.i443
  %shr.i446 = lshr i128 %add3.i444, 64
  %conv1.i449 = and i128 %add3.i391, 18446744073709551615
  %add.i450 = add nuw nsw i128 %conv1.i449, %shr.i446
  %conv2.i451 = zext nneg i64 %add29 to i128
  %add3.i452 = add nuw nsw i128 %add.i450, %conv2.i451
  %shr.i454 = lshr i128 %add3.i452, 64
  %conv1.i457 = and i128 %add3.i399, 18446744073709551615
  %conv2.i459 = and i128 %mul.i412, 18446744073709551615
  %add.i458 = add nuw nsw i128 %shr.i454, %conv2.i459
  %add3.i460 = add nuw nsw i128 %add.i458, %conv1.i457
  %shr.i462 = lshr i128 %add3.i460, 64
  %conv1.i465 = and i128 %add3.i407, 18446744073709551615
  %add.i466 = add nuw nsw i128 %shr.i462, %shr.i414
  %add3.i468 = add nuw nsw i128 %add.i466, %conv1.i465
  %shr.i470 = lshr i128 %add3.i468, 64
  %conv5.i471 = trunc nuw nsw i128 %shr.i470 to i64
  %add32 = add nuw nsw i64 %conv5.i471, %conv5.i410
  %conv.i472 = zext i64 %2 to i128
  %mul.i474 = mul nuw i128 %conv1.i, %conv.i472
  %shr.i476 = lshr i128 %mul.i474, 64
  %conv3.i477 = trunc nuw i128 %shr.i476 to i64
  %mul.i480 = mul nuw i128 %conv1.i82, %conv.i472
  %shr.i482 = lshr i128 %mul.i480, 64
  %mul.i486 = mul nuw i128 %conv1.i88, %conv.i472
  %shr.i488 = lshr i128 %mul.i486, 64
  %mul.i492 = mul nuw i128 %conv1.i94, %conv.i472
  %shr.i494 = lshr i128 %mul.i492, 64
  %conv2.i498 = and i128 %mul.i486, 18446744073709551615
  %add3.i499 = add nuw nsw i128 %shr.i494, %conv2.i498
  %shr.i501 = lshr i128 %add3.i499, 64
  %conv2.i506 = and i128 %mul.i480, 18446744073709551615
  %add.i505 = add nuw nsw i128 %shr.i488, %conv2.i506
  %add3.i507 = add nuw nsw i128 %add.i505, %shr.i501
  %shr.i509 = lshr i128 %add3.i507, 64
  %conv2.i514 = and i128 %mul.i474, 18446744073709551615
  %add.i513 = add nuw nsw i128 %shr.i482, %conv2.i514
  %add3.i515 = add nuw nsw i128 %add.i513, %shr.i509
  %shr.i517 = lshr i128 %add3.i515, 64
  %conv5.i518 = trunc nuw nsw i128 %shr.i517 to i64
  %add38 = add nuw i64 %conv5.i518, %conv3.i477
  %conv1.i519 = and i128 %add3.i444, 18446744073709551615
  %conv2.i521 = and i128 %mul.i492, 18446744073709551615
  %add3.i522 = add nuw nsw i128 %conv1.i519, %conv2.i521
  %shr.i524 = lshr i128 %add3.i522, 64
  %conv1.i527 = and i128 %add3.i452, 18446744073709551615
  %conv2.i529 = and i128 %add3.i499, 18446744073709551615
  %add.i528 = add nuw nsw i128 %shr.i524, %conv2.i529
  %add3.i530 = add nuw nsw i128 %add.i528, %conv1.i527
  %shr.i532 = lshr i128 %add3.i530, 64
  %conv1.i535 = and i128 %add3.i460, 18446744073709551615
  %conv2.i537 = and i128 %add3.i507, 18446744073709551615
  %add.i536 = add nuw nsw i128 %shr.i532, %conv2.i537
  %add3.i538 = add nuw nsw i128 %add.i536, %conv1.i535
  %shr.i540 = lshr i128 %add3.i538, 64
  %conv1.i543 = and i128 %add3.i468, 18446744073709551615
  %conv2.i545 = and i128 %add3.i515, 18446744073709551615
  %add.i544 = add nuw nsw i128 %shr.i540, %conv2.i545
  %add3.i546 = add nuw nsw i128 %add.i544, %conv1.i543
  %shr.i548 = lshr i128 %add3.i546, 64
  %conv1.i551 = zext nneg i64 %add32 to i128
  %conv2.i553 = zext i64 %add38 to i128
  %add.i552 = add nuw nsw i128 %conv1.i551, %conv2.i553
  %add3.i554 = add nuw nsw i128 %add.i552, %shr.i548
  %shr.i556 = lshr i128 %add3.i554, 64
  %conv5.i557 = trunc nuw nsw i128 %shr.i556 to i64
  %conv.i558 = and i128 %add3.i522, 18446744073709551615
  %mul.i559 = mul nuw i128 %conv.i558, 18446744069414584321
  %shr.i561 = lshr i128 %mul.i559, 64
  %mul.i564 = mul nuw nsw i128 %conv.i558, 4294967295
  %shr.i566 = lshr i128 %mul.i564, 64
  %conv3.i567 = trunc nuw nsw i128 %shr.i566 to i64
  %mul.i569 = mul nuw i128 %conv.i558, 18446744073709551615
  %shr.i571 = lshr i128 %mul.i569, 64
  %conv2.i575 = and i128 %mul.i564, 18446744073709551615
  %add3.i576 = add nuw nsw i128 %shr.i571, %conv2.i575
  %shr.i578 = lshr i128 %add3.i576, 64
  %conv5.i579 = trunc nuw nsw i128 %shr.i578 to i64
  %add40 = add nuw nsw i64 %conv5.i579, %conv3.i567
  %conv2.i582 = and i128 %mul.i569, 18446744073709551615
  %add3.i583 = add nuw nsw i128 %conv2.i582, %conv.i558
  %shr.i585 = lshr i128 %add3.i583, 64
  %conv1.i588 = and i128 %add3.i530, 18446744073709551615
  %add.i589 = add nuw nsw i128 %conv1.i588, %shr.i585
  %conv2.i590 = and i128 %add3.i576, 18446744073709551615
  %add3.i591 = add nuw nsw i128 %add.i589, %conv2.i590
  %conv4.i592 = trunc i128 %add3.i591 to i64
  %shr.i593 = lshr i128 %add3.i591, 64
  %conv1.i596 = and i128 %add3.i538, 18446744073709551615
  %add.i597 = add nuw nsw i128 %conv1.i596, %shr.i593
  %conv2.i598 = zext nneg i64 %add40 to i128
  %add3.i599 = add nuw nsw i128 %add.i597, %conv2.i598
  %conv4.i600 = trunc i128 %add3.i599 to i64
  %shr.i601 = lshr i128 %add3.i599, 64
  %conv1.i604 = and i128 %add3.i546, 18446744073709551615
  %conv2.i606 = and i128 %mul.i559, 18446744073709551615
  %add.i605 = add nuw nsw i128 %shr.i601, %conv2.i606
  %add3.i607 = add nuw nsw i128 %add.i605, %conv1.i604
  %conv4.i608 = trunc i128 %add3.i607 to i64
  %shr.i609 = lshr i128 %add3.i607, 64
  %conv1.i612 = and i128 %add3.i554, 18446744073709551615
  %add.i613 = add nuw nsw i128 %shr.i609, %shr.i561
  %add3.i615 = add nuw nsw i128 %add.i613, %conv1.i612
  %conv4.i616 = trunc i128 %add3.i615 to i64
  %shr.i617 = lshr i128 %add3.i615, 64
  %conv5.i618 = trunc nuw nsw i128 %shr.i617 to i64
  %add43 = add nuw nsw i64 %conv5.i618, %conv5.i557
  %conv.i619 = and i128 %add3.i591, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i619, -18446744073709551615
  %shr.i620 = lshr i128 %sub3.i, 64
  %conv4.i621 = trunc i128 %shr.i620 to i8
  %conv5.i622 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i621
  %conv.i623 = and i128 %add3.i599, 18446744073709551615
  %conv1.i624 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i623, -4294967295
  %sub3.i625 = sub nsw i128 %.neg, %conv1.i624
  %shr.i626 = lshr i128 %sub3.i625, 64
  %conv4.i627 = trunc i128 %shr.i626 to i8
  %conv5.i628 = trunc i128 %sub3.i625 to i64
  %sub7.i629 = sub i8 0, %conv4.i627
  %conv.i630 = and i128 %add3.i607, 18446744073709551615
  %conv1.i631 = zext i8 %sub7.i629 to i128
  %sub3.i632 = sub nsw i128 %conv.i630, %conv1.i631
  %shr.i633 = lshr i128 %sub3.i632, 64
  %conv4.i634 = trunc i128 %shr.i633 to i8
  %conv5.i635 = trunc i128 %sub3.i632 to i64
  %sub7.i636 = sub i8 0, %conv4.i634
  %conv.i637 = and i128 %add3.i615, 18446744073709551615
  %conv1.i638 = zext i8 %sub7.i636 to i128
  %.neg689 = add nsw i128 %conv.i637, -18446744069414584321
  %sub3.i639 = sub nsw i128 %.neg689, %conv1.i638
  %shr.i640 = lshr i128 %sub3.i639, 64
  %conv4.i641 = trunc i128 %shr.i640 to i8
  %conv5.i642 = trunc i128 %sub3.i639 to i64
  %sub7.i643 = sub i8 0, %conv4.i641
  %conv.i644 = zext nneg i64 %add43 to i128
  %conv1.i645 = zext i8 %sub7.i643 to i128
  %sub3.i646 = sub nsw i128 %conv.i644, %conv1.i645
  %shr.i647 = lshr i128 %sub3.i646, 64
  %conv4.i648 = trunc i128 %shr.i647 to i8
  %tobool.i = icmp ne i8 %conv4.i648, 0
  %conv4.i651 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i651) #7, !srcloc !9
  %and5.i = and i64 %8, %conv4.i592
  %not.i = xor i64 %conv4.i651, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %9, %conv5.i622
  %or.i = or i64 %and7.i, %and5.i
  %and5.i654 = and i64 %8, %conv4.i600
  %and7.i656 = and i64 %9, %conv5.i628
  %or.i657 = or i64 %and7.i656, %and5.i654
  %and5.i660 = and i64 %8, %conv4.i608
  %and7.i662 = and i64 %9, %conv5.i635
  %or.i663 = or i64 %and7.i662, %and5.i660
  %and5.i666 = and i64 %8, %conv4.i616
  %and7.i668 = and i64 %9, %conv5.i642
  %or.i669 = or i64 %and7.i668, %and5.i666
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i657, ptr %arrayidx45, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i663, ptr %arrayidx46, align 8, !tbaa !10
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i669, ptr %arrayidx47, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p256_square(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
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
  %mul.i119 = mul nuw i128 %conv.i118, 18446744069414584321
  %shr.i121 = lshr i128 %mul.i119, 64
  %mul.i124 = mul nuw nsw i128 %conv.i118, 4294967295
  %shr.i126 = lshr i128 %mul.i124, 64
  %conv3.i127 = trunc nuw nsw i128 %shr.i126 to i64
  %mul.i129 = mul nuw i128 %conv.i118, 18446744073709551615
  %shr.i131 = lshr i128 %mul.i129, 64
  %conv2.i135 = and i128 %mul.i124, 18446744073709551615
  %add3.i136 = add nuw nsw i128 %shr.i131, %conv2.i135
  %shr.i138 = lshr i128 %add3.i136, 64
  %conv5.i139 = trunc nuw nsw i128 %shr.i138 to i64
  %add9 = add nuw nsw i64 %conv5.i139, %conv3.i127
  %conv2.i142 = and i128 %mul.i129, 18446744073709551615
  %add3.i143 = add nuw nsw i128 %conv2.i142, %conv.i118
  %shr.i145 = lshr i128 %add3.i143, 64
  %conv1.i148 = and i128 %add3.i, 18446744073709551615
  %add.i149 = add nuw nsw i128 %shr.i145, %conv1.i148
  %conv2.i150 = and i128 %add3.i136, 18446744073709551615
  %add3.i151 = add nuw nsw i128 %add.i149, %conv2.i150
  %shr.i153 = lshr i128 %add3.i151, 64
  %conv1.i156 = and i128 %add3.i106, 18446744073709551615
  %add.i157 = add nuw nsw i128 %shr.i153, %conv1.i156
  %conv2.i158 = zext nneg i64 %add9 to i128
  %add3.i159 = add nuw nsw i128 %add.i157, %conv2.i158
  %shr.i161 = lshr i128 %add3.i159, 64
  %conv1.i164 = and i128 %add3.i114, 18446744073709551615
  %conv2.i166 = and i128 %mul.i119, 18446744073709551615
  %add.i165 = add nuw nsw i128 %conv1.i164, %conv2.i166
  %add3.i167 = add nuw nsw i128 %add.i165, %shr.i161
  %shr.i169 = lshr i128 %add3.i167, 64
  %conv1.i172 = zext i64 %add to i128
  %add.i173 = add nuw nsw i128 %shr.i121, %conv1.i172
  %add3.i175 = add nuw nsw i128 %add.i173, %shr.i169
  %shr.i177 = lshr i128 %add3.i175, 64
  %mul.i181 = mul nuw i128 %conv1.i, %conv1.i89
  %shr.i183 = lshr i128 %mul.i181, 64
  %conv3.i184 = trunc nuw i128 %shr.i183 to i64
  %mul.i187 = mul nuw i128 %conv1.i83, %conv1.i89
  %shr.i189 = lshr i128 %mul.i187, 64
  %mul.i193 = mul nuw i128 %conv1.i89, %conv1.i89
  %shr.i195 = lshr i128 %mul.i193, 64
  %conv2.i205 = and i128 %mul.i193, 18446744073709551615
  %add3.i206 = add nuw nsw i128 %shr.i92, %conv2.i205
  %shr.i208 = lshr i128 %add3.i206, 64
  %conv2.i213 = and i128 %mul.i187, 18446744073709551615
  %add.i212 = add nuw nsw i128 %conv2.i213, %shr.i195
  %add3.i214 = add nuw nsw i128 %add.i212, %shr.i208
  %shr.i216 = lshr i128 %add3.i214, 64
  %conv2.i221 = and i128 %mul.i181, 18446744073709551615
  %add.i220 = add nuw nsw i128 %conv2.i221, %shr.i189
  %add3.i222 = add nuw nsw i128 %add.i220, %shr.i216
  %shr.i224 = lshr i128 %add3.i222, 64
  %conv5.i225 = trunc nuw nsw i128 %shr.i224 to i64
  %add15 = add nuw i64 %conv5.i225, %conv3.i184
  %conv1.i226 = and i128 %add3.i151, 18446744073709551615
  %add3.i229 = add nuw nsw i128 %conv1.i226, %conv2.i101
  %shr.i231 = lshr i128 %add3.i229, 64
  %conv1.i234 = and i128 %add3.i159, 18446744073709551615
  %conv2.i236 = and i128 %add3.i206, 18446744073709551615
  %add.i235 = add nuw nsw i128 %shr.i231, %conv2.i236
  %add3.i237 = add nuw nsw i128 %add.i235, %conv1.i234
  %shr.i239 = lshr i128 %add3.i237, 64
  %conv1.i242 = and i128 %add3.i167, 18446744073709551615
  %conv2.i244 = and i128 %add3.i214, 18446744073709551615
  %add.i243 = add nuw nsw i128 %shr.i239, %conv2.i244
  %add3.i245 = add nuw nsw i128 %add.i243, %conv1.i242
  %shr.i247 = lshr i128 %add3.i245, 64
  %conv1.i250 = and i128 %add3.i175, 18446744073709551615
  %conv2.i252 = and i128 %add3.i222, 18446744073709551615
  %add.i251 = add nuw nsw i128 %shr.i247, %conv2.i252
  %add3.i253 = add nuw nsw i128 %add.i251, %conv1.i250
  %shr.i255 = lshr i128 %add3.i253, 64
  %conv2.i260 = zext i64 %add15 to i128
  %add.i259 = add nuw nsw i128 %shr.i177, %conv2.i260
  %add3.i261 = add nuw nsw i128 %add.i259, %shr.i255
  %shr.i263 = lshr i128 %add3.i261, 64
  %conv5.i264 = trunc nuw nsw i128 %shr.i263 to i64
  %conv.i265 = and i128 %add3.i229, 18446744073709551615
  %mul.i266 = mul nuw i128 %conv.i265, 18446744069414584321
  %shr.i268 = lshr i128 %mul.i266, 64
  %mul.i271 = mul nuw nsw i128 %conv.i265, 4294967295
  %shr.i273 = lshr i128 %mul.i271, 64
  %conv3.i274 = trunc nuw nsw i128 %shr.i273 to i64
  %mul.i276 = mul nuw i128 %conv.i265, 18446744073709551615
  %shr.i278 = lshr i128 %mul.i276, 64
  %conv2.i282 = and i128 %mul.i271, 18446744073709551615
  %add3.i283 = add nuw nsw i128 %shr.i278, %conv2.i282
  %shr.i285 = lshr i128 %add3.i283, 64
  %conv5.i286 = trunc nuw nsw i128 %shr.i285 to i64
  %add18 = add nuw nsw i64 %conv5.i286, %conv3.i274
  %conv2.i289 = and i128 %mul.i276, 18446744073709551615
  %add3.i290 = add nuw nsw i128 %conv2.i289, %conv.i265
  %shr.i292 = lshr i128 %add3.i290, 64
  %conv1.i295 = and i128 %add3.i237, 18446744073709551615
  %add.i296 = add nuw nsw i128 %conv1.i295, %shr.i292
  %conv2.i297 = and i128 %add3.i283, 18446744073709551615
  %add3.i298 = add nuw nsw i128 %add.i296, %conv2.i297
  %shr.i300 = lshr i128 %add3.i298, 64
  %conv1.i303 = and i128 %add3.i245, 18446744073709551615
  %add.i304 = add nuw nsw i128 %conv1.i303, %shr.i300
  %conv2.i305 = zext nneg i64 %add18 to i128
  %add3.i306 = add nuw nsw i128 %add.i304, %conv2.i305
  %shr.i308 = lshr i128 %add3.i306, 64
  %conv1.i311 = and i128 %add3.i253, 18446744073709551615
  %conv2.i313 = and i128 %mul.i266, 18446744073709551615
  %add.i312 = add nuw nsw i128 %shr.i308, %conv2.i313
  %add3.i314 = add nuw nsw i128 %add.i312, %conv1.i311
  %shr.i316 = lshr i128 %add3.i314, 64
  %conv1.i319 = and i128 %add3.i261, 18446744073709551615
  %add.i320 = add nuw nsw i128 %shr.i316, %shr.i268
  %add3.i322 = add nuw nsw i128 %add.i320, %conv1.i319
  %shr.i324 = lshr i128 %add3.i322, 64
  %conv5.i325 = trunc nuw nsw i128 %shr.i324 to i64
  %add21 = add nuw nsw i64 %conv5.i325, %conv5.i264
  %mul.i328 = mul nuw i128 %conv1.i, %conv1.i83
  %shr.i330 = lshr i128 %mul.i328, 64
  %conv3.i331 = trunc nuw i128 %shr.i330 to i64
  %mul.i334 = mul nuw i128 %conv1.i83, %conv1.i83
  %shr.i336 = lshr i128 %mul.i334, 64
  %add3.i353 = add nuw nsw i128 %shr.i86, %conv2.i213
  %shr.i355 = lshr i128 %add3.i353, 64
  %conv2.i360 = and i128 %mul.i334, 18446744073709551615
  %add.i359 = add nuw nsw i128 %conv2.i360, %shr.i189
  %add3.i361 = add nuw nsw i128 %add.i359, %shr.i355
  %shr.i363 = lshr i128 %add3.i361, 64
  %conv2.i368 = and i128 %mul.i328, 18446744073709551615
  %add.i367 = add nuw nsw i128 %conv2.i368, %shr.i336
  %add3.i369 = add nuw nsw i128 %add.i367, %shr.i363
  %shr.i371 = lshr i128 %add3.i369, 64
  %conv5.i372 = trunc nuw nsw i128 %shr.i371 to i64
  %add27 = add nuw i64 %conv5.i372, %conv3.i331
  %conv1.i373 = and i128 %add3.i298, 18446744073709551615
  %add3.i376 = add nuw nsw i128 %conv1.i373, %conv2.i105
  %shr.i378 = lshr i128 %add3.i376, 64
  %conv1.i381 = and i128 %add3.i306, 18446744073709551615
  %conv2.i383 = and i128 %add3.i353, 18446744073709551615
  %add.i382 = add nuw nsw i128 %shr.i378, %conv2.i383
  %add3.i384 = add nuw nsw i128 %add.i382, %conv1.i381
  %shr.i386 = lshr i128 %add3.i384, 64
  %conv1.i389 = and i128 %add3.i314, 18446744073709551615
  %conv2.i391 = and i128 %add3.i361, 18446744073709551615
  %add.i390 = add nuw nsw i128 %shr.i386, %conv2.i391
  %add3.i392 = add nuw nsw i128 %add.i390, %conv1.i389
  %shr.i394 = lshr i128 %add3.i392, 64
  %conv1.i397 = and i128 %add3.i322, 18446744073709551615
  %conv2.i399 = and i128 %add3.i369, 18446744073709551615
  %add.i398 = add nuw nsw i128 %shr.i394, %conv2.i399
  %add3.i400 = add nuw nsw i128 %add.i398, %conv1.i397
  %shr.i402 = lshr i128 %add3.i400, 64
  %conv1.i405 = zext nneg i64 %add21 to i128
  %conv2.i407 = zext i64 %add27 to i128
  %add.i406 = add nuw nsw i128 %conv1.i405, %conv2.i407
  %add3.i408 = add nuw nsw i128 %add.i406, %shr.i402
  %shr.i410 = lshr i128 %add3.i408, 64
  %conv5.i411 = trunc nuw nsw i128 %shr.i410 to i64
  %conv.i412 = and i128 %add3.i376, 18446744073709551615
  %mul.i413 = mul nuw i128 %conv.i412, 18446744069414584321
  %shr.i415 = lshr i128 %mul.i413, 64
  %mul.i418 = mul nuw nsw i128 %conv.i412, 4294967295
  %shr.i420 = lshr i128 %mul.i418, 64
  %conv3.i421 = trunc nuw nsw i128 %shr.i420 to i64
  %mul.i423 = mul nuw i128 %conv.i412, 18446744073709551615
  %shr.i425 = lshr i128 %mul.i423, 64
  %conv2.i429 = and i128 %mul.i418, 18446744073709551615
  %add3.i430 = add nuw nsw i128 %shr.i425, %conv2.i429
  %shr.i432 = lshr i128 %add3.i430, 64
  %conv5.i433 = trunc nuw nsw i128 %shr.i432 to i64
  %add29 = add nuw nsw i64 %conv5.i433, %conv3.i421
  %conv2.i436 = and i128 %mul.i423, 18446744073709551615
  %add3.i437 = add nuw nsw i128 %conv2.i436, %conv.i412
  %shr.i439 = lshr i128 %add3.i437, 64
  %conv1.i442 = and i128 %add3.i384, 18446744073709551615
  %add.i443 = add nuw nsw i128 %conv1.i442, %shr.i439
  %conv2.i444 = and i128 %add3.i430, 18446744073709551615
  %add3.i445 = add nuw nsw i128 %add.i443, %conv2.i444
  %shr.i447 = lshr i128 %add3.i445, 64
  %conv1.i450 = and i128 %add3.i392, 18446744073709551615
  %add.i451 = add nuw nsw i128 %conv1.i450, %shr.i447
  %conv2.i452 = zext nneg i64 %add29 to i128
  %add3.i453 = add nuw nsw i128 %add.i451, %conv2.i452
  %shr.i455 = lshr i128 %add3.i453, 64
  %conv1.i458 = and i128 %add3.i400, 18446744073709551615
  %conv2.i460 = and i128 %mul.i413, 18446744073709551615
  %add.i459 = add nuw nsw i128 %shr.i455, %conv2.i460
  %add3.i461 = add nuw nsw i128 %add.i459, %conv1.i458
  %shr.i463 = lshr i128 %add3.i461, 64
  %conv1.i466 = and i128 %add3.i408, 18446744073709551615
  %add.i467 = add nuw nsw i128 %shr.i463, %shr.i415
  %add3.i469 = add nuw nsw i128 %add.i467, %conv1.i466
  %shr.i471 = lshr i128 %add3.i469, 64
  %conv5.i472 = trunc nuw nsw i128 %shr.i471 to i64
  %add32 = add nuw nsw i64 %conv5.i472, %conv5.i411
  %mul.i475 = mul nuw i128 %conv1.i, %conv1.i
  %shr.i477 = lshr i128 %mul.i475, 64
  %conv3.i478 = trunc nuw i128 %shr.i477 to i64
  %add3.i500 = add nuw nsw i128 %shr.i, %conv2.i221
  %shr.i502 = lshr i128 %add3.i500, 64
  %add.i506 = add nuw nsw i128 %conv2.i368, %shr.i183
  %add3.i508 = add nuw nsw i128 %add.i506, %shr.i502
  %shr.i510 = lshr i128 %add3.i508, 64
  %conv2.i515 = and i128 %mul.i475, 18446744073709551615
  %add.i514 = add nuw nsw i128 %conv2.i515, %shr.i330
  %add3.i516 = add nuw nsw i128 %add.i514, %shr.i510
  %shr.i518 = lshr i128 %add3.i516, 64
  %conv5.i519 = trunc nuw nsw i128 %shr.i518 to i64
  %add38 = add nuw i64 %conv5.i519, %conv3.i478
  %conv1.i520 = and i128 %add3.i445, 18446744073709551615
  %add3.i523 = add nuw nsw i128 %conv1.i520, %conv2.i113
  %shr.i525 = lshr i128 %add3.i523, 64
  %conv1.i528 = and i128 %add3.i453, 18446744073709551615
  %conv2.i530 = and i128 %add3.i500, 18446744073709551615
  %add.i529 = add nuw nsw i128 %shr.i525, %conv2.i530
  %add3.i531 = add nuw nsw i128 %add.i529, %conv1.i528
  %shr.i533 = lshr i128 %add3.i531, 64
  %conv1.i536 = and i128 %add3.i461, 18446744073709551615
  %conv2.i538 = and i128 %add3.i508, 18446744073709551615
  %add.i537 = add nuw nsw i128 %shr.i533, %conv2.i538
  %add3.i539 = add nuw nsw i128 %add.i537, %conv1.i536
  %shr.i541 = lshr i128 %add3.i539, 64
  %conv1.i544 = and i128 %add3.i469, 18446744073709551615
  %conv2.i546 = and i128 %add3.i516, 18446744073709551615
  %add.i545 = add nuw nsw i128 %shr.i541, %conv2.i546
  %add3.i547 = add nuw nsw i128 %add.i545, %conv1.i544
  %shr.i549 = lshr i128 %add3.i547, 64
  %conv1.i552 = zext nneg i64 %add32 to i128
  %conv2.i554 = zext i64 %add38 to i128
  %add.i553 = add nuw nsw i128 %conv1.i552, %conv2.i554
  %add3.i555 = add nuw nsw i128 %add.i553, %shr.i549
  %shr.i557 = lshr i128 %add3.i555, 64
  %conv5.i558 = trunc nuw nsw i128 %shr.i557 to i64
  %conv.i559 = and i128 %add3.i523, 18446744073709551615
  %mul.i560 = mul nuw i128 %conv.i559, 18446744069414584321
  %shr.i562 = lshr i128 %mul.i560, 64
  %mul.i565 = mul nuw nsw i128 %conv.i559, 4294967295
  %shr.i567 = lshr i128 %mul.i565, 64
  %conv3.i568 = trunc nuw nsw i128 %shr.i567 to i64
  %mul.i570 = mul nuw i128 %conv.i559, 18446744073709551615
  %shr.i572 = lshr i128 %mul.i570, 64
  %conv2.i576 = and i128 %mul.i565, 18446744073709551615
  %add3.i577 = add nuw nsw i128 %shr.i572, %conv2.i576
  %shr.i579 = lshr i128 %add3.i577, 64
  %conv5.i580 = trunc nuw nsw i128 %shr.i579 to i64
  %add40 = add nuw nsw i64 %conv5.i580, %conv3.i568
  %conv2.i583 = and i128 %mul.i570, 18446744073709551615
  %add3.i584 = add nuw nsw i128 %conv2.i583, %conv.i559
  %shr.i586 = lshr i128 %add3.i584, 64
  %conv1.i589 = and i128 %add3.i531, 18446744073709551615
  %add.i590 = add nuw nsw i128 %conv1.i589, %shr.i586
  %conv2.i591 = and i128 %add3.i577, 18446744073709551615
  %add3.i592 = add nuw nsw i128 %add.i590, %conv2.i591
  %conv4.i593 = trunc i128 %add3.i592 to i64
  %shr.i594 = lshr i128 %add3.i592, 64
  %conv1.i597 = and i128 %add3.i539, 18446744073709551615
  %add.i598 = add nuw nsw i128 %conv1.i597, %shr.i594
  %conv2.i599 = zext nneg i64 %add40 to i128
  %add3.i600 = add nuw nsw i128 %add.i598, %conv2.i599
  %conv4.i601 = trunc i128 %add3.i600 to i64
  %shr.i602 = lshr i128 %add3.i600, 64
  %conv1.i605 = and i128 %add3.i547, 18446744073709551615
  %conv2.i607 = and i128 %mul.i560, 18446744073709551615
  %add.i606 = add nuw nsw i128 %shr.i602, %conv2.i607
  %add3.i608 = add nuw nsw i128 %add.i606, %conv1.i605
  %conv4.i609 = trunc i128 %add3.i608 to i64
  %shr.i610 = lshr i128 %add3.i608, 64
  %conv1.i613 = and i128 %add3.i555, 18446744073709551615
  %add.i614 = add nuw nsw i128 %shr.i610, %shr.i562
  %add3.i616 = add nuw nsw i128 %add.i614, %conv1.i613
  %conv4.i617 = trunc i128 %add3.i616 to i64
  %shr.i618 = lshr i128 %add3.i616, 64
  %conv5.i619 = trunc nuw nsw i128 %shr.i618 to i64
  %add43 = add nuw nsw i64 %conv5.i619, %conv5.i558
  %conv.i620 = and i128 %add3.i592, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i620, -18446744073709551615
  %shr.i621 = lshr i128 %sub3.i, 64
  %conv4.i622 = trunc i128 %shr.i621 to i8
  %conv5.i623 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i622
  %conv.i624 = and i128 %add3.i600, 18446744073709551615
  %conv1.i625 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i624, -4294967295
  %sub3.i626 = sub nsw i128 %.neg, %conv1.i625
  %shr.i627 = lshr i128 %sub3.i626, 64
  %conv4.i628 = trunc i128 %shr.i627 to i8
  %conv5.i629 = trunc i128 %sub3.i626 to i64
  %sub7.i630 = sub i8 0, %conv4.i628
  %conv.i631 = and i128 %add3.i608, 18446744073709551615
  %conv1.i632 = zext i8 %sub7.i630 to i128
  %sub3.i633 = sub nsw i128 %conv.i631, %conv1.i632
  %shr.i634 = lshr i128 %sub3.i633, 64
  %conv4.i635 = trunc i128 %shr.i634 to i8
  %conv5.i636 = trunc i128 %sub3.i633 to i64
  %sub7.i637 = sub i8 0, %conv4.i635
  %conv.i638 = and i128 %add3.i616, 18446744073709551615
  %conv1.i639 = zext i8 %sub7.i637 to i128
  %.neg690 = add nsw i128 %conv.i638, -18446744069414584321
  %sub3.i640 = sub nsw i128 %.neg690, %conv1.i639
  %shr.i641 = lshr i128 %sub3.i640, 64
  %conv4.i642 = trunc i128 %shr.i641 to i8
  %conv5.i643 = trunc i128 %sub3.i640 to i64
  %sub7.i644 = sub i8 0, %conv4.i642
  %conv.i645 = zext nneg i64 %add43 to i128
  %conv1.i646 = zext i8 %sub7.i644 to i128
  %sub3.i647 = sub nsw i128 %conv.i645, %conv1.i646
  %shr.i648 = lshr i128 %sub3.i647, 64
  %conv4.i649 = trunc i128 %shr.i648 to i8
  %tobool.i = icmp ne i8 %conv4.i649, 0
  %conv4.i652 = sext i1 %tobool.i to i64
  %4 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i652) #7, !srcloc !9
  %and5.i = and i64 %4, %conv4.i593
  %not.i = xor i64 %conv4.i652, -1
  %5 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %5, %conv5.i623
  %or.i = or i64 %and7.i, %and5.i
  %and5.i655 = and i64 %4, %conv4.i601
  %and7.i657 = and i64 %5, %conv5.i629
  %or.i658 = or i64 %and7.i657, %and5.i655
  %and5.i661 = and i64 %4, %conv4.i609
  %and7.i663 = and i64 %5, %conv5.i636
  %or.i664 = or i64 %and7.i663, %and5.i661
  %and5.i667 = and i64 %4, %conv4.i617
  %and7.i669 = and i64 %5, %conv5.i643
  %or.i670 = or i64 %and7.i669, %and5.i667
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i658, ptr %arrayidx45, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i664, ptr %arrayidx46, align 8, !tbaa !10
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i670, ptr %arrayidx47, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p256_add(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
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
  %sub3.i = add nsw i128 %conv.i43, -18446744073709551615
  %shr.i44 = lshr i128 %sub3.i, 64
  %conv4.i45 = trunc i128 %shr.i44 to i8
  %conv5.i46 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i45
  %conv.i47 = and i128 %add3.i23, 18446744073709551615
  %conv1.i48 = zext i8 %sub7.i to i128
  %reass.sub = sub nsw i128 %conv.i47, %conv1.i48
  %sub3.i49 = add nsw i128 %reass.sub, -4294967295
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
  %.neg101 = add nsw i128 %conv.i61, -18446744069414584321
  %sub3.i63 = sub nsw i128 %.neg101, %conv1.i62
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
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i75) #7, !srcloc !9
  %and5.i = and i64 %8, %add.narrowed
  %not.i = xor i64 %conv4.i75, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
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
define dso_local void @fiat_p256_sub(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
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
  %conv.i22 = zext i64 %2 to i128
  %conv1.i = zext i8 %sub7.i to i128
  %conv2.i23 = zext i64 %3 to i128
  %4 = add nuw nsw i128 %conv2.i23, %conv1.i
  %sub3.i24 = sub nsw i128 %conv.i22, %4
  %shr.i25 = lshr i128 %sub3.i24, 64
  %conv4.i26 = trunc i128 %shr.i25 to i8
  %sub7.i28 = sub i8 0, %conv4.i26
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %5 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %6 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv.i29 = zext i64 %5 to i128
  %conv1.i30 = zext i8 %sub7.i28 to i128
  %conv2.i31 = zext i64 %6 to i128
  %7 = add nuw nsw i128 %conv2.i31, %conv1.i30
  %sub3.i32 = sub nsw i128 %conv.i29, %7
  %shr.i33 = lshr i128 %sub3.i32, 64
  %conv4.i34 = trunc i128 %shr.i33 to i8
  %sub7.i36 = sub i8 0, %conv4.i34
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %8 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %9 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %conv.i37 = zext i64 %8 to i128
  %conv1.i38 = zext i8 %sub7.i36 to i128
  %conv2.i39 = zext i64 %9 to i128
  %10 = add nuw nsw i128 %conv2.i39, %conv1.i38
  %sub3.i40 = sub nsw i128 %conv.i37, %10
  %11 = and i128 %sub3.i40, 4703919738795935662080
  %tobool.i = icmp ne i128 %11, 0
  %conv4.i45 = sext i1 %tobool.i to i64
  %12 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i45) #7, !srcloc !9
  %not.i = xor i64 %conv4.i45, -1
  %13 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %conv1.i46 = and i128 %sub3.i, 18446744073709551615
  %conv2.i47 = zext i64 %12 to i128
  %add3.i = add nuw nsw i128 %conv1.i46, %conv2.i47
  %conv4.i48 = trunc i128 %add3.i to i64
  %shr.i49 = lshr i128 %add3.i, 64
  %and = and i64 %12, 4294967295
  %conv1.i52 = and i128 %sub3.i24, 18446744073709551615
  %conv2.i53 = zext nneg i64 %and to i128
  %add.i = add nuw nsw i128 %conv1.i52, %conv2.i53
  %add3.i54 = add nuw nsw i128 %add.i, %shr.i49
  %conv4.i55 = trunc i128 %add3.i54 to i64
  %shr.i56 = lshr i128 %add3.i54, 64
  %conv1.i59 = and i128 %sub3.i32, 18446744073709551615
  %add.i60 = add nuw nsw i128 %shr.i56, %conv1.i59
  %conv4.i62 = trunc i128 %add.i60 to i64
  %shr.i63 = lshr i128 %add.i60, 64
  %and8 = and i64 %12, -4294967295
  %add.i67 = add nsw i128 %shr.i63, %sub3.i40
  %14 = trunc i128 %add.i67 to i64
  %conv4.i70 = add i64 %and8, %14
  store i64 %conv4.i48, ptr %out1, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i55, ptr %arrayidx10, align 8, !tbaa !10
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i62, ptr %arrayidx11, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i70, ptr %arrayidx12, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p256_opp(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
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
  %conv2.i15 = zext i64 %1 to i128
  %2 = add nuw nsw i128 %conv2.i15, %conv1.i
  %sub3.i16 = sub nsw i128 0, %2
  %shr.i17 = lshr i128 %sub3.i16, 64
  %conv4.i18 = trunc i128 %shr.i17 to i8
  %sub7.i20 = sub i8 0, %conv4.i18
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %3 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %conv1.i21 = zext i8 %sub7.i20 to i128
  %conv2.i22 = zext i64 %3 to i128
  %4 = add nuw nsw i128 %conv2.i22, %conv1.i21
  %sub3.i23 = sub nsw i128 0, %4
  %shr.i24 = lshr i128 %sub3.i23, 64
  %conv4.i25 = trunc i128 %shr.i24 to i8
  %sub7.i27 = sub i8 0, %conv4.i25
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %5 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv1.i28 = zext i8 %sub7.i27 to i128
  %conv2.i29 = zext i64 %5 to i128
  %6 = add nuw nsw i128 %conv1.i28, %conv2.i29
  %sub3.i30 = sub nsw i128 0, %6
  %7 = and i128 %sub3.i30, 4703919738795935662080
  %tobool.i = icmp ne i128 %7, 0
  %conv4.i35 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i35) #7, !srcloc !9
  %not.i = xor i64 %conv4.i35, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %conv1.i36 = and i128 %sub3.i, 18446744073709551615
  %conv2.i37 = zext i64 %8 to i128
  %add3.i = add nuw nsw i128 %conv1.i36, %conv2.i37
  %conv4.i38 = trunc i128 %add3.i to i64
  %shr.i39 = lshr i128 %add3.i, 64
  %and = and i64 %8, 4294967295
  %conv1.i41 = and i128 %sub3.i16, 18446744073709551615
  %conv2.i42 = zext nneg i64 %and to i128
  %add.i = add nuw nsw i128 %conv1.i41, %conv2.i42
  %add3.i43 = add nuw nsw i128 %add.i, %shr.i39
  %conv4.i44 = trunc i128 %add3.i43 to i64
  %shr.i45 = lshr i128 %add3.i43, 64
  %conv1.i48 = and i128 %sub3.i23, 18446744073709551615
  %add.i49 = add nuw nsw i128 %conv1.i48, %shr.i45
  %conv4.i51 = trunc i128 %add.i49 to i64
  %shr.i52 = lshr i128 %add.i49, 64
  %and4 = and i64 %8, -4294967295
  %add.i56 = sub nsw i128 %shr.i52, %6
  %10 = trunc i128 %add.i56 to i64
  %conv4.i59 = add i64 %and4, %10
  store i64 %conv4.i38, ptr %out1, align 8, !tbaa !10
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i44, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i51, ptr %arrayidx7, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i59, ptr %arrayidx8, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p256_from_montgomery(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i = zext i64 %0 to i128
  %mul.i = mul nuw i128 %conv.i, 18446744069414584321
  %shr.i = lshr i128 %mul.i, 64
  %mul.i39 = mul nuw nsw i128 %conv.i, 4294967295
  %shr.i41 = lshr i128 %mul.i39, 64
  %conv3.i42 = trunc nuw nsw i128 %shr.i41 to i64
  %mul.i44 = mul nuw i128 %conv.i, 18446744073709551615
  %shr.i46 = lshr i128 %mul.i44, 64
  %conv2.i48 = and i128 %mul.i39, 18446744073709551615
  %add3.i = add nuw nsw i128 %shr.i46, %conv2.i48
  %shr.i49 = lshr i128 %add3.i, 64
  %conv5.i = trunc nuw nsw i128 %shr.i49 to i64
  %conv2.i51 = and i128 %mul.i44, 18446744073709551615
  %add3.i52 = add nuw nsw i128 %conv2.i51, %conv.i
  %shr.i54 = lshr i128 %add3.i52, 64
  %conv2.i57 = and i128 %add3.i, 18446744073709551615
  %add3.i58 = add nuw nsw i128 %shr.i54, %conv2.i57
  %shr.i60 = lshr i128 %add3.i58, 64
  %conv5.i61 = trunc nuw nsw i128 %shr.i60 to i64
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv1.i62 = and i128 %add3.i58, 18446744073709551615
  %conv2.i63 = zext i64 %1 to i128
  %add3.i64 = add nuw nsw i128 %conv1.i62, %conv2.i63
  %shr.i66 = lshr i128 %add3.i64, 64
  %conv5.i67 = trunc nuw nsw i128 %shr.i66 to i64
  %conv.i68 = and i128 %add3.i64, 18446744073709551615
  %mul.i69 = mul nuw i128 %conv.i68, 18446744069414584321
  %shr.i71 = lshr i128 %mul.i69, 64
  %conv3.i72 = trunc nuw i128 %shr.i71 to i64
  %mul.i74 = mul nuw nsw i128 %conv.i68, 4294967295
  %shr.i76 = lshr i128 %mul.i74, 64
  %conv3.i77 = trunc nuw nsw i128 %shr.i76 to i64
  %mul.i79 = mul nuw i128 %conv.i68, 18446744073709551615
  %shr.i81 = lshr i128 %mul.i79, 64
  %conv2.i84 = and i128 %mul.i74, 18446744073709551615
  %add3.i85 = add nuw nsw i128 %shr.i81, %conv2.i84
  %shr.i87 = lshr i128 %add3.i85, 64
  %conv5.i88 = trunc nuw nsw i128 %shr.i87 to i64
  %conv2.i90 = and i128 %mul.i79, 18446744073709551615
  %add3.i91 = add nuw nsw i128 %conv2.i90, %conv.i68
  %shr.i93 = lshr i128 %add3.i91, 64
  %add = add nuw nsw i64 %conv5.i, %conv3.i42
  %add4 = add nuw nsw i64 %add, %conv5.i61
  %add5 = add nuw nsw i64 %add4, %conv5.i67
  %conv1.i96 = zext nneg i64 %add5 to i128
  %add.i = add nuw nsw i128 %shr.i93, %conv1.i96
  %conv2.i97 = and i128 %add3.i85, 18446744073709551615
  %add3.i98 = add nuw nsw i128 %add.i, %conv2.i97
  %shr.i100 = lshr i128 %add3.i98, 64
  %add7 = add nuw nsw i64 %conv5.i88, %conv3.i77
  %conv1.i103 = and i128 %mul.i, 18446744073709551615
  %add.i104 = add nuw nsw i128 %shr.i100, %conv1.i103
  %conv2.i105 = zext nneg i64 %add7 to i128
  %add3.i106 = add nuw nsw i128 %add.i104, %conv2.i105
  %shr.i108 = lshr i128 %add3.i106, 64
  %conv2.i113 = and i128 %mul.i69, 18446744073709551615
  %add.i112 = add nuw nsw i128 %conv2.i113, %shr.i
  %add3.i114 = add nuw nsw i128 %add.i112, %shr.i108
  %shr.i116 = lshr i128 %add3.i114, 64
  %conv5.i117 = trunc nuw nsw i128 %shr.i116 to i64
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %conv1.i118 = and i128 %add3.i98, 18446744073709551615
  %conv2.i120 = zext i64 %2 to i128
  %add3.i121 = add nuw nsw i128 %conv1.i118, %conv2.i120
  %shr.i123 = lshr i128 %add3.i121, 64
  %conv1.i126 = and i128 %add3.i106, 18446744073709551615
  %add.i127 = add nuw nsw i128 %conv1.i126, %shr.i123
  %shr.i130 = lshr i128 %add.i127, 64
  %conv1.i133 = and i128 %add3.i114, 18446744073709551615
  %add.i134 = add nuw nsw i128 %conv1.i133, %shr.i130
  %shr.i137 = lshr i128 %add.i134, 64
  %conv5.i138 = trunc nuw nsw i128 %shr.i137 to i64
  %conv.i139 = and i128 %add3.i121, 18446744073709551615
  %mul.i140 = mul nuw i128 %conv.i139, 18446744069414584321
  %shr.i142 = lshr i128 %mul.i140, 64
  %conv3.i143 = trunc nuw i128 %shr.i142 to i64
  %mul.i145 = mul nuw nsw i128 %conv.i139, 4294967295
  %shr.i147 = lshr i128 %mul.i145, 64
  %conv3.i148 = trunc nuw nsw i128 %shr.i147 to i64
  %mul.i150 = mul nuw i128 %conv.i139, 18446744073709551615
  %shr.i152 = lshr i128 %mul.i150, 64
  %conv2.i156 = and i128 %mul.i145, 18446744073709551615
  %add3.i157 = add nuw nsw i128 %shr.i152, %conv2.i156
  %shr.i159 = lshr i128 %add3.i157, 64
  %conv5.i160 = trunc nuw nsw i128 %shr.i159 to i64
  %conv2.i163 = and i128 %mul.i150, 18446744073709551615
  %add3.i164 = add nuw nsw i128 %conv2.i163, %conv.i139
  %shr.i166 = lshr i128 %add3.i164, 64
  %conv1.i169 = and i128 %add.i127, 18446744073709551615
  %add.i170 = add nuw nsw i128 %shr.i166, %conv1.i169
  %conv2.i171 = and i128 %add3.i157, 18446744073709551615
  %add3.i172 = add nuw nsw i128 %add.i170, %conv2.i171
  %shr.i174 = lshr i128 %add3.i172, 64
  %add10 = add nuw nsw i64 %conv5.i160, %conv3.i148
  %conv1.i177 = and i128 %add.i134, 18446744073709551615
  %add.i178 = add nuw nsw i128 %shr.i174, %conv1.i177
  %conv2.i179 = zext nneg i64 %add10 to i128
  %add3.i180 = add nuw nsw i128 %add.i178, %conv2.i179
  %shr.i182 = lshr i128 %add3.i180, 64
  %add13 = add nuw i64 %conv5.i117, %conv3.i72
  %add14 = add nuw i64 %add13, %conv5.i138
  %conv1.i185 = zext i64 %add14 to i128
  %conv2.i187 = and i128 %mul.i140, 18446744073709551615
  %add.i186 = add nuw nsw i128 %conv2.i187, %conv1.i185
  %add3.i188 = add nuw nsw i128 %add.i186, %shr.i182
  %shr.i190 = lshr i128 %add3.i188, 64
  %conv5.i191 = trunc nuw nsw i128 %shr.i190 to i64
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %3 = load i64, ptr %arrayidx15, align 8, !tbaa !10
  %conv1.i192 = and i128 %add3.i172, 18446744073709551615
  %conv2.i194 = zext i64 %3 to i128
  %add3.i195 = add nuw nsw i128 %conv1.i192, %conv2.i194
  %shr.i197 = lshr i128 %add3.i195, 64
  %conv1.i200 = and i128 %add3.i180, 18446744073709551615
  %add.i201 = add nuw nsw i128 %conv1.i200, %shr.i197
  %shr.i204 = lshr i128 %add.i201, 64
  %conv1.i207 = and i128 %add3.i188, 18446744073709551615
  %add.i208 = add nuw nsw i128 %conv1.i207, %shr.i204
  %shr.i211 = lshr i128 %add.i208, 64
  %conv5.i212 = trunc nuw nsw i128 %shr.i211 to i64
  %conv.i213 = and i128 %add3.i195, 18446744073709551615
  %mul.i214 = mul nuw i128 %conv.i213, 18446744069414584321
  %shr.i216 = lshr i128 %mul.i214, 64
  %conv3.i217 = trunc nuw i128 %shr.i216 to i64
  %mul.i219 = mul nuw nsw i128 %conv.i213, 4294967295
  %shr.i221 = lshr i128 %mul.i219, 64
  %conv3.i222 = trunc nuw nsw i128 %shr.i221 to i64
  %mul.i224 = mul nuw i128 %conv.i213, 18446744073709551615
  %shr.i226 = lshr i128 %mul.i224, 64
  %conv2.i230 = and i128 %mul.i219, 18446744073709551615
  %add3.i231 = add nuw nsw i128 %shr.i226, %conv2.i230
  %shr.i233 = lshr i128 %add3.i231, 64
  %conv5.i234 = trunc nuw nsw i128 %shr.i233 to i64
  %conv2.i237 = and i128 %mul.i224, 18446744073709551615
  %add3.i238 = add nuw nsw i128 %conv2.i237, %conv.i213
  %shr.i240 = lshr i128 %add3.i238, 64
  %conv1.i243 = and i128 %add.i201, 18446744073709551615
  %add.i244 = add nuw nsw i128 %shr.i240, %conv1.i243
  %conv2.i245 = and i128 %add3.i231, 18446744073709551615
  %add3.i246 = add nuw nsw i128 %add.i244, %conv2.i245
  %conv4.i247 = trunc i128 %add3.i246 to i64
  %shr.i248 = lshr i128 %add3.i246, 64
  %add17 = add nuw nsw i64 %conv5.i234, %conv3.i222
  %conv1.i251 = and i128 %add.i208, 18446744073709551615
  %add.i252 = add nuw nsw i128 %shr.i248, %conv1.i251
  %conv2.i253 = zext nneg i64 %add17 to i128
  %add3.i254 = add nuw nsw i128 %add.i252, %conv2.i253
  %conv4.i255 = trunc i128 %add3.i254 to i64
  %shr.i256 = lshr i128 %add3.i254, 64
  %add20 = add nuw i64 %conv5.i191, %conv3.i143
  %add21 = add nuw i64 %add20, %conv5.i212
  %conv1.i259 = zext i64 %add21 to i128
  %conv2.i261 = and i128 %mul.i214, 18446744073709551615
  %add.i260 = add nuw nsw i128 %conv2.i261, %conv1.i259
  %add3.i262 = add nuw nsw i128 %add.i260, %shr.i256
  %conv4.i263 = trunc i128 %add3.i262 to i64
  %shr.i264 = lshr i128 %add3.i262, 64
  %conv5.i265 = trunc nuw nsw i128 %shr.i264 to i64
  %add23 = add nuw i64 %conv5.i265, %conv3.i217
  %conv.i266 = and i128 %add3.i246, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i266, -18446744073709551615
  %shr.i267 = lshr i128 %sub3.i, 64
  %conv4.i268 = trunc i128 %shr.i267 to i8
  %conv5.i269 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i268
  %conv.i270 = and i128 %add3.i254, 18446744073709551615
  %conv1.i271 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i270, -4294967295
  %sub3.i272 = sub nsw i128 %.neg, %conv1.i271
  %shr.i273 = lshr i128 %sub3.i272, 64
  %conv4.i274 = trunc i128 %shr.i273 to i8
  %conv5.i275 = trunc i128 %sub3.i272 to i64
  %sub7.i276 = sub i8 0, %conv4.i274
  %conv.i277 = and i128 %add3.i262, 18446744073709551615
  %conv1.i278 = zext i8 %sub7.i276 to i128
  %sub3.i279 = sub nsw i128 %conv.i277, %conv1.i278
  %shr.i280 = lshr i128 %sub3.i279, 64
  %conv4.i281 = trunc i128 %shr.i280 to i8
  %conv5.i282 = trunc i128 %sub3.i279 to i64
  %sub7.i283 = sub i8 0, %conv4.i281
  %conv.i284 = zext i64 %add23 to i128
  %conv1.i285 = zext i8 %sub7.i283 to i128
  %.neg331 = add nsw i128 %conv.i284, -18446744069414584321
  %sub3.i286 = sub nsw i128 %.neg331, %conv1.i285
  %shr.i287 = lshr i128 %sub3.i286, 64
  %conv4.i288 = trunc i128 %shr.i287 to i8
  %conv5.i289 = trunc i128 %sub3.i286 to i64
  %sub7.i290 = sub i8 0, %conv4.i288
  %conv1.i291 = zext i8 %sub7.i290 to i128
  %sub3.i292 = sub nsw i128 0, %conv1.i291
  %shr.i293 = lshr i128 %sub3.i292, 64
  %conv4.i294 = trunc i128 %shr.i293 to i8
  %tobool.i = icmp ne i8 %conv4.i294, 0
  %conv4.i297 = sext i1 %tobool.i to i64
  %4 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i297) #7, !srcloc !9
  %and5.i = and i64 %4, %conv4.i247
  %not.i = xor i64 %conv4.i297, -1
  %5 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %5, %conv5.i269
  %or.i = or i64 %and7.i, %and5.i
  %and5.i300 = and i64 %4, %conv4.i255
  %and7.i302 = and i64 %5, %conv5.i275
  %or.i303 = or i64 %and7.i302, %and5.i300
  %and5.i306 = and i64 %4, %conv4.i263
  %and7.i308 = and i64 %5, %conv5.i282
  %or.i309 = or i64 %and7.i308, %and5.i306
  %and5.i312 = and i64 %add23, %4
  %and7.i314 = and i64 %5, %conv5.i289
  %or.i315 = or i64 %and7.i314, %and5.i312
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i303, ptr %arrayidx25, align 8, !tbaa !10
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i309, ptr %arrayidx26, align 8, !tbaa !10
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i315, ptr %arrayidx27, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p256_to_montgomery(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %3 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i = zext i64 %3 to i128
  %mul.i = mul nuw nsw i128 %conv.i, 21474836477
  %shr.i = lshr i128 %mul.i, 64
  %conv3.i = trunc nuw nsw i128 %shr.i to i64
  %mul.i54 = mul nuw i128 %conv.i, 18446744073709551614
  %shr.i56 = lshr i128 %mul.i54, 64
  %mul.i59 = mul nuw i128 %conv.i, 18446744056529682431
  %shr.i61 = lshr i128 %mul.i59, 64
  %mul.i64 = mul nuw nsw i128 %conv.i, 3
  %shr.i66 = lshr i128 %mul.i64, 64
  %conv2.i68 = and i128 %mul.i59, 18446744073709551615
  %add3.i = add nuw nsw i128 %shr.i66, %conv2.i68
  %shr.i69 = lshr i128 %add3.i, 64
  %conv2.i72 = and i128 %mul.i54, 18446744073709551614
  %add.i = add nuw nsw i128 %conv2.i72, %shr.i61
  %add3.i73 = add nuw nsw i128 %add.i, %shr.i69
  %shr.i75 = lshr i128 %add3.i73, 64
  %conv2.i80 = and i128 %mul.i, 18446744073709551615
  %add.i79 = add nuw nsw i128 %conv2.i80, %shr.i56
  %add3.i81 = add nuw nsw i128 %add.i79, %shr.i75
  %shr.i83 = lshr i128 %add3.i81, 64
  %conv5.i84 = trunc nuw nsw i128 %shr.i83 to i64
  %conv.i85 = and i128 %mul.i64, 18446744073709551615
  %mul.i86 = mul nuw i128 %conv.i85, 18446744069414584321
  %shr.i88 = lshr i128 %mul.i86, 64
  %mul.i91 = mul nuw nsw i128 %conv.i85, 4294967295
  %shr.i93 = lshr i128 %mul.i91, 64
  %conv3.i94 = trunc nuw nsw i128 %shr.i93 to i64
  %mul.i96 = mul nuw i128 %conv.i85, 18446744073709551615
  %shr.i98 = lshr i128 %mul.i96, 64
  %conv2.i102 = and i128 %mul.i91, 18446744073709551615
  %add3.i103 = add nuw nsw i128 %shr.i98, %conv2.i102
  %shr.i105 = lshr i128 %add3.i103, 64
  %conv5.i106 = trunc nuw nsw i128 %shr.i105 to i64
  %conv2.i109 = and i128 %mul.i96, 18446744073709551615
  %add3.i110 = add nuw nsw i128 %conv2.i109, %conv.i85
  %shr.i112 = lshr i128 %add3.i110, 64
  %conv1.i115 = and i128 %add3.i, 18446744073709551615
  %add.i116 = add nuw nsw i128 %shr.i112, %conv1.i115
  %conv2.i117 = and i128 %add3.i103, 18446744073709551615
  %add3.i118 = add nuw nsw i128 %add.i116, %conv2.i117
  %shr.i120 = lshr i128 %add3.i118, 64
  %add = add nuw nsw i64 %conv5.i106, %conv3.i94
  %conv1.i123 = and i128 %add3.i73, 18446744073709551615
  %add.i124 = add nuw nsw i128 %shr.i120, %conv1.i123
  %conv2.i125 = zext nneg i64 %add to i128
  %add3.i126 = add nuw nsw i128 %add.i124, %conv2.i125
  %shr.i128 = lshr i128 %add3.i126, 64
  %conv1.i131 = and i128 %add3.i81, 18446744073709551615
  %conv2.i133 = and i128 %mul.i86, 18446744073709551615
  %add.i132 = add nuw nsw i128 %conv1.i131, %conv2.i133
  %add3.i134 = add nuw nsw i128 %add.i132, %shr.i128
  %shr.i136 = lshr i128 %add3.i134, 64
  %add5 = add nuw nsw i64 %conv5.i84, %conv3.i
  %conv1.i139 = zext nneg i64 %add5 to i128
  %add.i140 = add nuw nsw i128 %shr.i88, %conv1.i139
  %add3.i142 = add nuw nsw i128 %add.i140, %shr.i136
  %shr.i144 = lshr i128 %add3.i142, 64
  %conv5.i145 = trunc nuw nsw i128 %shr.i144 to i64
  %conv.i146 = zext i64 %0 to i128
  %mul.i147 = mul nuw nsw i128 %conv.i146, 21474836477
  %shr.i149 = lshr i128 %mul.i147, 64
  %conv3.i150 = trunc nuw nsw i128 %shr.i149 to i64
  %mul.i152 = mul nuw i128 %conv.i146, 18446744073709551614
  %shr.i154 = lshr i128 %mul.i152, 64
  %mul.i157 = mul nuw i128 %conv.i146, 18446744056529682431
  %shr.i159 = lshr i128 %mul.i157, 64
  %mul.i162 = mul nuw nsw i128 %conv.i146, 3
  %shr.i164 = lshr i128 %mul.i162, 64
  %conv2.i168 = and i128 %mul.i157, 18446744073709551615
  %add3.i169 = add nuw nsw i128 %shr.i164, %conv2.i168
  %shr.i171 = lshr i128 %add3.i169, 64
  %conv2.i176 = and i128 %mul.i152, 18446744073709551614
  %add.i175 = add nuw nsw i128 %conv2.i176, %shr.i159
  %add3.i177 = add nuw nsw i128 %add.i175, %shr.i171
  %shr.i179 = lshr i128 %add3.i177, 64
  %conv2.i184 = and i128 %mul.i147, 18446744073709551615
  %add.i183 = add nuw nsw i128 %conv2.i184, %shr.i154
  %add3.i185 = add nuw nsw i128 %add.i183, %shr.i179
  %shr.i187 = lshr i128 %add3.i185, 64
  %conv5.i188 = trunc nuw nsw i128 %shr.i187 to i64
  %conv1.i189 = and i128 %add3.i118, 18446744073709551615
  %conv2.i191 = and i128 %mul.i162, 18446744073709551615
  %add3.i192 = add nuw nsw i128 %conv1.i189, %conv2.i191
  %shr.i194 = lshr i128 %add3.i192, 64
  %conv1.i197 = and i128 %add3.i126, 18446744073709551615
  %conv2.i199 = and i128 %add3.i169, 18446744073709551615
  %add.i198 = add nuw nsw i128 %shr.i194, %conv2.i199
  %add3.i200 = add nuw nsw i128 %add.i198, %conv1.i197
  %shr.i202 = lshr i128 %add3.i200, 64
  %conv1.i205 = and i128 %add3.i134, 18446744073709551615
  %conv2.i207 = and i128 %add3.i177, 18446744073709551615
  %add.i206 = add nuw nsw i128 %shr.i202, %conv2.i207
  %add3.i208 = add nuw nsw i128 %add.i206, %conv1.i205
  %shr.i210 = lshr i128 %add3.i208, 64
  %conv1.i213 = and i128 %add3.i142, 18446744073709551615
  %conv2.i215 = and i128 %add3.i185, 18446744073709551615
  %add.i214 = add nuw nsw i128 %shr.i210, %conv2.i215
  %add3.i216 = add nuw nsw i128 %add.i214, %conv1.i213
  %shr.i218 = lshr i128 %add3.i216, 64
  %conv5.i219 = trunc nuw nsw i128 %shr.i218 to i64
  %conv.i220 = and i128 %add3.i192, 18446744073709551615
  %mul.i221 = mul nuw i128 %conv.i220, 18446744069414584321
  %shr.i223 = lshr i128 %mul.i221, 64
  %mul.i226 = mul nuw nsw i128 %conv.i220, 4294967295
  %shr.i228 = lshr i128 %mul.i226, 64
  %conv3.i229 = trunc nuw nsw i128 %shr.i228 to i64
  %mul.i231 = mul nuw i128 %conv.i220, 18446744073709551615
  %shr.i233 = lshr i128 %mul.i231, 64
  %conv2.i237 = and i128 %mul.i226, 18446744073709551615
  %add3.i238 = add nuw nsw i128 %shr.i233, %conv2.i237
  %shr.i240 = lshr i128 %add3.i238, 64
  %conv5.i241 = trunc nuw nsw i128 %shr.i240 to i64
  %conv2.i244 = and i128 %mul.i231, 18446744073709551615
  %add3.i245 = add nuw nsw i128 %conv2.i244, %conv.i220
  %shr.i247 = lshr i128 %add3.i245, 64
  %conv1.i250 = and i128 %add3.i200, 18446744073709551615
  %add.i251 = add nuw nsw i128 %conv1.i250, %shr.i247
  %conv2.i252 = and i128 %add3.i238, 18446744073709551615
  %add3.i253 = add nuw nsw i128 %add.i251, %conv2.i252
  %shr.i255 = lshr i128 %add3.i253, 64
  %add7 = add nuw nsw i64 %conv5.i241, %conv3.i229
  %conv1.i258 = and i128 %add3.i208, 18446744073709551615
  %add.i259 = add nuw nsw i128 %conv1.i258, %shr.i255
  %conv2.i260 = zext nneg i64 %add7 to i128
  %add3.i261 = add nuw nsw i128 %add.i259, %conv2.i260
  %shr.i263 = lshr i128 %add3.i261, 64
  %conv1.i266 = and i128 %add3.i216, 18446744073709551615
  %conv2.i268 = and i128 %mul.i221, 18446744073709551615
  %add.i267 = add nuw nsw i128 %shr.i263, %conv2.i268
  %add3.i269 = add nuw nsw i128 %add.i267, %conv1.i266
  %shr.i271 = lshr i128 %add3.i269, 64
  %add10 = add nuw nsw i64 %conv5.i188, %conv3.i150
  %add12 = add nuw nsw i64 %add10, %conv5.i145
  %add13 = add nuw nsw i64 %add12, %conv5.i219
  %conv1.i274 = zext nneg i64 %add13 to i128
  %add.i275 = add nuw nsw i128 %shr.i223, %conv1.i274
  %add3.i277 = add nuw nsw i128 %add.i275, %shr.i271
  %shr.i279 = lshr i128 %add3.i277, 64
  %conv5.i280 = trunc nuw nsw i128 %shr.i279 to i64
  %conv.i281 = zext i64 %1 to i128
  %mul.i282 = mul nuw nsw i128 %conv.i281, 21474836477
  %shr.i284 = lshr i128 %mul.i282, 64
  %conv3.i285 = trunc nuw nsw i128 %shr.i284 to i64
  %mul.i287 = mul nuw i128 %conv.i281, 18446744073709551614
  %shr.i289 = lshr i128 %mul.i287, 64
  %mul.i292 = mul nuw i128 %conv.i281, 18446744056529682431
  %shr.i294 = lshr i128 %mul.i292, 64
  %mul.i297 = mul nuw nsw i128 %conv.i281, 3
  %shr.i299 = lshr i128 %mul.i297, 64
  %conv2.i303 = and i128 %mul.i292, 18446744073709551615
  %add3.i304 = add nuw nsw i128 %shr.i299, %conv2.i303
  %shr.i306 = lshr i128 %add3.i304, 64
  %conv2.i311 = and i128 %mul.i287, 18446744073709551614
  %add.i310 = add nuw nsw i128 %conv2.i311, %shr.i294
  %add3.i312 = add nuw nsw i128 %add.i310, %shr.i306
  %shr.i314 = lshr i128 %add3.i312, 64
  %conv2.i319 = and i128 %mul.i282, 18446744073709551615
  %add.i318 = add nuw nsw i128 %conv2.i319, %shr.i289
  %add3.i320 = add nuw nsw i128 %add.i318, %shr.i314
  %shr.i322 = lshr i128 %add3.i320, 64
  %conv5.i323 = trunc nuw nsw i128 %shr.i322 to i64
  %conv1.i324 = and i128 %add3.i253, 18446744073709551615
  %conv2.i326 = and i128 %mul.i297, 18446744073709551615
  %add3.i327 = add nuw nsw i128 %conv1.i324, %conv2.i326
  %shr.i329 = lshr i128 %add3.i327, 64
  %conv1.i332 = and i128 %add3.i261, 18446744073709551615
  %conv2.i334 = and i128 %add3.i304, 18446744073709551615
  %add.i333 = add nuw nsw i128 %shr.i329, %conv2.i334
  %add3.i335 = add nuw nsw i128 %add.i333, %conv1.i332
  %shr.i337 = lshr i128 %add3.i335, 64
  %conv1.i340 = and i128 %add3.i269, 18446744073709551615
  %conv2.i342 = and i128 %add3.i312, 18446744073709551615
  %add.i341 = add nuw nsw i128 %shr.i337, %conv2.i342
  %add3.i343 = add nuw nsw i128 %add.i341, %conv1.i340
  %shr.i345 = lshr i128 %add3.i343, 64
  %conv1.i348 = and i128 %add3.i277, 18446744073709551615
  %conv2.i350 = and i128 %add3.i320, 18446744073709551615
  %add.i349 = add nuw nsw i128 %shr.i345, %conv2.i350
  %add3.i351 = add nuw nsw i128 %add.i349, %conv1.i348
  %shr.i353 = lshr i128 %add3.i351, 64
  %conv5.i354 = trunc nuw nsw i128 %shr.i353 to i64
  %conv.i355 = and i128 %add3.i327, 18446744073709551615
  %mul.i356 = mul nuw i128 %conv.i355, 18446744069414584321
  %shr.i358 = lshr i128 %mul.i356, 64
  %mul.i361 = mul nuw nsw i128 %conv.i355, 4294967295
  %shr.i363 = lshr i128 %mul.i361, 64
  %conv3.i364 = trunc nuw nsw i128 %shr.i363 to i64
  %mul.i366 = mul nuw i128 %conv.i355, 18446744073709551615
  %shr.i368 = lshr i128 %mul.i366, 64
  %conv2.i372 = and i128 %mul.i361, 18446744073709551615
  %add3.i373 = add nuw nsw i128 %shr.i368, %conv2.i372
  %shr.i375 = lshr i128 %add3.i373, 64
  %conv5.i376 = trunc nuw nsw i128 %shr.i375 to i64
  %conv2.i379 = and i128 %mul.i366, 18446744073709551615
  %add3.i380 = add nuw nsw i128 %conv2.i379, %conv.i355
  %shr.i382 = lshr i128 %add3.i380, 64
  %conv1.i385 = and i128 %add3.i335, 18446744073709551615
  %add.i386 = add nuw nsw i128 %conv1.i385, %shr.i382
  %conv2.i387 = and i128 %add3.i373, 18446744073709551615
  %add3.i388 = add nuw nsw i128 %add.i386, %conv2.i387
  %shr.i390 = lshr i128 %add3.i388, 64
  %add15 = add nuw nsw i64 %conv5.i376, %conv3.i364
  %conv1.i393 = and i128 %add3.i343, 18446744073709551615
  %add.i394 = add nuw nsw i128 %conv1.i393, %shr.i390
  %conv2.i395 = zext nneg i64 %add15 to i128
  %add3.i396 = add nuw nsw i128 %add.i394, %conv2.i395
  %shr.i398 = lshr i128 %add3.i396, 64
  %conv1.i401 = and i128 %add3.i351, 18446744073709551615
  %conv2.i403 = and i128 %mul.i356, 18446744073709551615
  %add.i402 = add nuw nsw i128 %shr.i398, %conv2.i403
  %add3.i404 = add nuw nsw i128 %add.i402, %conv1.i401
  %shr.i406 = lshr i128 %add3.i404, 64
  %add18 = add nuw nsw i64 %conv5.i323, %conv3.i285
  %add20 = add nuw nsw i64 %add18, %conv5.i280
  %add21 = add nuw nsw i64 %add20, %conv5.i354
  %conv1.i409 = zext nneg i64 %add21 to i128
  %add.i410 = add nuw nsw i128 %shr.i358, %conv1.i409
  %add3.i412 = add nuw nsw i128 %add.i410, %shr.i406
  %shr.i414 = lshr i128 %add3.i412, 64
  %conv5.i415 = trunc nuw nsw i128 %shr.i414 to i64
  %conv.i416 = zext i64 %2 to i128
  %mul.i417 = mul nuw nsw i128 %conv.i416, 21474836477
  %shr.i419 = lshr i128 %mul.i417, 64
  %conv3.i420 = trunc nuw nsw i128 %shr.i419 to i64
  %mul.i422 = mul nuw i128 %conv.i416, 18446744073709551614
  %shr.i424 = lshr i128 %mul.i422, 64
  %mul.i427 = mul nuw i128 %conv.i416, 18446744056529682431
  %shr.i429 = lshr i128 %mul.i427, 64
  %mul.i432 = mul nuw nsw i128 %conv.i416, 3
  %shr.i434 = lshr i128 %mul.i432, 64
  %conv2.i438 = and i128 %mul.i427, 18446744073709551615
  %add3.i439 = add nuw nsw i128 %shr.i434, %conv2.i438
  %shr.i441 = lshr i128 %add3.i439, 64
  %conv2.i446 = and i128 %mul.i422, 18446744073709551614
  %add.i445 = add nuw nsw i128 %conv2.i446, %shr.i429
  %add3.i447 = add nuw nsw i128 %add.i445, %shr.i441
  %shr.i449 = lshr i128 %add3.i447, 64
  %conv2.i454 = and i128 %mul.i417, 18446744073709551615
  %add.i453 = add nuw nsw i128 %conv2.i454, %shr.i424
  %add3.i455 = add nuw nsw i128 %add.i453, %shr.i449
  %shr.i457 = lshr i128 %add3.i455, 64
  %conv5.i458 = trunc nuw nsw i128 %shr.i457 to i64
  %conv1.i459 = and i128 %add3.i388, 18446744073709551615
  %conv2.i461 = and i128 %mul.i432, 18446744073709551615
  %add3.i462 = add nuw nsw i128 %conv1.i459, %conv2.i461
  %shr.i464 = lshr i128 %add3.i462, 64
  %conv1.i467 = and i128 %add3.i396, 18446744073709551615
  %conv2.i469 = and i128 %add3.i439, 18446744073709551615
  %add.i468 = add nuw nsw i128 %shr.i464, %conv2.i469
  %add3.i470 = add nuw nsw i128 %add.i468, %conv1.i467
  %shr.i472 = lshr i128 %add3.i470, 64
  %conv1.i475 = and i128 %add3.i404, 18446744073709551615
  %conv2.i477 = and i128 %add3.i447, 18446744073709551615
  %add.i476 = add nuw nsw i128 %shr.i472, %conv2.i477
  %add3.i478 = add nuw nsw i128 %add.i476, %conv1.i475
  %shr.i480 = lshr i128 %add3.i478, 64
  %conv1.i483 = and i128 %add3.i412, 18446744073709551615
  %conv2.i485 = and i128 %add3.i455, 18446744073709551615
  %add.i484 = add nuw nsw i128 %shr.i480, %conv2.i485
  %add3.i486 = add nuw nsw i128 %add.i484, %conv1.i483
  %shr.i488 = lshr i128 %add3.i486, 64
  %conv5.i489 = trunc nuw nsw i128 %shr.i488 to i64
  %conv.i490 = and i128 %add3.i462, 18446744073709551615
  %mul.i491 = mul nuw i128 %conv.i490, 18446744069414584321
  %shr.i493 = lshr i128 %mul.i491, 64
  %mul.i496 = mul nuw nsw i128 %conv.i490, 4294967295
  %shr.i498 = lshr i128 %mul.i496, 64
  %conv3.i499 = trunc nuw nsw i128 %shr.i498 to i64
  %mul.i501 = mul nuw i128 %conv.i490, 18446744073709551615
  %shr.i503 = lshr i128 %mul.i501, 64
  %conv2.i507 = and i128 %mul.i496, 18446744073709551615
  %add3.i508 = add nuw nsw i128 %shr.i503, %conv2.i507
  %shr.i510 = lshr i128 %add3.i508, 64
  %conv5.i511 = trunc nuw nsw i128 %shr.i510 to i64
  %conv2.i514 = and i128 %mul.i501, 18446744073709551615
  %add3.i515 = add nuw nsw i128 %conv2.i514, %conv.i490
  %shr.i517 = lshr i128 %add3.i515, 64
  %conv1.i520 = and i128 %add3.i470, 18446744073709551615
  %add.i521 = add nuw nsw i128 %conv1.i520, %shr.i517
  %conv2.i522 = and i128 %add3.i508, 18446744073709551615
  %add3.i523 = add nuw nsw i128 %add.i521, %conv2.i522
  %conv4.i524 = trunc i128 %add3.i523 to i64
  %shr.i525 = lshr i128 %add3.i523, 64
  %add23 = add nuw nsw i64 %conv5.i511, %conv3.i499
  %conv1.i528 = and i128 %add3.i478, 18446744073709551615
  %add.i529 = add nuw nsw i128 %conv1.i528, %shr.i525
  %conv2.i530 = zext nneg i64 %add23 to i128
  %add3.i531 = add nuw nsw i128 %add.i529, %conv2.i530
  %conv4.i532 = trunc i128 %add3.i531 to i64
  %shr.i533 = lshr i128 %add3.i531, 64
  %conv1.i536 = and i128 %add3.i486, 18446744073709551615
  %conv2.i538 = and i128 %mul.i491, 18446744073709551615
  %add.i537 = add nuw nsw i128 %shr.i533, %conv2.i538
  %add3.i539 = add nuw nsw i128 %add.i537, %conv1.i536
  %conv4.i540 = trunc i128 %add3.i539 to i64
  %shr.i541 = lshr i128 %add3.i539, 64
  %add26 = add nuw nsw i64 %conv5.i458, %conv3.i420
  %add28 = add nuw nsw i64 %add26, %conv5.i415
  %add29 = add nuw nsw i64 %add28, %conv5.i489
  %conv1.i544 = zext nneg i64 %add29 to i128
  %add.i545 = add nuw nsw i128 %shr.i493, %conv1.i544
  %add3.i547 = add nuw nsw i128 %add.i545, %shr.i541
  %conv4.i548 = trunc i128 %add3.i547 to i64
  %shr.i549 = lshr i128 %add3.i547, 64
  %conv.i551 = and i128 %add3.i523, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i551, -18446744073709551615
  %shr.i552 = lshr i128 %sub3.i, 64
  %conv4.i553 = trunc i128 %shr.i552 to i8
  %conv5.i554 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i553
  %conv.i555 = and i128 %add3.i531, 18446744073709551615
  %conv1.i556 = zext i8 %sub7.i to i128
  %.neg = add nsw i128 %conv.i555, -4294967295
  %sub3.i557 = sub nsw i128 %.neg, %conv1.i556
  %shr.i558 = lshr i128 %sub3.i557, 64
  %conv4.i559 = trunc i128 %shr.i558 to i8
  %conv5.i560 = trunc i128 %sub3.i557 to i64
  %sub7.i561 = sub i8 0, %conv4.i559
  %conv.i562 = and i128 %add3.i539, 18446744073709551615
  %conv1.i563 = zext i8 %sub7.i561 to i128
  %sub3.i564 = sub nsw i128 %conv.i562, %conv1.i563
  %shr.i565 = lshr i128 %sub3.i564, 64
  %conv4.i566 = trunc i128 %shr.i565 to i8
  %conv5.i567 = trunc i128 %sub3.i564 to i64
  %sub7.i568 = sub i8 0, %conv4.i566
  %conv.i569 = and i128 %add3.i547, 18446744073709551615
  %conv1.i570 = zext i8 %sub7.i568 to i128
  %.neg621 = add nsw i128 %conv.i569, -18446744069414584321
  %sub3.i571 = sub nsw i128 %.neg621, %conv1.i570
  %shr.i572 = lshr i128 %sub3.i571, 64
  %conv4.i573 = trunc i128 %shr.i572 to i8
  %conv5.i574 = trunc i128 %sub3.i571 to i64
  %sub7.i575 = sub i8 0, %conv4.i573
  %conv1.i577 = zext i8 %sub7.i575 to i128
  %sub3.i578 = sub nsw i128 %shr.i549, %conv1.i577
  %shr.i579 = lshr i128 %sub3.i578, 64
  %conv4.i580 = trunc i128 %shr.i579 to i8
  %tobool.i = icmp ne i8 %conv4.i580, 0
  %conv4.i583 = sext i1 %tobool.i to i64
  %4 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i583) #7, !srcloc !9
  %and5.i = and i64 %4, %conv4.i524
  %not.i = xor i64 %conv4.i583, -1
  %5 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %5, %conv5.i554
  %or.i = or i64 %and7.i, %and5.i
  %and5.i586 = and i64 %4, %conv4.i532
  %and7.i588 = and i64 %5, %conv5.i560
  %or.i589 = or i64 %and7.i588, %and5.i586
  %and5.i592 = and i64 %4, %conv4.i540
  %and7.i594 = and i64 %5, %conv5.i567
  %or.i595 = or i64 %and7.i594, %and5.i592
  %and5.i598 = and i64 %4, %conv4.i548
  %and7.i600 = and i64 %5, %conv5.i574
  %or.i601 = or i64 %and7.i600, %and5.i598
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i589, ptr %arrayidx32, align 8, !tbaa !10
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i595, ptr %arrayidx33, align 8, !tbaa !10
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i601, ptr %arrayidx34, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p256_nonzero(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load <4 x i64>, ptr %arg1, align 8, !tbaa !10
  %1 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %0)
  store i64 %1, ptr %out1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p256_selectznz(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #3 {
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
define dso_local void @fiat_p256_to_bytes(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
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
define dso_local void @fiat_p256_from_bytes(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
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
define dso_local void @fiat_p256_set_one(ptr noundef writeonly captures(none) initializes((0, 32)) %out1) local_unnamed_addr #1 {
entry:
  store i64 1, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 -4294967296, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 -1, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 4294967294, ptr %arrayidx3, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p256_msat(ptr noundef writeonly captures(none) initializes((0, 40)) %out1) local_unnamed_addr #1 {
entry:
  store i64 -1, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 4294967295, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 0, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 -4294967295, ptr %arrayidx3, align 8, !tbaa !10
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 0, ptr %arrayidx4, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p256_divstep(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 40)) %out2, ptr noundef writeonly captures(none) initializes((0, 40)) %out3, ptr noundef writeonly captures(none) initializes((0, 32)) %out4, ptr noundef writeonly captures(none) initializes((0, 32)) %out5, i64 noundef %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3, ptr noundef readonly captures(none) %arg4, ptr noundef readonly captures(none) %arg5) local_unnamed_addr #3 {
entry:
  %add3.i = sub i64 0, %arg1
  %0 = load i64, ptr %arg3, align 8, !tbaa !10
  %and4164668 = shl i64 %0, 63
  %shr669 = and i64 %and4164668, %add3.i
  %sext = ashr exact i64 %shr669, 63
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %sext) #7, !srcloc !9
  %and5.i = and i64 %1, %add3.i
  %not.i = xor i64 %sext, -1
  %2 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #7, !srcloc !9
  %and7.i = and i64 %2, %arg1
  %or.i = or i64 %and7.i, %and5.i
  %3 = load i64, ptr %arg2, align 8, !tbaa !10
  %and5.i173 = and i64 %1, %0
  %and7.i175 = and i64 %3, %2
  %or.i176 = or i64 %and7.i175, %and5.i173
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %4 = load i64, ptr %arrayidx9, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg3, i64 8
  %5 = load i64, ptr %arrayidx10, align 8, !tbaa !10
  %and5.i179 = and i64 %5, %1
  %and7.i181 = and i64 %4, %2
  %or.i182 = or i64 %and5.i179, %and7.i181
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %6 = load i64, ptr %arrayidx11, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %7 = load i64, ptr %arrayidx12, align 8, !tbaa !10
  %and5.i185 = and i64 %7, %1
  %and7.i187 = and i64 %6, %2
  %or.i188 = or i64 %and5.i185, %and7.i187
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %8 = load i64, ptr %arrayidx13, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg3, i64 24
  %9 = load i64, ptr %arrayidx14, align 8, !tbaa !10
  %and5.i191 = and i64 %9, %1
  %and7.i193 = and i64 %8, %2
  %or.i194 = or i64 %and5.i191, %and7.i193
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %10 = load i64, ptr %arrayidx15, align 8, !tbaa !10
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg3, i64 32
  %11 = load i64, ptr %arrayidx16, align 8, !tbaa !10
  %and5.i197 = and i64 %11, %1
  %and7.i199 = and i64 %10, %2
  %or.i200 = or i64 %and5.i197, %and7.i199
  %not18 = xor i64 %3, -1
  %conv2.i = zext i64 %not18 to i128
  %add3.i201 = add nuw nsw i128 %conv2.i, 1
  %conv4.i202 = trunc i128 %add3.i201 to i64
  %shr.i203 = lshr i128 %add3.i201, 64
  %not20 = xor i64 %4, -1
  %conv2.i205 = zext i64 %not20 to i128
  %add3.i206 = add nuw nsw i128 %shr.i203, %conv2.i205
  %conv4.i207 = trunc i128 %add3.i206 to i64
  %shr.i208 = lshr i128 %add3.i206, 64
  %not22 = xor i64 %6, -1
  %conv2.i211 = zext i64 %not22 to i128
  %add3.i212 = add nuw nsw i128 %shr.i208, %conv2.i211
  %conv4.i213 = trunc i128 %add3.i212 to i64
  %shr.i214 = lshr i128 %add3.i212, 64
  %not24 = xor i64 %8, -1
  %conv2.i217 = zext i64 %not24 to i128
  %add3.i218 = add nuw nsw i128 %shr.i214, %conv2.i217
  %conv4.i219 = trunc i128 %add3.i218 to i64
  %shr.i220 = lshr i128 %add3.i218, 64
  %not26 = xor i64 %10, -1
  %12 = trunc nuw nsw i128 %shr.i220 to i64
  %conv4.i225 = add i64 %12, %not26
  %and5.i230 = and i64 %1, %conv4.i202
  %and7.i232 = and i64 %2, %0
  %or.i233 = or i64 %and5.i230, %and7.i232
  %and5.i236 = and i64 %1, %conv4.i207
  %and7.i238 = and i64 %5, %2
  %or.i239 = or i64 %and5.i236, %and7.i238
  %and5.i242 = and i64 %1, %conv4.i213
  %and7.i244 = and i64 %7, %2
  %or.i245 = or i64 %and5.i242, %and7.i244
  %and5.i248 = and i64 %1, %conv4.i219
  %and7.i250 = and i64 %9, %2
  %or.i251 = or i64 %and5.i248, %and7.i250
  %and5.i254 = and i64 %conv4.i225, %1
  %and7.i256 = and i64 %11, %2
  %or.i257 = or i64 %and5.i254, %and7.i256
  %13 = load i64, ptr %arg4, align 8, !tbaa !10
  %14 = load i64, ptr %arg5, align 8, !tbaa !10
  %and5.i260 = and i64 %14, %1
  %and7.i262 = and i64 %13, %2
  %or.i263 = or i64 %and5.i260, %and7.i262
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %arg4, i64 8
  %15 = load i64, ptr %arrayidx34, align 8, !tbaa !10
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arg5, i64 8
  %16 = load i64, ptr %arrayidx35, align 8, !tbaa !10
  %and5.i266 = and i64 %16, %1
  %and7.i268 = and i64 %15, %2
  %or.i269 = or i64 %and5.i266, %and7.i268
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg4, i64 16
  %17 = load i64, ptr %arrayidx36, align 8, !tbaa !10
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %arg5, i64 16
  %18 = load i64, ptr %arrayidx37, align 8, !tbaa !10
  %and5.i272 = and i64 %18, %1
  %and7.i274 = and i64 %17, %2
  %or.i275 = or i64 %and5.i272, %and7.i274
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %arg4, i64 24
  %19 = load i64, ptr %arrayidx38, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %arg5, i64 24
  %20 = load i64, ptr %arrayidx39, align 8, !tbaa !10
  %and5.i278 = and i64 %20, %1
  %and7.i280 = and i64 %19, %2
  %or.i281 = or i64 %and5.i278, %and7.i280
  %add3.i284 = shl i64 %or.i263, 1
  %conv4.i292 = tail call i64 @llvm.fshl.i64(i64 %or.i269, i64 %or.i263, i64 1)
  %conv4.i300 = tail call i64 @llvm.fshl.i64(i64 %or.i275, i64 %or.i269, i64 1)
  %conv4.i308 = tail call i64 @llvm.fshl.i64(i64 %or.i281, i64 %or.i275, i64 1)
  %21 = lshr i64 %or.i281, 63
  %sub3.i = or disjoint i64 %add3.i284, 1
  %conv.i315 = zext i64 %conv4.i292 to i128
  %sub3.i317 = add nsw i128 %conv.i315, -4294967296
  %shr.i318 = lshr i128 %sub3.i317, 64
  %conv4.i319 = trunc i128 %shr.i318 to i8
  %conv5.i320 = trunc i128 %sub3.i317 to i64
  %sub7.i321 = sub i8 0, %conv4.i319
  %conv.i322 = zext i64 %conv4.i300 to i128
  %conv1.i323 = zext i8 %sub7.i321 to i128
  %sub3.i324 = sub nsw i128 %conv.i322, %conv1.i323
  %shr.i325 = lshr i128 %sub3.i324, 64
  %conv4.i326 = trunc i128 %shr.i325 to i8
  %conv5.i327 = trunc i128 %sub3.i324 to i64
  %sub7.i328 = sub i8 0, %conv4.i326
  %conv.i329 = zext i64 %conv4.i308 to i128
  %conv1.i330 = zext i8 %sub7.i328 to i128
  %.neg = add nsw i128 %conv.i329, -18446744069414584321
  %sub3.i331 = sub nsw i128 %.neg, %conv1.i330
  %shr.i332 = lshr i128 %sub3.i331, 64
  %conv4.i333 = trunc i128 %shr.i332 to i8
  %conv5.i334 = trunc i128 %sub3.i331 to i64
  %sub7.i335 = sub i8 0, %conv4.i333
  %conv.i336 = zext nneg i64 %21 to i128
  %conv1.i337 = zext i8 %sub7.i335 to i128
  %sub3.i338 = sub nsw i128 %conv.i336, %conv1.i337
  %shr.i339 = lshr i128 %sub3.i338, 64
  %conv4.i340 = trunc i128 %shr.i339 to i8
  %conv2.i343 = zext i64 %13 to i128
  %sub3.i344 = sub nsw i128 0, %conv2.i343
  %shr.i345 = lshr i128 %sub3.i344, 64
  %conv4.i346 = trunc i128 %shr.i345 to i8
  %sub7.i348 = sub i8 0, %conv4.i346
  %conv1.i349 = zext i8 %sub7.i348 to i128
  %conv2.i350 = zext i64 %15 to i128
  %22 = add nuw nsw i128 %conv2.i350, %conv1.i349
  %sub3.i351 = sub nsw i128 0, %22
  %shr.i352 = lshr i128 %sub3.i351, 64
  %conv4.i353 = trunc i128 %shr.i352 to i8
  %sub7.i355 = sub i8 0, %conv4.i353
  %conv1.i356 = zext i8 %sub7.i355 to i128
  %conv2.i357 = zext i64 %17 to i128
  %23 = add nuw nsw i128 %conv2.i357, %conv1.i356
  %sub3.i358 = sub nsw i128 0, %23
  %shr.i359 = lshr i128 %sub3.i358, 64
  %conv4.i360 = trunc i128 %shr.i359 to i8
  %sub7.i362 = sub i8 0, %conv4.i360
  %conv1.i363 = zext i8 %sub7.i362 to i128
  %conv2.i364 = zext i64 %19 to i128
  %24 = add nuw nsw i128 %conv1.i363, %conv2.i364
  %sub3.i365 = sub nsw i128 0, %24
  %25 = and i128 %sub3.i365, 4703919738795935662080
  %tobool.i370 = icmp ne i128 %25, 0
  %conv4.i371 = sext i1 %tobool.i370 to i64
  %26 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i371) #7, !srcloc !9
  %not.i373 = xor i64 %conv4.i371, -1
  %27 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i373) #7, !srcloc !9
  %conv1.i376 = and i128 %sub3.i344, 18446744073709551615
  %conv2.i378 = zext i64 %26 to i128
  %add3.i379 = add nuw nsw i128 %conv1.i376, %conv2.i378
  %conv4.i380 = trunc i128 %add3.i379 to i64
  %shr.i381 = lshr i128 %add3.i379, 64
  %and45 = and i64 %26, 4294967295
  %conv1.i384 = and i128 %sub3.i351, 18446744073709551615
  %conv2.i386 = zext nneg i64 %and45 to i128
  %add.i385 = add nuw nsw i128 %conv1.i384, %conv2.i386
  %add3.i387 = add nuw nsw i128 %add.i385, %shr.i381
  %conv4.i388 = trunc i128 %add3.i387 to i64
  %shr.i389 = lshr i128 %add3.i387, 64
  %conv1.i392 = and i128 %sub3.i358, 18446744073709551615
  %add.i393 = add nuw nsw i128 %shr.i389, %conv1.i392
  %conv4.i395 = trunc i128 %add.i393 to i64
  %shr.i396 = lshr i128 %add.i393, 64
  %and46 = and i64 %26, -4294967295
  %add.i400 = sub nsw i128 %shr.i396, %24
  %28 = trunc i128 %add.i400 to i64
  %conv4.i403 = add i64 %and46, %28
  %and5.i408 = and i64 %1, %conv4.i380
  %and7.i410 = and i64 %14, %2
  %or.i411 = or i64 %and5.i408, %and7.i410
  %and5.i414 = and i64 %1, %conv4.i388
  %and7.i416 = and i64 %16, %2
  %or.i417 = or i64 %and5.i414, %and7.i416
  %and5.i420 = and i64 %1, %conv4.i395
  %and7.i422 = and i64 %18, %2
  %or.i423 = or i64 %and5.i420, %and7.i422
  %and5.i426 = and i64 %conv4.i403, %1
  %and7.i428 = and i64 %20, %2
  %or.i429 = or i64 %and5.i426, %and7.i428
  %29 = and i64 %or.i233, 1
  %conv4.i431 = sub nsw i64 0, %29
  %30 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i431) #7, !srcloc !9
  %and5.i432 = and i64 %30, %or.i176
  %not.i433 = add nsw i64 %29, -1
  %31 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i433) #7, !srcloc !9
  %and5.i438 = and i64 %30, %or.i182
  %and5.i444 = and i64 %30, %or.i188
  %and5.i450 = and i64 %30, %or.i194
  %and5.i456 = and i64 %30, %or.i200
  %add.narrowed = add i64 %and5.i432, %or.i233
  %add.narrowed.overflow = icmp ult i64 %add.narrowed, %or.i233
  %conv.i467 = zext i1 %add.narrowed.overflow to i128
  %conv1.i468 = zext i64 %or.i239 to i128
  %conv2.i470 = zext i64 %and5.i438 to i128
  %add.i469 = add nuw nsw i128 %conv2.i470, %conv1.i468
  %add3.i471 = add nuw nsw i128 %add.i469, %conv.i467
  %conv4.i472 = trunc i128 %add3.i471 to i64
  %shr.i473 = lshr i128 %add3.i471, 64
  %conv1.i476 = zext i64 %or.i245 to i128
  %conv2.i478 = zext i64 %and5.i444 to i128
  %add.i477 = add nuw nsw i128 %conv2.i478, %conv1.i476
  %add3.i479 = add nuw nsw i128 %add.i477, %shr.i473
  %conv4.i480 = trunc i128 %add3.i479 to i64
  %shr.i481 = lshr i128 %add3.i479, 64
  %conv1.i484 = zext i64 %or.i251 to i128
  %conv2.i486 = zext i64 %and5.i450 to i128
  %add.i485 = add nuw nsw i128 %conv2.i486, %conv1.i484
  %add3.i487 = add nuw nsw i128 %add.i485, %shr.i481
  %conv4.i488 = trunc i128 %add3.i487 to i64
  %shr.i489 = lshr i128 %add3.i487, 64
  %32 = trunc nuw nsw i128 %shr.i489 to i64
  %33 = add i64 %and5.i456, %or.i257
  %conv4.i496 = add i64 %33, %32
  %and5.i501 = and i64 %30, %or.i263
  %and5.i507 = and i64 %30, %or.i269
  %and5.i513 = and i64 %30, %or.i275
  %and5.i519 = and i64 %30, %or.i281
  %add.narrowed671 = add i64 %or.i411, %and5.i501
  %add.narrowed.overflow672 = icmp ult i64 %add.narrowed671, %or.i411
  %conv.i530 = zext i1 %add.narrowed.overflow672 to i128
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
  %conv.i554 = zext i64 %add.narrowed671 to i128
  %sub3.i555 = add nsw i128 %conv.i554, -18446744073709551615
  %shr.i556 = lshr i128 %sub3.i555, 64
  %conv4.i557 = trunc i128 %shr.i556 to i8
  %conv5.i558 = trunc i128 %sub3.i555 to i64
  %sub7.i559 = sub i8 0, %conv4.i557
  %conv.i560 = and i128 %add3.i534, 18446744073709551615
  %conv1.i561 = zext i8 %sub7.i559 to i128
  %reass.sub = sub nsw i128 %conv.i560, %conv1.i561
  %sub3.i562 = add nsw i128 %reass.sub, -4294967295
  %shr.i563 = lshr i128 %sub3.i562, 64
  %conv4.i564 = trunc i128 %shr.i563 to i8
  %conv5.i565 = trunc i128 %sub3.i562 to i64
  %sub7.i566 = sub i8 0, %conv4.i564
  %conv.i567 = and i128 %add3.i542, 18446744073709551615
  %conv1.i568 = zext i8 %sub7.i566 to i128
  %sub3.i569 = sub nsw i128 %conv.i567, %conv1.i568
  %shr.i570 = lshr i128 %sub3.i569, 64
  %conv4.i571 = trunc i128 %shr.i570 to i8
  %conv5.i572 = trunc i128 %sub3.i569 to i64
  %sub7.i573 = sub i8 0, %conv4.i571
  %conv.i574 = and i128 %add3.i550, 18446744073709551615
  %conv1.i575 = zext i8 %sub7.i573 to i128
  %.neg674 = add nsw i128 %conv.i574, -18446744069414584321
  %sub3.i576 = sub nsw i128 %.neg674, %conv1.i575
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
  %or59 = tail call i64 @llvm.fshl.i64(i64 %conv4.i480, i64 %conv4.i472, i64 63)
  %or63 = tail call i64 @llvm.fshl.i64(i64 %conv4.i488, i64 %conv4.i480, i64 63)
  %or67 = tail call i64 @llvm.fshl.i64(i64 %conv4.i496, i64 %conv4.i488, i64 63)
  %and68 = and i64 %conv4.i496, -9223372036854775808
  %shr69 = lshr i64 %conv4.i496, 1
  %or70 = or disjoint i64 %and68, %shr69
  %tobool.i594 = icmp ne i8 %conv4.i340, 0
  %conv4.i595 = sext i1 %tobool.i594 to i64
  %34 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i595) #7, !srcloc !9
  %and5.i596 = and i64 %34, %add3.i284
  %not.i597 = xor i64 %conv4.i595, -1
  %35 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i597) #7, !srcloc !9
  %and7.i598 = and i64 %35, %sub3.i
  %or.i599 = or i64 %and7.i598, %and5.i596
  %and5.i602 = and i64 %34, %conv4.i292
  %and7.i604 = and i64 %35, %conv5.i320
  %or.i605 = or i64 %and7.i604, %and5.i602
  %and5.i608 = and i64 %34, %conv4.i300
  %and7.i610 = and i64 %35, %conv5.i327
  %or.i611 = or i64 %and7.i610, %and5.i608
  %and5.i614 = and i64 %34, %conv4.i308
  %and7.i616 = and i64 %35, %conv5.i334
  %or.i617 = or i64 %and7.i616, %and5.i614
  %tobool.i618 = icmp ne i8 %conv4.i585, 0
  %conv4.i619 = sext i1 %tobool.i618 to i64
  %36 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i619) #7, !srcloc !9
  %and5.i620 = and i64 %36, %add.narrowed671
  %not.i621 = xor i64 %conv4.i619, -1
  %37 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i621) #7, !srcloc !9
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
  store i64 %or.i176, ptr %out2, align 8, !tbaa !10
  %arrayidx72 = getelementptr inbounds nuw i8, ptr %out2, i64 8
  store i64 %or.i182, ptr %arrayidx72, align 8, !tbaa !10
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %out2, i64 16
  store i64 %or.i188, ptr %arrayidx73, align 8, !tbaa !10
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %out2, i64 24
  store i64 %or.i194, ptr %arrayidx74, align 8, !tbaa !10
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %out2, i64 32
  store i64 %or.i200, ptr %arrayidx75, align 8, !tbaa !10
  store i64 %or, ptr %out3, align 8, !tbaa !10
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %out3, i64 8
  store i64 %or59, ptr %arrayidx77, align 8, !tbaa !10
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %out3, i64 16
  store i64 %or63, ptr %arrayidx78, align 8, !tbaa !10
  %arrayidx79 = getelementptr inbounds nuw i8, ptr %out3, i64 24
  store i64 %or67, ptr %arrayidx79, align 8, !tbaa !10
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %out3, i64 32
  store i64 %or70, ptr %arrayidx80, align 8, !tbaa !10
  store i64 %or.i599, ptr %out4, align 8, !tbaa !10
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %out4, i64 8
  store i64 %or.i605, ptr %arrayidx82, align 8, !tbaa !10
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %out4, i64 16
  store i64 %or.i611, ptr %arrayidx83, align 8, !tbaa !10
  %arrayidx84 = getelementptr inbounds nuw i8, ptr %out4, i64 24
  store i64 %or.i617, ptr %arrayidx84, align 8, !tbaa !10
  store i64 %or.i623, ptr %out5, align 8, !tbaa !10
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %out5, i64 8
  store i64 %or.i629, ptr %arrayidx86, align 8, !tbaa !10
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %out5, i64 16
  store i64 %or.i635, ptr %arrayidx87, align 8, !tbaa !10
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %out5, i64 24
  store i64 %or.i641, ptr %arrayidx88, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p256_divstep_precomp(ptr noundef writeonly captures(none) initializes((0, 32)) %out1) local_unnamed_addr #1 {
entry:
  store i64 7493989778736545792, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 -4611686017487863808, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 -2882303759369633793, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 3458764513820540927, ptr %arrayidx3, align 8, !tbaa !10
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
!9 = !{i64 3243}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
