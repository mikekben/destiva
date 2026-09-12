; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @fiat_poly1305_value_barrier_u64(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %a) #5, !srcloc !9
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_poly1305_addcarryx_u44(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %add = add i64 %arg2, %conv
  %add1 = add i64 %add, %arg3
  %and = and i64 %add1, 17592186044415
  %shr = lshr i64 %add1, 44
  %conv2 = trunc i64 %shr to i8
  store i64 %and, ptr %out1, align 8, !tbaa !10
  store i8 %conv2, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_poly1305_subborrowx_u44(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %0 = add i64 %arg3, %conv
  %sub1 = sub i64 %arg2, %0
  %shr = lshr i64 %sub1, 44
  %conv2 = trunc i64 %shr to i8
  %and = and i64 %sub1, 17592186044415
  store i64 %and, ptr %out1, align 8, !tbaa !10
  %sub4 = sub i8 0, %conv2
  store i8 %sub4, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_poly1305_addcarryx_u43(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %add = add i64 %arg2, %conv
  %add1 = add i64 %add, %arg3
  %and = and i64 %add1, 8796093022207
  %shr = lshr i64 %add1, 43
  %conv2 = trunc i64 %shr to i8
  store i64 %and, ptr %out1, align 8, !tbaa !10
  store i8 %conv2, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_poly1305_subborrowx_u43(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i64
  %0 = add i64 %arg3, %conv
  %sub1 = sub i64 %arg2, %0
  %shr = lshr i64 %sub1, 43
  %conv2 = trunc i64 %shr to i8
  %and = and i64 %sub1, 8796093022207
  store i64 %and, ptr %out1, align 8, !tbaa !10
  %sub4 = sub i8 0, %conv2
  store i8 %sub4, ptr %out2, align 1, !tbaa !12
  ret void
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @fiat_poly1305_cmovznz_u64(ptr noundef writeonly captures(none) initializes((0, 8)) %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) local_unnamed_addr #2 {
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
define dso_local void @fiat_poly1305_carry_mul(ptr noundef writeonly captures(none) initializes((0, 24)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %conv = zext i64 %0 to i128
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %mul = mul i64 %1, 5
  %conv2 = zext i64 %mul to i128
  %mul3 = mul nuw i128 %conv2, %conv
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %2 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %mul7 = mul i64 %2, 10
  %conv8 = zext i64 %mul7 to i128
  %mul9 = mul nuw i128 %conv8, %conv
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %3 = load i64, ptr %arrayidx10, align 8, !tbaa !10
  %conv11 = zext i64 %3 to i128
  %mul13 = mul i64 %1, 10
  %conv14 = zext i64 %mul13 to i128
  %mul15 = mul nuw i128 %conv11, %conv14
  %4 = load i64, ptr %arg2, align 8, !tbaa !10
  %conv19 = zext i64 %4 to i128
  %mul20 = mul nuw i128 %conv19, %conv
  %mul24 = shl i64 %2, 1
  %conv25 = zext i64 %mul24 to i128
  %mul26 = mul nuw i128 %conv11, %conv25
  %mul31 = mul nuw i128 %conv19, %conv11
  %5 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv33 = zext i64 %5 to i128
  %conv35 = zext i64 %1 to i128
  %mul36 = mul nuw i128 %conv33, %conv35
  %conv40 = zext i64 %2 to i128
  %mul41 = mul nuw i128 %conv33, %conv40
  %mul46 = mul nuw i128 %conv33, %conv19
  %add = add i128 %mul15, %mul9
  %add47 = add i128 %add, %mul46
  %shr = lshr i128 %add47, 44
  %6 = trunc i128 %add47 to i64
  %conv49 = and i64 %6, 17592186044415
  %add50 = add i128 %mul20, %mul26
  %add51 = add i128 %add50, %mul36
  %add52 = add i128 %mul31, %mul3
  %add53 = add i128 %add52, %mul41
  %conv54 = and i128 %shr, 18446744073709551615
  %add55 = add i128 %add53, %conv54
  %shr56 = lshr i128 %add55, 43
  %7 = trunc i128 %add55 to i64
  %conv59 = and i64 %7, 8796093022207
  %conv60 = and i128 %shr56, 18446744073709551615
  %add61 = add i128 %add51, %conv60
  %shr62 = lshr i128 %add61, 43
  %conv63 = trunc i128 %shr62 to i64
  %8 = trunc i128 %add61 to i64
  %conv65 = and i64 %8, 8796093022207
  %mul66 = mul i64 %conv63, 5
  %add67 = add i64 %mul66, %conv49
  %shr68 = lshr i64 %add67, 44
  %and69 = and i64 %add67, 17592186044415
  %add70 = add nuw nsw i64 %shr68, %conv59
  %shr71 = lshr i64 %add70, 43
  %and73 = and i64 %add70, 8796093022207
  %add75 = add nuw nsw i64 %shr71, %conv65
  store i64 %and69, ptr %out1, align 8, !tbaa !10
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and73, ptr %arrayidx77, align 8, !tbaa !10
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add75, ptr %arrayidx78, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_carry_square(ptr noundef writeonly captures(none) initializes((0, 24)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %mul = mul i64 %0, 5
  %mul3 = shl i64 %0, 1
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %mul5 = shl i64 %1, 1
  %conv = zext i64 %0 to i128
  %conv7 = zext i64 %mul to i128
  %mul8 = mul nuw i128 %conv7, %conv
  %conv10 = zext i64 %1 to i128
  %mul11 = mul i64 %0, 20
  %conv12 = zext i64 %mul11 to i128
  %mul13 = mul nuw i128 %conv10, %conv12
  %conv18 = zext i64 %mul5 to i128
  %mul19 = mul nuw i128 %conv18, %conv10
  %2 = load i64, ptr %arg1, align 8, !tbaa !10
  %conv21 = zext i64 %2 to i128
  %conv22 = zext i64 %mul3 to i128
  %mul23 = mul nuw i128 %conv21, %conv22
  %mul27 = mul nuw i128 %conv21, %conv18
  %mul32 = mul nuw i128 %conv21, %conv21
  %add = add i128 %mul32, %mul13
  %shr = lshr i128 %add, 44
  %3 = trunc i128 %add to i64
  %conv34 = and i64 %3, 17592186044415
  %add35 = add i128 %mul23, %mul19
  %add36 = add i128 %mul27, %mul8
  %conv37 = and i128 %shr, 18446744073709551615
  %add38 = add i128 %add36, %conv37
  %shr39 = lshr i128 %add38, 43
  %4 = trunc i128 %add38 to i64
  %conv42 = and i64 %4, 8796093022207
  %conv43 = and i128 %shr39, 18446744073709551615
  %add44 = add i128 %add35, %conv43
  %shr45 = lshr i128 %add44, 43
  %conv46 = trunc i128 %shr45 to i64
  %5 = trunc i128 %add44 to i64
  %conv48 = and i64 %5, 8796093022207
  %mul49 = mul i64 %conv46, 5
  %add50 = add i64 %mul49, %conv34
  %shr51 = lshr i64 %add50, 44
  %and52 = and i64 %add50, 17592186044415
  %add53 = add nuw nsw i64 %shr51, %conv42
  %shr54 = lshr i64 %add53, 43
  %and56 = and i64 %add53, 8796093022207
  %add58 = add nuw nsw i64 %shr54, %conv48
  store i64 %and52, ptr %out1, align 8, !tbaa !10
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and56, ptr %arrayidx60, align 8, !tbaa !10
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add58, ptr %arrayidx61, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_carry(ptr noundef writeonly captures(none) initializes((0, 24)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %shr = lshr i64 %0, 44
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %add = add i64 %shr, %1
  %shr2 = lshr i64 %add, 43
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %add4 = add i64 %shr2, %2
  %and = and i64 %0, 17592186044415
  %shr5 = lshr i64 %add4, 43
  %mul = mul nuw nsw i64 %shr5, 5
  %add6 = add nuw nsw i64 %mul, %and
  %shr7 = lshr i64 %add6, 44
  %and9 = and i64 %add, 8796093022207
  %add10 = add nuw nsw i64 %shr7, %and9
  %and11 = and i64 %add6, 17592186044415
  %and12 = and i64 %add10, 8796093022207
  %shr13 = lshr i64 %add10, 43
  %and16 = and i64 %add4, 8796093022207
  %add17 = add nuw nsw i64 %shr13, %and16
  store i64 %and11, ptr %out1, align 8, !tbaa !10
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and12, ptr %arrayidx19, align 8, !tbaa !10
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add17, ptr %arrayidx20, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_add(ptr noundef writeonly captures(none) initializes((0, 24)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %1 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %add7 = add i64 %1, %0
  %2 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %3 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %4 = add <2 x i64> %3, %2
  store <2 x i64> %4, ptr %out1, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add7, ptr %arrayidx10, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_sub(ptr noundef writeonly captures(none) initializes((0, 24)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i64, ptr %arrayidx6, align 8, !tbaa !10
  %add7 = add i64 %0, 17592186044414
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %1 = load i64, ptr %arrayidx8, align 8, !tbaa !10
  %sub9 = sub i64 %add7, %1
  %2 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %3 = add <2 x i64> %2, <i64 35184372088822, i64 17592186044414>
  %4 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %5 = sub <2 x i64> %3, %4
  store <2 x i64> %5, ptr %out1, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %sub9, ptr %arrayidx12, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_opp(ptr noundef writeonly captures(none) initializes((0, 24)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i64, ptr %arrayidx3, align 8, !tbaa !10
  %sub4 = sub i64 17592186044414, %0
  %1 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  %2 = sub <2 x i64> <i64 35184372088822, i64 17592186044414>, %1
  store <2 x i64> %2, ptr %out1, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %sub4, ptr %arrayidx7, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_selectznz(ptr noundef writeonly captures(none) initializes((0, 24)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #4 {
entry:
  %tobool.i = icmp ne i8 %arg1, 0
  %conv4.i = sext i1 %tobool.i to i64
  %0 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #5, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %1 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #5, !srcloc !9
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %2 = load i64, ptr %arrayidx4, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg3, i64 16
  %3 = load i64, ptr %arrayidx5, align 8, !tbaa !10
  %and5.i25 = and i64 %3, %0
  %and7.i27 = and i64 %2, %1
  %or.i28 = or i64 %and5.i25, %and7.i27
  %4 = load <2 x i64>, ptr %arg2, align 8, !tbaa !10
  %5 = load <2 x i64>, ptr %arg3, align 8, !tbaa !10
  %6 = insertelement <2 x i64> poison, i64 %0, i64 0
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> zeroinitializer
  %8 = and <2 x i64> %7, %5
  %9 = insertelement <2 x i64> poison, i64 %1, i64 0
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer
  %11 = and <2 x i64> %10, %4
  %12 = or <2 x i64> %8, %11
  store <2 x i64> %12, ptr %out1, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %or.i28, ptr %arrayidx8, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_to_bytes(ptr noundef writeonly captures(none) initializes((0, 17)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load i64, ptr %arg1, align 8, !tbaa !10
  %sub1.i = add i64 %0, -17592186044411
  %shr.i = lshr i64 %sub1.i, 44
  %and.i = and i64 %sub1.i, 17592186044415
  %sub4.i = sub nsw i64 0, %shr.i
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %1 = load i64, ptr %arrayidx1, align 8, !tbaa !10
  %conv.i = and i64 %sub4.i, 255
  %.neg = add i64 %1, -8796093022207
  %sub1.i108 = sub i64 %.neg, %conv.i
  %shr.i109 = lshr i64 %sub1.i108, 43
  %and.i111 = and i64 %sub1.i108, 8796093022207
  %sub4.i112 = sub nsw i64 0, %shr.i109
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %conv.i113 = and i64 %sub4.i112, 255
  %.neg135 = add i64 %2, -8796093022207
  %sub1.i114 = sub i64 %.neg135, %conv.i113
  %3 = and i64 %sub1.i114, 2243003720663040
  %tobool.i = icmp ne i64 %3, 0
  %conv4.i = sext i1 %tobool.i to i64
  %4 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %conv4.i) #5, !srcloc !9
  %not.i = xor i64 %conv4.i, -1
  %5 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %not.i) #5, !srcloc !9
  %and = and i64 %4, 17592186044411
  %add1.i = add nuw nsw i64 %and, %and.i
  %shr.i120 = lshr i64 %add1.i, 44
  %and3 = and i64 %4, 8796093022207
  %add.i = add nuw nsw i64 %and.i111, %and3
  %add1.i123 = add nuw nsw i64 %add.i, %shr.i120
  %shr.i125 = lshr i64 %add1.i123, 43
  %add.i128 = add i64 %sub1.i114, %4
  %add1.i129 = add i64 %add.i128, %shr.i125
  %and.i130 = shl i64 %add1.i129, 7
  %and.i124 = shl nuw nsw i64 %add1.i123, 4
  %conv = trunc i64 %add1.i to i8
  %shr = lshr i64 %add1.i, 8
  %conv8 = trunc i64 %shr to i8
  %shr9 = lshr i64 %add1.i, 16
  %conv11 = trunc i64 %shr9 to i8
  %shr12 = lshr i64 %add1.i, 24
  %conv14 = trunc i64 %shr12 to i8
  %shr15 = lshr i64 %add1.i, 32
  %conv17 = trunc i64 %shr15 to i8
  %and.i119 = lshr i64 %add1.i, 40
  %shr18 = and i64 %and.i119, 15
  %add = or disjoint i64 %and.i124, %shr18
  %conv22 = trunc i64 %add to i8
  %shl5 = lshr i64 %add1.i123, 36
  %shr35 = and i64 %shl5, 127
  %add38 = or disjoint i64 %and.i130, %shr35
  %conv40 = trunc i64 %add38 to i8
  %shr41 = lshr i64 %and.i130, 8
  %conv43 = trunc i64 %shr41 to i8
  %shr44 = lshr i64 %and.i130, 16
  %conv46 = trunc i64 %shr44 to i8
  %shr47 = lshr i64 %and.i130, 24
  %conv49 = trunc i64 %shr47 to i8
  %shr50 = lshr i64 %and.i130, 32
  %conv52 = trunc i64 %shr50 to i8
  %shr53 = lshr i64 %and.i130, 40
  %conv55 = trunc i64 %shr53 to i8
  %shl = lshr i64 %and.i130, 48
  %6 = trunc i64 %shl to i8
  %conv57 = and i8 %6, 3
  store i8 %conv, ptr %out1, align 1, !tbaa !12
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %out1, i64 1
  store i8 %conv8, ptr %arrayidx59, align 1, !tbaa !12
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %out1, i64 2
  store i8 %conv11, ptr %arrayidx60, align 1, !tbaa !12
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %out1, i64 3
  store i8 %conv14, ptr %arrayidx61, align 1, !tbaa !12
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i8 %conv17, ptr %arrayidx62, align 1, !tbaa !12
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %out1, i64 5
  store i8 %conv22, ptr %arrayidx63, align 1, !tbaa !12
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %out1, i64 6
  %7 = lshr i64 %add1.i123, 4
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %arrayidx64, align 1
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %out1, i64 10
  store i8 %conv40, ptr %arrayidx68, align 1, !tbaa !12
  %arrayidx69 = getelementptr inbounds nuw i8, ptr %out1, i64 11
  store i8 %conv43, ptr %arrayidx69, align 1, !tbaa !12
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i8 %conv46, ptr %arrayidx70, align 1, !tbaa !12
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %out1, i64 13
  store i8 %conv49, ptr %arrayidx71, align 1, !tbaa !12
  %arrayidx72 = getelementptr inbounds nuw i8, ptr %out1, i64 14
  store i8 %conv52, ptr %arrayidx72, align 1, !tbaa !12
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %out1, i64 15
  store i8 %conv55, ptr %arrayidx73, align 1, !tbaa !12
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i8 %conv57, ptr %arrayidx74, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_from_bytes(ptr noundef writeonly captures(none) initializes((0, 24)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %0 to i64
  %shl = shl nuw nsw i64 %conv, 41
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 15
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !12
  %conv2 = zext i8 %1 to i64
  %shl3 = shl nuw nsw i64 %conv2, 33
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 14
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv5 = zext i8 %2 to i64
  %shl6 = shl nuw nsw i64 %conv5, 25
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 13
  %3 = load i8, ptr %arrayidx7, align 1, !tbaa !12
  %conv8 = zext i8 %3 to i64
  %shl9 = shl nuw nsw i64 %conv8, 17
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %4 = load i8, ptr %arrayidx10, align 1, !tbaa !12
  %conv11 = zext i8 %4 to i64
  %shl12 = shl nuw nsw i64 %conv11, 9
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg1, i64 11
  %5 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %conv14 = zext i8 %5 to i64
  %mul = shl nuw nsw i64 %conv14, 1
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 10
  %6 = load i8, ptr %arrayidx15, align 1, !tbaa !12
  %conv16 = zext i8 %6 to i64
  %shl17 = shl nuw nsw i64 %conv16, 36
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arg1, i64 9
  %7 = load i8, ptr %arrayidx18, align 1, !tbaa !12
  %conv19 = zext i8 %7 to i64
  %shl20 = shl nuw nsw i64 %conv19, 28
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %8 = load i8, ptr %arrayidx21, align 1, !tbaa !12
  %conv22 = zext i8 %8 to i64
  %shl23 = shl nuw nsw i64 %conv22, 20
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg1, i64 7
  %9 = load i8, ptr %arrayidx24, align 1, !tbaa !12
  %conv25 = zext i8 %9 to i64
  %shl26 = shl nuw nsw i64 %conv25, 12
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %arg1, i64 6
  %10 = load i8, ptr %arrayidx27, align 1, !tbaa !12
  %conv28 = zext i8 %10 to i64
  %shl29 = shl nuw nsw i64 %conv28, 4
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %arg1, i64 5
  %11 = load i8, ptr %arrayidx30, align 1, !tbaa !12
  %conv31 = zext i8 %11 to i64
  %shl32 = shl nuw nsw i64 %conv31, 40
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %12 = load i8, ptr %arrayidx33, align 1, !tbaa !12
  %conv34 = zext i8 %12 to i64
  %shl35 = shl nuw nsw i64 %conv34, 32
  %13 = load i32, ptr %arg1, align 1
  %14 = zext i32 %13 to i64
  %shl32.masked = and i64 %shl32, 16492674416640
  %add49.masked = or disjoint i64 %shl32.masked, %14
  %and = or disjoint i64 %add49.masked, %shl35
  %shr = lshr i64 %conv31, 4
  %shl17.masked = and i64 %shl17, 8727373545472
  %add53.masked = or disjoint i64 %shl20, %shl17.masked
  %add54.masked = or disjoint i64 %add53.masked, %shl23
  %add55.masked = or disjoint i64 %add54.masked, %shl26
  %add56.masked = or disjoint i64 %add55.masked, %shl29
  %and58 = or disjoint i64 %add56.masked, %shr
  %shr59 = lshr i64 %conv16, 7
  %add62 = or disjoint i64 %shl3, %shl
  %add63 = or disjoint i64 %add62, %shl6
  %add64 = or disjoint i64 %add63, %shl9
  %add65 = or disjoint i64 %add64, %shl12
  %add66 = or disjoint i64 %add65, %mul
  %add67 = or disjoint i64 %add66, %shr59
  store i64 %and, ptr %out1, align 8, !tbaa !10
  %arrayidx69 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i64 %and58, ptr %arrayidx69, align 8, !tbaa !10
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %add67, ptr %arrayidx70, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_poly1305_relax(ptr noundef writeonly captures(none) initializes((0, 24)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %0 = load i64, ptr %arrayidx2, align 8, !tbaa !10
  %1 = load <2 x i64>, ptr %arg1, align 8, !tbaa !10
  store <2 x i64> %1, ptr %out1, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i64 %0, ptr %arrayidx5, align 8, !tbaa !10
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
!9 = !{i64 2142}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!7, !7, i64 0}
