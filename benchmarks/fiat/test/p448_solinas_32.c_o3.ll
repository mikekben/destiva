; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @fiat_p448_value_barrier_u32(i32 noundef %a) local_unnamed_addr #0 {
entry:
  %0 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %a) #5, !srcloc !9
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p448_addcarryx_u28(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i32
  %add = add i32 %arg2, %conv
  %add1 = add i32 %add, %arg3
  %and = and i32 %add1, 268435455
  %shr = lshr i32 %add1, 28
  %conv2 = trunc nuw nsw i32 %shr to i8
  store i32 %and, ptr %out1, align 4, !tbaa !5
  store i8 %conv2, ptr %out2, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fiat_p448_subborrowx_u28(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, ptr noundef writeonly captures(none) initializes((0, 1)) %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #1 {
entry:
  %conv = zext i8 %arg1 to i32
  %0 = add i32 %arg3, %conv
  %sub1 = sub i32 %arg2, %0
  %shr = ashr i32 %sub1, 28
  %and = and i32 %sub1, 268435455
  store i32 %and, ptr %out1, align 4, !tbaa !5
  %1 = trunc nsw i32 %shr to i8
  %conv5 = sub nsw i8 0, %1
  store i8 %conv5, ptr %out2, align 1, !tbaa !10
  ret void
}

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @fiat_p448_cmovznz_u32(ptr noundef writeonly captures(none) initializes((0, 4)) %out1, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) local_unnamed_addr #2 {
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
define dso_local void @fiat_p448_carry_mul(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 60
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %conv = zext i32 %0 to i64
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg2, i64 60
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %conv2 = zext i32 %1 to i64
  %mul = mul nuw i64 %conv2, %conv
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg2, i64 56
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %conv6 = zext i32 %2 to i64
  %mul7 = mul nuw i64 %conv6, %conv
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg2, i64 52
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %conv11 = zext i32 %3 to i64
  %mul12 = mul nuw i64 %conv11, %conv
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %4 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %conv16 = zext i32 %4 to i64
  %mul17 = mul nuw i64 %conv16, %conv
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arg2, i64 44
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %conv21 = zext i32 %5 to i64
  %mul22 = mul nuw i64 %conv21, %conv
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %arg2, i64 40
  %6 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %conv26 = zext i32 %6 to i64
  %mul27 = mul nuw i64 %conv26, %conv
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %arg2, i64 36
  %7 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %conv31 = zext i32 %7 to i64
  %mul32 = mul nuw i64 %conv31, %conv
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %8 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %conv34 = zext i32 %8 to i64
  %mul37 = mul nuw i64 %conv34, %conv2
  %mul42 = mul nuw i64 %conv34, %conv6
  %mul47 = mul nuw i64 %conv34, %conv11
  %mul52 = mul nuw i64 %conv34, %conv16
  %mul57 = mul nuw i64 %conv34, %conv21
  %mul62 = mul nuw i64 %conv34, %conv26
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %arg1, i64 52
  %9 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %conv64 = zext i32 %9 to i64
  %mul67 = mul nuw i64 %conv64, %conv2
  %mul72 = mul nuw i64 %conv64, %conv6
  %mul77 = mul nuw i64 %conv64, %conv11
  %mul82 = mul nuw i64 %conv64, %conv16
  %mul87 = mul nuw i64 %conv64, %conv21
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %10 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %conv89 = zext i32 %10 to i64
  %mul92 = mul nuw i64 %conv89, %conv2
  %mul97 = mul nuw i64 %conv89, %conv6
  %mul102 = mul nuw i64 %conv89, %conv11
  %mul107 = mul nuw i64 %conv89, %conv16
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %arg1, i64 44
  %11 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %conv109 = zext i32 %11 to i64
  %mul112 = mul nuw i64 %conv109, %conv2
  %mul117 = mul nuw i64 %conv109, %conv6
  %mul122 = mul nuw i64 %conv109, %conv11
  %arrayidx123 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %12 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %conv124 = zext i32 %12 to i64
  %mul127 = mul nuw i64 %conv124, %conv2
  %mul132 = mul nuw i64 %conv124, %conv6
  %arrayidx133 = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %13 = load i32, ptr %arrayidx133, align 4, !tbaa !5
  %conv134 = zext i32 %13 to i64
  %mul137 = mul nuw i64 %conv134, %conv2
  %arrayidx315 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %14 = load i32, ptr %arrayidx315, align 4, !tbaa !5
  %conv316 = zext i32 %14 to i64
  %mul317 = mul nuw i64 %conv316, %conv
  %arrayidx320 = getelementptr inbounds nuw i8, ptr %arg2, i64 28
  %15 = load i32, ptr %arrayidx320, align 4, !tbaa !5
  %conv321 = zext i32 %15 to i64
  %mul322 = mul nuw i64 %conv321, %conv
  %arrayidx325 = getelementptr inbounds nuw i8, ptr %arg2, i64 24
  %16 = load i32, ptr %arrayidx325, align 4, !tbaa !5
  %conv326 = zext i32 %16 to i64
  %mul327 = mul nuw i64 %conv326, %conv
  %arrayidx330 = getelementptr inbounds nuw i8, ptr %arg2, i64 20
  %17 = load i32, ptr %arrayidx330, align 4, !tbaa !5
  %conv331 = zext i32 %17 to i64
  %mul332 = mul nuw i64 %conv331, %conv
  %arrayidx335 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %18 = load i32, ptr %arrayidx335, align 4, !tbaa !5
  %conv336 = zext i32 %18 to i64
  %mul337 = mul nuw i64 %conv336, %conv
  %arrayidx340 = getelementptr inbounds nuw i8, ptr %arg2, i64 12
  %19 = load i32, ptr %arrayidx340, align 4, !tbaa !5
  %conv341 = zext i32 %19 to i64
  %mul342 = mul nuw i64 %conv341, %conv
  %arrayidx345 = getelementptr inbounds nuw i8, ptr %arg2, i64 8
  %20 = load i32, ptr %arrayidx345, align 4, !tbaa !5
  %conv346 = zext i32 %20 to i64
  %mul347 = mul nuw i64 %conv346, %conv
  %arrayidx350 = getelementptr inbounds nuw i8, ptr %arg2, i64 4
  %21 = load i32, ptr %arrayidx350, align 4, !tbaa !5
  %conv351 = zext i32 %21 to i64
  %mul352 = mul nuw i64 %conv351, %conv
  %mul387 = mul nuw i64 %conv34, %conv31
  %mul392 = mul nuw i64 %conv316, %conv34
  %mul397 = mul nuw i64 %conv321, %conv34
  %mul402 = mul nuw i64 %conv326, %conv34
  %mul407 = mul nuw i64 %conv331, %conv34
  %mul412 = mul nuw i64 %conv336, %conv34
  %mul417 = mul nuw i64 %conv341, %conv34
  %mul422 = mul nuw i64 %conv346, %conv34
  %mul452 = mul nuw i64 %conv64, %conv26
  %mul457 = mul nuw i64 %conv64, %conv31
  %mul462 = mul nuw i64 %conv316, %conv64
  %mul467 = mul nuw i64 %conv321, %conv64
  %mul472 = mul nuw i64 %conv326, %conv64
  %mul477 = mul nuw i64 %conv331, %conv64
  %mul482 = mul nuw i64 %conv336, %conv64
  %mul487 = mul nuw i64 %conv341, %conv64
  %mul512 = mul nuw i64 %conv89, %conv21
  %mul517 = mul nuw i64 %conv89, %conv26
  %mul522 = mul nuw i64 %conv89, %conv31
  %mul527 = mul nuw i64 %conv316, %conv89
  %mul532 = mul nuw i64 %conv321, %conv89
  %mul537 = mul nuw i64 %conv326, %conv89
  %mul542 = mul nuw i64 %conv331, %conv89
  %mul547 = mul nuw i64 %conv336, %conv89
  %mul567 = mul nuw i64 %conv109, %conv16
  %mul572 = mul nuw i64 %conv109, %conv21
  %mul577 = mul nuw i64 %conv109, %conv26
  %mul582 = mul nuw i64 %conv109, %conv31
  %mul587 = mul nuw i64 %conv316, %conv109
  %mul592 = mul nuw i64 %conv321, %conv109
  %mul597 = mul nuw i64 %conv326, %conv109
  %mul602 = mul nuw i64 %conv331, %conv109
  %mul617 = mul nuw i64 %conv124, %conv11
  %mul622 = mul nuw i64 %conv124, %conv16
  %mul627 = mul nuw i64 %conv124, %conv21
  %mul632 = mul nuw i64 %conv124, %conv26
  %mul637 = mul nuw i64 %conv124, %conv31
  %mul642 = mul nuw i64 %conv316, %conv124
  %mul647 = mul nuw i64 %conv321, %conv124
  %mul652 = mul nuw i64 %conv326, %conv124
  %mul662 = mul nuw i64 %conv134, %conv6
  %mul667 = mul nuw i64 %conv134, %conv11
  %mul672 = mul nuw i64 %conv134, %conv16
  %mul677 = mul nuw i64 %conv134, %conv21
  %mul682 = mul nuw i64 %conv134, %conv26
  %mul687 = mul nuw i64 %conv134, %conv31
  %mul692 = mul nuw i64 %conv316, %conv134
  %mul697 = mul nuw i64 %conv321, %conv134
  %arrayidx698 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %22 = load i32, ptr %arrayidx698, align 4, !tbaa !5
  %conv699 = zext i32 %22 to i64
  %mul702 = mul nuw i64 %conv699, %conv2
  %mul707 = mul nuw i64 %conv699, %conv6
  %mul712 = mul nuw i64 %conv699, %conv11
  %mul717 = mul nuw i64 %conv699, %conv16
  %mul722 = mul nuw i64 %conv699, %conv21
  %mul727 = mul nuw i64 %conv699, %conv26
  %mul732 = mul nuw i64 %conv699, %conv31
  %mul737 = mul nuw i64 %conv699, %conv316
  %arrayidx738 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %23 = load i32, ptr %arrayidx738, align 4, !tbaa !5
  %conv739 = zext i32 %23 to i64
  %mul742 = mul nuw i64 %conv739, %conv2
  %mul747 = mul nuw i64 %conv739, %conv6
  %mul752 = mul nuw i64 %conv739, %conv11
  %mul757 = mul nuw i64 %conv739, %conv16
  %mul762 = mul nuw i64 %conv739, %conv21
  %mul767 = mul nuw i64 %conv739, %conv26
  %mul772 = mul nuw i64 %conv739, %conv31
  %arrayidx773 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %24 = load i32, ptr %arrayidx773, align 4, !tbaa !5
  %conv774 = zext i32 %24 to i64
  %mul777 = mul nuw i64 %conv774, %conv2
  %mul782 = mul nuw i64 %conv774, %conv6
  %mul787 = mul nuw i64 %conv774, %conv11
  %mul792 = mul nuw i64 %conv774, %conv16
  %mul797 = mul nuw i64 %conv774, %conv21
  %mul802 = mul nuw i64 %conv774, %conv26
  %arrayidx803 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %25 = load i32, ptr %arrayidx803, align 4, !tbaa !5
  %conv804 = zext i32 %25 to i64
  %mul807 = mul nuw i64 %conv804, %conv2
  %mul812 = mul nuw i64 %conv804, %conv6
  %mul817 = mul nuw i64 %conv804, %conv11
  %mul822 = mul nuw i64 %conv804, %conv16
  %mul827 = mul nuw i64 %conv804, %conv21
  %arrayidx828 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %26 = load i32, ptr %arrayidx828, align 4, !tbaa !5
  %conv829 = zext i32 %26 to i64
  %mul832 = mul nuw i64 %conv829, %conv2
  %mul837 = mul nuw i64 %conv829, %conv6
  %mul842 = mul nuw i64 %conv829, %conv11
  %mul847 = mul nuw i64 %conv829, %conv16
  %arrayidx848 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %27 = load i32, ptr %arrayidx848, align 4, !tbaa !5
  %conv849 = zext i32 %27 to i64
  %mul852 = mul nuw i64 %conv849, %conv2
  %mul857 = mul nuw i64 %conv849, %conv6
  %mul862 = mul nuw i64 %conv849, %conv11
  %arrayidx863 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %28 = load i32, ptr %arrayidx863, align 4, !tbaa !5
  %conv864 = zext i32 %28 to i64
  %mul867 = mul nuw i64 %conv864, %conv2
  %mul872 = mul nuw i64 %conv864, %conv6
  %arrayidx873 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %29 = load i32, ptr %arrayidx873, align 4, !tbaa !5
  %conv874 = zext i32 %29 to i64
  %mul877 = mul nuw i64 %conv874, %conv2
  %30 = load i32, ptr %arg2, align 4, !tbaa !5
  %conv1341 = zext i32 %30 to i64
  %mul1342 = mul nuw i64 %conv1341, %conv
  %mul1347 = mul nuw i64 %conv351, %conv34
  %mul1352 = mul nuw i64 %conv1341, %conv34
  %mul1357 = mul nuw i64 %conv346, %conv64
  %mul1362 = mul nuw i64 %conv351, %conv64
  %mul1367 = mul nuw i64 %conv1341, %conv64
  %mul1372 = mul nuw i64 %conv341, %conv89
  %mul1377 = mul nuw i64 %conv346, %conv89
  %mul1382 = mul nuw i64 %conv351, %conv89
  %mul1387 = mul nuw i64 %conv1341, %conv89
  %mul1392 = mul nuw i64 %conv336, %conv109
  %mul1397 = mul nuw i64 %conv341, %conv109
  %mul1402 = mul nuw i64 %conv346, %conv109
  %mul1407 = mul nuw i64 %conv351, %conv109
  %mul1412 = mul nuw i64 %conv1341, %conv109
  %mul1417 = mul nuw i64 %conv331, %conv124
  %mul1422 = mul nuw i64 %conv336, %conv124
  %mul1427 = mul nuw i64 %conv341, %conv124
  %mul1432 = mul nuw i64 %conv346, %conv124
  %mul1437 = mul nuw i64 %conv351, %conv124
  %mul1442 = mul nuw i64 %conv1341, %conv124
  %mul1447 = mul nuw i64 %conv326, %conv134
  %mul1452 = mul nuw i64 %conv331, %conv134
  %mul1457 = mul nuw i64 %conv336, %conv134
  %mul1462 = mul nuw i64 %conv341, %conv134
  %mul1467 = mul nuw i64 %conv346, %conv134
  %mul1472 = mul nuw i64 %conv351, %conv134
  %mul1477 = mul nuw i64 %conv1341, %conv134
  %mul1482 = mul nuw i64 %conv699, %conv321
  %mul1487 = mul nuw i64 %conv699, %conv326
  %mul1492 = mul nuw i64 %conv699, %conv331
  %mul1497 = mul nuw i64 %conv699, %conv336
  %mul1502 = mul nuw i64 %conv699, %conv341
  %mul1507 = mul nuw i64 %conv699, %conv346
  %mul1512 = mul nuw i64 %conv699, %conv351
  %mul1517 = mul nuw i64 %conv1341, %conv699
  %mul1522 = mul nuw i64 %conv739, %conv316
  %mul1527 = mul nuw i64 %conv739, %conv321
  %mul1532 = mul nuw i64 %conv739, %conv326
  %mul1537 = mul nuw i64 %conv739, %conv331
  %mul1542 = mul nuw i64 %conv739, %conv336
  %mul1547 = mul nuw i64 %conv739, %conv341
  %mul1552 = mul nuw i64 %conv739, %conv346
  %mul1557 = mul nuw i64 %conv739, %conv351
  %mul1562 = mul nuw i64 %conv1341, %conv739
  %mul1567 = mul nuw i64 %conv774, %conv31
  %mul1572 = mul nuw i64 %conv774, %conv316
  %mul1577 = mul nuw i64 %conv774, %conv321
  %mul1582 = mul nuw i64 %conv774, %conv326
  %mul1587 = mul nuw i64 %conv774, %conv331
  %mul1592 = mul nuw i64 %conv774, %conv336
  %mul1597 = mul nuw i64 %conv774, %conv341
  %mul1602 = mul nuw i64 %conv774, %conv346
  %mul1607 = mul nuw i64 %conv774, %conv351
  %mul1612 = mul nuw i64 %conv1341, %conv774
  %mul1617 = mul nuw i64 %conv804, %conv26
  %mul1622 = mul nuw i64 %conv804, %conv31
  %mul1627 = mul nuw i64 %conv804, %conv316
  %mul1632 = mul nuw i64 %conv804, %conv321
  %mul1637 = mul nuw i64 %conv804, %conv326
  %mul1642 = mul nuw i64 %conv804, %conv331
  %mul1647 = mul nuw i64 %conv804, %conv336
  %mul1652 = mul nuw i64 %conv804, %conv341
  %mul1657 = mul nuw i64 %conv804, %conv346
  %mul1662 = mul nuw i64 %conv804, %conv351
  %mul1667 = mul nuw i64 %conv1341, %conv804
  %mul1672 = mul nuw i64 %conv829, %conv21
  %mul1677 = mul nuw i64 %conv829, %conv26
  %mul1682 = mul nuw i64 %conv829, %conv31
  %mul1687 = mul nuw i64 %conv829, %conv316
  %mul1692 = mul nuw i64 %conv829, %conv321
  %mul1697 = mul nuw i64 %conv829, %conv326
  %mul1702 = mul nuw i64 %conv829, %conv331
  %mul1707 = mul nuw i64 %conv829, %conv336
  %mul1712 = mul nuw i64 %conv829, %conv341
  %mul1717 = mul nuw i64 %conv829, %conv346
  %mul1722 = mul nuw i64 %conv829, %conv351
  %mul1727 = mul nuw i64 %conv1341, %conv829
  %mul1732 = mul nuw i64 %conv849, %conv16
  %mul1737 = mul nuw i64 %conv849, %conv21
  %mul1742 = mul nuw i64 %conv849, %conv26
  %mul1747 = mul nuw i64 %conv849, %conv31
  %mul1752 = mul nuw i64 %conv849, %conv316
  %mul1757 = mul nuw i64 %conv849, %conv321
  %mul1762 = mul nuw i64 %conv849, %conv326
  %mul1767 = mul nuw i64 %conv849, %conv331
  %mul1772 = mul nuw i64 %conv849, %conv336
  %mul1777 = mul nuw i64 %conv849, %conv341
  %mul1782 = mul nuw i64 %conv849, %conv346
  %mul1787 = mul nuw i64 %conv849, %conv351
  %mul1792 = mul nuw i64 %conv1341, %conv849
  %mul1797 = mul nuw i64 %conv864, %conv11
  %mul1802 = mul nuw i64 %conv864, %conv16
  %mul1807 = mul nuw i64 %conv864, %conv21
  %mul1812 = mul nuw i64 %conv864, %conv26
  %mul1817 = mul nuw i64 %conv864, %conv31
  %mul1822 = mul nuw i64 %conv864, %conv316
  %mul1827 = mul nuw i64 %conv864, %conv321
  %mul1832 = mul nuw i64 %conv864, %conv326
  %mul1837 = mul nuw i64 %conv864, %conv331
  %mul1842 = mul nuw i64 %conv864, %conv336
  %mul1847 = mul nuw i64 %conv864, %conv341
  %mul1852 = mul nuw i64 %conv864, %conv346
  %mul1857 = mul nuw i64 %conv864, %conv351
  %mul1862 = mul nuw i64 %conv1341, %conv864
  %mul1867 = mul nuw i64 %conv874, %conv6
  %mul1872 = mul nuw i64 %conv874, %conv11
  %mul1877 = mul nuw i64 %conv874, %conv16
  %mul1882 = mul nuw i64 %conv874, %conv21
  %mul1887 = mul nuw i64 %conv874, %conv26
  %mul1892 = mul nuw i64 %conv874, %conv31
  %mul1897 = mul nuw i64 %conv874, %conv316
  %mul1902 = mul nuw i64 %conv874, %conv321
  %mul1907 = mul nuw i64 %conv874, %conv326
  %mul1912 = mul nuw i64 %conv874, %conv331
  %mul1917 = mul nuw i64 %conv874, %conv336
  %mul1922 = mul nuw i64 %conv874, %conv341
  %mul1927 = mul nuw i64 %conv874, %conv346
  %mul1932 = mul nuw i64 %conv874, %conv351
  %mul1937 = mul nuw i64 %conv1341, %conv874
  %31 = load i32, ptr %arg1, align 4, !tbaa !5
  %conv1939 = zext i32 %31 to i64
  %mul1942 = mul nuw i64 %conv1939, %conv2
  %mul1947 = mul nuw i64 %conv1939, %conv6
  %mul1952 = mul nuw i64 %conv1939, %conv11
  %mul1957 = mul nuw i64 %conv1939, %conv16
  %mul1962 = mul nuw i64 %conv1939, %conv21
  %mul1967 = mul nuw i64 %conv1939, %conv26
  %mul1972 = mul nuw i64 %conv1939, %conv31
  %mul1977 = mul nuw i64 %conv1939, %conv316
  %mul1982 = mul nuw i64 %conv1939, %conv321
  %mul1987 = mul nuw i64 %conv1939, %conv326
  %mul1992 = mul nuw i64 %conv1939, %conv331
  %mul1997 = mul nuw i64 %conv1939, %conv336
  %mul2002 = mul nuw i64 %conv1939, %conv341
  %mul2007 = mul nuw i64 %conv1939, %conv346
  %mul2012 = mul nuw i64 %conv1939, %conv351
  %mul2017 = mul nuw i64 %conv1939, %conv1341
  %add = add i64 %mul452, %mul387
  %add2018 = add i64 %add, %mul512
  %add2019 = add i64 %add2018, %mul567
  %add2020 = add i64 %add2019, %mul617
  %add2021 = add i64 %add2020, %mul662
  %add2022 = add i64 %add2021, %mul317
  %add2023 = add i64 %add2022, %mul702
  %add2024 = add i64 %mul1607, %add2023
  %add2025 = add i64 %add2024, %mul1657
  %add2026 = add i64 %add2025, %mul1712
  %add2027 = add i64 %add2026, %mul1772
  %add2028 = add i64 %add2027, %mul1837
  %add2029 = add i64 %add2028, %mul1907
  %add2030 = add i64 %add2029, %mul1562
  %add2031 = add i64 %add2030, %mul1982
  %shr = lshr i64 %add2031, 28
  %conv2032 = and i64 %add2031, 268435455
  %add2040 = add i64 %mul1417, %mul1447
  %add2041 = add i64 %add2040, %mul1392
  %add2042 = add i64 %add2041, %mul1372
  %add2043 = add i64 %add2042, %mul1357
  %add2044 = add i64 %add2043, %mul1347
  %add2045 = add i64 %add2044, %mul1482
  %add2046 = add i64 %add2045, %add2023
  %add2047 = add i64 %add2046, %mul1522
  %add2048 = add i64 %add2047, %mul1567
  %add2049 = add i64 %add2048, %mul1617
  %add2050 = add i64 %add2049, %mul1672
  %add2051 = add i64 %add2050, %mul1732
  %add2052 = add i64 %add2051, %mul1797
  %add2053 = add i64 %add2052, %mul1867
  %add2054 = add i64 %add2053, %mul1342
  %add2055 = add i64 %add2054, %mul1942
  %add2056 = shl i64 %mul, 1
  %add2081 = add i64 %mul37, %mul7
  %conv2108 = zext i64 %mul1957 to i128
  %conv2109 = zext i64 %mul1882 to i128
  %add2110 = add i64 %mul42, %mul12
  %add2111 = add i64 %add2110, %mul67
  %add2114 = shl i64 %add2111, 1
  %add2115 = add i64 %add2114, %mul582
  %add2116 = add i64 %add2115, %mul632
  %add2117 = add i64 %add2116, %mul677
  %add2118 = add i64 %add2117, %mul527
  %add2119 = add i64 %add2118, %mul467
  %add2120 = add i64 %add2119, %mul402
  %add2121 = add i64 %add2120, %mul332
  %add2122 = add i64 %add2121, %mul1462
  %add2123 = add i64 %add2122, %mul1432
  %add2124 = add i64 %add2123, %mul1407
  %add2125 = add i64 %add2124, %mul717
  %add2126 = add i64 %add2125, %mul1497
  %add2127 = add i64 %add2126, %mul752
  %add2128 = add i64 %add2127, %mul1537
  %add2129 = add i64 %add2128, %mul782
  %add2130 = add i64 %add2129, %mul1582
  %add2131 = add i64 %add2130, %mul807
  %add2132 = add i64 %add2131, %mul1632
  %add2133 = add i64 %add2132, %mul1687
  %add2134 = add i64 %add2133, %mul1747
  %add2135 = add i64 %add2134, %mul1812
  %add2136 = add i64 %add2135, %mul1387
  %conv2137 = zext i64 %add2136 to i128
  %conv2140 = zext i64 %mul1962 to i128
  %conv2141 = zext i64 %mul1887 to i128
  %conv2142 = zext i64 %mul1817 to i128
  %conv2143 = zext i64 %mul1752 to i128
  %add2144 = add i64 %mul47, %mul17
  %add2145 = add i64 %add2144, %mul72
  %add2146 = add i64 %add2145, %mul92
  %add2150 = shl i64 %add2146, 1
  %add2151 = add i64 %add2150, %mul637
  %add2152 = add i64 %add2151, %mul682
  %add2153 = add i64 %add2152, %mul587
  %add2154 = add i64 %add2153, %mul532
  %add2155 = add i64 %add2154, %mul472
  %add2156 = add i64 %add2155, %mul407
  %add2157 = add i64 %add2156, %mul337
  %add2158 = add i64 %add2157, %mul1467
  %add2159 = add i64 %add2158, %mul1437
  %add2160 = add i64 %add2159, %mul722
  %add2161 = add i64 %add2160, %mul1502
  %add2162 = add i64 %add2161, %mul757
  %add2163 = add i64 %add2162, %mul1542
  %add2164 = add i64 %add2163, %mul787
  %add2165 = add i64 %add2164, %mul1587
  %add2166 = add i64 %add2165, %mul812
  %add2167 = add i64 %add2166, %mul1637
  %add2168 = add i64 %add2167, %mul832
  %add2169 = add i64 %add2168, %mul1692
  %add2170 = add i64 %add2169, %mul1412
  %conv2171 = zext i64 %add2170 to i128
  %conv2176 = zext i64 %mul1967 to i128
  %conv2177 = zext i64 %mul1892 to i128
  %conv2178 = zext i64 %mul1822 to i128
  %conv2179 = zext i64 %mul1757 to i128
  %conv2180 = zext i64 %mul1697 to i128
  %conv2181 = zext i64 %mul1642 to i128
  %add2182 = add i64 %mul52, %mul22
  %add2183 = add i64 %add2182, %mul77
  %add2184 = add i64 %add2183, %mul97
  %add2185 = add i64 %add2184, %mul112
  %add2190 = shl i64 %add2185, 1
  %add2191 = add i64 %add2190, %mul687
  %add2192 = add i64 %add2191, %mul642
  %add2193 = add i64 %add2192, %mul592
  %add2194 = add i64 %add2193, %mul537
  %add2195 = add i64 %add2194, %mul477
  %add2196 = add i64 %add2195, %mul412
  %add2197 = add i64 %add2196, %mul342
  %add2198 = add i64 %add2197, %mul1472
  %add2199 = add i64 %add2198, %mul727
  %add2200 = add i64 %add2199, %mul1507
  %add2201 = add i64 %add2200, %mul762
  %add2202 = add i64 %add2201, %mul1547
  %add2203 = add i64 %add2202, %mul792
  %add2204 = add i64 %add2203, %mul1592
  %add2205 = add i64 %add2204, %mul817
  %add2206 = add i64 %add2205, %mul837
  %add2207 = add i64 %add2206, %mul852
  %add2208 = add i64 %add2207, %mul1442
  %conv2209 = zext i64 %add2208 to i128
  %conv2216 = zext i64 %mul1972 to i128
  %conv2217 = zext i64 %mul1897 to i128
  %conv2218 = zext i64 %mul1827 to i128
  %conv2219 = zext i64 %mul1762 to i128
  %conv2220 = zext i64 %mul1702 to i128
  %conv2221 = zext i64 %mul1647 to i128
  %conv2222 = zext i64 %mul1597 to i128
  %conv2223 = zext i64 %mul1552 to i128
  %add2224 = add i64 %mul57, %mul27
  %add2225 = add i64 %add2224, %mul82
  %add2226 = add i64 %add2225, %mul102
  %add2227 = add i64 %add2226, %mul117
  %add2228 = add i64 %add2227, %mul127
  %add2234 = shl i64 %add2228, 1
  %add2235 = add i64 %add2234, %mul692
  %add2236 = add i64 %add2235, %mul647
  %add2237 = add i64 %add2236, %mul597
  %add2238 = add i64 %add2237, %mul542
  %add2239 = add i64 %add2238, %mul482
  %add2240 = add i64 %add2239, %mul417
  %add2241 = add i64 %add2240, %mul347
  %add2242 = add i64 %add2241, %mul732
  %add2243 = add i64 %add2242, %mul1512
  %add2244 = add i64 %add2243, %mul767
  %add2245 = add i64 %add2244, %mul797
  %add2246 = add i64 %add2245, %mul822
  %add2247 = add i64 %add2246, %mul842
  %add2248 = add i64 %add2247, %mul857
  %add2249 = add i64 %add2248, %mul867
  %add2250 = add i64 %add2249, %mul1477
  %conv2251 = zext i64 %add2250 to i128
  %conv2260 = zext i64 %mul1977 to i128
  %conv2261 = zext i64 %mul1902 to i128
  %conv2262 = zext i64 %mul1832 to i128
  %conv2263 = zext i64 %mul1767 to i128
  %conv2264 = zext i64 %mul1707 to i128
  %conv2265 = zext i64 %mul1652 to i128
  %conv2266 = zext i64 %mul1602 to i128
  %conv2267 = zext i64 %mul1557 to i128
  %conv2268 = zext i64 %mul1517 to i128
  %conv2269 = zext i64 %mul877 to i128
  %add2270 = add i64 %mul62, %mul32
  %add2271 = add i64 %add2270, %mul87
  %add2272 = add i64 %add2271, %mul107
  %add2273 = add i64 %add2272, %mul122
  %add2274 = add i64 %add2273, %mul132
  %add2275 = add i64 %add2274, %mul137
  %add2282 = shl i64 %add2275, 1
  %add2283 = add i64 %add2282, %mul697
  %add2284 = add i64 %add2283, %mul652
  %add2285 = add i64 %add2284, %mul602
  %add2286 = add i64 %add2285, %mul547
  %add2287 = add i64 %add2286, %mul487
  %add2288 = add i64 %add2287, %mul422
  %add2289 = add i64 %add2288, %mul352
  %add2290 = add i64 %add2289, %mul737
  %add2291 = add i64 %add2290, %mul772
  %add2292 = add i64 %add2291, %mul802
  %add2293 = add i64 %add2292, %mul827
  %add2294 = add i64 %add2293, %mul847
  %add2295 = add i64 %add2294, %mul862
  %add2296 = add i64 %add2295, %mul872
  %conv2297 = zext i64 %add2296 to i128
  %conv2441 = zext nneg i64 %shr to i128
  %shr2443 = lshr i64 %add2055, 28
  %conv2445 = and i64 %add2055, 268435455
  %conv2446 = zext nneg i64 %shr2443 to i128
  %add2298 = add nuw nsw i128 %conv2266, %conv2267
  %add2299 = add nuw nsw i128 %add2298, %conv2265
  %add2300 = add nuw nsw i128 %add2299, %conv2264
  %add2301 = add nuw nsw i128 %add2300, %conv2263
  %add2302 = add nuw nsw i128 %add2301, %conv2262
  %add2303 = add nuw nsw i128 %add2302, %conv2269
  %add2304 = add nuw nsw i128 %add2303, %conv2261
  %add2305 = add nuw nsw i128 %add2304, %conv2268
  %add2306 = add nuw nsw i128 %add2305, %conv2260
  %add2307 = add nuw nsw i128 %add2306, %conv2297
  %add2442 = add nuw nsw i128 %add2307, %conv2441
  %add2447 = add nuw nsw i128 %add2442, %conv2446
  %shr2448 = lshr i128 %add2447, 28
  %32 = trunc i128 %add2447 to i32
  %conv2451 = and i32 %32, 268435455
  %add2425 = add i64 %mul697, %add2275
  %add2426 = add i64 %add2425, %mul652
  %add2427 = add i64 %add2426, %mul602
  %add2428 = add i64 %add2427, %mul547
  %add2429 = add i64 %add2428, %mul487
  %add2430 = add i64 %add2429, %mul422
  %add2431 = add i64 %add2430, %mul352
  %add2432 = add i64 %add2431, %mul737
  %add2433 = add i64 %add2432, %mul772
  %add2434 = add i64 %add2433, %mul802
  %add2435 = add i64 %add2434, %mul827
  %add2436 = add i64 %add2435, %mul847
  %add2437 = add i64 %add2436, %mul862
  %add2438 = add i64 %add2437, %mul872
  %add2439 = add i64 %add2438, %mul877
  %add2440 = add i64 %add2439, %mul2017
  %add2452 = add i64 %add2440, %shr2443
  %add2252 = add nuw nsw i128 %conv2222, %conv2223
  %add2253 = add nuw nsw i128 %add2252, %conv2221
  %add2254 = add nuw nsw i128 %add2253, %conv2220
  %add2255 = add nuw nsw i128 %add2254, %conv2219
  %add2256 = add nuw nsw i128 %add2255, %conv2218
  %add2257 = add nuw nsw i128 %add2256, %conv2217
  %add2258 = add nuw nsw i128 %add2257, %conv2216
  %add2259 = add nuw nsw i128 %add2258, %conv2251
  %add2454 = add nuw nsw i128 %add2259, %shr2448
  %shr2455 = lshr i64 %add2452, 28
  %33 = trunc i64 %add2452 to i32
  %conv2457 = and i32 %33, 268435455
  %add2403 = add i64 %mul692, %add2228
  %add2404 = add i64 %add2403, %mul647
  %add2405 = add i64 %add2404, %mul597
  %add2406 = add i64 %add2405, %mul542
  %add2407 = add i64 %add2406, %mul482
  %add2408 = add i64 %add2407, %mul417
  %add2409 = add i64 %add2408, %mul347
  %add2410 = add i64 %add2409, %mul732
  %add2411 = add i64 %add2410, %mul767
  %add2412 = add i64 %add2411, %mul797
  %add2413 = add i64 %add2412, %mul822
  %add2414 = add i64 %add2413, %mul842
  %add2415 = add i64 %add2414, %mul857
  %add2416 = add i64 %add2415, %mul867
  %add2417 = add i64 %add2416, %mul1937
  %add2418 = add i64 %add2417, %mul2012
  %add2458 = add i64 %add2418, %shr2455
  %shr2459 = lshr i128 %add2454, 28
  %34 = trunc i128 %add2454 to i32
  %conv2462 = and i32 %34, 268435455
  %add2210 = add nuw nsw i128 %conv2180, %conv2181
  %add2211 = add nuw nsw i128 %add2210, %conv2179
  %add2212 = add nuw nsw i128 %add2211, %conv2178
  %add2213 = add nuw nsw i128 %add2212, %conv2177
  %add2214 = add nuw nsw i128 %add2213, %conv2176
  %add2215 = add nuw nsw i128 %add2214, %conv2209
  %add2464 = add nuw nsw i128 %add2215, %shr2459
  %shr2465 = lshr i64 %add2458, 28
  %35 = trunc i64 %add2458 to i32
  %conv2467 = and i32 %35, 268435455
  %add2382 = add i64 %mul687, %add2185
  %add2383 = add i64 %add2382, %mul642
  %add2384 = add i64 %add2383, %mul592
  %add2385 = add i64 %add2384, %mul537
  %add2386 = add i64 %add2385, %mul477
  %add2387 = add i64 %add2386, %mul412
  %add2388 = add i64 %add2387, %mul342
  %add2389 = add i64 %add2388, %mul727
  %add2390 = add i64 %add2389, %mul762
  %add2391 = add i64 %add2390, %mul792
  %add2392 = add i64 %add2391, %mul817
  %add2393 = add i64 %add2392, %mul837
  %add2394 = add i64 %add2393, %mul852
  %add2395 = add i64 %add2394, %mul1932
  %add2396 = add i64 %add2395, %mul1862
  %add2397 = add i64 %add2396, %mul2007
  %add2468 = add i64 %add2397, %shr2465
  %shr2469 = lshr i128 %add2464, 28
  %36 = trunc i128 %add2464 to i32
  %conv2472 = and i32 %36, 268435455
  %add2172 = add nuw nsw i128 %conv2142, %conv2143
  %add2173 = add nuw nsw i128 %add2172, %conv2141
  %add2174 = add nuw nsw i128 %add2173, %conv2140
  %add2175 = add nuw nsw i128 %add2174, %conv2171
  %add2474 = add nuw nsw i128 %add2175, %shr2469
  %shr2475 = lshr i64 %add2468, 28
  %37 = trunc i64 %add2468 to i32
  %conv2477 = and i32 %37, 268435455
  %add2362 = add i64 %mul637, %add2146
  %add2363 = add i64 %add2362, %mul682
  %add2364 = add i64 %add2363, %mul587
  %add2365 = add i64 %add2364, %mul532
  %add2366 = add i64 %add2365, %mul472
  %add2367 = add i64 %add2366, %mul407
  %add2368 = add i64 %add2367, %mul337
  %add2369 = add i64 %add2368, %mul722
  %add2370 = add i64 %add2369, %mul757
  %add2371 = add i64 %add2370, %mul787
  %add2372 = add i64 %add2371, %mul812
  %add2373 = add i64 %add2372, %mul832
  %add2374 = add i64 %add2373, %mul1857
  %add2375 = add i64 %add2374, %mul1927
  %add2376 = add i64 %add2375, %mul1792
  %add2377 = add i64 %add2376, %mul2002
  %add2478 = add i64 %add2377, %shr2475
  %shr2479 = lshr i128 %add2474, 28
  %38 = trunc i128 %add2474 to i32
  %conv2482 = and i32 %38, 268435455
  %add2138 = add nuw nsw i128 %conv2108, %conv2109
  %add2139 = add nuw nsw i128 %add2138, %conv2137
  %add2484 = add nuw nsw i128 %add2139, %shr2479
  %shr2485 = lshr i64 %add2478, 28
  %39 = trunc i64 %add2478 to i32
  %conv2487 = and i32 %39, 268435455
  %add2343 = add i64 %mul582, %add2111
  %add2344 = add i64 %add2343, %mul632
  %add2345 = add i64 %add2344, %mul677
  %add2346 = add i64 %add2345, %mul527
  %add2347 = add i64 %add2346, %mul467
  %add2348 = add i64 %add2347, %mul402
  %add2349 = add i64 %add2348, %mul332
  %add2350 = add i64 %add2349, %mul717
  %add2351 = add i64 %add2350, %mul752
  %add2352 = add i64 %add2351, %mul782
  %add2353 = add i64 %add2352, %mul807
  %add2354 = add i64 %add2353, %mul1787
  %add2355 = add i64 %add2354, %mul1852
  %add2356 = add i64 %add2355, %mul1922
  %add2357 = add i64 %add2356, %mul1727
  %add2358 = add i64 %add2357, %mul1997
  %add2488 = add i64 %add2358, %shr2485
  %shr2489 = lshr i128 %add2484, 28
  %conv2490 = trunc nuw nsw i128 %shr2489 to i64
  %40 = trunc i128 %add2484 to i32
  %conv2492 = and i32 %40, 268435455
  %add2083 = shl i64 %add2081, 1
  %add2084 = add i64 %add2083, %mul522
  %add2085 = add i64 %add2084, %mul577
  %add2086 = add i64 %add2085, %mul627
  %add2087 = add i64 %add2086, %mul672
  %add2088 = add i64 %add2087, %mul462
  %add2089 = add i64 %add2088, %mul397
  %add2090 = add i64 %add2089, %mul327
  %add2091 = add i64 %add2090, %mul1457
  %add2092 = add i64 %add2091, %mul1427
  %add2093 = add i64 %add2092, %mul1402
  %add2094 = add i64 %add2093, %mul1382
  %add2095 = add i64 %add2094, %mul712
  %add2096 = add i64 %add2095, %mul1492
  %add2097 = add i64 %add2096, %mul747
  %add2098 = add i64 %add2097, %mul1532
  %add2099 = add i64 %add2098, %mul777
  %add2100 = add i64 %add2099, %mul1577
  %add2101 = add i64 %add2100, %mul1627
  %add2102 = add i64 %add2101, %mul1682
  %add2103 = add i64 %add2102, %mul1742
  %add2104 = add i64 %add2103, %mul1807
  %add2105 = add i64 %add2104, %mul1877
  %add2106 = add i64 %add2105, %mul1367
  %add2107 = add i64 %add2106, %mul1952
  %add2493 = add i64 %add2107, %conv2490
  %shr2494 = lshr i64 %add2488, 28
  %41 = trunc i64 %add2488 to i32
  %conv2496 = and i32 %41, 268435455
  %add2325 = add i64 %mul522, %add2081
  %add2326 = add i64 %add2325, %mul577
  %add2327 = add i64 %add2326, %mul627
  %add2328 = add i64 %add2327, %mul672
  %add2329 = add i64 %add2328, %mul462
  %add2330 = add i64 %add2329, %mul397
  %add2331 = add i64 %add2330, %mul327
  %add2332 = add i64 %add2331, %mul712
  %add2333 = add i64 %add2332, %mul747
  %add2334 = add i64 %add2333, %mul777
  %add2335 = add i64 %add2334, %mul1722
  %add2336 = add i64 %add2335, %mul1782
  %add2337 = add i64 %add2336, %mul1847
  %add2338 = add i64 %add2337, %mul1917
  %add2339 = add i64 %add2338, %mul1667
  %add2340 = add i64 %add2339, %mul1992
  %add2497 = add i64 %add2340, %shr2494
  %shr2498 = lshr i64 %add2493, 28
  %42 = trunc i64 %add2493 to i32
  %conv2500 = and i32 %42, 268435455
  %add2057 = add i64 %mul457, %add2056
  %add2058 = add i64 %add2057, %mul517
  %add2059 = add i64 %add2058, %mul572
  %add2060 = add i64 %add2059, %mul622
  %add2061 = add i64 %add2060, %mul667
  %add2062 = add i64 %add2061, %mul392
  %add2063 = add i64 %add2062, %mul322
  %add2064 = add i64 %add2063, %mul1452
  %add2065 = add i64 %add2064, %mul1422
  %add2066 = add i64 %add2065, %mul1397
  %add2067 = add i64 %add2066, %mul1377
  %add2068 = add i64 %add2067, %mul1362
  %add2069 = add i64 %add2068, %mul707
  %add2070 = add i64 %add2069, %mul1487
  %add2071 = add i64 %add2070, %mul742
  %add2072 = add i64 %add2071, %mul1527
  %add2073 = add i64 %add2072, %mul1572
  %add2074 = add i64 %add2073, %mul1622
  %add2075 = add i64 %add2074, %mul1677
  %add2076 = add i64 %add2075, %mul1737
  %add2077 = add i64 %add2076, %mul1802
  %add2078 = add i64 %add2077, %mul1872
  %add2079 = add i64 %add2078, %mul1352
  %add2080 = add i64 %add2079, %mul1947
  %add2501 = add i64 %add2080, %shr2498
  %shr2502 = lshr i64 %add2497, 28
  %43 = trunc i64 %add2497 to i32
  %conv2504 = and i32 %43, 268435455
  %add2308 = add i64 %mul457, %mul
  %add2309 = add i64 %add2308, %mul517
  %add2310 = add i64 %add2309, %mul572
  %add2311 = add i64 %add2310, %mul622
  %add2312 = add i64 %add2311, %mul667
  %add2313 = add i64 %add2312, %mul392
  %add2314 = add i64 %add2313, %mul322
  %add2315 = add i64 %add2314, %mul707
  %add2316 = add i64 %add2315, %mul742
  %add2317 = add i64 %add2316, %mul1662
  %add2318 = add i64 %add2317, %mul1717
  %add2319 = add i64 %add2318, %mul1777
  %add2320 = add i64 %add2319, %mul1842
  %add2321 = add i64 %add2320, %mul1912
  %add2322 = add i64 %add2321, %mul1612
  %add2323 = add i64 %add2322, %mul1987
  %add2505 = add i64 %add2323, %shr2502
  %shr2506 = lshr i64 %add2501, 28
  %44 = trunc i64 %add2501 to i32
  %conv2508 = and i32 %44, 268435455
  %add2510 = add nuw nsw i64 %shr2506, %conv2445
  %shr2511 = lshr i64 %add2505, 28
  %45 = trunc i64 %add2505 to i32
  %conv2513 = and i32 %45, 268435455
  %add2515 = add nuw nsw i64 %shr2511, %conv2032
  %shr2516 = lshr i64 %add2510, 28
  %conv2517 = trunc nuw nsw i64 %shr2516 to i32
  %46 = trunc i64 %add2510 to i32
  %conv2519 = and i32 %46, 268435455
  %shr2520 = lshr i64 %add2515, 28
  %conv2521 = trunc nuw nsw i64 %shr2520 to i32
  %47 = trunc i64 %add2515 to i32
  %conv2523 = and i32 %47, 268435455
  %add2525 = add nuw nsw i32 %conv2457, %conv2517
  %add2524 = add nuw nsw i32 %conv2451, %conv2521
  %add2526 = add nuw nsw i32 %add2524, %conv2517
  %shr2527 = lshr i32 %add2526, 28
  %and2529 = and i32 %add2526, 268435455
  %add2531 = add nuw nsw i32 %shr2527, %conv2462
  %shr2532 = lshr i32 %add2525, 28
  %and2534 = and i32 %add2525, 268435455
  %add2536 = add nuw nsw i32 %shr2532, %conv2467
  store i32 %and2534, ptr %out1, align 4, !tbaa !5
  %arrayidx2538 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %add2536, ptr %arrayidx2538, align 4, !tbaa !5
  %arrayidx2539 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %conv2477, ptr %arrayidx2539, align 4, !tbaa !5
  %arrayidx2540 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %conv2487, ptr %arrayidx2540, align 4, !tbaa !5
  %arrayidx2541 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %conv2496, ptr %arrayidx2541, align 4, !tbaa !5
  %arrayidx2542 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i32 %conv2504, ptr %arrayidx2542, align 4, !tbaa !5
  %arrayidx2543 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i32 %conv2513, ptr %arrayidx2543, align 4, !tbaa !5
  %arrayidx2544 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i32 %conv2523, ptr %arrayidx2544, align 4, !tbaa !5
  %arrayidx2545 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i32 %and2529, ptr %arrayidx2545, align 4, !tbaa !5
  %arrayidx2546 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i32 %add2531, ptr %arrayidx2546, align 4, !tbaa !5
  %arrayidx2547 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i32 %conv2472, ptr %arrayidx2547, align 4, !tbaa !5
  %arrayidx2548 = getelementptr inbounds nuw i8, ptr %out1, i64 44
  store i32 %conv2482, ptr %arrayidx2548, align 4, !tbaa !5
  %arrayidx2549 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i32 %conv2492, ptr %arrayidx2549, align 4, !tbaa !5
  %arrayidx2550 = getelementptr inbounds nuw i8, ptr %out1, i64 52
  store i32 %conv2500, ptr %arrayidx2550, align 4, !tbaa !5
  %arrayidx2551 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i32 %conv2508, ptr %arrayidx2551, align 4, !tbaa !5
  %arrayidx2552 = getelementptr inbounds nuw i8, ptr %out1, i64 60
  store i32 %conv2519, ptr %arrayidx2552, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_carry_square(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 60
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl i32 %0, 1
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %mul7 = shl i32 %1, 1
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 52
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %mul13 = shl i32 %2, 1
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %3 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %mul19 = shl i32 %3, 1
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 44
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %mul25 = shl i32 %4, 1
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %5 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %mul31 = shl i32 %5, 1
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %6 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %mul37 = shl i32 %6, 1
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %7 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %mul44 = shl i32 %7, 1
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %8 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %mul46 = shl i32 %8, 1
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %9 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %mul48 = shl i32 %9, 1
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %10 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %mul50 = shl i32 %10, 1
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %11 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %mul52 = shl i32 %11, 1
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %12 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %mul54 = shl i32 %12, 1
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %13 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %mul56 = shl i32 %13, 1
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %14 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %mul58 = shl i32 %14, 1
  %conv = zext i32 %0 to i64
  %mul61 = mul nuw i64 %conv, %conv
  %conv63 = zext i32 %1 to i64
  %conv64 = zext i32 %mul to i64
  %mul65 = mul nuw i64 %conv63, %conv64
  %mul69 = mul nuw i64 %conv63, %conv63
  %conv71 = zext i32 %2 to i64
  %mul73 = mul nuw i64 %conv71, %conv64
  %conv76 = zext i32 %mul7 to i64
  %mul77 = mul nuw i64 %conv71, %conv76
  %mul81 = mul nuw i64 %conv71, %conv71
  %conv83 = zext i32 %3 to i64
  %mul85 = mul nuw i64 %conv83, %conv64
  %mul89 = mul nuw i64 %conv83, %conv76
  %conv92 = zext i32 %mul13 to i64
  %mul93 = mul nuw i64 %conv83, %conv92
  %mul97 = mul nuw i64 %conv83, %conv83
  %conv99 = zext i32 %4 to i64
  %mul101 = mul nuw i64 %conv99, %conv64
  %mul105 = mul nuw i64 %conv99, %conv76
  %mul109 = mul nuw i64 %conv99, %conv92
  %conv111 = zext i32 %5 to i64
  %mul113 = mul nuw i64 %conv111, %conv64
  %mul117 = mul nuw i64 %conv111, %conv76
  %conv119 = zext i32 %6 to i64
  %mul121 = mul nuw i64 %conv119, %conv64
  %conv240 = zext i32 %mul19 to i64
  %mul241 = mul nuw i64 %conv99, %conv240
  %mul249 = mul nuw i64 %conv99, %conv99
  %mul265 = mul nuw i64 %conv111, %conv92
  %mul273 = mul nuw i64 %conv111, %conv240
  %conv280 = zext i32 %mul25 to i64
  %mul281 = mul nuw i64 %conv111, %conv280
  %mul289 = mul nuw i64 %conv111, %conv111
  %mul301 = mul nuw i64 %conv119, %conv76
  %mul309 = mul nuw i64 %conv119, %conv92
  %mul317 = mul nuw i64 %conv119, %conv240
  %mul325 = mul nuw i64 %conv119, %conv280
  %conv332 = zext i32 %mul31 to i64
  %mul333 = mul nuw i64 %conv119, %conv332
  %mul341 = mul nuw i64 %conv119, %conv119
  %conv347 = zext i32 %7 to i64
  %mul349 = mul nuw i64 %conv347, %conv64
  %mul357 = mul nuw i64 %conv347, %conv76
  %mul365 = mul nuw i64 %conv347, %conv92
  %mul373 = mul nuw i64 %conv347, %conv240
  %mul381 = mul nuw i64 %conv347, %conv280
  %mul389 = mul nuw i64 %conv347, %conv332
  %conv396 = zext i32 %mul37 to i64
  %mul397 = mul nuw i64 %conv347, %conv396
  %mul405 = mul nuw i64 %conv347, %conv347
  %conv411 = zext i32 %8 to i64
  %mul413 = mul nuw i64 %conv411, %conv64
  %mul421 = mul nuw i64 %conv411, %conv76
  %mul429 = mul nuw i64 %conv411, %conv92
  %mul437 = mul nuw i64 %conv411, %conv240
  %mul445 = mul nuw i64 %conv411, %conv280
  %mul453 = mul nuw i64 %conv411, %conv332
  %mul461 = mul nuw i64 %conv411, %conv396
  %conv468 = zext i32 %mul44 to i64
  %mul469 = mul nuw i64 %conv411, %conv468
  %mul474 = mul nuw i64 %conv411, %conv411
  %conv476 = zext i32 %9 to i64
  %mul478 = mul nuw i64 %conv476, %conv64
  %mul486 = mul nuw i64 %conv476, %conv76
  %mul494 = mul nuw i64 %conv476, %conv92
  %mul502 = mul nuw i64 %conv476, %conv240
  %mul510 = mul nuw i64 %conv476, %conv280
  %mul518 = mul nuw i64 %conv476, %conv332
  %mul526 = mul nuw i64 %conv476, %conv396
  %mul530 = mul nuw i64 %conv476, %conv468
  %conv533 = zext i32 %mul46 to i64
  %mul534 = mul nuw i64 %conv476, %conv533
  %mul539 = mul nuw i64 %conv476, %conv476
  %conv541 = zext i32 %10 to i64
  %mul543 = mul nuw i64 %conv541, %conv64
  %mul551 = mul nuw i64 %conv541, %conv76
  %mul559 = mul nuw i64 %conv541, %conv92
  %mul567 = mul nuw i64 %conv541, %conv240
  %mul575 = mul nuw i64 %conv541, %conv280
  %mul583 = mul nuw i64 %conv541, %conv332
  %mul587 = mul nuw i64 %conv541, %conv396
  %mul591 = mul nuw i64 %conv541, %conv468
  %mul595 = mul nuw i64 %conv541, %conv533
  %conv598 = zext i32 %mul48 to i64
  %mul599 = mul nuw i64 %conv541, %conv598
  %mul604 = mul nuw i64 %conv541, %conv541
  %conv606 = zext i32 %11 to i64
  %mul608 = mul nuw i64 %conv606, %conv64
  %mul616 = mul nuw i64 %conv606, %conv76
  %mul624 = mul nuw i64 %conv606, %conv92
  %mul632 = mul nuw i64 %conv606, %conv240
  %mul640 = mul nuw i64 %conv606, %conv280
  %mul644 = mul nuw i64 %conv606, %conv332
  %mul648 = mul nuw i64 %conv606, %conv396
  %mul652 = mul nuw i64 %conv606, %conv468
  %mul656 = mul nuw i64 %conv606, %conv533
  %mul660 = mul nuw i64 %conv606, %conv598
  %conv663 = zext i32 %mul50 to i64
  %mul664 = mul nuw i64 %conv606, %conv663
  %mul669 = mul nuw i64 %conv606, %conv606
  %conv671 = zext i32 %12 to i64
  %mul673 = mul nuw i64 %conv671, %conv64
  %mul681 = mul nuw i64 %conv671, %conv76
  %mul689 = mul nuw i64 %conv671, %conv92
  %mul697 = mul nuw i64 %conv671, %conv240
  %mul701 = mul nuw i64 %conv671, %conv280
  %mul705 = mul nuw i64 %conv671, %conv332
  %mul709 = mul nuw i64 %conv671, %conv396
  %mul713 = mul nuw i64 %conv671, %conv468
  %mul717 = mul nuw i64 %conv671, %conv533
  %mul721 = mul nuw i64 %conv671, %conv598
  %mul725 = mul nuw i64 %conv671, %conv663
  %conv728 = zext i32 %mul52 to i64
  %mul729 = mul nuw i64 %conv671, %conv728
  %mul734 = mul nuw i64 %conv671, %conv671
  %conv736 = zext i32 %13 to i64
  %mul738 = mul nuw i64 %conv736, %conv64
  %mul746 = mul nuw i64 %conv736, %conv76
  %mul754 = mul nuw i64 %conv736, %conv92
  %mul758 = mul nuw i64 %conv736, %conv240
  %mul762 = mul nuw i64 %conv736, %conv280
  %mul766 = mul nuw i64 %conv736, %conv332
  %mul770 = mul nuw i64 %conv736, %conv396
  %mul774 = mul nuw i64 %conv736, %conv468
  %mul778 = mul nuw i64 %conv736, %conv533
  %mul782 = mul nuw i64 %conv736, %conv598
  %mul786 = mul nuw i64 %conv736, %conv663
  %mul790 = mul nuw i64 %conv736, %conv728
  %conv793 = zext i32 %mul54 to i64
  %mul794 = mul nuw i64 %conv736, %conv793
  %mul799 = mul nuw i64 %conv736, %conv736
  %conv801 = zext i32 %14 to i64
  %mul803 = mul nuw i64 %conv801, %conv64
  %mul811 = mul nuw i64 %conv801, %conv76
  %mul815 = mul nuw i64 %conv801, %conv92
  %mul819 = mul nuw i64 %conv801, %conv240
  %mul823 = mul nuw i64 %conv801, %conv280
  %mul827 = mul nuw i64 %conv801, %conv332
  %mul831 = mul nuw i64 %conv801, %conv396
  %mul835 = mul nuw i64 %conv801, %conv468
  %mul839 = mul nuw i64 %conv801, %conv533
  %mul843 = mul nuw i64 %conv801, %conv598
  %mul847 = mul nuw i64 %conv801, %conv663
  %mul851 = mul nuw i64 %conv801, %conv728
  %mul855 = mul nuw i64 %conv801, %conv793
  %conv858 = zext i32 %mul56 to i64
  %mul859 = mul nuw i64 %conv801, %conv858
  %mul864 = mul nuw i64 %conv801, %conv801
  %15 = load i32, ptr %arg1, align 4, !tbaa !5
  %conv866 = zext i32 %15 to i64
  %mul868 = mul nuw i64 %conv866, %conv64
  %mul872 = mul nuw i64 %conv866, %conv76
  %mul876 = mul nuw i64 %conv866, %conv92
  %mul880 = mul nuw i64 %conv866, %conv240
  %mul884 = mul nuw i64 %conv866, %conv280
  %mul888 = mul nuw i64 %conv866, %conv332
  %mul892 = mul nuw i64 %conv866, %conv396
  %mul896 = mul nuw i64 %conv866, %conv468
  %mul900 = mul nuw i64 %conv866, %conv533
  %mul904 = mul nuw i64 %conv866, %conv598
  %mul908 = mul nuw i64 %conv866, %conv663
  %mul912 = mul nuw i64 %conv866, %conv728
  %mul916 = mul nuw i64 %conv866, %conv793
  %mul920 = mul nuw i64 %conv866, %conv858
  %conv923 = zext i32 %mul58 to i64
  %mul924 = mul nuw i64 %conv866, %conv923
  %mul929 = mul nuw i64 %conv866, %conv866
  %add = add i64 %mul265, %mul241
  %add930 = add i64 %add, %mul301
  %add931 = add i64 %add930, %mul349
  %add932 = add i64 %mul729, %add931
  %add933 = add i64 %add932, %mul786
  %add934 = add i64 %add933, %mul843
  %add935 = add i64 %add934, %mul900
  %shr = lshr i64 %add935, 28
  %conv936 = and i64 %add935, 268435455
  %add940 = add i64 %mul469, %add931
  %add941 = add i64 %add940, %mul526
  %add942 = add i64 %add941, %mul583
  %add943 = add i64 %add942, %mul640
  %add944 = add i64 %add943, %mul697
  %add945 = add i64 %add944, %mul754
  %add946 = add i64 %add945, %mul811
  %add947 = add i64 %add946, %mul868
  %add948 = shl i64 %mul61, 1
  %add949 = add i64 %mul249, %add948
  %add950 = add i64 %add949, %mul273
  %add951 = add i64 %add950, %mul309
  %add952 = add i64 %add951, %mul357
  %add953 = add i64 %add952, %mul413
  %add954 = add i64 %add953, %mul474
  %add955 = add i64 %add954, %mul530
  %add956 = add i64 %add955, %mul587
  %add957 = add i64 %add956, %mul644
  %add958 = add i64 %add957, %mul701
  %add959 = add i64 %add958, %mul758
  %add960 = add i64 %add959, %mul815
  %add961 = add i64 %add960, %mul872
  %add962 = shl i64 %mul65, 1
  %add963 = add i64 %mul281, %add962
  %add964 = add i64 %add963, %mul317
  %add965 = add i64 %add964, %mul365
  %add966 = add i64 %add965, %mul421
  %add967 = add i64 %add966, %mul478
  %add968 = add i64 %add967, %mul534
  %add969 = add i64 %add968, %mul591
  %add970 = add i64 %add969, %mul648
  %add971 = add i64 %add970, %mul705
  %add972 = add i64 %add971, %mul762
  %add973 = add i64 %add972, %mul819
  %add974 = add i64 %add973, %mul876
  %conv975 = zext i64 %mul880 to i128
  %add976 = add i64 %mul73, %mul69
  %add978 = shl i64 %add976, 1
  %add979 = add i64 %add978, %mul289
  %add980 = add i64 %add979, %mul325
  %add981 = add i64 %add980, %mul373
  %add982 = add i64 %add981, %mul429
  %add983 = add i64 %add982, %mul486
  %add984 = add i64 %add983, %mul539
  %add985 = add i64 %add984, %mul543
  %add986 = add i64 %add985, %mul595
  %add987 = add i64 %add986, %mul652
  %add988 = add i64 %add987, %mul709
  %add989 = add i64 %add988, %mul766
  %add990 = add i64 %add989, %mul823
  %conv991 = zext i64 %add990 to i128
  %add992 = add nuw nsw i128 %conv991, %conv975
  %conv993 = zext i64 %mul884 to i128
  %conv994 = zext i64 %mul827 to i128
  %add995 = add i64 %mul85, %mul77
  %add997 = shl i64 %add995, 1
  %add998 = add i64 %add997, %mul333
  %add999 = add i64 %add998, %mul381
  %add1000 = add i64 %add999, %mul437
  %add1001 = add i64 %add1000, %mul494
  %add1002 = add i64 %add1001, %mul551
  %add1003 = add i64 %add1002, %mul599
  %add1004 = add i64 %add1003, %mul608
  %add1005 = add i64 %add1004, %mul656
  %add1006 = add i64 %add1005, %mul713
  %add1007 = add i64 %add1006, %mul770
  %conv1008 = zext i64 %add1007 to i128
  %conv1011 = zext i64 %mul888 to i128
  %conv1012 = zext i64 %mul831 to i128
  %conv1013 = zext i64 %mul774 to i128
  %add1014 = add i64 %mul89, %mul81
  %add1015 = add i64 %add1014, %mul101
  %add1018 = shl i64 %add1015, 1
  %add1019 = add i64 %add1018, %mul341
  %add1020 = add i64 %add1019, %mul389
  %add1021 = add i64 %add1020, %mul445
  %add1022 = add i64 %add1021, %mul502
  %add1023 = add i64 %add1022, %mul559
  %add1024 = add i64 %add1023, %mul604
  %add1025 = add i64 %add1024, %mul616
  %add1026 = add i64 %add1025, %mul660
  %add1027 = add i64 %add1026, %mul673
  %add1028 = add i64 %add1027, %mul717
  %conv1029 = zext i64 %add1028 to i128
  %conv1033 = zext i64 %mul892 to i128
  %conv1034 = zext i64 %mul835 to i128
  %conv1035 = zext i64 %mul778 to i128
  %conv1036 = zext i64 %mul738 to i128
  %add1037 = add i64 %mul105, %mul93
  %add1038 = add i64 %add1037, %mul113
  %add1041 = shl i64 %add1038, 1
  %add1042 = add i64 %add1041, %mul397
  %add1043 = add i64 %add1042, %mul453
  %add1044 = add i64 %add1043, %mul510
  %add1045 = add i64 %add1044, %mul567
  %add1046 = add i64 %add1045, %mul624
  %add1047 = add i64 %add1046, %mul664
  %add1048 = add i64 %add1047, %mul681
  %add1049 = add i64 %add1048, %mul721
  %conv1050 = zext i64 %add1049 to i128
  %conv1055 = zext i64 %mul896 to i128
  %conv1056 = zext i64 %mul839 to i128
  %conv1057 = zext i64 %mul803 to i128
  %conv1058 = zext i64 %mul782 to i128
  %conv1059 = zext i64 %mul746 to i128
  %add1060 = add i64 %mul109, %mul97
  %add1061 = add i64 %add1060, %mul117
  %add1062 = add i64 %add1061, %mul121
  %add1066 = shl i64 %add1062, 1
  %add1067 = add i64 %add1066, %mul405
  %add1068 = add i64 %add1067, %mul461
  %add1069 = add i64 %add1068, %mul518
  %add1070 = add i64 %add1069, %mul575
  %add1071 = add i64 %add1070, %mul632
  %add1072 = add i64 %add1071, %mul669
  %add1073 = add i64 %add1072, %mul689
  %add1074 = add i64 %add1073, %mul725
  %conv1075 = zext i64 %add1074 to i128
  %add1081 = add i64 %mul249, %mul61
  %add1082 = add i64 %add1081, %mul273
  %add1083 = add i64 %add1082, %mul309
  %add1084 = add i64 %add1083, %mul357
  %add1085 = add i64 %add1084, %mul413
  %add1086 = add i64 %add1085, %mul734
  %add1087 = add i64 %add1086, %mul790
  %add1088 = add i64 %add1087, %mul847
  %add1089 = add i64 %add1088, %mul904
  %add1090 = add i64 %mul281, %mul65
  %add1091 = add i64 %add1090, %mul317
  %add1092 = add i64 %add1091, %mul365
  %add1093 = add i64 %add1092, %mul421
  %add1094 = add i64 %add1093, %mul478
  %add1095 = add i64 %add1094, %mul794
  %add1096 = add i64 %add1095, %mul851
  %add1097 = add i64 %add1096, %mul908
  %add1099 = add i64 %mul289, %add976
  %add1100 = add i64 %add1099, %mul325
  %add1101 = add i64 %add1100, %mul373
  %add1102 = add i64 %add1101, %mul429
  %add1103 = add i64 %add1102, %mul486
  %add1104 = add i64 %add1103, %mul543
  %add1105 = add i64 %add1104, %mul799
  %add1106 = add i64 %add1105, %mul855
  %add1107 = add i64 %add1106, %mul912
  %add1109 = add i64 %mul333, %add995
  %add1110 = add i64 %add1109, %mul381
  %add1111 = add i64 %add1110, %mul437
  %add1112 = add i64 %add1111, %mul494
  %add1113 = add i64 %add1112, %mul551
  %add1114 = add i64 %add1113, %mul608
  %add1115 = add i64 %add1114, %mul859
  %add1116 = add i64 %add1115, %mul916
  %add1119 = add i64 %mul341, %add1015
  %add1120 = add i64 %add1119, %mul389
  %add1121 = add i64 %add1120, %mul445
  %add1122 = add i64 %add1121, %mul502
  %add1123 = add i64 %add1122, %mul559
  %add1124 = add i64 %add1123, %mul616
  %add1125 = add i64 %add1124, %mul673
  %add1126 = add i64 %add1125, %mul864
  %add1127 = add i64 %add1126, %mul920
  %add1130 = add i64 %mul397, %add1038
  %add1131 = add i64 %add1130, %mul453
  %add1132 = add i64 %add1131, %mul510
  %add1133 = add i64 %add1132, %mul567
  %add1134 = add i64 %add1133, %mul624
  %add1135 = add i64 %add1134, %mul681
  %add1136 = add i64 %add1135, %mul738
  %add1137 = add i64 %add1136, %mul924
  %add1141 = add i64 %mul405, %add1062
  %add1142 = add i64 %add1141, %mul461
  %add1143 = add i64 %add1142, %mul518
  %add1144 = add i64 %add1143, %mul575
  %add1145 = add i64 %add1144, %mul632
  %add1146 = add i64 %add1145, %mul689
  %add1147 = add i64 %add1146, %mul746
  %add1148 = add i64 %add1147, %mul803
  %add1149 = add i64 %add1148, %mul929
  %conv1150 = zext nneg i64 %shr to i128
  %shr1152 = lshr i64 %add947, 28
  %conv1154 = and i64 %add947, 268435455
  %conv1155 = zext nneg i64 %shr1152 to i128
  %add1076 = add nuw nsw i128 %conv1058, %conv1059
  %add1077 = add nuw nsw i128 %add1076, %conv1057
  %add1078 = add nuw nsw i128 %add1077, %conv1056
  %add1079 = add nuw nsw i128 %add1078, %conv1055
  %add1080 = add nuw nsw i128 %add1079, %conv1150
  %add1151 = add nuw nsw i128 %add1080, %conv1155
  %add1156 = add nuw nsw i128 %add1151, %conv1075
  %shr1157 = lshr i128 %add1156, 28
  %16 = trunc i128 %add1156 to i32
  %conv1160 = and i32 %16, 268435455
  %add1161 = add i64 %add1149, %shr1152
  %add1051 = add nuw nsw i128 %conv1035, %conv1036
  %add1052 = add nuw nsw i128 %add1051, %conv1034
  %add1053 = add nuw nsw i128 %add1052, %conv1033
  %add1054 = add nuw nsw i128 %add1053, %conv1050
  %add1163 = add nuw nsw i128 %add1054, %shr1157
  %shr1164 = lshr i64 %add1161, 28
  %17 = trunc i64 %add1161 to i32
  %conv1166 = and i32 %17, 268435455
  %add1167 = add i64 %add1137, %shr1164
  %shr1168 = lshr i128 %add1163, 28
  %18 = trunc i128 %add1163 to i32
  %conv1171 = and i32 %18, 268435455
  %add1030 = add nuw nsw i128 %conv1012, %conv1013
  %add1031 = add nuw nsw i128 %add1030, %conv1011
  %add1032 = add nuw nsw i128 %add1031, %conv1029
  %add1173 = add nuw nsw i128 %add1032, %shr1168
  %shr1174 = lshr i64 %add1167, 28
  %19 = trunc i64 %add1167 to i32
  %conv1176 = and i32 %19, 268435455
  %add1177 = add i64 %add1127, %shr1174
  %shr1178 = lshr i128 %add1173, 28
  %20 = trunc i128 %add1173 to i32
  %conv1181 = and i32 %20, 268435455
  %add1009 = add nuw nsw i128 %conv993, %conv994
  %add1010 = add nuw nsw i128 %add1009, %conv1008
  %add1183 = add nuw nsw i128 %add1010, %shr1178
  %shr1184 = lshr i64 %add1177, 28
  %21 = trunc i64 %add1177 to i32
  %conv1186 = and i32 %21, 268435455
  %add1187 = add i64 %add1116, %shr1184
  %shr1188 = lshr i128 %add1183, 28
  %22 = trunc i128 %add1183 to i32
  %conv1191 = and i32 %22, 268435455
  %add1193 = add nuw nsw i128 %add992, %shr1188
  %shr1194 = lshr i64 %add1187, 28
  %23 = trunc i64 %add1187 to i32
  %conv1196 = and i32 %23, 268435455
  %add1197 = add i64 %add1107, %shr1194
  %shr1198 = lshr i128 %add1193, 28
  %conv1199 = trunc nuw nsw i128 %shr1198 to i64
  %24 = trunc i128 %add1193 to i32
  %conv1201 = and i32 %24, 268435455
  %add1202 = add i64 %add974, %conv1199
  %shr1203 = lshr i64 %add1197, 28
  %25 = trunc i64 %add1197 to i32
  %conv1205 = and i32 %25, 268435455
  %add1206 = add i64 %add1097, %shr1203
  %shr1207 = lshr i64 %add1202, 28
  %26 = trunc i64 %add1202 to i32
  %conv1209 = and i32 %26, 268435455
  %add1210 = add i64 %add961, %shr1207
  %shr1211 = lshr i64 %add1206, 28
  %27 = trunc i64 %add1206 to i32
  %conv1213 = and i32 %27, 268435455
  %add1214 = add i64 %add1089, %shr1211
  %shr1215 = lshr i64 %add1210, 28
  %28 = trunc i64 %add1210 to i32
  %conv1217 = and i32 %28, 268435455
  %add1219 = add nuw nsw i64 %shr1215, %conv1154
  %shr1220 = lshr i64 %add1214, 28
  %29 = trunc i64 %add1214 to i32
  %conv1222 = and i32 %29, 268435455
  %add1224 = add nuw nsw i64 %shr1220, %conv936
  %shr1225 = lshr i64 %add1219, 28
  %conv1226 = trunc nuw nsw i64 %shr1225 to i32
  %30 = trunc i64 %add1219 to i32
  %conv1228 = and i32 %30, 268435455
  %shr1229 = lshr i64 %add1224, 28
  %conv1230 = trunc nuw nsw i64 %shr1229 to i32
  %31 = trunc i64 %add1224 to i32
  %conv1232 = and i32 %31, 268435455
  %add1234 = add nuw nsw i32 %conv1166, %conv1226
  %add1233 = add nuw nsw i32 %conv1160, %conv1230
  %add1235 = add nuw nsw i32 %add1233, %conv1226
  %shr1236 = lshr i32 %add1235, 28
  %and1238 = and i32 %add1235, 268435455
  %add1240 = add nuw nsw i32 %shr1236, %conv1171
  %shr1241 = lshr i32 %add1234, 28
  %and1243 = and i32 %add1234, 268435455
  %add1245 = add nuw nsw i32 %shr1241, %conv1176
  store i32 %and1243, ptr %out1, align 4, !tbaa !5
  %arrayidx1247 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %add1245, ptr %arrayidx1247, align 4, !tbaa !5
  %arrayidx1248 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %conv1186, ptr %arrayidx1248, align 4, !tbaa !5
  %arrayidx1249 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %conv1196, ptr %arrayidx1249, align 4, !tbaa !5
  %arrayidx1250 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %conv1205, ptr %arrayidx1250, align 4, !tbaa !5
  %arrayidx1251 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i32 %conv1213, ptr %arrayidx1251, align 4, !tbaa !5
  %arrayidx1252 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i32 %conv1222, ptr %arrayidx1252, align 4, !tbaa !5
  %arrayidx1253 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i32 %conv1232, ptr %arrayidx1253, align 4, !tbaa !5
  %arrayidx1254 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i32 %and1238, ptr %arrayidx1254, align 4, !tbaa !5
  %arrayidx1255 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i32 %add1240, ptr %arrayidx1255, align 4, !tbaa !5
  %arrayidx1256 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i32 %conv1181, ptr %arrayidx1256, align 4, !tbaa !5
  %arrayidx1257 = getelementptr inbounds nuw i8, ptr %out1, i64 44
  store i32 %conv1191, ptr %arrayidx1257, align 4, !tbaa !5
  %arrayidx1258 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i32 %conv1201, ptr %arrayidx1258, align 4, !tbaa !5
  %arrayidx1259 = getelementptr inbounds nuw i8, ptr %out1, i64 52
  store i32 %conv1209, ptr %arrayidx1259, align 4, !tbaa !5
  %arrayidx1260 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i32 %conv1217, ptr %arrayidx1260, align 4, !tbaa !5
  %arrayidx1261 = getelementptr inbounds nuw i8, ptr %out1, i64 60
  store i32 %conv1228, ptr %arrayidx1261, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_carry(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 60
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %shr = lshr i32 %1, 28
  %shr2 = lshr i32 %0, 28
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %2 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %add = add i32 %2, %shr2
  %add4 = add i32 %add, %shr
  %3 = load i32, ptr %arg1, align 4, !tbaa !5
  %add6 = add i32 %3, %shr
  %shr7 = lshr i32 %add4, 28
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %add9 = add i32 %shr7, %4
  %shr10 = lshr i32 %add6, 28
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %add12 = add i32 %shr10, %5
  %shr13 = lshr i32 %add9, 28
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %add15 = add i32 %shr13, %6
  %shr16 = lshr i32 %add12, 28
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %7 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add18 = add i32 %shr16, %7
  %shr19 = lshr i32 %add15, 28
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arg1, i64 44
  %8 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %add21 = add i32 %shr19, %8
  %shr22 = lshr i32 %add18, 28
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %9 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add24 = add i32 %shr22, %9
  %shr25 = lshr i32 %add21, 28
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %10 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %add27 = add i32 %shr25, %10
  %shr28 = lshr i32 %add24, 28
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %11 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %add30 = add i32 %shr28, %11
  %shr31 = lshr i32 %add27, 28
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arg1, i64 52
  %12 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %add33 = add i32 %shr31, %12
  %shr34 = lshr i32 %add30, 28
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %13 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %add36 = add i32 %shr34, %13
  %shr37 = lshr i32 %add33, 28
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %14 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %add39 = add i32 %shr37, %14
  %shr40 = lshr i32 %add36, 28
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %15 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %add42 = add i32 %shr40, %15
  %shr43 = lshr i32 %add39, 28
  %and = and i32 %1, 268435455
  %add44 = add nuw nsw i32 %shr43, %and
  %shr45 = lshr i32 %add42, 28
  %and46 = and i32 %0, 268435455
  %add47 = add nuw nsw i32 %shr45, %and46
  %shr48 = lshr i32 %add44, 28
  %and49 = and i32 %add6, 268435455
  %add51 = add nuw nsw i32 %shr48, %and49
  %shr52 = lshr i32 %add47, 28
  %and55 = and i32 %add4, 268435455
  %add57 = add nuw nsw i32 %shr48, %and55
  %add58 = add nuw nsw i32 %add57, %shr52
  %and59 = and i32 %add51, 268435455
  %shr60 = lshr i32 %add51, 28
  %and63 = and i32 %add12, 268435455
  %add64 = add nuw nsw i32 %shr60, %and63
  %and65 = and i32 %add18, 268435455
  %and66 = and i32 %add24, 268435455
  %and67 = and i32 %add30, 268435455
  %and68 = and i32 %add36, 268435455
  %and69 = and i32 %add42, 268435455
  %and70 = and i32 %add47, 268435455
  %and71 = and i32 %add58, 268435455
  %shr72 = lshr i32 %add58, 28
  %and75 = and i32 %add9, 268435455
  %add76 = add nuw nsw i32 %shr72, %and75
  %and77 = and i32 %add15, 268435455
  %and78 = and i32 %add21, 268435455
  %and79 = and i32 %add27, 268435455
  %and80 = and i32 %add33, 268435455
  %and81 = and i32 %add39, 268435455
  %and82 = and i32 %add44, 268435455
  store i32 %and59, ptr %out1, align 4, !tbaa !5
  %arrayidx84 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %add64, ptr %arrayidx84, align 4, !tbaa !5
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %and65, ptr %arrayidx85, align 4, !tbaa !5
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %and66, ptr %arrayidx86, align 4, !tbaa !5
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %and67, ptr %arrayidx87, align 4, !tbaa !5
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i32 %and68, ptr %arrayidx88, align 4, !tbaa !5
  %arrayidx89 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i32 %and69, ptr %arrayidx89, align 4, !tbaa !5
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i32 %and70, ptr %arrayidx90, align 4, !tbaa !5
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i32 %and71, ptr %arrayidx91, align 4, !tbaa !5
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i32 %add76, ptr %arrayidx92, align 4, !tbaa !5
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i32 %and77, ptr %arrayidx93, align 4, !tbaa !5
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %out1, i64 44
  store i32 %and78, ptr %arrayidx94, align 4, !tbaa !5
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i32 %and79, ptr %arrayidx95, align 4, !tbaa !5
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %out1, i64 52
  store i32 %and80, ptr %arrayidx96, align 4, !tbaa !5
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i32 %and81, ptr %arrayidx97, align 4, !tbaa !5
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %out1, i64 60
  store i32 %and82, ptr %arrayidx98, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_add(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %0 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %1 = load <4 x i32>, ptr %arg2, align 4, !tbaa !5
  %2 = add <4 x i32> %1, %0
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %3 = load <4 x i32>, ptr %arrayidx11, align 4, !tbaa !5
  %4 = load <4 x i32>, ptr %arrayidx12, align 4, !tbaa !5
  %5 = add <4 x i32> %4, %3
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %6 = load <4 x i32>, ptr %arrayidx23, align 4, !tbaa !5
  %7 = load <4 x i32>, ptr %arrayidx24, align 4, !tbaa !5
  %8 = add <4 x i32> %7, %6
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %9 = load <4 x i32>, ptr %arrayidx35, align 4, !tbaa !5
  %10 = load <4 x i32>, ptr %arrayidx36, align 4, !tbaa !5
  %11 = add <4 x i32> %10, %9
  store <4 x i32> %2, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %5, ptr %arrayidx51, align 4, !tbaa !5
  store <4 x i32> %8, ptr %arrayidx55, align 4, !tbaa !5
  store <4 x i32> %11, ptr %arrayidx59, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_sub(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1, ptr noundef readonly captures(none) %arg2) local_unnamed_addr #3 {
entry:
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arg2, i64 16
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arg2, i64 32
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %0 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %1 = add <4 x i32> %0, splat (i32 536870910)
  %2 = load <4 x i32>, ptr %arg2, align 4, !tbaa !5
  %3 = sub <4 x i32> %1, %2
  %arrayidx66 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %4 = load <4 x i32>, ptr %arrayidx14, align 4, !tbaa !5
  %5 = add <4 x i32> %4, splat (i32 536870910)
  %6 = load <4 x i32>, ptr %arrayidx16, align 4, !tbaa !5
  %7 = sub <4 x i32> %5, %6
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %8 = load <4 x i32>, ptr %arrayidx30, align 4, !tbaa !5
  %9 = add <4 x i32> %8, <i32 536870908, i32 536870910, i32 536870910, i32 536870910>
  %10 = load <4 x i32>, ptr %arrayidx32, align 4, !tbaa !5
  %11 = sub <4 x i32> %9, %10
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %12 = load <4 x i32>, ptr %arrayidx46, align 4, !tbaa !5
  %13 = add <4 x i32> %12, splat (i32 536870910)
  %14 = load <4 x i32>, ptr %arrayidx48, align 4, !tbaa !5
  %15 = sub <4 x i32> %13, %14
  store <4 x i32> %3, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %7, ptr %arrayidx66, align 4, !tbaa !5
  store <4 x i32> %11, ptr %arrayidx70, align 4, !tbaa !5
  store <4 x i32> %15, ptr %arrayidx74, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_opp(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %0 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %1 = sub <4 x i32> splat (i32 536870910), %0
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %2 = load <4 x i32>, ptr %arrayidx7, align 4, !tbaa !5
  %3 = sub <4 x i32> splat (i32 536870910), %2
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %4 = load <4 x i32>, ptr %arrayidx15, align 4, !tbaa !5
  %5 = sub <4 x i32> <i32 536870908, i32 536870910, i32 536870910, i32 536870910>, %4
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %6 = load <4 x i32>, ptr %arrayidx23, align 4, !tbaa !5
  %7 = sub <4 x i32> splat (i32 536870910), %6
  store <4 x i32> %1, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %3, ptr %arrayidx35, align 4, !tbaa !5
  store <4 x i32> %5, ptr %arrayidx39, align 4, !tbaa !5
  store <4 x i32> %7, ptr %arrayidx43, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_selectznz(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, i8 noundef zeroext %arg1, ptr noundef readonly captures(none) %arg2, ptr noundef readonly captures(none) %arg3) local_unnamed_addr #4 {
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
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %arg2, i64 48
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %arg3, i64 48
  %2 = load <4 x i32>, ptr %arg2, align 4, !tbaa !5
  %3 = load <4 x i32>, ptr %arg3, align 4, !tbaa !5
  %4 = insertelement <4 x i32> poison, i32 %0, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = and <4 x i32> %5, %3
  %7 = insertelement <4 x i32> poison, i32 %1, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  %9 = and <4 x i32> %8, %2
  %10 = or <4 x i32> %6, %9
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %11 = load <4 x i32>, ptr %arrayidx8, align 4, !tbaa !5
  %12 = load <4 x i32>, ptr %arrayidx9, align 4, !tbaa !5
  %13 = and <4 x i32> %12, %5
  %14 = and <4 x i32> %11, %8
  %15 = or <4 x i32> %13, %14
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %16 = load <4 x i32>, ptr %arrayidx16, align 4, !tbaa !5
  %17 = load <4 x i32>, ptr %arrayidx17, align 4, !tbaa !5
  %18 = and <4 x i32> %17, %5
  %19 = and <4 x i32> %16, %8
  %20 = or <4 x i32> %18, %19
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %21 = load <4 x i32>, ptr %arrayidx24, align 4, !tbaa !5
  %22 = load <4 x i32>, ptr %arrayidx25, align 4, !tbaa !5
  %23 = and <4 x i32> %22, %5
  %24 = and <4 x i32> %21, %8
  %25 = or <4 x i32> %23, %24
  store <4 x i32> %10, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %15, ptr %arrayidx36, align 4, !tbaa !5
  store <4 x i32> %20, ptr %arrayidx40, align 4, !tbaa !5
  store <4 x i32> %25, ptr %arrayidx44, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_to_bytes(ptr noundef writeonly initializes((0, 56)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #4 {
entry:
  %0 = load i32, ptr %arg1, align 4, !tbaa !5
  %sub1.i = add i32 %0, -268435455
  %shr.i = ashr i32 %sub1.i, 28
  %and.i = and i32 %sub1.i, 268435455
  %conv5.i = sub nsw i32 0, %shr.i
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %conv.i = and i32 %conv5.i, 255
  %.neg = add i32 %1, -268435455
  %sub1.i377 = sub i32 %.neg, %conv.i
  %shr.i378 = ashr i32 %sub1.i377, 28
  %and.i379 = and i32 %sub1.i377, 268435455
  %conv5.i380 = sub nsw i32 0, %shr.i378
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %arg1, i64 8
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %conv.i381 = and i32 %conv5.i380, 255
  %.neg557 = add i32 %2, -268435455
  %sub1.i382 = sub i32 %.neg557, %conv.i381
  %shr.i383 = ashr i32 %sub1.i382, 28
  %and.i384 = and i32 %sub1.i382, 268435455
  %conv5.i385 = sub nsw i32 0, %shr.i383
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %3 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %conv.i386 = and i32 %conv5.i385, 255
  %.neg558 = add i32 %3, -268435455
  %sub1.i387 = sub i32 %.neg558, %conv.i386
  %shr.i388 = ashr i32 %sub1.i387, 28
  %and.i389 = and i32 %sub1.i387, 268435455
  %conv5.i390 = sub nsw i32 0, %shr.i388
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %conv.i391 = and i32 %conv5.i390, 255
  %.neg559 = add i32 %4, -268435455
  %sub1.i392 = sub i32 %.neg559, %conv.i391
  %shr.i393 = ashr i32 %sub1.i392, 28
  %and.i394 = and i32 %sub1.i392, 268435455
  %conv5.i395 = sub nsw i32 0, %shr.i393
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %5 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %conv.i396 = and i32 %conv5.i395, 255
  %.neg560 = add i32 %5, -268435455
  %sub1.i397 = sub i32 %.neg560, %conv.i396
  %shr.i398 = ashr i32 %sub1.i397, 28
  %and.i399 = and i32 %sub1.i397, 268435455
  %conv5.i400 = sub nsw i32 0, %shr.i398
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %conv.i401 = and i32 %conv5.i400, 255
  %.neg561 = add i32 %6, -268435455
  %sub1.i402 = sub i32 %.neg561, %conv.i401
  %shr.i403 = ashr i32 %sub1.i402, 28
  %and.i404 = and i32 %sub1.i402, 268435455
  %conv5.i405 = sub nsw i32 0, %shr.i403
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 28
  %7 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %conv.i406 = and i32 %conv5.i405, 255
  %.neg562 = add i32 %7, -268435455
  %sub1.i407 = sub i32 %.neg562, %conv.i406
  %shr.i408 = ashr i32 %sub1.i407, 28
  %and.i409 = and i32 %sub1.i407, 268435455
  %conv5.i410 = sub nsw i32 0, %shr.i408
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %8 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %conv.i411 = and i32 %conv5.i410, 255
  %.neg563 = add i32 %8, -268435454
  %sub1.i412 = sub i32 %.neg563, %conv.i411
  %shr.i413 = ashr i32 %sub1.i412, 28
  %and.i414 = and i32 %sub1.i412, 268435455
  %conv5.i415 = sub nsw i32 0, %shr.i413
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arg1, i64 36
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %conv.i416 = and i32 %conv5.i415, 255
  %.neg564 = add i32 %9, -268435455
  %sub1.i417 = sub i32 %.neg564, %conv.i416
  %shr.i418 = ashr i32 %sub1.i417, 28
  %and.i419 = and i32 %sub1.i417, 268435455
  %conv5.i420 = sub nsw i32 0, %shr.i418
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %10 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %conv.i421 = and i32 %conv5.i420, 255
  %.neg565 = add i32 %10, -268435455
  %sub1.i422 = sub i32 %.neg565, %conv.i421
  %shr.i423 = ashr i32 %sub1.i422, 28
  %and.i424 = and i32 %sub1.i422, 268435455
  %conv5.i425 = sub nsw i32 0, %shr.i423
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %arg1, i64 44
  %11 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv.i426 = and i32 %conv5.i425, 255
  %.neg566 = add i32 %11, -268435455
  %sub1.i427 = sub i32 %.neg566, %conv.i426
  %shr.i428 = ashr i32 %sub1.i427, 28
  %and.i429 = and i32 %sub1.i427, 268435455
  %conv5.i430 = sub nsw i32 0, %shr.i428
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %12 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %conv.i431 = and i32 %conv5.i430, 255
  %.neg567 = add i32 %12, -268435455
  %sub1.i432 = sub i32 %.neg567, %conv.i431
  %shr.i433 = ashr i32 %sub1.i432, 28
  %and.i434 = and i32 %sub1.i432, 268435455
  %conv5.i435 = sub nsw i32 0, %shr.i433
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arg1, i64 52
  %13 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %conv.i436 = and i32 %conv5.i435, 255
  %.neg568 = add i32 %13, -268435455
  %sub1.i437 = sub i32 %.neg568, %conv.i436
  %shr.i438 = ashr i32 %sub1.i437, 28
  %and.i439 = and i32 %sub1.i437, 268435455
  %conv5.i440 = sub nsw i32 0, %shr.i438
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arg1, i64 56
  %14 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %conv.i441 = and i32 %conv5.i440, 255
  %.neg569 = add i32 %14, -268435455
  %sub1.i442 = sub i32 %.neg569, %conv.i441
  %shr.i443 = ashr i32 %sub1.i442, 28
  %and.i444 = and i32 %sub1.i442, 268435455
  %conv5.i445 = sub nsw i32 0, %shr.i443
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %arg1, i64 60
  %15 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %conv.i446 = and i32 %conv5.i445, 255
  %.neg570 = add i32 %15, -268435455
  %sub1.i447 = sub i32 %.neg570, %conv.i446
  %tobool.i = icmp ugt i32 %sub1.i447, 268435455
  %conv4.i = sext i1 %tobool.i to i32
  %16 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv4.i) #5, !srcloc !9
  %not.i = xor i32 %conv4.i, -1
  %17 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %not.i) #5, !srcloc !9
  %and = and i32 %16, 268435455
  %add1.i = add nuw nsw i32 %and, %and.i
  %shr.i452 = lshr i32 %add1.i, 28
  %add.i = add nuw nsw i32 %and, %and.i379
  %add1.i454 = add nuw nsw i32 %add.i, %shr.i452
  %shr.i456 = lshr i32 %add1.i454, 28
  %add.i459 = add nuw nsw i32 %and, %and.i384
  %add1.i460 = add nuw nsw i32 %add.i459, %shr.i456
  %shr.i462 = lshr i32 %add1.i460, 28
  %add.i465 = add nuw nsw i32 %and, %and.i389
  %add1.i466 = add nuw nsw i32 %add.i465, %shr.i462
  %shr.i468 = lshr i32 %add1.i466, 28
  %add.i471 = add nuw nsw i32 %and, %and.i394
  %add1.i472 = add nuw nsw i32 %add.i471, %shr.i468
  %shr.i474 = lshr i32 %add1.i472, 28
  %add.i477 = add nuw nsw i32 %and, %and.i399
  %add1.i478 = add nuw nsw i32 %add.i477, %shr.i474
  %shr.i480 = lshr i32 %add1.i478, 28
  %add.i483 = add nuw nsw i32 %and.i404, %and
  %add1.i484 = add nuw nsw i32 %add.i483, %shr.i480
  %shr.i486 = lshr i32 %add1.i484, 28
  %add.i489 = add nuw nsw i32 %and.i409, %and
  %add1.i490 = add nuw nsw i32 %add.i489, %shr.i486
  %shr.i492 = lshr i32 %add1.i490, 28
  %and23 = and i32 %16, 268435454
  %add.i495 = add nuw nsw i32 %and.i414, %and23
  %add1.i496 = add nuw nsw i32 %add.i495, %shr.i492
  %shr.i498 = lshr i32 %add1.i496, 28
  %add.i501 = add nuw nsw i32 %and.i419, %and
  %add1.i502 = add nuw nsw i32 %add.i501, %shr.i498
  %shr.i504 = lshr i32 %add1.i502, 28
  %add.i507 = add nuw nsw i32 %and.i424, %and
  %add1.i508 = add nuw nsw i32 %add.i507, %shr.i504
  %shr.i510 = lshr i32 %add1.i508, 28
  %add.i513 = add nuw nsw i32 %and.i429, %and
  %add1.i514 = add nuw nsw i32 %add.i513, %shr.i510
  %shr.i516 = lshr i32 %add1.i514, 28
  %add.i519 = add nuw nsw i32 %and.i434, %and
  %add1.i520 = add nuw nsw i32 %add.i519, %shr.i516
  %shr.i522 = lshr i32 %add1.i520, 28
  %add.i525 = add nuw nsw i32 %and.i439, %and
  %add1.i526 = add nuw nsw i32 %add.i525, %shr.i522
  %shr.i528 = lshr i32 %add1.i526, 28
  %add.i531 = add nuw nsw i32 %and.i444, %and
  %add1.i532 = add nuw nsw i32 %add.i531, %shr.i528
  %shr.i534 = lshr i32 %add1.i532, 28
  %add.i537 = add i32 %sub1.i447, %16
  %add1.i538 = add i32 %add.i537, %shr.i534
  %and.i539 = shl i32 %add1.i538, 4
  %and.i527 = shl i32 %add1.i526, 4
  %and.i515 = shl i32 %add1.i514, 4
  %and.i503 = shl i32 %add1.i502, 4
  %and.i491 = shl i32 %add1.i490, 4
  %and.i479 = shl i32 %add1.i478, 4
  %and.i467 = shl i32 %add1.i466, 4
  %and.i455 = shl i32 %add1.i454, 4
  %conv = trunc i32 %add1.i to i8
  %shr = lshr i32 %add1.i, 8
  %conv40 = trunc i32 %shr to i8
  %shr41 = lshr i32 %add1.i, 16
  %conv43 = trunc i32 %shr41 to i8
  %and.i451 = lshr i32 %add1.i, 24
  %shr44 = and i32 %and.i451, 15
  %add = or disjoint i32 %and.i455, %shr44
  %conv48 = trunc i32 %add to i8
  %shr49 = lshr i32 %and.i455, 8
  %conv51 = trunc i32 %shr49 to i8
  %shr52 = lshr i32 %and.i455, 16
  %conv54 = trunc i32 %shr52 to i8
  %shr55 = lshr i32 %and.i455, 24
  %conv56 = trunc nuw i32 %shr55 to i8
  %conv58 = trunc i32 %add1.i460 to i8
  %shr59 = lshr i32 %add1.i460, 8
  %conv61 = trunc i32 %shr59 to i8
  %shr62 = lshr i32 %add1.i460, 16
  %conv64 = trunc i32 %shr62 to i8
  %and.i461 = lshr i32 %add1.i460, 24
  %shr65 = and i32 %and.i461, 15
  %add68 = or disjoint i32 %and.i467, %shr65
  %conv70 = trunc i32 %add68 to i8
  %shr71 = lshr i32 %and.i467, 8
  %conv73 = trunc i32 %shr71 to i8
  %shr74 = lshr i32 %and.i467, 16
  %conv76 = trunc i32 %shr74 to i8
  %shr77 = lshr i32 %and.i467, 24
  %conv78 = trunc nuw i32 %shr77 to i8
  %conv80 = trunc i32 %add1.i472 to i8
  %shr81 = lshr i32 %add1.i472, 8
  %conv83 = trunc i32 %shr81 to i8
  %shr84 = lshr i32 %add1.i472, 16
  %conv86 = trunc i32 %shr84 to i8
  %and.i473 = lshr i32 %add1.i472, 24
  %shr87 = and i32 %and.i473, 15
  %add90 = or disjoint i32 %and.i479, %shr87
  %conv92 = trunc i32 %add90 to i8
  %shr93 = lshr i32 %and.i479, 8
  %conv95 = trunc i32 %shr93 to i8
  %shr96 = lshr i32 %and.i479, 16
  %conv98 = trunc i32 %shr96 to i8
  %shr99 = lshr i32 %and.i479, 24
  %conv100 = trunc nuw i32 %shr99 to i8
  %conv102 = trunc i32 %add1.i484 to i8
  %shr103 = lshr i32 %add1.i484, 8
  %conv105 = trunc i32 %shr103 to i8
  %shr106 = lshr i32 %add1.i484, 16
  %conv108 = trunc i32 %shr106 to i8
  %and.i485 = lshr i32 %add1.i484, 24
  %shr109 = and i32 %and.i485, 15
  %add112 = or disjoint i32 %and.i491, %shr109
  %conv114 = trunc i32 %add112 to i8
  %shr115 = lshr i32 %and.i491, 8
  %conv117 = trunc i32 %shr115 to i8
  %shr118 = lshr i32 %and.i491, 16
  %conv120 = trunc i32 %shr118 to i8
  %shr121 = lshr i32 %and.i491, 24
  %conv122 = trunc nuw i32 %shr121 to i8
  %conv124 = trunc i32 %add1.i496 to i8
  %shr125 = lshr i32 %add1.i496, 8
  %conv127 = trunc i32 %shr125 to i8
  %shr128 = lshr i32 %add1.i496, 16
  %conv130 = trunc i32 %shr128 to i8
  %and.i497 = lshr i32 %add1.i496, 24
  %shr131 = and i32 %and.i497, 15
  %add134 = or disjoint i32 %and.i503, %shr131
  %conv136 = trunc i32 %add134 to i8
  %shr137 = lshr i32 %and.i503, 8
  %conv139 = trunc i32 %shr137 to i8
  %shr140 = lshr i32 %and.i503, 16
  %conv142 = trunc i32 %shr140 to i8
  %shr143 = lshr i32 %and.i503, 24
  %conv144 = trunc nuw i32 %shr143 to i8
  %conv146 = trunc i32 %add1.i508 to i8
  %shr147 = lshr i32 %add1.i508, 8
  %conv149 = trunc i32 %shr147 to i8
  %shr150 = lshr i32 %add1.i508, 16
  %conv152 = trunc i32 %shr150 to i8
  %and.i509 = lshr i32 %add1.i508, 24
  %shr153 = and i32 %and.i509, 15
  %add156 = or disjoint i32 %and.i515, %shr153
  %conv158 = trunc i32 %add156 to i8
  %shr159 = lshr i32 %and.i515, 8
  %conv161 = trunc i32 %shr159 to i8
  %shr162 = lshr i32 %and.i515, 16
  %conv164 = trunc i32 %shr162 to i8
  %shr165 = lshr i32 %and.i515, 24
  %conv166 = trunc nuw i32 %shr165 to i8
  %conv168 = trunc i32 %add1.i520 to i8
  %shr169 = lshr i32 %add1.i520, 8
  %conv171 = trunc i32 %shr169 to i8
  %shr172 = lshr i32 %add1.i520, 16
  %conv174 = trunc i32 %shr172 to i8
  %and.i521 = lshr i32 %add1.i520, 24
  %shr175 = and i32 %and.i521, 15
  %add178 = or disjoint i32 %and.i527, %shr175
  %conv180 = trunc i32 %add178 to i8
  %shr181 = lshr i32 %and.i527, 8
  %conv183 = trunc i32 %shr181 to i8
  %shr184 = lshr i32 %and.i527, 16
  %conv186 = trunc i32 %shr184 to i8
  %shr187 = lshr i32 %and.i527, 24
  %conv188 = trunc nuw i32 %shr187 to i8
  %conv190 = trunc i32 %add1.i532 to i8
  %shr191 = lshr i32 %add1.i532, 8
  %conv193 = trunc i32 %shr191 to i8
  %shr194 = lshr i32 %add1.i532, 16
  %conv196 = trunc i32 %shr194 to i8
  %and.i533 = lshr i32 %add1.i532, 24
  %shr197 = and i32 %and.i533, 15
  %add200 = or disjoint i32 %and.i539, %shr197
  %conv202 = trunc i32 %add200 to i8
  %shr203 = lshr i32 %and.i539, 8
  %conv205 = trunc i32 %shr203 to i8
  %shr206 = lshr i32 %and.i539, 16
  %conv208 = trunc i32 %shr206 to i8
  %shr209 = lshr i32 %and.i539, 24
  %conv210 = trunc nuw i32 %shr209 to i8
  store i8 %conv, ptr %out1, align 1, !tbaa !10
  %arrayidx212 = getelementptr inbounds nuw i8, ptr %out1, i64 1
  store i8 %conv40, ptr %arrayidx212, align 1, !tbaa !10
  %arrayidx213 = getelementptr inbounds nuw i8, ptr %out1, i64 2
  store i8 %conv43, ptr %arrayidx213, align 1, !tbaa !10
  %arrayidx214 = getelementptr inbounds nuw i8, ptr %out1, i64 3
  store i8 %conv48, ptr %arrayidx214, align 1, !tbaa !10
  %arrayidx215 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i8 %conv51, ptr %arrayidx215, align 1, !tbaa !10
  %arrayidx216 = getelementptr inbounds nuw i8, ptr %out1, i64 5
  store i8 %conv54, ptr %arrayidx216, align 1, !tbaa !10
  %arrayidx217 = getelementptr inbounds nuw i8, ptr %out1, i64 6
  store i8 %conv56, ptr %arrayidx217, align 1, !tbaa !10
  %arrayidx218 = getelementptr inbounds nuw i8, ptr %out1, i64 7
  store i8 %conv58, ptr %arrayidx218, align 1, !tbaa !10
  %arrayidx219 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i8 %conv61, ptr %arrayidx219, align 1, !tbaa !10
  %arrayidx220 = getelementptr inbounds nuw i8, ptr %out1, i64 9
  store i8 %conv64, ptr %arrayidx220, align 1, !tbaa !10
  %arrayidx221 = getelementptr inbounds nuw i8, ptr %out1, i64 10
  store i8 %conv70, ptr %arrayidx221, align 1, !tbaa !10
  %arrayidx222 = getelementptr inbounds nuw i8, ptr %out1, i64 11
  store i8 %conv73, ptr %arrayidx222, align 1, !tbaa !10
  %arrayidx223 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i8 %conv76, ptr %arrayidx223, align 1, !tbaa !10
  %arrayidx224 = getelementptr inbounds nuw i8, ptr %out1, i64 13
  store i8 %conv78, ptr %arrayidx224, align 1, !tbaa !10
  %arrayidx225 = getelementptr inbounds nuw i8, ptr %out1, i64 14
  store i8 %conv80, ptr %arrayidx225, align 1, !tbaa !10
  %arrayidx226 = getelementptr inbounds nuw i8, ptr %out1, i64 15
  store i8 %conv83, ptr %arrayidx226, align 1, !tbaa !10
  %arrayidx227 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i8 %conv86, ptr %arrayidx227, align 1, !tbaa !10
  %arrayidx228 = getelementptr inbounds nuw i8, ptr %out1, i64 17
  store i8 %conv92, ptr %arrayidx228, align 1, !tbaa !10
  %arrayidx229 = getelementptr inbounds nuw i8, ptr %out1, i64 18
  store i8 %conv95, ptr %arrayidx229, align 1, !tbaa !10
  %arrayidx230 = getelementptr inbounds nuw i8, ptr %out1, i64 19
  store i8 %conv98, ptr %arrayidx230, align 1, !tbaa !10
  %arrayidx231 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i8 %conv100, ptr %arrayidx231, align 1, !tbaa !10
  %arrayidx232 = getelementptr inbounds nuw i8, ptr %out1, i64 21
  store i8 %conv102, ptr %arrayidx232, align 1, !tbaa !10
  %arrayidx233 = getelementptr inbounds nuw i8, ptr %out1, i64 22
  store i8 %conv105, ptr %arrayidx233, align 1, !tbaa !10
  %arrayidx234 = getelementptr inbounds nuw i8, ptr %out1, i64 23
  store i8 %conv108, ptr %arrayidx234, align 1, !tbaa !10
  %arrayidx235 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i8 %conv114, ptr %arrayidx235, align 1, !tbaa !10
  %arrayidx236 = getelementptr inbounds nuw i8, ptr %out1, i64 25
  store i8 %conv117, ptr %arrayidx236, align 1, !tbaa !10
  %arrayidx237 = getelementptr inbounds nuw i8, ptr %out1, i64 26
  store i8 %conv120, ptr %arrayidx237, align 1, !tbaa !10
  %arrayidx238 = getelementptr inbounds nuw i8, ptr %out1, i64 27
  store i8 %conv122, ptr %arrayidx238, align 1, !tbaa !10
  %arrayidx239 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i8 %conv124, ptr %arrayidx239, align 1, !tbaa !10
  %arrayidx240 = getelementptr inbounds nuw i8, ptr %out1, i64 29
  store i8 %conv127, ptr %arrayidx240, align 1, !tbaa !10
  %arrayidx241 = getelementptr inbounds nuw i8, ptr %out1, i64 30
  store i8 %conv130, ptr %arrayidx241, align 1, !tbaa !10
  %arrayidx242 = getelementptr inbounds nuw i8, ptr %out1, i64 31
  store i8 %conv136, ptr %arrayidx242, align 1, !tbaa !10
  %arrayidx243 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i8 %conv139, ptr %arrayidx243, align 1, !tbaa !10
  %arrayidx244 = getelementptr inbounds nuw i8, ptr %out1, i64 33
  store i8 %conv142, ptr %arrayidx244, align 1, !tbaa !10
  %arrayidx245 = getelementptr inbounds nuw i8, ptr %out1, i64 34
  store i8 %conv144, ptr %arrayidx245, align 1, !tbaa !10
  %arrayidx246 = getelementptr inbounds nuw i8, ptr %out1, i64 35
  store i8 %conv146, ptr %arrayidx246, align 1, !tbaa !10
  %arrayidx247 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i8 %conv149, ptr %arrayidx247, align 1, !tbaa !10
  %arrayidx248 = getelementptr inbounds nuw i8, ptr %out1, i64 37
  store i8 %conv152, ptr %arrayidx248, align 1, !tbaa !10
  %arrayidx249 = getelementptr inbounds nuw i8, ptr %out1, i64 38
  store i8 %conv158, ptr %arrayidx249, align 1, !tbaa !10
  %arrayidx250 = getelementptr inbounds nuw i8, ptr %out1, i64 39
  store i8 %conv161, ptr %arrayidx250, align 1, !tbaa !10
  %arrayidx251 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i8 %conv164, ptr %arrayidx251, align 1, !tbaa !10
  %arrayidx252 = getelementptr inbounds nuw i8, ptr %out1, i64 41
  store i8 %conv166, ptr %arrayidx252, align 1, !tbaa !10
  %arrayidx253 = getelementptr inbounds nuw i8, ptr %out1, i64 42
  store i8 %conv168, ptr %arrayidx253, align 1, !tbaa !10
  %arrayidx254 = getelementptr inbounds nuw i8, ptr %out1, i64 43
  store i8 %conv171, ptr %arrayidx254, align 1, !tbaa !10
  %arrayidx255 = getelementptr inbounds nuw i8, ptr %out1, i64 44
  store i8 %conv174, ptr %arrayidx255, align 1, !tbaa !10
  %arrayidx256 = getelementptr inbounds nuw i8, ptr %out1, i64 45
  store i8 %conv180, ptr %arrayidx256, align 1, !tbaa !10
  %arrayidx257 = getelementptr inbounds nuw i8, ptr %out1, i64 46
  store i8 %conv183, ptr %arrayidx257, align 1, !tbaa !10
  %arrayidx258 = getelementptr inbounds nuw i8, ptr %out1, i64 47
  store i8 %conv186, ptr %arrayidx258, align 1, !tbaa !10
  %arrayidx259 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i8 %conv188, ptr %arrayidx259, align 1, !tbaa !10
  %arrayidx260 = getelementptr inbounds nuw i8, ptr %out1, i64 49
  store i8 %conv190, ptr %arrayidx260, align 1, !tbaa !10
  %arrayidx261 = getelementptr inbounds nuw i8, ptr %out1, i64 50
  store i8 %conv193, ptr %arrayidx261, align 1, !tbaa !10
  %arrayidx262 = getelementptr inbounds nuw i8, ptr %out1, i64 51
  store i8 %conv196, ptr %arrayidx262, align 1, !tbaa !10
  %arrayidx263 = getelementptr inbounds nuw i8, ptr %out1, i64 52
  store i8 %conv202, ptr %arrayidx263, align 1, !tbaa !10
  %arrayidx264 = getelementptr inbounds nuw i8, ptr %out1, i64 53
  store i8 %conv205, ptr %arrayidx264, align 1, !tbaa !10
  %arrayidx265 = getelementptr inbounds nuw i8, ptr %out1, i64 54
  store i8 %conv208, ptr %arrayidx265, align 1, !tbaa !10
  %arrayidx266 = getelementptr inbounds nuw i8, ptr %out1, i64 55
  store i8 %conv210, ptr %arrayidx266, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_from_bytes(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %arg1, i64 55
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %0 to i32
  %shl = shl nuw nsw i32 %conv, 20
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arg1, i64 54
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !10
  %conv2 = zext i8 %1 to i32
  %shl3 = shl nuw nsw i32 %conv2, 12
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 53
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %conv5 = zext i8 %2 to i32
  %shl6 = shl nuw nsw i32 %conv5, 4
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arg1, i64 52
  %3 = load i8, ptr %arrayidx7, align 1, !tbaa !10
  %conv8 = zext i8 %3 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arg1, i64 51
  %4 = load i8, ptr %arrayidx10, align 1, !tbaa !10
  %conv11 = zext i8 %4 to i32
  %shl12 = shl nuw nsw i32 %conv11, 16
  %5 = getelementptr i8, ptr %arg1, i64 49
  %6 = load i16, ptr %5, align 1
  %7 = zext i16 %6 to i32
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %8 = load i8, ptr %arrayidx17, align 1, !tbaa !10
  %conv18 = zext i8 %8 to i32
  %shl19 = shl nuw nsw i32 %conv18, 20
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %arg1, i64 47
  %9 = load i8, ptr %arrayidx20, align 1, !tbaa !10
  %conv21 = zext i8 %9 to i32
  %shl22 = shl nuw nsw i32 %conv21, 12
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arg1, i64 46
  %10 = load i8, ptr %arrayidx23, align 1, !tbaa !10
  %conv24 = zext i8 %10 to i32
  %shl25 = shl nuw nsw i32 %conv24, 4
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %arg1, i64 45
  %11 = load i8, ptr %arrayidx26, align 1, !tbaa !10
  %conv27 = zext i8 %11 to i32
  %shl28 = shl nuw i32 %conv27, 24
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %arg1, i64 44
  %12 = load i8, ptr %arrayidx29, align 1, !tbaa !10
  %conv30 = zext i8 %12 to i32
  %shl31 = shl nuw nsw i32 %conv30, 16
  %13 = getelementptr i8, ptr %arg1, i64 42
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %arg1, i64 41
  %16 = load i8, ptr %arrayidx36, align 1, !tbaa !10
  %conv37 = zext i8 %16 to i32
  %shl38 = shl nuw nsw i32 %conv37, 20
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %arg1, i64 40
  %17 = load i8, ptr %arrayidx39, align 1, !tbaa !10
  %conv40 = zext i8 %17 to i32
  %shl41 = shl nuw nsw i32 %conv40, 12
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %arg1, i64 39
  %18 = load i8, ptr %arrayidx42, align 1, !tbaa !10
  %conv43 = zext i8 %18 to i32
  %shl44 = shl nuw nsw i32 %conv43, 4
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %arg1, i64 38
  %19 = load i8, ptr %arrayidx45, align 1, !tbaa !10
  %conv46 = zext i8 %19 to i32
  %shl47 = shl nuw i32 %conv46, 24
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %arg1, i64 37
  %20 = load i8, ptr %arrayidx48, align 1, !tbaa !10
  %conv49 = zext i8 %20 to i32
  %shl50 = shl nuw nsw i32 %conv49, 16
  %21 = getelementptr i8, ptr %arg1, i64 35
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i32
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %arg1, i64 34
  %24 = load i8, ptr %arrayidx55, align 1, !tbaa !10
  %conv56 = zext i8 %24 to i32
  %shl57 = shl nuw nsw i32 %conv56, 20
  %arrayidx58 = getelementptr inbounds nuw i8, ptr %arg1, i64 33
  %25 = load i8, ptr %arrayidx58, align 1, !tbaa !10
  %conv59 = zext i8 %25 to i32
  %shl60 = shl nuw nsw i32 %conv59, 12
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %26 = load i8, ptr %arrayidx61, align 1, !tbaa !10
  %conv62 = zext i8 %26 to i32
  %shl63 = shl nuw nsw i32 %conv62, 4
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %arg1, i64 31
  %27 = load i8, ptr %arrayidx64, align 1, !tbaa !10
  %conv65 = zext i8 %27 to i32
  %shl66 = shl nuw i32 %conv65, 24
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %arg1, i64 30
  %28 = load i8, ptr %arrayidx67, align 1, !tbaa !10
  %conv68 = zext i8 %28 to i32
  %shl69 = shl nuw nsw i32 %conv68, 16
  %29 = getelementptr i8, ptr %arg1, i64 28
  %30 = load i16, ptr %29, align 1
  %31 = zext i16 %30 to i32
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %arg1, i64 27
  %32 = load i8, ptr %arrayidx74, align 1, !tbaa !10
  %conv75 = zext i8 %32 to i32
  %shl76 = shl nuw nsw i32 %conv75, 20
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %arg1, i64 26
  %33 = load i8, ptr %arrayidx77, align 1, !tbaa !10
  %conv78 = zext i8 %33 to i32
  %shl79 = shl nuw nsw i32 %conv78, 12
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %arg1, i64 25
  %34 = load i8, ptr %arrayidx80, align 1, !tbaa !10
  %conv81 = zext i8 %34 to i32
  %shl82 = shl nuw nsw i32 %conv81, 4
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %arg1, i64 24
  %35 = load i8, ptr %arrayidx83, align 1, !tbaa !10
  %conv84 = zext i8 %35 to i32
  %shl85 = shl nuw i32 %conv84, 24
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %arg1, i64 23
  %36 = load i8, ptr %arrayidx86, align 1, !tbaa !10
  %conv87 = zext i8 %36 to i32
  %shl88 = shl nuw nsw i32 %conv87, 16
  %37 = getelementptr i8, ptr %arg1, i64 21
  %38 = load i16, ptr %37, align 1
  %39 = zext i16 %38 to i32
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %arg1, i64 20
  %40 = load i8, ptr %arrayidx93, align 1, !tbaa !10
  %conv94 = zext i8 %40 to i32
  %shl95 = shl nuw nsw i32 %conv94, 20
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %arg1, i64 19
  %41 = load i8, ptr %arrayidx96, align 1, !tbaa !10
  %conv97 = zext i8 %41 to i32
  %shl98 = shl nuw nsw i32 %conv97, 12
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %arg1, i64 18
  %42 = load i8, ptr %arrayidx99, align 1, !tbaa !10
  %conv100 = zext i8 %42 to i32
  %shl101 = shl nuw nsw i32 %conv100, 4
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %arg1, i64 17
  %43 = load i8, ptr %arrayidx102, align 1, !tbaa !10
  %conv103 = zext i8 %43 to i32
  %shl104 = shl nuw i32 %conv103, 24
  %arrayidx105 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %44 = load i8, ptr %arrayidx105, align 1, !tbaa !10
  %conv106 = zext i8 %44 to i32
  %shl107 = shl nuw nsw i32 %conv106, 16
  %45 = getelementptr i8, ptr %arg1, i64 14
  %46 = load i16, ptr %45, align 1
  %47 = zext i16 %46 to i32
  %arrayidx112 = getelementptr inbounds nuw i8, ptr %arg1, i64 13
  %48 = load i8, ptr %arrayidx112, align 1, !tbaa !10
  %conv113 = zext i8 %48 to i32
  %shl114 = shl nuw nsw i32 %conv113, 20
  %arrayidx115 = getelementptr inbounds nuw i8, ptr %arg1, i64 12
  %49 = load i8, ptr %arrayidx115, align 1, !tbaa !10
  %conv116 = zext i8 %49 to i32
  %shl117 = shl nuw nsw i32 %conv116, 12
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %arg1, i64 11
  %50 = load i8, ptr %arrayidx118, align 1, !tbaa !10
  %conv119 = zext i8 %50 to i32
  %shl120 = shl nuw nsw i32 %conv119, 4
  %arrayidx121 = getelementptr inbounds nuw i8, ptr %arg1, i64 10
  %51 = load i8, ptr %arrayidx121, align 1, !tbaa !10
  %conv122 = zext i8 %51 to i32
  %shl123 = shl nuw i32 %conv122, 24
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %arg1, i64 9
  %52 = load i8, ptr %arrayidx124, align 1, !tbaa !10
  %conv125 = zext i8 %52 to i32
  %shl126 = shl nuw nsw i32 %conv125, 16
  %53 = getelementptr i8, ptr %arg1, i64 7
  %54 = load i16, ptr %53, align 1
  %55 = zext i16 %54 to i32
  %arrayidx131 = getelementptr inbounds nuw i8, ptr %arg1, i64 6
  %56 = load i8, ptr %arrayidx131, align 1, !tbaa !10
  %conv132 = zext i8 %56 to i32
  %shl133 = shl nuw nsw i32 %conv132, 20
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %arg1, i64 5
  %57 = load i8, ptr %arrayidx134, align 1, !tbaa !10
  %conv135 = zext i8 %57 to i32
  %shl136 = shl nuw nsw i32 %conv135, 12
  %arrayidx137 = getelementptr inbounds nuw i8, ptr %arg1, i64 4
  %58 = load i8, ptr %arrayidx137, align 1, !tbaa !10
  %conv138 = zext i8 %58 to i32
  %shl139 = shl nuw nsw i32 %conv138, 4
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %arg1, i64 3
  %59 = load i8, ptr %arrayidx140, align 1, !tbaa !10
  %conv141 = zext i8 %59 to i32
  %shl142 = shl nuw i32 %conv141, 24
  %arrayidx143 = getelementptr inbounds nuw i8, ptr %arg1, i64 2
  %60 = load i8, ptr %arrayidx143, align 1, !tbaa !10
  %conv144 = zext i8 %60 to i32
  %shl145 = shl nuw nsw i32 %conv144, 16
  %61 = load i16, ptr %arg1, align 1
  %62 = zext i16 %61 to i32
  %add151 = or disjoint i32 %shl145, %62
  %shl142.masked = and i32 %shl142, 251658240
  %and = or disjoint i32 %add151, %shl142.masked
  %shr = lshr i8 %59, 4
  %conv154 = zext nneg i8 %shr to i32
  %add155 = or disjoint i32 %shl139, %conv154
  %add156 = or disjoint i32 %add155, %shl136
  %add157 = or disjoint i32 %add156, %shl133
  %add160 = or disjoint i32 %shl126, %55
  %shl123.masked = and i32 %shl123, 251658240
  %and162 = or disjoint i32 %add160, %shl123.masked
  %shr163 = lshr i8 %51, 4
  %conv165 = zext nneg i8 %shr163 to i32
  %add166 = or disjoint i32 %shl120, %conv165
  %add167 = or disjoint i32 %add166, %shl117
  %add168 = or disjoint i32 %add167, %shl114
  %add171 = or disjoint i32 %shl107, %47
  %shl104.masked = and i32 %shl104, 251658240
  %and173 = or disjoint i32 %add171, %shl104.masked
  %shr174 = lshr i8 %43, 4
  %conv176 = zext nneg i8 %shr174 to i32
  %add177 = or disjoint i32 %shl101, %conv176
  %add178 = or disjoint i32 %add177, %shl98
  %add179 = or disjoint i32 %add178, %shl95
  %add182 = or disjoint i32 %shl88, %39
  %shl85.masked = and i32 %shl85, 251658240
  %and184 = or disjoint i32 %add182, %shl85.masked
  %shr185 = lshr i8 %35, 4
  %conv187 = zext nneg i8 %shr185 to i32
  %add188 = or disjoint i32 %shl82, %conv187
  %add189 = or disjoint i32 %add188, %shl79
  %add190 = or disjoint i32 %add189, %shl76
  %add193 = or disjoint i32 %shl69, %31
  %shl66.masked = and i32 %shl66, 251658240
  %and195 = or disjoint i32 %add193, %shl66.masked
  %shr196 = lshr i8 %27, 4
  %conv198 = zext nneg i8 %shr196 to i32
  %add199 = or disjoint i32 %shl63, %conv198
  %add200 = or disjoint i32 %add199, %shl60
  %add201 = or disjoint i32 %add200, %shl57
  %add204 = or disjoint i32 %shl50, %23
  %shl47.masked = and i32 %shl47, 251658240
  %and206 = or disjoint i32 %add204, %shl47.masked
  %shr207 = lshr i8 %19, 4
  %conv209 = zext nneg i8 %shr207 to i32
  %add210 = or disjoint i32 %shl44, %conv209
  %add211 = or disjoint i32 %add210, %shl41
  %add212 = or disjoint i32 %add211, %shl38
  %add215 = or disjoint i32 %shl31, %15
  %shl28.masked = and i32 %shl28, 251658240
  %and217 = or disjoint i32 %add215, %shl28.masked
  %shr218 = lshr i8 %11, 4
  %conv220 = zext nneg i8 %shr218 to i32
  %add221 = or disjoint i32 %shl25, %conv220
  %add222 = or disjoint i32 %add221, %shl22
  %add223 = or disjoint i32 %add222, %shl19
  %add226 = or disjoint i32 %shl12, %7
  %shl9.masked = and i32 %shl9, 251658240
  %and228 = or disjoint i32 %add226, %shl9.masked
  %shr229 = lshr i8 %3, 4
  %conv231 = zext nneg i8 %shr229 to i32
  %add232 = or disjoint i32 %shl6, %conv231
  %add233 = or disjoint i32 %add232, %shl3
  %add234 = or disjoint i32 %add233, %shl
  store i32 %and, ptr %out1, align 4, !tbaa !5
  %arrayidx236 = getelementptr inbounds nuw i8, ptr %out1, i64 4
  store i32 %add157, ptr %arrayidx236, align 4, !tbaa !5
  %arrayidx237 = getelementptr inbounds nuw i8, ptr %out1, i64 8
  store i32 %and162, ptr %arrayidx237, align 4, !tbaa !5
  %arrayidx238 = getelementptr inbounds nuw i8, ptr %out1, i64 12
  store i32 %add168, ptr %arrayidx238, align 4, !tbaa !5
  %arrayidx239 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  store i32 %and173, ptr %arrayidx239, align 4, !tbaa !5
  %arrayidx240 = getelementptr inbounds nuw i8, ptr %out1, i64 20
  store i32 %add179, ptr %arrayidx240, align 4, !tbaa !5
  %arrayidx241 = getelementptr inbounds nuw i8, ptr %out1, i64 24
  store i32 %and184, ptr %arrayidx241, align 4, !tbaa !5
  %arrayidx242 = getelementptr inbounds nuw i8, ptr %out1, i64 28
  store i32 %add190, ptr %arrayidx242, align 4, !tbaa !5
  %arrayidx243 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  store i32 %and195, ptr %arrayidx243, align 4, !tbaa !5
  %arrayidx244 = getelementptr inbounds nuw i8, ptr %out1, i64 36
  store i32 %add201, ptr %arrayidx244, align 4, !tbaa !5
  %arrayidx245 = getelementptr inbounds nuw i8, ptr %out1, i64 40
  store i32 %and206, ptr %arrayidx245, align 4, !tbaa !5
  %arrayidx246 = getelementptr inbounds nuw i8, ptr %out1, i64 44
  store i32 %add212, ptr %arrayidx246, align 4, !tbaa !5
  %arrayidx247 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  store i32 %and217, ptr %arrayidx247, align 4, !tbaa !5
  %arrayidx248 = getelementptr inbounds nuw i8, ptr %out1, i64 52
  store i32 %add223, ptr %arrayidx248, align 4, !tbaa !5
  %arrayidx249 = getelementptr inbounds nuw i8, ptr %out1, i64 56
  store i32 %and228, ptr %arrayidx249, align 4, !tbaa !5
  %arrayidx250 = getelementptr inbounds nuw i8, ptr %out1, i64 60
  store i32 %add234, ptr %arrayidx250, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fiat_p448_relax(ptr noundef writeonly captures(none) initializes((0, 64)) %out1, ptr noundef readonly captures(none) %arg1) local_unnamed_addr #3 {
entry:
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arg1, i64 16
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %arg1, i64 32
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %arg1, i64 48
  %0 = load <4 x i32>, ptr %arg1, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %out1, i64 16
  %1 = load <4 x i32>, ptr %arrayidx4, align 4, !tbaa !5
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %out1, i64 32
  %2 = load <4 x i32>, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %out1, i64 48
  %3 = load <4 x i32>, ptr %arrayidx12, align 4, !tbaa !5
  store <4 x i32> %0, ptr %out1, align 4, !tbaa !5
  store <4 x i32> %1, ptr %arrayidx20, align 4, !tbaa !5
  store <4 x i32> %2, ptr %arrayidx24, align 4, !tbaa !5
  store <4 x i32> %3, ptr %arrayidx28, align 4, !tbaa !5
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
!9 = !{i64 3759}
!10 = !{!7, !7, i64 0}
