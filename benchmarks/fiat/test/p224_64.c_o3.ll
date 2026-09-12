; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @fiat_p224_value_barrier_u64(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #8, !srcloc !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p224_addcarryx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
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
define dso_local void @fiat_p224_subborrowx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
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
define dso_local void @fiat_p224_mulx_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 8)) %out2, i64 noundef %arg1, i64 noundef %arg2) local_unnamed_addr #1 {
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
define dso_local void @fiat_p224_cmovznz_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #2 {
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
define dso_local void @fiat_p224_mul(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
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
  %conv2.i119 = sub i64 0, %8
  %conv.i122 = zext i64 %conv2.i119 to i128
  %mul.i123 = mul nuw nsw i128 %conv.i122, 4294967295
  %shr.i125 = lshr i128 %mul.i123, 64
  %conv3.i126 = trunc nuw nsw i128 %shr.i125 to i64
  %mul.i128 = mul nuw i128 %conv.i122, 18446744073709551615
  %shr.i130 = lshr i128 %mul.i128, 64
  %mul.i133 = mul nuw i128 %conv.i122, 18446744069414584320
  %shr.i135 = lshr i128 %mul.i133, 64
  %conv2.i139 = and i128 %mul.i128, 18446744073709551615
  %add3.i140 = add nuw nsw i128 %shr.i135, %conv2.i139
  %shr.i142 = lshr i128 %add3.i140, 64
  %conv2.i147 = and i128 %mul.i123, 18446744073709551615
  %add.i146 = add nuw nsw i128 %conv2.i147, %shr.i130
  %add3.i148 = add nuw nsw i128 %add.i146, %shr.i142
  %shr.i150 = lshr i128 %add3.i148, 64
  %conv5.i151 = trunc nuw nsw i128 %shr.i150 to i64
  %add9 = add nuw nsw i64 %conv5.i151, %conv3.i126
  %add3.i155 = add nuw nsw i128 %conv.i117, %conv.i122
  %shr.i157 = lshr i128 %add3.i155, 64
  %conv1.i160 = and i128 %add3.i, 18446744073709551615
  %add.i161 = add nuw nsw i128 %shr.i157, %conv1.i160
  %conv2.i162 = and i128 %mul.i133, 18446744069414584320
  %add3.i163 = add nuw nsw i128 %add.i161, %conv2.i162
  %shr.i165 = lshr i128 %add3.i163, 64
  %conv1.i168 = and i128 %add3.i105, 18446744073709551615
  %conv2.i170 = and i128 %add3.i140, 18446744073709551615
  %add.i169 = add nuw nsw i128 %conv2.i170, %conv1.i168
  %add3.i171 = add nuw nsw i128 %add.i169, %shr.i165
  %shr.i173 = lshr i128 %add3.i171, 64
  %conv1.i176 = and i128 %add3.i113, 18446744073709551615
  %conv2.i178 = and i128 %add3.i148, 18446744073709551615
  %add.i177 = add nuw nsw i128 %conv2.i178, %conv1.i176
  %add3.i179 = add nuw nsw i128 %add.i177, %shr.i173
  %shr.i181 = lshr i128 %add3.i179, 64
  %conv1.i184 = zext i64 %add to i128
  %conv2.i186 = zext nneg i64 %add9 to i128
  %add.i185 = add nuw nsw i128 %conv2.i186, %conv1.i184
  %add3.i187 = add nuw nsw i128 %add.i185, %shr.i181
  %shr.i189 = lshr i128 %add3.i187, 64
  %conv.i191 = zext i64 %0 to i128
  %mul.i193 = mul nuw i128 %conv1.i, %conv.i191
  %shr.i195 = lshr i128 %mul.i193, 64
  %conv3.i196 = trunc nuw i128 %shr.i195 to i64
  %mul.i199 = mul nuw i128 %conv1.i82, %conv.i191
  %shr.i201 = lshr i128 %mul.i199, 64
  %mul.i205 = mul nuw i128 %conv1.i88, %conv.i191
  %shr.i207 = lshr i128 %mul.i205, 64
  %mul.i211 = mul nuw i128 %conv1.i94, %conv.i191
  %shr.i213 = lshr i128 %mul.i211, 64
  %conv2.i217 = and i128 %mul.i205, 18446744073709551615
  %add3.i218 = add nuw nsw i128 %shr.i213, %conv2.i217
  %shr.i220 = lshr i128 %add3.i218, 64
  %conv2.i225 = and i128 %mul.i199, 18446744073709551615
  %add.i224 = add nuw nsw i128 %shr.i207, %conv2.i225
  %add3.i226 = add nuw nsw i128 %add.i224, %shr.i220
  %shr.i228 = lshr i128 %add3.i226, 64
  %conv2.i233 = and i128 %mul.i193, 18446744073709551615
  %add.i232 = add nuw nsw i128 %shr.i201, %conv2.i233
  %add3.i234 = add nuw nsw i128 %add.i232, %shr.i228
  %shr.i236 = lshr i128 %add3.i234, 64
  %conv5.i237 = trunc nuw nsw i128 %shr.i236 to i64
  %add15 = add nuw i64 %conv5.i237, %conv3.i196
  %conv1.i238 = and i128 %add3.i163, 18446744073709551615
  %conv2.i240 = and i128 %mul.i211, 18446744073709551615
  %add3.i241 = add nuw nsw i128 %conv1.i238, %conv2.i240
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
  %conv1.i262 = and i128 %add3.i187, 18446744073709551615
  %conv2.i264 = and i128 %add3.i234, 18446744073709551615
  %add.i263 = add nuw nsw i128 %shr.i259, %conv2.i264
  %add3.i265 = add nuw nsw i128 %add.i263, %conv1.i262
  %shr.i267 = lshr i128 %add3.i265, 64
  %conv2.i272 = zext i64 %add15 to i128
  %add.i271 = add nuw nsw i128 %shr.i189, %conv2.i272
  %add3.i273 = add nuw nsw i128 %add.i271, %shr.i267
  %shr.i275 = lshr i128 %add3.i273, 64
  %conv5.i276 = trunc nuw nsw i128 %shr.i275 to i64
  %conv.i277 = and i128 %add3.i241, 18446744073709551615
  %9 = trunc i128 %add3.i241 to i64
  %conv2.i279 = sub i64 0, %9
  %conv.i282 = zext i64 %conv2.i279 to i128
  %mul.i283 = mul nuw nsw i128 %conv.i282, 4294967295
  %shr.i285 = lshr i128 %mul.i283, 64
  %conv3.i286 = trunc nuw nsw i128 %shr.i285 to i64
  %mul.i288 = mul nuw i128 %conv.i282, 18446744073709551615
  %shr.i290 = lshr i128 %mul.i288, 64
  %mul.i293 = mul nuw i128 %conv.i282, 18446744069414584320
  %shr.i295 = lshr i128 %mul.i293, 64
  %conv2.i299 = and i128 %mul.i288, 18446744073709551615
  %add3.i300 = add nuw nsw i128 %shr.i295, %conv2.i299
  %shr.i302 = lshr i128 %add3.i300, 64
  %conv2.i307 = and i128 %mul.i283, 18446744073709551615
  %add.i306 = add nuw nsw i128 %conv2.i307, %shr.i290
  %add3.i308 = add nuw nsw i128 %add.i306, %shr.i302
  %shr.i310 = lshr i128 %add3.i308, 64
  %conv5.i311 = trunc nuw nsw i128 %shr.i310 to i64
  %add18 = add nuw nsw i64 %conv5.i311, %conv3.i286
  %add3.i315 = add nuw nsw i128 %conv.i277, %conv.i282
  %shr.i317 = lshr i128 %add3.i315, 64
  %conv1.i320 = and i128 %add3.i249, 18446744073709551615
  %conv2.i322 = and i128 %mul.i293, 18446744069414584320
  %add.i321 = or disjoint i128 %conv2.i322, %shr.i317
  %add3.i323 = add nuw nsw i128 %add.i321, %conv1.i320
  %shr.i325 = lshr i128 %add3.i323, 64
  %conv1.i328 = and i128 %add3.i257, 18446744073709551615
  %conv2.i330 = and i128 %add3.i300, 18446744073709551615
  %add.i329 = add nuw nsw i128 %shr.i325, %conv2.i330
  %add3.i331 = add nuw nsw i128 %add.i329, %conv1.i328
  %shr.i333 = lshr i128 %add3.i331, 64
  %conv1.i336 = and i128 %add3.i265, 18446744073709551615
  %conv2.i338 = and i128 %add3.i308, 18446744073709551615
  %add.i337 = add nuw nsw i128 %shr.i333, %conv2.i338
  %add3.i339 = add nuw nsw i128 %add.i337, %conv1.i336
  %shr.i341 = lshr i128 %add3.i339, 64
  %conv1.i344 = and i128 %add3.i273, 18446744073709551615
  %conv2.i346 = zext nneg i64 %add18 to i128
  %add.i345 = add nuw nsw i128 %shr.i341, %conv2.i346
  %add3.i347 = add nuw nsw i128 %add.i345, %conv1.i344
  %shr.i349 = lshr i128 %add3.i347, 64
  %conv5.i350 = trunc nuw nsw i128 %shr.i349 to i64
  %add21 = add nuw nsw i64 %conv5.i350, %conv5.i276
  %conv.i351 = zext i64 %1 to i128
  %mul.i353 = mul nuw i128 %conv1.i, %conv.i351
  %shr.i355 = lshr i128 %mul.i353, 64
  %conv3.i356 = trunc nuw i128 %shr.i355 to i64
  %mul.i359 = mul nuw i128 %conv1.i82, %conv.i351
  %shr.i361 = lshr i128 %mul.i359, 64
  %mul.i365 = mul nuw i128 %conv1.i88, %conv.i351
  %shr.i367 = lshr i128 %mul.i365, 64
  %mul.i371 = mul nuw i128 %conv1.i94, %conv.i351
  %shr.i373 = lshr i128 %mul.i371, 64
  %conv2.i377 = and i128 %mul.i365, 18446744073709551615
  %add3.i378 = add nuw nsw i128 %shr.i373, %conv2.i377
  %shr.i380 = lshr i128 %add3.i378, 64
  %conv2.i385 = and i128 %mul.i359, 18446744073709551615
  %add.i384 = add nuw nsw i128 %shr.i367, %conv2.i385
  %add3.i386 = add nuw nsw i128 %add.i384, %shr.i380
  %shr.i388 = lshr i128 %add3.i386, 64
  %conv2.i393 = and i128 %mul.i353, 18446744073709551615
  %add.i392 = add nuw nsw i128 %shr.i361, %conv2.i393
  %add3.i394 = add nuw nsw i128 %add.i392, %shr.i388
  %shr.i396 = lshr i128 %add3.i394, 64
  %conv5.i397 = trunc nuw nsw i128 %shr.i396 to i64
  %add27 = add nuw i64 %conv5.i397, %conv3.i356
  %conv1.i398 = and i128 %add3.i323, 18446744073709551615
  %conv2.i400 = and i128 %mul.i371, 18446744073709551615
  %add3.i401 = add nuw nsw i128 %conv1.i398, %conv2.i400
  %shr.i403 = lshr i128 %add3.i401, 64
  %conv1.i406 = and i128 %add3.i331, 18446744073709551615
  %conv2.i408 = and i128 %add3.i378, 18446744073709551615
  %add.i407 = add nuw nsw i128 %shr.i403, %conv2.i408
  %add3.i409 = add nuw nsw i128 %add.i407, %conv1.i406
  %shr.i411 = lshr i128 %add3.i409, 64
  %conv1.i414 = and i128 %add3.i339, 18446744073709551615
  %conv2.i416 = and i128 %add3.i386, 18446744073709551615
  %add.i415 = add nuw nsw i128 %shr.i411, %conv2.i416
  %add3.i417 = add nuw nsw i128 %add.i415, %conv1.i414
  %shr.i419 = lshr i128 %add3.i417, 64
  %conv1.i422 = and i128 %add3.i347, 18446744073709551615
  %conv2.i424 = and i128 %add3.i394, 18446744073709551615
  %add.i423 = add nuw nsw i128 %shr.i419, %conv2.i424
  %add3.i425 = add nuw nsw i128 %add.i423, %conv1.i422
  %shr.i427 = lshr i128 %add3.i425, 64
  %conv1.i430 = zext nneg i64 %add21 to i128
  %conv2.i432 = zext i64 %add27 to i128
  %add.i431 = add nuw nsw i128 %conv1.i430, %conv2.i432
  %add3.i433 = add nuw nsw i128 %add.i431, %shr.i427
  %shr.i435 = lshr i128 %add3.i433, 64
  %conv5.i436 = trunc nuw nsw i128 %shr.i435 to i64
  %conv.i437 = and i128 %add3.i401, 18446744073709551615
  %10 = trunc i128 %add3.i401 to i64
  %conv2.i439 = sub i64 0, %10
  %conv.i442 = zext i64 %conv2.i439 to i128
  %mul.i443 = mul nuw nsw i128 %conv.i442, 4294967295
  %shr.i445 = lshr i128 %mul.i443, 64
  %conv3.i446 = trunc nuw nsw i128 %shr.i445 to i64
  %mul.i448 = mul nuw i128 %conv.i442, 18446744073709551615
  %shr.i450 = lshr i128 %mul.i448, 64
  %mul.i453 = mul nuw i128 %conv.i442, 18446744069414584320
  %shr.i455 = lshr i128 %mul.i453, 64
  %conv2.i459 = and i128 %mul.i448, 18446744073709551615
  %add3.i460 = add nuw nsw i128 %shr.i455, %conv2.i459
  %shr.i462 = lshr i128 %add3.i460, 64
  %conv2.i467 = and i128 %mul.i443, 18446744073709551615
  %add.i466 = add nuw nsw i128 %conv2.i467, %shr.i450
  %add3.i468 = add nuw nsw i128 %add.i466, %shr.i462
  %shr.i470 = lshr i128 %add3.i468, 64
  %conv5.i471 = trunc nuw nsw i128 %shr.i470 to i64
  %add29 = add nuw nsw i64 %conv5.i471, %conv3.i446
  %add3.i475 = add nuw nsw i128 %conv.i437, %conv.i442
  %shr.i477 = lshr i128 %add3.i475, 64
  %conv1.i480 = and i128 %add3.i409, 18446744073709551615
  %conv2.i482 = and i128 %mul.i453, 18446744069414584320
  %add.i481 = or disjoint i128 %conv2.i482, %shr.i477
  %add3.i483 = add nuw nsw i128 %add.i481, %conv1.i480
  %shr.i485 = lshr i128 %add3.i483, 64
  %conv1.i488 = and i128 %add3.i417, 18446744073709551615
  %conv2.i490 = and i128 %add3.i460, 18446744073709551615
  %add.i489 = add nuw nsw i128 %shr.i485, %conv2.i490
  %add3.i491 = add nuw nsw i128 %add.i489, %conv1.i488
  %shr.i493 = lshr i128 %add3.i491, 64
  %conv1.i496 = and i128 %add3.i425, 18446744073709551615
  %conv2.i498 = and i128 %add3.i468, 18446744073709551615
  %add.i497 = add nuw nsw i128 %shr.i493, %conv2.i498
  %add3.i499 = add nuw nsw i128 %add.i497, %conv1.i496
  %shr.i501 = lshr i128 %add3.i499, 64
  %conv1.i504 = and i128 %add3.i433, 18446744073709551615
  %conv2.i506 = zext nneg i64 %add29 to i128
  %add.i505 = add nuw nsw i128 %shr.i501, %conv2.i506
  %add3.i507 = add nuw nsw i128 %add.i505, %conv1.i504
  %shr.i509 = lshr i128 %add3.i507, 64
  %conv5.i510 = trunc nuw nsw i128 %shr.i509 to i64
  %add32 = add nuw nsw i64 %conv5.i510, %conv5.i436
  %conv.i511 = zext i64 %2 to i128
  %mul.i513 = mul nuw i128 %conv1.i, %conv.i511
  %shr.i515 = lshr i128 %mul.i513, 64
  %conv3.i516 = trunc nuw i128 %shr.i515 to i64
  %mul.i519 = mul nuw i128 %conv1.i82, %conv.i511
  %shr.i521 = lshr i128 %mul.i519, 64
  %mul.i525 = mul nuw i128 %conv1.i88, %conv.i511
  %shr.i527 = lshr i128 %mul.i525, 64
  %mul.i531 = mul nuw i128 %conv1.i94, %conv.i511
  %shr.i533 = lshr i128 %mul.i531, 64
  %conv2.i537 = and i128 %mul.i525, 18446744073709551615
  %add3.i538 = add nuw nsw i128 %shr.i533, %conv2.i537
  %shr.i540 = lshr i128 %add3.i538, 64
  %conv2.i545 = and i128 %mul.i519, 18446744073709551615
  %add.i544 = add nuw nsw i128 %shr.i527, %conv2.i545
  %add3.i546 = add nuw nsw i128 %add.i544, %shr.i540
  %shr.i548 = lshr i128 %add3.i546, 64
  %conv2.i553 = and i128 %mul.i513, 18446744073709551615
  %add.i552 = add nuw nsw i128 %shr.i521, %conv2.i553
  %add3.i554 = add nuw nsw i128 %add.i552, %shr.i548
  %shr.i556 = lshr i128 %add3.i554, 64
  %conv5.i557 = trunc nuw nsw i128 %shr.i556 to i64
  %add38 = add nuw i64 %conv5.i557, %conv3.i516
  %conv1.i558 = and i128 %add3.i483, 18446744073709551615
  %conv2.i560 = and i128 %mul.i531, 18446744073709551615
  %add3.i561 = add nuw nsw i128 %conv1.i558, %conv2.i560
  %shr.i563 = lshr i128 %add3.i561, 64
  %conv1.i566 = and i128 %add3.i491, 18446744073709551615
  %conv2.i568 = and i128 %add3.i538, 18446744073709551615
  %add.i567 = add nuw nsw i128 %shr.i563, %conv2.i568
  %add3.i569 = add nuw nsw i128 %add.i567, %conv1.i566
  %shr.i571 = lshr i128 %add3.i569, 64
  %conv1.i574 = and i128 %add3.i499, 18446744073709551615
  %conv2.i576 = and i128 %add3.i546, 18446744073709551615
  %add.i575 = add nuw nsw i128 %shr.i571, %conv2.i576
  %add3.i577 = add nuw nsw i128 %add.i575, %conv1.i574
  %shr.i579 = lshr i128 %add3.i577, 64
  %conv1.i582 = and i128 %add3.i507, 18446744073709551615
  %conv2.i584 = and i128 %add3.i554, 18446744073709551615
  %add.i583 = add nuw nsw i128 %shr.i579, %conv2.i584
  %add3.i585 = add nuw nsw i128 %add.i583, %conv1.i582
  %shr.i587 = lshr i128 %add3.i585, 64
  %conv1.i590 = zext nneg i64 %add32 to i128
  %conv2.i592 = zext i64 %add38 to i128
  %add.i591 = add nuw nsw i128 %conv1.i590, %conv2.i592
  %add3.i593 = add nuw nsw i128 %add.i591, %shr.i587
  %shr.i595 = lshr i128 %add3.i593, 64
  %conv5.i596 = trunc nuw nsw i128 %shr.i595 to i64
  %conv.i597 = and i128 %add3.i561, 18446744073709551615
  %11 = trunc i128 %add3.i561 to i64
  %conv2.i599 = sub i64 0, %11
  %conv.i602 = zext i64 %conv2.i599 to i128
  %mul.i603 = mul nuw nsw i128 %conv.i602, 4294967295
  %shr.i605 = lshr i128 %mul.i603, 64
  %conv3.i606 = trunc nuw nsw i128 %shr.i605 to i64
  %mul.i608 = mul nuw i128 %conv.i602, 18446744073709551615
  %shr.i610 = lshr i128 %mul.i608, 64
  %mul.i613 = mul nuw i128 %conv.i602, 18446744069414584320
  %shr.i615 = lshr i128 %mul.i613, 64
  %conv2.i619 = and i128 %mul.i608, 18446744073709551615
  %add3.i620 = add nuw nsw i128 %shr.i615, %conv2.i619
  %shr.i622 = lshr i128 %add3.i620, 64
  %conv2.i627 = and i128 %mul.i603, 18446744073709551615
  %add.i626 = add nuw nsw i128 %conv2.i627, %shr.i610
  %add3.i628 = add nuw nsw i128 %add.i626, %shr.i622
  %shr.i630 = lshr i128 %add3.i628, 64
  %conv5.i631 = trunc nuw nsw i128 %shr.i630 to i64
  %add40 = add nuw nsw i64 %conv5.i631, %conv3.i606
  %add3.i635 = add nuw nsw i128 %conv.i597, %conv.i602
  %shr.i637 = lshr i128 %add3.i635, 64
  %conv1.i640 = and i128 %add3.i569, 18446744073709551615
  %conv2.i642 = and i128 %mul.i613, 18446744069414584320
  %add.i641 = or disjoint i128 %conv2.i642, %shr.i637
  %add3.i643 = add nuw nsw i128 %add.i641, %conv1.i640
  %conv4.i644 = trunc i128 %add3.i643 to i64
  %shr.i645 = lshr i128 %add3.i643, 64
  %conv1.i648 = and i128 %add3.i577, 18446744073709551615
  %conv2.i650 = and i128 %add3.i620, 18446744073709551615
  %add.i649 = add nuw nsw i128 %shr.i645, %conv2.i650
  %add3.i651 = add nuw nsw i128 %add.i649, %conv1.i648
  %conv4.i652 = trunc i128 %add3.i651 to i64
  %shr.i653 = lshr i128 %add3.i651, 64
  %conv1.i656 = and i128 %add3.i585, 18446744073709551615
  %conv2.i658 = and i128 %add3.i628, 18446744073709551615
  %add.i657 = add nuw nsw i128 %shr.i653, %conv2.i658
  %add3.i659 = add nuw nsw i128 %add.i657, %conv1.i656
  %conv4.i660 = trunc i128 %add3.i659 to i64
  %shr.i661 = lshr i128 %add3.i659, 64
  %conv1.i664 = and i128 %add3.i593, 18446744073709551615
  %conv2.i666 = zext nneg i64 %add40 to i128
  %add.i665 = add nuw nsw i128 %shr.i661, %conv2.i666
  %add3.i667 = add nuw nsw i128 %add.i665, %conv1.i664
  %conv4.i668 = trunc i128 %add3.i667 to i64
  %shr.i669 = lshr i128 %add3.i667, 64
  %conv5.i670 = trunc nuw nsw i128 %shr.i669 to i64
  %add43 = add nuw nsw i64 %conv5.i670, %conv5.i596
  %conv.i671 = and i128 %add3.i643, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i671, -1
  %shr.i672 = lshr i128 %sub3.i, 64
  %conv4.i673 = trunc i128 %shr.i672 to i8
  %conv5.i674 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i673
  %conv.i675 = and i128 %add3.i651, 18446744073709551615
  %conv1.i676 = zext i8 %sub7.i to i128
  %12 = or disjoint i128 %conv1.i676, 18446744069414584320
  %sub3.i677 = sub nsw i128 %conv.i675, %12
  %shr.i678 = lshr i128 %sub3.i677, 64
  %conv4.i679 = trunc i128 %shr.i678 to i8
  %conv5.i680 = trunc i128 %sub3.i677 to i64
  %sub7.i681 = sub i8 0, %conv4.i679
  %conv.i682 = and i128 %add3.i659, 18446744073709551615
  %conv1.i683 = zext i8 %sub7.i681 to i128
  %.neg = add nsw i128 %conv.i682, -18446744073709551615
  %sub3.i684 = sub nsw i128 %.neg, %conv1.i683
  %shr.i685 = lshr i128 %sub3.i684, 64
  %conv4.i686 = trunc i128 %shr.i685 to i8
  %conv5.i687 = trunc i128 %sub3.i684 to i64
  %sub7.i688 = sub i8 0, %conv4.i686
  %conv.i689 = and i128 %add3.i667, 18446744073709551615
  %conv1.i690 = zext i8 %sub7.i688 to i128
  %.neg745 = add nsw i128 %conv.i689, -4294967295
  %sub3.i691 = sub nsw i128 %.neg745, %conv1.i690
  %shr.i692 = lshr i128 %sub3.i691, 64
  %conv4.i693 = trunc i128 %shr.i692 to i8
  %conv5.i694 = trunc i128 %sub3.i691 to i64
  %sub7.i695 = sub i8 0, %conv4.i693
  %conv.i696 = zext nneg i64 %add43 to i128
  %conv1.i697 = zext i8 %sub7.i695 to i128
  %sub3.i698 = sub nsw i128 %conv.i696, %conv1.i697
  %shr.i699 = lshr i128 %sub3.i698, 64
  %conv4.i700 = trunc i128 %shr.i699 to i8
  %tobool.i = icmp ne i8 %conv4.i700, 0
  %conv4.i703 = sext i1 %tobool.i to i64
  %13 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i703) #8, !srcloc !9
  %and5.i = and i64 %13, %conv4.i644
  %not.i = xor i64 %conv4.i703, -1
  %14 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %14, %conv5.i674
  %or.i = or i64 %and7.i, %and5.i
  %and5.i706 = and i64 %13, %conv4.i652
  %and7.i708 = and i64 %14, %conv5.i680
  %or.i709 = or i64 %and7.i708, %and5.i706
  %and5.i712 = and i64 %13, %conv4.i660
  %and7.i714 = and i64 %14, %conv5.i687
  %or.i715 = or i64 %and7.i714, %and5.i712
  %and5.i718 = and i64 %13, %conv4.i668
  %and7.i720 = and i64 %14, %conv5.i694
  %or.i721 = or i64 %and7.i720, %and5.i718
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i709, ptr %arrayidx45, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i715, ptr %arrayidx46, align 8, !tbaa !10
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i721, ptr %arrayidx47, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p224_square(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
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
  %conv2.i120 = sub i64 0, %4
  %conv.i123 = zext i64 %conv2.i120 to i128
  %mul.i124 = mul nuw nsw i128 %conv.i123, 4294967295
  %shr.i126 = lshr i128 %mul.i124, 64
  %conv3.i127 = trunc nuw nsw i128 %shr.i126 to i64
  %mul.i129 = mul nuw i128 %conv.i123, 18446744073709551615
  %shr.i131 = lshr i128 %mul.i129, 64
  %mul.i134 = mul nuw i128 %conv.i123, 18446744069414584320
  %shr.i136 = lshr i128 %mul.i134, 64
  %conv2.i140 = and i128 %mul.i129, 18446744073709551615
  %add3.i141 = add nuw nsw i128 %shr.i136, %conv2.i140
  %shr.i143 = lshr i128 %add3.i141, 64
  %conv2.i148 = and i128 %mul.i124, 18446744073709551615
  %add.i147 = add nuw nsw i128 %conv2.i148, %shr.i131
  %add3.i149 = add nuw nsw i128 %add.i147, %shr.i143
  %shr.i151 = lshr i128 %add3.i149, 64
  %conv5.i152 = trunc nuw nsw i128 %shr.i151 to i64
  %add9 = add nuw nsw i64 %conv5.i152, %conv3.i127
  %add3.i156 = add nuw nsw i128 %conv.i118, %conv.i123
  %shr.i158 = lshr i128 %add3.i156, 64
  %conv1.i161 = and i128 %add3.i, 18446744073709551615
  %add.i162 = add nuw nsw i128 %shr.i158, %conv1.i161
  %conv2.i163 = and i128 %mul.i134, 18446744069414584320
  %add3.i164 = add nuw nsw i128 %add.i162, %conv2.i163
  %shr.i166 = lshr i128 %add3.i164, 64
  %conv1.i169 = and i128 %add3.i106, 18446744073709551615
  %conv2.i171 = and i128 %add3.i141, 18446744073709551615
  %add.i170 = add nuw nsw i128 %conv2.i171, %conv1.i169
  %add3.i172 = add nuw nsw i128 %add.i170, %shr.i166
  %shr.i174 = lshr i128 %add3.i172, 64
  %conv1.i177 = and i128 %add3.i114, 18446744073709551615
  %conv2.i179 = and i128 %add3.i149, 18446744073709551615
  %add.i178 = add nuw nsw i128 %conv2.i179, %conv1.i177
  %add3.i180 = add nuw nsw i128 %add.i178, %shr.i174
  %shr.i182 = lshr i128 %add3.i180, 64
  %conv1.i185 = zext i64 %add to i128
  %conv2.i187 = zext nneg i64 %add9 to i128
  %add.i186 = add nuw nsw i128 %conv2.i187, %conv1.i185
  %add3.i188 = add nuw nsw i128 %add.i186, %shr.i182
  %shr.i190 = lshr i128 %add3.i188, 64
  %mul.i194 = mul nuw i128 %conv1.i, %conv1.i89
  %shr.i196 = lshr i128 %mul.i194, 64
  %conv3.i197 = trunc nuw i128 %shr.i196 to i64
  %mul.i200 = mul nuw i128 %conv1.i83, %conv1.i89
  %shr.i202 = lshr i128 %mul.i200, 64
  %mul.i206 = mul nuw i128 %conv1.i89, %conv1.i89
  %shr.i208 = lshr i128 %mul.i206, 64
  %conv2.i218 = and i128 %mul.i206, 18446744073709551615
  %add3.i219 = add nuw nsw i128 %shr.i92, %conv2.i218
  %shr.i221 = lshr i128 %add3.i219, 64
  %conv2.i226 = and i128 %mul.i200, 18446744073709551615
  %add.i225 = add nuw nsw i128 %conv2.i226, %shr.i208
  %add3.i227 = add nuw nsw i128 %add.i225, %shr.i221
  %shr.i229 = lshr i128 %add3.i227, 64
  %conv2.i234 = and i128 %mul.i194, 18446744073709551615
  %add.i233 = add nuw nsw i128 %conv2.i234, %shr.i202
  %add3.i235 = add nuw nsw i128 %add.i233, %shr.i229
  %shr.i237 = lshr i128 %add3.i235, 64
  %conv5.i238 = trunc nuw nsw i128 %shr.i237 to i64
  %add15 = add nuw i64 %conv5.i238, %conv3.i197
  %conv1.i239 = and i128 %add3.i164, 18446744073709551615
  %add3.i242 = add nuw nsw i128 %conv1.i239, %conv2.i101
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
  %conv1.i263 = and i128 %add3.i188, 18446744073709551615
  %conv2.i265 = and i128 %add3.i235, 18446744073709551615
  %add.i264 = add nuw nsw i128 %shr.i260, %conv2.i265
  %add3.i266 = add nuw nsw i128 %add.i264, %conv1.i263
  %shr.i268 = lshr i128 %add3.i266, 64
  %conv2.i273 = zext i64 %add15 to i128
  %add.i272 = add nuw nsw i128 %shr.i190, %conv2.i273
  %add3.i274 = add nuw nsw i128 %add.i272, %shr.i268
  %shr.i276 = lshr i128 %add3.i274, 64
  %conv5.i277 = trunc nuw nsw i128 %shr.i276 to i64
  %conv.i278 = and i128 %add3.i242, 18446744073709551615
  %5 = trunc i128 %add3.i242 to i64
  %conv2.i280 = sub i64 0, %5
  %conv.i283 = zext i64 %conv2.i280 to i128
  %mul.i284 = mul nuw nsw i128 %conv.i283, 4294967295
  %shr.i286 = lshr i128 %mul.i284, 64
  %conv3.i287 = trunc nuw nsw i128 %shr.i286 to i64
  %mul.i289 = mul nuw i128 %conv.i283, 18446744073709551615
  %shr.i291 = lshr i128 %mul.i289, 64
  %mul.i294 = mul nuw i128 %conv.i283, 18446744069414584320
  %shr.i296 = lshr i128 %mul.i294, 64
  %conv2.i300 = and i128 %mul.i289, 18446744073709551615
  %add3.i301 = add nuw nsw i128 %shr.i296, %conv2.i300
  %shr.i303 = lshr i128 %add3.i301, 64
  %conv2.i308 = and i128 %mul.i284, 18446744073709551615
  %add.i307 = add nuw nsw i128 %conv2.i308, %shr.i291
  %add3.i309 = add nuw nsw i128 %add.i307, %shr.i303
  %shr.i311 = lshr i128 %add3.i309, 64
  %conv5.i312 = trunc nuw nsw i128 %shr.i311 to i64
  %add18 = add nuw nsw i64 %conv5.i312, %conv3.i287
  %add3.i316 = add nuw nsw i128 %conv.i278, %conv.i283
  %shr.i318 = lshr i128 %add3.i316, 64
  %conv1.i321 = and i128 %add3.i250, 18446744073709551615
  %conv2.i323 = and i128 %mul.i294, 18446744069414584320
  %add.i322 = or disjoint i128 %conv2.i323, %shr.i318
  %add3.i324 = add nuw nsw i128 %add.i322, %conv1.i321
  %shr.i326 = lshr i128 %add3.i324, 64
  %conv1.i329 = and i128 %add3.i258, 18446744073709551615
  %conv2.i331 = and i128 %add3.i301, 18446744073709551615
  %add.i330 = add nuw nsw i128 %shr.i326, %conv2.i331
  %add3.i332 = add nuw nsw i128 %add.i330, %conv1.i329
  %shr.i334 = lshr i128 %add3.i332, 64
  %conv1.i337 = and i128 %add3.i266, 18446744073709551615
  %conv2.i339 = and i128 %add3.i309, 18446744073709551615
  %add.i338 = add nuw nsw i128 %shr.i334, %conv2.i339
  %add3.i340 = add nuw nsw i128 %add.i338, %conv1.i337
  %shr.i342 = lshr i128 %add3.i340, 64
  %conv1.i345 = and i128 %add3.i274, 18446744073709551615
  %conv2.i347 = zext nneg i64 %add18 to i128
  %add.i346 = add nuw nsw i128 %shr.i342, %conv2.i347
  %add3.i348 = add nuw nsw i128 %add.i346, %conv1.i345
  %shr.i350 = lshr i128 %add3.i348, 64
  %conv5.i351 = trunc nuw nsw i128 %shr.i350 to i64
  %add21 = add nuw nsw i64 %conv5.i351, %conv5.i277
  %mul.i354 = mul nuw i128 %conv1.i, %conv1.i83
  %shr.i356 = lshr i128 %mul.i354, 64
  %conv3.i357 = trunc nuw i128 %shr.i356 to i64
  %mul.i360 = mul nuw i128 %conv1.i83, %conv1.i83
  %shr.i362 = lshr i128 %mul.i360, 64
  %add3.i379 = add nuw nsw i128 %shr.i86, %conv2.i226
  %shr.i381 = lshr i128 %add3.i379, 64
  %conv2.i386 = and i128 %mul.i360, 18446744073709551615
  %add.i385 = add nuw nsw i128 %conv2.i386, %shr.i202
  %add3.i387 = add nuw nsw i128 %add.i385, %shr.i381
  %shr.i389 = lshr i128 %add3.i387, 64
  %conv2.i394 = and i128 %mul.i354, 18446744073709551615
  %add.i393 = add nuw nsw i128 %conv2.i394, %shr.i362
  %add3.i395 = add nuw nsw i128 %add.i393, %shr.i389
  %shr.i397 = lshr i128 %add3.i395, 64
  %conv5.i398 = trunc nuw nsw i128 %shr.i397 to i64
  %add27 = add nuw i64 %conv5.i398, %conv3.i357
  %conv1.i399 = and i128 %add3.i324, 18446744073709551615
  %add3.i402 = add nuw nsw i128 %conv1.i399, %conv2.i105
  %shr.i404 = lshr i128 %add3.i402, 64
  %conv1.i407 = and i128 %add3.i332, 18446744073709551615
  %conv2.i409 = and i128 %add3.i379, 18446744073709551615
  %add.i408 = add nuw nsw i128 %shr.i404, %conv2.i409
  %add3.i410 = add nuw nsw i128 %add.i408, %conv1.i407
  %shr.i412 = lshr i128 %add3.i410, 64
  %conv1.i415 = and i128 %add3.i340, 18446744073709551615
  %conv2.i417 = and i128 %add3.i387, 18446744073709551615
  %add.i416 = add nuw nsw i128 %shr.i412, %conv2.i417
  %add3.i418 = add nuw nsw i128 %add.i416, %conv1.i415
  %shr.i420 = lshr i128 %add3.i418, 64
  %conv1.i423 = and i128 %add3.i348, 18446744073709551615
  %conv2.i425 = and i128 %add3.i395, 18446744073709551615
  %add.i424 = add nuw nsw i128 %shr.i420, %conv2.i425
  %add3.i426 = add nuw nsw i128 %add.i424, %conv1.i423
  %shr.i428 = lshr i128 %add3.i426, 64
  %conv1.i431 = zext nneg i64 %add21 to i128
  %conv2.i433 = zext i64 %add27 to i128
  %add.i432 = add nuw nsw i128 %conv1.i431, %conv2.i433
  %add3.i434 = add nuw nsw i128 %add.i432, %shr.i428
  %shr.i436 = lshr i128 %add3.i434, 64
  %conv5.i437 = trunc nuw nsw i128 %shr.i436 to i64
  %conv.i438 = and i128 %add3.i402, 18446744073709551615
  %6 = trunc i128 %add3.i402 to i64
  %conv2.i440 = sub i64 0, %6
  %conv.i443 = zext i64 %conv2.i440 to i128
  %mul.i444 = mul nuw nsw i128 %conv.i443, 4294967295
  %shr.i446 = lshr i128 %mul.i444, 64
  %conv3.i447 = trunc nuw nsw i128 %shr.i446 to i64
  %mul.i449 = mul nuw i128 %conv.i443, 18446744073709551615
  %shr.i451 = lshr i128 %mul.i449, 64
  %mul.i454 = mul nuw i128 %conv.i443, 18446744069414584320
  %shr.i456 = lshr i128 %mul.i454, 64
  %conv2.i460 = and i128 %mul.i449, 18446744073709551615
  %add3.i461 = add nuw nsw i128 %shr.i456, %conv2.i460
  %shr.i463 = lshr i128 %add3.i461, 64
  %conv2.i468 = and i128 %mul.i444, 18446744073709551615
  %add.i467 = add nuw nsw i128 %conv2.i468, %shr.i451
  %add3.i469 = add nuw nsw i128 %add.i467, %shr.i463
  %shr.i471 = lshr i128 %add3.i469, 64
  %conv5.i472 = trunc nuw nsw i128 %shr.i471 to i64
  %add29 = add nuw nsw i64 %conv5.i472, %conv3.i447
  %add3.i476 = add nuw nsw i128 %conv.i438, %conv.i443
  %shr.i478 = lshr i128 %add3.i476, 64
  %conv1.i481 = and i128 %add3.i410, 18446744073709551615
  %conv2.i483 = and i128 %mul.i454, 18446744069414584320
  %add.i482 = or disjoint i128 %conv2.i483, %shr.i478
  %add3.i484 = add nuw nsw i128 %add.i482, %conv1.i481
  %shr.i486 = lshr i128 %add3.i484, 64
  %conv1.i489 = and i128 %add3.i418, 18446744073709551615
  %conv2.i491 = and i128 %add3.i461, 18446744073709551615
  %add.i490 = add nuw nsw i128 %shr.i486, %conv2.i491
  %add3.i492 = add nuw nsw i128 %add.i490, %conv1.i489
  %shr.i494 = lshr i128 %add3.i492, 64
  %conv1.i497 = and i128 %add3.i426, 18446744073709551615
  %conv2.i499 = and i128 %add3.i469, 18446744073709551615
  %add.i498 = add nuw nsw i128 %shr.i494, %conv2.i499
  %add3.i500 = add nuw nsw i128 %add.i498, %conv1.i497
  %shr.i502 = lshr i128 %add3.i500, 64
  %conv1.i505 = and i128 %add3.i434, 18446744073709551615
  %conv2.i507 = zext nneg i64 %add29 to i128
  %add.i506 = add nuw nsw i128 %shr.i502, %conv2.i507
  %add3.i508 = add nuw nsw i128 %add.i506, %conv1.i505
  %shr.i510 = lshr i128 %add3.i508, 64
  %conv5.i511 = trunc nuw nsw i128 %shr.i510 to i64
  %add32 = add nuw nsw i64 %conv5.i511, %conv5.i437
  %mul.i514 = mul nuw i128 %conv1.i, %conv1.i
  %shr.i516 = lshr i128 %mul.i514, 64
  %conv3.i517 = trunc nuw i128 %shr.i516 to i64
  %add3.i539 = add nuw nsw i128 %shr.i, %conv2.i234
  %shr.i541 = lshr i128 %add3.i539, 64
  %add.i545 = add nuw nsw i128 %conv2.i394, %shr.i196
  %add3.i547 = add nuw nsw i128 %add.i545, %shr.i541
  %shr.i549 = lshr i128 %add3.i547, 64
  %conv2.i554 = and i128 %mul.i514, 18446744073709551615
  %add.i553 = add nuw nsw i128 %conv2.i554, %shr.i356
  %add3.i555 = add nuw nsw i128 %add.i553, %shr.i549
  %shr.i557 = lshr i128 %add3.i555, 64
  %conv5.i558 = trunc nuw nsw i128 %shr.i557 to i64
  %add38 = add nuw i64 %conv5.i558, %conv3.i517
  %conv1.i559 = and i128 %add3.i484, 18446744073709551615
  %add3.i562 = add nuw nsw i128 %conv1.i559, %conv2.i113
  %shr.i564 = lshr i128 %add3.i562, 64
  %conv1.i567 = and i128 %add3.i492, 18446744073709551615
  %conv2.i569 = and i128 %add3.i539, 18446744073709551615
  %add.i568 = add nuw nsw i128 %shr.i564, %conv2.i569
  %add3.i570 = add nuw nsw i128 %add.i568, %conv1.i567
  %shr.i572 = lshr i128 %add3.i570, 64
  %conv1.i575 = and i128 %add3.i500, 18446744073709551615
  %conv2.i577 = and i128 %add3.i547, 18446744073709551615
  %add.i576 = add nuw nsw i128 %shr.i572, %conv2.i577
  %add3.i578 = add nuw nsw i128 %add.i576, %conv1.i575
  %shr.i580 = lshr i128 %add3.i578, 64
  %conv1.i583 = and i128 %add3.i508, 18446744073709551615
  %conv2.i585 = and i128 %add3.i555, 18446744073709551615
  %add.i584 = add nuw nsw i128 %shr.i580, %conv2.i585
  %add3.i586 = add nuw nsw i128 %add.i584, %conv1.i583
  %shr.i588 = lshr i128 %add3.i586, 64
  %conv1.i591 = zext nneg i64 %add32 to i128
  %conv2.i593 = zext i64 %add38 to i128
  %add.i592 = add nuw nsw i128 %conv1.i591, %conv2.i593
  %add3.i594 = add nuw nsw i128 %add.i592, %shr.i588
  %shr.i596 = lshr i128 %add3.i594, 64
  %conv5.i597 = trunc nuw nsw i128 %shr.i596 to i64
  %conv.i598 = and i128 %add3.i562, 18446744073709551615
  %7 = trunc i128 %add3.i562 to i64
  %conv2.i600 = sub i64 0, %7
  %conv.i603 = zext i64 %conv2.i600 to i128
  %mul.i604 = mul nuw nsw i128 %conv.i603, 4294967295
  %shr.i606 = lshr i128 %mul.i604, 64
  %conv3.i607 = trunc nuw nsw i128 %shr.i606 to i64
  %mul.i609 = mul nuw i128 %conv.i603, 18446744073709551615
  %shr.i611 = lshr i128 %mul.i609, 64
  %mul.i614 = mul nuw i128 %conv.i603, 18446744069414584320
  %shr.i616 = lshr i128 %mul.i614, 64
  %conv2.i620 = and i128 %mul.i609, 18446744073709551615
  %add3.i621 = add nuw nsw i128 %shr.i616, %conv2.i620
  %shr.i623 = lshr i128 %add3.i621, 64
  %conv2.i628 = and i128 %mul.i604, 18446744073709551615
  %add.i627 = add nuw nsw i128 %conv2.i628, %shr.i611
  %add3.i629 = add nuw nsw i128 %add.i627, %shr.i623
  %shr.i631 = lshr i128 %add3.i629, 64
  %conv5.i632 = trunc nuw nsw i128 %shr.i631 to i64
  %add40 = add nuw nsw i64 %conv5.i632, %conv3.i607
  %add3.i636 = add nuw nsw i128 %conv.i598, %conv.i603
  %shr.i638 = lshr i128 %add3.i636, 64
  %conv1.i641 = and i128 %add3.i570, 18446744073709551615
  %conv2.i643 = and i128 %mul.i614, 18446744069414584320
  %add.i642 = or disjoint i128 %conv2.i643, %shr.i638
  %add3.i644 = add nuw nsw i128 %add.i642, %conv1.i641
  %conv4.i645 = trunc i128 %add3.i644 to i64
  %shr.i646 = lshr i128 %add3.i644, 64
  %conv1.i649 = and i128 %add3.i578, 18446744073709551615
  %conv2.i651 = and i128 %add3.i621, 18446744073709551615
  %add.i650 = add nuw nsw i128 %shr.i646, %conv2.i651
  %add3.i652 = add nuw nsw i128 %add.i650, %conv1.i649
  %conv4.i653 = trunc i128 %add3.i652 to i64
  %shr.i654 = lshr i128 %add3.i652, 64
  %conv1.i657 = and i128 %add3.i586, 18446744073709551615
  %conv2.i659 = and i128 %add3.i629, 18446744073709551615
  %add.i658 = add nuw nsw i128 %shr.i654, %conv2.i659
  %add3.i660 = add nuw nsw i128 %add.i658, %conv1.i657
  %conv4.i661 = trunc i128 %add3.i660 to i64
  %shr.i662 = lshr i128 %add3.i660, 64
  %conv1.i665 = and i128 %add3.i594, 18446744073709551615
  %conv2.i667 = zext nneg i64 %add40 to i128
  %add.i666 = add nuw nsw i128 %shr.i662, %conv2.i667
  %add3.i668 = add nuw nsw i128 %add.i666, %conv1.i665
  %conv4.i669 = trunc i128 %add3.i668 to i64
  %shr.i670 = lshr i128 %add3.i668, 64
  %conv5.i671 = trunc nuw nsw i128 %shr.i670 to i64
  %add43 = add nuw nsw i64 %conv5.i671, %conv5.i597
  %conv.i672 = and i128 %add3.i644, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i672, -1
  %shr.i673 = lshr i128 %sub3.i, 64
  %conv4.i674 = trunc i128 %shr.i673 to i8
  %conv5.i675 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i674
  %conv.i676 = and i128 %add3.i652, 18446744073709551615
  %conv1.i677 = zext i8 %sub7.i to i128
  %8 = or disjoint i128 %conv1.i677, 18446744069414584320
  %sub3.i678 = sub nsw i128 %conv.i676, %8
  %shr.i679 = lshr i128 %sub3.i678, 64
  %conv4.i680 = trunc i128 %shr.i679 to i8
  %conv5.i681 = trunc i128 %sub3.i678 to i64
  %sub7.i682 = sub i8 0, %conv4.i680
  %conv.i683 = and i128 %add3.i660, 18446744073709551615
  %conv1.i684 = zext i8 %sub7.i682 to i128
  %.neg = add nsw i128 %conv.i683, -18446744073709551615
  %sub3.i685 = sub nsw i128 %.neg, %conv1.i684
  %shr.i686 = lshr i128 %sub3.i685, 64
  %conv4.i687 = trunc i128 %shr.i686 to i8
  %conv5.i688 = trunc i128 %sub3.i685 to i64
  %sub7.i689 = sub i8 0, %conv4.i687
  %conv.i690 = and i128 %add3.i668, 18446744073709551615
  %conv1.i691 = zext i8 %sub7.i689 to i128
  %.neg746 = add nsw i128 %conv.i690, -4294967295
  %sub3.i692 = sub nsw i128 %.neg746, %conv1.i691
  %shr.i693 = lshr i128 %sub3.i692, 64
  %conv4.i694 = trunc i128 %shr.i693 to i8
  %conv5.i695 = trunc i128 %sub3.i692 to i64
  %sub7.i696 = sub i8 0, %conv4.i694
  %conv.i697 = zext nneg i64 %add43 to i128
  %conv1.i698 = zext i8 %sub7.i696 to i128
  %sub3.i699 = sub nsw i128 %conv.i697, %conv1.i698
  %shr.i700 = lshr i128 %sub3.i699, 64
  %conv4.i701 = trunc i128 %shr.i700 to i8
  %tobool.i = icmp ne i8 %conv4.i701, 0
  %conv4.i704 = sext i1 %tobool.i to i64
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i704) #8, !srcloc !9
  %and5.i = and i64 %9, %conv4.i645
  %not.i = xor i64 %conv4.i704, -1
  %10 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %10, %conv5.i675
  %or.i = or i64 %and7.i, %and5.i
  %and5.i707 = and i64 %9, %conv4.i653
  %and7.i709 = and i64 %10, %conv5.i681
  %or.i710 = or i64 %and7.i709, %and5.i707
  %and5.i713 = and i64 %9, %conv4.i661
  %and7.i715 = and i64 %10, %conv5.i688
  %or.i716 = or i64 %and7.i715, %and5.i713
  %and5.i719 = and i64 %9, %conv4.i669
  %and7.i721 = and i64 %10, %conv5.i695
  %or.i722 = or i64 %and7.i721, %and5.i719
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i710, ptr %arrayidx45, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i716, ptr %arrayidx46, align 8, !tbaa !10
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i722, ptr %arrayidx47, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p224_add(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
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
  %sub3.i = add nsw i128 %conv.i43, -1
  %shr.i44 = lshr i128 %sub3.i, 64
  %conv4.i45 = trunc i128 %shr.i44 to i8
  %conv5.i46 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i45
  %conv.i47 = and i128 %add3.i23, 18446744073709551615
  %conv1.i48 = zext i8 %sub7.i to i128
  %8 = or disjoint i128 %conv1.i48, 18446744069414584320
  %sub3.i49 = sub nsw i128 %conv.i47, %8
  %shr.i50 = lshr i128 %sub3.i49, 64
  %conv4.i51 = trunc i128 %shr.i50 to i8
  %conv5.i52 = trunc i128 %sub3.i49 to i64
  %sub7.i53 = sub i8 0, %conv4.i51
  %conv.i54 = and i128 %add3.i31, 18446744073709551615
  %conv1.i55 = zext i8 %sub7.i53 to i128
  %.neg = add nsw i128 %conv.i54, -18446744073709551615
  %sub3.i56 = sub nsw i128 %.neg, %conv1.i55
  %shr.i57 = lshr i128 %sub3.i56, 64
  %conv4.i58 = trunc i128 %shr.i57 to i8
  %conv5.i59 = trunc i128 %sub3.i56 to i64
  %sub7.i60 = sub i8 0, %conv4.i58
  %conv.i61 = and i128 %add3.i39, 18446744073709551615
  %conv1.i62 = zext i8 %sub7.i60 to i128
  %.neg101 = add nsw i128 %conv.i61, -4294967295
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
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i75) #8, !srcloc !9
  %and5.i = and i64 %9, %add.narrowed
  %not.i = xor i64 %conv4.i75, -1
  %10 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
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
define dso_local void @fiat_p224_sub(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
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
  %conv.i24 = zext i64 %2 to i128
  %conv1.i = zext i8 %sub7.i to i128
  %conv2.i25 = zext i64 %3 to i128
  %4 = add nuw nsw i128 %conv2.i25, %conv1.i
  %sub3.i26 = sub nsw i128 %conv.i24, %4
  %shr.i27 = lshr i128 %sub3.i26, 64
  %conv4.i28 = trunc i128 %shr.i27 to i8
  %sub7.i30 = sub i8 0, %conv4.i28
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %5 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %6 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %conv.i31 = zext i64 %5 to i128
  %conv1.i32 = zext i8 %sub7.i30 to i128
  %conv2.i33 = zext i64 %6 to i128
  %7 = add nuw nsw i128 %conv2.i33, %conv1.i32
  %sub3.i34 = sub nsw i128 %conv.i31, %7
  %shr.i35 = lshr i128 %sub3.i34, 64
  %conv4.i36 = trunc i128 %shr.i35 to i8
  %sub7.i38 = sub i8 0, %conv4.i36
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %8 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %9 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %conv.i39 = zext i64 %8 to i128
  %conv1.i40 = zext i8 %sub7.i38 to i128
  %conv2.i41 = zext i64 %9 to i128
  %10 = add nuw nsw i128 %conv2.i41, %conv1.i40
  %sub3.i42 = sub nsw i128 %conv.i39, %10
  %11 = and i128 %sub3.i42, 4703919738795935662080
  %tobool.i = icmp ne i128 %11, 0
  %conv4.i47 = sext i1 %tobool.i to i64
  %12 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i47) #8, !srcloc !9
  %not.i = xor i64 %conv4.i47, -1
  %13 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %conv = and i64 %12, 1
  %conv1.i48 = and i128 %sub3.i, 18446744073709551615
  %conv2.i49 = zext nneg i64 %conv to i128
  %add3.i = add nuw nsw i128 %conv1.i48, %conv2.i49
  %conv4.i50 = trunc i128 %add3.i to i64
  %shr.i51 = lshr i128 %add3.i, 64
  %and9 = and i64 %12, -4294967296
  %conv1.i54 = and i128 %sub3.i26, 18446744073709551615
  %conv2.i55 = zext i64 %and9 to i128
  %add.i = add nuw nsw i128 %conv1.i54, %conv2.i55
  %add3.i56 = add nuw nsw i128 %add.i, %shr.i51
  %conv4.i57 = trunc i128 %add3.i56 to i64
  %shr.i58 = lshr i128 %add3.i56, 64
  %conv1.i61 = and i128 %sub3.i34, 18446744073709551615
  %conv2.i63 = zext i64 %12 to i128
  %add.i62 = add nuw nsw i128 %conv1.i61, %conv2.i63
  %add3.i64 = add nuw nsw i128 %add.i62, %shr.i58
  %conv4.i65 = trunc i128 %add3.i64 to i64
  %shr.i66 = lshr i128 %add3.i64, 64
  %and10 = and i64 %12, 4294967295
  %add.i70 = add nsw i128 %shr.i66, %sub3.i42
  %14 = trunc i128 %add.i70 to i64
  %conv4.i73 = add i64 %and10, %14
  store i64 %conv4.i50, ptr %out1, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i57, ptr %arrayidx12, align 8, !tbaa !10
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i65, ptr %arrayidx13, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i73, ptr %arrayidx14, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p224_opp(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
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
  %conv2.i17 = zext i64 %1 to i128
  %2 = add nuw nsw i128 %conv2.i17, %conv1.i
  %sub3.i18 = sub nsw i128 0, %2
  %shr.i19 = lshr i128 %sub3.i18, 64
  %conv4.i20 = trunc i128 %shr.i19 to i8
  %sub7.i22 = sub i8 0, %conv4.i20
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %3 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %conv1.i23 = zext i8 %sub7.i22 to i128
  %conv2.i24 = zext i64 %3 to i128
  %4 = add nuw nsw i128 %conv2.i24, %conv1.i23
  %sub3.i25 = sub nsw i128 0, %4
  %shr.i26 = lshr i128 %sub3.i25, 64
  %conv4.i27 = trunc i128 %shr.i26 to i8
  %sub7.i29 = sub i8 0, %conv4.i27
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %5 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv1.i30 = zext i8 %sub7.i29 to i128
  %conv2.i31 = zext i64 %5 to i128
  %6 = add nuw nsw i128 %conv1.i30, %conv2.i31
  %sub3.i32 = sub nsw i128 0, %6
  %7 = and i128 %sub3.i32, 4703919738795935662080
  %tobool.i = icmp ne i128 %7, 0
  %conv4.i37 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i37) #8, !srcloc !9
  %not.i = xor i64 %conv4.i37, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %conv = and i64 %8, 1
  %conv1.i38 = and i128 %sub3.i, 18446744073709551615
  %conv2.i39 = zext nneg i64 %conv to i128
  %add3.i = add nuw nsw i128 %conv1.i38, %conv2.i39
  %conv4.i40 = trunc i128 %add3.i to i64
  %shr.i41 = lshr i128 %add3.i, 64
  %and5 = and i64 %8, -4294967296
  %conv1.i43 = and i128 %sub3.i18, 18446744073709551615
  %conv2.i44 = zext i64 %and5 to i128
  %add.i = add nuw nsw i128 %conv1.i43, %conv2.i44
  %add3.i45 = add nuw nsw i128 %add.i, %shr.i41
  %conv4.i46 = trunc i128 %add3.i45 to i64
  %shr.i47 = lshr i128 %add3.i45, 64
  %conv1.i50 = and i128 %sub3.i25, 18446744073709551615
  %conv2.i52 = zext i64 %8 to i128
  %add.i51 = add nuw nsw i128 %conv1.i50, %conv2.i52
  %add3.i53 = add nuw nsw i128 %add.i51, %shr.i47
  %conv4.i54 = trunc i128 %add3.i53 to i64
  %shr.i55 = lshr i128 %add3.i53, 64
  %and6 = and i64 %8, 4294967295
  %add.i59 = sub nsw i128 %shr.i55, %6
  %10 = trunc i128 %add.i59 to i64
  %conv4.i62 = add i64 %and6, %10
  store i64 %conv4.i40, ptr %out1, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %conv4.i46, ptr %arrayidx8, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %conv4.i54, ptr %arrayidx9, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv4.i62, ptr %arrayidx10, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p224_from_montgomery(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i = zext i64 %0 to i128
  %mul.i = sub i64 0, %0
  %conv.i36 = zext i64 %mul.i to i128
  %mul.i37 = mul nuw nsw i128 %conv.i36, 4294967295
  %shr.i39 = lshr i128 %mul.i37, 64
  %conv3.i40 = trunc nuw nsw i128 %shr.i39 to i64
  %mul.i42 = mul nuw i128 %conv.i36, 18446744073709551615
  %shr.i44 = lshr i128 %mul.i42, 64
  %mul.i47 = mul nuw i128 %conv.i36, 18446744069414584320
  %shr.i49 = lshr i128 %mul.i47, 64
  %conv2.i51 = and i128 %mul.i42, 18446744073709551615
  %add3.i = add nuw nsw i128 %shr.i49, %conv2.i51
  %shr.i52 = lshr i128 %add3.i, 64
  %conv2.i55 = and i128 %mul.i37, 18446744073709551615
  %add.i = add nuw nsw i128 %conv2.i55, %shr.i44
  %add3.i56 = add nuw nsw i128 %add.i, %shr.i52
  %shr.i58 = lshr i128 %add3.i56, 64
  %conv5.i59 = trunc nuw nsw i128 %shr.i58 to i64
  %add3.i63 = add nuw nsw i128 %conv.i, %conv.i36
  %shr.i65 = lshr i128 %add3.i63, 64
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %mul.i47.masked = and i128 %mul.i47, 18446744069414584320
  %conv1.i88 = or disjoint i128 %shr.i65, %mul.i47.masked
  %conv2.i90 = zext i64 %1 to i128
  %add3.i91 = add nuw nsw i128 %conv1.i88, %conv2.i90
  %shr.i93 = lshr i128 %add3.i91, 64
  %conv1.i96 = and i128 %add3.i, 18446744073709551615
  %add.i97 = add nuw nsw i128 %shr.i93, %conv1.i96
  %shr.i100 = lshr i128 %add.i97, 64
  %conv1.i103 = and i128 %add3.i56, 18446744073709551615
  %add.i104 = add nuw nsw i128 %conv1.i103, %shr.i100
  %shr.i107 = lshr i128 %add.i104, 64
  %conv5.i108 = trunc nuw nsw i128 %shr.i107 to i64
  %conv.i109 = and i128 %add3.i91, 18446744073709551615
  %2 = trunc i128 %add3.i91 to i64
  %conv2.i111 = sub i64 0, %2
  %conv.i114 = zext i64 %conv2.i111 to i128
  %mul.i115 = mul nuw nsw i128 %conv.i114, 4294967295
  %shr.i117 = lshr i128 %mul.i115, 64
  %conv3.i118 = trunc nuw nsw i128 %shr.i117 to i64
  %mul.i120 = mul nuw i128 %conv.i114, 18446744073709551615
  %shr.i122 = lshr i128 %mul.i120, 64
  %mul.i125 = mul nuw i128 %conv.i114, 18446744069414584320
  %shr.i127 = lshr i128 %mul.i125, 64
  %conv2.i131 = and i128 %mul.i120, 18446744073709551615
  %add3.i132 = add nuw nsw i128 %shr.i127, %conv2.i131
  %shr.i134 = lshr i128 %add3.i132, 64
  %conv2.i139 = and i128 %mul.i115, 18446744073709551615
  %add.i138 = add nuw nsw i128 %conv2.i139, %shr.i122
  %add3.i140 = add nuw nsw i128 %add.i138, %shr.i134
  %shr.i142 = lshr i128 %add3.i140, 64
  %conv5.i143 = trunc nuw nsw i128 %shr.i142 to i64
  %add3.i147 = add nuw nsw i128 %conv.i109, %conv.i114
  %shr.i149 = lshr i128 %add3.i147, 64
  %conv1.i152 = and i128 %add.i97, 18446744073709551615
  %add.i153 = add nuw nsw i128 %shr.i149, %conv1.i152
  %conv2.i154 = and i128 %mul.i125, 18446744069414584320
  %add3.i155 = add nuw nsw i128 %add.i153, %conv2.i154
  %shr.i157 = lshr i128 %add3.i155, 64
  %conv1.i160 = and i128 %add.i104, 18446744073709551615
  %conv2.i162 = and i128 %add3.i132, 18446744073709551615
  %add.i161 = add nuw nsw i128 %conv2.i162, %conv1.i160
  %add3.i163 = add nuw nsw i128 %add.i161, %shr.i157
  %shr.i165 = lshr i128 %add3.i163, 64
  %add = add nuw nsw i64 %conv5.i59, %conv3.i40
  %add5 = add nuw nsw i64 %add, %conv5.i108
  %conv1.i168 = zext nneg i64 %add5 to i128
  %conv2.i170 = and i128 %add3.i140, 18446744073709551615
  %add.i169 = add nuw nsw i128 %conv2.i170, %conv1.i168
  %add3.i171 = add nuw nsw i128 %add.i169, %shr.i165
  %shr.i173 = lshr i128 %add3.i171, 64
  %conv5.i174 = trunc nuw nsw i128 %shr.i173 to i64
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %3 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %conv1.i175 = and i128 %add3.i155, 18446744073709551615
  %conv2.i177 = zext i64 %3 to i128
  %add3.i178 = add nuw nsw i128 %conv1.i175, %conv2.i177
  %shr.i180 = lshr i128 %add3.i178, 64
  %conv1.i183 = and i128 %add3.i163, 18446744073709551615
  %add.i184 = add nuw nsw i128 %conv1.i183, %shr.i180
  %shr.i187 = lshr i128 %add.i184, 64
  %conv1.i190 = and i128 %add3.i171, 18446744073709551615
  %add.i191 = add nuw nsw i128 %conv1.i190, %shr.i187
  %shr.i194 = lshr i128 %add.i191, 64
  %conv5.i195 = trunc nuw nsw i128 %shr.i194 to i64
  %conv.i196 = and i128 %add3.i178, 18446744073709551615
  %4 = trunc i128 %add3.i178 to i64
  %conv2.i198 = sub i64 0, %4
  %conv.i201 = zext i64 %conv2.i198 to i128
  %mul.i202 = mul nuw nsw i128 %conv.i201, 4294967295
  %shr.i204 = lshr i128 %mul.i202, 64
  %conv3.i205 = trunc nuw nsw i128 %shr.i204 to i64
  %mul.i207 = mul nuw i128 %conv.i201, 18446744073709551615
  %shr.i209 = lshr i128 %mul.i207, 64
  %mul.i212 = mul nuw i128 %conv.i201, 18446744069414584320
  %shr.i214 = lshr i128 %mul.i212, 64
  %conv2.i218 = and i128 %mul.i207, 18446744073709551615
  %add3.i219 = add nuw nsw i128 %shr.i214, %conv2.i218
  %shr.i221 = lshr i128 %add3.i219, 64
  %conv2.i226 = and i128 %mul.i202, 18446744073709551615
  %add.i225 = add nuw nsw i128 %conv2.i226, %shr.i209
  %add3.i227 = add nuw nsw i128 %add.i225, %shr.i221
  %shr.i229 = lshr i128 %add3.i227, 64
  %conv5.i230 = trunc nuw nsw i128 %shr.i229 to i64
  %add3.i234 = add nuw nsw i128 %conv.i196, %conv.i201
  %shr.i236 = lshr i128 %add3.i234, 64
  %conv1.i239 = and i128 %add.i184, 18446744073709551615
  %add.i240 = add nuw nsw i128 %conv1.i239, %shr.i236
  %conv2.i241 = and i128 %mul.i212, 18446744069414584320
  %add3.i242 = add nuw nsw i128 %add.i240, %conv2.i241
  %shr.i244 = lshr i128 %add3.i242, 64
  %conv1.i247 = and i128 %add.i191, 18446744073709551615
  %conv2.i249 = and i128 %add3.i219, 18446744073709551615
  %add.i248 = add nuw nsw i128 %shr.i244, %conv2.i249
  %add3.i250 = add nuw nsw i128 %add.i248, %conv1.i247
  %shr.i252 = lshr i128 %add3.i250, 64
  %add10 = add nuw nsw i64 %conv5.i143, %conv3.i118
  %add11 = add nuw nsw i64 %add10, %conv5.i174
  %add12 = add nuw nsw i64 %add11, %conv5.i195
  %conv1.i255 = zext nneg i64 %add12 to i128
  %conv2.i257 = and i128 %add3.i227, 18446744073709551615
  %add.i256 = add nuw nsw i128 %conv2.i257, %conv1.i255
  %add3.i258 = add nuw nsw i128 %add.i256, %shr.i252
  %shr.i260 = lshr i128 %add3.i258, 64
  %conv5.i261 = trunc nuw nsw i128 %shr.i260 to i64
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %5 = load i64, ptr %arrayidx13, align 8, !tbaa !10
  %conv1.i262 = and i128 %add3.i242, 18446744073709551615
  %conv2.i264 = zext i64 %5 to i128
  %add3.i265 = add nuw nsw i128 %conv1.i262, %conv2.i264
  %shr.i267 = lshr i128 %add3.i265, 64
  %conv1.i270 = and i128 %add3.i250, 18446744073709551615
  %add.i271 = add nuw nsw i128 %conv1.i270, %shr.i267
  %shr.i274 = lshr i128 %add.i271, 64
  %conv1.i277 = and i128 %add3.i258, 18446744073709551615
  %add.i278 = add nuw nsw i128 %conv1.i277, %shr.i274
  %shr.i281 = lshr i128 %add.i278, 64
  %conv5.i282 = trunc nuw nsw i128 %shr.i281 to i64
  %conv.i283 = and i128 %add3.i265, 18446744073709551615
  %6 = trunc i128 %add3.i265 to i64
  %conv2.i285 = sub i64 0, %6
  %conv.i288 = zext i64 %conv2.i285 to i128
  %mul.i289 = mul nuw nsw i128 %conv.i288, 4294967295
  %shr.i291 = lshr i128 %mul.i289, 64
  %conv3.i292 = trunc nuw nsw i128 %shr.i291 to i64
  %mul.i294 = mul nuw i128 %conv.i288, 18446744073709551615
  %shr.i296 = lshr i128 %mul.i294, 64
  %mul.i299 = mul nuw i128 %conv.i288, 18446744069414584320
  %shr.i301 = lshr i128 %mul.i299, 64
  %conv2.i305 = and i128 %mul.i294, 18446744073709551615
  %add3.i306 = add nuw nsw i128 %shr.i301, %conv2.i305
  %shr.i308 = lshr i128 %add3.i306, 64
  %conv2.i313 = and i128 %mul.i289, 18446744073709551615
  %add.i312 = add nuw nsw i128 %conv2.i313, %shr.i296
  %add3.i314 = add nuw nsw i128 %add.i312, %shr.i308
  %shr.i316 = lshr i128 %add3.i314, 64
  %conv5.i317 = trunc nuw nsw i128 %shr.i316 to i64
  %add3.i321 = add nuw nsw i128 %conv.i283, %conv.i288
  %shr.i323 = lshr i128 %add3.i321, 64
  %conv1.i326 = and i128 %add.i271, 18446744073709551615
  %add.i327 = add nuw nsw i128 %conv1.i326, %shr.i323
  %conv2.i328 = and i128 %mul.i299, 18446744069414584320
  %add3.i329 = add nuw nsw i128 %add.i327, %conv2.i328
  %conv4.i330 = trunc i128 %add3.i329 to i64
  %shr.i331 = lshr i128 %add3.i329, 64
  %conv1.i334 = and i128 %add.i278, 18446744073709551615
  %conv2.i336 = and i128 %add3.i306, 18446744073709551615
  %add.i335 = add nuw nsw i128 %shr.i331, %conv2.i336
  %add3.i337 = add nuw nsw i128 %add.i335, %conv1.i334
  %conv4.i338 = trunc i128 %add3.i337 to i64
  %shr.i339 = lshr i128 %add3.i337, 64
  %add17 = add nuw nsw i64 %conv5.i230, %conv3.i205
  %add18 = add nuw nsw i64 %add17, %conv5.i261
  %add19 = add nuw nsw i64 %add18, %conv5.i282
  %conv1.i342 = zext nneg i64 %add19 to i128
  %conv2.i344 = and i128 %add3.i314, 18446744073709551615
  %add.i343 = add nuw nsw i128 %conv2.i344, %conv1.i342
  %add3.i345 = add nuw nsw i128 %add.i343, %shr.i339
  %conv4.i346 = trunc i128 %add3.i345 to i64
  %shr.i347 = lshr i128 %add3.i345, 64
  %conv5.i348 = trunc nuw nsw i128 %shr.i347 to i64
  %add22 = add nuw nsw i64 %conv5.i317, %conv3.i292
  %add23 = add nuw nsw i64 %add22, %conv5.i348
  %conv.i349 = and i128 %add3.i329, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i349, -1
  %shr.i350 = lshr i128 %sub3.i, 64
  %conv4.i351 = trunc i128 %shr.i350 to i8
  %conv5.i352 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i351
  %conv.i353 = and i128 %add3.i337, 18446744073709551615
  %conv1.i354 = zext i8 %sub7.i to i128
  %7 = or disjoint i128 %conv1.i354, 18446744069414584320
  %sub3.i355 = sub nsw i128 %conv.i353, %7
  %shr.i356 = lshr i128 %sub3.i355, 64
  %conv4.i357 = trunc i128 %shr.i356 to i8
  %conv5.i358 = trunc i128 %sub3.i355 to i64
  %sub7.i359 = sub i8 0, %conv4.i357
  %conv.i360 = and i128 %add3.i345, 18446744073709551615
  %conv1.i361 = zext i8 %sub7.i359 to i128
  %.neg = add nsw i128 %conv.i360, -18446744073709551615
  %sub3.i362 = sub nsw i128 %.neg, %conv1.i361
  %shr.i363 = lshr i128 %sub3.i362, 64
  %conv4.i364 = trunc i128 %shr.i363 to i8
  %conv5.i365 = trunc i128 %sub3.i362 to i64
  %sub7.i366 = sub i8 0, %conv4.i364
  %conv.i367 = zext nneg i64 %add23 to i128
  %conv1.i368 = zext i8 %sub7.i366 to i128
  %.neg420 = add nsw i128 %conv.i367, -4294967295
  %sub3.i369 = sub nsw i128 %.neg420, %conv1.i368
  %shr.i370 = lshr i128 %sub3.i369, 64
  %conv4.i371 = trunc i128 %shr.i370 to i8
  %conv5.i372 = trunc nsw i128 %sub3.i369 to i64
  %sub7.i373 = sub i8 0, %conv4.i371
  %conv1.i374 = zext i8 %sub7.i373 to i128
  %sub3.i375 = sub nsw i128 0, %conv1.i374
  %shr.i376 = lshr i128 %sub3.i375, 64
  %conv4.i377 = trunc i128 %shr.i376 to i8
  %tobool.i = icmp ne i8 %conv4.i377, 0
  %conv4.i380 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i380) #8, !srcloc !9
  %and5.i = and i64 %8, %conv4.i330
  %not.i = xor i64 %conv4.i380, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %9, %conv5.i352
  %or.i = or i64 %and7.i, %and5.i
  %and5.i383 = and i64 %8, %conv4.i338
  %and7.i385 = and i64 %9, %conv5.i358
  %or.i386 = or i64 %and7.i385, %and5.i383
  %and5.i389 = and i64 %8, %conv4.i346
  %and7.i391 = and i64 %9, %conv5.i365
  %or.i392 = or i64 %and7.i391, %and5.i389
  %and5.i395 = and i64 %add23, %8
  %and7.i397 = and i64 %9, %conv5.i372
  %or.i398 = or i64 %and7.i397, %and5.i395
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i386, ptr %arrayidx25, align 8, !tbaa !10
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i392, ptr %arrayidx26, align 8, !tbaa !10
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i398, ptr %arrayidx27, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p224_to_montgomery(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %3 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv.i = zext i64 %3 to i128
  %mul.i = mul nuw nsw i128 %conv.i, 4294967295
  %shr.i = lshr i128 %mul.i, 64
  %conv3.i = trunc nuw nsw i128 %shr.i to i64
  %mul.i60 = mul nuw i128 %conv.i, 18446744065119617024
  %shr.i62 = lshr i128 %mul.i60, 64
  %mul.i65 = mul nuw i128 %conv.i, 18446744069414584320
  %shr.i67 = lshr i128 %mul.i65, 64
  %mul.i70 = mul nuw i128 %conv.i, 18446744069414584321
  %shr.i72 = lshr i128 %mul.i70, 64
  %conv2.i74 = and i128 %mul.i65, 18446744069414584320
  %add3.i = add nuw nsw i128 %shr.i72, %conv2.i74
  %shr.i75 = lshr i128 %add3.i, 64
  %conv2.i78 = and i128 %mul.i60, 18446744065119617024
  %add.i = add nuw nsw i128 %conv2.i78, %shr.i67
  %add3.i79 = add nuw nsw i128 %add.i, %shr.i75
  %shr.i81 = lshr i128 %add3.i79, 64
  %conv2.i86 = and i128 %mul.i, 18446744073709551615
  %add.i85 = add nuw nsw i128 %conv2.i86, %shr.i62
  %add3.i87 = add nuw nsw i128 %add.i85, %shr.i81
  %shr.i89 = lshr i128 %add3.i87, 64
  %conv5.i90 = trunc nuw nsw i128 %shr.i89 to i64
  %conv.i91 = and i128 %mul.i70, 18446744073709551615
  %mul.i92 = mul i64 %3, 4294967295
  %conv.i96 = zext i64 %mul.i92 to i128
  %mul.i97 = mul nuw nsw i128 %conv.i96, 4294967295
  %shr.i99 = lshr i128 %mul.i97, 64
  %conv3.i100 = trunc nuw nsw i128 %shr.i99 to i64
  %mul.i102 = mul nuw i128 %conv.i96, 18446744073709551615
  %shr.i104 = lshr i128 %mul.i102, 64
  %mul.i107 = mul nuw i128 %conv.i96, 18446744069414584320
  %shr.i109 = lshr i128 %mul.i107, 64
  %conv2.i113 = and i128 %mul.i102, 18446744073709551615
  %add3.i114 = add nuw nsw i128 %shr.i109, %conv2.i113
  %shr.i116 = lshr i128 %add3.i114, 64
  %conv2.i121 = and i128 %mul.i97, 18446744073709551615
  %add.i120 = add nuw nsw i128 %conv2.i121, %shr.i104
  %add3.i122 = add nuw nsw i128 %add.i120, %shr.i116
  %shr.i124 = lshr i128 %add3.i122, 64
  %conv5.i125 = trunc nuw nsw i128 %shr.i124 to i64
  %add3.i129 = add nuw nsw i128 %conv.i91, %conv.i96
  %shr.i131 = lshr i128 %add3.i129, 64
  %conv1.i134 = and i128 %add3.i, 18446744073709551615
  %conv2.i136 = and i128 %mul.i107, 18446744069414584320
  %add.i135 = or disjoint i128 %shr.i131, %conv2.i136
  %add3.i137 = add nuw nsw i128 %add.i135, %conv1.i134
  %shr.i139 = lshr i128 %add3.i137, 64
  %conv1.i142 = and i128 %add3.i79, 18446744073709551615
  %conv2.i144 = and i128 %add3.i114, 18446744073709551615
  %add.i143 = add nuw nsw i128 %shr.i139, %conv2.i144
  %add3.i145 = add nuw nsw i128 %add.i143, %conv1.i142
  %shr.i147 = lshr i128 %add3.i145, 64
  %conv1.i150 = and i128 %add3.i87, 18446744073709551615
  %conv2.i152 = and i128 %add3.i122, 18446744073709551615
  %add.i151 = add nuw nsw i128 %shr.i147, %conv2.i152
  %add3.i153 = add nuw nsw i128 %add.i151, %conv1.i150
  %shr.i155 = lshr i128 %add3.i153, 64
  %conv5.i156 = trunc nuw nsw i128 %shr.i155 to i64
  %conv.i157 = zext i64 %0 to i128
  %mul.i158 = mul nuw nsw i128 %conv.i157, 4294967295
  %shr.i160 = lshr i128 %mul.i158, 64
  %conv3.i161 = trunc nuw nsw i128 %shr.i160 to i64
  %mul.i163 = mul nuw i128 %conv.i157, 18446744065119617024
  %shr.i165 = lshr i128 %mul.i163, 64
  %mul.i168 = mul nuw i128 %conv.i157, 18446744069414584320
  %shr.i170 = lshr i128 %mul.i168, 64
  %mul.i173 = mul nuw i128 %conv.i157, 18446744069414584321
  %shr.i175 = lshr i128 %mul.i173, 64
  %conv2.i179 = and i128 %mul.i168, 18446744069414584320
  %add3.i180 = add nuw nsw i128 %shr.i175, %conv2.i179
  %shr.i182 = lshr i128 %add3.i180, 64
  %conv2.i187 = and i128 %mul.i163, 18446744065119617024
  %add.i186 = add nuw nsw i128 %conv2.i187, %shr.i170
  %add3.i188 = add nuw nsw i128 %add.i186, %shr.i182
  %shr.i190 = lshr i128 %add3.i188, 64
  %conv2.i195 = and i128 %mul.i158, 18446744073709551615
  %add.i194 = add nuw nsw i128 %conv2.i195, %shr.i165
  %add3.i196 = add nuw nsw i128 %add.i194, %shr.i190
  %shr.i198 = lshr i128 %add3.i196, 64
  %conv5.i199 = trunc nuw nsw i128 %shr.i198 to i64
  %conv1.i200 = and i128 %add3.i137, 18446744073709551615
  %conv2.i202 = and i128 %mul.i173, 18446744073709551615
  %add3.i203 = add nuw nsw i128 %conv1.i200, %conv2.i202
  %shr.i205 = lshr i128 %add3.i203, 64
  %conv1.i208 = and i128 %add3.i145, 18446744073709551615
  %conv2.i210 = and i128 %add3.i180, 18446744073709551615
  %add.i209 = add nuw nsw i128 %shr.i205, %conv2.i210
  %add3.i211 = add nuw nsw i128 %add.i209, %conv1.i208
  %shr.i213 = lshr i128 %add3.i211, 64
  %conv1.i216 = and i128 %add3.i153, 18446744073709551615
  %conv2.i218 = and i128 %add3.i188, 18446744073709551615
  %add.i217 = add nuw nsw i128 %shr.i213, %conv2.i218
  %add3.i219 = add nuw nsw i128 %add.i217, %conv1.i216
  %shr.i221 = lshr i128 %add3.i219, 64
  %add = add nuw nsw i64 %conv3.i100, %conv3.i
  %add5 = add nuw nsw i64 %add, %conv5.i125
  %add7 = add nuw nsw i64 %add5, %conv5.i90
  %add8 = add nuw nsw i64 %add7, %conv5.i156
  %conv1.i224 = zext nneg i64 %add8 to i128
  %conv2.i226 = and i128 %add3.i196, 18446744073709551615
  %add.i225 = add nuw nsw i128 %conv2.i226, %conv1.i224
  %add3.i227 = add nuw nsw i128 %add.i225, %shr.i221
  %shr.i229 = lshr i128 %add3.i227, 64
  %conv5.i230 = trunc nuw nsw i128 %shr.i229 to i64
  %conv.i231 = and i128 %add3.i203, 18446744073709551615
  %4 = trunc i128 %add3.i203 to i64
  %conv2.i233 = sub i64 0, %4
  %conv.i236 = zext i64 %conv2.i233 to i128
  %mul.i237 = mul nuw nsw i128 %conv.i236, 4294967295
  %shr.i239 = lshr i128 %mul.i237, 64
  %conv3.i240 = trunc nuw nsw i128 %shr.i239 to i64
  %mul.i242 = mul nuw i128 %conv.i236, 18446744073709551615
  %shr.i244 = lshr i128 %mul.i242, 64
  %mul.i247 = mul nuw i128 %conv.i236, 18446744069414584320
  %shr.i249 = lshr i128 %mul.i247, 64
  %conv2.i253 = and i128 %mul.i242, 18446744073709551615
  %add3.i254 = add nuw nsw i128 %shr.i249, %conv2.i253
  %shr.i256 = lshr i128 %add3.i254, 64
  %conv2.i261 = and i128 %mul.i237, 18446744073709551615
  %add.i260 = add nuw nsw i128 %conv2.i261, %shr.i244
  %add3.i262 = add nuw nsw i128 %add.i260, %shr.i256
  %shr.i264 = lshr i128 %add3.i262, 64
  %conv5.i265 = trunc nuw nsw i128 %shr.i264 to i64
  %add3.i269 = add nuw nsw i128 %conv.i231, %conv.i236
  %shr.i271 = lshr i128 %add3.i269, 64
  %conv1.i274 = and i128 %add3.i211, 18446744073709551615
  %conv2.i276 = and i128 %mul.i247, 18446744069414584320
  %add.i275 = or disjoint i128 %conv2.i276, %shr.i271
  %add3.i277 = add nuw nsw i128 %add.i275, %conv1.i274
  %shr.i279 = lshr i128 %add3.i277, 64
  %conv1.i282 = and i128 %add3.i219, 18446744073709551615
  %conv2.i284 = and i128 %add3.i254, 18446744073709551615
  %add.i283 = add nuw nsw i128 %shr.i279, %conv2.i284
  %add3.i285 = add nuw nsw i128 %add.i283, %conv1.i282
  %shr.i287 = lshr i128 %add3.i285, 64
  %conv1.i290 = and i128 %add3.i227, 18446744073709551615
  %conv2.i292 = and i128 %add3.i262, 18446744073709551615
  %add.i291 = add nuw nsw i128 %shr.i287, %conv2.i292
  %add3.i293 = add nuw nsw i128 %add.i291, %conv1.i290
  %shr.i295 = lshr i128 %add3.i293, 64
  %conv5.i296 = trunc nuw nsw i128 %shr.i295 to i64
  %conv.i297 = zext i64 %1 to i128
  %mul.i298 = mul nuw nsw i128 %conv.i297, 4294967295
  %shr.i300 = lshr i128 %mul.i298, 64
  %conv3.i301 = trunc nuw nsw i128 %shr.i300 to i64
  %mul.i303 = mul nuw i128 %conv.i297, 18446744065119617024
  %shr.i305 = lshr i128 %mul.i303, 64
  %mul.i308 = mul nuw i128 %conv.i297, 18446744069414584320
  %shr.i310 = lshr i128 %mul.i308, 64
  %mul.i313 = mul nuw i128 %conv.i297, 18446744069414584321
  %shr.i315 = lshr i128 %mul.i313, 64
  %conv2.i319 = and i128 %mul.i308, 18446744069414584320
  %add3.i320 = add nuw nsw i128 %shr.i315, %conv2.i319
  %shr.i322 = lshr i128 %add3.i320, 64
  %conv2.i327 = and i128 %mul.i303, 18446744065119617024
  %add.i326 = add nuw nsw i128 %conv2.i327, %shr.i310
  %add3.i328 = add nuw nsw i128 %add.i326, %shr.i322
  %shr.i330 = lshr i128 %add3.i328, 64
  %conv2.i335 = and i128 %mul.i298, 18446744073709551615
  %add.i334 = add nuw nsw i128 %conv2.i335, %shr.i305
  %add3.i336 = add nuw nsw i128 %add.i334, %shr.i330
  %shr.i338 = lshr i128 %add3.i336, 64
  %conv5.i339 = trunc nuw nsw i128 %shr.i338 to i64
  %conv1.i340 = and i128 %add3.i277, 18446744073709551615
  %conv2.i342 = and i128 %mul.i313, 18446744073709551615
  %add3.i343 = add nuw nsw i128 %conv1.i340, %conv2.i342
  %shr.i345 = lshr i128 %add3.i343, 64
  %conv1.i348 = and i128 %add3.i285, 18446744073709551615
  %conv2.i350 = and i128 %add3.i320, 18446744073709551615
  %add.i349 = add nuw nsw i128 %shr.i345, %conv2.i350
  %add3.i351 = add nuw nsw i128 %add.i349, %conv1.i348
  %shr.i353 = lshr i128 %add3.i351, 64
  %conv1.i356 = and i128 %add3.i293, 18446744073709551615
  %conv2.i358 = and i128 %add3.i328, 18446744073709551615
  %add.i357 = add nuw nsw i128 %shr.i353, %conv2.i358
  %add3.i359 = add nuw nsw i128 %add.i357, %conv1.i356
  %shr.i361 = lshr i128 %add3.i359, 64
  %add12 = add nuw nsw i64 %conv5.i199, %conv3.i161
  %add13 = add nuw nsw i64 %add12, %conv3.i240
  %add14 = add nuw nsw i64 %add13, %conv5.i265
  %add16 = add nuw nsw i64 %add14, %conv5.i230
  %add17 = add nuw nsw i64 %add16, %conv5.i296
  %conv1.i364 = zext nneg i64 %add17 to i128
  %conv2.i366 = and i128 %add3.i336, 18446744073709551615
  %add.i365 = add nuw nsw i128 %conv2.i366, %conv1.i364
  %add3.i367 = add nuw nsw i128 %add.i365, %shr.i361
  %shr.i369 = lshr i128 %add3.i367, 64
  %conv5.i370 = trunc nuw nsw i128 %shr.i369 to i64
  %conv.i371 = and i128 %add3.i343, 18446744073709551615
  %5 = trunc i128 %add3.i343 to i64
  %conv2.i373 = sub i64 0, %5
  %conv.i376 = zext i64 %conv2.i373 to i128
  %mul.i377 = mul nuw nsw i128 %conv.i376, 4294967295
  %shr.i379 = lshr i128 %mul.i377, 64
  %conv3.i380 = trunc nuw nsw i128 %shr.i379 to i64
  %mul.i382 = mul nuw i128 %conv.i376, 18446744073709551615
  %shr.i384 = lshr i128 %mul.i382, 64
  %mul.i387 = mul nuw i128 %conv.i376, 18446744069414584320
  %shr.i389 = lshr i128 %mul.i387, 64
  %conv2.i393 = and i128 %mul.i382, 18446744073709551615
  %add3.i394 = add nuw nsw i128 %shr.i389, %conv2.i393
  %shr.i396 = lshr i128 %add3.i394, 64
  %conv2.i401 = and i128 %mul.i377, 18446744073709551615
  %add.i400 = add nuw nsw i128 %conv2.i401, %shr.i384
  %add3.i402 = add nuw nsw i128 %add.i400, %shr.i396
  %shr.i404 = lshr i128 %add3.i402, 64
  %conv5.i405 = trunc nuw nsw i128 %shr.i404 to i64
  %add3.i409 = add nuw nsw i128 %conv.i371, %conv.i376
  %shr.i411 = lshr i128 %add3.i409, 64
  %conv1.i414 = and i128 %add3.i351, 18446744073709551615
  %conv2.i416 = and i128 %mul.i387, 18446744069414584320
  %add.i415 = or disjoint i128 %conv2.i416, %shr.i411
  %add3.i417 = add nuw nsw i128 %add.i415, %conv1.i414
  %shr.i419 = lshr i128 %add3.i417, 64
  %conv1.i422 = and i128 %add3.i359, 18446744073709551615
  %conv2.i424 = and i128 %add3.i394, 18446744073709551615
  %add.i423 = add nuw nsw i128 %shr.i419, %conv2.i424
  %add3.i425 = add nuw nsw i128 %add.i423, %conv1.i422
  %shr.i427 = lshr i128 %add3.i425, 64
  %conv1.i430 = and i128 %add3.i367, 18446744073709551615
  %conv2.i432 = and i128 %add3.i402, 18446744073709551615
  %add.i431 = add nuw nsw i128 %shr.i427, %conv2.i432
  %add3.i433 = add nuw nsw i128 %add.i431, %conv1.i430
  %shr.i435 = lshr i128 %add3.i433, 64
  %conv5.i436 = trunc nuw nsw i128 %shr.i435 to i64
  %conv.i437 = zext i64 %2 to i128
  %mul.i438 = mul nuw nsw i128 %conv.i437, 4294967295
  %shr.i440 = lshr i128 %mul.i438, 64
  %conv3.i441 = trunc nuw nsw i128 %shr.i440 to i64
  %mul.i443 = mul nuw i128 %conv.i437, 18446744065119617024
  %shr.i445 = lshr i128 %mul.i443, 64
  %mul.i448 = mul nuw i128 %conv.i437, 18446744069414584320
  %shr.i450 = lshr i128 %mul.i448, 64
  %mul.i453 = mul nuw i128 %conv.i437, 18446744069414584321
  %shr.i455 = lshr i128 %mul.i453, 64
  %conv2.i459 = and i128 %mul.i448, 18446744069414584320
  %add3.i460 = add nuw nsw i128 %shr.i455, %conv2.i459
  %shr.i462 = lshr i128 %add3.i460, 64
  %conv2.i467 = and i128 %mul.i443, 18446744065119617024
  %add.i466 = add nuw nsw i128 %conv2.i467, %shr.i450
  %add3.i468 = add nuw nsw i128 %add.i466, %shr.i462
  %shr.i470 = lshr i128 %add3.i468, 64
  %conv2.i475 = and i128 %mul.i438, 18446744073709551615
  %add.i474 = add nuw nsw i128 %conv2.i475, %shr.i445
  %add3.i476 = add nuw nsw i128 %add.i474, %shr.i470
  %shr.i478 = lshr i128 %add3.i476, 64
  %conv5.i479 = trunc nuw nsw i128 %shr.i478 to i64
  %conv1.i480 = and i128 %add3.i417, 18446744073709551615
  %conv2.i482 = and i128 %mul.i453, 18446744073709551615
  %add3.i483 = add nuw nsw i128 %conv1.i480, %conv2.i482
  %shr.i485 = lshr i128 %add3.i483, 64
  %conv1.i488 = and i128 %add3.i425, 18446744073709551615
  %conv2.i490 = and i128 %add3.i460, 18446744073709551615
  %add.i489 = add nuw nsw i128 %shr.i485, %conv2.i490
  %add3.i491 = add nuw nsw i128 %add.i489, %conv1.i488
  %shr.i493 = lshr i128 %add3.i491, 64
  %conv1.i496 = and i128 %add3.i433, 18446744073709551615
  %conv2.i498 = and i128 %add3.i468, 18446744073709551615
  %add.i497 = add nuw nsw i128 %shr.i493, %conv2.i498
  %add3.i499 = add nuw nsw i128 %add.i497, %conv1.i496
  %shr.i501 = lshr i128 %add3.i499, 64
  %add21 = add nuw nsw i64 %conv5.i339, %conv3.i301
  %add22 = add nuw nsw i64 %add21, %conv3.i380
  %add23 = add nuw nsw i64 %add22, %conv5.i405
  %add25 = add nuw nsw i64 %add23, %conv5.i370
  %add26 = add nuw nsw i64 %add25, %conv5.i436
  %conv1.i504 = zext nneg i64 %add26 to i128
  %conv2.i506 = and i128 %add3.i476, 18446744073709551615
  %add.i505 = add nuw nsw i128 %conv2.i506, %conv1.i504
  %add3.i507 = add nuw nsw i128 %add.i505, %shr.i501
  %shr.i509 = lshr i128 %add3.i507, 64
  %conv5.i510 = trunc nuw nsw i128 %shr.i509 to i64
  %conv.i511 = and i128 %add3.i483, 18446744073709551615
  %6 = trunc i128 %add3.i483 to i64
  %conv2.i513 = sub i64 0, %6
  %conv.i516 = zext i64 %conv2.i513 to i128
  %mul.i517 = mul nuw nsw i128 %conv.i516, 4294967295
  %shr.i519 = lshr i128 %mul.i517, 64
  %conv3.i520 = trunc nuw nsw i128 %shr.i519 to i64
  %mul.i522 = mul nuw i128 %conv.i516, 18446744073709551615
  %shr.i524 = lshr i128 %mul.i522, 64
  %mul.i527 = mul nuw i128 %conv.i516, 18446744069414584320
  %shr.i529 = lshr i128 %mul.i527, 64
  %conv2.i533 = and i128 %mul.i522, 18446744073709551615
  %add3.i534 = add nuw nsw i128 %shr.i529, %conv2.i533
  %shr.i536 = lshr i128 %add3.i534, 64
  %conv2.i541 = and i128 %mul.i517, 18446744073709551615
  %add.i540 = add nuw nsw i128 %conv2.i541, %shr.i524
  %add3.i542 = add nuw nsw i128 %add.i540, %shr.i536
  %shr.i544 = lshr i128 %add3.i542, 64
  %conv5.i545 = trunc nuw nsw i128 %shr.i544 to i64
  %add3.i549 = add nuw nsw i128 %conv.i511, %conv.i516
  %shr.i551 = lshr i128 %add3.i549, 64
  %conv1.i554 = and i128 %add3.i491, 18446744073709551615
  %conv2.i556 = and i128 %mul.i527, 18446744069414584320
  %add.i555 = or disjoint i128 %conv2.i556, %shr.i551
  %add3.i557 = add nuw nsw i128 %add.i555, %conv1.i554
  %conv4.i558 = trunc i128 %add3.i557 to i64
  %shr.i559 = lshr i128 %add3.i557, 64
  %conv1.i562 = and i128 %add3.i499, 18446744073709551615
  %conv2.i564 = and i128 %add3.i534, 18446744073709551615
  %add.i563 = add nuw nsw i128 %shr.i559, %conv2.i564
  %add3.i565 = add nuw nsw i128 %add.i563, %conv1.i562
  %conv4.i566 = trunc i128 %add3.i565 to i64
  %shr.i567 = lshr i128 %add3.i565, 64
  %conv1.i570 = and i128 %add3.i507, 18446744073709551615
  %conv2.i572 = and i128 %add3.i542, 18446744073709551615
  %add.i571 = add nuw nsw i128 %shr.i567, %conv2.i572
  %add3.i573 = add nuw nsw i128 %add.i571, %conv1.i570
  %conv4.i574 = trunc i128 %add3.i573 to i64
  %shr.i575 = lshr i128 %add3.i573, 64
  %conv5.i576 = trunc nuw nsw i128 %shr.i575 to i64
  %add30 = add nuw nsw i64 %conv5.i479, %conv3.i441
  %add31 = add nuw nsw i64 %add30, %conv3.i520
  %add32 = add nuw nsw i64 %add31, %conv5.i545
  %add34 = add nuw nsw i64 %add32, %conv5.i510
  %add35 = add nuw nsw i64 %add34, %conv5.i576
  %conv.i577 = and i128 %add3.i557, 18446744073709551615
  %sub3.i = add nsw i128 %conv.i577, -1
  %shr.i578 = lshr i128 %sub3.i, 64
  %conv4.i579 = trunc i128 %shr.i578 to i8
  %conv5.i580 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i579
  %conv.i581 = and i128 %add3.i565, 18446744073709551615
  %conv1.i582 = zext i8 %sub7.i to i128
  %7 = or disjoint i128 %conv1.i582, 18446744069414584320
  %sub3.i583 = sub nsw i128 %conv.i581, %7
  %shr.i584 = lshr i128 %sub3.i583, 64
  %conv4.i585 = trunc i128 %shr.i584 to i8
  %conv5.i586 = trunc i128 %sub3.i583 to i64
  %sub7.i587 = sub i8 0, %conv4.i585
  %conv.i588 = and i128 %add3.i573, 18446744073709551615
  %conv1.i589 = zext i8 %sub7.i587 to i128
  %.neg = add nsw i128 %conv.i588, -18446744073709551615
  %sub3.i590 = sub nsw i128 %.neg, %conv1.i589
  %shr.i591 = lshr i128 %sub3.i590, 64
  %conv4.i592 = trunc i128 %shr.i591 to i8
  %conv5.i593 = trunc i128 %sub3.i590 to i64
  %sub7.i594 = sub i8 0, %conv4.i592
  %conv.i595 = zext nneg i64 %add35 to i128
  %conv1.i596 = zext i8 %sub7.i594 to i128
  %.neg649 = add nsw i128 %conv.i595, -4294967295
  %sub3.i597 = sub nsw i128 %.neg649, %conv1.i596
  %shr.i598 = lshr i128 %sub3.i597, 64
  %conv4.i599 = trunc i128 %shr.i598 to i8
  %conv5.i600 = trunc nsw i128 %sub3.i597 to i64
  %sub7.i601 = sub i8 0, %conv4.i599
  %conv1.i602 = zext i8 %sub7.i601 to i128
  %sub3.i603 = sub nsw i128 0, %conv1.i602
  %shr.i604 = lshr i128 %sub3.i603, 64
  %conv4.i605 = trunc i128 %shr.i604 to i8
  %tobool.i = icmp ne i8 %conv4.i605, 0
  %conv4.i608 = sext i1 %tobool.i to i64
  %8 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i608) #8, !srcloc !9
  %and5.i = and i64 %8, %conv4.i558
  %not.i = xor i64 %conv4.i608, -1
  %9 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %9, %conv5.i580
  %or.i = or i64 %and7.i, %and5.i
  %and5.i611 = and i64 %8, %conv4.i566
  %and7.i613 = and i64 %9, %conv5.i586
  %or.i614 = or i64 %and7.i613, %and5.i611
  %and5.i617 = and i64 %8, %conv4.i574
  %and7.i619 = and i64 %9, %conv5.i593
  %or.i620 = or i64 %and7.i619, %and5.i617
  %and5.i623 = and i64 %add35, %8
  %and7.i625 = and i64 %9, %conv5.i600
  %or.i626 = or i64 %and7.i625, %and5.i623
  store i64 %or.i, ptr %out1, align 8, !tbaa !10
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %or.i614, ptr %arrayidx37, align 8, !tbaa !10
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i620, ptr %arrayidx38, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %or.i626, ptr %arrayidx39, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p224_nonzero(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load <4 x i64>, ptr %arg1, align 8, !tbaa !10
  %1 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %0)
  store i64 %1, ptr %out1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p224_selectznz(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #3 {
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
define dso_local void @fiat_p224_to_bytes(ptr noundef writeonly captures(none) initializes((0, 28)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %2 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  store <2 x i64> %2, ptr %out1, align 1
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %1, ptr %arrayidx93, align 1
  %arrayidx101 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  %3 = trunc i64 %0 to i32
  store i32 %3, ptr %arrayidx101, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p224_from_bytes(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = getelementptr i8, ptr %arg1, i64 24
  %1 = load i32, ptr %0, align 1
  %2 = zext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 23
  %3 = load i8, ptr %arrayidx8, align 1, !tbaa !12
  %conv9 = zext i8 %3 to i64
  %shl10 = shl nuw i64 %conv9, 56
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 22
  %4 = load i8, ptr %arrayidx11, align 1, !tbaa !12
  %conv12 = zext i8 %4 to i64
  %shl13 = shl nuw nsw i64 %conv12, 48
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 21
  %5 = load i8, ptr %arrayidx14, align 1, !tbaa !12
  %conv15 = zext i8 %5 to i64
  %shl16 = shl nuw nsw i64 %conv15, 40
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %6 = load i8, ptr %arrayidx17, align 1, !tbaa !12
  %conv18 = zext i8 %6 to i64
  %shl19 = shl nuw nsw i64 %conv18, 32
  %7 = getelementptr i8, ptr %arg1, i64 16
  %8 = load i32, ptr %7, align 1
  %9 = zext i32 %8 to i64
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %arg1, i64 15
  %10 = load i8, ptr %arrayidx30, align 1, !tbaa !12
  %conv31 = zext i8 %10 to i64
  %shl32 = shl nuw i64 %conv31, 56
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %arg1, i64 14
  %11 = load i8, ptr %arrayidx33, align 1, !tbaa !12
  %conv34 = zext i8 %11 to i64
  %shl35 = shl nuw nsw i64 %conv34, 48
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg1, i64 13
  %12 = load i8, ptr %arrayidx36, align 1, !tbaa !12
  %conv37 = zext i8 %12 to i64
  %shl38 = shl nuw nsw i64 %conv37, 40
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %13 = load i8, ptr %arrayidx39, align 1, !tbaa !12
  %conv40 = zext i8 %13 to i64
  %shl41 = shl nuw nsw i64 %conv40, 32
  %14 = getelementptr i8, ptr %arg1, i64 8
  %15 = load i32, ptr %14, align 1
  %16 = zext i32 %15 to i64
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %arg1, i64 7
  %17 = load i8, ptr %arrayidx52, align 1, !tbaa !12
  %conv53 = zext i8 %17 to i64
  %shl54 = shl nuw i64 %conv53, 56
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %arg1, i64 6
  %18 = load i8, ptr %arrayidx55, align 1, !tbaa !12
  %conv56 = zext i8 %18 to i64
  %shl57 = shl nuw nsw i64 %conv56, 48
  %arrayidx58 = getelementptr inbounds nuw i8, ptr %arg1, i64 5
  %19 = load i8, ptr %arrayidx58, align 1, !tbaa !12
  %conv59 = zext i8 %19 to i64
  %shl60 = shl nuw nsw i64 %conv59, 40
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %20 = load i8, ptr %arrayidx61, align 1, !tbaa !12
  %conv62 = zext i8 %20 to i64
  %shl63 = shl nuw nsw i64 %conv62, 32
  %21 = load i32, ptr %arg1, align 1
  %22 = zext i32 %21 to i64
  %add77 = or disjoint i64 %shl60, %22
  %add78 = or disjoint i64 %add77, %shl63
  %add79 = or disjoint i64 %shl57, %shl54
  %add80 = or disjoint i64 %add79, %add78
  %add85 = or disjoint i64 %shl38, %16
  %add86 = or disjoint i64 %add85, %shl41
  %add87 = or disjoint i64 %shl35, %shl32
  %add88 = or disjoint i64 %add87, %add86
  %add93 = or disjoint i64 %shl16, %9
  %add94 = or disjoint i64 %add93, %shl19
  %add95 = or disjoint i64 %shl13, %shl10
  %add96 = or disjoint i64 %add95, %add94
  store i64 %add80, ptr %out1, align 8, !tbaa !10
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %add88, ptr %arrayidx102, align 8, !tbaa !10
  %arrayidx103 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add96, ptr %arrayidx103, align 8, !tbaa !10
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %2, ptr %arrayidx104, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p224_set_one(ptr noundef writeonly captures(none) initializes((0, 32)) %out1) local_unnamed_addr #1 {
entry:
  store i64 -4294967296, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 -1, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p224_msat(ptr noundef writeonly captures(none) initializes((0, 40)) %out1) local_unnamed_addr #1 {
entry:
  store i64 1, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 -4294967296, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 -1, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 4294967295, ptr %arrayidx3, align 8, !tbaa !10
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 0, ptr %arrayidx4, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p224_divstep(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 40)) %out2, ptr noundef writeonly captures(none) initializes((0, 40)) %out3, ptr noundef writeonly captures(none) initializes((0, 32)) %out4, ptr noundef writeonly captures(none) initializes((0, 32)) %out5, i64 noundef %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3, ptr noundef readonly captures(none) %arg4, ptr noundef readonly captures(none) %arg5) local_unnamed_addr #3 {
entry:
  %add3.i = sub i64 0, %arg1
  %0 = load i64, ptr %arg3, align 8, !tbaa !10
  %and4167673 = shl i64 %0, 63
  %shr674 = and i64 %and4167673, %add3.i
  %sext = ashr exact i64 %shr674, 63
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %sext) #8, !srcloc !9
  %and5.i = and i64 %1, %add3.i
  %not.i = xor i64 %sext, -1
  %2 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #8, !srcloc !9
  %and7.i = and i64 %2, %arg1
  %or.i = or i64 %and7.i, %and5.i
  %3 = load i64, ptr %arg2, align 8, !tbaa !10
  %and5.i176 = and i64 %1, %0
  %and7.i178 = and i64 %3, %2
  %or.i179 = or i64 %and7.i178, %and5.i176
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %4 = load i64, ptr %arrayidx9, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg3, i64 8
  %5 = load i64, ptr %arrayidx10, align 8, !tbaa !10
  %and5.i182 = and i64 %5, %1
  %and7.i184 = and i64 %4, %2
  %or.i185 = or i64 %and5.i182, %and7.i184
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %6 = load i64, ptr %arrayidx11, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %7 = load i64, ptr %arrayidx12, align 8, !tbaa !10
  %and5.i188 = and i64 %7, %1
  %and7.i190 = and i64 %6, %2
  %or.i191 = or i64 %and5.i188, %and7.i190
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %8 = load i64, ptr %arrayidx13, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg3, i64 24
  %9 = load i64, ptr %arrayidx14, align 8, !tbaa !10
  %and5.i194 = and i64 %9, %1
  %and7.i196 = and i64 %8, %2
  %or.i197 = or i64 %and5.i194, %and7.i196
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %10 = load i64, ptr %arrayidx15, align 8, !tbaa !10
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg3, i64 32
  %11 = load i64, ptr %arrayidx16, align 8, !tbaa !10
  %and5.i200 = and i64 %11, %1
  %and7.i202 = and i64 %10, %2
  %or.i203 = or i64 %and5.i200, %and7.i202
  %not18 = xor i64 %3, -1
  %conv2.i = zext i64 %not18 to i128
  %add3.i204 = add nuw nsw i128 %conv2.i, 1
  %conv4.i205 = trunc i128 %add3.i204 to i64
  %shr.i206 = lshr i128 %add3.i204, 64
  %not20 = xor i64 %4, -1
  %conv2.i208 = zext i64 %not20 to i128
  %add3.i209 = add nuw nsw i128 %shr.i206, %conv2.i208
  %conv4.i210 = trunc i128 %add3.i209 to i64
  %shr.i211 = lshr i128 %add3.i209, 64
  %not22 = xor i64 %6, -1
  %conv2.i214 = zext i64 %not22 to i128
  %add3.i215 = add nuw nsw i128 %shr.i211, %conv2.i214
  %conv4.i216 = trunc i128 %add3.i215 to i64
  %shr.i217 = lshr i128 %add3.i215, 64
  %not24 = xor i64 %8, -1
  %conv2.i220 = zext i64 %not24 to i128
  %add3.i221 = add nuw nsw i128 %shr.i217, %conv2.i220
  %conv4.i222 = trunc i128 %add3.i221 to i64
  %shr.i223 = lshr i128 %add3.i221, 64
  %not26 = xor i64 %10, -1
  %12 = trunc nuw nsw i128 %shr.i223 to i64
  %conv4.i228 = add i64 %12, %not26
  %and5.i233 = and i64 %1, %conv4.i205
  %and7.i235 = and i64 %2, %0
  %or.i236 = or i64 %and5.i233, %and7.i235
  %and5.i239 = and i64 %1, %conv4.i210
  %and7.i241 = and i64 %5, %2
  %or.i242 = or i64 %and5.i239, %and7.i241
  %and5.i245 = and i64 %1, %conv4.i216
  %and7.i247 = and i64 %7, %2
  %or.i248 = or i64 %and5.i245, %and7.i247
  %and5.i251 = and i64 %1, %conv4.i222
  %and7.i253 = and i64 %9, %2
  %or.i254 = or i64 %and5.i251, %and7.i253
  %and5.i257 = and i64 %conv4.i228, %1
  %and7.i259 = and i64 %11, %2
  %or.i260 = or i64 %and5.i257, %and7.i259
  %13 = load i64, ptr %arg4, align 8, !tbaa !10
  %14 = load i64, ptr %arg5, align 8, !tbaa !10
  %and5.i263 = and i64 %14, %1
  %and7.i265 = and i64 %13, %2
  %or.i266 = or i64 %and5.i263, %and7.i265
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %arg4, i64 8
  %15 = load i64, ptr %arrayidx34, align 8, !tbaa !10
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arg5, i64 8
  %16 = load i64, ptr %arrayidx35, align 8, !tbaa !10
  %and5.i269 = and i64 %16, %1
  %and7.i271 = and i64 %15, %2
  %or.i272 = or i64 %and5.i269, %and7.i271
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg4, i64 16
  %17 = load i64, ptr %arrayidx36, align 8, !tbaa !10
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %arg5, i64 16
  %18 = load i64, ptr %arrayidx37, align 8, !tbaa !10
  %and5.i275 = and i64 %18, %1
  %and7.i277 = and i64 %17, %2
  %or.i278 = or i64 %and5.i275, %and7.i277
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %arg4, i64 24
  %19 = load i64, ptr %arrayidx38, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %arg5, i64 24
  %20 = load i64, ptr %arrayidx39, align 8, !tbaa !10
  %and5.i281 = and i64 %20, %1
  %and7.i283 = and i64 %19, %2
  %or.i284 = or i64 %and5.i281, %and7.i283
  %add3.i287 = shl i64 %or.i266, 1
  %conv4.i295 = tail call i64 @llvm.fshl.i64(i64 %or.i272, i64 %or.i266, i64 1)
  %conv4.i303 = tail call i64 @llvm.fshl.i64(i64 %or.i278, i64 %or.i272, i64 1)
  %conv4.i311 = tail call i64 @llvm.fshl.i64(i64 %or.i284, i64 %or.i278, i64 1)
  %21 = lshr i64 %or.i284, 63
  %conv.i314 = zext i64 %add3.i287 to i128
  %sub3.i = add nsw i128 %conv.i314, -1
  %shr.i315 = lshr i128 %sub3.i, 64
  %conv4.i316 = trunc i128 %shr.i315 to i8
  %conv5.i317 = trunc i128 %sub3.i to i64
  %sub7.i = sub i8 0, %conv4.i316
  %conv.i318 = zext i64 %conv4.i295 to i128
  %conv1.i319 = zext i8 %sub7.i to i128
  %22 = or disjoint i128 %conv1.i319, 18446744069414584320
  %sub3.i320 = sub nsw i128 %conv.i318, %22
  %shr.i321 = lshr i128 %sub3.i320, 64
  %conv4.i322 = trunc i128 %shr.i321 to i8
  %conv5.i323 = trunc i128 %sub3.i320 to i64
  %sub7.i324 = sub i8 0, %conv4.i322
  %conv.i325 = zext i64 %conv4.i303 to i128
  %conv1.i326 = zext i8 %sub7.i324 to i128
  %.neg = add nsw i128 %conv.i325, -18446744073709551615
  %sub3.i327 = sub nsw i128 %.neg, %conv1.i326
  %shr.i328 = lshr i128 %sub3.i327, 64
  %conv4.i329 = trunc i128 %shr.i328 to i8
  %conv5.i330 = trunc i128 %sub3.i327 to i64
  %sub7.i331 = sub i8 0, %conv4.i329
  %conv.i332 = zext i64 %conv4.i311 to i128
  %conv1.i333 = zext i8 %sub7.i331 to i128
  %.neg678 = add nsw i128 %conv.i332, -4294967295
  %sub3.i334 = sub nsw i128 %.neg678, %conv1.i333
  %shr.i335 = lshr i128 %sub3.i334, 64
  %conv4.i336 = trunc i128 %shr.i335 to i8
  %conv5.i337 = trunc i128 %sub3.i334 to i64
  %sub7.i338 = sub i8 0, %conv4.i336
  %conv.i339 = zext nneg i64 %21 to i128
  %conv1.i340 = zext i8 %sub7.i338 to i128
  %sub3.i341 = sub nsw i128 %conv.i339, %conv1.i340
  %shr.i342 = lshr i128 %sub3.i341, 64
  %conv4.i343 = trunc i128 %shr.i342 to i8
  %conv2.i346 = zext i64 %13 to i128
  %sub3.i347 = sub nsw i128 0, %conv2.i346
  %shr.i348 = lshr i128 %sub3.i347, 64
  %conv4.i349 = trunc i128 %shr.i348 to i8
  %sub7.i351 = sub i8 0, %conv4.i349
  %conv1.i352 = zext i8 %sub7.i351 to i128
  %conv2.i353 = zext i64 %15 to i128
  %23 = add nuw nsw i128 %conv2.i353, %conv1.i352
  %sub3.i354 = sub nsw i128 0, %23
  %shr.i355 = lshr i128 %sub3.i354, 64
  %conv4.i356 = trunc i128 %shr.i355 to i8
  %sub7.i358 = sub i8 0, %conv4.i356
  %conv1.i359 = zext i8 %sub7.i358 to i128
  %conv2.i360 = zext i64 %17 to i128
  %24 = add nuw nsw i128 %conv2.i360, %conv1.i359
  %sub3.i361 = sub nsw i128 0, %24
  %shr.i362 = lshr i128 %sub3.i361, 64
  %conv4.i363 = trunc i128 %shr.i362 to i8
  %sub7.i365 = sub i8 0, %conv4.i363
  %conv1.i366 = zext i8 %sub7.i365 to i128
  %conv2.i367 = zext i64 %19 to i128
  %25 = add nuw nsw i128 %conv1.i366, %conv2.i367
  %sub3.i368 = sub nsw i128 0, %25
  %26 = and i128 %sub3.i368, 4703919738795935662080
  %tobool.i373 = icmp ne i128 %26, 0
  %conv4.i374 = sext i1 %tobool.i373 to i64
  %27 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i374) #8, !srcloc !9
  %not.i376 = xor i64 %conv4.i374, -1
  %28 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i376) #8, !srcloc !9
  %conv46 = and i64 %27, 1
  %conv1.i379 = and i128 %sub3.i347, 18446744073709551615
  %conv2.i381 = zext nneg i64 %conv46 to i128
  %add3.i382 = add nuw nsw i128 %conv1.i379, %conv2.i381
  %conv4.i383 = trunc i128 %add3.i382 to i64
  %shr.i384 = lshr i128 %add3.i382, 64
  %and48 = and i64 %27, -4294967296
  %conv1.i387 = and i128 %sub3.i354, 18446744073709551615
  %conv2.i389 = zext i64 %and48 to i128
  %add.i388 = add nuw nsw i128 %conv1.i387, %conv2.i389
  %add3.i390 = add nuw nsw i128 %add.i388, %shr.i384
  %conv4.i391 = trunc i128 %add3.i390 to i64
  %shr.i392 = lshr i128 %add3.i390, 64
  %conv1.i395 = and i128 %sub3.i361, 18446744073709551615
  %conv2.i397 = zext i64 %27 to i128
  %add.i396 = add nuw nsw i128 %conv1.i395, %conv2.i397
  %add3.i398 = add nuw nsw i128 %add.i396, %shr.i392
  %conv4.i399 = trunc i128 %add3.i398 to i64
  %shr.i400 = lshr i128 %add3.i398, 64
  %and49 = and i64 %27, 4294967295
  %add.i404 = sub nsw i128 %shr.i400, %25
  %29 = trunc i128 %add.i404 to i64
  %conv4.i407 = add i64 %and49, %29
  %and5.i412 = and i64 %1, %conv4.i383
  %and7.i414 = and i64 %14, %2
  %or.i415 = or i64 %and5.i412, %and7.i414
  %and5.i418 = and i64 %1, %conv4.i391
  %and7.i420 = and i64 %16, %2
  %or.i421 = or i64 %and5.i418, %and7.i420
  %and5.i424 = and i64 %1, %conv4.i399
  %and7.i426 = and i64 %18, %2
  %or.i427 = or i64 %and5.i424, %and7.i426
  %and5.i430 = and i64 %conv4.i407, %1
  %and7.i432 = and i64 %20, %2
  %or.i433 = or i64 %and5.i430, %and7.i432
  %30 = and i64 %or.i236, 1
  %conv4.i435 = sub nsw i64 0, %30
  %31 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i435) #8, !srcloc !9
  %and5.i436 = and i64 %31, %or.i179
  %not.i437 = add nsw i64 %30, -1
  %32 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i437) #8, !srcloc !9
  %and5.i442 = and i64 %31, %or.i185
  %and5.i448 = and i64 %31, %or.i191
  %and5.i454 = and i64 %31, %or.i197
  %and5.i460 = and i64 %31, %or.i203
  %add.narrowed = add i64 %and5.i436, %or.i236
  %add.narrowed.overflow = icmp ult i64 %add.narrowed, %or.i236
  %conv.i471 = zext i1 %add.narrowed.overflow to i128
  %conv1.i472 = zext i64 %or.i242 to i128
  %conv2.i474 = zext i64 %and5.i442 to i128
  %add.i473 = add nuw nsw i128 %conv2.i474, %conv1.i472
  %add3.i475 = add nuw nsw i128 %add.i473, %conv.i471
  %conv4.i476 = trunc i128 %add3.i475 to i64
  %shr.i477 = lshr i128 %add3.i475, 64
  %conv1.i480 = zext i64 %or.i248 to i128
  %conv2.i482 = zext i64 %and5.i448 to i128
  %add.i481 = add nuw nsw i128 %conv2.i482, %conv1.i480
  %add3.i483 = add nuw nsw i128 %add.i481, %shr.i477
  %conv4.i484 = trunc i128 %add3.i483 to i64
  %shr.i485 = lshr i128 %add3.i483, 64
  %conv1.i488 = zext i64 %or.i254 to i128
  %conv2.i490 = zext i64 %and5.i454 to i128
  %add.i489 = add nuw nsw i128 %conv2.i490, %conv1.i488
  %add3.i491 = add nuw nsw i128 %add.i489, %shr.i485
  %conv4.i492 = trunc i128 %add3.i491 to i64
  %shr.i493 = lshr i128 %add3.i491, 64
  %33 = trunc nuw nsw i128 %shr.i493 to i64
  %34 = add i64 %and5.i460, %or.i260
  %conv4.i500 = add i64 %34, %33
  %and5.i505 = and i64 %31, %or.i266
  %and5.i511 = and i64 %31, %or.i272
  %and5.i517 = and i64 %31, %or.i278
  %and5.i523 = and i64 %31, %or.i284
  %add.narrowed676 = add i64 %or.i415, %and5.i505
  %add.narrowed.overflow677 = icmp ult i64 %add.narrowed676, %or.i415
  %conv.i534 = zext i1 %add.narrowed.overflow677 to i128
  %conv1.i535 = zext i64 %or.i421 to i128
  %conv2.i537 = zext i64 %and5.i511 to i128
  %add.i536 = add nuw nsw i128 %conv.i534, %conv2.i537
  %add3.i538 = add nuw nsw i128 %add.i536, %conv1.i535
  %conv4.i539 = trunc i128 %add3.i538 to i64
  %shr.i540 = lshr i128 %add3.i538, 64
  %conv1.i543 = zext i64 %or.i427 to i128
  %conv2.i545 = zext i64 %and5.i517 to i128
  %add.i544 = add nuw nsw i128 %conv1.i543, %conv2.i545
  %add3.i546 = add nuw nsw i128 %add.i544, %shr.i540
  %conv4.i547 = trunc i128 %add3.i546 to i64
  %shr.i548 = lshr i128 %add3.i546, 64
  %conv1.i551 = zext i64 %or.i433 to i128
  %conv2.i553 = zext i64 %and5.i523 to i128
  %add.i552 = add nuw nsw i128 %conv1.i551, %conv2.i553
  %add3.i554 = add nuw nsw i128 %add.i552, %shr.i548
  %conv4.i555 = trunc i128 %add3.i554 to i64
  %shr.i556 = lshr i128 %add3.i554, 64
  %conv.i558 = zext i64 %add.narrowed676 to i128
  %sub3.i559 = add nsw i128 %conv.i558, -1
  %shr.i560 = lshr i128 %sub3.i559, 64
  %conv4.i561 = trunc i128 %shr.i560 to i8
  %conv5.i562 = trunc i128 %sub3.i559 to i64
  %sub7.i563 = sub i8 0, %conv4.i561
  %conv.i564 = and i128 %add3.i538, 18446744073709551615
  %conv1.i565 = zext i8 %sub7.i563 to i128
  %35 = or disjoint i128 %conv1.i565, 18446744069414584320
  %sub3.i566 = sub nsw i128 %conv.i564, %35
  %shr.i567 = lshr i128 %sub3.i566, 64
  %conv4.i568 = trunc i128 %shr.i567 to i8
  %conv5.i569 = trunc i128 %sub3.i566 to i64
  %sub7.i570 = sub i8 0, %conv4.i568
  %conv.i571 = and i128 %add3.i546, 18446744073709551615
  %conv1.i572 = zext i8 %sub7.i570 to i128
  %.neg679 = add nsw i128 %conv.i571, -18446744073709551615
  %sub3.i573 = sub nsw i128 %.neg679, %conv1.i572
  %shr.i574 = lshr i128 %sub3.i573, 64
  %conv4.i575 = trunc i128 %shr.i574 to i8
  %conv5.i576 = trunc i128 %sub3.i573 to i64
  %sub7.i577 = sub i8 0, %conv4.i575
  %conv.i578 = and i128 %add3.i554, 18446744073709551615
  %conv1.i579 = zext i8 %sub7.i577 to i128
  %.neg680 = add nsw i128 %conv.i578, -4294967295
  %sub3.i580 = sub nsw i128 %.neg680, %conv1.i579
  %shr.i581 = lshr i128 %sub3.i580, 64
  %conv4.i582 = trunc i128 %shr.i581 to i8
  %conv5.i583 = trunc i128 %sub3.i580 to i64
  %sub7.i584 = sub i8 0, %conv4.i582
  %conv1.i586 = zext i8 %sub7.i584 to i128
  %sub3.i587 = sub nsw i128 %shr.i556, %conv1.i586
  %shr.i588 = lshr i128 %sub3.i587, 64
  %conv4.i589 = trunc i128 %shr.i588 to i8
  %add3.i594 = add i64 %or.i, 1
  %or = tail call i64 @llvm.fshl.i64(i64 %conv4.i476, i64 %add.narrowed, i64 63)
  %or62 = tail call i64 @llvm.fshl.i64(i64 %conv4.i484, i64 %conv4.i476, i64 63)
  %or66 = tail call i64 @llvm.fshl.i64(i64 %conv4.i492, i64 %conv4.i484, i64 63)
  %or70 = tail call i64 @llvm.fshl.i64(i64 %conv4.i500, i64 %conv4.i492, i64 63)
  %and71 = and i64 %conv4.i500, -9223372036854775808
  %shr72 = lshr i64 %conv4.i500, 1
  %or73 = or disjoint i64 %and71, %shr72
  %tobool.i598 = icmp ne i8 %conv4.i343, 0
  %conv4.i599 = sext i1 %tobool.i598 to i64
  %36 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i599) #8, !srcloc !9
  %and5.i600 = and i64 %36, %add3.i287
  %not.i601 = xor i64 %conv4.i599, -1
  %37 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i601) #8, !srcloc !9
  %and7.i602 = and i64 %37, %conv5.i317
  %or.i603 = or i64 %and7.i602, %and5.i600
  %and5.i606 = and i64 %36, %conv4.i295
  %and7.i608 = and i64 %37, %conv5.i323
  %or.i609 = or i64 %and7.i608, %and5.i606
  %and5.i612 = and i64 %36, %conv4.i303
  %and7.i614 = and i64 %37, %conv5.i330
  %or.i615 = or i64 %and7.i614, %and5.i612
  %and5.i618 = and i64 %36, %conv4.i311
  %and7.i620 = and i64 %37, %conv5.i337
  %or.i621 = or i64 %and7.i620, %and5.i618
  %tobool.i622 = icmp ne i8 %conv4.i589, 0
  %conv4.i623 = sext i1 %tobool.i622 to i64
  %38 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i623) #8, !srcloc !9
  %and5.i624 = and i64 %add.narrowed676, %38
  %not.i625 = xor i64 %conv4.i623, -1
  %39 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i625) #8, !srcloc !9
  %and7.i626 = and i64 %39, %conv5.i562
  %or.i627 = or i64 %and7.i626, %and5.i624
  %and5.i630 = and i64 %38, %conv4.i539
  %and7.i632 = and i64 %39, %conv5.i569
  %or.i633 = or i64 %and7.i632, %and5.i630
  %and5.i636 = and i64 %38, %conv4.i547
  %and7.i638 = and i64 %39, %conv5.i576
  %or.i639 = or i64 %and7.i638, %and5.i636
  %and5.i642 = and i64 %38, %conv4.i555
  %and7.i644 = and i64 %39, %conv5.i583
  %or.i645 = or i64 %and7.i644, %and5.i642
  store i64 %add3.i594, ptr %out1, align 8, !tbaa !10
  store i64 %or.i179, ptr %out2, align 8, !tbaa !10
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %out2, i64 8
  store i64 %or.i185, ptr %arrayidx75, align 8, !tbaa !10
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %out2, i64 16
  store i64 %or.i191, ptr %arrayidx76, align 8, !tbaa !10
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %out2, i64 24
  store i64 %or.i197, ptr %arrayidx77, align 8, !tbaa !10
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %out2, i64 32
  store i64 %or.i203, ptr %arrayidx78, align 8, !tbaa !10
  store i64 %or, ptr %out3, align 8, !tbaa !10
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %out3, i64 8
  store i64 %or62, ptr %arrayidx80, align 8, !tbaa !10
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %out3, i64 16
  store i64 %or66, ptr %arrayidx81, align 8, !tbaa !10
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %out3, i64 24
  store i64 %or70, ptr %arrayidx82, align 8, !tbaa !10
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %out3, i64 32
  store i64 %or73, ptr %arrayidx83, align 8, !tbaa !10
  store i64 %or.i603, ptr %out4, align 8, !tbaa !10
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %out4, i64 8
  store i64 %or.i609, ptr %arrayidx85, align 8, !tbaa !10
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %out4, i64 16
  store i64 %or.i615, ptr %arrayidx86, align 8, !tbaa !10
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %out4, i64 24
  store i64 %or.i621, ptr %arrayidx87, align 8, !tbaa !10
  store i64 %or.i627, ptr %out5, align 8, !tbaa !10
  %arrayidx89 = getelementptr inbounds nuw i8, ptr %out5, i64 8
  store i64 %or.i633, ptr %arrayidx89, align 8, !tbaa !10
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %out5, i64 16
  store i64 %or.i639, ptr %arrayidx90, align 8, !tbaa !10
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %out5, i64 24
  store i64 %or.i645, ptr %arrayidx91, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p224_divstep_precomp(ptr noundef writeonly captures(none) initializes((0, 32)) %out1) local_unnamed_addr #1 {
entry:
  store i64 36028796993798145, ptr %out1, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 -36028801305542656, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 16777215, ptr %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 4286578688, ptr %arrayidx3, align 8, !tbaa !10
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
!9 = !{i64 3135}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
