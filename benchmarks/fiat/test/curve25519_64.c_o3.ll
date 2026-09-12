; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @fiat_25519_value_barrier_u64(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #5, !srcloc !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_25519_addcarryx_u51(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %add = add i64 %arg2, %conv
  %add1 = add i64 %add, %arg3
  %and = and i64 %add1, 2251799813685247
  %shr = lshr i64 %add1, 51
  %conv2 = trunc i64 %shr to i8
  store i64 %and, ptr %out1, align 8, !tbaa !10
  store i8 %conv2, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_25519_subborrowx_u51(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %0 = add i64 %arg3, %conv
  %sub1 = sub i64 %arg2, %0
  %shr = lshr i64 %sub1, 51
  %conv2 = trunc i64 %shr to i8
  %and = and i64 %sub1, 2251799813685247
  store i64 %and, ptr %out1, align 8, !tbaa !10
  %sub4 = sub i8 0, %conv2
  store i8 %sub4, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @fiat_25519_cmovznz_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #2 {
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
define dso_local void @fiat_25519_carry_mul(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %conv = zext i64 %0 to i128
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %mul = mul i64 %1, 19
  %conv2 = zext i64 %mul to i128
  %mul3 = mul nuw i128 %conv2, %conv
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %2 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %mul7 = mul i64 %2, 19
  %conv8 = zext i64 %mul7 to i128
  %mul9 = mul nuw i128 %conv8, %conv
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %3 = load i64, ptr %arrayidx12, align 8, !tbaa !10
  %mul13 = mul i64 %3, 19
  %conv14 = zext i64 %mul13 to i128
  %mul15 = mul nuw i128 %conv14, %conv
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %4 = load i64, ptr %arrayidx18, align 8, !tbaa !10
  %mul19 = mul i64 %4, 19
  %conv20 = zext i64 %mul19 to i128
  %mul21 = mul nuw i128 %conv20, %conv
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %5 = load i64, ptr %arrayidx22, align 8, !tbaa !10
  %conv23 = zext i64 %5 to i128
  %mul27 = mul nuw i128 %conv23, %conv2
  %mul33 = mul nuw i128 %conv23, %conv8
  %mul39 = mul nuw i128 %conv23, %conv14
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %6 = load i64, ptr %arrayidx40, align 8, !tbaa !10
  %conv41 = zext i64 %6 to i128
  %mul45 = mul nuw i128 %conv41, %conv2
  %mul51 = mul nuw i128 %conv41, %conv8
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %7 = load i64, ptr %arrayidx52, align 8, !tbaa !10
  %conv53 = zext i64 %7 to i128
  %mul57 = mul nuw i128 %conv53, %conv2
  %8 = load i64, ptr %arg2, align 8, !tbaa !10
  %conv61 = zext i64 %8 to i128
  %mul62 = mul nuw i128 %conv61, %conv
  %conv66 = zext i64 %4 to i128
  %mul67 = mul nuw i128 %conv23, %conv66
  %mul72 = mul nuw i128 %conv61, %conv23
  %conv76 = zext i64 %3 to i128
  %mul77 = mul nuw i128 %conv41, %conv76
  %mul82 = mul nuw i128 %conv41, %conv66
  %mul87 = mul nuw i128 %conv61, %conv41
  %conv91 = zext i64 %2 to i128
  %mul92 = mul nuw i128 %conv53, %conv91
  %mul97 = mul nuw i128 %conv53, %conv76
  %mul102 = mul nuw i128 %conv53, %conv66
  %mul107 = mul nuw i128 %conv61, %conv53
  %9 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv109 = zext i64 %9 to i128
  %conv111 = zext i64 %1 to i128
  %mul112 = mul nuw i128 %conv109, %conv111
  %mul117 = mul nuw i128 %conv109, %conv91
  %mul122 = mul nuw i128 %conv109, %conv76
  %mul127 = mul nuw i128 %conv109, %conv66
  %mul132 = mul nuw i128 %conv109, %conv61
  %add = add i128 %mul39, %mul21
  %add133 = add i128 %add, %mul51
  %add134 = add i128 %add133, %mul57
  %add135 = add i128 %add134, %mul132
  %shr = lshr i128 %add135, 51
  %10 = trunc i128 %add135 to i64
  %conv137 = and i64 %10, 2251799813685247
  %add146 = add i128 %mul27, %mul9
  %add150 = add i128 %mul33, %mul15
  %add151 = add i128 %add150, %mul45
  %add152 = add i128 %add151, %mul107
  %add153 = add i128 %add152, %mul127
  %conv154 = and i128 %shr, 18446744073709551615
  %add155 = add i128 %add153, %conv154
  %shr156 = lshr i128 %add155, 51
  %11 = trunc i128 %add155 to i64
  %conv159 = and i64 %11, 2251799813685247
  %conv160 = and i128 %shr156, 18446744073709551615
  %add147 = add i128 %add146, %mul102
  %add148 = add i128 %add147, %mul87
  %add149 = add i128 %add148, %mul122
  %add161 = add i128 %add149, %conv160
  %shr162 = lshr i128 %add161, 51
  %12 = trunc i128 %add161 to i64
  %conv165 = and i64 %12, 2251799813685247
  %conv166 = and i128 %shr162, 18446744073709551615
  %add142 = add i128 %mul82, %mul3
  %add143 = add i128 %add142, %mul97
  %add144 = add i128 %add143, %mul72
  %add145 = add i128 %add144, %mul117
  %add167 = add i128 %add145, %conv166
  %shr168 = lshr i128 %add167, 51
  %13 = trunc i128 %add167 to i64
  %conv171 = and i64 %13, 2251799813685247
  %conv172 = and i128 %shr168, 18446744073709551615
  %add138 = add i128 %mul77, %mul67
  %add139 = add i128 %add138, %mul92
  %add140 = add i128 %add139, %mul62
  %add141 = add i128 %add140, %mul112
  %add173 = add i128 %add141, %conv172
  %shr174 = lshr i128 %add173, 51
  %conv175 = trunc i128 %shr174 to i64
  %14 = trunc i128 %add173 to i64
  %conv177 = and i64 %14, 2251799813685247
  %mul178 = mul i64 %conv175, 19
  %add179 = add i64 %mul178, %conv137
  %shr180 = lshr i64 %add179, 51
  %and181 = and i64 %add179, 2251799813685247
  %add182 = add nuw nsw i64 %shr180, %conv159
  %shr183 = lshr i64 %add182, 51
  %and185 = and i64 %add182, 2251799813685247
  %add187 = add nuw nsw i64 %shr183, %conv165
  store i64 %and181, ptr %out1, align 8, !tbaa !10
  %arrayidx189 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and185, ptr %arrayidx189, align 8, !tbaa !10
  %arrayidx190 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add187, ptr %arrayidx190, align 8, !tbaa !10
  %arrayidx191 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv171, ptr %arrayidx191, align 8, !tbaa !10
  %arrayidx192 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %conv177, ptr %arrayidx192, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_carry_square(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %mul = mul i64 %0, 19
  %mul1 = mul i64 %0, 38
  %mul3 = shl i64 %0, 1
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %1 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %mul5 = mul i64 %1, 19
  %mul6 = mul i64 %1, 38
  %mul8 = shl i64 %1, 1
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx9, align 8, !tbaa !10
  %mul10 = shl i64 %2, 1
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %3 = load i64, ptr %arrayidx11, align 8, !tbaa !10
  %mul12 = shl i64 %3, 1
  %conv = zext i64 %0 to i128
  %conv14 = zext i64 %mul to i128
  %mul15 = mul nuw i128 %conv14, %conv
  %conv17 = zext i64 %1 to i128
  %conv18 = zext i64 %mul1 to i128
  %mul19 = mul nuw i128 %conv17, %conv18
  %conv22 = zext i64 %mul5 to i128
  %mul23 = mul nuw i128 %conv22, %conv17
  %conv25 = zext i64 %2 to i128
  %mul27 = mul nuw i128 %conv25, %conv18
  %conv30 = zext i64 %mul6 to i128
  %mul31 = mul nuw i128 %conv25, %conv30
  %mul36 = mul nuw i128 %conv25, %conv25
  %conv38 = zext i64 %3 to i128
  %mul40 = mul nuw i128 %conv38, %conv18
  %conv43 = zext i64 %mul8 to i128
  %mul44 = mul nuw i128 %conv38, %conv43
  %conv47 = zext i64 %mul10 to i128
  %mul48 = mul nuw i128 %conv38, %conv47
  %mul53 = mul nuw i128 %conv38, %conv38
  %4 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv55 = zext i64 %4 to i128
  %conv56 = zext i64 %mul3 to i128
  %mul57 = mul nuw i128 %conv55, %conv56
  %mul61 = mul nuw i128 %conv55, %conv43
  %mul65 = mul nuw i128 %conv55, %conv47
  %conv68 = zext i64 %mul12 to i128
  %mul69 = mul nuw i128 %conv55, %conv68
  %mul74 = mul nuw i128 %conv55, %conv55
  %add = add i128 %mul40, %mul31
  %add75 = add i128 %add, %mul74
  %shr = lshr i128 %add75, 51
  %5 = trunc i128 %add75 to i64
  %conv77 = and i64 %5, 2251799813685247
  %add78 = add i128 %mul44, %mul36
  %add79 = add i128 %add78, %mul57
  %add80 = add i128 %mul48, %mul15
  %add81 = add i128 %add80, %mul61
  %add82 = add i128 %mul53, %mul19
  %add83 = add i128 %add82, %mul65
  %add84 = add i128 %mul27, %mul23
  %add85 = add i128 %add84, %mul69
  %conv86 = and i128 %shr, 18446744073709551615
  %add87 = add i128 %add85, %conv86
  %shr88 = lshr i128 %add87, 51
  %6 = trunc i128 %add87 to i64
  %conv91 = and i64 %6, 2251799813685247
  %conv92 = and i128 %shr88, 18446744073709551615
  %add93 = add i128 %add83, %conv92
  %shr94 = lshr i128 %add93, 51
  %7 = trunc i128 %add93 to i64
  %conv97 = and i64 %7, 2251799813685247
  %conv98 = and i128 %shr94, 18446744073709551615
  %add99 = add i128 %add81, %conv98
  %shr100 = lshr i128 %add99, 51
  %8 = trunc i128 %add99 to i64
  %conv103 = and i64 %8, 2251799813685247
  %conv104 = and i128 %shr100, 18446744073709551615
  %add105 = add i128 %add79, %conv104
  %shr106 = lshr i128 %add105, 51
  %conv107 = trunc i128 %shr106 to i64
  %9 = trunc i128 %add105 to i64
  %conv109 = and i64 %9, 2251799813685247
  %mul110 = mul i64 %conv107, 19
  %add111 = add i64 %mul110, %conv77
  %shr112 = lshr i64 %add111, 51
  %and113 = and i64 %add111, 2251799813685247
  %add114 = add nuw nsw i64 %shr112, %conv91
  %shr115 = lshr i64 %add114, 51
  %and117 = and i64 %add114, 2251799813685247
  %add119 = add nuw nsw i64 %shr115, %conv97
  store i64 %and113, ptr %out1, align 8, !tbaa !10
  %arrayidx121 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and117, ptr %arrayidx121, align 8, !tbaa !10
  %arrayidx122 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add119, ptr %arrayidx122, align 8, !tbaa !10
  %arrayidx123 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv103, ptr %arrayidx123, align 8, !tbaa !10
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %conv109, ptr %arrayidx124, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_carry(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %shr = lshr i64 %0, 51
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %add = add i64 %shr, %1
  %shr2 = lshr i64 %add, 51
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %add4 = add i64 %shr2, %2
  %shr5 = lshr i64 %add4, 51
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %3 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %add7 = add i64 %shr5, %3
  %shr8 = lshr i64 %add7, 51
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %4 = load i64, ptr %arrayidx9, align 8, !tbaa !10
  %add10 = add i64 %shr8, %4
  %and = and i64 %0, 2251799813685247
  %shr11 = lshr i64 %add10, 51
  %mul = mul nuw nsw i64 %shr11, 19
  %add12 = add nuw nsw i64 %mul, %and
  %shr13 = lshr i64 %add12, 51
  %and15 = and i64 %add, 2251799813685247
  %add16 = add nuw nsw i64 %shr13, %and15
  %and17 = and i64 %add12, 2251799813685247
  %and18 = and i64 %add16, 2251799813685247
  %shr19 = lshr i64 %add16, 51
  %and22 = and i64 %add4, 2251799813685247
  %add23 = add nuw nsw i64 %shr19, %and22
  %and24 = and i64 %add7, 2251799813685247
  %and25 = and i64 %add10, 2251799813685247
  store i64 %and17, ptr %out1, align 8, !tbaa !10
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and18, ptr %arrayidx27, align 8, !tbaa !10
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add23, ptr %arrayidx28, align 8, !tbaa !10
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %and24, ptr %arrayidx29, align 8, !tbaa !10
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %and25, ptr %arrayidx30, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_add(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %0 = load i64, ptr %arrayidx11, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %1 = load i64, ptr %arrayidx12, align 8, !tbaa !10
  %add13 = add i64 %1, %0
  %2 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %3 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %4 = add <2 x i64> %3, %2
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %5 = load <2 x i64>, ptr %arrayidx5, align 8, !tbaa !10
  %6 = load <2 x i64>, ptr %arrayidx6, align 8, !tbaa !10
  %7 = add <2 x i64> %6, %5
  store <2 x i64> %4, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %7, ptr %arrayidx16, align 8, !tbaa !10
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %add13, ptr %arrayidx18, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_sub(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %0 = load i64, ptr %arrayidx14, align 8, !tbaa !10
  %add15 = add i64 %0, 4503599627370494
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %1 = load i64, ptr %arrayidx16, align 8, !tbaa !10
  %sub17 = sub i64 %add15, %1
  %2 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %3 = add <2 x i64> %2, <i64 4503599627370458, i64 4503599627370494>
  %4 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %5 = sub <2 x i64> %3, %4
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %6 = load <2 x i64>, ptr %arrayidx6, align 8, !tbaa !10
  %7 = add <2 x i64> %6, splat (i64 4503599627370494)
  %8 = load <2 x i64>, ptr %arrayidx8, align 8, !tbaa !10
  %9 = sub <2 x i64> %7, %8
  store <2 x i64> %5, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %9, ptr %arrayidx20, align 8, !tbaa !10
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %sub17, ptr %arrayidx22, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_opp(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %0 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %sub8 = sub i64 4503599627370494, %0
  %1 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %2 = sub <2 x i64> <i64 4503599627370458, i64 4503599627370494>, %1
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %3 = load <2 x i64>, ptr %arrayidx3, align 8, !tbaa !10
  %4 = sub <2 x i64> splat (i64 4503599627370494), %3
  store <2 x i64> %2, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %4, ptr %arrayidx11, align 8, !tbaa !10
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %sub8, ptr %arrayidx13, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_selectznz(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #4 {
entry:
  %tobool.i = icmp ne i8 %arg1, 0
  %conv4.i = sext i1 %tobool.i to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #5, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #5, !srcloc !9
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %2 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg3, i64 32
  %3 = load i64, ptr %arrayidx9, align 8, !tbaa !10
  %and5.i51 = and i64 %3, %0
  %and7.i53 = and i64 %2, %1
  %or.i54 = or i64 %and5.i51, %and7.i53
  %4 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %5 = load <2 x i64>, ptr %arg3, align 8, !tbaa !10
  %6 = insertelement <2 x i64> poison, i64 %0, i64 0
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> zeroinitializer
  %8 = and <2 x i64> %7, %5
  %9 = insertelement <2 x i64> poison, i64 %1, i64 0
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer
  %11 = and <2 x i64> %10, %4
  %12 = or <2 x i64> %8, %11
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %13 = load <2 x i64>, ptr %arrayidx4, align 8, !tbaa !10
  %14 = load <2 x i64>, ptr %arrayidx5, align 8, !tbaa !10
  %15 = and <2 x i64> %14, %7
  %16 = and <2 x i64> %13, %10
  %17 = or <2 x i64> %15, %16
  store <2 x i64> %12, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %17, ptr %arrayidx12, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %or.i54, ptr %arrayidx14, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_to_bytes(ptr noundef writeonly captures(none) initializes((0, 32)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %sub1.i = add i64 %0, -2251799813685229
  %shr.i = lshr i64 %sub1.i, 51
  %and.i = and i64 %sub1.i, 2251799813685247
  %sub4.i = sub nsw i64 0, %shr.i
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv.i = and i64 %sub4.i, 255
  %.neg = add i64 %1, -2251799813685247
  %sub1.i211 = sub i64 %.neg, %conv.i
  %shr.i212 = lshr i64 %sub1.i211, 51
  %and.i214 = and i64 %sub1.i211, 2251799813685247
  %sub4.i215 = sub nsw i64 0, %shr.i212
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %conv.i216 = and i64 %sub4.i215, 255
  %.neg264 = add i64 %2, -2251799813685247
  %sub1.i217 = sub i64 %.neg264, %conv.i216
  %shr.i218 = lshr i64 %sub1.i217, 51
  %and.i220 = and i64 %sub1.i217, 2251799813685247
  %sub4.i221 = sub nsw i64 0, %shr.i218
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %3 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %conv.i222 = and i64 %sub4.i221, 255
  %.neg265 = add i64 %3, -2251799813685247
  %sub1.i223 = sub i64 %.neg265, %conv.i222
  %shr.i224 = lshr i64 %sub1.i223, 51
  %and.i226 = and i64 %sub1.i223, 2251799813685247
  %sub4.i227 = sub nsw i64 0, %shr.i224
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %4 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %conv.i228 = and i64 %sub4.i227, 255
  %.neg266 = add i64 %4, -2251799813685247
  %sub1.i229 = sub i64 %.neg266, %conv.i228
  %5 = and i64 %sub1.i229, 574208952489738240
  %tobool.i = icmp ne i64 %5, 0
  %conv4.i = sext i1 %tobool.i to i64
  %6 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #5, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %7 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #5, !srcloc !9
  %and = and i64 %6, 2251799813685229
  %add1.i = add nuw nsw i64 %and, %and.i
  %shr.i235 = lshr i64 %add1.i, 51
  %and5 = and i64 %6, 2251799813685247
  %add.i = add nuw nsw i64 %and5, %and.i214
  %add1.i238 = add nuw nsw i64 %add.i, %shr.i235
  %shr.i240 = lshr i64 %add1.i238, 51
  %add.i243 = add nuw nsw i64 %and.i220, %and5
  %add1.i244 = add nuw nsw i64 %add.i243, %shr.i240
  %shr.i246 = lshr i64 %add1.i244, 51
  %add.i249 = add nuw nsw i64 %and.i226, %and5
  %add1.i250 = add nuw nsw i64 %add.i249, %shr.i246
  %shr.i252 = lshr i64 %add1.i250, 51
  %add.i255 = add i64 %sub1.i229, %6
  %add1.i256 = add i64 %add.i255, %shr.i252
  %and.i257 = shl i64 %add1.i256, 4
  %and.i251 = shl nuw nsw i64 %add1.i250, 1
  %and.i245 = shl nuw nsw i64 %add1.i244, 6
  %and.i239 = shl nuw nsw i64 %add1.i238, 3
  %conv = trunc i64 %add1.i to i8
  %shr = lshr i64 %add1.i, 8
  %conv13 = trunc i64 %shr to i8
  %shr14 = lshr i64 %add1.i, 16
  %conv16 = trunc i64 %shr14 to i8
  %shr17 = lshr i64 %add1.i, 24
  %conv19 = trunc i64 %shr17 to i8
  %shr20 = lshr i64 %add1.i, 32
  %conv22 = trunc i64 %shr20 to i8
  %shr23 = lshr i64 %add1.i, 40
  %conv25 = trunc i64 %shr23 to i8
  %and.i234 = lshr i64 %add1.i, 48
  %shr26 = and i64 %and.i234, 7
  %add = or disjoint i64 %and.i239, %shr26
  %conv30 = trunc i64 %add to i8
  %shr31 = lshr i64 %add1.i238, 5
  %conv33 = trunc i64 %shr31 to i8
  %shr34 = lshr i64 %add1.i238, 13
  %conv36 = trunc i64 %shr34 to i8
  %shr37 = lshr i64 %add1.i238, 21
  %conv39 = trunc i64 %shr37 to i8
  %shr40 = lshr i64 %add1.i238, 29
  %conv42 = trunc i64 %shr40 to i8
  %shr43 = lshr i64 %add1.i238, 37
  %conv45 = trunc i64 %shr43 to i8
  %shl10 = lshr i64 %add1.i238, 45
  %shr46 = and i64 %shl10, 63
  %add49 = or disjoint i64 %and.i245, %shr46
  %conv51 = trunc i64 %add49 to i8
  %shr52 = lshr i64 %add1.i244, 2
  %conv54 = trunc i64 %shr52 to i8
  %shr55 = lshr i64 %add1.i244, 10
  %conv57 = trunc i64 %shr55 to i8
  %shr58 = lshr i64 %add1.i244, 18
  %conv60 = trunc i64 %shr58 to i8
  %shr61 = lshr i64 %add1.i244, 26
  %conv63 = trunc i64 %shr61 to i8
  %shr64 = lshr i64 %add1.i244, 34
  %conv66 = trunc i64 %shr64 to i8
  %shr67 = lshr i64 %add1.i244, 42
  %conv69 = trunc i64 %shr67 to i8
  %shl9 = lshr i64 %add1.i244, 50
  %shr70 = and i64 %shl9, 1
  %add73 = or disjoint i64 %and.i251, %shr70
  %conv75 = trunc i64 %add73 to i8
  %shr76 = lshr i64 %add1.i250, 7
  %conv78 = trunc i64 %shr76 to i8
  %shr79 = lshr i64 %add1.i250, 15
  %conv81 = trunc i64 %shr79 to i8
  %shr82 = lshr i64 %add1.i250, 23
  %conv84 = trunc i64 %shr82 to i8
  %shr85 = lshr i64 %add1.i250, 31
  %conv87 = trunc i64 %shr85 to i8
  %shr88 = lshr i64 %add1.i250, 39
  %conv90 = trunc i64 %shr88 to i8
  %mul = lshr i64 %add1.i250, 47
  %shr91 = and i64 %mul, 15
  %add94 = or disjoint i64 %and.i257, %shr91
  %conv96 = trunc i64 %add94 to i8
  %shr97 = lshr i64 %and.i257, 8
  %conv99 = trunc i64 %shr97 to i8
  %shr100 = lshr i64 %and.i257, 16
  %conv102 = trunc i64 %shr100 to i8
  %shr103 = lshr i64 %and.i257, 24
  %conv105 = trunc i64 %shr103 to i8
  %shr106 = lshr i64 %and.i257, 32
  %conv108 = trunc i64 %shr106 to i8
  %shr109 = lshr i64 %and.i257, 40
  %conv111 = trunc i64 %shr109 to i8
  %shl = lshr i64 %and.i257, 48
  %8 = trunc i64 %shl to i8
  %conv113 = and i8 %8, 127
  store i8 %conv, ptr %out1, align 1, !tbaa !12
  %arrayidx115 = getelementptr inbounds nuw i8, ptr %out1, i64 1
  store i8 %conv13, ptr %arrayidx115, align 1, !tbaa !12
  %arrayidx116 = getelementptr inbounds nuw i8, ptr %out1, i64 2
  store i8 %conv16, ptr %arrayidx116, align 1, !tbaa !12
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %out1, i64 3
  store i8 %conv19, ptr %arrayidx117, align 1, !tbaa !12
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i8 %conv22, ptr %arrayidx118, align 1, !tbaa !12
  %arrayidx119 = getelementptr inbounds nuw i8, ptr %out1, i64 5
  store i8 %conv25, ptr %arrayidx119, align 1, !tbaa !12
  %arrayidx120 = getelementptr inbounds nuw i8, ptr %out1, i64 6
  store i8 %conv30, ptr %arrayidx120, align 1, !tbaa !12
  %arrayidx121 = getelementptr inbounds nuw i8, ptr %out1, i64 7
  store i8 %conv33, ptr %arrayidx121, align 1, !tbaa !12
  %arrayidx122 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i8 %conv36, ptr %arrayidx122, align 1, !tbaa !12
  %arrayidx123 = getelementptr inbounds nuw i8, ptr %out1, i64 9
  store i8 %conv39, ptr %arrayidx123, align 1, !tbaa !12
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %out1, i64 10
  store i8 %conv42, ptr %arrayidx124, align 1, !tbaa !12
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %out1, i64 11
  store i8 %conv45, ptr %arrayidx125, align 1, !tbaa !12
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i8 %conv51, ptr %arrayidx126, align 1, !tbaa !12
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %out1, i64 13
  store i8 %conv54, ptr %arrayidx127, align 1, !tbaa !12
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %out1, i64 14
  store i8 %conv57, ptr %arrayidx128, align 1, !tbaa !12
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %out1, i64 15
  store i8 %conv60, ptr %arrayidx129, align 1, !tbaa !12
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i8 %conv63, ptr %arrayidx130, align 1, !tbaa !12
  %arrayidx131 = getelementptr inbounds nuw i8, ptr %out1, i64 17
  store i8 %conv66, ptr %arrayidx131, align 1, !tbaa !12
  %arrayidx132 = getelementptr inbounds nuw i8, ptr %out1, i64 18
  store i8 %conv69, ptr %arrayidx132, align 1, !tbaa !12
  %arrayidx133 = getelementptr inbounds nuw i8, ptr %out1, i64 19
  store i8 %conv75, ptr %arrayidx133, align 1, !tbaa !12
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i8 %conv78, ptr %arrayidx134, align 1, !tbaa !12
  %arrayidx135 = getelementptr inbounds nuw i8, ptr %out1, i64 21
  store i8 %conv81, ptr %arrayidx135, align 1, !tbaa !12
  %arrayidx136 = getelementptr inbounds nuw i8, ptr %out1, i64 22
  store i8 %conv84, ptr %arrayidx136, align 1, !tbaa !12
  %arrayidx137 = getelementptr inbounds nuw i8, ptr %out1, i64 23
  store i8 %conv87, ptr %arrayidx137, align 1, !tbaa !12
  %arrayidx138 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i8 %conv90, ptr %arrayidx138, align 1, !tbaa !12
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %out1, i64 25
  store i8 %conv96, ptr %arrayidx139, align 1, !tbaa !12
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %out1, i64 26
  store i8 %conv99, ptr %arrayidx140, align 1, !tbaa !12
  %arrayidx141 = getelementptr inbounds nuw i8, ptr %out1, i64 27
  store i8 %conv102, ptr %arrayidx141, align 1, !tbaa !12
  %arrayidx142 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i8 %conv105, ptr %arrayidx142, align 1, !tbaa !12
  %arrayidx143 = getelementptr inbounds nuw i8, ptr %out1, i64 29
  store i8 %conv108, ptr %arrayidx143, align 1, !tbaa !12
  %arrayidx144 = getelementptr inbounds nuw i8, ptr %out1, i64 30
  store i8 %conv111, ptr %arrayidx144, align 1, !tbaa !12
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %out1, i64 31
  store i8 %conv113, ptr %arrayidx145, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_from_bytes(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 31
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %0 to i64
  %shl = shl nuw nsw i64 %conv, 44
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 30
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !12
  %conv2 = zext i8 %1 to i64
  %shl3 = shl nuw nsw i64 %conv2, 36
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 29
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv5 = zext i8 %2 to i64
  %shl6 = shl nuw nsw i64 %conv5, 28
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %3 = load i8, ptr %arrayidx7, align 1, !tbaa !12
  %conv8 = zext i8 %3 to i64
  %shl9 = shl nuw nsw i64 %conv8, 20
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg1, i64 27
  %4 = load i8, ptr %arrayidx10, align 1, !tbaa !12
  %conv11 = zext i8 %4 to i64
  %shl12 = shl nuw nsw i64 %conv11, 12
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg1, i64 26
  %5 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %conv14 = zext i8 %5 to i64
  %shl15 = shl nuw nsw i64 %conv14, 4
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg1, i64 25
  %6 = load i8, ptr %arrayidx16, align 1, !tbaa !12
  %conv17 = zext i8 %6 to i64
  %shl18 = shl nuw nsw i64 %conv17, 47
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %7 = load i8, ptr %arrayidx19, align 1, !tbaa !12
  %conv20 = zext i8 %7 to i64
  %shl21 = shl nuw nsw i64 %conv20, 39
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %arg1, i64 23
  %8 = load i8, ptr %arrayidx22, align 1, !tbaa !12
  %conv23 = zext i8 %8 to i64
  %shl24 = shl nuw nsw i64 %conv23, 31
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %arg1, i64 22
  %9 = load i8, ptr %arrayidx25, align 1, !tbaa !12
  %conv26 = zext i8 %9 to i64
  %shl27 = shl nuw nsw i64 %conv26, 23
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %arg1, i64 21
  %10 = load i8, ptr %arrayidx28, align 1, !tbaa !12
  %conv29 = zext i8 %10 to i64
  %shl30 = shl nuw nsw i64 %conv29, 15
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %11 = load i8, ptr %arrayidx31, align 1, !tbaa !12
  %conv32 = zext i8 %11 to i64
  %shl33 = shl nuw nsw i64 %conv32, 7
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %arg1, i64 19
  %12 = load i8, ptr %arrayidx34, align 1, !tbaa !12
  %conv35 = zext i8 %12 to i64
  %shl36 = shl nuw nsw i64 %conv35, 50
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %arg1, i64 18
  %13 = load i8, ptr %arrayidx37, align 1, !tbaa !12
  %conv38 = zext i8 %13 to i64
  %shl39 = shl nuw nsw i64 %conv38, 42
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %arg1, i64 17
  %14 = load i8, ptr %arrayidx40, align 1, !tbaa !12
  %conv41 = zext i8 %14 to i64
  %shl42 = shl nuw nsw i64 %conv41, 34
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %15 = load i8, ptr %arrayidx43, align 1, !tbaa !12
  %conv44 = zext i8 %15 to i64
  %shl45 = shl nuw nsw i64 %conv44, 26
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %arg1, i64 15
  %16 = load i8, ptr %arrayidx46, align 1, !tbaa !12
  %conv47 = zext i8 %16 to i64
  %shl48 = shl nuw nsw i64 %conv47, 18
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %arg1, i64 14
  %17 = load i8, ptr %arrayidx49, align 1, !tbaa !12
  %conv50 = zext i8 %17 to i64
  %shl51 = shl nuw nsw i64 %conv50, 10
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %arg1, i64 13
  %18 = load i8, ptr %arrayidx52, align 1, !tbaa !12
  %conv53 = zext i8 %18 to i64
  %shl54 = shl nuw nsw i64 %conv53, 2
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %19 = load i8, ptr %arrayidx55, align 1, !tbaa !12
  %conv56 = zext i8 %19 to i64
  %shl57 = shl nuw nsw i64 %conv56, 45
  %arrayidx58 = getelementptr inbounds nuw i8, ptr %arg1, i64 11
  %20 = load i8, ptr %arrayidx58, align 1, !tbaa !12
  %conv59 = zext i8 %20 to i64
  %shl60 = shl nuw nsw i64 %conv59, 37
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %arg1, i64 10
  %21 = load i8, ptr %arrayidx61, align 1, !tbaa !12
  %conv62 = zext i8 %21 to i64
  %shl63 = shl nuw nsw i64 %conv62, 29
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %arg1, i64 9
  %22 = load i8, ptr %arrayidx64, align 1, !tbaa !12
  %conv65 = zext i8 %22 to i64
  %shl66 = shl nuw nsw i64 %conv65, 21
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %23 = load i8, ptr %arrayidx67, align 1, !tbaa !12
  %conv68 = zext i8 %23 to i64
  %shl69 = shl nuw nsw i64 %conv68, 13
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %arg1, i64 7
  %24 = load i8, ptr %arrayidx70, align 1, !tbaa !12
  %conv71 = zext i8 %24 to i64
  %shl72 = shl nuw nsw i64 %conv71, 5
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %arg1, i64 6
  %25 = load i8, ptr %arrayidx73, align 1, !tbaa !12
  %conv74 = zext i8 %25 to i64
  %shl75 = shl nuw nsw i64 %conv74, 48
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %arg1, i64 5
  %26 = load i8, ptr %arrayidx76, align 1, !tbaa !12
  %conv77 = zext i8 %26 to i64
  %shl78 = shl nuw nsw i64 %conv77, 40
  %arrayidx79 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %27 = load i8, ptr %arrayidx79, align 1, !tbaa !12
  %conv80 = zext i8 %27 to i64
  %shl81 = shl nuw nsw i64 %conv80, 32
  %28 = load i32, ptr %arg1, align 1
  %29 = zext i32 %28 to i64
  %add95 = or disjoint i64 %shl78, %29
  %add96 = or disjoint i64 %add95, %shl81
  %shl75.masked = and i64 %shl75, 1970324836974592
  %and = or disjoint i64 %add96, %shl75.masked
  %shr = lshr i64 %conv74, 3
  %shl57.masked = and i64 %shl57, 2216615441596416
  %add100.masked = or disjoint i64 %shl60, %shl57.masked
  %add101.masked = or disjoint i64 %add100.masked, %shl63
  %add102.masked = or disjoint i64 %add101.masked, %shl66
  %add103.masked = or disjoint i64 %add102.masked, %shl69
  %add104.masked = or disjoint i64 %add103.masked, %shl72
  %and106 = or disjoint i64 %add104.masked, %shr
  %shr107 = lshr i64 %conv56, 6
  %add110 = or disjoint i64 %shl39, %shl36
  %add111 = or disjoint i64 %add110, %shl42
  %add112 = or disjoint i64 %add111, %shl45
  %add113 = or disjoint i64 %add112, %shl48
  %add114 = or disjoint i64 %add113, %shl51
  %add115 = or disjoint i64 %add114, %shl54
  %add116 = add nuw nsw i64 %add115, %shr107
  %and117 = and i64 %add116, 2251799813685247
  %shr118 = lshr i64 %add116, 51
  %add121 = or disjoint i64 %shl21, %shl18
  %add122 = or disjoint i64 %add121, %shl24
  %add123 = or disjoint i64 %add122, %shl27
  %add124 = or disjoint i64 %add123, %shl30
  %add125 = or disjoint i64 %add124, %shl33
  %add126 = add nuw nsw i64 %add125, %shr118
  %and127 = and i64 %add126, 2251799813685247
  %shr128 = lshr i64 %add126, 51
  %add131 = or disjoint i64 %shl3, %shl
  %add132 = or disjoint i64 %add131, %shl6
  %add133 = or disjoint i64 %add132, %shl9
  %add134 = or disjoint i64 %add133, %shl12
  %add135 = or disjoint i64 %add134, %shl15
  %add136 = add nuw nsw i64 %add135, %shr128
  store i64 %and, ptr %out1, align 8, !tbaa !10
  %arrayidx138 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and106, ptr %arrayidx138, align 8, !tbaa !10
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %and117, ptr %arrayidx139, align 8, !tbaa !10
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %and127, ptr %arrayidx140, align 8, !tbaa !10
  %arrayidx141 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %add136, ptr %arrayidx141, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_relax(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %0 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %1 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %2 = load <2 x i64>, ptr %arrayidx2, align 8, !tbaa !10
  store <2 x i64> %1, ptr %out1, align 8, !tbaa !10
  store <2 x i64> %2, ptr %arrayidx7, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %0, ptr %arrayidx9, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_25519_carry_scmul_121666(ptr noundef writeonly captures(none) initializes((0, 40)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %conv = zext i64 %0 to i128
  %mul = mul nuw nsw i128 %conv, 121666
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv2 = zext i64 %1 to i128
  %mul3 = mul nuw nsw i128 %conv2, 121666
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %conv5 = zext i64 %2 to i128
  %mul6 = mul nuw nsw i128 %conv5, 121666
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %3 = load i64, ptr %arrayidx7, align 8, !tbaa !10
  %conv8 = zext i64 %3 to i128
  %mul9 = mul nuw nsw i128 %conv8, 121666
  %4 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv11 = zext i64 %4 to i128
  %mul12 = mul nuw nsw i128 %conv11, 121666
  %shr = lshr i128 %mul12, 51
  %5 = trunc i128 %mul12 to i64
  %conv14 = and i64 %5, 2251799813685246
  %add = add nuw nsw i128 %shr, %mul9
  %shr16 = lshr i128 %add, 51
  %6 = trunc i128 %add to i64
  %conv19 = and i64 %6, 2251799813685247
  %add21 = add nuw nsw i128 %shr16, %mul6
  %shr22 = lshr i128 %add21, 51
  %7 = trunc i128 %add21 to i64
  %conv25 = and i64 %7, 2251799813685247
  %add27 = add nuw nsw i128 %shr22, %mul3
  %shr28 = lshr i128 %add27, 51
  %8 = trunc i128 %add27 to i64
  %conv31 = and i64 %8, 2251799813685247
  %add33 = add nuw nsw i128 %shr28, %mul
  %shr34 = lshr i128 %add33, 51
  %conv35 = trunc nuw nsw i128 %shr34 to i64
  %9 = trunc i128 %add33 to i64
  %conv37 = and i64 %9, 2251799813685247
  %mul38 = mul nuw nsw i64 %conv35, 19
  %add39 = add nuw nsw i64 %mul38, %conv14
  %shr40 = lshr i64 %add39, 51
  %and42 = and i64 %add39, 2251799813685247
  %add44 = add nuw nsw i64 %shr40, %conv19
  %shr45 = lshr i64 %add44, 51
  %and47 = and i64 %add44, 2251799813685247
  %add49 = add nuw nsw i64 %shr45, %conv25
  store i64 %and42, ptr %out1, align 8, !tbaa !10
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and47, ptr %arrayidx51, align 8, !tbaa !10
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add49, ptr %arrayidx52, align 8, !tbaa !10
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i64 %conv31, ptr %arrayidx53, align 8, !tbaa !10
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i64 %conv37, ptr %arrayidx54, align 8, !tbaa !10
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
!9 = !{i64 2590}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
