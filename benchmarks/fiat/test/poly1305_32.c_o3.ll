; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @fiat_poly1305_value_barrier_u32(i32 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #5, !srcloc !9
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_poly1305_addcarryx_u26(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #1 {
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
define dso_local void @fiat_poly1305_subborrowx_u26(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #1 {
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

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @fiat_poly1305_cmovznz_u32(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #2 {
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
define dso_local void @fiat_poly1305_carry_mul(ptr noundef writeonly captures(none) initializes((0, 20)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %conv = zext i32 %0 to i64
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %mul = mul i32 %1, 5
  %conv2 = zext i32 %mul to i64
  %mul3 = mul nuw i64 %conv2, %conv
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 12
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %mul7 = mul i32 %2, 5
  %conv8 = zext i32 %mul7 to i64
  %mul9 = mul nuw i64 %conv8, %conv
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %mul13 = mul i32 %3, 5
  %conv14 = zext i32 %mul13 to i64
  %mul15 = mul nuw i64 %conv14, %conv
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arg2, i64 4
  %4 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %mul19 = mul i32 %4, 5
  %conv20 = zext i32 %mul19 to i64
  %mul21 = mul nuw i64 %conv20, %conv
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %conv23 = zext i32 %5 to i64
  %mul27 = mul nuw i64 %conv23, %conv2
  %mul33 = mul nuw i64 %conv23, %conv8
  %mul39 = mul nuw i64 %conv23, %conv14
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %6 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %conv41 = zext i32 %6 to i64
  %mul45 = mul nuw i64 %conv41, %conv2
  %mul51 = mul nuw i64 %conv41, %conv8
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %7 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %conv53 = zext i32 %7 to i64
  %mul57 = mul nuw i64 %conv53, %conv2
  %8 = load i32, ptr %arg2, align 4, !tbaa !5
  %conv61 = zext i32 %8 to i64
  %mul62 = mul nuw i64 %conv61, %conv
  %conv66 = zext i32 %4 to i64
  %mul67 = mul nuw i64 %conv23, %conv66
  %mul72 = mul nuw i64 %conv61, %conv23
  %conv76 = zext i32 %3 to i64
  %mul77 = mul nuw i64 %conv41, %conv76
  %mul82 = mul nuw i64 %conv41, %conv66
  %mul87 = mul nuw i64 %conv61, %conv41
  %conv91 = zext i32 %2 to i64
  %mul92 = mul nuw i64 %conv53, %conv91
  %mul97 = mul nuw i64 %conv53, %conv76
  %mul102 = mul nuw i64 %conv53, %conv66
  %mul107 = mul nuw i64 %conv61, %conv53
  %9 = load i32, ptr %arg1, align 4, !tbaa !5
  %conv109 = zext i32 %9 to i64
  %conv111 = zext i32 %1 to i64
  %mul112 = mul nuw i64 %conv109, %conv111
  %mul117 = mul nuw i64 %conv109, %conv91
  %mul122 = mul nuw i64 %conv109, %conv76
  %mul127 = mul nuw i64 %conv109, %conv66
  %mul132 = mul nuw i64 %conv109, %conv61
  %add = add i64 %mul39, %mul21
  %add133 = add i64 %add, %mul51
  %add134 = add i64 %add133, %mul57
  %add135 = add i64 %add134, %mul132
  %shr = lshr i64 %add135, 26
  %conv136 = and i64 %add135, 67108863
  %add145 = add i64 %mul27, %mul9
  %add149 = add i64 %mul33, %mul15
  %add150 = add i64 %add149, %mul45
  %add151 = add i64 %add150, %mul107
  %add152 = add i64 %add151, %mul127
  %add153 = add i64 %add152, %shr
  %shr154 = lshr i64 %add153, 26
  %10 = trunc i64 %add153 to i32
  %conv156 = and i32 %10, 67108863
  %add146 = add i64 %add145, %mul102
  %add147 = add i64 %add146, %mul87
  %add148 = add i64 %add147, %mul122
  %add157 = add i64 %add148, %shr154
  %shr158 = lshr i64 %add157, 26
  %11 = trunc i64 %add157 to i32
  %conv160 = and i32 %11, 67108863
  %add141 = add i64 %mul82, %mul3
  %add142 = add i64 %add141, %mul97
  %add143 = add i64 %add142, %mul72
  %add144 = add i64 %add143, %mul117
  %add161 = add i64 %add144, %shr158
  %shr162 = lshr i64 %add161, 26
  %12 = trunc i64 %add161 to i32
  %conv164 = and i32 %12, 67108863
  %add137 = add i64 %mul77, %mul67
  %add138 = add i64 %add137, %mul92
  %add139 = add i64 %add138, %mul62
  %add140 = add i64 %add139, %mul112
  %add165 = add i64 %add140, %shr162
  %shr166 = lshr i64 %add165, 26
  %13 = trunc i64 %add165 to i32
  %conv169 = and i32 %13, 67108863
  %conv170 = and i64 %shr166, 4294967295
  %mul171 = mul nuw nsw i64 %conv170, 5
  %add173 = add nuw nsw i64 %mul171, %conv136
  %shr174 = lshr i64 %add173, 26
  %conv175 = trunc nuw nsw i64 %shr174 to i32
  %14 = trunc i64 %add173 to i32
  %conv177 = and i32 %14, 67108863
  %add178 = add nuw nsw i32 %conv156, %conv175
  %shr179 = lshr i32 %add178, 26
  %and181 = and i32 %add178, 67108863
  %add183 = add nuw nsw i32 %shr179, %conv160
  store i32 %conv177, ptr %out1, align 4, !tbaa !5
  %arrayidx185 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %and181, ptr %arrayidx185, align 4, !tbaa !5
  %arrayidx186 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %add183, ptr %arrayidx186, align 4, !tbaa !5
  %arrayidx187 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %conv164, ptr %arrayidx187, align 4, !tbaa !5
  %arrayidx188 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %conv169, ptr %arrayidx188, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_carry_square(ptr noundef writeonly captures(none) initializes((0, 20)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = mul i32 %0, 5
  %mul1 = mul i32 %0, 10
  %mul3 = shl i32 %0, 1
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %mul5 = mul i32 %1, 5
  %mul6 = mul i32 %1, 10
  %mul8 = shl i32 %1, 1
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %mul10 = shl i32 %2, 1
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %mul12 = shl i32 %3, 1
  %conv = zext i32 %0 to i64
  %conv14 = zext i32 %mul to i64
  %mul15 = mul nuw i64 %conv14, %conv
  %conv17 = zext i32 %1 to i64
  %conv18 = zext i32 %mul1 to i64
  %mul19 = mul nuw i64 %conv17, %conv18
  %conv22 = zext i32 %mul5 to i64
  %mul23 = mul nuw i64 %conv22, %conv17
  %conv25 = zext i32 %2 to i64
  %mul27 = mul nuw i64 %conv25, %conv18
  %conv30 = zext i32 %mul6 to i64
  %mul31 = mul nuw i64 %conv25, %conv30
  %mul36 = mul nuw i64 %conv25, %conv25
  %conv38 = zext i32 %3 to i64
  %mul40 = mul nuw i64 %conv38, %conv18
  %conv43 = zext i32 %mul8 to i64
  %mul44 = mul nuw i64 %conv38, %conv43
  %conv47 = zext i32 %mul10 to i64
  %mul48 = mul nuw i64 %conv38, %conv47
  %mul53 = mul nuw i64 %conv38, %conv38
  %4 = load i32, ptr %arg1, align 4, !tbaa !5
  %conv55 = zext i32 %4 to i64
  %conv56 = zext i32 %mul3 to i64
  %mul57 = mul nuw i64 %conv55, %conv56
  %mul61 = mul nuw i64 %conv55, %conv43
  %mul65 = mul nuw i64 %conv55, %conv47
  %conv68 = zext i32 %mul12 to i64
  %mul69 = mul nuw i64 %conv55, %conv68
  %mul74 = mul nuw i64 %conv55, %conv55
  %add = add i64 %mul40, %mul31
  %add75 = add i64 %add, %mul74
  %shr = lshr i64 %add75, 26
  %conv76 = and i64 %add75, 67108863
  %add77 = add i64 %mul44, %mul36
  %add78 = add i64 %add77, %mul57
  %add79 = add i64 %mul48, %mul15
  %add80 = add i64 %add79, %mul61
  %add81 = add i64 %mul53, %mul19
  %add82 = add i64 %add81, %mul65
  %add83 = add i64 %mul27, %mul23
  %add84 = add i64 %add83, %mul69
  %add85 = add i64 %add84, %shr
  %shr86 = lshr i64 %add85, 26
  %5 = trunc i64 %add85 to i32
  %conv88 = and i32 %5, 67108863
  %add89 = add i64 %add82, %shr86
  %shr90 = lshr i64 %add89, 26
  %6 = trunc i64 %add89 to i32
  %conv92 = and i32 %6, 67108863
  %add93 = add i64 %add80, %shr90
  %shr94 = lshr i64 %add93, 26
  %7 = trunc i64 %add93 to i32
  %conv96 = and i32 %7, 67108863
  %add97 = add i64 %add78, %shr94
  %shr98 = lshr i64 %add97, 26
  %8 = trunc i64 %add97 to i32
  %conv101 = and i32 %8, 67108863
  %conv102 = and i64 %shr98, 4294967295
  %mul103 = mul nuw nsw i64 %conv102, 5
  %add105 = add nuw nsw i64 %mul103, %conv76
  %shr106 = lshr i64 %add105, 26
  %conv107 = trunc nuw nsw i64 %shr106 to i32
  %9 = trunc i64 %add105 to i32
  %conv109 = and i32 %9, 67108863
  %add110 = add nuw nsw i32 %conv88, %conv107
  %shr111 = lshr i32 %add110, 26
  %and113 = and i32 %add110, 67108863
  %add115 = add nuw nsw i32 %shr111, %conv92
  store i32 %conv109, ptr %out1, align 4, !tbaa !5
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %and113, ptr %arrayidx117, align 4, !tbaa !5
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %add115, ptr %arrayidx118, align 4, !tbaa !5
  %arrayidx119 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %conv96, ptr %arrayidx119, align 4, !tbaa !5
  %arrayidx120 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %conv101, ptr %arrayidx120, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_carry(ptr noundef writeonly captures(none) initializes((0, 20)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i32, ptr %arg1, align 4, !tbaa !5
  %shr = lshr i32 %0, 26
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %add = add i32 %shr, %1
  %shr2 = lshr i32 %add, 26
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %2 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %add4 = add i32 %shr2, %2
  %shr5 = lshr i32 %add4, 26
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add7 = add i32 %shr5, %3
  %shr8 = lshr i32 %add7, 26
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %add10 = add i32 %shr8, %4
  %and = and i32 %0, 67108863
  %shr11 = lshr i32 %add10, 26
  %mul = mul nuw nsw i32 %shr11, 5
  %add12 = add nuw nsw i32 %mul, %and
  %shr13 = lshr i32 %add12, 26
  %and15 = and i32 %add, 67108863
  %add16 = add nuw nsw i32 %shr13, %and15
  %and17 = and i32 %add12, 67108863
  %and18 = and i32 %add16, 67108863
  %shr19 = lshr i32 %add16, 26
  %and22 = and i32 %add4, 67108863
  %add23 = add nuw nsw i32 %shr19, %and22
  %and24 = and i32 %add7, 67108863
  %and25 = and i32 %add10, 67108863
  store i32 %and17, ptr %out1, align 4, !tbaa !5
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %and18, ptr %arrayidx27, align 4, !tbaa !5
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %add23, ptr %arrayidx28, align 4, !tbaa !5
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %and24, ptr %arrayidx29, align 4, !tbaa !5
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %and25, ptr %arrayidx30, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_add(ptr noundef writeonly captures(none) initializes((0, 20)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %1 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %add13 = add i32 %1, %0
  %2 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %3 = load <4 x i32>, ptr %arg2, align 4, !tbaa !5
  %4 = add <4 x i32> %3, %2
  store <4 x i32> %4, ptr %out1, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %add13, ptr %arrayidx18, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_sub(ptr noundef writeonly captures(none) initializes((0, 20)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %add15 = add i32 %0, 134217726
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %1 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %sub17 = sub i32 %add15, %1
  %2 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %3 = add <4 x i32> %2, <i32 134217718, i32 134217726, i32 134217726, i32 134217726>
  %4 = load <4 x i32>, ptr %arg2, align 4, !tbaa !5
  %5 = sub <4 x i32> %3, %4
  store <4 x i32> %5, ptr %out1, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %sub17, ptr %arrayidx22, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_opp(ptr noundef writeonly captures(none) initializes((0, 20)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %sub8 = sub i32 134217726, %0
  %1 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %2 = sub <4 x i32> <i32 134217718, i32 134217726, i32 134217726, i32 134217726>, %1
  store <4 x i32> %2, ptr %out1, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %sub8, ptr %arrayidx13, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_selectznz(ptr noundef writeonly captures(none) initializes((0, 20)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #4 {
entry:
  %tobool.i = icmp ne i8 %arg1, 0
  %conv4.i = sext i1 %tobool.i to i32
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv4.i) #5, !srcloc !9
  %not.i = xor i32 %conv4.i, -1
  %1 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %not.i) #5, !srcloc !9
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %and5.i51 = and i32 %3, %0
  %and7.i53 = and i32 %2, %1
  %or.i54 = or i32 %and5.i51, %and7.i53
  %4 = load <4 x i32>, ptr %arg2, align 4, !tbaa !5
  %5 = load <4 x i32>, ptr %arg3, align 4, !tbaa !5
  %6 = insertelement <4 x i32> poison, i32 %0, i64 0
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer
  %8 = and <4 x i32> %7, %5
  %9 = insertelement <4 x i32> poison, i32 %1, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = and <4 x i32> %10, %4
  %12 = or <4 x i32> %8, %11
  store <4 x i32> %12, ptr %out1, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %or.i54, ptr %arrayidx14, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_to_bytes(ptr noundef writeonly captures(none) initializes((0, 17)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load i32, ptr %arg1, align 4, !tbaa !5
  %sub1.i = add i32 %0, -67108859
  %shr.i = ashr i32 %sub1.i, 26
  %and.i = and i32 %sub1.i, 67108863
  %conv5.i = sub nsw i32 0, %shr.i
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %conv.i = and i32 %conv5.i, 255
  %.neg = add i32 %1, -67108863
  %sub1.i114 = sub i32 %.neg, %conv.i
  %shr.i115 = ashr i32 %sub1.i114, 26
  %and.i116 = and i32 %sub1.i114, 67108863
  %conv5.i117 = sub nsw i32 0, %shr.i115
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %conv.i118 = and i32 %conv5.i117, 255
  %.neg162 = add i32 %2, -67108863
  %sub1.i119 = sub i32 %.neg162, %conv.i118
  %shr.i120 = ashr i32 %sub1.i119, 26
  %and.i121 = and i32 %sub1.i119, 67108863
  %conv5.i122 = sub nsw i32 0, %shr.i120
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %3 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %conv.i123 = and i32 %conv5.i122, 255
  %.neg163 = add i32 %3, -67108863
  %sub1.i124 = sub i32 %.neg163, %conv.i123
  %shr.i125 = ashr i32 %sub1.i124, 26
  %and.i126 = and i32 %sub1.i124, 67108863
  %conv5.i127 = sub nsw i32 0, %shr.i125
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %conv.i128 = and i32 %conv5.i127, 255
  %.neg164 = add i32 %4, -67108863
  %sub1.i129 = sub i32 %.neg164, %conv.i128
  %tobool.i = icmp ugt i32 %sub1.i129, 67108863
  %conv4.i = sext i1 %tobool.i to i32
  %5 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv4.i) #5, !srcloc !9
  %not.i = xor i32 %conv4.i, -1
  %6 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %not.i) #5, !srcloc !9
  %and = and i32 %5, 67108859
  %add1.i = add nuw nsw i32 %and, %and.i
  %shr.i134 = lshr i32 %add1.i, 26
  %and5 = and i32 %5, 67108863
  %add.i = add nuw nsw i32 %and5, %and.i116
  %add1.i136 = add nuw nsw i32 %add.i, %shr.i134
  %shr.i138 = lshr i32 %add1.i136, 26
  %add.i141 = add nuw nsw i32 %and.i121, %and5
  %add1.i142 = add nuw nsw i32 %add.i141, %shr.i138
  %shr.i144 = lshr i32 %add1.i142, 26
  %add.i147 = add nuw nsw i32 %and.i126, %and5
  %add1.i148 = add nuw nsw i32 %add.i147, %shr.i144
  %shr.i150 = lshr i32 %add1.i148, 26
  %add.i153 = add i32 %sub1.i129, %5
  %add1.i154 = add i32 %add.i153, %shr.i150
  %and.i149 = shl i32 %add1.i148, 6
  %and.i143 = shl nuw nsw i32 %add1.i142, 4
  %and.i137 = shl nuw nsw i32 %add1.i136, 2
  %conv = trunc i32 %add1.i to i8
  %shr = lshr i32 %add1.i, 8
  %conv13 = trunc i32 %shr to i8
  %shr14 = lshr i32 %add1.i, 16
  %conv16 = trunc i32 %shr14 to i8
  %and.i133 = lshr i32 %add1.i, 24
  %shr17 = and i32 %and.i133, 3
  %add = or disjoint i32 %and.i137, %shr17
  %conv21 = trunc i32 %add to i8
  %shl10 = lshr i32 %add1.i136, 22
  %shr28 = and i32 %shl10, 15
  %add31 = or disjoint i32 %and.i143, %shr28
  %conv33 = trunc i32 %add31 to i8
  %shl9 = lshr i32 %add1.i142, 20
  %shr40 = and i32 %shl9, 63
  %add43 = or disjoint i32 %and.i149, %shr40
  %conv45 = trunc i32 %add43 to i8
  %shr46 = lshr i32 %and.i149, 8
  %conv48 = trunc i32 %shr46 to i8
  %shr49 = lshr i32 %and.i149, 16
  %conv51 = trunc i32 %shr49 to i8
  %shr52 = lshr i32 %and.i149, 24
  %conv53 = trunc nuw i32 %shr52 to i8
  %conv55 = trunc i32 %add1.i154 to i8
  %shr56 = lshr i32 %add1.i154, 8
  %conv58 = trunc i32 %shr56 to i8
  %shr59 = lshr i32 %add1.i154, 16
  %conv61 = trunc i32 %shr59 to i8
  %and.i155 = lshr i32 %add1.i154, 24
  %7 = trunc nuw i32 %and.i155 to i8
  %conv63 = and i8 %7, 3
  store i8 %conv, ptr %out1, align 1, !tbaa !10
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %out1, i64 1
  store i8 %conv13, ptr %arrayidx65, align 1, !tbaa !10
  %arrayidx66 = getelementptr inbounds nuw i8, ptr %out1, i64 2
  store i8 %conv16, ptr %arrayidx66, align 1, !tbaa !10
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %out1, i64 3
  store i8 %conv21, ptr %arrayidx67, align 1, !tbaa !10
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  %8 = lshr i32 %add1.i136, 6
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %arrayidx68, align 1
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %out1, i64 6
  store i8 %conv33, ptr %arrayidx70, align 1, !tbaa !10
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %out1, i64 7
  %10 = lshr i32 %add1.i142, 4
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %arrayidx71, align 1
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %out1, i64 9
  store i8 %conv45, ptr %arrayidx73, align 1, !tbaa !10
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %out1, i64 10
  store i8 %conv48, ptr %arrayidx74, align 1, !tbaa !10
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %out1, i64 11
  store i8 %conv51, ptr %arrayidx75, align 1, !tbaa !10
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i8 %conv53, ptr %arrayidx76, align 1, !tbaa !10
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %out1, i64 13
  store i8 %conv55, ptr %arrayidx77, align 1, !tbaa !10
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %out1, i64 14
  store i8 %conv58, ptr %arrayidx78, align 1, !tbaa !10
  %arrayidx79 = getelementptr inbounds nuw i8, ptr %out1, i64 15
  store i8 %conv61, ptr %arrayidx79, align 1, !tbaa !10
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i8 %conv63, ptr %arrayidx80, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_from_bytes(ptr noundef writeonly captures(none) initializes((0, 20)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = getelementptr i8, ptr %arg1, i64 13
  %1 = load i32, ptr %0, align 1
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %2 = load i8, ptr %arrayidx8, align 1, !tbaa !10
  %conv9 = zext i8 %2 to i32
  %shl10 = shl nuw nsw i32 %conv9, 18
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 11
  %3 = load i8, ptr %arrayidx11, align 1, !tbaa !10
  %conv12 = zext i8 %3 to i32
  %shl13 = shl nuw nsw i32 %conv12, 10
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 10
  %4 = load i8, ptr %arrayidx14, align 1, !tbaa !10
  %conv15 = zext i8 %4 to i32
  %shl16 = shl nuw nsw i32 %conv15, 2
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 9
  %5 = load i8, ptr %arrayidx17, align 1, !tbaa !10
  %conv18 = zext i8 %5 to i32
  %shl19 = shl nuw nsw i32 %conv18, 20
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %6 = load i8, ptr %arrayidx20, align 1, !tbaa !10
  %conv21 = zext i8 %6 to i32
  %shl22 = shl nuw nsw i32 %conv21, 12
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 7
  %7 = load i8, ptr %arrayidx23, align 1, !tbaa !10
  %conv24 = zext i8 %7 to i32
  %shl25 = shl nuw nsw i32 %conv24, 4
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %arg1, i64 6
  %8 = load i8, ptr %arrayidx26, align 1, !tbaa !10
  %conv27 = zext i8 %8 to i32
  %shl28 = shl nuw nsw i32 %conv27, 22
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %arg1, i64 5
  %9 = load i8, ptr %arrayidx29, align 1, !tbaa !10
  %conv30 = zext i8 %9 to i32
  %shl31 = shl nuw nsw i32 %conv30, 14
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %10 = load i8, ptr %arrayidx32, align 1, !tbaa !10
  %conv33 = zext i8 %10 to i32
  %shl34 = shl nuw nsw i32 %conv33, 6
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arg1, i64 3
  %11 = load i8, ptr %arrayidx35, align 1, !tbaa !10
  %conv36 = zext i8 %11 to i32
  %shl37 = shl nuw i32 %conv36, 24
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %arg1, i64 2
  %12 = load i8, ptr %arrayidx38, align 1, !tbaa !10
  %conv39 = zext i8 %12 to i32
  %shl40 = shl nuw nsw i32 %conv39, 16
  %13 = load i16, ptr %arg1, align 1
  %14 = zext i16 %13 to i32
  %add46 = or disjoint i32 %shl40, %14
  %shl37.masked = and i32 %shl37, 50331648
  %and = or disjoint i32 %add46, %shl37.masked
  %shr = lshr i8 %11, 2
  %conv49 = zext nneg i8 %shr to i32
  %add50 = or disjoint i32 %shl34, %conv49
  %add51 = or disjoint i32 %add50, %shl31
  %shl28.masked = and i32 %shl28, 62914560
  %and53 = or disjoint i32 %add51, %shl28.masked
  %shr54 = lshr i8 %8, 4
  %conv56 = zext nneg i8 %shr54 to i32
  %add57 = or disjoint i32 %shl25, %conv56
  %add58 = or disjoint i32 %add57, %shl22
  %shl19.masked = and i32 %shl19, 66060288
  %and60 = or disjoint i32 %add58, %shl19.masked
  %shr61 = lshr i8 %5, 6
  %conv63 = zext nneg i8 %shr61 to i32
  %add64 = or disjoint i32 %shl16, %conv63
  %add65 = or disjoint i32 %add64, %shl13
  %add66 = or disjoint i32 %add65, %shl10
  store i32 %and, ptr %out1, align 4, !tbaa !5
  %arrayidx72 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %and53, ptr %arrayidx72, align 4, !tbaa !5
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %and60, ptr %arrayidx73, align 4, !tbaa !5
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %add66, ptr %arrayidx74, align 4, !tbaa !5
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %1, ptr %arrayidx75, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_relax(ptr noundef writeonly captures(none) initializes((0, 20)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %1 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  store <4 x i32> %1, ptr %out1, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %0, ptr %arrayidx9, align 4, !tbaa !5
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
!9 = !{i64 2006}
!10 = !{!7, !7, i64 0}
