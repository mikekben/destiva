; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

@stderr = external global ptr, align 8
@BZ2_rNums = external dso_local global [512 x i32], align 16
@.str.4 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.5 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bz__AssertH__fail(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_hbCreateDecodeTables(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_decompress(ptr noundef %s) #1 {
entry:
  %s.addr = alloca ptr, align 8
  %uc = alloca i8, align 1
  %retVal = alloca i32, align 4
  %minLen = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %strm = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %alphaSize = alloca i32, align 4
  %nGroups = alloca i32, align 4
  %nSelectors = alloca i32, align 4
  %EOB = alloca i32, align 4
  %groupNo = alloca i32, align 4
  %groupPos = alloca i32, align 4
  %nextSym = alloca i32, align 4
  %nblockMAX = alloca i32, align 4
  %nblock = alloca i32, align 4
  %es = alloca i32, align 4
  %N = alloca i32, align 4
  %curr = alloca i32, align 4
  %zt = alloca i32, align 4
  %zn = alloca i32, align 4
  %zvec = alloca i32, align 4
  %zj = alloca i32, align 4
  %gSel = alloca i32, align 4
  %gMinlen = alloca i32, align 4
  %gLimit = alloca ptr, align 8
  %gBase = alloca ptr, align 8
  %gPerm = alloca ptr, align 8
  %v = alloca i32, align 4
  %v69 = alloca i32, align 4
  %v125 = alloca i32, align 4
  %v181 = alloca i32, align 4
  %v279 = alloca i32, align 4
  %v340 = alloca i32, align 4
  %v396 = alloca i32, align 4
  %v452 = alloca i32, align 4
  %v508 = alloca i32, align 4
  %v564 = alloca i32, align 4
  %v627 = alloca i32, align 4
  %v683 = alloca i32, align 4
  %v739 = alloca i32, align 4
  %v795 = alloca i32, align 4
  %v851 = alloca i32, align 4
  %v902 = alloca i32, align 4
  %v958 = alloca i32, align 4
  %v1014 = alloca i32, align 4
  %v1085 = alloca i32, align 4
  %v1168 = alloca i32, align 4
  %v1242 = alloca i32, align 4
  %v1299 = alloca i32, align 4
  %v1359 = alloca i32, align 4
  %pos = alloca [6 x i8], align 1
  %tmp = alloca i8, align 1
  %v1420 = alloca i8, align 1
  %v1470 = alloca i32, align 4
  %v1534 = alloca i32, align 4
  %v1591 = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %v1789 = alloca i32, align 4
  %v1855 = alloca i32, align 4
  %v1982 = alloca i32, align 4
  %v2048 = alloca i32, align 4
  %ii2168 = alloca i32, align 4
  %jj2169 = alloca i32, align 4
  %kk2170 = alloca i32, align 4
  %pp = alloca i32, align 4
  %lno = alloca i32, align 4
  %off = alloca i32, align 4
  %nn = alloca i32, align 4
  %z = alloca i32, align 4
  %v2398 = alloca i32, align 4
  %v2464 = alloca i32, align 4
  %tmp2669 = alloca i32, align 4
  %v2908 = alloca i32, align 4
  %v2965 = alloca i32, align 4
  %v3022 = alloca i32, align 4
  %v3079 = alloca i32, align 4
  %v3136 = alloca i32, align 4
  %v3193 = alloca i32, align 4
  %v3250 = alloca i32, align 4
  %v3307 = alloca i32, align 4
  %v3364 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %strm1 = getelementptr inbounds nuw %struct.DState, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %strm1, align 8
  store ptr %1, ptr %strm, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %state = getelementptr inbounds nuw %struct.DState, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %state, align 8
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8
  %save_i = getelementptr inbounds nuw %struct.DState, ptr %4, i32 0, i32 40
  store i32 0, ptr %save_i, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %save_j = getelementptr inbounds nuw %struct.DState, ptr %5, i32 0, i32 41
  store i32 0, ptr %save_j, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %save_t = getelementptr inbounds nuw %struct.DState, ptr %6, i32 0, i32 42
  store i32 0, ptr %save_t, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %save_alphaSize = getelementptr inbounds nuw %struct.DState, ptr %7, i32 0, i32 43
  store i32 0, ptr %save_alphaSize, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %save_nGroups = getelementptr inbounds nuw %struct.DState, ptr %8, i32 0, i32 44
  store i32 0, ptr %save_nGroups, align 4
  %9 = load ptr, ptr %s.addr, align 8
  %save_nSelectors = getelementptr inbounds nuw %struct.DState, ptr %9, i32 0, i32 45
  store i32 0, ptr %save_nSelectors, align 8
  %10 = load ptr, ptr %s.addr, align 8
  %save_EOB = getelementptr inbounds nuw %struct.DState, ptr %10, i32 0, i32 46
  store i32 0, ptr %save_EOB, align 4
  %11 = load ptr, ptr %s.addr, align 8
  %save_groupNo = getelementptr inbounds nuw %struct.DState, ptr %11, i32 0, i32 47
  store i32 0, ptr %save_groupNo, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %save_groupPos = getelementptr inbounds nuw %struct.DState, ptr %12, i32 0, i32 48
  store i32 0, ptr %save_groupPos, align 4
  %13 = load ptr, ptr %s.addr, align 8
  %save_nextSym = getelementptr inbounds nuw %struct.DState, ptr %13, i32 0, i32 49
  store i32 0, ptr %save_nextSym, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %save_nblockMAX = getelementptr inbounds nuw %struct.DState, ptr %14, i32 0, i32 50
  store i32 0, ptr %save_nblockMAX, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %save_nblock = getelementptr inbounds nuw %struct.DState, ptr %15, i32 0, i32 51
  store i32 0, ptr %save_nblock, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %save_es = getelementptr inbounds nuw %struct.DState, ptr %16, i32 0, i32 52
  store i32 0, ptr %save_es, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %save_N = getelementptr inbounds nuw %struct.DState, ptr %17, i32 0, i32 53
  store i32 0, ptr %save_N, align 8
  %18 = load ptr, ptr %s.addr, align 8
  %save_curr = getelementptr inbounds nuw %struct.DState, ptr %18, i32 0, i32 54
  store i32 0, ptr %save_curr, align 4
  %19 = load ptr, ptr %s.addr, align 8
  %save_zt = getelementptr inbounds nuw %struct.DState, ptr %19, i32 0, i32 55
  store i32 0, ptr %save_zt, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %save_zn = getelementptr inbounds nuw %struct.DState, ptr %20, i32 0, i32 56
  store i32 0, ptr %save_zn, align 4
  %21 = load ptr, ptr %s.addr, align 8
  %save_zvec = getelementptr inbounds nuw %struct.DState, ptr %21, i32 0, i32 57
  store i32 0, ptr %save_zvec, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %save_zj = getelementptr inbounds nuw %struct.DState, ptr %22, i32 0, i32 58
  store i32 0, ptr %save_zj, align 4
  %23 = load ptr, ptr %s.addr, align 8
  %save_gSel = getelementptr inbounds nuw %struct.DState, ptr %23, i32 0, i32 59
  store i32 0, ptr %save_gSel, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %save_gMinlen = getelementptr inbounds nuw %struct.DState, ptr %24, i32 0, i32 60
  store i32 0, ptr %save_gMinlen, align 4
  %25 = load ptr, ptr %s.addr, align 8
  %save_gLimit = getelementptr inbounds nuw %struct.DState, ptr %25, i32 0, i32 61
  store ptr null, ptr %save_gLimit, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %save_gBase = getelementptr inbounds nuw %struct.DState, ptr %26, i32 0, i32 62
  store ptr null, ptr %save_gBase, align 8
  %27 = load ptr, ptr %s.addr, align 8
  %save_gPerm = getelementptr inbounds nuw %struct.DState, ptr %27, i32 0, i32 63
  store ptr null, ptr %save_gPerm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load ptr, ptr %s.addr, align 8
  %save_i2 = getelementptr inbounds nuw %struct.DState, ptr %28, i32 0, i32 40
  %29 = load i32, ptr %save_i2, align 4
  store i32 %29, ptr %i, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %save_j3 = getelementptr inbounds nuw %struct.DState, ptr %30, i32 0, i32 41
  %31 = load i32, ptr %save_j3, align 8
  store i32 %31, ptr %j, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %save_t4 = getelementptr inbounds nuw %struct.DState, ptr %32, i32 0, i32 42
  %33 = load i32, ptr %save_t4, align 4
  store i32 %33, ptr %t, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %save_alphaSize5 = getelementptr inbounds nuw %struct.DState, ptr %34, i32 0, i32 43
  %35 = load i32, ptr %save_alphaSize5, align 8
  store i32 %35, ptr %alphaSize, align 4
  %36 = load ptr, ptr %s.addr, align 8
  %save_nGroups6 = getelementptr inbounds nuw %struct.DState, ptr %36, i32 0, i32 44
  %37 = load i32, ptr %save_nGroups6, align 4
  store i32 %37, ptr %nGroups, align 4
  %38 = load ptr, ptr %s.addr, align 8
  %save_nSelectors7 = getelementptr inbounds nuw %struct.DState, ptr %38, i32 0, i32 45
  %39 = load i32, ptr %save_nSelectors7, align 8
  store i32 %39, ptr %nSelectors, align 4
  %40 = load ptr, ptr %s.addr, align 8
  %save_EOB8 = getelementptr inbounds nuw %struct.DState, ptr %40, i32 0, i32 46
  %41 = load i32, ptr %save_EOB8, align 4
  store i32 %41, ptr %EOB, align 4
  %42 = load ptr, ptr %s.addr, align 8
  %save_groupNo9 = getelementptr inbounds nuw %struct.DState, ptr %42, i32 0, i32 47
  %43 = load i32, ptr %save_groupNo9, align 8
  store i32 %43, ptr %groupNo, align 4
  %44 = load ptr, ptr %s.addr, align 8
  %save_groupPos10 = getelementptr inbounds nuw %struct.DState, ptr %44, i32 0, i32 48
  %45 = load i32, ptr %save_groupPos10, align 4
  store i32 %45, ptr %groupPos, align 4
  %46 = load ptr, ptr %s.addr, align 8
  %save_nextSym11 = getelementptr inbounds nuw %struct.DState, ptr %46, i32 0, i32 49
  %47 = load i32, ptr %save_nextSym11, align 8
  store i32 %47, ptr %nextSym, align 4
  %48 = load ptr, ptr %s.addr, align 8
  %save_nblockMAX12 = getelementptr inbounds nuw %struct.DState, ptr %48, i32 0, i32 50
  %49 = load i32, ptr %save_nblockMAX12, align 4
  store i32 %49, ptr %nblockMAX, align 4
  %50 = load ptr, ptr %s.addr, align 8
  %save_nblock13 = getelementptr inbounds nuw %struct.DState, ptr %50, i32 0, i32 51
  %51 = load i32, ptr %save_nblock13, align 8
  store i32 %51, ptr %nblock, align 4
  %52 = load ptr, ptr %s.addr, align 8
  %save_es14 = getelementptr inbounds nuw %struct.DState, ptr %52, i32 0, i32 52
  %53 = load i32, ptr %save_es14, align 4
  store i32 %53, ptr %es, align 4
  %54 = load ptr, ptr %s.addr, align 8
  %save_N15 = getelementptr inbounds nuw %struct.DState, ptr %54, i32 0, i32 53
  %55 = load i32, ptr %save_N15, align 8
  store i32 %55, ptr %N, align 4
  %56 = load ptr, ptr %s.addr, align 8
  %save_curr16 = getelementptr inbounds nuw %struct.DState, ptr %56, i32 0, i32 54
  %57 = load i32, ptr %save_curr16, align 4
  store i32 %57, ptr %curr, align 4
  %58 = load ptr, ptr %s.addr, align 8
  %save_zt17 = getelementptr inbounds nuw %struct.DState, ptr %58, i32 0, i32 55
  %59 = load i32, ptr %save_zt17, align 8
  store i32 %59, ptr %zt, align 4
  %60 = load ptr, ptr %s.addr, align 8
  %save_zn18 = getelementptr inbounds nuw %struct.DState, ptr %60, i32 0, i32 56
  %61 = load i32, ptr %save_zn18, align 4
  store i32 %61, ptr %zn, align 4
  %62 = load ptr, ptr %s.addr, align 8
  %save_zvec19 = getelementptr inbounds nuw %struct.DState, ptr %62, i32 0, i32 57
  %63 = load i32, ptr %save_zvec19, align 8
  store i32 %63, ptr %zvec, align 4
  %64 = load ptr, ptr %s.addr, align 8
  %save_zj20 = getelementptr inbounds nuw %struct.DState, ptr %64, i32 0, i32 58
  %65 = load i32, ptr %save_zj20, align 4
  store i32 %65, ptr %zj, align 4
  %66 = load ptr, ptr %s.addr, align 8
  %save_gSel21 = getelementptr inbounds nuw %struct.DState, ptr %66, i32 0, i32 59
  %67 = load i32, ptr %save_gSel21, align 8
  store i32 %67, ptr %gSel, align 4
  %68 = load ptr, ptr %s.addr, align 8
  %save_gMinlen22 = getelementptr inbounds nuw %struct.DState, ptr %68, i32 0, i32 60
  %69 = load i32, ptr %save_gMinlen22, align 4
  store i32 %69, ptr %gMinlen, align 4
  %70 = load ptr, ptr %s.addr, align 8
  %save_gLimit23 = getelementptr inbounds nuw %struct.DState, ptr %70, i32 0, i32 61
  %71 = load ptr, ptr %save_gLimit23, align 8
  store ptr %71, ptr %gLimit, align 8
  %72 = load ptr, ptr %s.addr, align 8
  %save_gBase24 = getelementptr inbounds nuw %struct.DState, ptr %72, i32 0, i32 62
  %73 = load ptr, ptr %save_gBase24, align 8
  store ptr %73, ptr %gBase, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %save_gPerm25 = getelementptr inbounds nuw %struct.DState, ptr %74, i32 0, i32 63
  %75 = load ptr, ptr %save_gPerm25, align 8
  store ptr %75, ptr %gPerm, align 8
  store i32 0, ptr %retVal, align 4
  %76 = load ptr, ptr %s.addr, align 8
  %state26 = getelementptr inbounds nuw %struct.DState, ptr %76, i32 0, i32 1
  %77 = load i32, ptr %state26, align 8
  switch i32 %77, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb62
    i32 12, label %sw.bb118
    i32 13, label %sw.bb174
    i32 14, label %sw.bb272
    i32 15, label %sw.bb333
    i32 16, label %sw.bb389
    i32 17, label %sw.bb445
    i32 18, label %sw.bb501
    i32 19, label %sw.bb557
    i32 20, label %sw.bb620
    i32 21, label %sw.bb676
    i32 22, label %sw.bb732
    i32 23, label %sw.bb788
    i32 24, label %sw.bb844
    i32 25, label %sw.bb895
    i32 26, label %sw.bb951
    i32 27, label %sw.bb1007
    i32 28, label %sw.bb1078
    i32 29, label %sw.bb1161
    i32 30, label %sw.bb1235
    i32 31, label %sw.bb1292
    i32 32, label %sw.bb1351
    i32 33, label %sw.bb1462
    i32 34, label %sw.bb1526
    i32 35, label %sw.bb1583
    i32 36, label %sw.bb1781
    i32 37, label %sw.bb1847
    i32 38, label %sw.bb1974
    i32 39, label %sw.bb2040
    i32 40, label %sw.bb2390
    i32 41, label %sw.bb2456
    i32 42, label %sw.bb2900
    i32 43, label %sw.bb2957
    i32 44, label %sw.bb3014
    i32 45, label %sw.bb3071
    i32 46, label %sw.bb3128
    i32 47, label %sw.bb3185
    i32 48, label %sw.bb3242
    i32 49, label %sw.bb3299
    i32 50, label %sw.bb3356
  ]

sw.bb:                                            ; preds = %if.end
  %78 = load ptr, ptr %s.addr, align 8
  %state27 = getelementptr inbounds nuw %struct.DState, ptr %78, i32 0, i32 1
  store i32 10, ptr %state27, align 8
  br label %while.body

while.body:                                       ; preds = %if.end56, %sw.bb
  %79 = load ptr, ptr %s.addr, align 8
  %bsLive = getelementptr inbounds nuw %struct.DState, ptr %79, i32 0, i32 8
  %80 = load i32, ptr %bsLive, align 4
  %cmp28 = icmp sge i32 %80, 8
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %while.body
  %81 = load ptr, ptr %s.addr, align 8
  %bsBuff = getelementptr inbounds nuw %struct.DState, ptr %81, i32 0, i32 7
  %82 = load i32, ptr %bsBuff, align 8
  %83 = load ptr, ptr %s.addr, align 8
  %bsLive30 = getelementptr inbounds nuw %struct.DState, ptr %83, i32 0, i32 8
  %84 = load i32, ptr %bsLive30, align 4
  %sub = sub nsw i32 %84, 8
  %shr = lshr i32 %82, %sub
  %and = and i32 %shr, 255
  store i32 %and, ptr %v, align 4
  %85 = load ptr, ptr %s.addr, align 8
  %bsLive31 = getelementptr inbounds nuw %struct.DState, ptr %85, i32 0, i32 8
  %86 = load i32, ptr %bsLive31, align 4
  %sub32 = sub nsw i32 %86, 8
  store i32 %sub32, ptr %bsLive31, align 4
  %87 = load i32, ptr %v, align 4
  %conv = trunc i32 %87 to i8
  store i8 %conv, ptr %uc, align 1
  br label %while.end

if.end33:                                         ; preds = %while.body
  %88 = load ptr, ptr %s.addr, align 8
  %strm34 = getelementptr inbounds nuw %struct.DState, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %strm34, align 8
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %89, i32 0, i32 1
  %90 = load i32, ptr %avail_in, align 8
  %cmp35 = icmp eq i32 %90, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end38:                                         ; preds = %if.end33
  %91 = load ptr, ptr %s.addr, align 8
  %bsBuff39 = getelementptr inbounds nuw %struct.DState, ptr %91, i32 0, i32 7
  %92 = load i32, ptr %bsBuff39, align 8
  %shl = shl i32 %92, 8
  %93 = load ptr, ptr %s.addr, align 8
  %strm40 = getelementptr inbounds nuw %struct.DState, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %strm40, align 8
  %next_in = getelementptr inbounds nuw %struct.bz_stream, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %next_in, align 8
  %96 = load i8, ptr %95, align 1
  %conv41 = zext i8 %96 to i32
  %or = or i32 %shl, %conv41
  %97 = load ptr, ptr %s.addr, align 8
  %bsBuff42 = getelementptr inbounds nuw %struct.DState, ptr %97, i32 0, i32 7
  store i32 %or, ptr %bsBuff42, align 8
  %98 = load ptr, ptr %s.addr, align 8
  %bsLive43 = getelementptr inbounds nuw %struct.DState, ptr %98, i32 0, i32 8
  %99 = load i32, ptr %bsLive43, align 4
  %add = add nsw i32 %99, 8
  store i32 %add, ptr %bsLive43, align 4
  %100 = load ptr, ptr %s.addr, align 8
  %strm44 = getelementptr inbounds nuw %struct.DState, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %strm44, align 8
  %next_in45 = getelementptr inbounds nuw %struct.bz_stream, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %next_in45, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %102, i32 1
  store ptr %incdec.ptr, ptr %next_in45, align 8
  %103 = load ptr, ptr %s.addr, align 8
  %strm46 = getelementptr inbounds nuw %struct.DState, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %strm46, align 8
  %avail_in47 = getelementptr inbounds nuw %struct.bz_stream, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %avail_in47, align 8
  %dec = add i32 %105, -1
  store i32 %dec, ptr %avail_in47, align 8
  %106 = load ptr, ptr %s.addr, align 8
  %strm48 = getelementptr inbounds nuw %struct.DState, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %strm48, align 8
  %total_in_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %107, i32 0, i32 2
  %108 = load i32, ptr %total_in_lo32, align 4
  %inc = add i32 %108, 1
  store i32 %inc, ptr %total_in_lo32, align 4
  %109 = load ptr, ptr %s.addr, align 8
  %strm49 = getelementptr inbounds nuw %struct.DState, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %strm49, align 8
  %total_in_lo3250 = getelementptr inbounds nuw %struct.bz_stream, ptr %110, i32 0, i32 2
  %111 = load i32, ptr %total_in_lo3250, align 4
  %cmp51 = icmp eq i32 %111, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end38
  %112 = load ptr, ptr %s.addr, align 8
  %strm54 = getelementptr inbounds nuw %struct.DState, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %strm54, align 8
  %total_in_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %113, i32 0, i32 3
  %114 = load i32, ptr %total_in_hi32, align 8
  %inc55 = add i32 %114, 1
  store i32 %inc55, ptr %total_in_hi32, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end38
  br label %while.body

while.end:                                        ; preds = %if.then29
  %115 = load i8, ptr %uc, align 1
  %conv57 = zext i8 %115 to i32
  %cmp58 = icmp ne i32 %conv57, 66
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %while.end
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

if.end61:                                         ; preds = %while.end
  br label %sw.bb62

sw.bb62:                                          ; preds = %if.end61, %if.end
  %116 = load ptr, ptr %s.addr, align 8
  %state63 = getelementptr inbounds nuw %struct.DState, ptr %116, i32 0, i32 1
  store i32 11, ptr %state63, align 8
  br label %while.body64

while.body64:                                     ; preds = %if.end111, %sw.bb62
  %117 = load ptr, ptr %s.addr, align 8
  %bsLive65 = getelementptr inbounds nuw %struct.DState, ptr %117, i32 0, i32 8
  %118 = load i32, ptr %bsLive65, align 4
  %cmp66 = icmp sge i32 %118, 8
  br i1 %cmp66, label %if.then68, label %if.end78

if.then68:                                        ; preds = %while.body64
  %119 = load ptr, ptr %s.addr, align 8
  %bsBuff70 = getelementptr inbounds nuw %struct.DState, ptr %119, i32 0, i32 7
  %120 = load i32, ptr %bsBuff70, align 8
  %121 = load ptr, ptr %s.addr, align 8
  %bsLive71 = getelementptr inbounds nuw %struct.DState, ptr %121, i32 0, i32 8
  %122 = load i32, ptr %bsLive71, align 4
  %sub72 = sub nsw i32 %122, 8
  %shr73 = lshr i32 %120, %sub72
  %and74 = and i32 %shr73, 255
  store i32 %and74, ptr %v69, align 4
  %123 = load ptr, ptr %s.addr, align 8
  %bsLive75 = getelementptr inbounds nuw %struct.DState, ptr %123, i32 0, i32 8
  %124 = load i32, ptr %bsLive75, align 4
  %sub76 = sub nsw i32 %124, 8
  store i32 %sub76, ptr %bsLive75, align 4
  %125 = load i32, ptr %v69, align 4
  %conv77 = trunc i32 %125 to i8
  store i8 %conv77, ptr %uc, align 1
  br label %while.end112

if.end78:                                         ; preds = %while.body64
  %126 = load ptr, ptr %s.addr, align 8
  %strm79 = getelementptr inbounds nuw %struct.DState, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %strm79, align 8
  %avail_in80 = getelementptr inbounds nuw %struct.bz_stream, ptr %127, i32 0, i32 1
  %128 = load i32, ptr %avail_in80, align 8
  %cmp81 = icmp eq i32 %128, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end78
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end84:                                         ; preds = %if.end78
  %129 = load ptr, ptr %s.addr, align 8
  %bsBuff85 = getelementptr inbounds nuw %struct.DState, ptr %129, i32 0, i32 7
  %130 = load i32, ptr %bsBuff85, align 8
  %shl86 = shl i32 %130, 8
  %131 = load ptr, ptr %s.addr, align 8
  %strm87 = getelementptr inbounds nuw %struct.DState, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %strm87, align 8
  %next_in88 = getelementptr inbounds nuw %struct.bz_stream, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %next_in88, align 8
  %134 = load i8, ptr %133, align 1
  %conv89 = zext i8 %134 to i32
  %or90 = or i32 %shl86, %conv89
  %135 = load ptr, ptr %s.addr, align 8
  %bsBuff91 = getelementptr inbounds nuw %struct.DState, ptr %135, i32 0, i32 7
  store i32 %or90, ptr %bsBuff91, align 8
  %136 = load ptr, ptr %s.addr, align 8
  %bsLive92 = getelementptr inbounds nuw %struct.DState, ptr %136, i32 0, i32 8
  %137 = load i32, ptr %bsLive92, align 4
  %add93 = add nsw i32 %137, 8
  store i32 %add93, ptr %bsLive92, align 4
  %138 = load ptr, ptr %s.addr, align 8
  %strm94 = getelementptr inbounds nuw %struct.DState, ptr %138, i32 0, i32 0
  %139 = load ptr, ptr %strm94, align 8
  %next_in95 = getelementptr inbounds nuw %struct.bz_stream, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %next_in95, align 8
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %140, i32 1
  store ptr %incdec.ptr96, ptr %next_in95, align 8
  %141 = load ptr, ptr %s.addr, align 8
  %strm97 = getelementptr inbounds nuw %struct.DState, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %strm97, align 8
  %avail_in98 = getelementptr inbounds nuw %struct.bz_stream, ptr %142, i32 0, i32 1
  %143 = load i32, ptr %avail_in98, align 8
  %dec99 = add i32 %143, -1
  store i32 %dec99, ptr %avail_in98, align 8
  %144 = load ptr, ptr %s.addr, align 8
  %strm100 = getelementptr inbounds nuw %struct.DState, ptr %144, i32 0, i32 0
  %145 = load ptr, ptr %strm100, align 8
  %total_in_lo32101 = getelementptr inbounds nuw %struct.bz_stream, ptr %145, i32 0, i32 2
  %146 = load i32, ptr %total_in_lo32101, align 4
  %inc102 = add i32 %146, 1
  store i32 %inc102, ptr %total_in_lo32101, align 4
  %147 = load ptr, ptr %s.addr, align 8
  %strm103 = getelementptr inbounds nuw %struct.DState, ptr %147, i32 0, i32 0
  %148 = load ptr, ptr %strm103, align 8
  %total_in_lo32104 = getelementptr inbounds nuw %struct.bz_stream, ptr %148, i32 0, i32 2
  %149 = load i32, ptr %total_in_lo32104, align 4
  %cmp105 = icmp eq i32 %149, 0
  br i1 %cmp105, label %if.then107, label %if.end111

if.then107:                                       ; preds = %if.end84
  %150 = load ptr, ptr %s.addr, align 8
  %strm108 = getelementptr inbounds nuw %struct.DState, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %strm108, align 8
  %total_in_hi32109 = getelementptr inbounds nuw %struct.bz_stream, ptr %151, i32 0, i32 3
  %152 = load i32, ptr %total_in_hi32109, align 8
  %inc110 = add i32 %152, 1
  store i32 %inc110, ptr %total_in_hi32109, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end84
  br label %while.body64

while.end112:                                     ; preds = %if.then68
  %153 = load i8, ptr %uc, align 1
  %conv113 = zext i8 %153 to i32
  %cmp114 = icmp ne i32 %conv113, 90
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %while.end112
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

if.end117:                                        ; preds = %while.end112
  br label %sw.bb118

sw.bb118:                                         ; preds = %if.end117, %if.end
  %154 = load ptr, ptr %s.addr, align 8
  %state119 = getelementptr inbounds nuw %struct.DState, ptr %154, i32 0, i32 1
  store i32 12, ptr %state119, align 8
  br label %while.body120

while.body120:                                    ; preds = %if.end167, %sw.bb118
  %155 = load ptr, ptr %s.addr, align 8
  %bsLive121 = getelementptr inbounds nuw %struct.DState, ptr %155, i32 0, i32 8
  %156 = load i32, ptr %bsLive121, align 4
  %cmp122 = icmp sge i32 %156, 8
  br i1 %cmp122, label %if.then124, label %if.end134

if.then124:                                       ; preds = %while.body120
  %157 = load ptr, ptr %s.addr, align 8
  %bsBuff126 = getelementptr inbounds nuw %struct.DState, ptr %157, i32 0, i32 7
  %158 = load i32, ptr %bsBuff126, align 8
  %159 = load ptr, ptr %s.addr, align 8
  %bsLive127 = getelementptr inbounds nuw %struct.DState, ptr %159, i32 0, i32 8
  %160 = load i32, ptr %bsLive127, align 4
  %sub128 = sub nsw i32 %160, 8
  %shr129 = lshr i32 %158, %sub128
  %and130 = and i32 %shr129, 255
  store i32 %and130, ptr %v125, align 4
  %161 = load ptr, ptr %s.addr, align 8
  %bsLive131 = getelementptr inbounds nuw %struct.DState, ptr %161, i32 0, i32 8
  %162 = load i32, ptr %bsLive131, align 4
  %sub132 = sub nsw i32 %162, 8
  store i32 %sub132, ptr %bsLive131, align 4
  %163 = load i32, ptr %v125, align 4
  %conv133 = trunc i32 %163 to i8
  store i8 %conv133, ptr %uc, align 1
  br label %while.end168

if.end134:                                        ; preds = %while.body120
  %164 = load ptr, ptr %s.addr, align 8
  %strm135 = getelementptr inbounds nuw %struct.DState, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %strm135, align 8
  %avail_in136 = getelementptr inbounds nuw %struct.bz_stream, ptr %165, i32 0, i32 1
  %166 = load i32, ptr %avail_in136, align 8
  %cmp137 = icmp eq i32 %166, 0
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end134
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end140:                                        ; preds = %if.end134
  %167 = load ptr, ptr %s.addr, align 8
  %bsBuff141 = getelementptr inbounds nuw %struct.DState, ptr %167, i32 0, i32 7
  %168 = load i32, ptr %bsBuff141, align 8
  %shl142 = shl i32 %168, 8
  %169 = load ptr, ptr %s.addr, align 8
  %strm143 = getelementptr inbounds nuw %struct.DState, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %strm143, align 8
  %next_in144 = getelementptr inbounds nuw %struct.bz_stream, ptr %170, i32 0, i32 0
  %171 = load ptr, ptr %next_in144, align 8
  %172 = load i8, ptr %171, align 1
  %conv145 = zext i8 %172 to i32
  %or146 = or i32 %shl142, %conv145
  %173 = load ptr, ptr %s.addr, align 8
  %bsBuff147 = getelementptr inbounds nuw %struct.DState, ptr %173, i32 0, i32 7
  store i32 %or146, ptr %bsBuff147, align 8
  %174 = load ptr, ptr %s.addr, align 8
  %bsLive148 = getelementptr inbounds nuw %struct.DState, ptr %174, i32 0, i32 8
  %175 = load i32, ptr %bsLive148, align 4
  %add149 = add nsw i32 %175, 8
  store i32 %add149, ptr %bsLive148, align 4
  %176 = load ptr, ptr %s.addr, align 8
  %strm150 = getelementptr inbounds nuw %struct.DState, ptr %176, i32 0, i32 0
  %177 = load ptr, ptr %strm150, align 8
  %next_in151 = getelementptr inbounds nuw %struct.bz_stream, ptr %177, i32 0, i32 0
  %178 = load ptr, ptr %next_in151, align 8
  %incdec.ptr152 = getelementptr inbounds nuw i8, ptr %178, i32 1
  store ptr %incdec.ptr152, ptr %next_in151, align 8
  %179 = load ptr, ptr %s.addr, align 8
  %strm153 = getelementptr inbounds nuw %struct.DState, ptr %179, i32 0, i32 0
  %180 = load ptr, ptr %strm153, align 8
  %avail_in154 = getelementptr inbounds nuw %struct.bz_stream, ptr %180, i32 0, i32 1
  %181 = load i32, ptr %avail_in154, align 8
  %dec155 = add i32 %181, -1
  store i32 %dec155, ptr %avail_in154, align 8
  %182 = load ptr, ptr %s.addr, align 8
  %strm156 = getelementptr inbounds nuw %struct.DState, ptr %182, i32 0, i32 0
  %183 = load ptr, ptr %strm156, align 8
  %total_in_lo32157 = getelementptr inbounds nuw %struct.bz_stream, ptr %183, i32 0, i32 2
  %184 = load i32, ptr %total_in_lo32157, align 4
  %inc158 = add i32 %184, 1
  store i32 %inc158, ptr %total_in_lo32157, align 4
  %185 = load ptr, ptr %s.addr, align 8
  %strm159 = getelementptr inbounds nuw %struct.DState, ptr %185, i32 0, i32 0
  %186 = load ptr, ptr %strm159, align 8
  %total_in_lo32160 = getelementptr inbounds nuw %struct.bz_stream, ptr %186, i32 0, i32 2
  %187 = load i32, ptr %total_in_lo32160, align 4
  %cmp161 = icmp eq i32 %187, 0
  br i1 %cmp161, label %if.then163, label %if.end167

if.then163:                                       ; preds = %if.end140
  %188 = load ptr, ptr %s.addr, align 8
  %strm164 = getelementptr inbounds nuw %struct.DState, ptr %188, i32 0, i32 0
  %189 = load ptr, ptr %strm164, align 8
  %total_in_hi32165 = getelementptr inbounds nuw %struct.bz_stream, ptr %189, i32 0, i32 3
  %190 = load i32, ptr %total_in_hi32165, align 8
  %inc166 = add i32 %190, 1
  store i32 %inc166, ptr %total_in_hi32165, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.end140
  br label %while.body120

while.end168:                                     ; preds = %if.then124
  %191 = load i8, ptr %uc, align 1
  %conv169 = zext i8 %191 to i32
  %cmp170 = icmp ne i32 %conv169, 104
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %while.end168
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

if.end173:                                        ; preds = %while.end168
  br label %sw.bb174

sw.bb174:                                         ; preds = %if.end173, %if.end
  %192 = load ptr, ptr %s.addr, align 8
  %state175 = getelementptr inbounds nuw %struct.DState, ptr %192, i32 0, i32 1
  store i32 13, ptr %state175, align 8
  br label %while.body176

while.body176:                                    ; preds = %if.end222, %sw.bb174
  %193 = load ptr, ptr %s.addr, align 8
  %bsLive177 = getelementptr inbounds nuw %struct.DState, ptr %193, i32 0, i32 8
  %194 = load i32, ptr %bsLive177, align 4
  %cmp178 = icmp sge i32 %194, 8
  br i1 %cmp178, label %if.then180, label %if.end189

if.then180:                                       ; preds = %while.body176
  %195 = load ptr, ptr %s.addr, align 8
  %bsBuff182 = getelementptr inbounds nuw %struct.DState, ptr %195, i32 0, i32 7
  %196 = load i32, ptr %bsBuff182, align 8
  %197 = load ptr, ptr %s.addr, align 8
  %bsLive183 = getelementptr inbounds nuw %struct.DState, ptr %197, i32 0, i32 8
  %198 = load i32, ptr %bsLive183, align 4
  %sub184 = sub nsw i32 %198, 8
  %shr185 = lshr i32 %196, %sub184
  %and186 = and i32 %shr185, 255
  store i32 %and186, ptr %v181, align 4
  %199 = load ptr, ptr %s.addr, align 8
  %bsLive187 = getelementptr inbounds nuw %struct.DState, ptr %199, i32 0, i32 8
  %200 = load i32, ptr %bsLive187, align 4
  %sub188 = sub nsw i32 %200, 8
  store i32 %sub188, ptr %bsLive187, align 4
  %201 = load i32, ptr %v181, align 4
  %202 = load ptr, ptr %s.addr, align 8
  %blockSize100k = getelementptr inbounds nuw %struct.DState, ptr %202, i32 0, i32 9
  store i32 %201, ptr %blockSize100k, align 8
  br label %while.end223

if.end189:                                        ; preds = %while.body176
  %203 = load ptr, ptr %s.addr, align 8
  %strm190 = getelementptr inbounds nuw %struct.DState, ptr %203, i32 0, i32 0
  %204 = load ptr, ptr %strm190, align 8
  %avail_in191 = getelementptr inbounds nuw %struct.bz_stream, ptr %204, i32 0, i32 1
  %205 = load i32, ptr %avail_in191, align 8
  %cmp192 = icmp eq i32 %205, 0
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.end189
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end195:                                        ; preds = %if.end189
  %206 = load ptr, ptr %s.addr, align 8
  %bsBuff196 = getelementptr inbounds nuw %struct.DState, ptr %206, i32 0, i32 7
  %207 = load i32, ptr %bsBuff196, align 8
  %shl197 = shl i32 %207, 8
  %208 = load ptr, ptr %s.addr, align 8
  %strm198 = getelementptr inbounds nuw %struct.DState, ptr %208, i32 0, i32 0
  %209 = load ptr, ptr %strm198, align 8
  %next_in199 = getelementptr inbounds nuw %struct.bz_stream, ptr %209, i32 0, i32 0
  %210 = load ptr, ptr %next_in199, align 8
  %211 = load i8, ptr %210, align 1
  %conv200 = zext i8 %211 to i32
  %or201 = or i32 %shl197, %conv200
  %212 = load ptr, ptr %s.addr, align 8
  %bsBuff202 = getelementptr inbounds nuw %struct.DState, ptr %212, i32 0, i32 7
  store i32 %or201, ptr %bsBuff202, align 8
  %213 = load ptr, ptr %s.addr, align 8
  %bsLive203 = getelementptr inbounds nuw %struct.DState, ptr %213, i32 0, i32 8
  %214 = load i32, ptr %bsLive203, align 4
  %add204 = add nsw i32 %214, 8
  store i32 %add204, ptr %bsLive203, align 4
  %215 = load ptr, ptr %s.addr, align 8
  %strm205 = getelementptr inbounds nuw %struct.DState, ptr %215, i32 0, i32 0
  %216 = load ptr, ptr %strm205, align 8
  %next_in206 = getelementptr inbounds nuw %struct.bz_stream, ptr %216, i32 0, i32 0
  %217 = load ptr, ptr %next_in206, align 8
  %incdec.ptr207 = getelementptr inbounds nuw i8, ptr %217, i32 1
  store ptr %incdec.ptr207, ptr %next_in206, align 8
  %218 = load ptr, ptr %s.addr, align 8
  %strm208 = getelementptr inbounds nuw %struct.DState, ptr %218, i32 0, i32 0
  %219 = load ptr, ptr %strm208, align 8
  %avail_in209 = getelementptr inbounds nuw %struct.bz_stream, ptr %219, i32 0, i32 1
  %220 = load i32, ptr %avail_in209, align 8
  %dec210 = add i32 %220, -1
  store i32 %dec210, ptr %avail_in209, align 8
  %221 = load ptr, ptr %s.addr, align 8
  %strm211 = getelementptr inbounds nuw %struct.DState, ptr %221, i32 0, i32 0
  %222 = load ptr, ptr %strm211, align 8
  %total_in_lo32212 = getelementptr inbounds nuw %struct.bz_stream, ptr %222, i32 0, i32 2
  %223 = load i32, ptr %total_in_lo32212, align 4
  %inc213 = add i32 %223, 1
  store i32 %inc213, ptr %total_in_lo32212, align 4
  %224 = load ptr, ptr %s.addr, align 8
  %strm214 = getelementptr inbounds nuw %struct.DState, ptr %224, i32 0, i32 0
  %225 = load ptr, ptr %strm214, align 8
  %total_in_lo32215 = getelementptr inbounds nuw %struct.bz_stream, ptr %225, i32 0, i32 2
  %226 = load i32, ptr %total_in_lo32215, align 4
  %cmp216 = icmp eq i32 %226, 0
  br i1 %cmp216, label %if.then218, label %if.end222

if.then218:                                       ; preds = %if.end195
  %227 = load ptr, ptr %s.addr, align 8
  %strm219 = getelementptr inbounds nuw %struct.DState, ptr %227, i32 0, i32 0
  %228 = load ptr, ptr %strm219, align 8
  %total_in_hi32220 = getelementptr inbounds nuw %struct.bz_stream, ptr %228, i32 0, i32 3
  %229 = load i32, ptr %total_in_hi32220, align 8
  %inc221 = add i32 %229, 1
  store i32 %inc221, ptr %total_in_hi32220, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %if.end195
  br label %while.body176

while.end223:                                     ; preds = %if.then180
  %230 = load ptr, ptr %s.addr, align 8
  %blockSize100k224 = getelementptr inbounds nuw %struct.DState, ptr %230, i32 0, i32 9
  %231 = load i32, ptr %blockSize100k224, align 8
  %cmp225 = icmp slt i32 %231, 49
  br i1 %cmp225, label %if.then230, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end223
  %232 = load ptr, ptr %s.addr, align 8
  %blockSize100k227 = getelementptr inbounds nuw %struct.DState, ptr %232, i32 0, i32 9
  %233 = load i32, ptr %blockSize100k227, align 8
  %cmp228 = icmp sgt i32 %233, 57
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %lor.lhs.false, %while.end223
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

if.end231:                                        ; preds = %lor.lhs.false
  %234 = load ptr, ptr %s.addr, align 8
  %blockSize100k232 = getelementptr inbounds nuw %struct.DState, ptr %234, i32 0, i32 9
  %235 = load i32, ptr %blockSize100k232, align 8
  %sub233 = sub nsw i32 %235, 48
  store i32 %sub233, ptr %blockSize100k232, align 8
  %236 = load ptr, ptr %s.addr, align 8
  %smallDecompress = getelementptr inbounds nuw %struct.DState, ptr %236, i32 0, i32 10
  %237 = load i8, ptr %smallDecompress, align 4
  %tobool = icmp ne i8 %237, 0
  br i1 %tobool, label %if.then234, label %if.else

if.then234:                                       ; preds = %if.end231
  %238 = load ptr, ptr %strm, align 8
  %bzalloc = getelementptr inbounds nuw %struct.bz_stream, ptr %238, i32 0, i32 9
  %239 = load ptr, ptr %bzalloc, align 8
  %240 = load ptr, ptr %strm, align 8
  %opaque = getelementptr inbounds nuw %struct.bz_stream, ptr %240, i32 0, i32 11
  %241 = load ptr, ptr %opaque, align 8
  %242 = load ptr, ptr %s.addr, align 8
  %blockSize100k235 = getelementptr inbounds nuw %struct.DState, ptr %242, i32 0, i32 9
  %243 = load i32, ptr %blockSize100k235, align 8
  %mul = mul nsw i32 %243, 100000
  %conv236 = sext i32 %mul to i64
  %mul237 = mul i64 %conv236, 2
  %conv238 = trunc i64 %mul237 to i32
  %call = call ptr %239(ptr noundef %241, i32 noundef %conv238, i32 noundef 1)
  %244 = load ptr, ptr %s.addr, align 8
  %ll16 = getelementptr inbounds nuw %struct.DState, ptr %244, i32 0, i32 21
  store ptr %call, ptr %ll16, align 8
  %245 = load ptr, ptr %strm, align 8
  %bzalloc239 = getelementptr inbounds nuw %struct.bz_stream, ptr %245, i32 0, i32 9
  %246 = load ptr, ptr %bzalloc239, align 8
  %247 = load ptr, ptr %strm, align 8
  %opaque240 = getelementptr inbounds nuw %struct.bz_stream, ptr %247, i32 0, i32 11
  %248 = load ptr, ptr %opaque240, align 8
  %249 = load ptr, ptr %s.addr, align 8
  %blockSize100k241 = getelementptr inbounds nuw %struct.DState, ptr %249, i32 0, i32 9
  %250 = load i32, ptr %blockSize100k241, align 8
  %mul242 = mul nsw i32 %250, 100000
  %add243 = add nsw i32 1, %mul242
  %shr244 = ashr i32 %add243, 1
  %conv245 = sext i32 %shr244 to i64
  %mul246 = mul i64 %conv245, 1
  %conv247 = trunc i64 %mul246 to i32
  %call248 = call ptr %246(ptr noundef %248, i32 noundef %conv247, i32 noundef 1)
  %251 = load ptr, ptr %s.addr, align 8
  %ll4 = getelementptr inbounds nuw %struct.DState, ptr %251, i32 0, i32 22
  store ptr %call248, ptr %ll4, align 8
  %252 = load ptr, ptr %s.addr, align 8
  %ll16249 = getelementptr inbounds nuw %struct.DState, ptr %252, i32 0, i32 21
  %253 = load ptr, ptr %ll16249, align 8
  %cmp250 = icmp eq ptr %253, null
  br i1 %cmp250, label %if.then256, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %if.then234
  %254 = load ptr, ptr %s.addr, align 8
  %ll4253 = getelementptr inbounds nuw %struct.DState, ptr %254, i32 0, i32 22
  %255 = load ptr, ptr %ll4253, align 8
  %cmp254 = icmp eq ptr %255, null
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %lor.lhs.false252, %if.then234
  store i32 -3, ptr %retVal, align 4
  br label %save_state_and_return

if.end257:                                        ; preds = %lor.lhs.false252
  br label %if.end271

if.else:                                          ; preds = %if.end231
  %256 = load ptr, ptr %strm, align 8
  %bzalloc258 = getelementptr inbounds nuw %struct.bz_stream, ptr %256, i32 0, i32 9
  %257 = load ptr, ptr %bzalloc258, align 8
  %258 = load ptr, ptr %strm, align 8
  %opaque259 = getelementptr inbounds nuw %struct.bz_stream, ptr %258, i32 0, i32 11
  %259 = load ptr, ptr %opaque259, align 8
  %260 = load ptr, ptr %s.addr, align 8
  %blockSize100k260 = getelementptr inbounds nuw %struct.DState, ptr %260, i32 0, i32 9
  %261 = load i32, ptr %blockSize100k260, align 8
  %mul261 = mul nsw i32 %261, 100000
  %conv262 = sext i32 %mul261 to i64
  %mul263 = mul i64 %conv262, 4
  %conv264 = trunc i64 %mul263 to i32
  %call265 = call ptr %257(ptr noundef %259, i32 noundef %conv264, i32 noundef 1)
  %262 = load ptr, ptr %s.addr, align 8
  %tt = getelementptr inbounds nuw %struct.DState, ptr %262, i32 0, i32 20
  store ptr %call265, ptr %tt, align 8
  %263 = load ptr, ptr %s.addr, align 8
  %tt266 = getelementptr inbounds nuw %struct.DState, ptr %263, i32 0, i32 20
  %264 = load ptr, ptr %tt266, align 8
  %cmp267 = icmp eq ptr %264, null
  br i1 %cmp267, label %if.then269, label %if.end270

if.then269:                                       ; preds = %if.else
  store i32 -3, ptr %retVal, align 4
  br label %save_state_and_return

if.end270:                                        ; preds = %if.else
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.end257
  br label %sw.bb272

sw.bb272:                                         ; preds = %if.end271, %if.end
  %265 = load ptr, ptr %s.addr, align 8
  %state273 = getelementptr inbounds nuw %struct.DState, ptr %265, i32 0, i32 1
  store i32 14, ptr %state273, align 8
  br label %while.body274

while.body274:                                    ; preds = %if.end321, %sw.bb272
  %266 = load ptr, ptr %s.addr, align 8
  %bsLive275 = getelementptr inbounds nuw %struct.DState, ptr %266, i32 0, i32 8
  %267 = load i32, ptr %bsLive275, align 4
  %cmp276 = icmp sge i32 %267, 8
  br i1 %cmp276, label %if.then278, label %if.end288

if.then278:                                       ; preds = %while.body274
  %268 = load ptr, ptr %s.addr, align 8
  %bsBuff280 = getelementptr inbounds nuw %struct.DState, ptr %268, i32 0, i32 7
  %269 = load i32, ptr %bsBuff280, align 8
  %270 = load ptr, ptr %s.addr, align 8
  %bsLive281 = getelementptr inbounds nuw %struct.DState, ptr %270, i32 0, i32 8
  %271 = load i32, ptr %bsLive281, align 4
  %sub282 = sub nsw i32 %271, 8
  %shr283 = lshr i32 %269, %sub282
  %and284 = and i32 %shr283, 255
  store i32 %and284, ptr %v279, align 4
  %272 = load ptr, ptr %s.addr, align 8
  %bsLive285 = getelementptr inbounds nuw %struct.DState, ptr %272, i32 0, i32 8
  %273 = load i32, ptr %bsLive285, align 4
  %sub286 = sub nsw i32 %273, 8
  store i32 %sub286, ptr %bsLive285, align 4
  %274 = load i32, ptr %v279, align 4
  %conv287 = trunc i32 %274 to i8
  store i8 %conv287, ptr %uc, align 1
  br label %while.end322

if.end288:                                        ; preds = %while.body274
  %275 = load ptr, ptr %s.addr, align 8
  %strm289 = getelementptr inbounds nuw %struct.DState, ptr %275, i32 0, i32 0
  %276 = load ptr, ptr %strm289, align 8
  %avail_in290 = getelementptr inbounds nuw %struct.bz_stream, ptr %276, i32 0, i32 1
  %277 = load i32, ptr %avail_in290, align 8
  %cmp291 = icmp eq i32 %277, 0
  br i1 %cmp291, label %if.then293, label %if.end294

if.then293:                                       ; preds = %if.end288
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end294:                                        ; preds = %if.end288
  %278 = load ptr, ptr %s.addr, align 8
  %bsBuff295 = getelementptr inbounds nuw %struct.DState, ptr %278, i32 0, i32 7
  %279 = load i32, ptr %bsBuff295, align 8
  %shl296 = shl i32 %279, 8
  %280 = load ptr, ptr %s.addr, align 8
  %strm297 = getelementptr inbounds nuw %struct.DState, ptr %280, i32 0, i32 0
  %281 = load ptr, ptr %strm297, align 8
  %next_in298 = getelementptr inbounds nuw %struct.bz_stream, ptr %281, i32 0, i32 0
  %282 = load ptr, ptr %next_in298, align 8
  %283 = load i8, ptr %282, align 1
  %conv299 = zext i8 %283 to i32
  %or300 = or i32 %shl296, %conv299
  %284 = load ptr, ptr %s.addr, align 8
  %bsBuff301 = getelementptr inbounds nuw %struct.DState, ptr %284, i32 0, i32 7
  store i32 %or300, ptr %bsBuff301, align 8
  %285 = load ptr, ptr %s.addr, align 8
  %bsLive302 = getelementptr inbounds nuw %struct.DState, ptr %285, i32 0, i32 8
  %286 = load i32, ptr %bsLive302, align 4
  %add303 = add nsw i32 %286, 8
  store i32 %add303, ptr %bsLive302, align 4
  %287 = load ptr, ptr %s.addr, align 8
  %strm304 = getelementptr inbounds nuw %struct.DState, ptr %287, i32 0, i32 0
  %288 = load ptr, ptr %strm304, align 8
  %next_in305 = getelementptr inbounds nuw %struct.bz_stream, ptr %288, i32 0, i32 0
  %289 = load ptr, ptr %next_in305, align 8
  %incdec.ptr306 = getelementptr inbounds nuw i8, ptr %289, i32 1
  store ptr %incdec.ptr306, ptr %next_in305, align 8
  %290 = load ptr, ptr %s.addr, align 8
  %strm307 = getelementptr inbounds nuw %struct.DState, ptr %290, i32 0, i32 0
  %291 = load ptr, ptr %strm307, align 8
  %avail_in308 = getelementptr inbounds nuw %struct.bz_stream, ptr %291, i32 0, i32 1
  %292 = load i32, ptr %avail_in308, align 8
  %dec309 = add i32 %292, -1
  store i32 %dec309, ptr %avail_in308, align 8
  %293 = load ptr, ptr %s.addr, align 8
  %strm310 = getelementptr inbounds nuw %struct.DState, ptr %293, i32 0, i32 0
  %294 = load ptr, ptr %strm310, align 8
  %total_in_lo32311 = getelementptr inbounds nuw %struct.bz_stream, ptr %294, i32 0, i32 2
  %295 = load i32, ptr %total_in_lo32311, align 4
  %inc312 = add i32 %295, 1
  store i32 %inc312, ptr %total_in_lo32311, align 4
  %296 = load ptr, ptr %s.addr, align 8
  %strm313 = getelementptr inbounds nuw %struct.DState, ptr %296, i32 0, i32 0
  %297 = load ptr, ptr %strm313, align 8
  %total_in_lo32314 = getelementptr inbounds nuw %struct.bz_stream, ptr %297, i32 0, i32 2
  %298 = load i32, ptr %total_in_lo32314, align 4
  %cmp315 = icmp eq i32 %298, 0
  br i1 %cmp315, label %if.then317, label %if.end321

if.then317:                                       ; preds = %if.end294
  %299 = load ptr, ptr %s.addr, align 8
  %strm318 = getelementptr inbounds nuw %struct.DState, ptr %299, i32 0, i32 0
  %300 = load ptr, ptr %strm318, align 8
  %total_in_hi32319 = getelementptr inbounds nuw %struct.bz_stream, ptr %300, i32 0, i32 3
  %301 = load i32, ptr %total_in_hi32319, align 8
  %inc320 = add i32 %301, 1
  store i32 %inc320, ptr %total_in_hi32319, align 8
  br label %if.end321

if.end321:                                        ; preds = %if.then317, %if.end294
  br label %while.body274

while.end322:                                     ; preds = %if.then278
  %302 = load i8, ptr %uc, align 1
  %conv323 = zext i8 %302 to i32
  %cmp324 = icmp eq i32 %conv323, 23
  br i1 %cmp324, label %if.then326, label %if.end327

if.then326:                                       ; preds = %while.end322
  br label %endhdr_2

if.end327:                                        ; preds = %while.end322
  %303 = load i8, ptr %uc, align 1
  %conv328 = zext i8 %303 to i32
  %cmp329 = icmp ne i32 %conv328, 49
  br i1 %cmp329, label %if.then331, label %if.end332

if.then331:                                       ; preds = %if.end327
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end332:                                        ; preds = %if.end327
  br label %sw.bb333

sw.bb333:                                         ; preds = %if.end332, %if.end
  %304 = load ptr, ptr %s.addr, align 8
  %state334 = getelementptr inbounds nuw %struct.DState, ptr %304, i32 0, i32 1
  store i32 15, ptr %state334, align 8
  br label %while.body335

while.body335:                                    ; preds = %if.end382, %sw.bb333
  %305 = load ptr, ptr %s.addr, align 8
  %bsLive336 = getelementptr inbounds nuw %struct.DState, ptr %305, i32 0, i32 8
  %306 = load i32, ptr %bsLive336, align 4
  %cmp337 = icmp sge i32 %306, 8
  br i1 %cmp337, label %if.then339, label %if.end349

if.then339:                                       ; preds = %while.body335
  %307 = load ptr, ptr %s.addr, align 8
  %bsBuff341 = getelementptr inbounds nuw %struct.DState, ptr %307, i32 0, i32 7
  %308 = load i32, ptr %bsBuff341, align 8
  %309 = load ptr, ptr %s.addr, align 8
  %bsLive342 = getelementptr inbounds nuw %struct.DState, ptr %309, i32 0, i32 8
  %310 = load i32, ptr %bsLive342, align 4
  %sub343 = sub nsw i32 %310, 8
  %shr344 = lshr i32 %308, %sub343
  %and345 = and i32 %shr344, 255
  store i32 %and345, ptr %v340, align 4
  %311 = load ptr, ptr %s.addr, align 8
  %bsLive346 = getelementptr inbounds nuw %struct.DState, ptr %311, i32 0, i32 8
  %312 = load i32, ptr %bsLive346, align 4
  %sub347 = sub nsw i32 %312, 8
  store i32 %sub347, ptr %bsLive346, align 4
  %313 = load i32, ptr %v340, align 4
  %conv348 = trunc i32 %313 to i8
  store i8 %conv348, ptr %uc, align 1
  br label %while.end383

if.end349:                                        ; preds = %while.body335
  %314 = load ptr, ptr %s.addr, align 8
  %strm350 = getelementptr inbounds nuw %struct.DState, ptr %314, i32 0, i32 0
  %315 = load ptr, ptr %strm350, align 8
  %avail_in351 = getelementptr inbounds nuw %struct.bz_stream, ptr %315, i32 0, i32 1
  %316 = load i32, ptr %avail_in351, align 8
  %cmp352 = icmp eq i32 %316, 0
  br i1 %cmp352, label %if.then354, label %if.end355

if.then354:                                       ; preds = %if.end349
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end355:                                        ; preds = %if.end349
  %317 = load ptr, ptr %s.addr, align 8
  %bsBuff356 = getelementptr inbounds nuw %struct.DState, ptr %317, i32 0, i32 7
  %318 = load i32, ptr %bsBuff356, align 8
  %shl357 = shl i32 %318, 8
  %319 = load ptr, ptr %s.addr, align 8
  %strm358 = getelementptr inbounds nuw %struct.DState, ptr %319, i32 0, i32 0
  %320 = load ptr, ptr %strm358, align 8
  %next_in359 = getelementptr inbounds nuw %struct.bz_stream, ptr %320, i32 0, i32 0
  %321 = load ptr, ptr %next_in359, align 8
  %322 = load i8, ptr %321, align 1
  %conv360 = zext i8 %322 to i32
  %or361 = or i32 %shl357, %conv360
  %323 = load ptr, ptr %s.addr, align 8
  %bsBuff362 = getelementptr inbounds nuw %struct.DState, ptr %323, i32 0, i32 7
  store i32 %or361, ptr %bsBuff362, align 8
  %324 = load ptr, ptr %s.addr, align 8
  %bsLive363 = getelementptr inbounds nuw %struct.DState, ptr %324, i32 0, i32 8
  %325 = load i32, ptr %bsLive363, align 4
  %add364 = add nsw i32 %325, 8
  store i32 %add364, ptr %bsLive363, align 4
  %326 = load ptr, ptr %s.addr, align 8
  %strm365 = getelementptr inbounds nuw %struct.DState, ptr %326, i32 0, i32 0
  %327 = load ptr, ptr %strm365, align 8
  %next_in366 = getelementptr inbounds nuw %struct.bz_stream, ptr %327, i32 0, i32 0
  %328 = load ptr, ptr %next_in366, align 8
  %incdec.ptr367 = getelementptr inbounds nuw i8, ptr %328, i32 1
  store ptr %incdec.ptr367, ptr %next_in366, align 8
  %329 = load ptr, ptr %s.addr, align 8
  %strm368 = getelementptr inbounds nuw %struct.DState, ptr %329, i32 0, i32 0
  %330 = load ptr, ptr %strm368, align 8
  %avail_in369 = getelementptr inbounds nuw %struct.bz_stream, ptr %330, i32 0, i32 1
  %331 = load i32, ptr %avail_in369, align 8
  %dec370 = add i32 %331, -1
  store i32 %dec370, ptr %avail_in369, align 8
  %332 = load ptr, ptr %s.addr, align 8
  %strm371 = getelementptr inbounds nuw %struct.DState, ptr %332, i32 0, i32 0
  %333 = load ptr, ptr %strm371, align 8
  %total_in_lo32372 = getelementptr inbounds nuw %struct.bz_stream, ptr %333, i32 0, i32 2
  %334 = load i32, ptr %total_in_lo32372, align 4
  %inc373 = add i32 %334, 1
  store i32 %inc373, ptr %total_in_lo32372, align 4
  %335 = load ptr, ptr %s.addr, align 8
  %strm374 = getelementptr inbounds nuw %struct.DState, ptr %335, i32 0, i32 0
  %336 = load ptr, ptr %strm374, align 8
  %total_in_lo32375 = getelementptr inbounds nuw %struct.bz_stream, ptr %336, i32 0, i32 2
  %337 = load i32, ptr %total_in_lo32375, align 4
  %cmp376 = icmp eq i32 %337, 0
  br i1 %cmp376, label %if.then378, label %if.end382

if.then378:                                       ; preds = %if.end355
  %338 = load ptr, ptr %s.addr, align 8
  %strm379 = getelementptr inbounds nuw %struct.DState, ptr %338, i32 0, i32 0
  %339 = load ptr, ptr %strm379, align 8
  %total_in_hi32380 = getelementptr inbounds nuw %struct.bz_stream, ptr %339, i32 0, i32 3
  %340 = load i32, ptr %total_in_hi32380, align 8
  %inc381 = add i32 %340, 1
  store i32 %inc381, ptr %total_in_hi32380, align 8
  br label %if.end382

if.end382:                                        ; preds = %if.then378, %if.end355
  br label %while.body335

while.end383:                                     ; preds = %if.then339
  %341 = load i8, ptr %uc, align 1
  %conv384 = zext i8 %341 to i32
  %cmp385 = icmp ne i32 %conv384, 65
  br i1 %cmp385, label %if.then387, label %if.end388

if.then387:                                       ; preds = %while.end383
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end388:                                        ; preds = %while.end383
  br label %sw.bb389

sw.bb389:                                         ; preds = %if.end388, %if.end
  %342 = load ptr, ptr %s.addr, align 8
  %state390 = getelementptr inbounds nuw %struct.DState, ptr %342, i32 0, i32 1
  store i32 16, ptr %state390, align 8
  br label %while.body391

while.body391:                                    ; preds = %if.end438, %sw.bb389
  %343 = load ptr, ptr %s.addr, align 8
  %bsLive392 = getelementptr inbounds nuw %struct.DState, ptr %343, i32 0, i32 8
  %344 = load i32, ptr %bsLive392, align 4
  %cmp393 = icmp sge i32 %344, 8
  br i1 %cmp393, label %if.then395, label %if.end405

if.then395:                                       ; preds = %while.body391
  %345 = load ptr, ptr %s.addr, align 8
  %bsBuff397 = getelementptr inbounds nuw %struct.DState, ptr %345, i32 0, i32 7
  %346 = load i32, ptr %bsBuff397, align 8
  %347 = load ptr, ptr %s.addr, align 8
  %bsLive398 = getelementptr inbounds nuw %struct.DState, ptr %347, i32 0, i32 8
  %348 = load i32, ptr %bsLive398, align 4
  %sub399 = sub nsw i32 %348, 8
  %shr400 = lshr i32 %346, %sub399
  %and401 = and i32 %shr400, 255
  store i32 %and401, ptr %v396, align 4
  %349 = load ptr, ptr %s.addr, align 8
  %bsLive402 = getelementptr inbounds nuw %struct.DState, ptr %349, i32 0, i32 8
  %350 = load i32, ptr %bsLive402, align 4
  %sub403 = sub nsw i32 %350, 8
  store i32 %sub403, ptr %bsLive402, align 4
  %351 = load i32, ptr %v396, align 4
  %conv404 = trunc i32 %351 to i8
  store i8 %conv404, ptr %uc, align 1
  br label %while.end439

if.end405:                                        ; preds = %while.body391
  %352 = load ptr, ptr %s.addr, align 8
  %strm406 = getelementptr inbounds nuw %struct.DState, ptr %352, i32 0, i32 0
  %353 = load ptr, ptr %strm406, align 8
  %avail_in407 = getelementptr inbounds nuw %struct.bz_stream, ptr %353, i32 0, i32 1
  %354 = load i32, ptr %avail_in407, align 8
  %cmp408 = icmp eq i32 %354, 0
  br i1 %cmp408, label %if.then410, label %if.end411

if.then410:                                       ; preds = %if.end405
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end411:                                        ; preds = %if.end405
  %355 = load ptr, ptr %s.addr, align 8
  %bsBuff412 = getelementptr inbounds nuw %struct.DState, ptr %355, i32 0, i32 7
  %356 = load i32, ptr %bsBuff412, align 8
  %shl413 = shl i32 %356, 8
  %357 = load ptr, ptr %s.addr, align 8
  %strm414 = getelementptr inbounds nuw %struct.DState, ptr %357, i32 0, i32 0
  %358 = load ptr, ptr %strm414, align 8
  %next_in415 = getelementptr inbounds nuw %struct.bz_stream, ptr %358, i32 0, i32 0
  %359 = load ptr, ptr %next_in415, align 8
  %360 = load i8, ptr %359, align 1
  %conv416 = zext i8 %360 to i32
  %or417 = or i32 %shl413, %conv416
  %361 = load ptr, ptr %s.addr, align 8
  %bsBuff418 = getelementptr inbounds nuw %struct.DState, ptr %361, i32 0, i32 7
  store i32 %or417, ptr %bsBuff418, align 8
  %362 = load ptr, ptr %s.addr, align 8
  %bsLive419 = getelementptr inbounds nuw %struct.DState, ptr %362, i32 0, i32 8
  %363 = load i32, ptr %bsLive419, align 4
  %add420 = add nsw i32 %363, 8
  store i32 %add420, ptr %bsLive419, align 4
  %364 = load ptr, ptr %s.addr, align 8
  %strm421 = getelementptr inbounds nuw %struct.DState, ptr %364, i32 0, i32 0
  %365 = load ptr, ptr %strm421, align 8
  %next_in422 = getelementptr inbounds nuw %struct.bz_stream, ptr %365, i32 0, i32 0
  %366 = load ptr, ptr %next_in422, align 8
  %incdec.ptr423 = getelementptr inbounds nuw i8, ptr %366, i32 1
  store ptr %incdec.ptr423, ptr %next_in422, align 8
  %367 = load ptr, ptr %s.addr, align 8
  %strm424 = getelementptr inbounds nuw %struct.DState, ptr %367, i32 0, i32 0
  %368 = load ptr, ptr %strm424, align 8
  %avail_in425 = getelementptr inbounds nuw %struct.bz_stream, ptr %368, i32 0, i32 1
  %369 = load i32, ptr %avail_in425, align 8
  %dec426 = add i32 %369, -1
  store i32 %dec426, ptr %avail_in425, align 8
  %370 = load ptr, ptr %s.addr, align 8
  %strm427 = getelementptr inbounds nuw %struct.DState, ptr %370, i32 0, i32 0
  %371 = load ptr, ptr %strm427, align 8
  %total_in_lo32428 = getelementptr inbounds nuw %struct.bz_stream, ptr %371, i32 0, i32 2
  %372 = load i32, ptr %total_in_lo32428, align 4
  %inc429 = add i32 %372, 1
  store i32 %inc429, ptr %total_in_lo32428, align 4
  %373 = load ptr, ptr %s.addr, align 8
  %strm430 = getelementptr inbounds nuw %struct.DState, ptr %373, i32 0, i32 0
  %374 = load ptr, ptr %strm430, align 8
  %total_in_lo32431 = getelementptr inbounds nuw %struct.bz_stream, ptr %374, i32 0, i32 2
  %375 = load i32, ptr %total_in_lo32431, align 4
  %cmp432 = icmp eq i32 %375, 0
  br i1 %cmp432, label %if.then434, label %if.end438

if.then434:                                       ; preds = %if.end411
  %376 = load ptr, ptr %s.addr, align 8
  %strm435 = getelementptr inbounds nuw %struct.DState, ptr %376, i32 0, i32 0
  %377 = load ptr, ptr %strm435, align 8
  %total_in_hi32436 = getelementptr inbounds nuw %struct.bz_stream, ptr %377, i32 0, i32 3
  %378 = load i32, ptr %total_in_hi32436, align 8
  %inc437 = add i32 %378, 1
  store i32 %inc437, ptr %total_in_hi32436, align 8
  br label %if.end438

if.end438:                                        ; preds = %if.then434, %if.end411
  br label %while.body391

while.end439:                                     ; preds = %if.then395
  %379 = load i8, ptr %uc, align 1
  %conv440 = zext i8 %379 to i32
  %cmp441 = icmp ne i32 %conv440, 89
  br i1 %cmp441, label %if.then443, label %if.end444

if.then443:                                       ; preds = %while.end439
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end444:                                        ; preds = %while.end439
  br label %sw.bb445

sw.bb445:                                         ; preds = %if.end444, %if.end
  %380 = load ptr, ptr %s.addr, align 8
  %state446 = getelementptr inbounds nuw %struct.DState, ptr %380, i32 0, i32 1
  store i32 17, ptr %state446, align 8
  br label %while.body447

while.body447:                                    ; preds = %if.end494, %sw.bb445
  %381 = load ptr, ptr %s.addr, align 8
  %bsLive448 = getelementptr inbounds nuw %struct.DState, ptr %381, i32 0, i32 8
  %382 = load i32, ptr %bsLive448, align 4
  %cmp449 = icmp sge i32 %382, 8
  br i1 %cmp449, label %if.then451, label %if.end461

if.then451:                                       ; preds = %while.body447
  %383 = load ptr, ptr %s.addr, align 8
  %bsBuff453 = getelementptr inbounds nuw %struct.DState, ptr %383, i32 0, i32 7
  %384 = load i32, ptr %bsBuff453, align 8
  %385 = load ptr, ptr %s.addr, align 8
  %bsLive454 = getelementptr inbounds nuw %struct.DState, ptr %385, i32 0, i32 8
  %386 = load i32, ptr %bsLive454, align 4
  %sub455 = sub nsw i32 %386, 8
  %shr456 = lshr i32 %384, %sub455
  %and457 = and i32 %shr456, 255
  store i32 %and457, ptr %v452, align 4
  %387 = load ptr, ptr %s.addr, align 8
  %bsLive458 = getelementptr inbounds nuw %struct.DState, ptr %387, i32 0, i32 8
  %388 = load i32, ptr %bsLive458, align 4
  %sub459 = sub nsw i32 %388, 8
  store i32 %sub459, ptr %bsLive458, align 4
  %389 = load i32, ptr %v452, align 4
  %conv460 = trunc i32 %389 to i8
  store i8 %conv460, ptr %uc, align 1
  br label %while.end495

if.end461:                                        ; preds = %while.body447
  %390 = load ptr, ptr %s.addr, align 8
  %strm462 = getelementptr inbounds nuw %struct.DState, ptr %390, i32 0, i32 0
  %391 = load ptr, ptr %strm462, align 8
  %avail_in463 = getelementptr inbounds nuw %struct.bz_stream, ptr %391, i32 0, i32 1
  %392 = load i32, ptr %avail_in463, align 8
  %cmp464 = icmp eq i32 %392, 0
  br i1 %cmp464, label %if.then466, label %if.end467

if.then466:                                       ; preds = %if.end461
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end467:                                        ; preds = %if.end461
  %393 = load ptr, ptr %s.addr, align 8
  %bsBuff468 = getelementptr inbounds nuw %struct.DState, ptr %393, i32 0, i32 7
  %394 = load i32, ptr %bsBuff468, align 8
  %shl469 = shl i32 %394, 8
  %395 = load ptr, ptr %s.addr, align 8
  %strm470 = getelementptr inbounds nuw %struct.DState, ptr %395, i32 0, i32 0
  %396 = load ptr, ptr %strm470, align 8
  %next_in471 = getelementptr inbounds nuw %struct.bz_stream, ptr %396, i32 0, i32 0
  %397 = load ptr, ptr %next_in471, align 8
  %398 = load i8, ptr %397, align 1
  %conv472 = zext i8 %398 to i32
  %or473 = or i32 %shl469, %conv472
  %399 = load ptr, ptr %s.addr, align 8
  %bsBuff474 = getelementptr inbounds nuw %struct.DState, ptr %399, i32 0, i32 7
  store i32 %or473, ptr %bsBuff474, align 8
  %400 = load ptr, ptr %s.addr, align 8
  %bsLive475 = getelementptr inbounds nuw %struct.DState, ptr %400, i32 0, i32 8
  %401 = load i32, ptr %bsLive475, align 4
  %add476 = add nsw i32 %401, 8
  store i32 %add476, ptr %bsLive475, align 4
  %402 = load ptr, ptr %s.addr, align 8
  %strm477 = getelementptr inbounds nuw %struct.DState, ptr %402, i32 0, i32 0
  %403 = load ptr, ptr %strm477, align 8
  %next_in478 = getelementptr inbounds nuw %struct.bz_stream, ptr %403, i32 0, i32 0
  %404 = load ptr, ptr %next_in478, align 8
  %incdec.ptr479 = getelementptr inbounds nuw i8, ptr %404, i32 1
  store ptr %incdec.ptr479, ptr %next_in478, align 8
  %405 = load ptr, ptr %s.addr, align 8
  %strm480 = getelementptr inbounds nuw %struct.DState, ptr %405, i32 0, i32 0
  %406 = load ptr, ptr %strm480, align 8
  %avail_in481 = getelementptr inbounds nuw %struct.bz_stream, ptr %406, i32 0, i32 1
  %407 = load i32, ptr %avail_in481, align 8
  %dec482 = add i32 %407, -1
  store i32 %dec482, ptr %avail_in481, align 8
  %408 = load ptr, ptr %s.addr, align 8
  %strm483 = getelementptr inbounds nuw %struct.DState, ptr %408, i32 0, i32 0
  %409 = load ptr, ptr %strm483, align 8
  %total_in_lo32484 = getelementptr inbounds nuw %struct.bz_stream, ptr %409, i32 0, i32 2
  %410 = load i32, ptr %total_in_lo32484, align 4
  %inc485 = add i32 %410, 1
  store i32 %inc485, ptr %total_in_lo32484, align 4
  %411 = load ptr, ptr %s.addr, align 8
  %strm486 = getelementptr inbounds nuw %struct.DState, ptr %411, i32 0, i32 0
  %412 = load ptr, ptr %strm486, align 8
  %total_in_lo32487 = getelementptr inbounds nuw %struct.bz_stream, ptr %412, i32 0, i32 2
  %413 = load i32, ptr %total_in_lo32487, align 4
  %cmp488 = icmp eq i32 %413, 0
  br i1 %cmp488, label %if.then490, label %if.end494

if.then490:                                       ; preds = %if.end467
  %414 = load ptr, ptr %s.addr, align 8
  %strm491 = getelementptr inbounds nuw %struct.DState, ptr %414, i32 0, i32 0
  %415 = load ptr, ptr %strm491, align 8
  %total_in_hi32492 = getelementptr inbounds nuw %struct.bz_stream, ptr %415, i32 0, i32 3
  %416 = load i32, ptr %total_in_hi32492, align 8
  %inc493 = add i32 %416, 1
  store i32 %inc493, ptr %total_in_hi32492, align 8
  br label %if.end494

if.end494:                                        ; preds = %if.then490, %if.end467
  br label %while.body447

while.end495:                                     ; preds = %if.then451
  %417 = load i8, ptr %uc, align 1
  %conv496 = zext i8 %417 to i32
  %cmp497 = icmp ne i32 %conv496, 38
  br i1 %cmp497, label %if.then499, label %if.end500

if.then499:                                       ; preds = %while.end495
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end500:                                        ; preds = %while.end495
  br label %sw.bb501

sw.bb501:                                         ; preds = %if.end500, %if.end
  %418 = load ptr, ptr %s.addr, align 8
  %state502 = getelementptr inbounds nuw %struct.DState, ptr %418, i32 0, i32 1
  store i32 18, ptr %state502, align 8
  br label %while.body503

while.body503:                                    ; preds = %if.end550, %sw.bb501
  %419 = load ptr, ptr %s.addr, align 8
  %bsLive504 = getelementptr inbounds nuw %struct.DState, ptr %419, i32 0, i32 8
  %420 = load i32, ptr %bsLive504, align 4
  %cmp505 = icmp sge i32 %420, 8
  br i1 %cmp505, label %if.then507, label %if.end517

if.then507:                                       ; preds = %while.body503
  %421 = load ptr, ptr %s.addr, align 8
  %bsBuff509 = getelementptr inbounds nuw %struct.DState, ptr %421, i32 0, i32 7
  %422 = load i32, ptr %bsBuff509, align 8
  %423 = load ptr, ptr %s.addr, align 8
  %bsLive510 = getelementptr inbounds nuw %struct.DState, ptr %423, i32 0, i32 8
  %424 = load i32, ptr %bsLive510, align 4
  %sub511 = sub nsw i32 %424, 8
  %shr512 = lshr i32 %422, %sub511
  %and513 = and i32 %shr512, 255
  store i32 %and513, ptr %v508, align 4
  %425 = load ptr, ptr %s.addr, align 8
  %bsLive514 = getelementptr inbounds nuw %struct.DState, ptr %425, i32 0, i32 8
  %426 = load i32, ptr %bsLive514, align 4
  %sub515 = sub nsw i32 %426, 8
  store i32 %sub515, ptr %bsLive514, align 4
  %427 = load i32, ptr %v508, align 4
  %conv516 = trunc i32 %427 to i8
  store i8 %conv516, ptr %uc, align 1
  br label %while.end551

if.end517:                                        ; preds = %while.body503
  %428 = load ptr, ptr %s.addr, align 8
  %strm518 = getelementptr inbounds nuw %struct.DState, ptr %428, i32 0, i32 0
  %429 = load ptr, ptr %strm518, align 8
  %avail_in519 = getelementptr inbounds nuw %struct.bz_stream, ptr %429, i32 0, i32 1
  %430 = load i32, ptr %avail_in519, align 8
  %cmp520 = icmp eq i32 %430, 0
  br i1 %cmp520, label %if.then522, label %if.end523

if.then522:                                       ; preds = %if.end517
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end523:                                        ; preds = %if.end517
  %431 = load ptr, ptr %s.addr, align 8
  %bsBuff524 = getelementptr inbounds nuw %struct.DState, ptr %431, i32 0, i32 7
  %432 = load i32, ptr %bsBuff524, align 8
  %shl525 = shl i32 %432, 8
  %433 = load ptr, ptr %s.addr, align 8
  %strm526 = getelementptr inbounds nuw %struct.DState, ptr %433, i32 0, i32 0
  %434 = load ptr, ptr %strm526, align 8
  %next_in527 = getelementptr inbounds nuw %struct.bz_stream, ptr %434, i32 0, i32 0
  %435 = load ptr, ptr %next_in527, align 8
  %436 = load i8, ptr %435, align 1
  %conv528 = zext i8 %436 to i32
  %or529 = or i32 %shl525, %conv528
  %437 = load ptr, ptr %s.addr, align 8
  %bsBuff530 = getelementptr inbounds nuw %struct.DState, ptr %437, i32 0, i32 7
  store i32 %or529, ptr %bsBuff530, align 8
  %438 = load ptr, ptr %s.addr, align 8
  %bsLive531 = getelementptr inbounds nuw %struct.DState, ptr %438, i32 0, i32 8
  %439 = load i32, ptr %bsLive531, align 4
  %add532 = add nsw i32 %439, 8
  store i32 %add532, ptr %bsLive531, align 4
  %440 = load ptr, ptr %s.addr, align 8
  %strm533 = getelementptr inbounds nuw %struct.DState, ptr %440, i32 0, i32 0
  %441 = load ptr, ptr %strm533, align 8
  %next_in534 = getelementptr inbounds nuw %struct.bz_stream, ptr %441, i32 0, i32 0
  %442 = load ptr, ptr %next_in534, align 8
  %incdec.ptr535 = getelementptr inbounds nuw i8, ptr %442, i32 1
  store ptr %incdec.ptr535, ptr %next_in534, align 8
  %443 = load ptr, ptr %s.addr, align 8
  %strm536 = getelementptr inbounds nuw %struct.DState, ptr %443, i32 0, i32 0
  %444 = load ptr, ptr %strm536, align 8
  %avail_in537 = getelementptr inbounds nuw %struct.bz_stream, ptr %444, i32 0, i32 1
  %445 = load i32, ptr %avail_in537, align 8
  %dec538 = add i32 %445, -1
  store i32 %dec538, ptr %avail_in537, align 8
  %446 = load ptr, ptr %s.addr, align 8
  %strm539 = getelementptr inbounds nuw %struct.DState, ptr %446, i32 0, i32 0
  %447 = load ptr, ptr %strm539, align 8
  %total_in_lo32540 = getelementptr inbounds nuw %struct.bz_stream, ptr %447, i32 0, i32 2
  %448 = load i32, ptr %total_in_lo32540, align 4
  %inc541 = add i32 %448, 1
  store i32 %inc541, ptr %total_in_lo32540, align 4
  %449 = load ptr, ptr %s.addr, align 8
  %strm542 = getelementptr inbounds nuw %struct.DState, ptr %449, i32 0, i32 0
  %450 = load ptr, ptr %strm542, align 8
  %total_in_lo32543 = getelementptr inbounds nuw %struct.bz_stream, ptr %450, i32 0, i32 2
  %451 = load i32, ptr %total_in_lo32543, align 4
  %cmp544 = icmp eq i32 %451, 0
  br i1 %cmp544, label %if.then546, label %if.end550

if.then546:                                       ; preds = %if.end523
  %452 = load ptr, ptr %s.addr, align 8
  %strm547 = getelementptr inbounds nuw %struct.DState, ptr %452, i32 0, i32 0
  %453 = load ptr, ptr %strm547, align 8
  %total_in_hi32548 = getelementptr inbounds nuw %struct.bz_stream, ptr %453, i32 0, i32 3
  %454 = load i32, ptr %total_in_hi32548, align 8
  %inc549 = add i32 %454, 1
  store i32 %inc549, ptr %total_in_hi32548, align 8
  br label %if.end550

if.end550:                                        ; preds = %if.then546, %if.end523
  br label %while.body503

while.end551:                                     ; preds = %if.then507
  %455 = load i8, ptr %uc, align 1
  %conv552 = zext i8 %455 to i32
  %cmp553 = icmp ne i32 %conv552, 83
  br i1 %cmp553, label %if.then555, label %if.end556

if.then555:                                       ; preds = %while.end551
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end556:                                        ; preds = %while.end551
  br label %sw.bb557

sw.bb557:                                         ; preds = %if.end556, %if.end
  %456 = load ptr, ptr %s.addr, align 8
  %state558 = getelementptr inbounds nuw %struct.DState, ptr %456, i32 0, i32 1
  store i32 19, ptr %state558, align 8
  br label %while.body559

while.body559:                                    ; preds = %if.end606, %sw.bb557
  %457 = load ptr, ptr %s.addr, align 8
  %bsLive560 = getelementptr inbounds nuw %struct.DState, ptr %457, i32 0, i32 8
  %458 = load i32, ptr %bsLive560, align 4
  %cmp561 = icmp sge i32 %458, 8
  br i1 %cmp561, label %if.then563, label %if.end573

if.then563:                                       ; preds = %while.body559
  %459 = load ptr, ptr %s.addr, align 8
  %bsBuff565 = getelementptr inbounds nuw %struct.DState, ptr %459, i32 0, i32 7
  %460 = load i32, ptr %bsBuff565, align 8
  %461 = load ptr, ptr %s.addr, align 8
  %bsLive566 = getelementptr inbounds nuw %struct.DState, ptr %461, i32 0, i32 8
  %462 = load i32, ptr %bsLive566, align 4
  %sub567 = sub nsw i32 %462, 8
  %shr568 = lshr i32 %460, %sub567
  %and569 = and i32 %shr568, 255
  store i32 %and569, ptr %v564, align 4
  %463 = load ptr, ptr %s.addr, align 8
  %bsLive570 = getelementptr inbounds nuw %struct.DState, ptr %463, i32 0, i32 8
  %464 = load i32, ptr %bsLive570, align 4
  %sub571 = sub nsw i32 %464, 8
  store i32 %sub571, ptr %bsLive570, align 4
  %465 = load i32, ptr %v564, align 4
  %conv572 = trunc i32 %465 to i8
  store i8 %conv572, ptr %uc, align 1
  br label %while.end607

if.end573:                                        ; preds = %while.body559
  %466 = load ptr, ptr %s.addr, align 8
  %strm574 = getelementptr inbounds nuw %struct.DState, ptr %466, i32 0, i32 0
  %467 = load ptr, ptr %strm574, align 8
  %avail_in575 = getelementptr inbounds nuw %struct.bz_stream, ptr %467, i32 0, i32 1
  %468 = load i32, ptr %avail_in575, align 8
  %cmp576 = icmp eq i32 %468, 0
  br i1 %cmp576, label %if.then578, label %if.end579

if.then578:                                       ; preds = %if.end573
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end579:                                        ; preds = %if.end573
  %469 = load ptr, ptr %s.addr, align 8
  %bsBuff580 = getelementptr inbounds nuw %struct.DState, ptr %469, i32 0, i32 7
  %470 = load i32, ptr %bsBuff580, align 8
  %shl581 = shl i32 %470, 8
  %471 = load ptr, ptr %s.addr, align 8
  %strm582 = getelementptr inbounds nuw %struct.DState, ptr %471, i32 0, i32 0
  %472 = load ptr, ptr %strm582, align 8
  %next_in583 = getelementptr inbounds nuw %struct.bz_stream, ptr %472, i32 0, i32 0
  %473 = load ptr, ptr %next_in583, align 8
  %474 = load i8, ptr %473, align 1
  %conv584 = zext i8 %474 to i32
  %or585 = or i32 %shl581, %conv584
  %475 = load ptr, ptr %s.addr, align 8
  %bsBuff586 = getelementptr inbounds nuw %struct.DState, ptr %475, i32 0, i32 7
  store i32 %or585, ptr %bsBuff586, align 8
  %476 = load ptr, ptr %s.addr, align 8
  %bsLive587 = getelementptr inbounds nuw %struct.DState, ptr %476, i32 0, i32 8
  %477 = load i32, ptr %bsLive587, align 4
  %add588 = add nsw i32 %477, 8
  store i32 %add588, ptr %bsLive587, align 4
  %478 = load ptr, ptr %s.addr, align 8
  %strm589 = getelementptr inbounds nuw %struct.DState, ptr %478, i32 0, i32 0
  %479 = load ptr, ptr %strm589, align 8
  %next_in590 = getelementptr inbounds nuw %struct.bz_stream, ptr %479, i32 0, i32 0
  %480 = load ptr, ptr %next_in590, align 8
  %incdec.ptr591 = getelementptr inbounds nuw i8, ptr %480, i32 1
  store ptr %incdec.ptr591, ptr %next_in590, align 8
  %481 = load ptr, ptr %s.addr, align 8
  %strm592 = getelementptr inbounds nuw %struct.DState, ptr %481, i32 0, i32 0
  %482 = load ptr, ptr %strm592, align 8
  %avail_in593 = getelementptr inbounds nuw %struct.bz_stream, ptr %482, i32 0, i32 1
  %483 = load i32, ptr %avail_in593, align 8
  %dec594 = add i32 %483, -1
  store i32 %dec594, ptr %avail_in593, align 8
  %484 = load ptr, ptr %s.addr, align 8
  %strm595 = getelementptr inbounds nuw %struct.DState, ptr %484, i32 0, i32 0
  %485 = load ptr, ptr %strm595, align 8
  %total_in_lo32596 = getelementptr inbounds nuw %struct.bz_stream, ptr %485, i32 0, i32 2
  %486 = load i32, ptr %total_in_lo32596, align 4
  %inc597 = add i32 %486, 1
  store i32 %inc597, ptr %total_in_lo32596, align 4
  %487 = load ptr, ptr %s.addr, align 8
  %strm598 = getelementptr inbounds nuw %struct.DState, ptr %487, i32 0, i32 0
  %488 = load ptr, ptr %strm598, align 8
  %total_in_lo32599 = getelementptr inbounds nuw %struct.bz_stream, ptr %488, i32 0, i32 2
  %489 = load i32, ptr %total_in_lo32599, align 4
  %cmp600 = icmp eq i32 %489, 0
  br i1 %cmp600, label %if.then602, label %if.end606

if.then602:                                       ; preds = %if.end579
  %490 = load ptr, ptr %s.addr, align 8
  %strm603 = getelementptr inbounds nuw %struct.DState, ptr %490, i32 0, i32 0
  %491 = load ptr, ptr %strm603, align 8
  %total_in_hi32604 = getelementptr inbounds nuw %struct.bz_stream, ptr %491, i32 0, i32 3
  %492 = load i32, ptr %total_in_hi32604, align 8
  %inc605 = add i32 %492, 1
  store i32 %inc605, ptr %total_in_hi32604, align 8
  br label %if.end606

if.end606:                                        ; preds = %if.then602, %if.end579
  br label %while.body559

while.end607:                                     ; preds = %if.then563
  %493 = load i8, ptr %uc, align 1
  %conv608 = zext i8 %493 to i32
  %cmp609 = icmp ne i32 %conv608, 89
  br i1 %cmp609, label %if.then611, label %if.end612

if.then611:                                       ; preds = %while.end607
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end612:                                        ; preds = %while.end607
  %494 = load ptr, ptr %s.addr, align 8
  %currBlockNo = getelementptr inbounds nuw %struct.DState, ptr %494, i32 0, i32 11
  %495 = load i32, ptr %currBlockNo, align 8
  %inc613 = add nsw i32 %495, 1
  store i32 %inc613, ptr %currBlockNo, align 8
  %496 = load ptr, ptr %s.addr, align 8
  %verbosity = getelementptr inbounds nuw %struct.DState, ptr %496, i32 0, i32 12
  %497 = load i32, ptr %verbosity, align 4
  %cmp614 = icmp sge i32 %497, 2
  br i1 %cmp614, label %if.then616, label %if.end619

if.then616:                                       ; preds = %if.end612
  %498 = load ptr, ptr @stderr, align 8
  %499 = load ptr, ptr %s.addr, align 8
  %currBlockNo617 = getelementptr inbounds nuw %struct.DState, ptr %499, i32 0, i32 11
  %500 = load i32, ptr %currBlockNo617, align 8
  %call618 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %498, ptr noundef @.str.4, i32 noundef %500) #2
  br label %if.end619

if.end619:                                        ; preds = %if.then616, %if.end612
  %501 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC = getelementptr inbounds nuw %struct.DState, ptr %501, i32 0, i32 23
  store i32 0, ptr %storedBlockCRC, align 8
  br label %sw.bb620

sw.bb620:                                         ; preds = %if.end619, %if.end
  %502 = load ptr, ptr %s.addr, align 8
  %state621 = getelementptr inbounds nuw %struct.DState, ptr %502, i32 0, i32 1
  store i32 20, ptr %state621, align 8
  br label %while.body622

while.body622:                                    ; preds = %if.end669, %sw.bb620
  %503 = load ptr, ptr %s.addr, align 8
  %bsLive623 = getelementptr inbounds nuw %struct.DState, ptr %503, i32 0, i32 8
  %504 = load i32, ptr %bsLive623, align 4
  %cmp624 = icmp sge i32 %504, 8
  br i1 %cmp624, label %if.then626, label %if.end636

if.then626:                                       ; preds = %while.body622
  %505 = load ptr, ptr %s.addr, align 8
  %bsBuff628 = getelementptr inbounds nuw %struct.DState, ptr %505, i32 0, i32 7
  %506 = load i32, ptr %bsBuff628, align 8
  %507 = load ptr, ptr %s.addr, align 8
  %bsLive629 = getelementptr inbounds nuw %struct.DState, ptr %507, i32 0, i32 8
  %508 = load i32, ptr %bsLive629, align 4
  %sub630 = sub nsw i32 %508, 8
  %shr631 = lshr i32 %506, %sub630
  %and632 = and i32 %shr631, 255
  store i32 %and632, ptr %v627, align 4
  %509 = load ptr, ptr %s.addr, align 8
  %bsLive633 = getelementptr inbounds nuw %struct.DState, ptr %509, i32 0, i32 8
  %510 = load i32, ptr %bsLive633, align 4
  %sub634 = sub nsw i32 %510, 8
  store i32 %sub634, ptr %bsLive633, align 4
  %511 = load i32, ptr %v627, align 4
  %conv635 = trunc i32 %511 to i8
  store i8 %conv635, ptr %uc, align 1
  br label %while.end670

if.end636:                                        ; preds = %while.body622
  %512 = load ptr, ptr %s.addr, align 8
  %strm637 = getelementptr inbounds nuw %struct.DState, ptr %512, i32 0, i32 0
  %513 = load ptr, ptr %strm637, align 8
  %avail_in638 = getelementptr inbounds nuw %struct.bz_stream, ptr %513, i32 0, i32 1
  %514 = load i32, ptr %avail_in638, align 8
  %cmp639 = icmp eq i32 %514, 0
  br i1 %cmp639, label %if.then641, label %if.end642

if.then641:                                       ; preds = %if.end636
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end642:                                        ; preds = %if.end636
  %515 = load ptr, ptr %s.addr, align 8
  %bsBuff643 = getelementptr inbounds nuw %struct.DState, ptr %515, i32 0, i32 7
  %516 = load i32, ptr %bsBuff643, align 8
  %shl644 = shl i32 %516, 8
  %517 = load ptr, ptr %s.addr, align 8
  %strm645 = getelementptr inbounds nuw %struct.DState, ptr %517, i32 0, i32 0
  %518 = load ptr, ptr %strm645, align 8
  %next_in646 = getelementptr inbounds nuw %struct.bz_stream, ptr %518, i32 0, i32 0
  %519 = load ptr, ptr %next_in646, align 8
  %520 = load i8, ptr %519, align 1
  %conv647 = zext i8 %520 to i32
  %or648 = or i32 %shl644, %conv647
  %521 = load ptr, ptr %s.addr, align 8
  %bsBuff649 = getelementptr inbounds nuw %struct.DState, ptr %521, i32 0, i32 7
  store i32 %or648, ptr %bsBuff649, align 8
  %522 = load ptr, ptr %s.addr, align 8
  %bsLive650 = getelementptr inbounds nuw %struct.DState, ptr %522, i32 0, i32 8
  %523 = load i32, ptr %bsLive650, align 4
  %add651 = add nsw i32 %523, 8
  store i32 %add651, ptr %bsLive650, align 4
  %524 = load ptr, ptr %s.addr, align 8
  %strm652 = getelementptr inbounds nuw %struct.DState, ptr %524, i32 0, i32 0
  %525 = load ptr, ptr %strm652, align 8
  %next_in653 = getelementptr inbounds nuw %struct.bz_stream, ptr %525, i32 0, i32 0
  %526 = load ptr, ptr %next_in653, align 8
  %incdec.ptr654 = getelementptr inbounds nuw i8, ptr %526, i32 1
  store ptr %incdec.ptr654, ptr %next_in653, align 8
  %527 = load ptr, ptr %s.addr, align 8
  %strm655 = getelementptr inbounds nuw %struct.DState, ptr %527, i32 0, i32 0
  %528 = load ptr, ptr %strm655, align 8
  %avail_in656 = getelementptr inbounds nuw %struct.bz_stream, ptr %528, i32 0, i32 1
  %529 = load i32, ptr %avail_in656, align 8
  %dec657 = add i32 %529, -1
  store i32 %dec657, ptr %avail_in656, align 8
  %530 = load ptr, ptr %s.addr, align 8
  %strm658 = getelementptr inbounds nuw %struct.DState, ptr %530, i32 0, i32 0
  %531 = load ptr, ptr %strm658, align 8
  %total_in_lo32659 = getelementptr inbounds nuw %struct.bz_stream, ptr %531, i32 0, i32 2
  %532 = load i32, ptr %total_in_lo32659, align 4
  %inc660 = add i32 %532, 1
  store i32 %inc660, ptr %total_in_lo32659, align 4
  %533 = load ptr, ptr %s.addr, align 8
  %strm661 = getelementptr inbounds nuw %struct.DState, ptr %533, i32 0, i32 0
  %534 = load ptr, ptr %strm661, align 8
  %total_in_lo32662 = getelementptr inbounds nuw %struct.bz_stream, ptr %534, i32 0, i32 2
  %535 = load i32, ptr %total_in_lo32662, align 4
  %cmp663 = icmp eq i32 %535, 0
  br i1 %cmp663, label %if.then665, label %if.end669

if.then665:                                       ; preds = %if.end642
  %536 = load ptr, ptr %s.addr, align 8
  %strm666 = getelementptr inbounds nuw %struct.DState, ptr %536, i32 0, i32 0
  %537 = load ptr, ptr %strm666, align 8
  %total_in_hi32667 = getelementptr inbounds nuw %struct.bz_stream, ptr %537, i32 0, i32 3
  %538 = load i32, ptr %total_in_hi32667, align 8
  %inc668 = add i32 %538, 1
  store i32 %inc668, ptr %total_in_hi32667, align 8
  br label %if.end669

if.end669:                                        ; preds = %if.then665, %if.end642
  br label %while.body622

while.end670:                                     ; preds = %if.then626
  %539 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC671 = getelementptr inbounds nuw %struct.DState, ptr %539, i32 0, i32 23
  %540 = load i32, ptr %storedBlockCRC671, align 8
  %shl672 = shl i32 %540, 8
  %541 = load i8, ptr %uc, align 1
  %conv673 = zext i8 %541 to i32
  %or674 = or i32 %shl672, %conv673
  %542 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC675 = getelementptr inbounds nuw %struct.DState, ptr %542, i32 0, i32 23
  store i32 %or674, ptr %storedBlockCRC675, align 8
  br label %sw.bb676

sw.bb676:                                         ; preds = %while.end670, %if.end
  %543 = load ptr, ptr %s.addr, align 8
  %state677 = getelementptr inbounds nuw %struct.DState, ptr %543, i32 0, i32 1
  store i32 21, ptr %state677, align 8
  br label %while.body678

while.body678:                                    ; preds = %if.end725, %sw.bb676
  %544 = load ptr, ptr %s.addr, align 8
  %bsLive679 = getelementptr inbounds nuw %struct.DState, ptr %544, i32 0, i32 8
  %545 = load i32, ptr %bsLive679, align 4
  %cmp680 = icmp sge i32 %545, 8
  br i1 %cmp680, label %if.then682, label %if.end692

if.then682:                                       ; preds = %while.body678
  %546 = load ptr, ptr %s.addr, align 8
  %bsBuff684 = getelementptr inbounds nuw %struct.DState, ptr %546, i32 0, i32 7
  %547 = load i32, ptr %bsBuff684, align 8
  %548 = load ptr, ptr %s.addr, align 8
  %bsLive685 = getelementptr inbounds nuw %struct.DState, ptr %548, i32 0, i32 8
  %549 = load i32, ptr %bsLive685, align 4
  %sub686 = sub nsw i32 %549, 8
  %shr687 = lshr i32 %547, %sub686
  %and688 = and i32 %shr687, 255
  store i32 %and688, ptr %v683, align 4
  %550 = load ptr, ptr %s.addr, align 8
  %bsLive689 = getelementptr inbounds nuw %struct.DState, ptr %550, i32 0, i32 8
  %551 = load i32, ptr %bsLive689, align 4
  %sub690 = sub nsw i32 %551, 8
  store i32 %sub690, ptr %bsLive689, align 4
  %552 = load i32, ptr %v683, align 4
  %conv691 = trunc i32 %552 to i8
  store i8 %conv691, ptr %uc, align 1
  br label %while.end726

if.end692:                                        ; preds = %while.body678
  %553 = load ptr, ptr %s.addr, align 8
  %strm693 = getelementptr inbounds nuw %struct.DState, ptr %553, i32 0, i32 0
  %554 = load ptr, ptr %strm693, align 8
  %avail_in694 = getelementptr inbounds nuw %struct.bz_stream, ptr %554, i32 0, i32 1
  %555 = load i32, ptr %avail_in694, align 8
  %cmp695 = icmp eq i32 %555, 0
  br i1 %cmp695, label %if.then697, label %if.end698

if.then697:                                       ; preds = %if.end692
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end698:                                        ; preds = %if.end692
  %556 = load ptr, ptr %s.addr, align 8
  %bsBuff699 = getelementptr inbounds nuw %struct.DState, ptr %556, i32 0, i32 7
  %557 = load i32, ptr %bsBuff699, align 8
  %shl700 = shl i32 %557, 8
  %558 = load ptr, ptr %s.addr, align 8
  %strm701 = getelementptr inbounds nuw %struct.DState, ptr %558, i32 0, i32 0
  %559 = load ptr, ptr %strm701, align 8
  %next_in702 = getelementptr inbounds nuw %struct.bz_stream, ptr %559, i32 0, i32 0
  %560 = load ptr, ptr %next_in702, align 8
  %561 = load i8, ptr %560, align 1
  %conv703 = zext i8 %561 to i32
  %or704 = or i32 %shl700, %conv703
  %562 = load ptr, ptr %s.addr, align 8
  %bsBuff705 = getelementptr inbounds nuw %struct.DState, ptr %562, i32 0, i32 7
  store i32 %or704, ptr %bsBuff705, align 8
  %563 = load ptr, ptr %s.addr, align 8
  %bsLive706 = getelementptr inbounds nuw %struct.DState, ptr %563, i32 0, i32 8
  %564 = load i32, ptr %bsLive706, align 4
  %add707 = add nsw i32 %564, 8
  store i32 %add707, ptr %bsLive706, align 4
  %565 = load ptr, ptr %s.addr, align 8
  %strm708 = getelementptr inbounds nuw %struct.DState, ptr %565, i32 0, i32 0
  %566 = load ptr, ptr %strm708, align 8
  %next_in709 = getelementptr inbounds nuw %struct.bz_stream, ptr %566, i32 0, i32 0
  %567 = load ptr, ptr %next_in709, align 8
  %incdec.ptr710 = getelementptr inbounds nuw i8, ptr %567, i32 1
  store ptr %incdec.ptr710, ptr %next_in709, align 8
  %568 = load ptr, ptr %s.addr, align 8
  %strm711 = getelementptr inbounds nuw %struct.DState, ptr %568, i32 0, i32 0
  %569 = load ptr, ptr %strm711, align 8
  %avail_in712 = getelementptr inbounds nuw %struct.bz_stream, ptr %569, i32 0, i32 1
  %570 = load i32, ptr %avail_in712, align 8
  %dec713 = add i32 %570, -1
  store i32 %dec713, ptr %avail_in712, align 8
  %571 = load ptr, ptr %s.addr, align 8
  %strm714 = getelementptr inbounds nuw %struct.DState, ptr %571, i32 0, i32 0
  %572 = load ptr, ptr %strm714, align 8
  %total_in_lo32715 = getelementptr inbounds nuw %struct.bz_stream, ptr %572, i32 0, i32 2
  %573 = load i32, ptr %total_in_lo32715, align 4
  %inc716 = add i32 %573, 1
  store i32 %inc716, ptr %total_in_lo32715, align 4
  %574 = load ptr, ptr %s.addr, align 8
  %strm717 = getelementptr inbounds nuw %struct.DState, ptr %574, i32 0, i32 0
  %575 = load ptr, ptr %strm717, align 8
  %total_in_lo32718 = getelementptr inbounds nuw %struct.bz_stream, ptr %575, i32 0, i32 2
  %576 = load i32, ptr %total_in_lo32718, align 4
  %cmp719 = icmp eq i32 %576, 0
  br i1 %cmp719, label %if.then721, label %if.end725

if.then721:                                       ; preds = %if.end698
  %577 = load ptr, ptr %s.addr, align 8
  %strm722 = getelementptr inbounds nuw %struct.DState, ptr %577, i32 0, i32 0
  %578 = load ptr, ptr %strm722, align 8
  %total_in_hi32723 = getelementptr inbounds nuw %struct.bz_stream, ptr %578, i32 0, i32 3
  %579 = load i32, ptr %total_in_hi32723, align 8
  %inc724 = add i32 %579, 1
  store i32 %inc724, ptr %total_in_hi32723, align 8
  br label %if.end725

if.end725:                                        ; preds = %if.then721, %if.end698
  br label %while.body678

while.end726:                                     ; preds = %if.then682
  %580 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC727 = getelementptr inbounds nuw %struct.DState, ptr %580, i32 0, i32 23
  %581 = load i32, ptr %storedBlockCRC727, align 8
  %shl728 = shl i32 %581, 8
  %582 = load i8, ptr %uc, align 1
  %conv729 = zext i8 %582 to i32
  %or730 = or i32 %shl728, %conv729
  %583 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC731 = getelementptr inbounds nuw %struct.DState, ptr %583, i32 0, i32 23
  store i32 %or730, ptr %storedBlockCRC731, align 8
  br label %sw.bb732

sw.bb732:                                         ; preds = %while.end726, %if.end
  %584 = load ptr, ptr %s.addr, align 8
  %state733 = getelementptr inbounds nuw %struct.DState, ptr %584, i32 0, i32 1
  store i32 22, ptr %state733, align 8
  br label %while.body734

while.body734:                                    ; preds = %if.end781, %sw.bb732
  %585 = load ptr, ptr %s.addr, align 8
  %bsLive735 = getelementptr inbounds nuw %struct.DState, ptr %585, i32 0, i32 8
  %586 = load i32, ptr %bsLive735, align 4
  %cmp736 = icmp sge i32 %586, 8
  br i1 %cmp736, label %if.then738, label %if.end748

if.then738:                                       ; preds = %while.body734
  %587 = load ptr, ptr %s.addr, align 8
  %bsBuff740 = getelementptr inbounds nuw %struct.DState, ptr %587, i32 0, i32 7
  %588 = load i32, ptr %bsBuff740, align 8
  %589 = load ptr, ptr %s.addr, align 8
  %bsLive741 = getelementptr inbounds nuw %struct.DState, ptr %589, i32 0, i32 8
  %590 = load i32, ptr %bsLive741, align 4
  %sub742 = sub nsw i32 %590, 8
  %shr743 = lshr i32 %588, %sub742
  %and744 = and i32 %shr743, 255
  store i32 %and744, ptr %v739, align 4
  %591 = load ptr, ptr %s.addr, align 8
  %bsLive745 = getelementptr inbounds nuw %struct.DState, ptr %591, i32 0, i32 8
  %592 = load i32, ptr %bsLive745, align 4
  %sub746 = sub nsw i32 %592, 8
  store i32 %sub746, ptr %bsLive745, align 4
  %593 = load i32, ptr %v739, align 4
  %conv747 = trunc i32 %593 to i8
  store i8 %conv747, ptr %uc, align 1
  br label %while.end782

if.end748:                                        ; preds = %while.body734
  %594 = load ptr, ptr %s.addr, align 8
  %strm749 = getelementptr inbounds nuw %struct.DState, ptr %594, i32 0, i32 0
  %595 = load ptr, ptr %strm749, align 8
  %avail_in750 = getelementptr inbounds nuw %struct.bz_stream, ptr %595, i32 0, i32 1
  %596 = load i32, ptr %avail_in750, align 8
  %cmp751 = icmp eq i32 %596, 0
  br i1 %cmp751, label %if.then753, label %if.end754

if.then753:                                       ; preds = %if.end748
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end754:                                        ; preds = %if.end748
  %597 = load ptr, ptr %s.addr, align 8
  %bsBuff755 = getelementptr inbounds nuw %struct.DState, ptr %597, i32 0, i32 7
  %598 = load i32, ptr %bsBuff755, align 8
  %shl756 = shl i32 %598, 8
  %599 = load ptr, ptr %s.addr, align 8
  %strm757 = getelementptr inbounds nuw %struct.DState, ptr %599, i32 0, i32 0
  %600 = load ptr, ptr %strm757, align 8
  %next_in758 = getelementptr inbounds nuw %struct.bz_stream, ptr %600, i32 0, i32 0
  %601 = load ptr, ptr %next_in758, align 8
  %602 = load i8, ptr %601, align 1
  %conv759 = zext i8 %602 to i32
  %or760 = or i32 %shl756, %conv759
  %603 = load ptr, ptr %s.addr, align 8
  %bsBuff761 = getelementptr inbounds nuw %struct.DState, ptr %603, i32 0, i32 7
  store i32 %or760, ptr %bsBuff761, align 8
  %604 = load ptr, ptr %s.addr, align 8
  %bsLive762 = getelementptr inbounds nuw %struct.DState, ptr %604, i32 0, i32 8
  %605 = load i32, ptr %bsLive762, align 4
  %add763 = add nsw i32 %605, 8
  store i32 %add763, ptr %bsLive762, align 4
  %606 = load ptr, ptr %s.addr, align 8
  %strm764 = getelementptr inbounds nuw %struct.DState, ptr %606, i32 0, i32 0
  %607 = load ptr, ptr %strm764, align 8
  %next_in765 = getelementptr inbounds nuw %struct.bz_stream, ptr %607, i32 0, i32 0
  %608 = load ptr, ptr %next_in765, align 8
  %incdec.ptr766 = getelementptr inbounds nuw i8, ptr %608, i32 1
  store ptr %incdec.ptr766, ptr %next_in765, align 8
  %609 = load ptr, ptr %s.addr, align 8
  %strm767 = getelementptr inbounds nuw %struct.DState, ptr %609, i32 0, i32 0
  %610 = load ptr, ptr %strm767, align 8
  %avail_in768 = getelementptr inbounds nuw %struct.bz_stream, ptr %610, i32 0, i32 1
  %611 = load i32, ptr %avail_in768, align 8
  %dec769 = add i32 %611, -1
  store i32 %dec769, ptr %avail_in768, align 8
  %612 = load ptr, ptr %s.addr, align 8
  %strm770 = getelementptr inbounds nuw %struct.DState, ptr %612, i32 0, i32 0
  %613 = load ptr, ptr %strm770, align 8
  %total_in_lo32771 = getelementptr inbounds nuw %struct.bz_stream, ptr %613, i32 0, i32 2
  %614 = load i32, ptr %total_in_lo32771, align 4
  %inc772 = add i32 %614, 1
  store i32 %inc772, ptr %total_in_lo32771, align 4
  %615 = load ptr, ptr %s.addr, align 8
  %strm773 = getelementptr inbounds nuw %struct.DState, ptr %615, i32 0, i32 0
  %616 = load ptr, ptr %strm773, align 8
  %total_in_lo32774 = getelementptr inbounds nuw %struct.bz_stream, ptr %616, i32 0, i32 2
  %617 = load i32, ptr %total_in_lo32774, align 4
  %cmp775 = icmp eq i32 %617, 0
  br i1 %cmp775, label %if.then777, label %if.end781

if.then777:                                       ; preds = %if.end754
  %618 = load ptr, ptr %s.addr, align 8
  %strm778 = getelementptr inbounds nuw %struct.DState, ptr %618, i32 0, i32 0
  %619 = load ptr, ptr %strm778, align 8
  %total_in_hi32779 = getelementptr inbounds nuw %struct.bz_stream, ptr %619, i32 0, i32 3
  %620 = load i32, ptr %total_in_hi32779, align 8
  %inc780 = add i32 %620, 1
  store i32 %inc780, ptr %total_in_hi32779, align 8
  br label %if.end781

if.end781:                                        ; preds = %if.then777, %if.end754
  br label %while.body734

while.end782:                                     ; preds = %if.then738
  %621 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC783 = getelementptr inbounds nuw %struct.DState, ptr %621, i32 0, i32 23
  %622 = load i32, ptr %storedBlockCRC783, align 8
  %shl784 = shl i32 %622, 8
  %623 = load i8, ptr %uc, align 1
  %conv785 = zext i8 %623 to i32
  %or786 = or i32 %shl784, %conv785
  %624 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC787 = getelementptr inbounds nuw %struct.DState, ptr %624, i32 0, i32 23
  store i32 %or786, ptr %storedBlockCRC787, align 8
  br label %sw.bb788

sw.bb788:                                         ; preds = %while.end782, %if.end
  %625 = load ptr, ptr %s.addr, align 8
  %state789 = getelementptr inbounds nuw %struct.DState, ptr %625, i32 0, i32 1
  store i32 23, ptr %state789, align 8
  br label %while.body790

while.body790:                                    ; preds = %if.end837, %sw.bb788
  %626 = load ptr, ptr %s.addr, align 8
  %bsLive791 = getelementptr inbounds nuw %struct.DState, ptr %626, i32 0, i32 8
  %627 = load i32, ptr %bsLive791, align 4
  %cmp792 = icmp sge i32 %627, 8
  br i1 %cmp792, label %if.then794, label %if.end804

if.then794:                                       ; preds = %while.body790
  %628 = load ptr, ptr %s.addr, align 8
  %bsBuff796 = getelementptr inbounds nuw %struct.DState, ptr %628, i32 0, i32 7
  %629 = load i32, ptr %bsBuff796, align 8
  %630 = load ptr, ptr %s.addr, align 8
  %bsLive797 = getelementptr inbounds nuw %struct.DState, ptr %630, i32 0, i32 8
  %631 = load i32, ptr %bsLive797, align 4
  %sub798 = sub nsw i32 %631, 8
  %shr799 = lshr i32 %629, %sub798
  %and800 = and i32 %shr799, 255
  store i32 %and800, ptr %v795, align 4
  %632 = load ptr, ptr %s.addr, align 8
  %bsLive801 = getelementptr inbounds nuw %struct.DState, ptr %632, i32 0, i32 8
  %633 = load i32, ptr %bsLive801, align 4
  %sub802 = sub nsw i32 %633, 8
  store i32 %sub802, ptr %bsLive801, align 4
  %634 = load i32, ptr %v795, align 4
  %conv803 = trunc i32 %634 to i8
  store i8 %conv803, ptr %uc, align 1
  br label %while.end838

if.end804:                                        ; preds = %while.body790
  %635 = load ptr, ptr %s.addr, align 8
  %strm805 = getelementptr inbounds nuw %struct.DState, ptr %635, i32 0, i32 0
  %636 = load ptr, ptr %strm805, align 8
  %avail_in806 = getelementptr inbounds nuw %struct.bz_stream, ptr %636, i32 0, i32 1
  %637 = load i32, ptr %avail_in806, align 8
  %cmp807 = icmp eq i32 %637, 0
  br i1 %cmp807, label %if.then809, label %if.end810

if.then809:                                       ; preds = %if.end804
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end810:                                        ; preds = %if.end804
  %638 = load ptr, ptr %s.addr, align 8
  %bsBuff811 = getelementptr inbounds nuw %struct.DState, ptr %638, i32 0, i32 7
  %639 = load i32, ptr %bsBuff811, align 8
  %shl812 = shl i32 %639, 8
  %640 = load ptr, ptr %s.addr, align 8
  %strm813 = getelementptr inbounds nuw %struct.DState, ptr %640, i32 0, i32 0
  %641 = load ptr, ptr %strm813, align 8
  %next_in814 = getelementptr inbounds nuw %struct.bz_stream, ptr %641, i32 0, i32 0
  %642 = load ptr, ptr %next_in814, align 8
  %643 = load i8, ptr %642, align 1
  %conv815 = zext i8 %643 to i32
  %or816 = or i32 %shl812, %conv815
  %644 = load ptr, ptr %s.addr, align 8
  %bsBuff817 = getelementptr inbounds nuw %struct.DState, ptr %644, i32 0, i32 7
  store i32 %or816, ptr %bsBuff817, align 8
  %645 = load ptr, ptr %s.addr, align 8
  %bsLive818 = getelementptr inbounds nuw %struct.DState, ptr %645, i32 0, i32 8
  %646 = load i32, ptr %bsLive818, align 4
  %add819 = add nsw i32 %646, 8
  store i32 %add819, ptr %bsLive818, align 4
  %647 = load ptr, ptr %s.addr, align 8
  %strm820 = getelementptr inbounds nuw %struct.DState, ptr %647, i32 0, i32 0
  %648 = load ptr, ptr %strm820, align 8
  %next_in821 = getelementptr inbounds nuw %struct.bz_stream, ptr %648, i32 0, i32 0
  %649 = load ptr, ptr %next_in821, align 8
  %incdec.ptr822 = getelementptr inbounds nuw i8, ptr %649, i32 1
  store ptr %incdec.ptr822, ptr %next_in821, align 8
  %650 = load ptr, ptr %s.addr, align 8
  %strm823 = getelementptr inbounds nuw %struct.DState, ptr %650, i32 0, i32 0
  %651 = load ptr, ptr %strm823, align 8
  %avail_in824 = getelementptr inbounds nuw %struct.bz_stream, ptr %651, i32 0, i32 1
  %652 = load i32, ptr %avail_in824, align 8
  %dec825 = add i32 %652, -1
  store i32 %dec825, ptr %avail_in824, align 8
  %653 = load ptr, ptr %s.addr, align 8
  %strm826 = getelementptr inbounds nuw %struct.DState, ptr %653, i32 0, i32 0
  %654 = load ptr, ptr %strm826, align 8
  %total_in_lo32827 = getelementptr inbounds nuw %struct.bz_stream, ptr %654, i32 0, i32 2
  %655 = load i32, ptr %total_in_lo32827, align 4
  %inc828 = add i32 %655, 1
  store i32 %inc828, ptr %total_in_lo32827, align 4
  %656 = load ptr, ptr %s.addr, align 8
  %strm829 = getelementptr inbounds nuw %struct.DState, ptr %656, i32 0, i32 0
  %657 = load ptr, ptr %strm829, align 8
  %total_in_lo32830 = getelementptr inbounds nuw %struct.bz_stream, ptr %657, i32 0, i32 2
  %658 = load i32, ptr %total_in_lo32830, align 4
  %cmp831 = icmp eq i32 %658, 0
  br i1 %cmp831, label %if.then833, label %if.end837

if.then833:                                       ; preds = %if.end810
  %659 = load ptr, ptr %s.addr, align 8
  %strm834 = getelementptr inbounds nuw %struct.DState, ptr %659, i32 0, i32 0
  %660 = load ptr, ptr %strm834, align 8
  %total_in_hi32835 = getelementptr inbounds nuw %struct.bz_stream, ptr %660, i32 0, i32 3
  %661 = load i32, ptr %total_in_hi32835, align 8
  %inc836 = add i32 %661, 1
  store i32 %inc836, ptr %total_in_hi32835, align 8
  br label %if.end837

if.end837:                                        ; preds = %if.then833, %if.end810
  br label %while.body790

while.end838:                                     ; preds = %if.then794
  %662 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC839 = getelementptr inbounds nuw %struct.DState, ptr %662, i32 0, i32 23
  %663 = load i32, ptr %storedBlockCRC839, align 8
  %shl840 = shl i32 %663, 8
  %664 = load i8, ptr %uc, align 1
  %conv841 = zext i8 %664 to i32
  %or842 = or i32 %shl840, %conv841
  %665 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC843 = getelementptr inbounds nuw %struct.DState, ptr %665, i32 0, i32 23
  store i32 %or842, ptr %storedBlockCRC843, align 8
  br label %sw.bb844

sw.bb844:                                         ; preds = %while.end838, %if.end
  %666 = load ptr, ptr %s.addr, align 8
  %state845 = getelementptr inbounds nuw %struct.DState, ptr %666, i32 0, i32 1
  store i32 24, ptr %state845, align 8
  br label %while.body846

while.body846:                                    ; preds = %if.end893, %sw.bb844
  %667 = load ptr, ptr %s.addr, align 8
  %bsLive847 = getelementptr inbounds nuw %struct.DState, ptr %667, i32 0, i32 8
  %668 = load i32, ptr %bsLive847, align 4
  %cmp848 = icmp sge i32 %668, 1
  br i1 %cmp848, label %if.then850, label %if.end860

if.then850:                                       ; preds = %while.body846
  %669 = load ptr, ptr %s.addr, align 8
  %bsBuff852 = getelementptr inbounds nuw %struct.DState, ptr %669, i32 0, i32 7
  %670 = load i32, ptr %bsBuff852, align 8
  %671 = load ptr, ptr %s.addr, align 8
  %bsLive853 = getelementptr inbounds nuw %struct.DState, ptr %671, i32 0, i32 8
  %672 = load i32, ptr %bsLive853, align 4
  %sub854 = sub nsw i32 %672, 1
  %shr855 = lshr i32 %670, %sub854
  %and856 = and i32 %shr855, 1
  store i32 %and856, ptr %v851, align 4
  %673 = load ptr, ptr %s.addr, align 8
  %bsLive857 = getelementptr inbounds nuw %struct.DState, ptr %673, i32 0, i32 8
  %674 = load i32, ptr %bsLive857, align 4
  %sub858 = sub nsw i32 %674, 1
  store i32 %sub858, ptr %bsLive857, align 4
  %675 = load i32, ptr %v851, align 4
  %conv859 = trunc i32 %675 to i8
  %676 = load ptr, ptr %s.addr, align 8
  %blockRandomised = getelementptr inbounds nuw %struct.DState, ptr %676, i32 0, i32 4
  store i8 %conv859, ptr %blockRandomised, align 4
  br label %while.end894

if.end860:                                        ; preds = %while.body846
  %677 = load ptr, ptr %s.addr, align 8
  %strm861 = getelementptr inbounds nuw %struct.DState, ptr %677, i32 0, i32 0
  %678 = load ptr, ptr %strm861, align 8
  %avail_in862 = getelementptr inbounds nuw %struct.bz_stream, ptr %678, i32 0, i32 1
  %679 = load i32, ptr %avail_in862, align 8
  %cmp863 = icmp eq i32 %679, 0
  br i1 %cmp863, label %if.then865, label %if.end866

if.then865:                                       ; preds = %if.end860
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end866:                                        ; preds = %if.end860
  %680 = load ptr, ptr %s.addr, align 8
  %bsBuff867 = getelementptr inbounds nuw %struct.DState, ptr %680, i32 0, i32 7
  %681 = load i32, ptr %bsBuff867, align 8
  %shl868 = shl i32 %681, 8
  %682 = load ptr, ptr %s.addr, align 8
  %strm869 = getelementptr inbounds nuw %struct.DState, ptr %682, i32 0, i32 0
  %683 = load ptr, ptr %strm869, align 8
  %next_in870 = getelementptr inbounds nuw %struct.bz_stream, ptr %683, i32 0, i32 0
  %684 = load ptr, ptr %next_in870, align 8
  %685 = load i8, ptr %684, align 1
  %conv871 = zext i8 %685 to i32
  %or872 = or i32 %shl868, %conv871
  %686 = load ptr, ptr %s.addr, align 8
  %bsBuff873 = getelementptr inbounds nuw %struct.DState, ptr %686, i32 0, i32 7
  store i32 %or872, ptr %bsBuff873, align 8
  %687 = load ptr, ptr %s.addr, align 8
  %bsLive874 = getelementptr inbounds nuw %struct.DState, ptr %687, i32 0, i32 8
  %688 = load i32, ptr %bsLive874, align 4
  %add875 = add nsw i32 %688, 8
  store i32 %add875, ptr %bsLive874, align 4
  %689 = load ptr, ptr %s.addr, align 8
  %strm876 = getelementptr inbounds nuw %struct.DState, ptr %689, i32 0, i32 0
  %690 = load ptr, ptr %strm876, align 8
  %next_in877 = getelementptr inbounds nuw %struct.bz_stream, ptr %690, i32 0, i32 0
  %691 = load ptr, ptr %next_in877, align 8
  %incdec.ptr878 = getelementptr inbounds nuw i8, ptr %691, i32 1
  store ptr %incdec.ptr878, ptr %next_in877, align 8
  %692 = load ptr, ptr %s.addr, align 8
  %strm879 = getelementptr inbounds nuw %struct.DState, ptr %692, i32 0, i32 0
  %693 = load ptr, ptr %strm879, align 8
  %avail_in880 = getelementptr inbounds nuw %struct.bz_stream, ptr %693, i32 0, i32 1
  %694 = load i32, ptr %avail_in880, align 8
  %dec881 = add i32 %694, -1
  store i32 %dec881, ptr %avail_in880, align 8
  %695 = load ptr, ptr %s.addr, align 8
  %strm882 = getelementptr inbounds nuw %struct.DState, ptr %695, i32 0, i32 0
  %696 = load ptr, ptr %strm882, align 8
  %total_in_lo32883 = getelementptr inbounds nuw %struct.bz_stream, ptr %696, i32 0, i32 2
  %697 = load i32, ptr %total_in_lo32883, align 4
  %inc884 = add i32 %697, 1
  store i32 %inc884, ptr %total_in_lo32883, align 4
  %698 = load ptr, ptr %s.addr, align 8
  %strm885 = getelementptr inbounds nuw %struct.DState, ptr %698, i32 0, i32 0
  %699 = load ptr, ptr %strm885, align 8
  %total_in_lo32886 = getelementptr inbounds nuw %struct.bz_stream, ptr %699, i32 0, i32 2
  %700 = load i32, ptr %total_in_lo32886, align 4
  %cmp887 = icmp eq i32 %700, 0
  br i1 %cmp887, label %if.then889, label %if.end893

if.then889:                                       ; preds = %if.end866
  %701 = load ptr, ptr %s.addr, align 8
  %strm890 = getelementptr inbounds nuw %struct.DState, ptr %701, i32 0, i32 0
  %702 = load ptr, ptr %strm890, align 8
  %total_in_hi32891 = getelementptr inbounds nuw %struct.bz_stream, ptr %702, i32 0, i32 3
  %703 = load i32, ptr %total_in_hi32891, align 8
  %inc892 = add i32 %703, 1
  store i32 %inc892, ptr %total_in_hi32891, align 8
  br label %if.end893

if.end893:                                        ; preds = %if.then889, %if.end866
  br label %while.body846

while.end894:                                     ; preds = %if.then850
  %704 = load ptr, ptr %s.addr, align 8
  %origPtr = getelementptr inbounds nuw %struct.DState, ptr %704, i32 0, i32 13
  store i32 0, ptr %origPtr, align 8
  br label %sw.bb895

sw.bb895:                                         ; preds = %while.end894, %if.end
  %705 = load ptr, ptr %s.addr, align 8
  %state896 = getelementptr inbounds nuw %struct.DState, ptr %705, i32 0, i32 1
  store i32 25, ptr %state896, align 8
  br label %while.body897

while.body897:                                    ; preds = %if.end944, %sw.bb895
  %706 = load ptr, ptr %s.addr, align 8
  %bsLive898 = getelementptr inbounds nuw %struct.DState, ptr %706, i32 0, i32 8
  %707 = load i32, ptr %bsLive898, align 4
  %cmp899 = icmp sge i32 %707, 8
  br i1 %cmp899, label %if.then901, label %if.end911

if.then901:                                       ; preds = %while.body897
  %708 = load ptr, ptr %s.addr, align 8
  %bsBuff903 = getelementptr inbounds nuw %struct.DState, ptr %708, i32 0, i32 7
  %709 = load i32, ptr %bsBuff903, align 8
  %710 = load ptr, ptr %s.addr, align 8
  %bsLive904 = getelementptr inbounds nuw %struct.DState, ptr %710, i32 0, i32 8
  %711 = load i32, ptr %bsLive904, align 4
  %sub905 = sub nsw i32 %711, 8
  %shr906 = lshr i32 %709, %sub905
  %and907 = and i32 %shr906, 255
  store i32 %and907, ptr %v902, align 4
  %712 = load ptr, ptr %s.addr, align 8
  %bsLive908 = getelementptr inbounds nuw %struct.DState, ptr %712, i32 0, i32 8
  %713 = load i32, ptr %bsLive908, align 4
  %sub909 = sub nsw i32 %713, 8
  store i32 %sub909, ptr %bsLive908, align 4
  %714 = load i32, ptr %v902, align 4
  %conv910 = trunc i32 %714 to i8
  store i8 %conv910, ptr %uc, align 1
  br label %while.end945

if.end911:                                        ; preds = %while.body897
  %715 = load ptr, ptr %s.addr, align 8
  %strm912 = getelementptr inbounds nuw %struct.DState, ptr %715, i32 0, i32 0
  %716 = load ptr, ptr %strm912, align 8
  %avail_in913 = getelementptr inbounds nuw %struct.bz_stream, ptr %716, i32 0, i32 1
  %717 = load i32, ptr %avail_in913, align 8
  %cmp914 = icmp eq i32 %717, 0
  br i1 %cmp914, label %if.then916, label %if.end917

if.then916:                                       ; preds = %if.end911
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end917:                                        ; preds = %if.end911
  %718 = load ptr, ptr %s.addr, align 8
  %bsBuff918 = getelementptr inbounds nuw %struct.DState, ptr %718, i32 0, i32 7
  %719 = load i32, ptr %bsBuff918, align 8
  %shl919 = shl i32 %719, 8
  %720 = load ptr, ptr %s.addr, align 8
  %strm920 = getelementptr inbounds nuw %struct.DState, ptr %720, i32 0, i32 0
  %721 = load ptr, ptr %strm920, align 8
  %next_in921 = getelementptr inbounds nuw %struct.bz_stream, ptr %721, i32 0, i32 0
  %722 = load ptr, ptr %next_in921, align 8
  %723 = load i8, ptr %722, align 1
  %conv922 = zext i8 %723 to i32
  %or923 = or i32 %shl919, %conv922
  %724 = load ptr, ptr %s.addr, align 8
  %bsBuff924 = getelementptr inbounds nuw %struct.DState, ptr %724, i32 0, i32 7
  store i32 %or923, ptr %bsBuff924, align 8
  %725 = load ptr, ptr %s.addr, align 8
  %bsLive925 = getelementptr inbounds nuw %struct.DState, ptr %725, i32 0, i32 8
  %726 = load i32, ptr %bsLive925, align 4
  %add926 = add nsw i32 %726, 8
  store i32 %add926, ptr %bsLive925, align 4
  %727 = load ptr, ptr %s.addr, align 8
  %strm927 = getelementptr inbounds nuw %struct.DState, ptr %727, i32 0, i32 0
  %728 = load ptr, ptr %strm927, align 8
  %next_in928 = getelementptr inbounds nuw %struct.bz_stream, ptr %728, i32 0, i32 0
  %729 = load ptr, ptr %next_in928, align 8
  %incdec.ptr929 = getelementptr inbounds nuw i8, ptr %729, i32 1
  store ptr %incdec.ptr929, ptr %next_in928, align 8
  %730 = load ptr, ptr %s.addr, align 8
  %strm930 = getelementptr inbounds nuw %struct.DState, ptr %730, i32 0, i32 0
  %731 = load ptr, ptr %strm930, align 8
  %avail_in931 = getelementptr inbounds nuw %struct.bz_stream, ptr %731, i32 0, i32 1
  %732 = load i32, ptr %avail_in931, align 8
  %dec932 = add i32 %732, -1
  store i32 %dec932, ptr %avail_in931, align 8
  %733 = load ptr, ptr %s.addr, align 8
  %strm933 = getelementptr inbounds nuw %struct.DState, ptr %733, i32 0, i32 0
  %734 = load ptr, ptr %strm933, align 8
  %total_in_lo32934 = getelementptr inbounds nuw %struct.bz_stream, ptr %734, i32 0, i32 2
  %735 = load i32, ptr %total_in_lo32934, align 4
  %inc935 = add i32 %735, 1
  store i32 %inc935, ptr %total_in_lo32934, align 4
  %736 = load ptr, ptr %s.addr, align 8
  %strm936 = getelementptr inbounds nuw %struct.DState, ptr %736, i32 0, i32 0
  %737 = load ptr, ptr %strm936, align 8
  %total_in_lo32937 = getelementptr inbounds nuw %struct.bz_stream, ptr %737, i32 0, i32 2
  %738 = load i32, ptr %total_in_lo32937, align 4
  %cmp938 = icmp eq i32 %738, 0
  br i1 %cmp938, label %if.then940, label %if.end944

if.then940:                                       ; preds = %if.end917
  %739 = load ptr, ptr %s.addr, align 8
  %strm941 = getelementptr inbounds nuw %struct.DState, ptr %739, i32 0, i32 0
  %740 = load ptr, ptr %strm941, align 8
  %total_in_hi32942 = getelementptr inbounds nuw %struct.bz_stream, ptr %740, i32 0, i32 3
  %741 = load i32, ptr %total_in_hi32942, align 8
  %inc943 = add i32 %741, 1
  store i32 %inc943, ptr %total_in_hi32942, align 8
  br label %if.end944

if.end944:                                        ; preds = %if.then940, %if.end917
  br label %while.body897

while.end945:                                     ; preds = %if.then901
  %742 = load ptr, ptr %s.addr, align 8
  %origPtr946 = getelementptr inbounds nuw %struct.DState, ptr %742, i32 0, i32 13
  %743 = load i32, ptr %origPtr946, align 8
  %shl947 = shl i32 %743, 8
  %744 = load i8, ptr %uc, align 1
  %conv948 = zext i8 %744 to i32
  %or949 = or i32 %shl947, %conv948
  %745 = load ptr, ptr %s.addr, align 8
  %origPtr950 = getelementptr inbounds nuw %struct.DState, ptr %745, i32 0, i32 13
  store i32 %or949, ptr %origPtr950, align 8
  br label %sw.bb951

sw.bb951:                                         ; preds = %while.end945, %if.end
  %746 = load ptr, ptr %s.addr, align 8
  %state952 = getelementptr inbounds nuw %struct.DState, ptr %746, i32 0, i32 1
  store i32 26, ptr %state952, align 8
  br label %while.body953

while.body953:                                    ; preds = %if.end1000, %sw.bb951
  %747 = load ptr, ptr %s.addr, align 8
  %bsLive954 = getelementptr inbounds nuw %struct.DState, ptr %747, i32 0, i32 8
  %748 = load i32, ptr %bsLive954, align 4
  %cmp955 = icmp sge i32 %748, 8
  br i1 %cmp955, label %if.then957, label %if.end967

if.then957:                                       ; preds = %while.body953
  %749 = load ptr, ptr %s.addr, align 8
  %bsBuff959 = getelementptr inbounds nuw %struct.DState, ptr %749, i32 0, i32 7
  %750 = load i32, ptr %bsBuff959, align 8
  %751 = load ptr, ptr %s.addr, align 8
  %bsLive960 = getelementptr inbounds nuw %struct.DState, ptr %751, i32 0, i32 8
  %752 = load i32, ptr %bsLive960, align 4
  %sub961 = sub nsw i32 %752, 8
  %shr962 = lshr i32 %750, %sub961
  %and963 = and i32 %shr962, 255
  store i32 %and963, ptr %v958, align 4
  %753 = load ptr, ptr %s.addr, align 8
  %bsLive964 = getelementptr inbounds nuw %struct.DState, ptr %753, i32 0, i32 8
  %754 = load i32, ptr %bsLive964, align 4
  %sub965 = sub nsw i32 %754, 8
  store i32 %sub965, ptr %bsLive964, align 4
  %755 = load i32, ptr %v958, align 4
  %conv966 = trunc i32 %755 to i8
  store i8 %conv966, ptr %uc, align 1
  br label %while.end1001

if.end967:                                        ; preds = %while.body953
  %756 = load ptr, ptr %s.addr, align 8
  %strm968 = getelementptr inbounds nuw %struct.DState, ptr %756, i32 0, i32 0
  %757 = load ptr, ptr %strm968, align 8
  %avail_in969 = getelementptr inbounds nuw %struct.bz_stream, ptr %757, i32 0, i32 1
  %758 = load i32, ptr %avail_in969, align 8
  %cmp970 = icmp eq i32 %758, 0
  br i1 %cmp970, label %if.then972, label %if.end973

if.then972:                                       ; preds = %if.end967
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end973:                                        ; preds = %if.end967
  %759 = load ptr, ptr %s.addr, align 8
  %bsBuff974 = getelementptr inbounds nuw %struct.DState, ptr %759, i32 0, i32 7
  %760 = load i32, ptr %bsBuff974, align 8
  %shl975 = shl i32 %760, 8
  %761 = load ptr, ptr %s.addr, align 8
  %strm976 = getelementptr inbounds nuw %struct.DState, ptr %761, i32 0, i32 0
  %762 = load ptr, ptr %strm976, align 8
  %next_in977 = getelementptr inbounds nuw %struct.bz_stream, ptr %762, i32 0, i32 0
  %763 = load ptr, ptr %next_in977, align 8
  %764 = load i8, ptr %763, align 1
  %conv978 = zext i8 %764 to i32
  %or979 = or i32 %shl975, %conv978
  %765 = load ptr, ptr %s.addr, align 8
  %bsBuff980 = getelementptr inbounds nuw %struct.DState, ptr %765, i32 0, i32 7
  store i32 %or979, ptr %bsBuff980, align 8
  %766 = load ptr, ptr %s.addr, align 8
  %bsLive981 = getelementptr inbounds nuw %struct.DState, ptr %766, i32 0, i32 8
  %767 = load i32, ptr %bsLive981, align 4
  %add982 = add nsw i32 %767, 8
  store i32 %add982, ptr %bsLive981, align 4
  %768 = load ptr, ptr %s.addr, align 8
  %strm983 = getelementptr inbounds nuw %struct.DState, ptr %768, i32 0, i32 0
  %769 = load ptr, ptr %strm983, align 8
  %next_in984 = getelementptr inbounds nuw %struct.bz_stream, ptr %769, i32 0, i32 0
  %770 = load ptr, ptr %next_in984, align 8
  %incdec.ptr985 = getelementptr inbounds nuw i8, ptr %770, i32 1
  store ptr %incdec.ptr985, ptr %next_in984, align 8
  %771 = load ptr, ptr %s.addr, align 8
  %strm986 = getelementptr inbounds nuw %struct.DState, ptr %771, i32 0, i32 0
  %772 = load ptr, ptr %strm986, align 8
  %avail_in987 = getelementptr inbounds nuw %struct.bz_stream, ptr %772, i32 0, i32 1
  %773 = load i32, ptr %avail_in987, align 8
  %dec988 = add i32 %773, -1
  store i32 %dec988, ptr %avail_in987, align 8
  %774 = load ptr, ptr %s.addr, align 8
  %strm989 = getelementptr inbounds nuw %struct.DState, ptr %774, i32 0, i32 0
  %775 = load ptr, ptr %strm989, align 8
  %total_in_lo32990 = getelementptr inbounds nuw %struct.bz_stream, ptr %775, i32 0, i32 2
  %776 = load i32, ptr %total_in_lo32990, align 4
  %inc991 = add i32 %776, 1
  store i32 %inc991, ptr %total_in_lo32990, align 4
  %777 = load ptr, ptr %s.addr, align 8
  %strm992 = getelementptr inbounds nuw %struct.DState, ptr %777, i32 0, i32 0
  %778 = load ptr, ptr %strm992, align 8
  %total_in_lo32993 = getelementptr inbounds nuw %struct.bz_stream, ptr %778, i32 0, i32 2
  %779 = load i32, ptr %total_in_lo32993, align 4
  %cmp994 = icmp eq i32 %779, 0
  br i1 %cmp994, label %if.then996, label %if.end1000

if.then996:                                       ; preds = %if.end973
  %780 = load ptr, ptr %s.addr, align 8
  %strm997 = getelementptr inbounds nuw %struct.DState, ptr %780, i32 0, i32 0
  %781 = load ptr, ptr %strm997, align 8
  %total_in_hi32998 = getelementptr inbounds nuw %struct.bz_stream, ptr %781, i32 0, i32 3
  %782 = load i32, ptr %total_in_hi32998, align 8
  %inc999 = add i32 %782, 1
  store i32 %inc999, ptr %total_in_hi32998, align 8
  br label %if.end1000

if.end1000:                                       ; preds = %if.then996, %if.end973
  br label %while.body953

while.end1001:                                    ; preds = %if.then957
  %783 = load ptr, ptr %s.addr, align 8
  %origPtr1002 = getelementptr inbounds nuw %struct.DState, ptr %783, i32 0, i32 13
  %784 = load i32, ptr %origPtr1002, align 8
  %shl1003 = shl i32 %784, 8
  %785 = load i8, ptr %uc, align 1
  %conv1004 = zext i8 %785 to i32
  %or1005 = or i32 %shl1003, %conv1004
  %786 = load ptr, ptr %s.addr, align 8
  %origPtr1006 = getelementptr inbounds nuw %struct.DState, ptr %786, i32 0, i32 13
  store i32 %or1005, ptr %origPtr1006, align 8
  br label %sw.bb1007

sw.bb1007:                                        ; preds = %while.end1001, %if.end
  %787 = load ptr, ptr %s.addr, align 8
  %state1008 = getelementptr inbounds nuw %struct.DState, ptr %787, i32 0, i32 1
  store i32 27, ptr %state1008, align 8
  br label %while.body1009

while.body1009:                                   ; preds = %if.end1056, %sw.bb1007
  %788 = load ptr, ptr %s.addr, align 8
  %bsLive1010 = getelementptr inbounds nuw %struct.DState, ptr %788, i32 0, i32 8
  %789 = load i32, ptr %bsLive1010, align 4
  %cmp1011 = icmp sge i32 %789, 8
  br i1 %cmp1011, label %if.then1013, label %if.end1023

if.then1013:                                      ; preds = %while.body1009
  %790 = load ptr, ptr %s.addr, align 8
  %bsBuff1015 = getelementptr inbounds nuw %struct.DState, ptr %790, i32 0, i32 7
  %791 = load i32, ptr %bsBuff1015, align 8
  %792 = load ptr, ptr %s.addr, align 8
  %bsLive1016 = getelementptr inbounds nuw %struct.DState, ptr %792, i32 0, i32 8
  %793 = load i32, ptr %bsLive1016, align 4
  %sub1017 = sub nsw i32 %793, 8
  %shr1018 = lshr i32 %791, %sub1017
  %and1019 = and i32 %shr1018, 255
  store i32 %and1019, ptr %v1014, align 4
  %794 = load ptr, ptr %s.addr, align 8
  %bsLive1020 = getelementptr inbounds nuw %struct.DState, ptr %794, i32 0, i32 8
  %795 = load i32, ptr %bsLive1020, align 4
  %sub1021 = sub nsw i32 %795, 8
  store i32 %sub1021, ptr %bsLive1020, align 4
  %796 = load i32, ptr %v1014, align 4
  %conv1022 = trunc i32 %796 to i8
  store i8 %conv1022, ptr %uc, align 1
  br label %while.end1057

if.end1023:                                       ; preds = %while.body1009
  %797 = load ptr, ptr %s.addr, align 8
  %strm1024 = getelementptr inbounds nuw %struct.DState, ptr %797, i32 0, i32 0
  %798 = load ptr, ptr %strm1024, align 8
  %avail_in1025 = getelementptr inbounds nuw %struct.bz_stream, ptr %798, i32 0, i32 1
  %799 = load i32, ptr %avail_in1025, align 8
  %cmp1026 = icmp eq i32 %799, 0
  br i1 %cmp1026, label %if.then1028, label %if.end1029

if.then1028:                                      ; preds = %if.end1023
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1029:                                       ; preds = %if.end1023
  %800 = load ptr, ptr %s.addr, align 8
  %bsBuff1030 = getelementptr inbounds nuw %struct.DState, ptr %800, i32 0, i32 7
  %801 = load i32, ptr %bsBuff1030, align 8
  %shl1031 = shl i32 %801, 8
  %802 = load ptr, ptr %s.addr, align 8
  %strm1032 = getelementptr inbounds nuw %struct.DState, ptr %802, i32 0, i32 0
  %803 = load ptr, ptr %strm1032, align 8
  %next_in1033 = getelementptr inbounds nuw %struct.bz_stream, ptr %803, i32 0, i32 0
  %804 = load ptr, ptr %next_in1033, align 8
  %805 = load i8, ptr %804, align 1
  %conv1034 = zext i8 %805 to i32
  %or1035 = or i32 %shl1031, %conv1034
  %806 = load ptr, ptr %s.addr, align 8
  %bsBuff1036 = getelementptr inbounds nuw %struct.DState, ptr %806, i32 0, i32 7
  store i32 %or1035, ptr %bsBuff1036, align 8
  %807 = load ptr, ptr %s.addr, align 8
  %bsLive1037 = getelementptr inbounds nuw %struct.DState, ptr %807, i32 0, i32 8
  %808 = load i32, ptr %bsLive1037, align 4
  %add1038 = add nsw i32 %808, 8
  store i32 %add1038, ptr %bsLive1037, align 4
  %809 = load ptr, ptr %s.addr, align 8
  %strm1039 = getelementptr inbounds nuw %struct.DState, ptr %809, i32 0, i32 0
  %810 = load ptr, ptr %strm1039, align 8
  %next_in1040 = getelementptr inbounds nuw %struct.bz_stream, ptr %810, i32 0, i32 0
  %811 = load ptr, ptr %next_in1040, align 8
  %incdec.ptr1041 = getelementptr inbounds nuw i8, ptr %811, i32 1
  store ptr %incdec.ptr1041, ptr %next_in1040, align 8
  %812 = load ptr, ptr %s.addr, align 8
  %strm1042 = getelementptr inbounds nuw %struct.DState, ptr %812, i32 0, i32 0
  %813 = load ptr, ptr %strm1042, align 8
  %avail_in1043 = getelementptr inbounds nuw %struct.bz_stream, ptr %813, i32 0, i32 1
  %814 = load i32, ptr %avail_in1043, align 8
  %dec1044 = add i32 %814, -1
  store i32 %dec1044, ptr %avail_in1043, align 8
  %815 = load ptr, ptr %s.addr, align 8
  %strm1045 = getelementptr inbounds nuw %struct.DState, ptr %815, i32 0, i32 0
  %816 = load ptr, ptr %strm1045, align 8
  %total_in_lo321046 = getelementptr inbounds nuw %struct.bz_stream, ptr %816, i32 0, i32 2
  %817 = load i32, ptr %total_in_lo321046, align 4
  %inc1047 = add i32 %817, 1
  store i32 %inc1047, ptr %total_in_lo321046, align 4
  %818 = load ptr, ptr %s.addr, align 8
  %strm1048 = getelementptr inbounds nuw %struct.DState, ptr %818, i32 0, i32 0
  %819 = load ptr, ptr %strm1048, align 8
  %total_in_lo321049 = getelementptr inbounds nuw %struct.bz_stream, ptr %819, i32 0, i32 2
  %820 = load i32, ptr %total_in_lo321049, align 4
  %cmp1050 = icmp eq i32 %820, 0
  br i1 %cmp1050, label %if.then1052, label %if.end1056

if.then1052:                                      ; preds = %if.end1029
  %821 = load ptr, ptr %s.addr, align 8
  %strm1053 = getelementptr inbounds nuw %struct.DState, ptr %821, i32 0, i32 0
  %822 = load ptr, ptr %strm1053, align 8
  %total_in_hi321054 = getelementptr inbounds nuw %struct.bz_stream, ptr %822, i32 0, i32 3
  %823 = load i32, ptr %total_in_hi321054, align 8
  %inc1055 = add i32 %823, 1
  store i32 %inc1055, ptr %total_in_hi321054, align 8
  br label %if.end1056

if.end1056:                                       ; preds = %if.then1052, %if.end1029
  br label %while.body1009

while.end1057:                                    ; preds = %if.then1013
  %824 = load ptr, ptr %s.addr, align 8
  %origPtr1058 = getelementptr inbounds nuw %struct.DState, ptr %824, i32 0, i32 13
  %825 = load i32, ptr %origPtr1058, align 8
  %shl1059 = shl i32 %825, 8
  %826 = load i8, ptr %uc, align 1
  %conv1060 = zext i8 %826 to i32
  %or1061 = or i32 %shl1059, %conv1060
  %827 = load ptr, ptr %s.addr, align 8
  %origPtr1062 = getelementptr inbounds nuw %struct.DState, ptr %827, i32 0, i32 13
  store i32 %or1061, ptr %origPtr1062, align 8
  %828 = load ptr, ptr %s.addr, align 8
  %origPtr1063 = getelementptr inbounds nuw %struct.DState, ptr %828, i32 0, i32 13
  %829 = load i32, ptr %origPtr1063, align 8
  %cmp1064 = icmp slt i32 %829, 0
  br i1 %cmp1064, label %if.then1066, label %if.end1067

if.then1066:                                      ; preds = %while.end1057
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1067:                                       ; preds = %while.end1057
  %830 = load ptr, ptr %s.addr, align 8
  %origPtr1068 = getelementptr inbounds nuw %struct.DState, ptr %830, i32 0, i32 13
  %831 = load i32, ptr %origPtr1068, align 8
  %832 = load ptr, ptr %s.addr, align 8
  %blockSize100k1069 = getelementptr inbounds nuw %struct.DState, ptr %832, i32 0, i32 9
  %833 = load i32, ptr %blockSize100k1069, align 8
  %mul1070 = mul nsw i32 100000, %833
  %add1071 = add nsw i32 10, %mul1070
  %cmp1072 = icmp sgt i32 %831, %add1071
  br i1 %cmp1072, label %if.then1074, label %if.end1075

if.then1074:                                      ; preds = %if.end1067
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1075:                                       ; preds = %if.end1067
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end1075
  %834 = load i32, ptr %i, align 4
  %cmp1076 = icmp slt i32 %834, 16
  br i1 %cmp1076, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %sw.bb1078

sw.bb1078:                                        ; preds = %for.body, %if.end
  %835 = load ptr, ptr %s.addr, align 8
  %state1079 = getelementptr inbounds nuw %struct.DState, ptr %835, i32 0, i32 1
  store i32 28, ptr %state1079, align 8
  br label %while.body1080

while.body1080:                                   ; preds = %if.end1127, %sw.bb1078
  %836 = load ptr, ptr %s.addr, align 8
  %bsLive1081 = getelementptr inbounds nuw %struct.DState, ptr %836, i32 0, i32 8
  %837 = load i32, ptr %bsLive1081, align 4
  %cmp1082 = icmp sge i32 %837, 1
  br i1 %cmp1082, label %if.then1084, label %if.end1094

if.then1084:                                      ; preds = %while.body1080
  %838 = load ptr, ptr %s.addr, align 8
  %bsBuff1086 = getelementptr inbounds nuw %struct.DState, ptr %838, i32 0, i32 7
  %839 = load i32, ptr %bsBuff1086, align 8
  %840 = load ptr, ptr %s.addr, align 8
  %bsLive1087 = getelementptr inbounds nuw %struct.DState, ptr %840, i32 0, i32 8
  %841 = load i32, ptr %bsLive1087, align 4
  %sub1088 = sub nsw i32 %841, 1
  %shr1089 = lshr i32 %839, %sub1088
  %and1090 = and i32 %shr1089, 1
  store i32 %and1090, ptr %v1085, align 4
  %842 = load ptr, ptr %s.addr, align 8
  %bsLive1091 = getelementptr inbounds nuw %struct.DState, ptr %842, i32 0, i32 8
  %843 = load i32, ptr %bsLive1091, align 4
  %sub1092 = sub nsw i32 %843, 1
  store i32 %sub1092, ptr %bsLive1091, align 4
  %844 = load i32, ptr %v1085, align 4
  %conv1093 = trunc i32 %844 to i8
  store i8 %conv1093, ptr %uc, align 1
  br label %while.end1128

if.end1094:                                       ; preds = %while.body1080
  %845 = load ptr, ptr %s.addr, align 8
  %strm1095 = getelementptr inbounds nuw %struct.DState, ptr %845, i32 0, i32 0
  %846 = load ptr, ptr %strm1095, align 8
  %avail_in1096 = getelementptr inbounds nuw %struct.bz_stream, ptr %846, i32 0, i32 1
  %847 = load i32, ptr %avail_in1096, align 8
  %cmp1097 = icmp eq i32 %847, 0
  br i1 %cmp1097, label %if.then1099, label %if.end1100

if.then1099:                                      ; preds = %if.end1094
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1100:                                       ; preds = %if.end1094
  %848 = load ptr, ptr %s.addr, align 8
  %bsBuff1101 = getelementptr inbounds nuw %struct.DState, ptr %848, i32 0, i32 7
  %849 = load i32, ptr %bsBuff1101, align 8
  %shl1102 = shl i32 %849, 8
  %850 = load ptr, ptr %s.addr, align 8
  %strm1103 = getelementptr inbounds nuw %struct.DState, ptr %850, i32 0, i32 0
  %851 = load ptr, ptr %strm1103, align 8
  %next_in1104 = getelementptr inbounds nuw %struct.bz_stream, ptr %851, i32 0, i32 0
  %852 = load ptr, ptr %next_in1104, align 8
  %853 = load i8, ptr %852, align 1
  %conv1105 = zext i8 %853 to i32
  %or1106 = or i32 %shl1102, %conv1105
  %854 = load ptr, ptr %s.addr, align 8
  %bsBuff1107 = getelementptr inbounds nuw %struct.DState, ptr %854, i32 0, i32 7
  store i32 %or1106, ptr %bsBuff1107, align 8
  %855 = load ptr, ptr %s.addr, align 8
  %bsLive1108 = getelementptr inbounds nuw %struct.DState, ptr %855, i32 0, i32 8
  %856 = load i32, ptr %bsLive1108, align 4
  %add1109 = add nsw i32 %856, 8
  store i32 %add1109, ptr %bsLive1108, align 4
  %857 = load ptr, ptr %s.addr, align 8
  %strm1110 = getelementptr inbounds nuw %struct.DState, ptr %857, i32 0, i32 0
  %858 = load ptr, ptr %strm1110, align 8
  %next_in1111 = getelementptr inbounds nuw %struct.bz_stream, ptr %858, i32 0, i32 0
  %859 = load ptr, ptr %next_in1111, align 8
  %incdec.ptr1112 = getelementptr inbounds nuw i8, ptr %859, i32 1
  store ptr %incdec.ptr1112, ptr %next_in1111, align 8
  %860 = load ptr, ptr %s.addr, align 8
  %strm1113 = getelementptr inbounds nuw %struct.DState, ptr %860, i32 0, i32 0
  %861 = load ptr, ptr %strm1113, align 8
  %avail_in1114 = getelementptr inbounds nuw %struct.bz_stream, ptr %861, i32 0, i32 1
  %862 = load i32, ptr %avail_in1114, align 8
  %dec1115 = add i32 %862, -1
  store i32 %dec1115, ptr %avail_in1114, align 8
  %863 = load ptr, ptr %s.addr, align 8
  %strm1116 = getelementptr inbounds nuw %struct.DState, ptr %863, i32 0, i32 0
  %864 = load ptr, ptr %strm1116, align 8
  %total_in_lo321117 = getelementptr inbounds nuw %struct.bz_stream, ptr %864, i32 0, i32 2
  %865 = load i32, ptr %total_in_lo321117, align 4
  %inc1118 = add i32 %865, 1
  store i32 %inc1118, ptr %total_in_lo321117, align 4
  %866 = load ptr, ptr %s.addr, align 8
  %strm1119 = getelementptr inbounds nuw %struct.DState, ptr %866, i32 0, i32 0
  %867 = load ptr, ptr %strm1119, align 8
  %total_in_lo321120 = getelementptr inbounds nuw %struct.bz_stream, ptr %867, i32 0, i32 2
  %868 = load i32, ptr %total_in_lo321120, align 4
  %cmp1121 = icmp eq i32 %868, 0
  br i1 %cmp1121, label %if.then1123, label %if.end1127

if.then1123:                                      ; preds = %if.end1100
  %869 = load ptr, ptr %s.addr, align 8
  %strm1124 = getelementptr inbounds nuw %struct.DState, ptr %869, i32 0, i32 0
  %870 = load ptr, ptr %strm1124, align 8
  %total_in_hi321125 = getelementptr inbounds nuw %struct.bz_stream, ptr %870, i32 0, i32 3
  %871 = load i32, ptr %total_in_hi321125, align 8
  %inc1126 = add i32 %871, 1
  store i32 %inc1126, ptr %total_in_hi321125, align 8
  br label %if.end1127

if.end1127:                                       ; preds = %if.then1123, %if.end1100
  br label %while.body1080

while.end1128:                                    ; preds = %if.then1084
  %872 = load i8, ptr %uc, align 1
  %conv1129 = zext i8 %872 to i32
  %cmp1130 = icmp eq i32 %conv1129, 1
  br i1 %cmp1130, label %if.then1132, label %if.else1133

if.then1132:                                      ; preds = %while.end1128
  %873 = load ptr, ptr %s.addr, align 8
  %inUse16 = getelementptr inbounds nuw %struct.DState, ptr %873, i32 0, i32 29
  %874 = load i32, ptr %i, align 4
  %idxprom = sext i32 %874 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %inUse16, i64 0, i64 %idxprom
  store i8 1, ptr %arrayidx, align 1
  br label %if.end1137

if.else1133:                                      ; preds = %while.end1128
  %875 = load ptr, ptr %s.addr, align 8
  %inUse161134 = getelementptr inbounds nuw %struct.DState, ptr %875, i32 0, i32 29
  %876 = load i32, ptr %i, align 4
  %idxprom1135 = sext i32 %876 to i64
  %arrayidx1136 = getelementptr inbounds [16 x i8], ptr %inUse161134, i64 0, i64 %idxprom1135
  store i8 0, ptr %arrayidx1136, align 1
  br label %if.end1137

if.end1137:                                       ; preds = %if.else1133, %if.then1132
  br label %for.inc

for.inc:                                          ; preds = %if.end1137
  %877 = load i32, ptr %i, align 4
  %inc1138 = add nsw i32 %877, 1
  store i32 %inc1138, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1139

for.cond1139:                                     ; preds = %for.inc1145, %for.end
  %878 = load i32, ptr %i, align 4
  %cmp1140 = icmp slt i32 %878, 256
  br i1 %cmp1140, label %for.body1142, label %for.end1147

for.body1142:                                     ; preds = %for.cond1139
  %879 = load ptr, ptr %s.addr, align 8
  %inUse = getelementptr inbounds nuw %struct.DState, ptr %879, i32 0, i32 28
  %880 = load i32, ptr %i, align 4
  %idxprom1143 = sext i32 %880 to i64
  %arrayidx1144 = getelementptr inbounds [256 x i8], ptr %inUse, i64 0, i64 %idxprom1143
  store i8 0, ptr %arrayidx1144, align 1
  br label %for.inc1145

for.inc1145:                                      ; preds = %for.body1142
  %881 = load i32, ptr %i, align 4
  %inc1146 = add nsw i32 %881, 1
  store i32 %inc1146, ptr %i, align 4
  br label %for.cond1139, !llvm.loop !8

for.end1147:                                      ; preds = %for.cond1139
  store i32 0, ptr %i, align 4
  br label %for.cond1148

for.cond1148:                                     ; preds = %for.inc1226, %for.end1147
  %882 = load i32, ptr %i, align 4
  %cmp1149 = icmp slt i32 %882, 16
  br i1 %cmp1149, label %for.body1151, label %for.end1228

for.body1151:                                     ; preds = %for.cond1148
  %883 = load ptr, ptr %s.addr, align 8
  %inUse161152 = getelementptr inbounds nuw %struct.DState, ptr %883, i32 0, i32 29
  %884 = load i32, ptr %i, align 4
  %idxprom1153 = sext i32 %884 to i64
  %arrayidx1154 = getelementptr inbounds [16 x i8], ptr %inUse161152, i64 0, i64 %idxprom1153
  %885 = load i8, ptr %arrayidx1154, align 1
  %tobool1155 = icmp ne i8 %885, 0
  br i1 %tobool1155, label %if.then1156, label %if.end1225

if.then1156:                                      ; preds = %for.body1151
  store i32 0, ptr %j, align 4
  br label %for.cond1157

for.cond1157:                                     ; preds = %for.inc1222, %if.then1156
  %886 = load i32, ptr %j, align 4
  %cmp1158 = icmp slt i32 %886, 16
  br i1 %cmp1158, label %for.body1160, label %for.end1224

for.body1160:                                     ; preds = %for.cond1157
  br label %sw.bb1161

sw.bb1161:                                        ; preds = %for.body1160, %if.end
  %887 = load ptr, ptr %s.addr, align 8
  %state1162 = getelementptr inbounds nuw %struct.DState, ptr %887, i32 0, i32 1
  store i32 29, ptr %state1162, align 8
  br label %while.body1163

while.body1163:                                   ; preds = %if.end1210, %sw.bb1161
  %888 = load ptr, ptr %s.addr, align 8
  %bsLive1164 = getelementptr inbounds nuw %struct.DState, ptr %888, i32 0, i32 8
  %889 = load i32, ptr %bsLive1164, align 4
  %cmp1165 = icmp sge i32 %889, 1
  br i1 %cmp1165, label %if.then1167, label %if.end1177

if.then1167:                                      ; preds = %while.body1163
  %890 = load ptr, ptr %s.addr, align 8
  %bsBuff1169 = getelementptr inbounds nuw %struct.DState, ptr %890, i32 0, i32 7
  %891 = load i32, ptr %bsBuff1169, align 8
  %892 = load ptr, ptr %s.addr, align 8
  %bsLive1170 = getelementptr inbounds nuw %struct.DState, ptr %892, i32 0, i32 8
  %893 = load i32, ptr %bsLive1170, align 4
  %sub1171 = sub nsw i32 %893, 1
  %shr1172 = lshr i32 %891, %sub1171
  %and1173 = and i32 %shr1172, 1
  store i32 %and1173, ptr %v1168, align 4
  %894 = load ptr, ptr %s.addr, align 8
  %bsLive1174 = getelementptr inbounds nuw %struct.DState, ptr %894, i32 0, i32 8
  %895 = load i32, ptr %bsLive1174, align 4
  %sub1175 = sub nsw i32 %895, 1
  store i32 %sub1175, ptr %bsLive1174, align 4
  %896 = load i32, ptr %v1168, align 4
  %conv1176 = trunc i32 %896 to i8
  store i8 %conv1176, ptr %uc, align 1
  br label %while.end1211

if.end1177:                                       ; preds = %while.body1163
  %897 = load ptr, ptr %s.addr, align 8
  %strm1178 = getelementptr inbounds nuw %struct.DState, ptr %897, i32 0, i32 0
  %898 = load ptr, ptr %strm1178, align 8
  %avail_in1179 = getelementptr inbounds nuw %struct.bz_stream, ptr %898, i32 0, i32 1
  %899 = load i32, ptr %avail_in1179, align 8
  %cmp1180 = icmp eq i32 %899, 0
  br i1 %cmp1180, label %if.then1182, label %if.end1183

if.then1182:                                      ; preds = %if.end1177
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1183:                                       ; preds = %if.end1177
  %900 = load ptr, ptr %s.addr, align 8
  %bsBuff1184 = getelementptr inbounds nuw %struct.DState, ptr %900, i32 0, i32 7
  %901 = load i32, ptr %bsBuff1184, align 8
  %shl1185 = shl i32 %901, 8
  %902 = load ptr, ptr %s.addr, align 8
  %strm1186 = getelementptr inbounds nuw %struct.DState, ptr %902, i32 0, i32 0
  %903 = load ptr, ptr %strm1186, align 8
  %next_in1187 = getelementptr inbounds nuw %struct.bz_stream, ptr %903, i32 0, i32 0
  %904 = load ptr, ptr %next_in1187, align 8
  %905 = load i8, ptr %904, align 1
  %conv1188 = zext i8 %905 to i32
  %or1189 = or i32 %shl1185, %conv1188
  %906 = load ptr, ptr %s.addr, align 8
  %bsBuff1190 = getelementptr inbounds nuw %struct.DState, ptr %906, i32 0, i32 7
  store i32 %or1189, ptr %bsBuff1190, align 8
  %907 = load ptr, ptr %s.addr, align 8
  %bsLive1191 = getelementptr inbounds nuw %struct.DState, ptr %907, i32 0, i32 8
  %908 = load i32, ptr %bsLive1191, align 4
  %add1192 = add nsw i32 %908, 8
  store i32 %add1192, ptr %bsLive1191, align 4
  %909 = load ptr, ptr %s.addr, align 8
  %strm1193 = getelementptr inbounds nuw %struct.DState, ptr %909, i32 0, i32 0
  %910 = load ptr, ptr %strm1193, align 8
  %next_in1194 = getelementptr inbounds nuw %struct.bz_stream, ptr %910, i32 0, i32 0
  %911 = load ptr, ptr %next_in1194, align 8
  %incdec.ptr1195 = getelementptr inbounds nuw i8, ptr %911, i32 1
  store ptr %incdec.ptr1195, ptr %next_in1194, align 8
  %912 = load ptr, ptr %s.addr, align 8
  %strm1196 = getelementptr inbounds nuw %struct.DState, ptr %912, i32 0, i32 0
  %913 = load ptr, ptr %strm1196, align 8
  %avail_in1197 = getelementptr inbounds nuw %struct.bz_stream, ptr %913, i32 0, i32 1
  %914 = load i32, ptr %avail_in1197, align 8
  %dec1198 = add i32 %914, -1
  store i32 %dec1198, ptr %avail_in1197, align 8
  %915 = load ptr, ptr %s.addr, align 8
  %strm1199 = getelementptr inbounds nuw %struct.DState, ptr %915, i32 0, i32 0
  %916 = load ptr, ptr %strm1199, align 8
  %total_in_lo321200 = getelementptr inbounds nuw %struct.bz_stream, ptr %916, i32 0, i32 2
  %917 = load i32, ptr %total_in_lo321200, align 4
  %inc1201 = add i32 %917, 1
  store i32 %inc1201, ptr %total_in_lo321200, align 4
  %918 = load ptr, ptr %s.addr, align 8
  %strm1202 = getelementptr inbounds nuw %struct.DState, ptr %918, i32 0, i32 0
  %919 = load ptr, ptr %strm1202, align 8
  %total_in_lo321203 = getelementptr inbounds nuw %struct.bz_stream, ptr %919, i32 0, i32 2
  %920 = load i32, ptr %total_in_lo321203, align 4
  %cmp1204 = icmp eq i32 %920, 0
  br i1 %cmp1204, label %if.then1206, label %if.end1210

if.then1206:                                      ; preds = %if.end1183
  %921 = load ptr, ptr %s.addr, align 8
  %strm1207 = getelementptr inbounds nuw %struct.DState, ptr %921, i32 0, i32 0
  %922 = load ptr, ptr %strm1207, align 8
  %total_in_hi321208 = getelementptr inbounds nuw %struct.bz_stream, ptr %922, i32 0, i32 3
  %923 = load i32, ptr %total_in_hi321208, align 8
  %inc1209 = add i32 %923, 1
  store i32 %inc1209, ptr %total_in_hi321208, align 8
  br label %if.end1210

if.end1210:                                       ; preds = %if.then1206, %if.end1183
  br label %while.body1163

while.end1211:                                    ; preds = %if.then1167
  %924 = load i8, ptr %uc, align 1
  %conv1212 = zext i8 %924 to i32
  %cmp1213 = icmp eq i32 %conv1212, 1
  br i1 %cmp1213, label %if.then1215, label %if.end1221

if.then1215:                                      ; preds = %while.end1211
  %925 = load ptr, ptr %s.addr, align 8
  %inUse1216 = getelementptr inbounds nuw %struct.DState, ptr %925, i32 0, i32 28
  %926 = load i32, ptr %i, align 4
  %mul1217 = mul nsw i32 %926, 16
  %927 = load i32, ptr %j, align 4
  %add1218 = add nsw i32 %mul1217, %927
  %idxprom1219 = sext i32 %add1218 to i64
  %arrayidx1220 = getelementptr inbounds [256 x i8], ptr %inUse1216, i64 0, i64 %idxprom1219
  store i8 1, ptr %arrayidx1220, align 1
  br label %if.end1221

if.end1221:                                       ; preds = %if.then1215, %while.end1211
  br label %for.inc1222

for.inc1222:                                      ; preds = %if.end1221
  %928 = load i32, ptr %j, align 4
  %inc1223 = add nsw i32 %928, 1
  store i32 %inc1223, ptr %j, align 4
  br label %for.cond1157, !llvm.loop !9

for.end1224:                                      ; preds = %for.cond1157
  br label %if.end1225

if.end1225:                                       ; preds = %for.end1224, %for.body1151
  br label %for.inc1226

for.inc1226:                                      ; preds = %if.end1225
  %929 = load i32, ptr %i, align 4
  %inc1227 = add nsw i32 %929, 1
  store i32 %inc1227, ptr %i, align 4
  br label %for.cond1148, !llvm.loop !10

for.end1228:                                      ; preds = %for.cond1148
  %930 = load ptr, ptr %s.addr, align 8
  call void @makeMaps_d(ptr noundef %930)
  %931 = load ptr, ptr %s.addr, align 8
  %nInUse = getelementptr inbounds nuw %struct.DState, ptr %931, i32 0, i32 27
  %932 = load i32, ptr %nInUse, align 8
  %cmp1229 = icmp eq i32 %932, 0
  br i1 %cmp1229, label %if.then1231, label %if.end1232

if.then1231:                                      ; preds = %for.end1228
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1232:                                       ; preds = %for.end1228
  %933 = load ptr, ptr %s.addr, align 8
  %nInUse1233 = getelementptr inbounds nuw %struct.DState, ptr %933, i32 0, i32 27
  %934 = load i32, ptr %nInUse1233, align 8
  %add1234 = add nsw i32 %934, 2
  store i32 %add1234, ptr %alphaSize, align 4
  br label %sw.bb1235

sw.bb1235:                                        ; preds = %if.end1232, %if.end
  %935 = load ptr, ptr %s.addr, align 8
  %state1236 = getelementptr inbounds nuw %struct.DState, ptr %935, i32 0, i32 1
  store i32 30, ptr %state1236, align 8
  br label %while.body1237

while.body1237:                                   ; preds = %if.end1283, %sw.bb1235
  %936 = load ptr, ptr %s.addr, align 8
  %bsLive1238 = getelementptr inbounds nuw %struct.DState, ptr %936, i32 0, i32 8
  %937 = load i32, ptr %bsLive1238, align 4
  %cmp1239 = icmp sge i32 %937, 3
  br i1 %cmp1239, label %if.then1241, label %if.end1250

if.then1241:                                      ; preds = %while.body1237
  %938 = load ptr, ptr %s.addr, align 8
  %bsBuff1243 = getelementptr inbounds nuw %struct.DState, ptr %938, i32 0, i32 7
  %939 = load i32, ptr %bsBuff1243, align 8
  %940 = load ptr, ptr %s.addr, align 8
  %bsLive1244 = getelementptr inbounds nuw %struct.DState, ptr %940, i32 0, i32 8
  %941 = load i32, ptr %bsLive1244, align 4
  %sub1245 = sub nsw i32 %941, 3
  %shr1246 = lshr i32 %939, %sub1245
  %and1247 = and i32 %shr1246, 7
  store i32 %and1247, ptr %v1242, align 4
  %942 = load ptr, ptr %s.addr, align 8
  %bsLive1248 = getelementptr inbounds nuw %struct.DState, ptr %942, i32 0, i32 8
  %943 = load i32, ptr %bsLive1248, align 4
  %sub1249 = sub nsw i32 %943, 3
  store i32 %sub1249, ptr %bsLive1248, align 4
  %944 = load i32, ptr %v1242, align 4
  store i32 %944, ptr %nGroups, align 4
  br label %while.end1284

if.end1250:                                       ; preds = %while.body1237
  %945 = load ptr, ptr %s.addr, align 8
  %strm1251 = getelementptr inbounds nuw %struct.DState, ptr %945, i32 0, i32 0
  %946 = load ptr, ptr %strm1251, align 8
  %avail_in1252 = getelementptr inbounds nuw %struct.bz_stream, ptr %946, i32 0, i32 1
  %947 = load i32, ptr %avail_in1252, align 8
  %cmp1253 = icmp eq i32 %947, 0
  br i1 %cmp1253, label %if.then1255, label %if.end1256

if.then1255:                                      ; preds = %if.end1250
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1256:                                       ; preds = %if.end1250
  %948 = load ptr, ptr %s.addr, align 8
  %bsBuff1257 = getelementptr inbounds nuw %struct.DState, ptr %948, i32 0, i32 7
  %949 = load i32, ptr %bsBuff1257, align 8
  %shl1258 = shl i32 %949, 8
  %950 = load ptr, ptr %s.addr, align 8
  %strm1259 = getelementptr inbounds nuw %struct.DState, ptr %950, i32 0, i32 0
  %951 = load ptr, ptr %strm1259, align 8
  %next_in1260 = getelementptr inbounds nuw %struct.bz_stream, ptr %951, i32 0, i32 0
  %952 = load ptr, ptr %next_in1260, align 8
  %953 = load i8, ptr %952, align 1
  %conv1261 = zext i8 %953 to i32
  %or1262 = or i32 %shl1258, %conv1261
  %954 = load ptr, ptr %s.addr, align 8
  %bsBuff1263 = getelementptr inbounds nuw %struct.DState, ptr %954, i32 0, i32 7
  store i32 %or1262, ptr %bsBuff1263, align 8
  %955 = load ptr, ptr %s.addr, align 8
  %bsLive1264 = getelementptr inbounds nuw %struct.DState, ptr %955, i32 0, i32 8
  %956 = load i32, ptr %bsLive1264, align 4
  %add1265 = add nsw i32 %956, 8
  store i32 %add1265, ptr %bsLive1264, align 4
  %957 = load ptr, ptr %s.addr, align 8
  %strm1266 = getelementptr inbounds nuw %struct.DState, ptr %957, i32 0, i32 0
  %958 = load ptr, ptr %strm1266, align 8
  %next_in1267 = getelementptr inbounds nuw %struct.bz_stream, ptr %958, i32 0, i32 0
  %959 = load ptr, ptr %next_in1267, align 8
  %incdec.ptr1268 = getelementptr inbounds nuw i8, ptr %959, i32 1
  store ptr %incdec.ptr1268, ptr %next_in1267, align 8
  %960 = load ptr, ptr %s.addr, align 8
  %strm1269 = getelementptr inbounds nuw %struct.DState, ptr %960, i32 0, i32 0
  %961 = load ptr, ptr %strm1269, align 8
  %avail_in1270 = getelementptr inbounds nuw %struct.bz_stream, ptr %961, i32 0, i32 1
  %962 = load i32, ptr %avail_in1270, align 8
  %dec1271 = add i32 %962, -1
  store i32 %dec1271, ptr %avail_in1270, align 8
  %963 = load ptr, ptr %s.addr, align 8
  %strm1272 = getelementptr inbounds nuw %struct.DState, ptr %963, i32 0, i32 0
  %964 = load ptr, ptr %strm1272, align 8
  %total_in_lo321273 = getelementptr inbounds nuw %struct.bz_stream, ptr %964, i32 0, i32 2
  %965 = load i32, ptr %total_in_lo321273, align 4
  %inc1274 = add i32 %965, 1
  store i32 %inc1274, ptr %total_in_lo321273, align 4
  %966 = load ptr, ptr %s.addr, align 8
  %strm1275 = getelementptr inbounds nuw %struct.DState, ptr %966, i32 0, i32 0
  %967 = load ptr, ptr %strm1275, align 8
  %total_in_lo321276 = getelementptr inbounds nuw %struct.bz_stream, ptr %967, i32 0, i32 2
  %968 = load i32, ptr %total_in_lo321276, align 4
  %cmp1277 = icmp eq i32 %968, 0
  br i1 %cmp1277, label %if.then1279, label %if.end1283

if.then1279:                                      ; preds = %if.end1256
  %969 = load ptr, ptr %s.addr, align 8
  %strm1280 = getelementptr inbounds nuw %struct.DState, ptr %969, i32 0, i32 0
  %970 = load ptr, ptr %strm1280, align 8
  %total_in_hi321281 = getelementptr inbounds nuw %struct.bz_stream, ptr %970, i32 0, i32 3
  %971 = load i32, ptr %total_in_hi321281, align 8
  %inc1282 = add i32 %971, 1
  store i32 %inc1282, ptr %total_in_hi321281, align 8
  br label %if.end1283

if.end1283:                                       ; preds = %if.then1279, %if.end1256
  br label %while.body1237

while.end1284:                                    ; preds = %if.then1241
  %972 = load i32, ptr %nGroups, align 4
  %cmp1285 = icmp slt i32 %972, 2
  br i1 %cmp1285, label %if.then1290, label %lor.lhs.false1287

lor.lhs.false1287:                                ; preds = %while.end1284
  %973 = load i32, ptr %nGroups, align 4
  %cmp1288 = icmp sgt i32 %973, 6
  br i1 %cmp1288, label %if.then1290, label %if.end1291

if.then1290:                                      ; preds = %lor.lhs.false1287, %while.end1284
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1291:                                       ; preds = %lor.lhs.false1287
  br label %sw.bb1292

sw.bb1292:                                        ; preds = %if.end1291, %if.end
  %974 = load ptr, ptr %s.addr, align 8
  %state1293 = getelementptr inbounds nuw %struct.DState, ptr %974, i32 0, i32 1
  store i32 31, ptr %state1293, align 8
  br label %while.body1294

while.body1294:                                   ; preds = %if.end1340, %sw.bb1292
  %975 = load ptr, ptr %s.addr, align 8
  %bsLive1295 = getelementptr inbounds nuw %struct.DState, ptr %975, i32 0, i32 8
  %976 = load i32, ptr %bsLive1295, align 4
  %cmp1296 = icmp sge i32 %976, 15
  br i1 %cmp1296, label %if.then1298, label %if.end1307

if.then1298:                                      ; preds = %while.body1294
  %977 = load ptr, ptr %s.addr, align 8
  %bsBuff1300 = getelementptr inbounds nuw %struct.DState, ptr %977, i32 0, i32 7
  %978 = load i32, ptr %bsBuff1300, align 8
  %979 = load ptr, ptr %s.addr, align 8
  %bsLive1301 = getelementptr inbounds nuw %struct.DState, ptr %979, i32 0, i32 8
  %980 = load i32, ptr %bsLive1301, align 4
  %sub1302 = sub nsw i32 %980, 15
  %shr1303 = lshr i32 %978, %sub1302
  %and1304 = and i32 %shr1303, 32767
  store i32 %and1304, ptr %v1299, align 4
  %981 = load ptr, ptr %s.addr, align 8
  %bsLive1305 = getelementptr inbounds nuw %struct.DState, ptr %981, i32 0, i32 8
  %982 = load i32, ptr %bsLive1305, align 4
  %sub1306 = sub nsw i32 %982, 15
  store i32 %sub1306, ptr %bsLive1305, align 4
  %983 = load i32, ptr %v1299, align 4
  store i32 %983, ptr %nSelectors, align 4
  br label %while.end1341

if.end1307:                                       ; preds = %while.body1294
  %984 = load ptr, ptr %s.addr, align 8
  %strm1308 = getelementptr inbounds nuw %struct.DState, ptr %984, i32 0, i32 0
  %985 = load ptr, ptr %strm1308, align 8
  %avail_in1309 = getelementptr inbounds nuw %struct.bz_stream, ptr %985, i32 0, i32 1
  %986 = load i32, ptr %avail_in1309, align 8
  %cmp1310 = icmp eq i32 %986, 0
  br i1 %cmp1310, label %if.then1312, label %if.end1313

if.then1312:                                      ; preds = %if.end1307
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1313:                                       ; preds = %if.end1307
  %987 = load ptr, ptr %s.addr, align 8
  %bsBuff1314 = getelementptr inbounds nuw %struct.DState, ptr %987, i32 0, i32 7
  %988 = load i32, ptr %bsBuff1314, align 8
  %shl1315 = shl i32 %988, 8
  %989 = load ptr, ptr %s.addr, align 8
  %strm1316 = getelementptr inbounds nuw %struct.DState, ptr %989, i32 0, i32 0
  %990 = load ptr, ptr %strm1316, align 8
  %next_in1317 = getelementptr inbounds nuw %struct.bz_stream, ptr %990, i32 0, i32 0
  %991 = load ptr, ptr %next_in1317, align 8
  %992 = load i8, ptr %991, align 1
  %conv1318 = zext i8 %992 to i32
  %or1319 = or i32 %shl1315, %conv1318
  %993 = load ptr, ptr %s.addr, align 8
  %bsBuff1320 = getelementptr inbounds nuw %struct.DState, ptr %993, i32 0, i32 7
  store i32 %or1319, ptr %bsBuff1320, align 8
  %994 = load ptr, ptr %s.addr, align 8
  %bsLive1321 = getelementptr inbounds nuw %struct.DState, ptr %994, i32 0, i32 8
  %995 = load i32, ptr %bsLive1321, align 4
  %add1322 = add nsw i32 %995, 8
  store i32 %add1322, ptr %bsLive1321, align 4
  %996 = load ptr, ptr %s.addr, align 8
  %strm1323 = getelementptr inbounds nuw %struct.DState, ptr %996, i32 0, i32 0
  %997 = load ptr, ptr %strm1323, align 8
  %next_in1324 = getelementptr inbounds nuw %struct.bz_stream, ptr %997, i32 0, i32 0
  %998 = load ptr, ptr %next_in1324, align 8
  %incdec.ptr1325 = getelementptr inbounds nuw i8, ptr %998, i32 1
  store ptr %incdec.ptr1325, ptr %next_in1324, align 8
  %999 = load ptr, ptr %s.addr, align 8
  %strm1326 = getelementptr inbounds nuw %struct.DState, ptr %999, i32 0, i32 0
  %1000 = load ptr, ptr %strm1326, align 8
  %avail_in1327 = getelementptr inbounds nuw %struct.bz_stream, ptr %1000, i32 0, i32 1
  %1001 = load i32, ptr %avail_in1327, align 8
  %dec1328 = add i32 %1001, -1
  store i32 %dec1328, ptr %avail_in1327, align 8
  %1002 = load ptr, ptr %s.addr, align 8
  %strm1329 = getelementptr inbounds nuw %struct.DState, ptr %1002, i32 0, i32 0
  %1003 = load ptr, ptr %strm1329, align 8
  %total_in_lo321330 = getelementptr inbounds nuw %struct.bz_stream, ptr %1003, i32 0, i32 2
  %1004 = load i32, ptr %total_in_lo321330, align 4
  %inc1331 = add i32 %1004, 1
  store i32 %inc1331, ptr %total_in_lo321330, align 4
  %1005 = load ptr, ptr %s.addr, align 8
  %strm1332 = getelementptr inbounds nuw %struct.DState, ptr %1005, i32 0, i32 0
  %1006 = load ptr, ptr %strm1332, align 8
  %total_in_lo321333 = getelementptr inbounds nuw %struct.bz_stream, ptr %1006, i32 0, i32 2
  %1007 = load i32, ptr %total_in_lo321333, align 4
  %cmp1334 = icmp eq i32 %1007, 0
  br i1 %cmp1334, label %if.then1336, label %if.end1340

if.then1336:                                      ; preds = %if.end1313
  %1008 = load ptr, ptr %s.addr, align 8
  %strm1337 = getelementptr inbounds nuw %struct.DState, ptr %1008, i32 0, i32 0
  %1009 = load ptr, ptr %strm1337, align 8
  %total_in_hi321338 = getelementptr inbounds nuw %struct.bz_stream, ptr %1009, i32 0, i32 3
  %1010 = load i32, ptr %total_in_hi321338, align 8
  %inc1339 = add i32 %1010, 1
  store i32 %inc1339, ptr %total_in_hi321338, align 8
  br label %if.end1340

if.end1340:                                       ; preds = %if.then1336, %if.end1313
  br label %while.body1294

while.end1341:                                    ; preds = %if.then1298
  %1011 = load i32, ptr %nSelectors, align 4
  %cmp1342 = icmp slt i32 %1011, 1
  br i1 %cmp1342, label %if.then1344, label %if.end1345

if.then1344:                                      ; preds = %while.end1341
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1345:                                       ; preds = %while.end1341
  store i32 0, ptr %i, align 4
  br label %for.cond1346

for.cond1346:                                     ; preds = %for.inc1417, %if.end1345
  %1012 = load i32, ptr %i, align 4
  %1013 = load i32, ptr %nSelectors, align 4
  %cmp1347 = icmp slt i32 %1012, %1013
  br i1 %cmp1347, label %for.body1349, label %for.end1419

for.body1349:                                     ; preds = %for.cond1346
  store i32 0, ptr %j, align 4
  br label %while.body1350

while.body1350:                                   ; preds = %if.end1412, %for.body1349
  br label %sw.bb1351

sw.bb1351:                                        ; preds = %while.body1350, %if.end
  %1014 = load ptr, ptr %s.addr, align 8
  %state1352 = getelementptr inbounds nuw %struct.DState, ptr %1014, i32 0, i32 1
  store i32 32, ptr %state1352, align 8
  br label %while.body1354

while.body1354:                                   ; preds = %if.end1401, %sw.bb1351
  %1015 = load ptr, ptr %s.addr, align 8
  %bsLive1355 = getelementptr inbounds nuw %struct.DState, ptr %1015, i32 0, i32 8
  %1016 = load i32, ptr %bsLive1355, align 4
  %cmp1356 = icmp sge i32 %1016, 1
  br i1 %cmp1356, label %if.then1358, label %if.end1368

if.then1358:                                      ; preds = %while.body1354
  %1017 = load ptr, ptr %s.addr, align 8
  %bsBuff1360 = getelementptr inbounds nuw %struct.DState, ptr %1017, i32 0, i32 7
  %1018 = load i32, ptr %bsBuff1360, align 8
  %1019 = load ptr, ptr %s.addr, align 8
  %bsLive1361 = getelementptr inbounds nuw %struct.DState, ptr %1019, i32 0, i32 8
  %1020 = load i32, ptr %bsLive1361, align 4
  %sub1362 = sub nsw i32 %1020, 1
  %shr1363 = lshr i32 %1018, %sub1362
  %and1364 = and i32 %shr1363, 1
  store i32 %and1364, ptr %v1359, align 4
  %1021 = load ptr, ptr %s.addr, align 8
  %bsLive1365 = getelementptr inbounds nuw %struct.DState, ptr %1021, i32 0, i32 8
  %1022 = load i32, ptr %bsLive1365, align 4
  %sub1366 = sub nsw i32 %1022, 1
  store i32 %sub1366, ptr %bsLive1365, align 4
  %1023 = load i32, ptr %v1359, align 4
  %conv1367 = trunc i32 %1023 to i8
  store i8 %conv1367, ptr %uc, align 1
  br label %while.end1402

if.end1368:                                       ; preds = %while.body1354
  %1024 = load ptr, ptr %s.addr, align 8
  %strm1369 = getelementptr inbounds nuw %struct.DState, ptr %1024, i32 0, i32 0
  %1025 = load ptr, ptr %strm1369, align 8
  %avail_in1370 = getelementptr inbounds nuw %struct.bz_stream, ptr %1025, i32 0, i32 1
  %1026 = load i32, ptr %avail_in1370, align 8
  %cmp1371 = icmp eq i32 %1026, 0
  br i1 %cmp1371, label %if.then1373, label %if.end1374

if.then1373:                                      ; preds = %if.end1368
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1374:                                       ; preds = %if.end1368
  %1027 = load ptr, ptr %s.addr, align 8
  %bsBuff1375 = getelementptr inbounds nuw %struct.DState, ptr %1027, i32 0, i32 7
  %1028 = load i32, ptr %bsBuff1375, align 8
  %shl1376 = shl i32 %1028, 8
  %1029 = load ptr, ptr %s.addr, align 8
  %strm1377 = getelementptr inbounds nuw %struct.DState, ptr %1029, i32 0, i32 0
  %1030 = load ptr, ptr %strm1377, align 8
  %next_in1378 = getelementptr inbounds nuw %struct.bz_stream, ptr %1030, i32 0, i32 0
  %1031 = load ptr, ptr %next_in1378, align 8
  %1032 = load i8, ptr %1031, align 1
  %conv1379 = zext i8 %1032 to i32
  %or1380 = or i32 %shl1376, %conv1379
  %1033 = load ptr, ptr %s.addr, align 8
  %bsBuff1381 = getelementptr inbounds nuw %struct.DState, ptr %1033, i32 0, i32 7
  store i32 %or1380, ptr %bsBuff1381, align 8
  %1034 = load ptr, ptr %s.addr, align 8
  %bsLive1382 = getelementptr inbounds nuw %struct.DState, ptr %1034, i32 0, i32 8
  %1035 = load i32, ptr %bsLive1382, align 4
  %add1383 = add nsw i32 %1035, 8
  store i32 %add1383, ptr %bsLive1382, align 4
  %1036 = load ptr, ptr %s.addr, align 8
  %strm1384 = getelementptr inbounds nuw %struct.DState, ptr %1036, i32 0, i32 0
  %1037 = load ptr, ptr %strm1384, align 8
  %next_in1385 = getelementptr inbounds nuw %struct.bz_stream, ptr %1037, i32 0, i32 0
  %1038 = load ptr, ptr %next_in1385, align 8
  %incdec.ptr1386 = getelementptr inbounds nuw i8, ptr %1038, i32 1
  store ptr %incdec.ptr1386, ptr %next_in1385, align 8
  %1039 = load ptr, ptr %s.addr, align 8
  %strm1387 = getelementptr inbounds nuw %struct.DState, ptr %1039, i32 0, i32 0
  %1040 = load ptr, ptr %strm1387, align 8
  %avail_in1388 = getelementptr inbounds nuw %struct.bz_stream, ptr %1040, i32 0, i32 1
  %1041 = load i32, ptr %avail_in1388, align 8
  %dec1389 = add i32 %1041, -1
  store i32 %dec1389, ptr %avail_in1388, align 8
  %1042 = load ptr, ptr %s.addr, align 8
  %strm1390 = getelementptr inbounds nuw %struct.DState, ptr %1042, i32 0, i32 0
  %1043 = load ptr, ptr %strm1390, align 8
  %total_in_lo321391 = getelementptr inbounds nuw %struct.bz_stream, ptr %1043, i32 0, i32 2
  %1044 = load i32, ptr %total_in_lo321391, align 4
  %inc1392 = add i32 %1044, 1
  store i32 %inc1392, ptr %total_in_lo321391, align 4
  %1045 = load ptr, ptr %s.addr, align 8
  %strm1393 = getelementptr inbounds nuw %struct.DState, ptr %1045, i32 0, i32 0
  %1046 = load ptr, ptr %strm1393, align 8
  %total_in_lo321394 = getelementptr inbounds nuw %struct.bz_stream, ptr %1046, i32 0, i32 2
  %1047 = load i32, ptr %total_in_lo321394, align 4
  %cmp1395 = icmp eq i32 %1047, 0
  br i1 %cmp1395, label %if.then1397, label %if.end1401

if.then1397:                                      ; preds = %if.end1374
  %1048 = load ptr, ptr %s.addr, align 8
  %strm1398 = getelementptr inbounds nuw %struct.DState, ptr %1048, i32 0, i32 0
  %1049 = load ptr, ptr %strm1398, align 8
  %total_in_hi321399 = getelementptr inbounds nuw %struct.bz_stream, ptr %1049, i32 0, i32 3
  %1050 = load i32, ptr %total_in_hi321399, align 8
  %inc1400 = add i32 %1050, 1
  store i32 %inc1400, ptr %total_in_hi321399, align 8
  br label %if.end1401

if.end1401:                                       ; preds = %if.then1397, %if.end1374
  br label %while.body1354

while.end1402:                                    ; preds = %if.then1358
  %1051 = load i8, ptr %uc, align 1
  %conv1403 = zext i8 %1051 to i32
  %cmp1404 = icmp eq i32 %conv1403, 0
  br i1 %cmp1404, label %if.then1406, label %if.end1407

if.then1406:                                      ; preds = %while.end1402
  br label %while.end1413

if.end1407:                                       ; preds = %while.end1402
  %1052 = load i32, ptr %j, align 4
  %inc1408 = add nsw i32 %1052, 1
  store i32 %inc1408, ptr %j, align 4
  %1053 = load i32, ptr %j, align 4
  %1054 = load i32, ptr %nGroups, align 4
  %cmp1409 = icmp sge i32 %1053, %1054
  br i1 %cmp1409, label %if.then1411, label %if.end1412

if.then1411:                                      ; preds = %if.end1407
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1412:                                       ; preds = %if.end1407
  br label %while.body1350

while.end1413:                                    ; preds = %if.then1406
  %1055 = load i32, ptr %j, align 4
  %conv1414 = trunc i32 %1055 to i8
  %1056 = load ptr, ptr %s.addr, align 8
  %selectorMtf = getelementptr inbounds nuw %struct.DState, ptr %1056, i32 0, i32 34
  %1057 = load i32, ptr %i, align 4
  %idxprom1415 = sext i32 %1057 to i64
  %arrayidx1416 = getelementptr inbounds [18002 x i8], ptr %selectorMtf, i64 0, i64 %idxprom1415
  store i8 %conv1414, ptr %arrayidx1416, align 1
  br label %for.inc1417

for.inc1417:                                      ; preds = %while.end1413
  %1058 = load i32, ptr %i, align 4
  %inc1418 = add nsw i32 %1058, 1
  store i32 %inc1418, ptr %i, align 4
  br label %for.cond1346, !llvm.loop !11

for.end1419:                                      ; preds = %for.cond1346
  store i8 0, ptr %v1420, align 1
  br label %for.cond1421

for.cond1421:                                     ; preds = %for.inc1428, %for.end1419
  %1059 = load i8, ptr %v1420, align 1
  %conv1422 = zext i8 %1059 to i32
  %1060 = load i32, ptr %nGroups, align 4
  %cmp1423 = icmp slt i32 %conv1422, %1060
  br i1 %cmp1423, label %for.body1425, label %for.end1430

for.body1425:                                     ; preds = %for.cond1421
  %1061 = load i8, ptr %v1420, align 1
  %1062 = load i8, ptr %v1420, align 1
  %idxprom1426 = zext i8 %1062 to i64
  %arrayidx1427 = getelementptr inbounds nuw [6 x i8], ptr %pos, i64 0, i64 %idxprom1426
  store i8 %1061, ptr %arrayidx1427, align 1
  br label %for.inc1428

for.inc1428:                                      ; preds = %for.body1425
  %1063 = load i8, ptr %v1420, align 1
  %inc1429 = add i8 %1063, 1
  store i8 %inc1429, ptr %v1420, align 1
  br label %for.cond1421, !llvm.loop !12

for.end1430:                                      ; preds = %for.cond1421
  store i32 0, ptr %i, align 4
  br label %for.cond1431

for.cond1431:                                     ; preds = %for.inc1455, %for.end1430
  %1064 = load i32, ptr %i, align 4
  %1065 = load i32, ptr %nSelectors, align 4
  %cmp1432 = icmp slt i32 %1064, %1065
  br i1 %cmp1432, label %for.body1434, label %for.end1457

for.body1434:                                     ; preds = %for.cond1431
  %1066 = load ptr, ptr %s.addr, align 8
  %selectorMtf1435 = getelementptr inbounds nuw %struct.DState, ptr %1066, i32 0, i32 34
  %1067 = load i32, ptr %i, align 4
  %idxprom1436 = sext i32 %1067 to i64
  %arrayidx1437 = getelementptr inbounds [18002 x i8], ptr %selectorMtf1435, i64 0, i64 %idxprom1436
  %1068 = load i8, ptr %arrayidx1437, align 1
  store i8 %1068, ptr %v1420, align 1
  %1069 = load i8, ptr %v1420, align 1
  %idxprom1438 = zext i8 %1069 to i64
  %arrayidx1439 = getelementptr inbounds nuw [6 x i8], ptr %pos, i64 0, i64 %idxprom1438
  %1070 = load i8, ptr %arrayidx1439, align 1
  store i8 %1070, ptr %tmp, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body1443, %for.body1434
  %1071 = load i8, ptr %v1420, align 1
  %conv1440 = zext i8 %1071 to i32
  %cmp1441 = icmp sgt i32 %conv1440, 0
  br i1 %cmp1441, label %while.body1443, label %while.end1451

while.body1443:                                   ; preds = %while.cond
  %1072 = load i8, ptr %v1420, align 1
  %conv1444 = zext i8 %1072 to i32
  %sub1445 = sub nsw i32 %conv1444, 1
  %idxprom1446 = sext i32 %sub1445 to i64
  %arrayidx1447 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 %idxprom1446
  %1073 = load i8, ptr %arrayidx1447, align 1
  %1074 = load i8, ptr %v1420, align 1
  %idxprom1448 = zext i8 %1074 to i64
  %arrayidx1449 = getelementptr inbounds nuw [6 x i8], ptr %pos, i64 0, i64 %idxprom1448
  store i8 %1073, ptr %arrayidx1449, align 1
  %1075 = load i8, ptr %v1420, align 1
  %dec1450 = add i8 %1075, -1
  store i8 %dec1450, ptr %v1420, align 1
  br label %while.cond, !llvm.loop !13

while.end1451:                                    ; preds = %while.cond
  %1076 = load i8, ptr %tmp, align 1
  %arrayidx1452 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 0
  store i8 %1076, ptr %arrayidx1452, align 1
  %1077 = load i8, ptr %tmp, align 1
  %1078 = load ptr, ptr %s.addr, align 8
  %selector = getelementptr inbounds nuw %struct.DState, ptr %1078, i32 0, i32 33
  %1079 = load i32, ptr %i, align 4
  %idxprom1453 = sext i32 %1079 to i64
  %arrayidx1454 = getelementptr inbounds [18002 x i8], ptr %selector, i64 0, i64 %idxprom1453
  store i8 %1077, ptr %arrayidx1454, align 1
  br label %for.inc1455

for.inc1455:                                      ; preds = %while.end1451
  %1080 = load i32, ptr %i, align 4
  %inc1456 = add nsw i32 %1080, 1
  store i32 %inc1456, ptr %i, align 4
  br label %for.cond1431, !llvm.loop !14

for.end1457:                                      ; preds = %for.cond1431
  store i32 0, ptr %t, align 4
  br label %for.cond1458

for.cond1458:                                     ; preds = %for.inc1652, %for.end1457
  %1081 = load i32, ptr %t, align 4
  %1082 = load i32, ptr %nGroups, align 4
  %cmp1459 = icmp slt i32 %1081, %1082
  br i1 %cmp1459, label %for.body1461, label %for.end1654

for.body1461:                                     ; preds = %for.cond1458
  br label %sw.bb1462

sw.bb1462:                                        ; preds = %for.body1461, %if.end
  %1083 = load ptr, ptr %s.addr, align 8
  %state1463 = getelementptr inbounds nuw %struct.DState, ptr %1083, i32 0, i32 1
  store i32 33, ptr %state1463, align 8
  br label %while.body1465

while.body1465:                                   ; preds = %if.end1511, %sw.bb1462
  %1084 = load ptr, ptr %s.addr, align 8
  %bsLive1466 = getelementptr inbounds nuw %struct.DState, ptr %1084, i32 0, i32 8
  %1085 = load i32, ptr %bsLive1466, align 4
  %cmp1467 = icmp sge i32 %1085, 5
  br i1 %cmp1467, label %if.then1469, label %if.end1478

if.then1469:                                      ; preds = %while.body1465
  %1086 = load ptr, ptr %s.addr, align 8
  %bsBuff1471 = getelementptr inbounds nuw %struct.DState, ptr %1086, i32 0, i32 7
  %1087 = load i32, ptr %bsBuff1471, align 8
  %1088 = load ptr, ptr %s.addr, align 8
  %bsLive1472 = getelementptr inbounds nuw %struct.DState, ptr %1088, i32 0, i32 8
  %1089 = load i32, ptr %bsLive1472, align 4
  %sub1473 = sub nsw i32 %1089, 5
  %shr1474 = lshr i32 %1087, %sub1473
  %and1475 = and i32 %shr1474, 31
  store i32 %and1475, ptr %v1470, align 4
  %1090 = load ptr, ptr %s.addr, align 8
  %bsLive1476 = getelementptr inbounds nuw %struct.DState, ptr %1090, i32 0, i32 8
  %1091 = load i32, ptr %bsLive1476, align 4
  %sub1477 = sub nsw i32 %1091, 5
  store i32 %sub1477, ptr %bsLive1476, align 4
  %1092 = load i32, ptr %v1470, align 4
  store i32 %1092, ptr %curr, align 4
  br label %while.end1512

if.end1478:                                       ; preds = %while.body1465
  %1093 = load ptr, ptr %s.addr, align 8
  %strm1479 = getelementptr inbounds nuw %struct.DState, ptr %1093, i32 0, i32 0
  %1094 = load ptr, ptr %strm1479, align 8
  %avail_in1480 = getelementptr inbounds nuw %struct.bz_stream, ptr %1094, i32 0, i32 1
  %1095 = load i32, ptr %avail_in1480, align 8
  %cmp1481 = icmp eq i32 %1095, 0
  br i1 %cmp1481, label %if.then1483, label %if.end1484

if.then1483:                                      ; preds = %if.end1478
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1484:                                       ; preds = %if.end1478
  %1096 = load ptr, ptr %s.addr, align 8
  %bsBuff1485 = getelementptr inbounds nuw %struct.DState, ptr %1096, i32 0, i32 7
  %1097 = load i32, ptr %bsBuff1485, align 8
  %shl1486 = shl i32 %1097, 8
  %1098 = load ptr, ptr %s.addr, align 8
  %strm1487 = getelementptr inbounds nuw %struct.DState, ptr %1098, i32 0, i32 0
  %1099 = load ptr, ptr %strm1487, align 8
  %next_in1488 = getelementptr inbounds nuw %struct.bz_stream, ptr %1099, i32 0, i32 0
  %1100 = load ptr, ptr %next_in1488, align 8
  %1101 = load i8, ptr %1100, align 1
  %conv1489 = zext i8 %1101 to i32
  %or1490 = or i32 %shl1486, %conv1489
  %1102 = load ptr, ptr %s.addr, align 8
  %bsBuff1491 = getelementptr inbounds nuw %struct.DState, ptr %1102, i32 0, i32 7
  store i32 %or1490, ptr %bsBuff1491, align 8
  %1103 = load ptr, ptr %s.addr, align 8
  %bsLive1492 = getelementptr inbounds nuw %struct.DState, ptr %1103, i32 0, i32 8
  %1104 = load i32, ptr %bsLive1492, align 4
  %add1493 = add nsw i32 %1104, 8
  store i32 %add1493, ptr %bsLive1492, align 4
  %1105 = load ptr, ptr %s.addr, align 8
  %strm1494 = getelementptr inbounds nuw %struct.DState, ptr %1105, i32 0, i32 0
  %1106 = load ptr, ptr %strm1494, align 8
  %next_in1495 = getelementptr inbounds nuw %struct.bz_stream, ptr %1106, i32 0, i32 0
  %1107 = load ptr, ptr %next_in1495, align 8
  %incdec.ptr1496 = getelementptr inbounds nuw i8, ptr %1107, i32 1
  store ptr %incdec.ptr1496, ptr %next_in1495, align 8
  %1108 = load ptr, ptr %s.addr, align 8
  %strm1497 = getelementptr inbounds nuw %struct.DState, ptr %1108, i32 0, i32 0
  %1109 = load ptr, ptr %strm1497, align 8
  %avail_in1498 = getelementptr inbounds nuw %struct.bz_stream, ptr %1109, i32 0, i32 1
  %1110 = load i32, ptr %avail_in1498, align 8
  %dec1499 = add i32 %1110, -1
  store i32 %dec1499, ptr %avail_in1498, align 8
  %1111 = load ptr, ptr %s.addr, align 8
  %strm1500 = getelementptr inbounds nuw %struct.DState, ptr %1111, i32 0, i32 0
  %1112 = load ptr, ptr %strm1500, align 8
  %total_in_lo321501 = getelementptr inbounds nuw %struct.bz_stream, ptr %1112, i32 0, i32 2
  %1113 = load i32, ptr %total_in_lo321501, align 4
  %inc1502 = add i32 %1113, 1
  store i32 %inc1502, ptr %total_in_lo321501, align 4
  %1114 = load ptr, ptr %s.addr, align 8
  %strm1503 = getelementptr inbounds nuw %struct.DState, ptr %1114, i32 0, i32 0
  %1115 = load ptr, ptr %strm1503, align 8
  %total_in_lo321504 = getelementptr inbounds nuw %struct.bz_stream, ptr %1115, i32 0, i32 2
  %1116 = load i32, ptr %total_in_lo321504, align 4
  %cmp1505 = icmp eq i32 %1116, 0
  br i1 %cmp1505, label %if.then1507, label %if.end1511

if.then1507:                                      ; preds = %if.end1484
  %1117 = load ptr, ptr %s.addr, align 8
  %strm1508 = getelementptr inbounds nuw %struct.DState, ptr %1117, i32 0, i32 0
  %1118 = load ptr, ptr %strm1508, align 8
  %total_in_hi321509 = getelementptr inbounds nuw %struct.bz_stream, ptr %1118, i32 0, i32 3
  %1119 = load i32, ptr %total_in_hi321509, align 8
  %inc1510 = add i32 %1119, 1
  store i32 %inc1510, ptr %total_in_hi321509, align 8
  br label %if.end1511

if.end1511:                                       ; preds = %if.then1507, %if.end1484
  br label %while.body1465

while.end1512:                                    ; preds = %if.then1469
  store i32 0, ptr %i, align 4
  br label %for.cond1513

for.cond1513:                                     ; preds = %for.inc1649, %while.end1512
  %1120 = load i32, ptr %i, align 4
  %1121 = load i32, ptr %alphaSize, align 4
  %cmp1514 = icmp slt i32 %1120, %1121
  br i1 %cmp1514, label %for.body1516, label %for.end1651

for.body1516:                                     ; preds = %for.cond1513
  br label %while.body1518

while.body1518:                                   ; preds = %if.end1642, %for.body1516
  %1122 = load i32, ptr %curr, align 4
  %cmp1519 = icmp slt i32 %1122, 1
  br i1 %cmp1519, label %if.then1524, label %lor.lhs.false1521

lor.lhs.false1521:                                ; preds = %while.body1518
  %1123 = load i32, ptr %curr, align 4
  %cmp1522 = icmp sgt i32 %1123, 20
  br i1 %cmp1522, label %if.then1524, label %if.end1525

if.then1524:                                      ; preds = %lor.lhs.false1521, %while.body1518
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1525:                                       ; preds = %lor.lhs.false1521
  br label %sw.bb1526

sw.bb1526:                                        ; preds = %if.end1525, %if.end
  %1124 = load ptr, ptr %s.addr, align 8
  %state1527 = getelementptr inbounds nuw %struct.DState, ptr %1124, i32 0, i32 1
  store i32 34, ptr %state1527, align 8
  br label %while.body1529

while.body1529:                                   ; preds = %if.end1576, %sw.bb1526
  %1125 = load ptr, ptr %s.addr, align 8
  %bsLive1530 = getelementptr inbounds nuw %struct.DState, ptr %1125, i32 0, i32 8
  %1126 = load i32, ptr %bsLive1530, align 4
  %cmp1531 = icmp sge i32 %1126, 1
  br i1 %cmp1531, label %if.then1533, label %if.end1543

if.then1533:                                      ; preds = %while.body1529
  %1127 = load ptr, ptr %s.addr, align 8
  %bsBuff1535 = getelementptr inbounds nuw %struct.DState, ptr %1127, i32 0, i32 7
  %1128 = load i32, ptr %bsBuff1535, align 8
  %1129 = load ptr, ptr %s.addr, align 8
  %bsLive1536 = getelementptr inbounds nuw %struct.DState, ptr %1129, i32 0, i32 8
  %1130 = load i32, ptr %bsLive1536, align 4
  %sub1537 = sub nsw i32 %1130, 1
  %shr1538 = lshr i32 %1128, %sub1537
  %and1539 = and i32 %shr1538, 1
  store i32 %and1539, ptr %v1534, align 4
  %1131 = load ptr, ptr %s.addr, align 8
  %bsLive1540 = getelementptr inbounds nuw %struct.DState, ptr %1131, i32 0, i32 8
  %1132 = load i32, ptr %bsLive1540, align 4
  %sub1541 = sub nsw i32 %1132, 1
  store i32 %sub1541, ptr %bsLive1540, align 4
  %1133 = load i32, ptr %v1534, align 4
  %conv1542 = trunc i32 %1133 to i8
  store i8 %conv1542, ptr %uc, align 1
  br label %while.end1577

if.end1543:                                       ; preds = %while.body1529
  %1134 = load ptr, ptr %s.addr, align 8
  %strm1544 = getelementptr inbounds nuw %struct.DState, ptr %1134, i32 0, i32 0
  %1135 = load ptr, ptr %strm1544, align 8
  %avail_in1545 = getelementptr inbounds nuw %struct.bz_stream, ptr %1135, i32 0, i32 1
  %1136 = load i32, ptr %avail_in1545, align 8
  %cmp1546 = icmp eq i32 %1136, 0
  br i1 %cmp1546, label %if.then1548, label %if.end1549

if.then1548:                                      ; preds = %if.end1543
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1549:                                       ; preds = %if.end1543
  %1137 = load ptr, ptr %s.addr, align 8
  %bsBuff1550 = getelementptr inbounds nuw %struct.DState, ptr %1137, i32 0, i32 7
  %1138 = load i32, ptr %bsBuff1550, align 8
  %shl1551 = shl i32 %1138, 8
  %1139 = load ptr, ptr %s.addr, align 8
  %strm1552 = getelementptr inbounds nuw %struct.DState, ptr %1139, i32 0, i32 0
  %1140 = load ptr, ptr %strm1552, align 8
  %next_in1553 = getelementptr inbounds nuw %struct.bz_stream, ptr %1140, i32 0, i32 0
  %1141 = load ptr, ptr %next_in1553, align 8
  %1142 = load i8, ptr %1141, align 1
  %conv1554 = zext i8 %1142 to i32
  %or1555 = or i32 %shl1551, %conv1554
  %1143 = load ptr, ptr %s.addr, align 8
  %bsBuff1556 = getelementptr inbounds nuw %struct.DState, ptr %1143, i32 0, i32 7
  store i32 %or1555, ptr %bsBuff1556, align 8
  %1144 = load ptr, ptr %s.addr, align 8
  %bsLive1557 = getelementptr inbounds nuw %struct.DState, ptr %1144, i32 0, i32 8
  %1145 = load i32, ptr %bsLive1557, align 4
  %add1558 = add nsw i32 %1145, 8
  store i32 %add1558, ptr %bsLive1557, align 4
  %1146 = load ptr, ptr %s.addr, align 8
  %strm1559 = getelementptr inbounds nuw %struct.DState, ptr %1146, i32 0, i32 0
  %1147 = load ptr, ptr %strm1559, align 8
  %next_in1560 = getelementptr inbounds nuw %struct.bz_stream, ptr %1147, i32 0, i32 0
  %1148 = load ptr, ptr %next_in1560, align 8
  %incdec.ptr1561 = getelementptr inbounds nuw i8, ptr %1148, i32 1
  store ptr %incdec.ptr1561, ptr %next_in1560, align 8
  %1149 = load ptr, ptr %s.addr, align 8
  %strm1562 = getelementptr inbounds nuw %struct.DState, ptr %1149, i32 0, i32 0
  %1150 = load ptr, ptr %strm1562, align 8
  %avail_in1563 = getelementptr inbounds nuw %struct.bz_stream, ptr %1150, i32 0, i32 1
  %1151 = load i32, ptr %avail_in1563, align 8
  %dec1564 = add i32 %1151, -1
  store i32 %dec1564, ptr %avail_in1563, align 8
  %1152 = load ptr, ptr %s.addr, align 8
  %strm1565 = getelementptr inbounds nuw %struct.DState, ptr %1152, i32 0, i32 0
  %1153 = load ptr, ptr %strm1565, align 8
  %total_in_lo321566 = getelementptr inbounds nuw %struct.bz_stream, ptr %1153, i32 0, i32 2
  %1154 = load i32, ptr %total_in_lo321566, align 4
  %inc1567 = add i32 %1154, 1
  store i32 %inc1567, ptr %total_in_lo321566, align 4
  %1155 = load ptr, ptr %s.addr, align 8
  %strm1568 = getelementptr inbounds nuw %struct.DState, ptr %1155, i32 0, i32 0
  %1156 = load ptr, ptr %strm1568, align 8
  %total_in_lo321569 = getelementptr inbounds nuw %struct.bz_stream, ptr %1156, i32 0, i32 2
  %1157 = load i32, ptr %total_in_lo321569, align 4
  %cmp1570 = icmp eq i32 %1157, 0
  br i1 %cmp1570, label %if.then1572, label %if.end1576

if.then1572:                                      ; preds = %if.end1549
  %1158 = load ptr, ptr %s.addr, align 8
  %strm1573 = getelementptr inbounds nuw %struct.DState, ptr %1158, i32 0, i32 0
  %1159 = load ptr, ptr %strm1573, align 8
  %total_in_hi321574 = getelementptr inbounds nuw %struct.bz_stream, ptr %1159, i32 0, i32 3
  %1160 = load i32, ptr %total_in_hi321574, align 8
  %inc1575 = add i32 %1160, 1
  store i32 %inc1575, ptr %total_in_hi321574, align 8
  br label %if.end1576

if.end1576:                                       ; preds = %if.then1572, %if.end1549
  br label %while.body1529

while.end1577:                                    ; preds = %if.then1533
  %1161 = load i8, ptr %uc, align 1
  %conv1578 = zext i8 %1161 to i32
  %cmp1579 = icmp eq i32 %conv1578, 0
  br i1 %cmp1579, label %if.then1581, label %if.end1582

if.then1581:                                      ; preds = %while.end1577
  br label %while.end1643

if.end1582:                                       ; preds = %while.end1577
  br label %sw.bb1583

sw.bb1583:                                        ; preds = %if.end1582, %if.end
  %1162 = load ptr, ptr %s.addr, align 8
  %state1584 = getelementptr inbounds nuw %struct.DState, ptr %1162, i32 0, i32 1
  store i32 35, ptr %state1584, align 8
  br label %while.body1586

while.body1586:                                   ; preds = %if.end1633, %sw.bb1583
  %1163 = load ptr, ptr %s.addr, align 8
  %bsLive1587 = getelementptr inbounds nuw %struct.DState, ptr %1163, i32 0, i32 8
  %1164 = load i32, ptr %bsLive1587, align 4
  %cmp1588 = icmp sge i32 %1164, 1
  br i1 %cmp1588, label %if.then1590, label %if.end1600

if.then1590:                                      ; preds = %while.body1586
  %1165 = load ptr, ptr %s.addr, align 8
  %bsBuff1592 = getelementptr inbounds nuw %struct.DState, ptr %1165, i32 0, i32 7
  %1166 = load i32, ptr %bsBuff1592, align 8
  %1167 = load ptr, ptr %s.addr, align 8
  %bsLive1593 = getelementptr inbounds nuw %struct.DState, ptr %1167, i32 0, i32 8
  %1168 = load i32, ptr %bsLive1593, align 4
  %sub1594 = sub nsw i32 %1168, 1
  %shr1595 = lshr i32 %1166, %sub1594
  %and1596 = and i32 %shr1595, 1
  store i32 %and1596, ptr %v1591, align 4
  %1169 = load ptr, ptr %s.addr, align 8
  %bsLive1597 = getelementptr inbounds nuw %struct.DState, ptr %1169, i32 0, i32 8
  %1170 = load i32, ptr %bsLive1597, align 4
  %sub1598 = sub nsw i32 %1170, 1
  store i32 %sub1598, ptr %bsLive1597, align 4
  %1171 = load i32, ptr %v1591, align 4
  %conv1599 = trunc i32 %1171 to i8
  store i8 %conv1599, ptr %uc, align 1
  br label %while.end1634

if.end1600:                                       ; preds = %while.body1586
  %1172 = load ptr, ptr %s.addr, align 8
  %strm1601 = getelementptr inbounds nuw %struct.DState, ptr %1172, i32 0, i32 0
  %1173 = load ptr, ptr %strm1601, align 8
  %avail_in1602 = getelementptr inbounds nuw %struct.bz_stream, ptr %1173, i32 0, i32 1
  %1174 = load i32, ptr %avail_in1602, align 8
  %cmp1603 = icmp eq i32 %1174, 0
  br i1 %cmp1603, label %if.then1605, label %if.end1606

if.then1605:                                      ; preds = %if.end1600
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1606:                                       ; preds = %if.end1600
  %1175 = load ptr, ptr %s.addr, align 8
  %bsBuff1607 = getelementptr inbounds nuw %struct.DState, ptr %1175, i32 0, i32 7
  %1176 = load i32, ptr %bsBuff1607, align 8
  %shl1608 = shl i32 %1176, 8
  %1177 = load ptr, ptr %s.addr, align 8
  %strm1609 = getelementptr inbounds nuw %struct.DState, ptr %1177, i32 0, i32 0
  %1178 = load ptr, ptr %strm1609, align 8
  %next_in1610 = getelementptr inbounds nuw %struct.bz_stream, ptr %1178, i32 0, i32 0
  %1179 = load ptr, ptr %next_in1610, align 8
  %1180 = load i8, ptr %1179, align 1
  %conv1611 = zext i8 %1180 to i32
  %or1612 = or i32 %shl1608, %conv1611
  %1181 = load ptr, ptr %s.addr, align 8
  %bsBuff1613 = getelementptr inbounds nuw %struct.DState, ptr %1181, i32 0, i32 7
  store i32 %or1612, ptr %bsBuff1613, align 8
  %1182 = load ptr, ptr %s.addr, align 8
  %bsLive1614 = getelementptr inbounds nuw %struct.DState, ptr %1182, i32 0, i32 8
  %1183 = load i32, ptr %bsLive1614, align 4
  %add1615 = add nsw i32 %1183, 8
  store i32 %add1615, ptr %bsLive1614, align 4
  %1184 = load ptr, ptr %s.addr, align 8
  %strm1616 = getelementptr inbounds nuw %struct.DState, ptr %1184, i32 0, i32 0
  %1185 = load ptr, ptr %strm1616, align 8
  %next_in1617 = getelementptr inbounds nuw %struct.bz_stream, ptr %1185, i32 0, i32 0
  %1186 = load ptr, ptr %next_in1617, align 8
  %incdec.ptr1618 = getelementptr inbounds nuw i8, ptr %1186, i32 1
  store ptr %incdec.ptr1618, ptr %next_in1617, align 8
  %1187 = load ptr, ptr %s.addr, align 8
  %strm1619 = getelementptr inbounds nuw %struct.DState, ptr %1187, i32 0, i32 0
  %1188 = load ptr, ptr %strm1619, align 8
  %avail_in1620 = getelementptr inbounds nuw %struct.bz_stream, ptr %1188, i32 0, i32 1
  %1189 = load i32, ptr %avail_in1620, align 8
  %dec1621 = add i32 %1189, -1
  store i32 %dec1621, ptr %avail_in1620, align 8
  %1190 = load ptr, ptr %s.addr, align 8
  %strm1622 = getelementptr inbounds nuw %struct.DState, ptr %1190, i32 0, i32 0
  %1191 = load ptr, ptr %strm1622, align 8
  %total_in_lo321623 = getelementptr inbounds nuw %struct.bz_stream, ptr %1191, i32 0, i32 2
  %1192 = load i32, ptr %total_in_lo321623, align 4
  %inc1624 = add i32 %1192, 1
  store i32 %inc1624, ptr %total_in_lo321623, align 4
  %1193 = load ptr, ptr %s.addr, align 8
  %strm1625 = getelementptr inbounds nuw %struct.DState, ptr %1193, i32 0, i32 0
  %1194 = load ptr, ptr %strm1625, align 8
  %total_in_lo321626 = getelementptr inbounds nuw %struct.bz_stream, ptr %1194, i32 0, i32 2
  %1195 = load i32, ptr %total_in_lo321626, align 4
  %cmp1627 = icmp eq i32 %1195, 0
  br i1 %cmp1627, label %if.then1629, label %if.end1633

if.then1629:                                      ; preds = %if.end1606
  %1196 = load ptr, ptr %s.addr, align 8
  %strm1630 = getelementptr inbounds nuw %struct.DState, ptr %1196, i32 0, i32 0
  %1197 = load ptr, ptr %strm1630, align 8
  %total_in_hi321631 = getelementptr inbounds nuw %struct.bz_stream, ptr %1197, i32 0, i32 3
  %1198 = load i32, ptr %total_in_hi321631, align 8
  %inc1632 = add i32 %1198, 1
  store i32 %inc1632, ptr %total_in_hi321631, align 8
  br label %if.end1633

if.end1633:                                       ; preds = %if.then1629, %if.end1606
  br label %while.body1586

while.end1634:                                    ; preds = %if.then1590
  %1199 = load i8, ptr %uc, align 1
  %conv1635 = zext i8 %1199 to i32
  %cmp1636 = icmp eq i32 %conv1635, 0
  br i1 %cmp1636, label %if.then1638, label %if.else1640

if.then1638:                                      ; preds = %while.end1634
  %1200 = load i32, ptr %curr, align 4
  %inc1639 = add nsw i32 %1200, 1
  store i32 %inc1639, ptr %curr, align 4
  br label %if.end1642

if.else1640:                                      ; preds = %while.end1634
  %1201 = load i32, ptr %curr, align 4
  %dec1641 = add nsw i32 %1201, -1
  store i32 %dec1641, ptr %curr, align 4
  br label %if.end1642

if.end1642:                                       ; preds = %if.else1640, %if.then1638
  br label %while.body1518

while.end1643:                                    ; preds = %if.then1581
  %1202 = load i32, ptr %curr, align 4
  %conv1644 = trunc i32 %1202 to i8
  %1203 = load ptr, ptr %s.addr, align 8
  %len = getelementptr inbounds nuw %struct.DState, ptr %1203, i32 0, i32 35
  %1204 = load i32, ptr %t, align 4
  %idxprom1645 = sext i32 %1204 to i64
  %arrayidx1646 = getelementptr inbounds [6 x [258 x i8]], ptr %len, i64 0, i64 %idxprom1645
  %1205 = load i32, ptr %i, align 4
  %idxprom1647 = sext i32 %1205 to i64
  %arrayidx1648 = getelementptr inbounds [258 x i8], ptr %arrayidx1646, i64 0, i64 %idxprom1647
  store i8 %conv1644, ptr %arrayidx1648, align 1
  br label %for.inc1649

for.inc1649:                                      ; preds = %while.end1643
  %1206 = load i32, ptr %i, align 4
  %inc1650 = add nsw i32 %1206, 1
  store i32 %inc1650, ptr %i, align 4
  br label %for.cond1513, !llvm.loop !15

for.end1651:                                      ; preds = %for.cond1513
  br label %for.inc1652

for.inc1652:                                      ; preds = %for.end1651
  %1207 = load i32, ptr %t, align 4
  %inc1653 = add nsw i32 %1207, 1
  store i32 %inc1653, ptr %t, align 4
  br label %for.cond1458, !llvm.loop !16

for.end1654:                                      ; preds = %for.cond1458
  store i32 0, ptr %t, align 4
  br label %for.cond1655

for.cond1655:                                     ; preds = %for.inc1713, %for.end1654
  %1208 = load i32, ptr %t, align 4
  %1209 = load i32, ptr %nGroups, align 4
  %cmp1656 = icmp slt i32 %1208, %1209
  br i1 %cmp1656, label %for.body1658, label %for.end1715

for.body1658:                                     ; preds = %for.cond1655
  store i32 32, ptr %minLen, align 4
  store i32 0, ptr %maxLen, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond1659

for.cond1659:                                     ; preds = %for.inc1695, %for.body1658
  %1210 = load i32, ptr %i, align 4
  %1211 = load i32, ptr %alphaSize, align 4
  %cmp1660 = icmp slt i32 %1210, %1211
  br i1 %cmp1660, label %for.body1662, label %for.end1697

for.body1662:                                     ; preds = %for.cond1659
  %1212 = load ptr, ptr %s.addr, align 8
  %len1663 = getelementptr inbounds nuw %struct.DState, ptr %1212, i32 0, i32 35
  %1213 = load i32, ptr %t, align 4
  %idxprom1664 = sext i32 %1213 to i64
  %arrayidx1665 = getelementptr inbounds [6 x [258 x i8]], ptr %len1663, i64 0, i64 %idxprom1664
  %1214 = load i32, ptr %i, align 4
  %idxprom1666 = sext i32 %1214 to i64
  %arrayidx1667 = getelementptr inbounds [258 x i8], ptr %arrayidx1665, i64 0, i64 %idxprom1666
  %1215 = load i8, ptr %arrayidx1667, align 1
  %conv1668 = zext i8 %1215 to i32
  %1216 = load i32, ptr %maxLen, align 4
  %cmp1669 = icmp sgt i32 %conv1668, %1216
  br i1 %cmp1669, label %if.then1671, label %if.end1678

if.then1671:                                      ; preds = %for.body1662
  %1217 = load ptr, ptr %s.addr, align 8
  %len1672 = getelementptr inbounds nuw %struct.DState, ptr %1217, i32 0, i32 35
  %1218 = load i32, ptr %t, align 4
  %idxprom1673 = sext i32 %1218 to i64
  %arrayidx1674 = getelementptr inbounds [6 x [258 x i8]], ptr %len1672, i64 0, i64 %idxprom1673
  %1219 = load i32, ptr %i, align 4
  %idxprom1675 = sext i32 %1219 to i64
  %arrayidx1676 = getelementptr inbounds [258 x i8], ptr %arrayidx1674, i64 0, i64 %idxprom1675
  %1220 = load i8, ptr %arrayidx1676, align 1
  %conv1677 = zext i8 %1220 to i32
  store i32 %conv1677, ptr %maxLen, align 4
  br label %if.end1678

if.end1678:                                       ; preds = %if.then1671, %for.body1662
  %1221 = load ptr, ptr %s.addr, align 8
  %len1679 = getelementptr inbounds nuw %struct.DState, ptr %1221, i32 0, i32 35
  %1222 = load i32, ptr %t, align 4
  %idxprom1680 = sext i32 %1222 to i64
  %arrayidx1681 = getelementptr inbounds [6 x [258 x i8]], ptr %len1679, i64 0, i64 %idxprom1680
  %1223 = load i32, ptr %i, align 4
  %idxprom1682 = sext i32 %1223 to i64
  %arrayidx1683 = getelementptr inbounds [258 x i8], ptr %arrayidx1681, i64 0, i64 %idxprom1682
  %1224 = load i8, ptr %arrayidx1683, align 1
  %conv1684 = zext i8 %1224 to i32
  %1225 = load i32, ptr %minLen, align 4
  %cmp1685 = icmp slt i32 %conv1684, %1225
  br i1 %cmp1685, label %if.then1687, label %if.end1694

if.then1687:                                      ; preds = %if.end1678
  %1226 = load ptr, ptr %s.addr, align 8
  %len1688 = getelementptr inbounds nuw %struct.DState, ptr %1226, i32 0, i32 35
  %1227 = load i32, ptr %t, align 4
  %idxprom1689 = sext i32 %1227 to i64
  %arrayidx1690 = getelementptr inbounds [6 x [258 x i8]], ptr %len1688, i64 0, i64 %idxprom1689
  %1228 = load i32, ptr %i, align 4
  %idxprom1691 = sext i32 %1228 to i64
  %arrayidx1692 = getelementptr inbounds [258 x i8], ptr %arrayidx1690, i64 0, i64 %idxprom1691
  %1229 = load i8, ptr %arrayidx1692, align 1
  %conv1693 = zext i8 %1229 to i32
  store i32 %conv1693, ptr %minLen, align 4
  br label %if.end1694

if.end1694:                                       ; preds = %if.then1687, %if.end1678
  br label %for.inc1695

for.inc1695:                                      ; preds = %if.end1694
  %1230 = load i32, ptr %i, align 4
  %inc1696 = add nsw i32 %1230, 1
  store i32 %inc1696, ptr %i, align 4
  br label %for.cond1659, !llvm.loop !17

for.end1697:                                      ; preds = %for.cond1659
  %1231 = load ptr, ptr %s.addr, align 8
  %limit = getelementptr inbounds nuw %struct.DState, ptr %1231, i32 0, i32 36
  %1232 = load i32, ptr %t, align 4
  %idxprom1698 = sext i32 %1232 to i64
  %arrayidx1699 = getelementptr inbounds [6 x [258 x i32]], ptr %limit, i64 0, i64 %idxprom1698
  %arrayidx1700 = getelementptr inbounds [258 x i32], ptr %arrayidx1699, i64 0, i64 0
  %1233 = load ptr, ptr %s.addr, align 8
  %base = getelementptr inbounds nuw %struct.DState, ptr %1233, i32 0, i32 37
  %1234 = load i32, ptr %t, align 4
  %idxprom1701 = sext i32 %1234 to i64
  %arrayidx1702 = getelementptr inbounds [6 x [258 x i32]], ptr %base, i64 0, i64 %idxprom1701
  %arrayidx1703 = getelementptr inbounds [258 x i32], ptr %arrayidx1702, i64 0, i64 0
  %1235 = load ptr, ptr %s.addr, align 8
  %perm = getelementptr inbounds nuw %struct.DState, ptr %1235, i32 0, i32 38
  %1236 = load i32, ptr %t, align 4
  %idxprom1704 = sext i32 %1236 to i64
  %arrayidx1705 = getelementptr inbounds [6 x [258 x i32]], ptr %perm, i64 0, i64 %idxprom1704
  %arrayidx1706 = getelementptr inbounds [258 x i32], ptr %arrayidx1705, i64 0, i64 0
  %1237 = load ptr, ptr %s.addr, align 8
  %len1707 = getelementptr inbounds nuw %struct.DState, ptr %1237, i32 0, i32 35
  %1238 = load i32, ptr %t, align 4
  %idxprom1708 = sext i32 %1238 to i64
  %arrayidx1709 = getelementptr inbounds [6 x [258 x i8]], ptr %len1707, i64 0, i64 %idxprom1708
  %arrayidx1710 = getelementptr inbounds [258 x i8], ptr %arrayidx1709, i64 0, i64 0
  %1239 = load i32, ptr %minLen, align 4
  %1240 = load i32, ptr %maxLen, align 4
  %1241 = load i32, ptr %alphaSize, align 4
  call void @BZ2_hbCreateDecodeTables(ptr noundef %arrayidx1700, ptr noundef %arrayidx1703, ptr noundef %arrayidx1706, ptr noundef %arrayidx1710, i32 noundef %1239, i32 noundef %1240, i32 noundef %1241)
  %1242 = load i32, ptr %minLen, align 4
  %1243 = load ptr, ptr %s.addr, align 8
  %minLens = getelementptr inbounds nuw %struct.DState, ptr %1243, i32 0, i32 39
  %1244 = load i32, ptr %t, align 4
  %idxprom1711 = sext i32 %1244 to i64
  %arrayidx1712 = getelementptr inbounds [6 x i32], ptr %minLens, i64 0, i64 %idxprom1711
  store i32 %1242, ptr %arrayidx1712, align 4
  br label %for.inc1713

for.inc1713:                                      ; preds = %for.end1697
  %1245 = load i32, ptr %t, align 4
  %inc1714 = add nsw i32 %1245, 1
  store i32 %inc1714, ptr %t, align 4
  br label %for.cond1655, !llvm.loop !18

for.end1715:                                      ; preds = %for.cond1655
  %1246 = load ptr, ptr %s.addr, align 8
  %nInUse1716 = getelementptr inbounds nuw %struct.DState, ptr %1246, i32 0, i32 27
  %1247 = load i32, ptr %nInUse1716, align 8
  %add1717 = add nsw i32 %1247, 1
  store i32 %add1717, ptr %EOB, align 4
  %1248 = load ptr, ptr %s.addr, align 8
  %blockSize100k1718 = getelementptr inbounds nuw %struct.DState, ptr %1248, i32 0, i32 9
  %1249 = load i32, ptr %blockSize100k1718, align 8
  %mul1719 = mul nsw i32 100000, %1249
  store i32 %mul1719, ptr %nblockMAX, align 4
  store i32 -1, ptr %groupNo, align 4
  store i32 0, ptr %groupPos, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond1720

for.cond1720:                                     ; preds = %for.inc1726, %for.end1715
  %1250 = load i32, ptr %i, align 4
  %cmp1721 = icmp sle i32 %1250, 255
  br i1 %cmp1721, label %for.body1723, label %for.end1728

for.body1723:                                     ; preds = %for.cond1720
  %1251 = load ptr, ptr %s.addr, align 8
  %unzftab = getelementptr inbounds nuw %struct.DState, ptr %1251, i32 0, i32 16
  %1252 = load i32, ptr %i, align 4
  %idxprom1724 = sext i32 %1252 to i64
  %arrayidx1725 = getelementptr inbounds [256 x i32], ptr %unzftab, i64 0, i64 %idxprom1724
  store i32 0, ptr %arrayidx1725, align 4
  br label %for.inc1726

for.inc1726:                                      ; preds = %for.body1723
  %1253 = load i32, ptr %i, align 4
  %inc1727 = add nsw i32 %1253, 1
  store i32 %inc1727, ptr %i, align 4
  br label %for.cond1720, !llvm.loop !19

for.end1728:                                      ; preds = %for.cond1720
  store i32 4095, ptr %kk, align 4
  store i32 15, ptr %ii, align 4
  br label %for.cond1729

for.cond1729:                                     ; preds = %for.inc1749, %for.end1728
  %1254 = load i32, ptr %ii, align 4
  %cmp1730 = icmp sge i32 %1254, 0
  br i1 %cmp1730, label %for.body1732, label %for.end1751

for.body1732:                                     ; preds = %for.cond1729
  store i32 15, ptr %jj, align 4
  br label %for.cond1733

for.cond1733:                                     ; preds = %for.inc1743, %for.body1732
  %1255 = load i32, ptr %jj, align 4
  %cmp1734 = icmp sge i32 %1255, 0
  br i1 %cmp1734, label %for.body1736, label %for.end1745

for.body1736:                                     ; preds = %for.cond1733
  %1256 = load i32, ptr %ii, align 4
  %mul1737 = mul nsw i32 %1256, 16
  %1257 = load i32, ptr %jj, align 4
  %add1738 = add nsw i32 %mul1737, %1257
  %conv1739 = trunc i32 %add1738 to i8
  %1258 = load ptr, ptr %s.addr, align 8
  %mtfa = getelementptr inbounds nuw %struct.DState, ptr %1258, i32 0, i32 31
  %1259 = load i32, ptr %kk, align 4
  %idxprom1740 = sext i32 %1259 to i64
  %arrayidx1741 = getelementptr inbounds [4096 x i8], ptr %mtfa, i64 0, i64 %idxprom1740
  store i8 %conv1739, ptr %arrayidx1741, align 1
  %1260 = load i32, ptr %kk, align 4
  %dec1742 = add nsw i32 %1260, -1
  store i32 %dec1742, ptr %kk, align 4
  br label %for.inc1743

for.inc1743:                                      ; preds = %for.body1736
  %1261 = load i32, ptr %jj, align 4
  %dec1744 = add nsw i32 %1261, -1
  store i32 %dec1744, ptr %jj, align 4
  br label %for.cond1733, !llvm.loop !20

for.end1745:                                      ; preds = %for.cond1733
  %1262 = load i32, ptr %kk, align 4
  %add1746 = add nsw i32 %1262, 1
  %1263 = load ptr, ptr %s.addr, align 8
  %mtfbase = getelementptr inbounds nuw %struct.DState, ptr %1263, i32 0, i32 32
  %1264 = load i32, ptr %ii, align 4
  %idxprom1747 = sext i32 %1264 to i64
  %arrayidx1748 = getelementptr inbounds [16 x i32], ptr %mtfbase, i64 0, i64 %idxprom1747
  store i32 %add1746, ptr %arrayidx1748, align 4
  br label %for.inc1749

for.inc1749:                                      ; preds = %for.end1745
  %1265 = load i32, ptr %ii, align 4
  %dec1750 = add nsw i32 %1265, -1
  store i32 %dec1750, ptr %ii, align 4
  br label %for.cond1729, !llvm.loop !21

for.end1751:                                      ; preds = %for.cond1729
  store i32 0, ptr %nblock, align 4
  %1266 = load i32, ptr %groupPos, align 4
  %cmp1752 = icmp eq i32 %1266, 0
  br i1 %cmp1752, label %if.then1754, label %if.end1779

if.then1754:                                      ; preds = %for.end1751
  %1267 = load i32, ptr %groupNo, align 4
  %inc1755 = add nsw i32 %1267, 1
  store i32 %inc1755, ptr %groupNo, align 4
  %1268 = load i32, ptr %groupNo, align 4
  %1269 = load i32, ptr %nSelectors, align 4
  %cmp1756 = icmp sge i32 %1268, %1269
  br i1 %cmp1756, label %if.then1758, label %if.end1759

if.then1758:                                      ; preds = %if.then1754
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1759:                                       ; preds = %if.then1754
  store i32 50, ptr %groupPos, align 4
  %1270 = load ptr, ptr %s.addr, align 8
  %selector1760 = getelementptr inbounds nuw %struct.DState, ptr %1270, i32 0, i32 33
  %1271 = load i32, ptr %groupNo, align 4
  %idxprom1761 = sext i32 %1271 to i64
  %arrayidx1762 = getelementptr inbounds [18002 x i8], ptr %selector1760, i64 0, i64 %idxprom1761
  %1272 = load i8, ptr %arrayidx1762, align 1
  %conv1763 = zext i8 %1272 to i32
  store i32 %conv1763, ptr %gSel, align 4
  %1273 = load ptr, ptr %s.addr, align 8
  %minLens1764 = getelementptr inbounds nuw %struct.DState, ptr %1273, i32 0, i32 39
  %1274 = load i32, ptr %gSel, align 4
  %idxprom1765 = sext i32 %1274 to i64
  %arrayidx1766 = getelementptr inbounds [6 x i32], ptr %minLens1764, i64 0, i64 %idxprom1765
  %1275 = load i32, ptr %arrayidx1766, align 4
  store i32 %1275, ptr %gMinlen, align 4
  %1276 = load ptr, ptr %s.addr, align 8
  %limit1767 = getelementptr inbounds nuw %struct.DState, ptr %1276, i32 0, i32 36
  %1277 = load i32, ptr %gSel, align 4
  %idxprom1768 = sext i32 %1277 to i64
  %arrayidx1769 = getelementptr inbounds [6 x [258 x i32]], ptr %limit1767, i64 0, i64 %idxprom1768
  %arrayidx1770 = getelementptr inbounds [258 x i32], ptr %arrayidx1769, i64 0, i64 0
  store ptr %arrayidx1770, ptr %gLimit, align 8
  %1278 = load ptr, ptr %s.addr, align 8
  %perm1771 = getelementptr inbounds nuw %struct.DState, ptr %1278, i32 0, i32 38
  %1279 = load i32, ptr %gSel, align 4
  %idxprom1772 = sext i32 %1279 to i64
  %arrayidx1773 = getelementptr inbounds [6 x [258 x i32]], ptr %perm1771, i64 0, i64 %idxprom1772
  %arrayidx1774 = getelementptr inbounds [258 x i32], ptr %arrayidx1773, i64 0, i64 0
  store ptr %arrayidx1774, ptr %gPerm, align 8
  %1280 = load ptr, ptr %s.addr, align 8
  %base1775 = getelementptr inbounds nuw %struct.DState, ptr %1280, i32 0, i32 37
  %1281 = load i32, ptr %gSel, align 4
  %idxprom1776 = sext i32 %1281 to i64
  %arrayidx1777 = getelementptr inbounds [6 x [258 x i32]], ptr %base1775, i64 0, i64 %idxprom1776
  %arrayidx1778 = getelementptr inbounds [258 x i32], ptr %arrayidx1777, i64 0, i64 0
  store ptr %arrayidx1778, ptr %gBase, align 8
  br label %if.end1779

if.end1779:                                       ; preds = %if.end1759, %for.end1751
  %1282 = load i32, ptr %groupPos, align 4
  %dec1780 = add nsw i32 %1282, -1
  store i32 %dec1780, ptr %groupPos, align 4
  %1283 = load i32, ptr %gMinlen, align 4
  store i32 %1283, ptr %zn, align 4
  br label %sw.bb1781

sw.bb1781:                                        ; preds = %if.end1779, %if.end
  %1284 = load ptr, ptr %s.addr, align 8
  %state1782 = getelementptr inbounds nuw %struct.DState, ptr %1284, i32 0, i32 1
  store i32 36, ptr %state1782, align 8
  br label %while.body1784

while.body1784:                                   ; preds = %if.end1832, %sw.bb1781
  %1285 = load ptr, ptr %s.addr, align 8
  %bsLive1785 = getelementptr inbounds nuw %struct.DState, ptr %1285, i32 0, i32 8
  %1286 = load i32, ptr %bsLive1785, align 4
  %1287 = load i32, ptr %zn, align 4
  %cmp1786 = icmp sge i32 %1286, %1287
  br i1 %cmp1786, label %if.then1788, label %if.end1799

if.then1788:                                      ; preds = %while.body1784
  %1288 = load ptr, ptr %s.addr, align 8
  %bsBuff1790 = getelementptr inbounds nuw %struct.DState, ptr %1288, i32 0, i32 7
  %1289 = load i32, ptr %bsBuff1790, align 8
  %1290 = load ptr, ptr %s.addr, align 8
  %bsLive1791 = getelementptr inbounds nuw %struct.DState, ptr %1290, i32 0, i32 8
  %1291 = load i32, ptr %bsLive1791, align 4
  %1292 = load i32, ptr %zn, align 4
  %sub1792 = sub nsw i32 %1291, %1292
  %shr1793 = lshr i32 %1289, %sub1792
  %1293 = load i32, ptr %zn, align 4
  %shl1794 = shl i32 1, %1293
  %sub1795 = sub nsw i32 %shl1794, 1
  %and1796 = and i32 %shr1793, %sub1795
  store i32 %and1796, ptr %v1789, align 4
  %1294 = load i32, ptr %zn, align 4
  %1295 = load ptr, ptr %s.addr, align 8
  %bsLive1797 = getelementptr inbounds nuw %struct.DState, ptr %1295, i32 0, i32 8
  %1296 = load i32, ptr %bsLive1797, align 4
  %sub1798 = sub nsw i32 %1296, %1294
  store i32 %sub1798, ptr %bsLive1797, align 4
  %1297 = load i32, ptr %v1789, align 4
  store i32 %1297, ptr %zvec, align 4
  br label %while.end1833

if.end1799:                                       ; preds = %while.body1784
  %1298 = load ptr, ptr %s.addr, align 8
  %strm1800 = getelementptr inbounds nuw %struct.DState, ptr %1298, i32 0, i32 0
  %1299 = load ptr, ptr %strm1800, align 8
  %avail_in1801 = getelementptr inbounds nuw %struct.bz_stream, ptr %1299, i32 0, i32 1
  %1300 = load i32, ptr %avail_in1801, align 8
  %cmp1802 = icmp eq i32 %1300, 0
  br i1 %cmp1802, label %if.then1804, label %if.end1805

if.then1804:                                      ; preds = %if.end1799
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1805:                                       ; preds = %if.end1799
  %1301 = load ptr, ptr %s.addr, align 8
  %bsBuff1806 = getelementptr inbounds nuw %struct.DState, ptr %1301, i32 0, i32 7
  %1302 = load i32, ptr %bsBuff1806, align 8
  %shl1807 = shl i32 %1302, 8
  %1303 = load ptr, ptr %s.addr, align 8
  %strm1808 = getelementptr inbounds nuw %struct.DState, ptr %1303, i32 0, i32 0
  %1304 = load ptr, ptr %strm1808, align 8
  %next_in1809 = getelementptr inbounds nuw %struct.bz_stream, ptr %1304, i32 0, i32 0
  %1305 = load ptr, ptr %next_in1809, align 8
  %1306 = load i8, ptr %1305, align 1
  %conv1810 = zext i8 %1306 to i32
  %or1811 = or i32 %shl1807, %conv1810
  %1307 = load ptr, ptr %s.addr, align 8
  %bsBuff1812 = getelementptr inbounds nuw %struct.DState, ptr %1307, i32 0, i32 7
  store i32 %or1811, ptr %bsBuff1812, align 8
  %1308 = load ptr, ptr %s.addr, align 8
  %bsLive1813 = getelementptr inbounds nuw %struct.DState, ptr %1308, i32 0, i32 8
  %1309 = load i32, ptr %bsLive1813, align 4
  %add1814 = add nsw i32 %1309, 8
  store i32 %add1814, ptr %bsLive1813, align 4
  %1310 = load ptr, ptr %s.addr, align 8
  %strm1815 = getelementptr inbounds nuw %struct.DState, ptr %1310, i32 0, i32 0
  %1311 = load ptr, ptr %strm1815, align 8
  %next_in1816 = getelementptr inbounds nuw %struct.bz_stream, ptr %1311, i32 0, i32 0
  %1312 = load ptr, ptr %next_in1816, align 8
  %incdec.ptr1817 = getelementptr inbounds nuw i8, ptr %1312, i32 1
  store ptr %incdec.ptr1817, ptr %next_in1816, align 8
  %1313 = load ptr, ptr %s.addr, align 8
  %strm1818 = getelementptr inbounds nuw %struct.DState, ptr %1313, i32 0, i32 0
  %1314 = load ptr, ptr %strm1818, align 8
  %avail_in1819 = getelementptr inbounds nuw %struct.bz_stream, ptr %1314, i32 0, i32 1
  %1315 = load i32, ptr %avail_in1819, align 8
  %dec1820 = add i32 %1315, -1
  store i32 %dec1820, ptr %avail_in1819, align 8
  %1316 = load ptr, ptr %s.addr, align 8
  %strm1821 = getelementptr inbounds nuw %struct.DState, ptr %1316, i32 0, i32 0
  %1317 = load ptr, ptr %strm1821, align 8
  %total_in_lo321822 = getelementptr inbounds nuw %struct.bz_stream, ptr %1317, i32 0, i32 2
  %1318 = load i32, ptr %total_in_lo321822, align 4
  %inc1823 = add i32 %1318, 1
  store i32 %inc1823, ptr %total_in_lo321822, align 4
  %1319 = load ptr, ptr %s.addr, align 8
  %strm1824 = getelementptr inbounds nuw %struct.DState, ptr %1319, i32 0, i32 0
  %1320 = load ptr, ptr %strm1824, align 8
  %total_in_lo321825 = getelementptr inbounds nuw %struct.bz_stream, ptr %1320, i32 0, i32 2
  %1321 = load i32, ptr %total_in_lo321825, align 4
  %cmp1826 = icmp eq i32 %1321, 0
  br i1 %cmp1826, label %if.then1828, label %if.end1832

if.then1828:                                      ; preds = %if.end1805
  %1322 = load ptr, ptr %s.addr, align 8
  %strm1829 = getelementptr inbounds nuw %struct.DState, ptr %1322, i32 0, i32 0
  %1323 = load ptr, ptr %strm1829, align 8
  %total_in_hi321830 = getelementptr inbounds nuw %struct.bz_stream, ptr %1323, i32 0, i32 3
  %1324 = load i32, ptr %total_in_hi321830, align 8
  %inc1831 = add i32 %1324, 1
  store i32 %inc1831, ptr %total_in_hi321830, align 8
  br label %if.end1832

if.end1832:                                       ; preds = %if.then1828, %if.end1805
  br label %while.body1784

while.end1833:                                    ; preds = %if.then1788
  br label %while.body1835

while.body1835:                                   ; preds = %while.end1897, %while.end1833
  %1325 = load i32, ptr %zn, align 4
  %cmp1836 = icmp sgt i32 %1325, 20
  br i1 %cmp1836, label %if.then1838, label %if.end1839

if.then1838:                                      ; preds = %while.body1835
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1839:                                       ; preds = %while.body1835
  %1326 = load i32, ptr %zvec, align 4
  %1327 = load ptr, ptr %gLimit, align 8
  %1328 = load i32, ptr %zn, align 4
  %idxprom1840 = sext i32 %1328 to i64
  %arrayidx1841 = getelementptr inbounds i32, ptr %1327, i64 %idxprom1840
  %1329 = load i32, ptr %arrayidx1841, align 4
  %cmp1842 = icmp sle i32 %1326, %1329
  br i1 %cmp1842, label %if.then1844, label %if.end1845

if.then1844:                                      ; preds = %if.end1839
  br label %while.end1900

if.end1845:                                       ; preds = %if.end1839
  %1330 = load i32, ptr %zn, align 4
  %inc1846 = add nsw i32 %1330, 1
  store i32 %inc1846, ptr %zn, align 4
  br label %sw.bb1847

sw.bb1847:                                        ; preds = %if.end1845, %if.end
  %1331 = load ptr, ptr %s.addr, align 8
  %state1848 = getelementptr inbounds nuw %struct.DState, ptr %1331, i32 0, i32 1
  store i32 37, ptr %state1848, align 8
  br label %while.body1850

while.body1850:                                   ; preds = %if.end1896, %sw.bb1847
  %1332 = load ptr, ptr %s.addr, align 8
  %bsLive1851 = getelementptr inbounds nuw %struct.DState, ptr %1332, i32 0, i32 8
  %1333 = load i32, ptr %bsLive1851, align 4
  %cmp1852 = icmp sge i32 %1333, 1
  br i1 %cmp1852, label %if.then1854, label %if.end1863

if.then1854:                                      ; preds = %while.body1850
  %1334 = load ptr, ptr %s.addr, align 8
  %bsBuff1856 = getelementptr inbounds nuw %struct.DState, ptr %1334, i32 0, i32 7
  %1335 = load i32, ptr %bsBuff1856, align 8
  %1336 = load ptr, ptr %s.addr, align 8
  %bsLive1857 = getelementptr inbounds nuw %struct.DState, ptr %1336, i32 0, i32 8
  %1337 = load i32, ptr %bsLive1857, align 4
  %sub1858 = sub nsw i32 %1337, 1
  %shr1859 = lshr i32 %1335, %sub1858
  %and1860 = and i32 %shr1859, 1
  store i32 %and1860, ptr %v1855, align 4
  %1338 = load ptr, ptr %s.addr, align 8
  %bsLive1861 = getelementptr inbounds nuw %struct.DState, ptr %1338, i32 0, i32 8
  %1339 = load i32, ptr %bsLive1861, align 4
  %sub1862 = sub nsw i32 %1339, 1
  store i32 %sub1862, ptr %bsLive1861, align 4
  %1340 = load i32, ptr %v1855, align 4
  store i32 %1340, ptr %zj, align 4
  br label %while.end1897

if.end1863:                                       ; preds = %while.body1850
  %1341 = load ptr, ptr %s.addr, align 8
  %strm1864 = getelementptr inbounds nuw %struct.DState, ptr %1341, i32 0, i32 0
  %1342 = load ptr, ptr %strm1864, align 8
  %avail_in1865 = getelementptr inbounds nuw %struct.bz_stream, ptr %1342, i32 0, i32 1
  %1343 = load i32, ptr %avail_in1865, align 8
  %cmp1866 = icmp eq i32 %1343, 0
  br i1 %cmp1866, label %if.then1868, label %if.end1869

if.then1868:                                      ; preds = %if.end1863
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1869:                                       ; preds = %if.end1863
  %1344 = load ptr, ptr %s.addr, align 8
  %bsBuff1870 = getelementptr inbounds nuw %struct.DState, ptr %1344, i32 0, i32 7
  %1345 = load i32, ptr %bsBuff1870, align 8
  %shl1871 = shl i32 %1345, 8
  %1346 = load ptr, ptr %s.addr, align 8
  %strm1872 = getelementptr inbounds nuw %struct.DState, ptr %1346, i32 0, i32 0
  %1347 = load ptr, ptr %strm1872, align 8
  %next_in1873 = getelementptr inbounds nuw %struct.bz_stream, ptr %1347, i32 0, i32 0
  %1348 = load ptr, ptr %next_in1873, align 8
  %1349 = load i8, ptr %1348, align 1
  %conv1874 = zext i8 %1349 to i32
  %or1875 = or i32 %shl1871, %conv1874
  %1350 = load ptr, ptr %s.addr, align 8
  %bsBuff1876 = getelementptr inbounds nuw %struct.DState, ptr %1350, i32 0, i32 7
  store i32 %or1875, ptr %bsBuff1876, align 8
  %1351 = load ptr, ptr %s.addr, align 8
  %bsLive1877 = getelementptr inbounds nuw %struct.DState, ptr %1351, i32 0, i32 8
  %1352 = load i32, ptr %bsLive1877, align 4
  %add1878 = add nsw i32 %1352, 8
  store i32 %add1878, ptr %bsLive1877, align 4
  %1353 = load ptr, ptr %s.addr, align 8
  %strm1879 = getelementptr inbounds nuw %struct.DState, ptr %1353, i32 0, i32 0
  %1354 = load ptr, ptr %strm1879, align 8
  %next_in1880 = getelementptr inbounds nuw %struct.bz_stream, ptr %1354, i32 0, i32 0
  %1355 = load ptr, ptr %next_in1880, align 8
  %incdec.ptr1881 = getelementptr inbounds nuw i8, ptr %1355, i32 1
  store ptr %incdec.ptr1881, ptr %next_in1880, align 8
  %1356 = load ptr, ptr %s.addr, align 8
  %strm1882 = getelementptr inbounds nuw %struct.DState, ptr %1356, i32 0, i32 0
  %1357 = load ptr, ptr %strm1882, align 8
  %avail_in1883 = getelementptr inbounds nuw %struct.bz_stream, ptr %1357, i32 0, i32 1
  %1358 = load i32, ptr %avail_in1883, align 8
  %dec1884 = add i32 %1358, -1
  store i32 %dec1884, ptr %avail_in1883, align 8
  %1359 = load ptr, ptr %s.addr, align 8
  %strm1885 = getelementptr inbounds nuw %struct.DState, ptr %1359, i32 0, i32 0
  %1360 = load ptr, ptr %strm1885, align 8
  %total_in_lo321886 = getelementptr inbounds nuw %struct.bz_stream, ptr %1360, i32 0, i32 2
  %1361 = load i32, ptr %total_in_lo321886, align 4
  %inc1887 = add i32 %1361, 1
  store i32 %inc1887, ptr %total_in_lo321886, align 4
  %1362 = load ptr, ptr %s.addr, align 8
  %strm1888 = getelementptr inbounds nuw %struct.DState, ptr %1362, i32 0, i32 0
  %1363 = load ptr, ptr %strm1888, align 8
  %total_in_lo321889 = getelementptr inbounds nuw %struct.bz_stream, ptr %1363, i32 0, i32 2
  %1364 = load i32, ptr %total_in_lo321889, align 4
  %cmp1890 = icmp eq i32 %1364, 0
  br i1 %cmp1890, label %if.then1892, label %if.end1896

if.then1892:                                      ; preds = %if.end1869
  %1365 = load ptr, ptr %s.addr, align 8
  %strm1893 = getelementptr inbounds nuw %struct.DState, ptr %1365, i32 0, i32 0
  %1366 = load ptr, ptr %strm1893, align 8
  %total_in_hi321894 = getelementptr inbounds nuw %struct.bz_stream, ptr %1366, i32 0, i32 3
  %1367 = load i32, ptr %total_in_hi321894, align 8
  %inc1895 = add i32 %1367, 1
  store i32 %inc1895, ptr %total_in_hi321894, align 8
  br label %if.end1896

if.end1896:                                       ; preds = %if.then1892, %if.end1869
  br label %while.body1850

while.end1897:                                    ; preds = %if.then1854
  %1368 = load i32, ptr %zvec, align 4
  %shl1898 = shl i32 %1368, 1
  %1369 = load i32, ptr %zj, align 4
  %or1899 = or i32 %shl1898, %1369
  store i32 %or1899, ptr %zvec, align 4
  br label %while.body1835

while.end1900:                                    ; preds = %if.then1844
  %1370 = load i32, ptr %zvec, align 4
  %1371 = load ptr, ptr %gBase, align 8
  %1372 = load i32, ptr %zn, align 4
  %idxprom1901 = sext i32 %1372 to i64
  %arrayidx1902 = getelementptr inbounds i32, ptr %1371, i64 %idxprom1901
  %1373 = load i32, ptr %arrayidx1902, align 4
  %sub1903 = sub nsw i32 %1370, %1373
  %cmp1904 = icmp slt i32 %sub1903, 0
  br i1 %cmp1904, label %if.then1912, label %lor.lhs.false1906

lor.lhs.false1906:                                ; preds = %while.end1900
  %1374 = load i32, ptr %zvec, align 4
  %1375 = load ptr, ptr %gBase, align 8
  %1376 = load i32, ptr %zn, align 4
  %idxprom1907 = sext i32 %1376 to i64
  %arrayidx1908 = getelementptr inbounds i32, ptr %1375, i64 %idxprom1907
  %1377 = load i32, ptr %arrayidx1908, align 4
  %sub1909 = sub nsw i32 %1374, %1377
  %cmp1910 = icmp sge i32 %sub1909, 258
  br i1 %cmp1910, label %if.then1912, label %if.end1913

if.then1912:                                      ; preds = %lor.lhs.false1906, %while.end1900
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1913:                                       ; preds = %lor.lhs.false1906
  %1378 = load ptr, ptr %gPerm, align 8
  %1379 = load i32, ptr %zvec, align 4
  %1380 = load ptr, ptr %gBase, align 8
  %1381 = load i32, ptr %zn, align 4
  %idxprom1914 = sext i32 %1381 to i64
  %arrayidx1915 = getelementptr inbounds i32, ptr %1380, i64 %idxprom1914
  %1382 = load i32, ptr %arrayidx1915, align 4
  %sub1916 = sub nsw i32 %1379, %1382
  %idxprom1917 = sext i32 %sub1916 to i64
  %arrayidx1918 = getelementptr inbounds i32, ptr %1378, i64 %idxprom1917
  %1383 = load i32, ptr %arrayidx1918, align 4
  store i32 %1383, ptr %nextSym, align 4
  br label %while.body1920

while.body1920:                                   ; preds = %if.end2522, %if.end2162, %if.end1913
  %1384 = load i32, ptr %nextSym, align 4
  %1385 = load i32, ptr %EOB, align 4
  %cmp1921 = icmp eq i32 %1384, %1385
  br i1 %cmp1921, label %if.then1923, label %if.end1924

if.then1923:                                      ; preds = %while.body1920
  br label %while.end2528

if.end1924:                                       ; preds = %while.body1920
  %1386 = load i32, ptr %nextSym, align 4
  %cmp1925 = icmp eq i32 %1386, 0
  br i1 %cmp1925, label %if.then1930, label %lor.lhs.false1927

lor.lhs.false1927:                                ; preds = %if.end1924
  %1387 = load i32, ptr %nextSym, align 4
  %cmp1928 = icmp eq i32 %1387, 1
  br i1 %cmp1928, label %if.then1930, label %if.else2163

if.then1930:                                      ; preds = %lor.lhs.false1927, %if.end1924
  store i32 -1, ptr %es, align 4
  store i32 1, ptr %N, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then1930
  %1388 = load i32, ptr %nextSym, align 4
  %cmp1931 = icmp eq i32 %1388, 0
  br i1 %cmp1931, label %if.then1933, label %if.else1936

if.then1933:                                      ; preds = %do.body
  %1389 = load i32, ptr %es, align 4
  %1390 = load i32, ptr %N, align 4
  %mul1934 = mul nsw i32 1, %1390
  %add1935 = add nsw i32 %1389, %mul1934
  store i32 %add1935, ptr %es, align 4
  br label %if.end1943

if.else1936:                                      ; preds = %do.body
  %1391 = load i32, ptr %nextSym, align 4
  %cmp1937 = icmp eq i32 %1391, 1
  br i1 %cmp1937, label %if.then1939, label %if.end1942

if.then1939:                                      ; preds = %if.else1936
  %1392 = load i32, ptr %es, align 4
  %1393 = load i32, ptr %N, align 4
  %mul1940 = mul nsw i32 2, %1393
  %add1941 = add nsw i32 %1392, %mul1940
  store i32 %add1941, ptr %es, align 4
  br label %if.end1942

if.end1942:                                       ; preds = %if.then1939, %if.else1936
  br label %if.end1943

if.end1943:                                       ; preds = %if.end1942, %if.then1933
  %1394 = load i32, ptr %N, align 4
  %mul1944 = mul nsw i32 %1394, 2
  store i32 %mul1944, ptr %N, align 4
  %1395 = load i32, ptr %groupPos, align 4
  %cmp1945 = icmp eq i32 %1395, 0
  br i1 %cmp1945, label %if.then1947, label %if.end1972

if.then1947:                                      ; preds = %if.end1943
  %1396 = load i32, ptr %groupNo, align 4
  %inc1948 = add nsw i32 %1396, 1
  store i32 %inc1948, ptr %groupNo, align 4
  %1397 = load i32, ptr %groupNo, align 4
  %1398 = load i32, ptr %nSelectors, align 4
  %cmp1949 = icmp sge i32 %1397, %1398
  br i1 %cmp1949, label %if.then1951, label %if.end1952

if.then1951:                                      ; preds = %if.then1947
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1952:                                       ; preds = %if.then1947
  store i32 50, ptr %groupPos, align 4
  %1399 = load ptr, ptr %s.addr, align 8
  %selector1953 = getelementptr inbounds nuw %struct.DState, ptr %1399, i32 0, i32 33
  %1400 = load i32, ptr %groupNo, align 4
  %idxprom1954 = sext i32 %1400 to i64
  %arrayidx1955 = getelementptr inbounds [18002 x i8], ptr %selector1953, i64 0, i64 %idxprom1954
  %1401 = load i8, ptr %arrayidx1955, align 1
  %conv1956 = zext i8 %1401 to i32
  store i32 %conv1956, ptr %gSel, align 4
  %1402 = load ptr, ptr %s.addr, align 8
  %minLens1957 = getelementptr inbounds nuw %struct.DState, ptr %1402, i32 0, i32 39
  %1403 = load i32, ptr %gSel, align 4
  %idxprom1958 = sext i32 %1403 to i64
  %arrayidx1959 = getelementptr inbounds [6 x i32], ptr %minLens1957, i64 0, i64 %idxprom1958
  %1404 = load i32, ptr %arrayidx1959, align 4
  store i32 %1404, ptr %gMinlen, align 4
  %1405 = load ptr, ptr %s.addr, align 8
  %limit1960 = getelementptr inbounds nuw %struct.DState, ptr %1405, i32 0, i32 36
  %1406 = load i32, ptr %gSel, align 4
  %idxprom1961 = sext i32 %1406 to i64
  %arrayidx1962 = getelementptr inbounds [6 x [258 x i32]], ptr %limit1960, i64 0, i64 %idxprom1961
  %arrayidx1963 = getelementptr inbounds [258 x i32], ptr %arrayidx1962, i64 0, i64 0
  store ptr %arrayidx1963, ptr %gLimit, align 8
  %1407 = load ptr, ptr %s.addr, align 8
  %perm1964 = getelementptr inbounds nuw %struct.DState, ptr %1407, i32 0, i32 38
  %1408 = load i32, ptr %gSel, align 4
  %idxprom1965 = sext i32 %1408 to i64
  %arrayidx1966 = getelementptr inbounds [6 x [258 x i32]], ptr %perm1964, i64 0, i64 %idxprom1965
  %arrayidx1967 = getelementptr inbounds [258 x i32], ptr %arrayidx1966, i64 0, i64 0
  store ptr %arrayidx1967, ptr %gPerm, align 8
  %1409 = load ptr, ptr %s.addr, align 8
  %base1968 = getelementptr inbounds nuw %struct.DState, ptr %1409, i32 0, i32 37
  %1410 = load i32, ptr %gSel, align 4
  %idxprom1969 = sext i32 %1410 to i64
  %arrayidx1970 = getelementptr inbounds [6 x [258 x i32]], ptr %base1968, i64 0, i64 %idxprom1969
  %arrayidx1971 = getelementptr inbounds [258 x i32], ptr %arrayidx1970, i64 0, i64 0
  store ptr %arrayidx1971, ptr %gBase, align 8
  br label %if.end1972

if.end1972:                                       ; preds = %if.end1952, %if.end1943
  %1411 = load i32, ptr %groupPos, align 4
  %dec1973 = add nsw i32 %1411, -1
  store i32 %dec1973, ptr %groupPos, align 4
  %1412 = load i32, ptr %gMinlen, align 4
  store i32 %1412, ptr %zn, align 4
  br label %sw.bb1974

sw.bb1974:                                        ; preds = %if.end1972, %if.end
  %1413 = load ptr, ptr %s.addr, align 8
  %state1975 = getelementptr inbounds nuw %struct.DState, ptr %1413, i32 0, i32 1
  store i32 38, ptr %state1975, align 8
  br label %while.body1977

while.body1977:                                   ; preds = %if.end2025, %sw.bb1974
  %1414 = load ptr, ptr %s.addr, align 8
  %bsLive1978 = getelementptr inbounds nuw %struct.DState, ptr %1414, i32 0, i32 8
  %1415 = load i32, ptr %bsLive1978, align 4
  %1416 = load i32, ptr %zn, align 4
  %cmp1979 = icmp sge i32 %1415, %1416
  br i1 %cmp1979, label %if.then1981, label %if.end1992

if.then1981:                                      ; preds = %while.body1977
  %1417 = load ptr, ptr %s.addr, align 8
  %bsBuff1983 = getelementptr inbounds nuw %struct.DState, ptr %1417, i32 0, i32 7
  %1418 = load i32, ptr %bsBuff1983, align 8
  %1419 = load ptr, ptr %s.addr, align 8
  %bsLive1984 = getelementptr inbounds nuw %struct.DState, ptr %1419, i32 0, i32 8
  %1420 = load i32, ptr %bsLive1984, align 4
  %1421 = load i32, ptr %zn, align 4
  %sub1985 = sub nsw i32 %1420, %1421
  %shr1986 = lshr i32 %1418, %sub1985
  %1422 = load i32, ptr %zn, align 4
  %shl1987 = shl i32 1, %1422
  %sub1988 = sub nsw i32 %shl1987, 1
  %and1989 = and i32 %shr1986, %sub1988
  store i32 %and1989, ptr %v1982, align 4
  %1423 = load i32, ptr %zn, align 4
  %1424 = load ptr, ptr %s.addr, align 8
  %bsLive1990 = getelementptr inbounds nuw %struct.DState, ptr %1424, i32 0, i32 8
  %1425 = load i32, ptr %bsLive1990, align 4
  %sub1991 = sub nsw i32 %1425, %1423
  store i32 %sub1991, ptr %bsLive1990, align 4
  %1426 = load i32, ptr %v1982, align 4
  store i32 %1426, ptr %zvec, align 4
  br label %while.end2026

if.end1992:                                       ; preds = %while.body1977
  %1427 = load ptr, ptr %s.addr, align 8
  %strm1993 = getelementptr inbounds nuw %struct.DState, ptr %1427, i32 0, i32 0
  %1428 = load ptr, ptr %strm1993, align 8
  %avail_in1994 = getelementptr inbounds nuw %struct.bz_stream, ptr %1428, i32 0, i32 1
  %1429 = load i32, ptr %avail_in1994, align 8
  %cmp1995 = icmp eq i32 %1429, 0
  br i1 %cmp1995, label %if.then1997, label %if.end1998

if.then1997:                                      ; preds = %if.end1992
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1998:                                       ; preds = %if.end1992
  %1430 = load ptr, ptr %s.addr, align 8
  %bsBuff1999 = getelementptr inbounds nuw %struct.DState, ptr %1430, i32 0, i32 7
  %1431 = load i32, ptr %bsBuff1999, align 8
  %shl2000 = shl i32 %1431, 8
  %1432 = load ptr, ptr %s.addr, align 8
  %strm2001 = getelementptr inbounds nuw %struct.DState, ptr %1432, i32 0, i32 0
  %1433 = load ptr, ptr %strm2001, align 8
  %next_in2002 = getelementptr inbounds nuw %struct.bz_stream, ptr %1433, i32 0, i32 0
  %1434 = load ptr, ptr %next_in2002, align 8
  %1435 = load i8, ptr %1434, align 1
  %conv2003 = zext i8 %1435 to i32
  %or2004 = or i32 %shl2000, %conv2003
  %1436 = load ptr, ptr %s.addr, align 8
  %bsBuff2005 = getelementptr inbounds nuw %struct.DState, ptr %1436, i32 0, i32 7
  store i32 %or2004, ptr %bsBuff2005, align 8
  %1437 = load ptr, ptr %s.addr, align 8
  %bsLive2006 = getelementptr inbounds nuw %struct.DState, ptr %1437, i32 0, i32 8
  %1438 = load i32, ptr %bsLive2006, align 4
  %add2007 = add nsw i32 %1438, 8
  store i32 %add2007, ptr %bsLive2006, align 4
  %1439 = load ptr, ptr %s.addr, align 8
  %strm2008 = getelementptr inbounds nuw %struct.DState, ptr %1439, i32 0, i32 0
  %1440 = load ptr, ptr %strm2008, align 8
  %next_in2009 = getelementptr inbounds nuw %struct.bz_stream, ptr %1440, i32 0, i32 0
  %1441 = load ptr, ptr %next_in2009, align 8
  %incdec.ptr2010 = getelementptr inbounds nuw i8, ptr %1441, i32 1
  store ptr %incdec.ptr2010, ptr %next_in2009, align 8
  %1442 = load ptr, ptr %s.addr, align 8
  %strm2011 = getelementptr inbounds nuw %struct.DState, ptr %1442, i32 0, i32 0
  %1443 = load ptr, ptr %strm2011, align 8
  %avail_in2012 = getelementptr inbounds nuw %struct.bz_stream, ptr %1443, i32 0, i32 1
  %1444 = load i32, ptr %avail_in2012, align 8
  %dec2013 = add i32 %1444, -1
  store i32 %dec2013, ptr %avail_in2012, align 8
  %1445 = load ptr, ptr %s.addr, align 8
  %strm2014 = getelementptr inbounds nuw %struct.DState, ptr %1445, i32 0, i32 0
  %1446 = load ptr, ptr %strm2014, align 8
  %total_in_lo322015 = getelementptr inbounds nuw %struct.bz_stream, ptr %1446, i32 0, i32 2
  %1447 = load i32, ptr %total_in_lo322015, align 4
  %inc2016 = add i32 %1447, 1
  store i32 %inc2016, ptr %total_in_lo322015, align 4
  %1448 = load ptr, ptr %s.addr, align 8
  %strm2017 = getelementptr inbounds nuw %struct.DState, ptr %1448, i32 0, i32 0
  %1449 = load ptr, ptr %strm2017, align 8
  %total_in_lo322018 = getelementptr inbounds nuw %struct.bz_stream, ptr %1449, i32 0, i32 2
  %1450 = load i32, ptr %total_in_lo322018, align 4
  %cmp2019 = icmp eq i32 %1450, 0
  br i1 %cmp2019, label %if.then2021, label %if.end2025

if.then2021:                                      ; preds = %if.end1998
  %1451 = load ptr, ptr %s.addr, align 8
  %strm2022 = getelementptr inbounds nuw %struct.DState, ptr %1451, i32 0, i32 0
  %1452 = load ptr, ptr %strm2022, align 8
  %total_in_hi322023 = getelementptr inbounds nuw %struct.bz_stream, ptr %1452, i32 0, i32 3
  %1453 = load i32, ptr %total_in_hi322023, align 8
  %inc2024 = add i32 %1453, 1
  store i32 %inc2024, ptr %total_in_hi322023, align 8
  br label %if.end2025

if.end2025:                                       ; preds = %if.then2021, %if.end1998
  br label %while.body1977

while.end2026:                                    ; preds = %if.then1981
  br label %while.body2028

while.body2028:                                   ; preds = %while.end2090, %while.end2026
  %1454 = load i32, ptr %zn, align 4
  %cmp2029 = icmp sgt i32 %1454, 20
  br i1 %cmp2029, label %if.then2031, label %if.end2032

if.then2031:                                      ; preds = %while.body2028
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2032:                                       ; preds = %while.body2028
  %1455 = load i32, ptr %zvec, align 4
  %1456 = load ptr, ptr %gLimit, align 8
  %1457 = load i32, ptr %zn, align 4
  %idxprom2033 = sext i32 %1457 to i64
  %arrayidx2034 = getelementptr inbounds i32, ptr %1456, i64 %idxprom2033
  %1458 = load i32, ptr %arrayidx2034, align 4
  %cmp2035 = icmp sle i32 %1455, %1458
  br i1 %cmp2035, label %if.then2037, label %if.end2038

if.then2037:                                      ; preds = %if.end2032
  br label %while.end2093

if.end2038:                                       ; preds = %if.end2032
  %1459 = load i32, ptr %zn, align 4
  %inc2039 = add nsw i32 %1459, 1
  store i32 %inc2039, ptr %zn, align 4
  br label %sw.bb2040

sw.bb2040:                                        ; preds = %if.end2038, %if.end
  %1460 = load ptr, ptr %s.addr, align 8
  %state2041 = getelementptr inbounds nuw %struct.DState, ptr %1460, i32 0, i32 1
  store i32 39, ptr %state2041, align 8
  br label %while.body2043

while.body2043:                                   ; preds = %if.end2089, %sw.bb2040
  %1461 = load ptr, ptr %s.addr, align 8
  %bsLive2044 = getelementptr inbounds nuw %struct.DState, ptr %1461, i32 0, i32 8
  %1462 = load i32, ptr %bsLive2044, align 4
  %cmp2045 = icmp sge i32 %1462, 1
  br i1 %cmp2045, label %if.then2047, label %if.end2056

if.then2047:                                      ; preds = %while.body2043
  %1463 = load ptr, ptr %s.addr, align 8
  %bsBuff2049 = getelementptr inbounds nuw %struct.DState, ptr %1463, i32 0, i32 7
  %1464 = load i32, ptr %bsBuff2049, align 8
  %1465 = load ptr, ptr %s.addr, align 8
  %bsLive2050 = getelementptr inbounds nuw %struct.DState, ptr %1465, i32 0, i32 8
  %1466 = load i32, ptr %bsLive2050, align 4
  %sub2051 = sub nsw i32 %1466, 1
  %shr2052 = lshr i32 %1464, %sub2051
  %and2053 = and i32 %shr2052, 1
  store i32 %and2053, ptr %v2048, align 4
  %1467 = load ptr, ptr %s.addr, align 8
  %bsLive2054 = getelementptr inbounds nuw %struct.DState, ptr %1467, i32 0, i32 8
  %1468 = load i32, ptr %bsLive2054, align 4
  %sub2055 = sub nsw i32 %1468, 1
  store i32 %sub2055, ptr %bsLive2054, align 4
  %1469 = load i32, ptr %v2048, align 4
  store i32 %1469, ptr %zj, align 4
  br label %while.end2090

if.end2056:                                       ; preds = %while.body2043
  %1470 = load ptr, ptr %s.addr, align 8
  %strm2057 = getelementptr inbounds nuw %struct.DState, ptr %1470, i32 0, i32 0
  %1471 = load ptr, ptr %strm2057, align 8
  %avail_in2058 = getelementptr inbounds nuw %struct.bz_stream, ptr %1471, i32 0, i32 1
  %1472 = load i32, ptr %avail_in2058, align 8
  %cmp2059 = icmp eq i32 %1472, 0
  br i1 %cmp2059, label %if.then2061, label %if.end2062

if.then2061:                                      ; preds = %if.end2056
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2062:                                       ; preds = %if.end2056
  %1473 = load ptr, ptr %s.addr, align 8
  %bsBuff2063 = getelementptr inbounds nuw %struct.DState, ptr %1473, i32 0, i32 7
  %1474 = load i32, ptr %bsBuff2063, align 8
  %shl2064 = shl i32 %1474, 8
  %1475 = load ptr, ptr %s.addr, align 8
  %strm2065 = getelementptr inbounds nuw %struct.DState, ptr %1475, i32 0, i32 0
  %1476 = load ptr, ptr %strm2065, align 8
  %next_in2066 = getelementptr inbounds nuw %struct.bz_stream, ptr %1476, i32 0, i32 0
  %1477 = load ptr, ptr %next_in2066, align 8
  %1478 = load i8, ptr %1477, align 1
  %conv2067 = zext i8 %1478 to i32
  %or2068 = or i32 %shl2064, %conv2067
  %1479 = load ptr, ptr %s.addr, align 8
  %bsBuff2069 = getelementptr inbounds nuw %struct.DState, ptr %1479, i32 0, i32 7
  store i32 %or2068, ptr %bsBuff2069, align 8
  %1480 = load ptr, ptr %s.addr, align 8
  %bsLive2070 = getelementptr inbounds nuw %struct.DState, ptr %1480, i32 0, i32 8
  %1481 = load i32, ptr %bsLive2070, align 4
  %add2071 = add nsw i32 %1481, 8
  store i32 %add2071, ptr %bsLive2070, align 4
  %1482 = load ptr, ptr %s.addr, align 8
  %strm2072 = getelementptr inbounds nuw %struct.DState, ptr %1482, i32 0, i32 0
  %1483 = load ptr, ptr %strm2072, align 8
  %next_in2073 = getelementptr inbounds nuw %struct.bz_stream, ptr %1483, i32 0, i32 0
  %1484 = load ptr, ptr %next_in2073, align 8
  %incdec.ptr2074 = getelementptr inbounds nuw i8, ptr %1484, i32 1
  store ptr %incdec.ptr2074, ptr %next_in2073, align 8
  %1485 = load ptr, ptr %s.addr, align 8
  %strm2075 = getelementptr inbounds nuw %struct.DState, ptr %1485, i32 0, i32 0
  %1486 = load ptr, ptr %strm2075, align 8
  %avail_in2076 = getelementptr inbounds nuw %struct.bz_stream, ptr %1486, i32 0, i32 1
  %1487 = load i32, ptr %avail_in2076, align 8
  %dec2077 = add i32 %1487, -1
  store i32 %dec2077, ptr %avail_in2076, align 8
  %1488 = load ptr, ptr %s.addr, align 8
  %strm2078 = getelementptr inbounds nuw %struct.DState, ptr %1488, i32 0, i32 0
  %1489 = load ptr, ptr %strm2078, align 8
  %total_in_lo322079 = getelementptr inbounds nuw %struct.bz_stream, ptr %1489, i32 0, i32 2
  %1490 = load i32, ptr %total_in_lo322079, align 4
  %inc2080 = add i32 %1490, 1
  store i32 %inc2080, ptr %total_in_lo322079, align 4
  %1491 = load ptr, ptr %s.addr, align 8
  %strm2081 = getelementptr inbounds nuw %struct.DState, ptr %1491, i32 0, i32 0
  %1492 = load ptr, ptr %strm2081, align 8
  %total_in_lo322082 = getelementptr inbounds nuw %struct.bz_stream, ptr %1492, i32 0, i32 2
  %1493 = load i32, ptr %total_in_lo322082, align 4
  %cmp2083 = icmp eq i32 %1493, 0
  br i1 %cmp2083, label %if.then2085, label %if.end2089

if.then2085:                                      ; preds = %if.end2062
  %1494 = load ptr, ptr %s.addr, align 8
  %strm2086 = getelementptr inbounds nuw %struct.DState, ptr %1494, i32 0, i32 0
  %1495 = load ptr, ptr %strm2086, align 8
  %total_in_hi322087 = getelementptr inbounds nuw %struct.bz_stream, ptr %1495, i32 0, i32 3
  %1496 = load i32, ptr %total_in_hi322087, align 8
  %inc2088 = add i32 %1496, 1
  store i32 %inc2088, ptr %total_in_hi322087, align 8
  br label %if.end2089

if.end2089:                                       ; preds = %if.then2085, %if.end2062
  br label %while.body2043

while.end2090:                                    ; preds = %if.then2047
  %1497 = load i32, ptr %zvec, align 4
  %shl2091 = shl i32 %1497, 1
  %1498 = load i32, ptr %zj, align 4
  %or2092 = or i32 %shl2091, %1498
  store i32 %or2092, ptr %zvec, align 4
  br label %while.body2028

while.end2093:                                    ; preds = %if.then2037
  %1499 = load i32, ptr %zvec, align 4
  %1500 = load ptr, ptr %gBase, align 8
  %1501 = load i32, ptr %zn, align 4
  %idxprom2094 = sext i32 %1501 to i64
  %arrayidx2095 = getelementptr inbounds i32, ptr %1500, i64 %idxprom2094
  %1502 = load i32, ptr %arrayidx2095, align 4
  %sub2096 = sub nsw i32 %1499, %1502
  %cmp2097 = icmp slt i32 %sub2096, 0
  br i1 %cmp2097, label %if.then2105, label %lor.lhs.false2099

lor.lhs.false2099:                                ; preds = %while.end2093
  %1503 = load i32, ptr %zvec, align 4
  %1504 = load ptr, ptr %gBase, align 8
  %1505 = load i32, ptr %zn, align 4
  %idxprom2100 = sext i32 %1505 to i64
  %arrayidx2101 = getelementptr inbounds i32, ptr %1504, i64 %idxprom2100
  %1506 = load i32, ptr %arrayidx2101, align 4
  %sub2102 = sub nsw i32 %1503, %1506
  %cmp2103 = icmp sge i32 %sub2102, 258
  br i1 %cmp2103, label %if.then2105, label %if.end2106

if.then2105:                                      ; preds = %lor.lhs.false2099, %while.end2093
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2106:                                       ; preds = %lor.lhs.false2099
  %1507 = load ptr, ptr %gPerm, align 8
  %1508 = load i32, ptr %zvec, align 4
  %1509 = load ptr, ptr %gBase, align 8
  %1510 = load i32, ptr %zn, align 4
  %idxprom2107 = sext i32 %1510 to i64
  %arrayidx2108 = getelementptr inbounds i32, ptr %1509, i64 %idxprom2107
  %1511 = load i32, ptr %arrayidx2108, align 4
  %sub2109 = sub nsw i32 %1508, %1511
  %idxprom2110 = sext i32 %sub2109 to i64
  %arrayidx2111 = getelementptr inbounds i32, ptr %1507, i64 %idxprom2110
  %1512 = load i32, ptr %arrayidx2111, align 4
  store i32 %1512, ptr %nextSym, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end2106
  %1513 = load i32, ptr %nextSym, align 4
  %cmp2112 = icmp eq i32 %1513, 0
  br i1 %cmp2112, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %1514 = load i32, ptr %nextSym, align 4
  %cmp2114 = icmp eq i32 %1514, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %1515 = phi i1 [ true, %do.cond ], [ %cmp2114, %lor.rhs ]
  br i1 %1515, label %do.body, label %do.end, !llvm.loop !22

do.end:                                           ; preds = %lor.end
  %1516 = load i32, ptr %es, align 4
  %inc2116 = add nsw i32 %1516, 1
  store i32 %inc2116, ptr %es, align 4
  %1517 = load ptr, ptr %s.addr, align 8
  %seqToUnseq = getelementptr inbounds nuw %struct.DState, ptr %1517, i32 0, i32 30
  %1518 = load ptr, ptr %s.addr, align 8
  %mtfa2117 = getelementptr inbounds nuw %struct.DState, ptr %1518, i32 0, i32 31
  %1519 = load ptr, ptr %s.addr, align 8
  %mtfbase2118 = getelementptr inbounds nuw %struct.DState, ptr %1519, i32 0, i32 32
  %arrayidx2119 = getelementptr inbounds [16 x i32], ptr %mtfbase2118, i64 0, i64 0
  %1520 = load i32, ptr %arrayidx2119, align 4
  %idxprom2120 = sext i32 %1520 to i64
  %arrayidx2121 = getelementptr inbounds [4096 x i8], ptr %mtfa2117, i64 0, i64 %idxprom2120
  %1521 = load i8, ptr %arrayidx2121, align 1
  %idxprom2122 = zext i8 %1521 to i64
  %arrayidx2123 = getelementptr inbounds nuw [256 x i8], ptr %seqToUnseq, i64 0, i64 %idxprom2122
  %1522 = load i8, ptr %arrayidx2123, align 1
  store i8 %1522, ptr %uc, align 1
  %1523 = load i32, ptr %es, align 4
  %1524 = load ptr, ptr %s.addr, align 8
  %unzftab2124 = getelementptr inbounds nuw %struct.DState, ptr %1524, i32 0, i32 16
  %1525 = load i8, ptr %uc, align 1
  %idxprom2125 = zext i8 %1525 to i64
  %arrayidx2126 = getelementptr inbounds nuw [256 x i32], ptr %unzftab2124, i64 0, i64 %idxprom2125
  %1526 = load i32, ptr %arrayidx2126, align 4
  %add2127 = add nsw i32 %1526, %1523
  store i32 %add2127, ptr %arrayidx2126, align 4
  %1527 = load ptr, ptr %s.addr, align 8
  %smallDecompress2128 = getelementptr inbounds nuw %struct.DState, ptr %1527, i32 0, i32 10
  %1528 = load i8, ptr %smallDecompress2128, align 4
  %tobool2129 = icmp ne i8 %1528, 0
  br i1 %tobool2129, label %if.then2130, label %if.else2146

if.then2130:                                      ; preds = %do.end
  br label %while.cond2131

while.cond2131:                                   ; preds = %if.end2138, %if.then2130
  %1529 = load i32, ptr %es, align 4
  %cmp2132 = icmp sgt i32 %1529, 0
  br i1 %cmp2132, label %while.body2134, label %while.end2145

while.body2134:                                   ; preds = %while.cond2131
  %1530 = load i32, ptr %nblock, align 4
  %1531 = load i32, ptr %nblockMAX, align 4
  %cmp2135 = icmp sge i32 %1530, %1531
  br i1 %cmp2135, label %if.then2137, label %if.end2138

if.then2137:                                      ; preds = %while.body2134
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2138:                                       ; preds = %while.body2134
  %1532 = load i8, ptr %uc, align 1
  %conv2139 = zext i8 %1532 to i16
  %1533 = load ptr, ptr %s.addr, align 8
  %ll162140 = getelementptr inbounds nuw %struct.DState, ptr %1533, i32 0, i32 21
  %1534 = load ptr, ptr %ll162140, align 8
  %1535 = load i32, ptr %nblock, align 4
  %idxprom2141 = sext i32 %1535 to i64
  %arrayidx2142 = getelementptr inbounds i16, ptr %1534, i64 %idxprom2141
  store i16 %conv2139, ptr %arrayidx2142, align 2
  %1536 = load i32, ptr %nblock, align 4
  %inc2143 = add nsw i32 %1536, 1
  store i32 %inc2143, ptr %nblock, align 4
  %1537 = load i32, ptr %es, align 4
  %dec2144 = add nsw i32 %1537, -1
  store i32 %dec2144, ptr %es, align 4
  br label %while.cond2131, !llvm.loop !23

while.end2145:                                    ; preds = %while.cond2131
  br label %if.end2162

if.else2146:                                      ; preds = %do.end
  br label %while.cond2147

while.cond2147:                                   ; preds = %if.end2154, %if.else2146
  %1538 = load i32, ptr %es, align 4
  %cmp2148 = icmp sgt i32 %1538, 0
  br i1 %cmp2148, label %while.body2150, label %while.end2161

while.body2150:                                   ; preds = %while.cond2147
  %1539 = load i32, ptr %nblock, align 4
  %1540 = load i32, ptr %nblockMAX, align 4
  %cmp2151 = icmp sge i32 %1539, %1540
  br i1 %cmp2151, label %if.then2153, label %if.end2154

if.then2153:                                      ; preds = %while.body2150
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2154:                                       ; preds = %while.body2150
  %1541 = load i8, ptr %uc, align 1
  %conv2155 = zext i8 %1541 to i32
  %1542 = load ptr, ptr %s.addr, align 8
  %tt2156 = getelementptr inbounds nuw %struct.DState, ptr %1542, i32 0, i32 20
  %1543 = load ptr, ptr %tt2156, align 8
  %1544 = load i32, ptr %nblock, align 4
  %idxprom2157 = sext i32 %1544 to i64
  %arrayidx2158 = getelementptr inbounds i32, ptr %1543, i64 %idxprom2157
  store i32 %conv2155, ptr %arrayidx2158, align 4
  %1545 = load i32, ptr %nblock, align 4
  %inc2159 = add nsw i32 %1545, 1
  store i32 %inc2159, ptr %nblock, align 4
  %1546 = load i32, ptr %es, align 4
  %dec2160 = add nsw i32 %1546, -1
  store i32 %dec2160, ptr %es, align 4
  br label %while.cond2147, !llvm.loop !24

while.end2161:                                    ; preds = %while.cond2147
  br label %if.end2162

if.end2162:                                       ; preds = %while.end2161, %while.end2145
  br label %while.body1920

if.else2163:                                      ; preds = %lor.lhs.false1927
  %1547 = load i32, ptr %nblock, align 4
  %1548 = load i32, ptr %nblockMAX, align 4
  %cmp2164 = icmp sge i32 %1547, %1548
  br i1 %cmp2164, label %if.then2166, label %if.end2167

if.then2166:                                      ; preds = %if.else2163
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2167:                                       ; preds = %if.else2163
  %1549 = load i32, ptr %nextSym, align 4
  %sub2171 = sub nsw i32 %1549, 1
  store i32 %sub2171, ptr %nn, align 4
  %1550 = load i32, ptr %nn, align 4
  %cmp2172 = icmp ult i32 %1550, 16
  br i1 %cmp2172, label %if.then2174, label %if.else2237

if.then2174:                                      ; preds = %if.end2167
  %1551 = load ptr, ptr %s.addr, align 8
  %mtfbase2175 = getelementptr inbounds nuw %struct.DState, ptr %1551, i32 0, i32 32
  %arrayidx2176 = getelementptr inbounds [16 x i32], ptr %mtfbase2175, i64 0, i64 0
  %1552 = load i32, ptr %arrayidx2176, align 4
  store i32 %1552, ptr %pp, align 4
  %1553 = load ptr, ptr %s.addr, align 8
  %mtfa2177 = getelementptr inbounds nuw %struct.DState, ptr %1553, i32 0, i32 31
  %1554 = load i32, ptr %pp, align 4
  %1555 = load i32, ptr %nn, align 4
  %add2178 = add i32 %1554, %1555
  %idxprom2179 = zext i32 %add2178 to i64
  %arrayidx2180 = getelementptr inbounds nuw [4096 x i8], ptr %mtfa2177, i64 0, i64 %idxprom2179
  %1556 = load i8, ptr %arrayidx2180, align 1
  store i8 %1556, ptr %uc, align 1
  br label %while.cond2181

while.cond2181:                                   ; preds = %while.body2184, %if.then2174
  %1557 = load i32, ptr %nn, align 4
  %cmp2182 = icmp ugt i32 %1557, 3
  br i1 %cmp2182, label %while.body2184, label %while.end2218

while.body2184:                                   ; preds = %while.cond2181
  %1558 = load i32, ptr %pp, align 4
  %1559 = load i32, ptr %nn, align 4
  %add2185 = add i32 %1558, %1559
  store i32 %add2185, ptr %z, align 4
  %1560 = load ptr, ptr %s.addr, align 8
  %mtfa2186 = getelementptr inbounds nuw %struct.DState, ptr %1560, i32 0, i32 31
  %1561 = load i32, ptr %z, align 4
  %sub2187 = sub nsw i32 %1561, 1
  %idxprom2188 = sext i32 %sub2187 to i64
  %arrayidx2189 = getelementptr inbounds [4096 x i8], ptr %mtfa2186, i64 0, i64 %idxprom2188
  %1562 = load i8, ptr %arrayidx2189, align 1
  %1563 = load ptr, ptr %s.addr, align 8
  %mtfa2190 = getelementptr inbounds nuw %struct.DState, ptr %1563, i32 0, i32 31
  %1564 = load i32, ptr %z, align 4
  %idxprom2191 = sext i32 %1564 to i64
  %arrayidx2192 = getelementptr inbounds [4096 x i8], ptr %mtfa2190, i64 0, i64 %idxprom2191
  store i8 %1562, ptr %arrayidx2192, align 1
  %1565 = load ptr, ptr %s.addr, align 8
  %mtfa2193 = getelementptr inbounds nuw %struct.DState, ptr %1565, i32 0, i32 31
  %1566 = load i32, ptr %z, align 4
  %sub2194 = sub nsw i32 %1566, 2
  %idxprom2195 = sext i32 %sub2194 to i64
  %arrayidx2196 = getelementptr inbounds [4096 x i8], ptr %mtfa2193, i64 0, i64 %idxprom2195
  %1567 = load i8, ptr %arrayidx2196, align 1
  %1568 = load ptr, ptr %s.addr, align 8
  %mtfa2197 = getelementptr inbounds nuw %struct.DState, ptr %1568, i32 0, i32 31
  %1569 = load i32, ptr %z, align 4
  %sub2198 = sub nsw i32 %1569, 1
  %idxprom2199 = sext i32 %sub2198 to i64
  %arrayidx2200 = getelementptr inbounds [4096 x i8], ptr %mtfa2197, i64 0, i64 %idxprom2199
  store i8 %1567, ptr %arrayidx2200, align 1
  %1570 = load ptr, ptr %s.addr, align 8
  %mtfa2201 = getelementptr inbounds nuw %struct.DState, ptr %1570, i32 0, i32 31
  %1571 = load i32, ptr %z, align 4
  %sub2202 = sub nsw i32 %1571, 3
  %idxprom2203 = sext i32 %sub2202 to i64
  %arrayidx2204 = getelementptr inbounds [4096 x i8], ptr %mtfa2201, i64 0, i64 %idxprom2203
  %1572 = load i8, ptr %arrayidx2204, align 1
  %1573 = load ptr, ptr %s.addr, align 8
  %mtfa2205 = getelementptr inbounds nuw %struct.DState, ptr %1573, i32 0, i32 31
  %1574 = load i32, ptr %z, align 4
  %sub2206 = sub nsw i32 %1574, 2
  %idxprom2207 = sext i32 %sub2206 to i64
  %arrayidx2208 = getelementptr inbounds [4096 x i8], ptr %mtfa2205, i64 0, i64 %idxprom2207
  store i8 %1572, ptr %arrayidx2208, align 1
  %1575 = load ptr, ptr %s.addr, align 8
  %mtfa2209 = getelementptr inbounds nuw %struct.DState, ptr %1575, i32 0, i32 31
  %1576 = load i32, ptr %z, align 4
  %sub2210 = sub nsw i32 %1576, 4
  %idxprom2211 = sext i32 %sub2210 to i64
  %arrayidx2212 = getelementptr inbounds [4096 x i8], ptr %mtfa2209, i64 0, i64 %idxprom2211
  %1577 = load i8, ptr %arrayidx2212, align 1
  %1578 = load ptr, ptr %s.addr, align 8
  %mtfa2213 = getelementptr inbounds nuw %struct.DState, ptr %1578, i32 0, i32 31
  %1579 = load i32, ptr %z, align 4
  %sub2214 = sub nsw i32 %1579, 3
  %idxprom2215 = sext i32 %sub2214 to i64
  %arrayidx2216 = getelementptr inbounds [4096 x i8], ptr %mtfa2213, i64 0, i64 %idxprom2215
  store i8 %1577, ptr %arrayidx2216, align 1
  %1580 = load i32, ptr %nn, align 4
  %sub2217 = sub i32 %1580, 4
  store i32 %sub2217, ptr %nn, align 4
  br label %while.cond2181, !llvm.loop !25

while.end2218:                                    ; preds = %while.cond2181
  br label %while.cond2219

while.cond2219:                                   ; preds = %while.body2222, %while.end2218
  %1581 = load i32, ptr %nn, align 4
  %cmp2220 = icmp ugt i32 %1581, 0
  br i1 %cmp2220, label %while.body2222, label %while.end2233

while.body2222:                                   ; preds = %while.cond2219
  %1582 = load ptr, ptr %s.addr, align 8
  %mtfa2223 = getelementptr inbounds nuw %struct.DState, ptr %1582, i32 0, i32 31
  %1583 = load i32, ptr %pp, align 4
  %1584 = load i32, ptr %nn, align 4
  %add2224 = add i32 %1583, %1584
  %sub2225 = sub i32 %add2224, 1
  %idxprom2226 = zext i32 %sub2225 to i64
  %arrayidx2227 = getelementptr inbounds nuw [4096 x i8], ptr %mtfa2223, i64 0, i64 %idxprom2226
  %1585 = load i8, ptr %arrayidx2227, align 1
  %1586 = load ptr, ptr %s.addr, align 8
  %mtfa2228 = getelementptr inbounds nuw %struct.DState, ptr %1586, i32 0, i32 31
  %1587 = load i32, ptr %pp, align 4
  %1588 = load i32, ptr %nn, align 4
  %add2229 = add i32 %1587, %1588
  %idxprom2230 = zext i32 %add2229 to i64
  %arrayidx2231 = getelementptr inbounds nuw [4096 x i8], ptr %mtfa2228, i64 0, i64 %idxprom2230
  store i8 %1585, ptr %arrayidx2231, align 1
  %1589 = load i32, ptr %nn, align 4
  %dec2232 = add i32 %1589, -1
  store i32 %dec2232, ptr %nn, align 4
  br label %while.cond2219, !llvm.loop !26

while.end2233:                                    ; preds = %while.cond2219
  %1590 = load i8, ptr %uc, align 1
  %1591 = load ptr, ptr %s.addr, align 8
  %mtfa2234 = getelementptr inbounds nuw %struct.DState, ptr %1591, i32 0, i32 31
  %1592 = load i32, ptr %pp, align 4
  %idxprom2235 = sext i32 %1592 to i64
  %arrayidx2236 = getelementptr inbounds [4096 x i8], ptr %mtfa2234, i64 0, i64 %idxprom2235
  store i8 %1590, ptr %arrayidx2236, align 1
  br label %if.end2333

if.else2237:                                      ; preds = %if.end2167
  %1593 = load i32, ptr %nn, align 4
  %div = udiv i32 %1593, 16
  store i32 %div, ptr %lno, align 4
  %1594 = load i32, ptr %nn, align 4
  %rem = urem i32 %1594, 16
  store i32 %rem, ptr %off, align 4
  %1595 = load ptr, ptr %s.addr, align 8
  %mtfbase2238 = getelementptr inbounds nuw %struct.DState, ptr %1595, i32 0, i32 32
  %1596 = load i32, ptr %lno, align 4
  %idxprom2239 = sext i32 %1596 to i64
  %arrayidx2240 = getelementptr inbounds [16 x i32], ptr %mtfbase2238, i64 0, i64 %idxprom2239
  %1597 = load i32, ptr %arrayidx2240, align 4
  %1598 = load i32, ptr %off, align 4
  %add2241 = add nsw i32 %1597, %1598
  store i32 %add2241, ptr %pp, align 4
  %1599 = load ptr, ptr %s.addr, align 8
  %mtfa2242 = getelementptr inbounds nuw %struct.DState, ptr %1599, i32 0, i32 31
  %1600 = load i32, ptr %pp, align 4
  %idxprom2243 = sext i32 %1600 to i64
  %arrayidx2244 = getelementptr inbounds [4096 x i8], ptr %mtfa2242, i64 0, i64 %idxprom2243
  %1601 = load i8, ptr %arrayidx2244, align 1
  store i8 %1601, ptr %uc, align 1
  br label %while.cond2245

while.cond2245:                                   ; preds = %while.body2251, %if.else2237
  %1602 = load i32, ptr %pp, align 4
  %1603 = load ptr, ptr %s.addr, align 8
  %mtfbase2246 = getelementptr inbounds nuw %struct.DState, ptr %1603, i32 0, i32 32
  %1604 = load i32, ptr %lno, align 4
  %idxprom2247 = sext i32 %1604 to i64
  %arrayidx2248 = getelementptr inbounds [16 x i32], ptr %mtfbase2246, i64 0, i64 %idxprom2247
  %1605 = load i32, ptr %arrayidx2248, align 4
  %cmp2249 = icmp sgt i32 %1602, %1605
  br i1 %cmp2249, label %while.body2251, label %while.end2260

while.body2251:                                   ; preds = %while.cond2245
  %1606 = load ptr, ptr %s.addr, align 8
  %mtfa2252 = getelementptr inbounds nuw %struct.DState, ptr %1606, i32 0, i32 31
  %1607 = load i32, ptr %pp, align 4
  %sub2253 = sub nsw i32 %1607, 1
  %idxprom2254 = sext i32 %sub2253 to i64
  %arrayidx2255 = getelementptr inbounds [4096 x i8], ptr %mtfa2252, i64 0, i64 %idxprom2254
  %1608 = load i8, ptr %arrayidx2255, align 1
  %1609 = load ptr, ptr %s.addr, align 8
  %mtfa2256 = getelementptr inbounds nuw %struct.DState, ptr %1609, i32 0, i32 31
  %1610 = load i32, ptr %pp, align 4
  %idxprom2257 = sext i32 %1610 to i64
  %arrayidx2258 = getelementptr inbounds [4096 x i8], ptr %mtfa2256, i64 0, i64 %idxprom2257
  store i8 %1608, ptr %arrayidx2258, align 1
  %1611 = load i32, ptr %pp, align 4
  %dec2259 = add nsw i32 %1611, -1
  store i32 %dec2259, ptr %pp, align 4
  br label %while.cond2245, !llvm.loop !27

while.end2260:                                    ; preds = %while.cond2245
  %1612 = load ptr, ptr %s.addr, align 8
  %mtfbase2261 = getelementptr inbounds nuw %struct.DState, ptr %1612, i32 0, i32 32
  %1613 = load i32, ptr %lno, align 4
  %idxprom2262 = sext i32 %1613 to i64
  %arrayidx2263 = getelementptr inbounds [16 x i32], ptr %mtfbase2261, i64 0, i64 %idxprom2262
  %1614 = load i32, ptr %arrayidx2263, align 4
  %inc2264 = add nsw i32 %1614, 1
  store i32 %inc2264, ptr %arrayidx2263, align 4
  br label %while.cond2265

while.cond2265:                                   ; preds = %while.body2268, %while.end2260
  %1615 = load i32, ptr %lno, align 4
  %cmp2266 = icmp sgt i32 %1615, 0
  br i1 %cmp2266, label %while.body2268, label %while.end2289

while.body2268:                                   ; preds = %while.cond2265
  %1616 = load ptr, ptr %s.addr, align 8
  %mtfbase2269 = getelementptr inbounds nuw %struct.DState, ptr %1616, i32 0, i32 32
  %1617 = load i32, ptr %lno, align 4
  %idxprom2270 = sext i32 %1617 to i64
  %arrayidx2271 = getelementptr inbounds [16 x i32], ptr %mtfbase2269, i64 0, i64 %idxprom2270
  %1618 = load i32, ptr %arrayidx2271, align 4
  %dec2272 = add nsw i32 %1618, -1
  store i32 %dec2272, ptr %arrayidx2271, align 4
  %1619 = load ptr, ptr %s.addr, align 8
  %mtfa2273 = getelementptr inbounds nuw %struct.DState, ptr %1619, i32 0, i32 31
  %1620 = load ptr, ptr %s.addr, align 8
  %mtfbase2274 = getelementptr inbounds nuw %struct.DState, ptr %1620, i32 0, i32 32
  %1621 = load i32, ptr %lno, align 4
  %sub2275 = sub nsw i32 %1621, 1
  %idxprom2276 = sext i32 %sub2275 to i64
  %arrayidx2277 = getelementptr inbounds [16 x i32], ptr %mtfbase2274, i64 0, i64 %idxprom2276
  %1622 = load i32, ptr %arrayidx2277, align 4
  %add2278 = add nsw i32 %1622, 16
  %sub2279 = sub nsw i32 %add2278, 1
  %idxprom2280 = sext i32 %sub2279 to i64
  %arrayidx2281 = getelementptr inbounds [4096 x i8], ptr %mtfa2273, i64 0, i64 %idxprom2280
  %1623 = load i8, ptr %arrayidx2281, align 1
  %1624 = load ptr, ptr %s.addr, align 8
  %mtfa2282 = getelementptr inbounds nuw %struct.DState, ptr %1624, i32 0, i32 31
  %1625 = load ptr, ptr %s.addr, align 8
  %mtfbase2283 = getelementptr inbounds nuw %struct.DState, ptr %1625, i32 0, i32 32
  %1626 = load i32, ptr %lno, align 4
  %idxprom2284 = sext i32 %1626 to i64
  %arrayidx2285 = getelementptr inbounds [16 x i32], ptr %mtfbase2283, i64 0, i64 %idxprom2284
  %1627 = load i32, ptr %arrayidx2285, align 4
  %idxprom2286 = sext i32 %1627 to i64
  %arrayidx2287 = getelementptr inbounds [4096 x i8], ptr %mtfa2282, i64 0, i64 %idxprom2286
  store i8 %1623, ptr %arrayidx2287, align 1
  %1628 = load i32, ptr %lno, align 4
  %dec2288 = add nsw i32 %1628, -1
  store i32 %dec2288, ptr %lno, align 4
  br label %while.cond2265, !llvm.loop !28

while.end2289:                                    ; preds = %while.cond2265
  %1629 = load ptr, ptr %s.addr, align 8
  %mtfbase2290 = getelementptr inbounds nuw %struct.DState, ptr %1629, i32 0, i32 32
  %arrayidx2291 = getelementptr inbounds [16 x i32], ptr %mtfbase2290, i64 0, i64 0
  %1630 = load i32, ptr %arrayidx2291, align 4
  %dec2292 = add nsw i32 %1630, -1
  store i32 %dec2292, ptr %arrayidx2291, align 4
  %1631 = load i8, ptr %uc, align 1
  %1632 = load ptr, ptr %s.addr, align 8
  %mtfa2293 = getelementptr inbounds nuw %struct.DState, ptr %1632, i32 0, i32 31
  %1633 = load ptr, ptr %s.addr, align 8
  %mtfbase2294 = getelementptr inbounds nuw %struct.DState, ptr %1633, i32 0, i32 32
  %arrayidx2295 = getelementptr inbounds [16 x i32], ptr %mtfbase2294, i64 0, i64 0
  %1634 = load i32, ptr %arrayidx2295, align 4
  %idxprom2296 = sext i32 %1634 to i64
  %arrayidx2297 = getelementptr inbounds [4096 x i8], ptr %mtfa2293, i64 0, i64 %idxprom2296
  store i8 %1631, ptr %arrayidx2297, align 1
  %1635 = load ptr, ptr %s.addr, align 8
  %mtfbase2298 = getelementptr inbounds nuw %struct.DState, ptr %1635, i32 0, i32 32
  %arrayidx2299 = getelementptr inbounds [16 x i32], ptr %mtfbase2298, i64 0, i64 0
  %1636 = load i32, ptr %arrayidx2299, align 4
  %cmp2300 = icmp eq i32 %1636, 0
  br i1 %cmp2300, label %if.then2302, label %if.end2332

if.then2302:                                      ; preds = %while.end2289
  store i32 4095, ptr %kk2170, align 4
  store i32 15, ptr %ii2168, align 4
  br label %for.cond2303

for.cond2303:                                     ; preds = %for.inc2329, %if.then2302
  %1637 = load i32, ptr %ii2168, align 4
  %cmp2304 = icmp sge i32 %1637, 0
  br i1 %cmp2304, label %for.body2306, label %for.end2331

for.body2306:                                     ; preds = %for.cond2303
  store i32 15, ptr %jj2169, align 4
  br label %for.cond2307

for.cond2307:                                     ; preds = %for.inc2322, %for.body2306
  %1638 = load i32, ptr %jj2169, align 4
  %cmp2308 = icmp sge i32 %1638, 0
  br i1 %cmp2308, label %for.body2310, label %for.end2324

for.body2310:                                     ; preds = %for.cond2307
  %1639 = load ptr, ptr %s.addr, align 8
  %mtfa2311 = getelementptr inbounds nuw %struct.DState, ptr %1639, i32 0, i32 31
  %1640 = load ptr, ptr %s.addr, align 8
  %mtfbase2312 = getelementptr inbounds nuw %struct.DState, ptr %1640, i32 0, i32 32
  %1641 = load i32, ptr %ii2168, align 4
  %idxprom2313 = sext i32 %1641 to i64
  %arrayidx2314 = getelementptr inbounds [16 x i32], ptr %mtfbase2312, i64 0, i64 %idxprom2313
  %1642 = load i32, ptr %arrayidx2314, align 4
  %1643 = load i32, ptr %jj2169, align 4
  %add2315 = add nsw i32 %1642, %1643
  %idxprom2316 = sext i32 %add2315 to i64
  %arrayidx2317 = getelementptr inbounds [4096 x i8], ptr %mtfa2311, i64 0, i64 %idxprom2316
  %1644 = load i8, ptr %arrayidx2317, align 1
  %1645 = load ptr, ptr %s.addr, align 8
  %mtfa2318 = getelementptr inbounds nuw %struct.DState, ptr %1645, i32 0, i32 31
  %1646 = load i32, ptr %kk2170, align 4
  %idxprom2319 = sext i32 %1646 to i64
  %arrayidx2320 = getelementptr inbounds [4096 x i8], ptr %mtfa2318, i64 0, i64 %idxprom2319
  store i8 %1644, ptr %arrayidx2320, align 1
  %1647 = load i32, ptr %kk2170, align 4
  %dec2321 = add nsw i32 %1647, -1
  store i32 %dec2321, ptr %kk2170, align 4
  br label %for.inc2322

for.inc2322:                                      ; preds = %for.body2310
  %1648 = load i32, ptr %jj2169, align 4
  %dec2323 = add nsw i32 %1648, -1
  store i32 %dec2323, ptr %jj2169, align 4
  br label %for.cond2307, !llvm.loop !29

for.end2324:                                      ; preds = %for.cond2307
  %1649 = load i32, ptr %kk2170, align 4
  %add2325 = add nsw i32 %1649, 1
  %1650 = load ptr, ptr %s.addr, align 8
  %mtfbase2326 = getelementptr inbounds nuw %struct.DState, ptr %1650, i32 0, i32 32
  %1651 = load i32, ptr %ii2168, align 4
  %idxprom2327 = sext i32 %1651 to i64
  %arrayidx2328 = getelementptr inbounds [16 x i32], ptr %mtfbase2326, i64 0, i64 %idxprom2327
  store i32 %add2325, ptr %arrayidx2328, align 4
  br label %for.inc2329

for.inc2329:                                      ; preds = %for.end2324
  %1652 = load i32, ptr %ii2168, align 4
  %dec2330 = add nsw i32 %1652, -1
  store i32 %dec2330, ptr %ii2168, align 4
  br label %for.cond2303, !llvm.loop !30

for.end2331:                                      ; preds = %for.cond2303
  br label %if.end2332

if.end2332:                                       ; preds = %for.end2331, %while.end2289
  br label %if.end2333

if.end2333:                                       ; preds = %if.end2332, %while.end2233
  %1653 = load ptr, ptr %s.addr, align 8
  %unzftab2334 = getelementptr inbounds nuw %struct.DState, ptr %1653, i32 0, i32 16
  %1654 = load ptr, ptr %s.addr, align 8
  %seqToUnseq2335 = getelementptr inbounds nuw %struct.DState, ptr %1654, i32 0, i32 30
  %1655 = load i8, ptr %uc, align 1
  %idxprom2336 = zext i8 %1655 to i64
  %arrayidx2337 = getelementptr inbounds nuw [256 x i8], ptr %seqToUnseq2335, i64 0, i64 %idxprom2336
  %1656 = load i8, ptr %arrayidx2337, align 1
  %idxprom2338 = zext i8 %1656 to i64
  %arrayidx2339 = getelementptr inbounds nuw [256 x i32], ptr %unzftab2334, i64 0, i64 %idxprom2338
  %1657 = load i32, ptr %arrayidx2339, align 4
  %inc2340 = add nsw i32 %1657, 1
  store i32 %inc2340, ptr %arrayidx2339, align 4
  %1658 = load ptr, ptr %s.addr, align 8
  %smallDecompress2341 = getelementptr inbounds nuw %struct.DState, ptr %1658, i32 0, i32 10
  %1659 = load i8, ptr %smallDecompress2341, align 4
  %tobool2342 = icmp ne i8 %1659, 0
  br i1 %tobool2342, label %if.then2343, label %if.else2351

if.then2343:                                      ; preds = %if.end2333
  %1660 = load ptr, ptr %s.addr, align 8
  %seqToUnseq2344 = getelementptr inbounds nuw %struct.DState, ptr %1660, i32 0, i32 30
  %1661 = load i8, ptr %uc, align 1
  %idxprom2345 = zext i8 %1661 to i64
  %arrayidx2346 = getelementptr inbounds nuw [256 x i8], ptr %seqToUnseq2344, i64 0, i64 %idxprom2345
  %1662 = load i8, ptr %arrayidx2346, align 1
  %conv2347 = zext i8 %1662 to i16
  %1663 = load ptr, ptr %s.addr, align 8
  %ll162348 = getelementptr inbounds nuw %struct.DState, ptr %1663, i32 0, i32 21
  %1664 = load ptr, ptr %ll162348, align 8
  %1665 = load i32, ptr %nblock, align 4
  %idxprom2349 = sext i32 %1665 to i64
  %arrayidx2350 = getelementptr inbounds i16, ptr %1664, i64 %idxprom2349
  store i16 %conv2347, ptr %arrayidx2350, align 2
  br label %if.end2359

if.else2351:                                      ; preds = %if.end2333
  %1666 = load ptr, ptr %s.addr, align 8
  %seqToUnseq2352 = getelementptr inbounds nuw %struct.DState, ptr %1666, i32 0, i32 30
  %1667 = load i8, ptr %uc, align 1
  %idxprom2353 = zext i8 %1667 to i64
  %arrayidx2354 = getelementptr inbounds nuw [256 x i8], ptr %seqToUnseq2352, i64 0, i64 %idxprom2353
  %1668 = load i8, ptr %arrayidx2354, align 1
  %conv2355 = zext i8 %1668 to i32
  %1669 = load ptr, ptr %s.addr, align 8
  %tt2356 = getelementptr inbounds nuw %struct.DState, ptr %1669, i32 0, i32 20
  %1670 = load ptr, ptr %tt2356, align 8
  %1671 = load i32, ptr %nblock, align 4
  %idxprom2357 = sext i32 %1671 to i64
  %arrayidx2358 = getelementptr inbounds i32, ptr %1670, i64 %idxprom2357
  store i32 %conv2355, ptr %arrayidx2358, align 4
  br label %if.end2359

if.end2359:                                       ; preds = %if.else2351, %if.then2343
  %1672 = load i32, ptr %nblock, align 4
  %inc2360 = add nsw i32 %1672, 1
  store i32 %inc2360, ptr %nblock, align 4
  %1673 = load i32, ptr %groupPos, align 4
  %cmp2361 = icmp eq i32 %1673, 0
  br i1 %cmp2361, label %if.then2363, label %if.end2388

if.then2363:                                      ; preds = %if.end2359
  %1674 = load i32, ptr %groupNo, align 4
  %inc2364 = add nsw i32 %1674, 1
  store i32 %inc2364, ptr %groupNo, align 4
  %1675 = load i32, ptr %groupNo, align 4
  %1676 = load i32, ptr %nSelectors, align 4
  %cmp2365 = icmp sge i32 %1675, %1676
  br i1 %cmp2365, label %if.then2367, label %if.end2368

if.then2367:                                      ; preds = %if.then2363
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2368:                                       ; preds = %if.then2363
  store i32 50, ptr %groupPos, align 4
  %1677 = load ptr, ptr %s.addr, align 8
  %selector2369 = getelementptr inbounds nuw %struct.DState, ptr %1677, i32 0, i32 33
  %1678 = load i32, ptr %groupNo, align 4
  %idxprom2370 = sext i32 %1678 to i64
  %arrayidx2371 = getelementptr inbounds [18002 x i8], ptr %selector2369, i64 0, i64 %idxprom2370
  %1679 = load i8, ptr %arrayidx2371, align 1
  %conv2372 = zext i8 %1679 to i32
  store i32 %conv2372, ptr %gSel, align 4
  %1680 = load ptr, ptr %s.addr, align 8
  %minLens2373 = getelementptr inbounds nuw %struct.DState, ptr %1680, i32 0, i32 39
  %1681 = load i32, ptr %gSel, align 4
  %idxprom2374 = sext i32 %1681 to i64
  %arrayidx2375 = getelementptr inbounds [6 x i32], ptr %minLens2373, i64 0, i64 %idxprom2374
  %1682 = load i32, ptr %arrayidx2375, align 4
  store i32 %1682, ptr %gMinlen, align 4
  %1683 = load ptr, ptr %s.addr, align 8
  %limit2376 = getelementptr inbounds nuw %struct.DState, ptr %1683, i32 0, i32 36
  %1684 = load i32, ptr %gSel, align 4
  %idxprom2377 = sext i32 %1684 to i64
  %arrayidx2378 = getelementptr inbounds [6 x [258 x i32]], ptr %limit2376, i64 0, i64 %idxprom2377
  %arrayidx2379 = getelementptr inbounds [258 x i32], ptr %arrayidx2378, i64 0, i64 0
  store ptr %arrayidx2379, ptr %gLimit, align 8
  %1685 = load ptr, ptr %s.addr, align 8
  %perm2380 = getelementptr inbounds nuw %struct.DState, ptr %1685, i32 0, i32 38
  %1686 = load i32, ptr %gSel, align 4
  %idxprom2381 = sext i32 %1686 to i64
  %arrayidx2382 = getelementptr inbounds [6 x [258 x i32]], ptr %perm2380, i64 0, i64 %idxprom2381
  %arrayidx2383 = getelementptr inbounds [258 x i32], ptr %arrayidx2382, i64 0, i64 0
  store ptr %arrayidx2383, ptr %gPerm, align 8
  %1687 = load ptr, ptr %s.addr, align 8
  %base2384 = getelementptr inbounds nuw %struct.DState, ptr %1687, i32 0, i32 37
  %1688 = load i32, ptr %gSel, align 4
  %idxprom2385 = sext i32 %1688 to i64
  %arrayidx2386 = getelementptr inbounds [6 x [258 x i32]], ptr %base2384, i64 0, i64 %idxprom2385
  %arrayidx2387 = getelementptr inbounds [258 x i32], ptr %arrayidx2386, i64 0, i64 0
  store ptr %arrayidx2387, ptr %gBase, align 8
  br label %if.end2388

if.end2388:                                       ; preds = %if.end2368, %if.end2359
  %1689 = load i32, ptr %groupPos, align 4
  %dec2389 = add nsw i32 %1689, -1
  store i32 %dec2389, ptr %groupPos, align 4
  %1690 = load i32, ptr %gMinlen, align 4
  store i32 %1690, ptr %zn, align 4
  br label %sw.bb2390

sw.bb2390:                                        ; preds = %if.end2388, %if.end
  %1691 = load ptr, ptr %s.addr, align 8
  %state2391 = getelementptr inbounds nuw %struct.DState, ptr %1691, i32 0, i32 1
  store i32 40, ptr %state2391, align 8
  br label %while.body2393

while.body2393:                                   ; preds = %if.end2441, %sw.bb2390
  %1692 = load ptr, ptr %s.addr, align 8
  %bsLive2394 = getelementptr inbounds nuw %struct.DState, ptr %1692, i32 0, i32 8
  %1693 = load i32, ptr %bsLive2394, align 4
  %1694 = load i32, ptr %zn, align 4
  %cmp2395 = icmp sge i32 %1693, %1694
  br i1 %cmp2395, label %if.then2397, label %if.end2408

if.then2397:                                      ; preds = %while.body2393
  %1695 = load ptr, ptr %s.addr, align 8
  %bsBuff2399 = getelementptr inbounds nuw %struct.DState, ptr %1695, i32 0, i32 7
  %1696 = load i32, ptr %bsBuff2399, align 8
  %1697 = load ptr, ptr %s.addr, align 8
  %bsLive2400 = getelementptr inbounds nuw %struct.DState, ptr %1697, i32 0, i32 8
  %1698 = load i32, ptr %bsLive2400, align 4
  %1699 = load i32, ptr %zn, align 4
  %sub2401 = sub nsw i32 %1698, %1699
  %shr2402 = lshr i32 %1696, %sub2401
  %1700 = load i32, ptr %zn, align 4
  %shl2403 = shl i32 1, %1700
  %sub2404 = sub nsw i32 %shl2403, 1
  %and2405 = and i32 %shr2402, %sub2404
  store i32 %and2405, ptr %v2398, align 4
  %1701 = load i32, ptr %zn, align 4
  %1702 = load ptr, ptr %s.addr, align 8
  %bsLive2406 = getelementptr inbounds nuw %struct.DState, ptr %1702, i32 0, i32 8
  %1703 = load i32, ptr %bsLive2406, align 4
  %sub2407 = sub nsw i32 %1703, %1701
  store i32 %sub2407, ptr %bsLive2406, align 4
  %1704 = load i32, ptr %v2398, align 4
  store i32 %1704, ptr %zvec, align 4
  br label %while.end2442

if.end2408:                                       ; preds = %while.body2393
  %1705 = load ptr, ptr %s.addr, align 8
  %strm2409 = getelementptr inbounds nuw %struct.DState, ptr %1705, i32 0, i32 0
  %1706 = load ptr, ptr %strm2409, align 8
  %avail_in2410 = getelementptr inbounds nuw %struct.bz_stream, ptr %1706, i32 0, i32 1
  %1707 = load i32, ptr %avail_in2410, align 8
  %cmp2411 = icmp eq i32 %1707, 0
  br i1 %cmp2411, label %if.then2413, label %if.end2414

if.then2413:                                      ; preds = %if.end2408
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2414:                                       ; preds = %if.end2408
  %1708 = load ptr, ptr %s.addr, align 8
  %bsBuff2415 = getelementptr inbounds nuw %struct.DState, ptr %1708, i32 0, i32 7
  %1709 = load i32, ptr %bsBuff2415, align 8
  %shl2416 = shl i32 %1709, 8
  %1710 = load ptr, ptr %s.addr, align 8
  %strm2417 = getelementptr inbounds nuw %struct.DState, ptr %1710, i32 0, i32 0
  %1711 = load ptr, ptr %strm2417, align 8
  %next_in2418 = getelementptr inbounds nuw %struct.bz_stream, ptr %1711, i32 0, i32 0
  %1712 = load ptr, ptr %next_in2418, align 8
  %1713 = load i8, ptr %1712, align 1
  %conv2419 = zext i8 %1713 to i32
  %or2420 = or i32 %shl2416, %conv2419
  %1714 = load ptr, ptr %s.addr, align 8
  %bsBuff2421 = getelementptr inbounds nuw %struct.DState, ptr %1714, i32 0, i32 7
  store i32 %or2420, ptr %bsBuff2421, align 8
  %1715 = load ptr, ptr %s.addr, align 8
  %bsLive2422 = getelementptr inbounds nuw %struct.DState, ptr %1715, i32 0, i32 8
  %1716 = load i32, ptr %bsLive2422, align 4
  %add2423 = add nsw i32 %1716, 8
  store i32 %add2423, ptr %bsLive2422, align 4
  %1717 = load ptr, ptr %s.addr, align 8
  %strm2424 = getelementptr inbounds nuw %struct.DState, ptr %1717, i32 0, i32 0
  %1718 = load ptr, ptr %strm2424, align 8
  %next_in2425 = getelementptr inbounds nuw %struct.bz_stream, ptr %1718, i32 0, i32 0
  %1719 = load ptr, ptr %next_in2425, align 8
  %incdec.ptr2426 = getelementptr inbounds nuw i8, ptr %1719, i32 1
  store ptr %incdec.ptr2426, ptr %next_in2425, align 8
  %1720 = load ptr, ptr %s.addr, align 8
  %strm2427 = getelementptr inbounds nuw %struct.DState, ptr %1720, i32 0, i32 0
  %1721 = load ptr, ptr %strm2427, align 8
  %avail_in2428 = getelementptr inbounds nuw %struct.bz_stream, ptr %1721, i32 0, i32 1
  %1722 = load i32, ptr %avail_in2428, align 8
  %dec2429 = add i32 %1722, -1
  store i32 %dec2429, ptr %avail_in2428, align 8
  %1723 = load ptr, ptr %s.addr, align 8
  %strm2430 = getelementptr inbounds nuw %struct.DState, ptr %1723, i32 0, i32 0
  %1724 = load ptr, ptr %strm2430, align 8
  %total_in_lo322431 = getelementptr inbounds nuw %struct.bz_stream, ptr %1724, i32 0, i32 2
  %1725 = load i32, ptr %total_in_lo322431, align 4
  %inc2432 = add i32 %1725, 1
  store i32 %inc2432, ptr %total_in_lo322431, align 4
  %1726 = load ptr, ptr %s.addr, align 8
  %strm2433 = getelementptr inbounds nuw %struct.DState, ptr %1726, i32 0, i32 0
  %1727 = load ptr, ptr %strm2433, align 8
  %total_in_lo322434 = getelementptr inbounds nuw %struct.bz_stream, ptr %1727, i32 0, i32 2
  %1728 = load i32, ptr %total_in_lo322434, align 4
  %cmp2435 = icmp eq i32 %1728, 0
  br i1 %cmp2435, label %if.then2437, label %if.end2441

if.then2437:                                      ; preds = %if.end2414
  %1729 = load ptr, ptr %s.addr, align 8
  %strm2438 = getelementptr inbounds nuw %struct.DState, ptr %1729, i32 0, i32 0
  %1730 = load ptr, ptr %strm2438, align 8
  %total_in_hi322439 = getelementptr inbounds nuw %struct.bz_stream, ptr %1730, i32 0, i32 3
  %1731 = load i32, ptr %total_in_hi322439, align 8
  %inc2440 = add i32 %1731, 1
  store i32 %inc2440, ptr %total_in_hi322439, align 8
  br label %if.end2441

if.end2441:                                       ; preds = %if.then2437, %if.end2414
  br label %while.body2393

while.end2442:                                    ; preds = %if.then2397
  br label %while.body2444

while.body2444:                                   ; preds = %while.end2506, %while.end2442
  %1732 = load i32, ptr %zn, align 4
  %cmp2445 = icmp sgt i32 %1732, 20
  br i1 %cmp2445, label %if.then2447, label %if.end2448

if.then2447:                                      ; preds = %while.body2444
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2448:                                       ; preds = %while.body2444
  %1733 = load i32, ptr %zvec, align 4
  %1734 = load ptr, ptr %gLimit, align 8
  %1735 = load i32, ptr %zn, align 4
  %idxprom2449 = sext i32 %1735 to i64
  %arrayidx2450 = getelementptr inbounds i32, ptr %1734, i64 %idxprom2449
  %1736 = load i32, ptr %arrayidx2450, align 4
  %cmp2451 = icmp sle i32 %1733, %1736
  br i1 %cmp2451, label %if.then2453, label %if.end2454

if.then2453:                                      ; preds = %if.end2448
  br label %while.end2509

if.end2454:                                       ; preds = %if.end2448
  %1737 = load i32, ptr %zn, align 4
  %inc2455 = add nsw i32 %1737, 1
  store i32 %inc2455, ptr %zn, align 4
  br label %sw.bb2456

sw.bb2456:                                        ; preds = %if.end2454, %if.end
  %1738 = load ptr, ptr %s.addr, align 8
  %state2457 = getelementptr inbounds nuw %struct.DState, ptr %1738, i32 0, i32 1
  store i32 41, ptr %state2457, align 8
  br label %while.body2459

while.body2459:                                   ; preds = %if.end2505, %sw.bb2456
  %1739 = load ptr, ptr %s.addr, align 8
  %bsLive2460 = getelementptr inbounds nuw %struct.DState, ptr %1739, i32 0, i32 8
  %1740 = load i32, ptr %bsLive2460, align 4
  %cmp2461 = icmp sge i32 %1740, 1
  br i1 %cmp2461, label %if.then2463, label %if.end2472

if.then2463:                                      ; preds = %while.body2459
  %1741 = load ptr, ptr %s.addr, align 8
  %bsBuff2465 = getelementptr inbounds nuw %struct.DState, ptr %1741, i32 0, i32 7
  %1742 = load i32, ptr %bsBuff2465, align 8
  %1743 = load ptr, ptr %s.addr, align 8
  %bsLive2466 = getelementptr inbounds nuw %struct.DState, ptr %1743, i32 0, i32 8
  %1744 = load i32, ptr %bsLive2466, align 4
  %sub2467 = sub nsw i32 %1744, 1
  %shr2468 = lshr i32 %1742, %sub2467
  %and2469 = and i32 %shr2468, 1
  store i32 %and2469, ptr %v2464, align 4
  %1745 = load ptr, ptr %s.addr, align 8
  %bsLive2470 = getelementptr inbounds nuw %struct.DState, ptr %1745, i32 0, i32 8
  %1746 = load i32, ptr %bsLive2470, align 4
  %sub2471 = sub nsw i32 %1746, 1
  store i32 %sub2471, ptr %bsLive2470, align 4
  %1747 = load i32, ptr %v2464, align 4
  store i32 %1747, ptr %zj, align 4
  br label %while.end2506

if.end2472:                                       ; preds = %while.body2459
  %1748 = load ptr, ptr %s.addr, align 8
  %strm2473 = getelementptr inbounds nuw %struct.DState, ptr %1748, i32 0, i32 0
  %1749 = load ptr, ptr %strm2473, align 8
  %avail_in2474 = getelementptr inbounds nuw %struct.bz_stream, ptr %1749, i32 0, i32 1
  %1750 = load i32, ptr %avail_in2474, align 8
  %cmp2475 = icmp eq i32 %1750, 0
  br i1 %cmp2475, label %if.then2477, label %if.end2478

if.then2477:                                      ; preds = %if.end2472
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2478:                                       ; preds = %if.end2472
  %1751 = load ptr, ptr %s.addr, align 8
  %bsBuff2479 = getelementptr inbounds nuw %struct.DState, ptr %1751, i32 0, i32 7
  %1752 = load i32, ptr %bsBuff2479, align 8
  %shl2480 = shl i32 %1752, 8
  %1753 = load ptr, ptr %s.addr, align 8
  %strm2481 = getelementptr inbounds nuw %struct.DState, ptr %1753, i32 0, i32 0
  %1754 = load ptr, ptr %strm2481, align 8
  %next_in2482 = getelementptr inbounds nuw %struct.bz_stream, ptr %1754, i32 0, i32 0
  %1755 = load ptr, ptr %next_in2482, align 8
  %1756 = load i8, ptr %1755, align 1
  %conv2483 = zext i8 %1756 to i32
  %or2484 = or i32 %shl2480, %conv2483
  %1757 = load ptr, ptr %s.addr, align 8
  %bsBuff2485 = getelementptr inbounds nuw %struct.DState, ptr %1757, i32 0, i32 7
  store i32 %or2484, ptr %bsBuff2485, align 8
  %1758 = load ptr, ptr %s.addr, align 8
  %bsLive2486 = getelementptr inbounds nuw %struct.DState, ptr %1758, i32 0, i32 8
  %1759 = load i32, ptr %bsLive2486, align 4
  %add2487 = add nsw i32 %1759, 8
  store i32 %add2487, ptr %bsLive2486, align 4
  %1760 = load ptr, ptr %s.addr, align 8
  %strm2488 = getelementptr inbounds nuw %struct.DState, ptr %1760, i32 0, i32 0
  %1761 = load ptr, ptr %strm2488, align 8
  %next_in2489 = getelementptr inbounds nuw %struct.bz_stream, ptr %1761, i32 0, i32 0
  %1762 = load ptr, ptr %next_in2489, align 8
  %incdec.ptr2490 = getelementptr inbounds nuw i8, ptr %1762, i32 1
  store ptr %incdec.ptr2490, ptr %next_in2489, align 8
  %1763 = load ptr, ptr %s.addr, align 8
  %strm2491 = getelementptr inbounds nuw %struct.DState, ptr %1763, i32 0, i32 0
  %1764 = load ptr, ptr %strm2491, align 8
  %avail_in2492 = getelementptr inbounds nuw %struct.bz_stream, ptr %1764, i32 0, i32 1
  %1765 = load i32, ptr %avail_in2492, align 8
  %dec2493 = add i32 %1765, -1
  store i32 %dec2493, ptr %avail_in2492, align 8
  %1766 = load ptr, ptr %s.addr, align 8
  %strm2494 = getelementptr inbounds nuw %struct.DState, ptr %1766, i32 0, i32 0
  %1767 = load ptr, ptr %strm2494, align 8
  %total_in_lo322495 = getelementptr inbounds nuw %struct.bz_stream, ptr %1767, i32 0, i32 2
  %1768 = load i32, ptr %total_in_lo322495, align 4
  %inc2496 = add i32 %1768, 1
  store i32 %inc2496, ptr %total_in_lo322495, align 4
  %1769 = load ptr, ptr %s.addr, align 8
  %strm2497 = getelementptr inbounds nuw %struct.DState, ptr %1769, i32 0, i32 0
  %1770 = load ptr, ptr %strm2497, align 8
  %total_in_lo322498 = getelementptr inbounds nuw %struct.bz_stream, ptr %1770, i32 0, i32 2
  %1771 = load i32, ptr %total_in_lo322498, align 4
  %cmp2499 = icmp eq i32 %1771, 0
  br i1 %cmp2499, label %if.then2501, label %if.end2505

if.then2501:                                      ; preds = %if.end2478
  %1772 = load ptr, ptr %s.addr, align 8
  %strm2502 = getelementptr inbounds nuw %struct.DState, ptr %1772, i32 0, i32 0
  %1773 = load ptr, ptr %strm2502, align 8
  %total_in_hi322503 = getelementptr inbounds nuw %struct.bz_stream, ptr %1773, i32 0, i32 3
  %1774 = load i32, ptr %total_in_hi322503, align 8
  %inc2504 = add i32 %1774, 1
  store i32 %inc2504, ptr %total_in_hi322503, align 8
  br label %if.end2505

if.end2505:                                       ; preds = %if.then2501, %if.end2478
  br label %while.body2459

while.end2506:                                    ; preds = %if.then2463
  %1775 = load i32, ptr %zvec, align 4
  %shl2507 = shl i32 %1775, 1
  %1776 = load i32, ptr %zj, align 4
  %or2508 = or i32 %shl2507, %1776
  store i32 %or2508, ptr %zvec, align 4
  br label %while.body2444

while.end2509:                                    ; preds = %if.then2453
  %1777 = load i32, ptr %zvec, align 4
  %1778 = load ptr, ptr %gBase, align 8
  %1779 = load i32, ptr %zn, align 4
  %idxprom2510 = sext i32 %1779 to i64
  %arrayidx2511 = getelementptr inbounds i32, ptr %1778, i64 %idxprom2510
  %1780 = load i32, ptr %arrayidx2511, align 4
  %sub2512 = sub nsw i32 %1777, %1780
  %cmp2513 = icmp slt i32 %sub2512, 0
  br i1 %cmp2513, label %if.then2521, label %lor.lhs.false2515

lor.lhs.false2515:                                ; preds = %while.end2509
  %1781 = load i32, ptr %zvec, align 4
  %1782 = load ptr, ptr %gBase, align 8
  %1783 = load i32, ptr %zn, align 4
  %idxprom2516 = sext i32 %1783 to i64
  %arrayidx2517 = getelementptr inbounds i32, ptr %1782, i64 %idxprom2516
  %1784 = load i32, ptr %arrayidx2517, align 4
  %sub2518 = sub nsw i32 %1781, %1784
  %cmp2519 = icmp sge i32 %sub2518, 258
  br i1 %cmp2519, label %if.then2521, label %if.end2522

if.then2521:                                      ; preds = %lor.lhs.false2515, %while.end2509
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2522:                                       ; preds = %lor.lhs.false2515
  %1785 = load ptr, ptr %gPerm, align 8
  %1786 = load i32, ptr %zvec, align 4
  %1787 = load ptr, ptr %gBase, align 8
  %1788 = load i32, ptr %zn, align 4
  %idxprom2523 = sext i32 %1788 to i64
  %arrayidx2524 = getelementptr inbounds i32, ptr %1787, i64 %idxprom2523
  %1789 = load i32, ptr %arrayidx2524, align 4
  %sub2525 = sub nsw i32 %1786, %1789
  %idxprom2526 = sext i32 %sub2525 to i64
  %arrayidx2527 = getelementptr inbounds i32, ptr %1785, i64 %idxprom2526
  %1790 = load i32, ptr %arrayidx2527, align 4
  store i32 %1790, ptr %nextSym, align 4
  br label %while.body1920

while.end2528:                                    ; preds = %if.then1923
  %1791 = load ptr, ptr %s.addr, align 8
  %origPtr2529 = getelementptr inbounds nuw %struct.DState, ptr %1791, i32 0, i32 13
  %1792 = load i32, ptr %origPtr2529, align 8
  %cmp2530 = icmp slt i32 %1792, 0
  br i1 %cmp2530, label %if.then2536, label %lor.lhs.false2532

lor.lhs.false2532:                                ; preds = %while.end2528
  %1793 = load ptr, ptr %s.addr, align 8
  %origPtr2533 = getelementptr inbounds nuw %struct.DState, ptr %1793, i32 0, i32 13
  %1794 = load i32, ptr %origPtr2533, align 8
  %1795 = load i32, ptr %nblock, align 4
  %cmp2534 = icmp sge i32 %1794, %1795
  br i1 %cmp2534, label %if.then2536, label %if.end2537

if.then2536:                                      ; preds = %lor.lhs.false2532, %while.end2528
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2537:                                       ; preds = %lor.lhs.false2532
  %1796 = load ptr, ptr %s.addr, align 8
  %state_out_len = getelementptr inbounds nuw %struct.DState, ptr %1796, i32 0, i32 3
  store i32 0, ptr %state_out_len, align 8
  %1797 = load ptr, ptr %s.addr, align 8
  %state_out_ch = getelementptr inbounds nuw %struct.DState, ptr %1797, i32 0, i32 2
  store i8 0, ptr %state_out_ch, align 4
  %1798 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds nuw %struct.DState, ptr %1798, i32 0, i32 25
  store i32 -1, ptr %calculatedBlockCRC, align 8
  %1799 = load ptr, ptr %s.addr, align 8
  %state2538 = getelementptr inbounds nuw %struct.DState, ptr %1799, i32 0, i32 1
  store i32 2, ptr %state2538, align 8
  %1800 = load ptr, ptr %s.addr, align 8
  %verbosity2539 = getelementptr inbounds nuw %struct.DState, ptr %1800, i32 0, i32 12
  %1801 = load i32, ptr %verbosity2539, align 4
  %cmp2540 = icmp sge i32 %1801, 2
  br i1 %cmp2540, label %if.then2542, label %if.end2544

if.then2542:                                      ; preds = %if.end2537
  %1802 = load ptr, ptr @stderr, align 8
  %call2543 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1802, ptr noundef @.str.5) #2
  br label %if.end2544

if.end2544:                                       ; preds = %if.then2542, %if.end2537
  %1803 = load ptr, ptr %s.addr, align 8
  %cftab = getelementptr inbounds nuw %struct.DState, ptr %1803, i32 0, i32 18
  %arrayidx2545 = getelementptr inbounds [257 x i32], ptr %cftab, i64 0, i64 0
  store i32 0, ptr %arrayidx2545, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond2546

for.cond2546:                                     ; preds = %for.inc2557, %if.end2544
  %1804 = load i32, ptr %i, align 4
  %cmp2547 = icmp sle i32 %1804, 256
  br i1 %cmp2547, label %for.body2549, label %for.end2559

for.body2549:                                     ; preds = %for.cond2546
  %1805 = load ptr, ptr %s.addr, align 8
  %unzftab2550 = getelementptr inbounds nuw %struct.DState, ptr %1805, i32 0, i32 16
  %1806 = load i32, ptr %i, align 4
  %sub2551 = sub nsw i32 %1806, 1
  %idxprom2552 = sext i32 %sub2551 to i64
  %arrayidx2553 = getelementptr inbounds [256 x i32], ptr %unzftab2550, i64 0, i64 %idxprom2552
  %1807 = load i32, ptr %arrayidx2553, align 4
  %1808 = load ptr, ptr %s.addr, align 8
  %cftab2554 = getelementptr inbounds nuw %struct.DState, ptr %1808, i32 0, i32 18
  %1809 = load i32, ptr %i, align 4
  %idxprom2555 = sext i32 %1809 to i64
  %arrayidx2556 = getelementptr inbounds [257 x i32], ptr %cftab2554, i64 0, i64 %idxprom2555
  store i32 %1807, ptr %arrayidx2556, align 4
  br label %for.inc2557

for.inc2557:                                      ; preds = %for.body2549
  %1810 = load i32, ptr %i, align 4
  %inc2558 = add nsw i32 %1810, 1
  store i32 %inc2558, ptr %i, align 4
  br label %for.cond2546, !llvm.loop !31

for.end2559:                                      ; preds = %for.cond2546
  store i32 1, ptr %i, align 4
  br label %for.cond2560

for.cond2560:                                     ; preds = %for.inc2572, %for.end2559
  %1811 = load i32, ptr %i, align 4
  %cmp2561 = icmp sle i32 %1811, 256
  br i1 %cmp2561, label %for.body2563, label %for.end2574

for.body2563:                                     ; preds = %for.cond2560
  %1812 = load ptr, ptr %s.addr, align 8
  %cftab2564 = getelementptr inbounds nuw %struct.DState, ptr %1812, i32 0, i32 18
  %1813 = load i32, ptr %i, align 4
  %sub2565 = sub nsw i32 %1813, 1
  %idxprom2566 = sext i32 %sub2565 to i64
  %arrayidx2567 = getelementptr inbounds [257 x i32], ptr %cftab2564, i64 0, i64 %idxprom2566
  %1814 = load i32, ptr %arrayidx2567, align 4
  %1815 = load ptr, ptr %s.addr, align 8
  %cftab2568 = getelementptr inbounds nuw %struct.DState, ptr %1815, i32 0, i32 18
  %1816 = load i32, ptr %i, align 4
  %idxprom2569 = sext i32 %1816 to i64
  %arrayidx2570 = getelementptr inbounds [257 x i32], ptr %cftab2568, i64 0, i64 %idxprom2569
  %1817 = load i32, ptr %arrayidx2570, align 4
  %add2571 = add nsw i32 %1817, %1814
  store i32 %add2571, ptr %arrayidx2570, align 4
  br label %for.inc2572

for.inc2572:                                      ; preds = %for.body2563
  %1818 = load i32, ptr %i, align 4
  %inc2573 = add nsw i32 %1818, 1
  store i32 %inc2573, ptr %i, align 4
  br label %for.cond2560, !llvm.loop !32

for.end2574:                                      ; preds = %for.cond2560
  %1819 = load ptr, ptr %s.addr, align 8
  %smallDecompress2575 = getelementptr inbounds nuw %struct.DState, ptr %1819, i32 0, i32 10
  %1820 = load i8, ptr %smallDecompress2575, align 4
  %tobool2576 = icmp ne i8 %1820, 0
  br i1 %tobool2576, label %if.then2577, label %if.else2807

if.then2577:                                      ; preds = %for.end2574
  store i32 0, ptr %i, align 4
  br label %for.cond2578

for.cond2578:                                     ; preds = %for.inc2587, %if.then2577
  %1821 = load i32, ptr %i, align 4
  %cmp2579 = icmp sle i32 %1821, 256
  br i1 %cmp2579, label %for.body2581, label %for.end2589

for.body2581:                                     ; preds = %for.cond2578
  %1822 = load ptr, ptr %s.addr, align 8
  %cftab2582 = getelementptr inbounds nuw %struct.DState, ptr %1822, i32 0, i32 18
  %1823 = load i32, ptr %i, align 4
  %idxprom2583 = sext i32 %1823 to i64
  %arrayidx2584 = getelementptr inbounds [257 x i32], ptr %cftab2582, i64 0, i64 %idxprom2583
  %1824 = load i32, ptr %arrayidx2584, align 4
  %1825 = load ptr, ptr %s.addr, align 8
  %cftabCopy = getelementptr inbounds nuw %struct.DState, ptr %1825, i32 0, i32 19
  %1826 = load i32, ptr %i, align 4
  %idxprom2585 = sext i32 %1826 to i64
  %arrayidx2586 = getelementptr inbounds [257 x i32], ptr %cftabCopy, i64 0, i64 %idxprom2585
  store i32 %1824, ptr %arrayidx2586, align 4
  br label %for.inc2587

for.inc2587:                                      ; preds = %for.body2581
  %1827 = load i32, ptr %i, align 4
  %inc2588 = add nsw i32 %1827, 1
  store i32 %inc2588, ptr %i, align 4
  br label %for.cond2578, !llvm.loop !33

for.end2589:                                      ; preds = %for.cond2578
  store i32 0, ptr %i, align 4
  br label %for.cond2590

for.cond2590:                                     ; preds = %for.inc2649, %for.end2589
  %1828 = load i32, ptr %i, align 4
  %1829 = load i32, ptr %nblock, align 4
  %cmp2591 = icmp slt i32 %1828, %1829
  br i1 %cmp2591, label %for.body2593, label %for.end2651

for.body2593:                                     ; preds = %for.cond2590
  %1830 = load ptr, ptr %s.addr, align 8
  %ll162594 = getelementptr inbounds nuw %struct.DState, ptr %1830, i32 0, i32 21
  %1831 = load ptr, ptr %ll162594, align 8
  %1832 = load i32, ptr %i, align 4
  %idxprom2595 = sext i32 %1832 to i64
  %arrayidx2596 = getelementptr inbounds i16, ptr %1831, i64 %idxprom2595
  %1833 = load i16, ptr %arrayidx2596, align 2
  %conv2597 = trunc i16 %1833 to i8
  store i8 %conv2597, ptr %uc, align 1
  %1834 = load ptr, ptr %s.addr, align 8
  %cftabCopy2598 = getelementptr inbounds nuw %struct.DState, ptr %1834, i32 0, i32 19
  %1835 = load i8, ptr %uc, align 1
  %idxprom2599 = zext i8 %1835 to i64
  %arrayidx2600 = getelementptr inbounds nuw [257 x i32], ptr %cftabCopy2598, i64 0, i64 %idxprom2599
  %1836 = load i32, ptr %arrayidx2600, align 4
  %and2601 = and i32 %1836, 65535
  %conv2602 = trunc i32 %and2601 to i16
  %1837 = load ptr, ptr %s.addr, align 8
  %ll162603 = getelementptr inbounds nuw %struct.DState, ptr %1837, i32 0, i32 21
  %1838 = load ptr, ptr %ll162603, align 8
  %1839 = load i32, ptr %i, align 4
  %idxprom2604 = sext i32 %1839 to i64
  %arrayidx2605 = getelementptr inbounds i16, ptr %1838, i64 %idxprom2604
  store i16 %conv2602, ptr %arrayidx2605, align 2
  %1840 = load i32, ptr %i, align 4
  %and2606 = and i32 %1840, 1
  %cmp2607 = icmp eq i32 %and2606, 0
  br i1 %cmp2607, label %if.then2609, label %if.else2626

if.then2609:                                      ; preds = %for.body2593
  %1841 = load ptr, ptr %s.addr, align 8
  %ll42610 = getelementptr inbounds nuw %struct.DState, ptr %1841, i32 0, i32 22
  %1842 = load ptr, ptr %ll42610, align 8
  %1843 = load i32, ptr %i, align 4
  %shr2611 = ashr i32 %1843, 1
  %idxprom2612 = sext i32 %shr2611 to i64
  %arrayidx2613 = getelementptr inbounds i8, ptr %1842, i64 %idxprom2612
  %1844 = load i8, ptr %arrayidx2613, align 1
  %conv2614 = zext i8 %1844 to i32
  %and2615 = and i32 %conv2614, 240
  %1845 = load ptr, ptr %s.addr, align 8
  %cftabCopy2616 = getelementptr inbounds nuw %struct.DState, ptr %1845, i32 0, i32 19
  %1846 = load i8, ptr %uc, align 1
  %idxprom2617 = zext i8 %1846 to i64
  %arrayidx2618 = getelementptr inbounds nuw [257 x i32], ptr %cftabCopy2616, i64 0, i64 %idxprom2617
  %1847 = load i32, ptr %arrayidx2618, align 4
  %shr2619 = ashr i32 %1847, 16
  %or2620 = or i32 %and2615, %shr2619
  %conv2621 = trunc i32 %or2620 to i8
  %1848 = load ptr, ptr %s.addr, align 8
  %ll42622 = getelementptr inbounds nuw %struct.DState, ptr %1848, i32 0, i32 22
  %1849 = load ptr, ptr %ll42622, align 8
  %1850 = load i32, ptr %i, align 4
  %shr2623 = ashr i32 %1850, 1
  %idxprom2624 = sext i32 %shr2623 to i64
  %arrayidx2625 = getelementptr inbounds i8, ptr %1849, i64 %idxprom2624
  store i8 %conv2621, ptr %arrayidx2625, align 1
  br label %if.end2644

if.else2626:                                      ; preds = %for.body2593
  %1851 = load ptr, ptr %s.addr, align 8
  %ll42627 = getelementptr inbounds nuw %struct.DState, ptr %1851, i32 0, i32 22
  %1852 = load ptr, ptr %ll42627, align 8
  %1853 = load i32, ptr %i, align 4
  %shr2628 = ashr i32 %1853, 1
  %idxprom2629 = sext i32 %shr2628 to i64
  %arrayidx2630 = getelementptr inbounds i8, ptr %1852, i64 %idxprom2629
  %1854 = load i8, ptr %arrayidx2630, align 1
  %conv2631 = zext i8 %1854 to i32
  %and2632 = and i32 %conv2631, 15
  %1855 = load ptr, ptr %s.addr, align 8
  %cftabCopy2633 = getelementptr inbounds nuw %struct.DState, ptr %1855, i32 0, i32 19
  %1856 = load i8, ptr %uc, align 1
  %idxprom2634 = zext i8 %1856 to i64
  %arrayidx2635 = getelementptr inbounds nuw [257 x i32], ptr %cftabCopy2633, i64 0, i64 %idxprom2634
  %1857 = load i32, ptr %arrayidx2635, align 4
  %shr2636 = ashr i32 %1857, 16
  %shl2637 = shl i32 %shr2636, 4
  %or2638 = or i32 %and2632, %shl2637
  %conv2639 = trunc i32 %or2638 to i8
  %1858 = load ptr, ptr %s.addr, align 8
  %ll42640 = getelementptr inbounds nuw %struct.DState, ptr %1858, i32 0, i32 22
  %1859 = load ptr, ptr %ll42640, align 8
  %1860 = load i32, ptr %i, align 4
  %shr2641 = ashr i32 %1860, 1
  %idxprom2642 = sext i32 %shr2641 to i64
  %arrayidx2643 = getelementptr inbounds i8, ptr %1859, i64 %idxprom2642
  store i8 %conv2639, ptr %arrayidx2643, align 1
  br label %if.end2644

if.end2644:                                       ; preds = %if.else2626, %if.then2609
  %1861 = load ptr, ptr %s.addr, align 8
  %cftabCopy2645 = getelementptr inbounds nuw %struct.DState, ptr %1861, i32 0, i32 19
  %1862 = load i8, ptr %uc, align 1
  %idxprom2646 = zext i8 %1862 to i64
  %arrayidx2647 = getelementptr inbounds nuw [257 x i32], ptr %cftabCopy2645, i64 0, i64 %idxprom2646
  %1863 = load i32, ptr %arrayidx2647, align 4
  %inc2648 = add nsw i32 %1863, 1
  store i32 %inc2648, ptr %arrayidx2647, align 4
  br label %for.inc2649

for.inc2649:                                      ; preds = %if.end2644
  %1864 = load i32, ptr %i, align 4
  %inc2650 = add nsw i32 %1864, 1
  store i32 %inc2650, ptr %i, align 4
  br label %for.cond2590, !llvm.loop !34

for.end2651:                                      ; preds = %for.cond2590
  %1865 = load ptr, ptr %s.addr, align 8
  %origPtr2652 = getelementptr inbounds nuw %struct.DState, ptr %1865, i32 0, i32 13
  %1866 = load i32, ptr %origPtr2652, align 8
  store i32 %1866, ptr %i, align 4
  %1867 = load ptr, ptr %s.addr, align 8
  %ll162653 = getelementptr inbounds nuw %struct.DState, ptr %1867, i32 0, i32 21
  %1868 = load ptr, ptr %ll162653, align 8
  %1869 = load i32, ptr %i, align 4
  %idxprom2654 = sext i32 %1869 to i64
  %arrayidx2655 = getelementptr inbounds i16, ptr %1868, i64 %idxprom2654
  %1870 = load i16, ptr %arrayidx2655, align 2
  %conv2656 = zext i16 %1870 to i32
  %1871 = load ptr, ptr %s.addr, align 8
  %ll42657 = getelementptr inbounds nuw %struct.DState, ptr %1871, i32 0, i32 22
  %1872 = load ptr, ptr %ll42657, align 8
  %1873 = load i32, ptr %i, align 4
  %shr2658 = ashr i32 %1873, 1
  %idxprom2659 = sext i32 %shr2658 to i64
  %arrayidx2660 = getelementptr inbounds i8, ptr %1872, i64 %idxprom2659
  %1874 = load i8, ptr %arrayidx2660, align 1
  %conv2661 = zext i8 %1874 to i32
  %1875 = load i32, ptr %i, align 4
  %shl2662 = shl i32 %1875, 2
  %and2663 = and i32 %shl2662, 4
  %shr2664 = lshr i32 %conv2661, %and2663
  %and2665 = and i32 %shr2664, 15
  %shl2666 = shl i32 %and2665, 16
  %or2667 = or i32 %conv2656, %shl2666
  store i32 %or2667, ptr %j, align 4
  br label %do.body2668

do.body2668:                                      ; preds = %do.cond2723, %for.end2651
  %1876 = load ptr, ptr %s.addr, align 8
  %ll162670 = getelementptr inbounds nuw %struct.DState, ptr %1876, i32 0, i32 21
  %1877 = load ptr, ptr %ll162670, align 8
  %1878 = load i32, ptr %j, align 4
  %idxprom2671 = sext i32 %1878 to i64
  %arrayidx2672 = getelementptr inbounds i16, ptr %1877, i64 %idxprom2671
  %1879 = load i16, ptr %arrayidx2672, align 2
  %conv2673 = zext i16 %1879 to i32
  %1880 = load ptr, ptr %s.addr, align 8
  %ll42674 = getelementptr inbounds nuw %struct.DState, ptr %1880, i32 0, i32 22
  %1881 = load ptr, ptr %ll42674, align 8
  %1882 = load i32, ptr %j, align 4
  %shr2675 = ashr i32 %1882, 1
  %idxprom2676 = sext i32 %shr2675 to i64
  %arrayidx2677 = getelementptr inbounds i8, ptr %1881, i64 %idxprom2676
  %1883 = load i8, ptr %arrayidx2677, align 1
  %conv2678 = zext i8 %1883 to i32
  %1884 = load i32, ptr %j, align 4
  %shl2679 = shl i32 %1884, 2
  %and2680 = and i32 %shl2679, 4
  %shr2681 = lshr i32 %conv2678, %and2680
  %and2682 = and i32 %shr2681, 15
  %shl2683 = shl i32 %and2682, 16
  %or2684 = or i32 %conv2673, %shl2683
  store i32 %or2684, ptr %tmp2669, align 4
  %1885 = load i32, ptr %i, align 4
  %and2685 = and i32 %1885, 65535
  %conv2686 = trunc i32 %and2685 to i16
  %1886 = load ptr, ptr %s.addr, align 8
  %ll162687 = getelementptr inbounds nuw %struct.DState, ptr %1886, i32 0, i32 21
  %1887 = load ptr, ptr %ll162687, align 8
  %1888 = load i32, ptr %j, align 4
  %idxprom2688 = sext i32 %1888 to i64
  %arrayidx2689 = getelementptr inbounds i16, ptr %1887, i64 %idxprom2688
  store i16 %conv2686, ptr %arrayidx2689, align 2
  %1889 = load i32, ptr %j, align 4
  %and2690 = and i32 %1889, 1
  %cmp2691 = icmp eq i32 %and2690, 0
  br i1 %cmp2691, label %if.then2693, label %if.else2707

if.then2693:                                      ; preds = %do.body2668
  %1890 = load ptr, ptr %s.addr, align 8
  %ll42694 = getelementptr inbounds nuw %struct.DState, ptr %1890, i32 0, i32 22
  %1891 = load ptr, ptr %ll42694, align 8
  %1892 = load i32, ptr %j, align 4
  %shr2695 = ashr i32 %1892, 1
  %idxprom2696 = sext i32 %shr2695 to i64
  %arrayidx2697 = getelementptr inbounds i8, ptr %1891, i64 %idxprom2696
  %1893 = load i8, ptr %arrayidx2697, align 1
  %conv2698 = zext i8 %1893 to i32
  %and2699 = and i32 %conv2698, 240
  %1894 = load i32, ptr %i, align 4
  %shr2700 = ashr i32 %1894, 16
  %or2701 = or i32 %and2699, %shr2700
  %conv2702 = trunc i32 %or2701 to i8
  %1895 = load ptr, ptr %s.addr, align 8
  %ll42703 = getelementptr inbounds nuw %struct.DState, ptr %1895, i32 0, i32 22
  %1896 = load ptr, ptr %ll42703, align 8
  %1897 = load i32, ptr %j, align 4
  %shr2704 = ashr i32 %1897, 1
  %idxprom2705 = sext i32 %shr2704 to i64
  %arrayidx2706 = getelementptr inbounds i8, ptr %1896, i64 %idxprom2705
  store i8 %conv2702, ptr %arrayidx2706, align 1
  br label %if.end2722

if.else2707:                                      ; preds = %do.body2668
  %1898 = load ptr, ptr %s.addr, align 8
  %ll42708 = getelementptr inbounds nuw %struct.DState, ptr %1898, i32 0, i32 22
  %1899 = load ptr, ptr %ll42708, align 8
  %1900 = load i32, ptr %j, align 4
  %shr2709 = ashr i32 %1900, 1
  %idxprom2710 = sext i32 %shr2709 to i64
  %arrayidx2711 = getelementptr inbounds i8, ptr %1899, i64 %idxprom2710
  %1901 = load i8, ptr %arrayidx2711, align 1
  %conv2712 = zext i8 %1901 to i32
  %and2713 = and i32 %conv2712, 15
  %1902 = load i32, ptr %i, align 4
  %shr2714 = ashr i32 %1902, 16
  %shl2715 = shl i32 %shr2714, 4
  %or2716 = or i32 %and2713, %shl2715
  %conv2717 = trunc i32 %or2716 to i8
  %1903 = load ptr, ptr %s.addr, align 8
  %ll42718 = getelementptr inbounds nuw %struct.DState, ptr %1903, i32 0, i32 22
  %1904 = load ptr, ptr %ll42718, align 8
  %1905 = load i32, ptr %j, align 4
  %shr2719 = ashr i32 %1905, 1
  %idxprom2720 = sext i32 %shr2719 to i64
  %arrayidx2721 = getelementptr inbounds i8, ptr %1904, i64 %idxprom2720
  store i8 %conv2717, ptr %arrayidx2721, align 1
  br label %if.end2722

if.end2722:                                       ; preds = %if.else2707, %if.then2693
  %1906 = load i32, ptr %j, align 4
  store i32 %1906, ptr %i, align 4
  %1907 = load i32, ptr %tmp2669, align 4
  store i32 %1907, ptr %j, align 4
  br label %do.cond2723

do.cond2723:                                      ; preds = %if.end2722
  %1908 = load i32, ptr %i, align 4
  %1909 = load ptr, ptr %s.addr, align 8
  %origPtr2724 = getelementptr inbounds nuw %struct.DState, ptr %1909, i32 0, i32 13
  %1910 = load i32, ptr %origPtr2724, align 8
  %cmp2725 = icmp ne i32 %1908, %1910
  br i1 %cmp2725, label %do.body2668, label %do.end2727, !llvm.loop !35

do.end2727:                                       ; preds = %do.cond2723
  %1911 = load ptr, ptr %s.addr, align 8
  %origPtr2728 = getelementptr inbounds nuw %struct.DState, ptr %1911, i32 0, i32 13
  %1912 = load i32, ptr %origPtr2728, align 8
  %1913 = load ptr, ptr %s.addr, align 8
  %tPos = getelementptr inbounds nuw %struct.DState, ptr %1913, i32 0, i32 14
  store i32 %1912, ptr %tPos, align 4
  %1914 = load ptr, ptr %s.addr, align 8
  %nblock_used = getelementptr inbounds nuw %struct.DState, ptr %1914, i32 0, i32 17
  store i32 0, ptr %nblock_used, align 4
  %1915 = load ptr, ptr %s.addr, align 8
  %blockRandomised2729 = getelementptr inbounds nuw %struct.DState, ptr %1915, i32 0, i32 4
  %1916 = load i8, ptr %blockRandomised2729, align 4
  %tobool2730 = icmp ne i8 %1916, 0
  br i1 %tobool2730, label %if.then2731, label %if.else2779

if.then2731:                                      ; preds = %do.end2727
  %1917 = load ptr, ptr %s.addr, align 8
  %rNToGo = getelementptr inbounds nuw %struct.DState, ptr %1917, i32 0, i32 5
  store i32 0, ptr %rNToGo, align 8
  %1918 = load ptr, ptr %s.addr, align 8
  %rTPos = getelementptr inbounds nuw %struct.DState, ptr %1918, i32 0, i32 6
  store i32 0, ptr %rTPos, align 4
  %1919 = load ptr, ptr %s.addr, align 8
  %tPos2732 = getelementptr inbounds nuw %struct.DState, ptr %1919, i32 0, i32 14
  %1920 = load i32, ptr %tPos2732, align 4
  %1921 = load ptr, ptr %s.addr, align 8
  %cftab2733 = getelementptr inbounds nuw %struct.DState, ptr %1921, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], ptr %cftab2733, i64 0, i64 0
  %call2734 = call i32 @BZ2_indexIntoF(i32 noundef %1920, ptr noundef %arraydecay)
  %1922 = load ptr, ptr %s.addr, align 8
  %k0 = getelementptr inbounds nuw %struct.DState, ptr %1922, i32 0, i32 15
  store i32 %call2734, ptr %k0, align 8
  %1923 = load ptr, ptr %s.addr, align 8
  %ll162735 = getelementptr inbounds nuw %struct.DState, ptr %1923, i32 0, i32 21
  %1924 = load ptr, ptr %ll162735, align 8
  %1925 = load ptr, ptr %s.addr, align 8
  %tPos2736 = getelementptr inbounds nuw %struct.DState, ptr %1925, i32 0, i32 14
  %1926 = load i32, ptr %tPos2736, align 4
  %idxprom2737 = zext i32 %1926 to i64
  %arrayidx2738 = getelementptr inbounds nuw i16, ptr %1924, i64 %idxprom2737
  %1927 = load i16, ptr %arrayidx2738, align 2
  %conv2739 = zext i16 %1927 to i32
  %1928 = load ptr, ptr %s.addr, align 8
  %ll42740 = getelementptr inbounds nuw %struct.DState, ptr %1928, i32 0, i32 22
  %1929 = load ptr, ptr %ll42740, align 8
  %1930 = load ptr, ptr %s.addr, align 8
  %tPos2741 = getelementptr inbounds nuw %struct.DState, ptr %1930, i32 0, i32 14
  %1931 = load i32, ptr %tPos2741, align 4
  %shr2742 = lshr i32 %1931, 1
  %idxprom2743 = zext i32 %shr2742 to i64
  %arrayidx2744 = getelementptr inbounds nuw i8, ptr %1929, i64 %idxprom2743
  %1932 = load i8, ptr %arrayidx2744, align 1
  %conv2745 = zext i8 %1932 to i32
  %1933 = load ptr, ptr %s.addr, align 8
  %tPos2746 = getelementptr inbounds nuw %struct.DState, ptr %1933, i32 0, i32 14
  %1934 = load i32, ptr %tPos2746, align 4
  %shl2747 = shl i32 %1934, 2
  %and2748 = and i32 %shl2747, 4
  %shr2749 = lshr i32 %conv2745, %and2748
  %and2750 = and i32 %shr2749, 15
  %shl2751 = shl i32 %and2750, 16
  %or2752 = or i32 %conv2739, %shl2751
  %1935 = load ptr, ptr %s.addr, align 8
  %tPos2753 = getelementptr inbounds nuw %struct.DState, ptr %1935, i32 0, i32 14
  store i32 %or2752, ptr %tPos2753, align 4
  %1936 = load ptr, ptr %s.addr, align 8
  %nblock_used2754 = getelementptr inbounds nuw %struct.DState, ptr %1936, i32 0, i32 17
  %1937 = load i32, ptr %nblock_used2754, align 4
  %inc2755 = add nsw i32 %1937, 1
  store i32 %inc2755, ptr %nblock_used2754, align 4
  %1938 = load ptr, ptr %s.addr, align 8
  %rNToGo2756 = getelementptr inbounds nuw %struct.DState, ptr %1938, i32 0, i32 5
  %1939 = load i32, ptr %rNToGo2756, align 8
  %cmp2757 = icmp eq i32 %1939, 0
  br i1 %cmp2757, label %if.then2759, label %if.end2772

if.then2759:                                      ; preds = %if.then2731
  %1940 = load ptr, ptr %s.addr, align 8
  %rTPos2760 = getelementptr inbounds nuw %struct.DState, ptr %1940, i32 0, i32 6
  %1941 = load i32, ptr %rTPos2760, align 4
  %idxprom2761 = sext i32 %1941 to i64
  %arrayidx2762 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom2761
  %1942 = load i32, ptr %arrayidx2762, align 4
  %1943 = load ptr, ptr %s.addr, align 8
  %rNToGo2763 = getelementptr inbounds nuw %struct.DState, ptr %1943, i32 0, i32 5
  store i32 %1942, ptr %rNToGo2763, align 8
  %1944 = load ptr, ptr %s.addr, align 8
  %rTPos2764 = getelementptr inbounds nuw %struct.DState, ptr %1944, i32 0, i32 6
  %1945 = load i32, ptr %rTPos2764, align 4
  %inc2765 = add nsw i32 %1945, 1
  store i32 %inc2765, ptr %rTPos2764, align 4
  %1946 = load ptr, ptr %s.addr, align 8
  %rTPos2766 = getelementptr inbounds nuw %struct.DState, ptr %1946, i32 0, i32 6
  %1947 = load i32, ptr %rTPos2766, align 4
  %cmp2767 = icmp eq i32 %1947, 512
  br i1 %cmp2767, label %if.then2769, label %if.end2771

if.then2769:                                      ; preds = %if.then2759
  %1948 = load ptr, ptr %s.addr, align 8
  %rTPos2770 = getelementptr inbounds nuw %struct.DState, ptr %1948, i32 0, i32 6
  store i32 0, ptr %rTPos2770, align 4
  br label %if.end2771

if.end2771:                                       ; preds = %if.then2769, %if.then2759
  br label %if.end2772

if.end2772:                                       ; preds = %if.end2771, %if.then2731
  %1949 = load ptr, ptr %s.addr, align 8
  %rNToGo2773 = getelementptr inbounds nuw %struct.DState, ptr %1949, i32 0, i32 5
  %1950 = load i32, ptr %rNToGo2773, align 8
  %dec2774 = add nsw i32 %1950, -1
  store i32 %dec2774, ptr %rNToGo2773, align 8
  %1951 = load ptr, ptr %s.addr, align 8
  %rNToGo2775 = getelementptr inbounds nuw %struct.DState, ptr %1951, i32 0, i32 5
  %1952 = load i32, ptr %rNToGo2775, align 8
  %cmp2776 = icmp eq i32 %1952, 1
  %1953 = zext i1 %cmp2776 to i64
  %cond = select i1 %cmp2776, i32 1, i32 0
  %1954 = load ptr, ptr %s.addr, align 8
  %k02778 = getelementptr inbounds nuw %struct.DState, ptr %1954, i32 0, i32 15
  %1955 = load i32, ptr %k02778, align 8
  %xor = xor i32 %1955, %cond
  store i32 %xor, ptr %k02778, align 8
  br label %if.end2806

if.else2779:                                      ; preds = %do.end2727
  %1956 = load ptr, ptr %s.addr, align 8
  %tPos2780 = getelementptr inbounds nuw %struct.DState, ptr %1956, i32 0, i32 14
  %1957 = load i32, ptr %tPos2780, align 4
  %1958 = load ptr, ptr %s.addr, align 8
  %cftab2781 = getelementptr inbounds nuw %struct.DState, ptr %1958, i32 0, i32 18
  %arraydecay2782 = getelementptr inbounds [257 x i32], ptr %cftab2781, i64 0, i64 0
  %call2783 = call i32 @BZ2_indexIntoF(i32 noundef %1957, ptr noundef %arraydecay2782)
  %1959 = load ptr, ptr %s.addr, align 8
  %k02784 = getelementptr inbounds nuw %struct.DState, ptr %1959, i32 0, i32 15
  store i32 %call2783, ptr %k02784, align 8
  %1960 = load ptr, ptr %s.addr, align 8
  %ll162785 = getelementptr inbounds nuw %struct.DState, ptr %1960, i32 0, i32 21
  %1961 = load ptr, ptr %ll162785, align 8
  %1962 = load ptr, ptr %s.addr, align 8
  %tPos2786 = getelementptr inbounds nuw %struct.DState, ptr %1962, i32 0, i32 14
  %1963 = load i32, ptr %tPos2786, align 4
  %idxprom2787 = zext i32 %1963 to i64
  %arrayidx2788 = getelementptr inbounds nuw i16, ptr %1961, i64 %idxprom2787
  %1964 = load i16, ptr %arrayidx2788, align 2
  %conv2789 = zext i16 %1964 to i32
  %1965 = load ptr, ptr %s.addr, align 8
  %ll42790 = getelementptr inbounds nuw %struct.DState, ptr %1965, i32 0, i32 22
  %1966 = load ptr, ptr %ll42790, align 8
  %1967 = load ptr, ptr %s.addr, align 8
  %tPos2791 = getelementptr inbounds nuw %struct.DState, ptr %1967, i32 0, i32 14
  %1968 = load i32, ptr %tPos2791, align 4
  %shr2792 = lshr i32 %1968, 1
  %idxprom2793 = zext i32 %shr2792 to i64
  %arrayidx2794 = getelementptr inbounds nuw i8, ptr %1966, i64 %idxprom2793
  %1969 = load i8, ptr %arrayidx2794, align 1
  %conv2795 = zext i8 %1969 to i32
  %1970 = load ptr, ptr %s.addr, align 8
  %tPos2796 = getelementptr inbounds nuw %struct.DState, ptr %1970, i32 0, i32 14
  %1971 = load i32, ptr %tPos2796, align 4
  %shl2797 = shl i32 %1971, 2
  %and2798 = and i32 %shl2797, 4
  %shr2799 = lshr i32 %conv2795, %and2798
  %and2800 = and i32 %shr2799, 15
  %shl2801 = shl i32 %and2800, 16
  %or2802 = or i32 %conv2789, %shl2801
  %1972 = load ptr, ptr %s.addr, align 8
  %tPos2803 = getelementptr inbounds nuw %struct.DState, ptr %1972, i32 0, i32 14
  store i32 %or2802, ptr %tPos2803, align 4
  %1973 = load ptr, ptr %s.addr, align 8
  %nblock_used2804 = getelementptr inbounds nuw %struct.DState, ptr %1973, i32 0, i32 17
  %1974 = load i32, ptr %nblock_used2804, align 4
  %inc2805 = add nsw i32 %1974, 1
  store i32 %inc2805, ptr %nblock_used2804, align 4
  br label %if.end2806

if.end2806:                                       ; preds = %if.else2779, %if.end2772
  br label %if.end2899

if.else2807:                                      ; preds = %for.end2574
  store i32 0, ptr %i, align 4
  br label %for.cond2808

for.cond2808:                                     ; preds = %for.inc2829, %if.else2807
  %1975 = load i32, ptr %i, align 4
  %1976 = load i32, ptr %nblock, align 4
  %cmp2809 = icmp slt i32 %1975, %1976
  br i1 %cmp2809, label %for.body2811, label %for.end2831

for.body2811:                                     ; preds = %for.cond2808
  %1977 = load ptr, ptr %s.addr, align 8
  %tt2812 = getelementptr inbounds nuw %struct.DState, ptr %1977, i32 0, i32 20
  %1978 = load ptr, ptr %tt2812, align 8
  %1979 = load i32, ptr %i, align 4
  %idxprom2813 = sext i32 %1979 to i64
  %arrayidx2814 = getelementptr inbounds i32, ptr %1978, i64 %idxprom2813
  %1980 = load i32, ptr %arrayidx2814, align 4
  %and2815 = and i32 %1980, 255
  %conv2816 = trunc i32 %and2815 to i8
  store i8 %conv2816, ptr %uc, align 1
  %1981 = load i32, ptr %i, align 4
  %shl2817 = shl i32 %1981, 8
  %1982 = load ptr, ptr %s.addr, align 8
  %tt2818 = getelementptr inbounds nuw %struct.DState, ptr %1982, i32 0, i32 20
  %1983 = load ptr, ptr %tt2818, align 8
  %1984 = load ptr, ptr %s.addr, align 8
  %cftab2819 = getelementptr inbounds nuw %struct.DState, ptr %1984, i32 0, i32 18
  %1985 = load i8, ptr %uc, align 1
  %idxprom2820 = zext i8 %1985 to i64
  %arrayidx2821 = getelementptr inbounds nuw [257 x i32], ptr %cftab2819, i64 0, i64 %idxprom2820
  %1986 = load i32, ptr %arrayidx2821, align 4
  %idxprom2822 = sext i32 %1986 to i64
  %arrayidx2823 = getelementptr inbounds i32, ptr %1983, i64 %idxprom2822
  %1987 = load i32, ptr %arrayidx2823, align 4
  %or2824 = or i32 %1987, %shl2817
  store i32 %or2824, ptr %arrayidx2823, align 4
  %1988 = load ptr, ptr %s.addr, align 8
  %cftab2825 = getelementptr inbounds nuw %struct.DState, ptr %1988, i32 0, i32 18
  %1989 = load i8, ptr %uc, align 1
  %idxprom2826 = zext i8 %1989 to i64
  %arrayidx2827 = getelementptr inbounds nuw [257 x i32], ptr %cftab2825, i64 0, i64 %idxprom2826
  %1990 = load i32, ptr %arrayidx2827, align 4
  %inc2828 = add nsw i32 %1990, 1
  store i32 %inc2828, ptr %arrayidx2827, align 4
  br label %for.inc2829

for.inc2829:                                      ; preds = %for.body2811
  %1991 = load i32, ptr %i, align 4
  %inc2830 = add nsw i32 %1991, 1
  store i32 %inc2830, ptr %i, align 4
  br label %for.cond2808, !llvm.loop !36

for.end2831:                                      ; preds = %for.cond2808
  %1992 = load ptr, ptr %s.addr, align 8
  %tt2832 = getelementptr inbounds nuw %struct.DState, ptr %1992, i32 0, i32 20
  %1993 = load ptr, ptr %tt2832, align 8
  %1994 = load ptr, ptr %s.addr, align 8
  %origPtr2833 = getelementptr inbounds nuw %struct.DState, ptr %1994, i32 0, i32 13
  %1995 = load i32, ptr %origPtr2833, align 8
  %idxprom2834 = sext i32 %1995 to i64
  %arrayidx2835 = getelementptr inbounds i32, ptr %1993, i64 %idxprom2834
  %1996 = load i32, ptr %arrayidx2835, align 4
  %shr2836 = lshr i32 %1996, 8
  %1997 = load ptr, ptr %s.addr, align 8
  %tPos2837 = getelementptr inbounds nuw %struct.DState, ptr %1997, i32 0, i32 14
  store i32 %shr2836, ptr %tPos2837, align 4
  %1998 = load ptr, ptr %s.addr, align 8
  %nblock_used2838 = getelementptr inbounds nuw %struct.DState, ptr %1998, i32 0, i32 17
  store i32 0, ptr %nblock_used2838, align 4
  %1999 = load ptr, ptr %s.addr, align 8
  %blockRandomised2839 = getelementptr inbounds nuw %struct.DState, ptr %1999, i32 0, i32 4
  %2000 = load i8, ptr %blockRandomised2839, align 4
  %tobool2840 = icmp ne i8 %2000, 0
  br i1 %tobool2840, label %if.then2841, label %if.else2883

if.then2841:                                      ; preds = %for.end2831
  %2001 = load ptr, ptr %s.addr, align 8
  %rNToGo2842 = getelementptr inbounds nuw %struct.DState, ptr %2001, i32 0, i32 5
  store i32 0, ptr %rNToGo2842, align 8
  %2002 = load ptr, ptr %s.addr, align 8
  %rTPos2843 = getelementptr inbounds nuw %struct.DState, ptr %2002, i32 0, i32 6
  store i32 0, ptr %rTPos2843, align 4
  %2003 = load ptr, ptr %s.addr, align 8
  %tt2844 = getelementptr inbounds nuw %struct.DState, ptr %2003, i32 0, i32 20
  %2004 = load ptr, ptr %tt2844, align 8
  %2005 = load ptr, ptr %s.addr, align 8
  %tPos2845 = getelementptr inbounds nuw %struct.DState, ptr %2005, i32 0, i32 14
  %2006 = load i32, ptr %tPos2845, align 4
  %idxprom2846 = zext i32 %2006 to i64
  %arrayidx2847 = getelementptr inbounds nuw i32, ptr %2004, i64 %idxprom2846
  %2007 = load i32, ptr %arrayidx2847, align 4
  %2008 = load ptr, ptr %s.addr, align 8
  %tPos2848 = getelementptr inbounds nuw %struct.DState, ptr %2008, i32 0, i32 14
  store i32 %2007, ptr %tPos2848, align 4
  %2009 = load ptr, ptr %s.addr, align 8
  %tPos2849 = getelementptr inbounds nuw %struct.DState, ptr %2009, i32 0, i32 14
  %2010 = load i32, ptr %tPos2849, align 4
  %and2850 = and i32 %2010, 255
  %conv2851 = trunc i32 %and2850 to i8
  %conv2852 = zext i8 %conv2851 to i32
  %2011 = load ptr, ptr %s.addr, align 8
  %k02853 = getelementptr inbounds nuw %struct.DState, ptr %2011, i32 0, i32 15
  store i32 %conv2852, ptr %k02853, align 8
  %2012 = load ptr, ptr %s.addr, align 8
  %tPos2854 = getelementptr inbounds nuw %struct.DState, ptr %2012, i32 0, i32 14
  %2013 = load i32, ptr %tPos2854, align 4
  %shr2855 = lshr i32 %2013, 8
  store i32 %shr2855, ptr %tPos2854, align 4
  %2014 = load ptr, ptr %s.addr, align 8
  %nblock_used2856 = getelementptr inbounds nuw %struct.DState, ptr %2014, i32 0, i32 17
  %2015 = load i32, ptr %nblock_used2856, align 4
  %inc2857 = add nsw i32 %2015, 1
  store i32 %inc2857, ptr %nblock_used2856, align 4
  %2016 = load ptr, ptr %s.addr, align 8
  %rNToGo2858 = getelementptr inbounds nuw %struct.DState, ptr %2016, i32 0, i32 5
  %2017 = load i32, ptr %rNToGo2858, align 8
  %cmp2859 = icmp eq i32 %2017, 0
  br i1 %cmp2859, label %if.then2861, label %if.end2874

if.then2861:                                      ; preds = %if.then2841
  %2018 = load ptr, ptr %s.addr, align 8
  %rTPos2862 = getelementptr inbounds nuw %struct.DState, ptr %2018, i32 0, i32 6
  %2019 = load i32, ptr %rTPos2862, align 4
  %idxprom2863 = sext i32 %2019 to i64
  %arrayidx2864 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom2863
  %2020 = load i32, ptr %arrayidx2864, align 4
  %2021 = load ptr, ptr %s.addr, align 8
  %rNToGo2865 = getelementptr inbounds nuw %struct.DState, ptr %2021, i32 0, i32 5
  store i32 %2020, ptr %rNToGo2865, align 8
  %2022 = load ptr, ptr %s.addr, align 8
  %rTPos2866 = getelementptr inbounds nuw %struct.DState, ptr %2022, i32 0, i32 6
  %2023 = load i32, ptr %rTPos2866, align 4
  %inc2867 = add nsw i32 %2023, 1
  store i32 %inc2867, ptr %rTPos2866, align 4
  %2024 = load ptr, ptr %s.addr, align 8
  %rTPos2868 = getelementptr inbounds nuw %struct.DState, ptr %2024, i32 0, i32 6
  %2025 = load i32, ptr %rTPos2868, align 4
  %cmp2869 = icmp eq i32 %2025, 512
  br i1 %cmp2869, label %if.then2871, label %if.end2873

if.then2871:                                      ; preds = %if.then2861
  %2026 = load ptr, ptr %s.addr, align 8
  %rTPos2872 = getelementptr inbounds nuw %struct.DState, ptr %2026, i32 0, i32 6
  store i32 0, ptr %rTPos2872, align 4
  br label %if.end2873

if.end2873:                                       ; preds = %if.then2871, %if.then2861
  br label %if.end2874

if.end2874:                                       ; preds = %if.end2873, %if.then2841
  %2027 = load ptr, ptr %s.addr, align 8
  %rNToGo2875 = getelementptr inbounds nuw %struct.DState, ptr %2027, i32 0, i32 5
  %2028 = load i32, ptr %rNToGo2875, align 8
  %dec2876 = add nsw i32 %2028, -1
  store i32 %dec2876, ptr %rNToGo2875, align 8
  %2029 = load ptr, ptr %s.addr, align 8
  %rNToGo2877 = getelementptr inbounds nuw %struct.DState, ptr %2029, i32 0, i32 5
  %2030 = load i32, ptr %rNToGo2877, align 8
  %cmp2878 = icmp eq i32 %2030, 1
  %2031 = zext i1 %cmp2878 to i64
  %cond2880 = select i1 %cmp2878, i32 1, i32 0
  %2032 = load ptr, ptr %s.addr, align 8
  %k02881 = getelementptr inbounds nuw %struct.DState, ptr %2032, i32 0, i32 15
  %2033 = load i32, ptr %k02881, align 8
  %xor2882 = xor i32 %2033, %cond2880
  store i32 %xor2882, ptr %k02881, align 8
  br label %if.end2898

if.else2883:                                      ; preds = %for.end2831
  %2034 = load ptr, ptr %s.addr, align 8
  %tt2884 = getelementptr inbounds nuw %struct.DState, ptr %2034, i32 0, i32 20
  %2035 = load ptr, ptr %tt2884, align 8
  %2036 = load ptr, ptr %s.addr, align 8
  %tPos2885 = getelementptr inbounds nuw %struct.DState, ptr %2036, i32 0, i32 14
  %2037 = load i32, ptr %tPos2885, align 4
  %idxprom2886 = zext i32 %2037 to i64
  %arrayidx2887 = getelementptr inbounds nuw i32, ptr %2035, i64 %idxprom2886
  %2038 = load i32, ptr %arrayidx2887, align 4
  %2039 = load ptr, ptr %s.addr, align 8
  %tPos2888 = getelementptr inbounds nuw %struct.DState, ptr %2039, i32 0, i32 14
  store i32 %2038, ptr %tPos2888, align 4
  %2040 = load ptr, ptr %s.addr, align 8
  %tPos2889 = getelementptr inbounds nuw %struct.DState, ptr %2040, i32 0, i32 14
  %2041 = load i32, ptr %tPos2889, align 4
  %and2890 = and i32 %2041, 255
  %conv2891 = trunc i32 %and2890 to i8
  %conv2892 = zext i8 %conv2891 to i32
  %2042 = load ptr, ptr %s.addr, align 8
  %k02893 = getelementptr inbounds nuw %struct.DState, ptr %2042, i32 0, i32 15
  store i32 %conv2892, ptr %k02893, align 8
  %2043 = load ptr, ptr %s.addr, align 8
  %tPos2894 = getelementptr inbounds nuw %struct.DState, ptr %2043, i32 0, i32 14
  %2044 = load i32, ptr %tPos2894, align 4
  %shr2895 = lshr i32 %2044, 8
  store i32 %shr2895, ptr %tPos2894, align 4
  %2045 = load ptr, ptr %s.addr, align 8
  %nblock_used2896 = getelementptr inbounds nuw %struct.DState, ptr %2045, i32 0, i32 17
  %2046 = load i32, ptr %nblock_used2896, align 4
  %inc2897 = add nsw i32 %2046, 1
  store i32 %inc2897, ptr %nblock_used2896, align 4
  br label %if.end2898

if.end2898:                                       ; preds = %if.else2883, %if.end2874
  br label %if.end2899

if.end2899:                                       ; preds = %if.end2898, %if.end2806
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

endhdr_2:                                         ; preds = %if.then326
  br label %sw.bb2900

sw.bb2900:                                        ; preds = %endhdr_2, %if.end
  %2047 = load ptr, ptr %s.addr, align 8
  %state2901 = getelementptr inbounds nuw %struct.DState, ptr %2047, i32 0, i32 1
  store i32 42, ptr %state2901, align 8
  br label %while.body2903

while.body2903:                                   ; preds = %if.end2950, %sw.bb2900
  %2048 = load ptr, ptr %s.addr, align 8
  %bsLive2904 = getelementptr inbounds nuw %struct.DState, ptr %2048, i32 0, i32 8
  %2049 = load i32, ptr %bsLive2904, align 4
  %cmp2905 = icmp sge i32 %2049, 8
  br i1 %cmp2905, label %if.then2907, label %if.end2917

if.then2907:                                      ; preds = %while.body2903
  %2050 = load ptr, ptr %s.addr, align 8
  %bsBuff2909 = getelementptr inbounds nuw %struct.DState, ptr %2050, i32 0, i32 7
  %2051 = load i32, ptr %bsBuff2909, align 8
  %2052 = load ptr, ptr %s.addr, align 8
  %bsLive2910 = getelementptr inbounds nuw %struct.DState, ptr %2052, i32 0, i32 8
  %2053 = load i32, ptr %bsLive2910, align 4
  %sub2911 = sub nsw i32 %2053, 8
  %shr2912 = lshr i32 %2051, %sub2911
  %and2913 = and i32 %shr2912, 255
  store i32 %and2913, ptr %v2908, align 4
  %2054 = load ptr, ptr %s.addr, align 8
  %bsLive2914 = getelementptr inbounds nuw %struct.DState, ptr %2054, i32 0, i32 8
  %2055 = load i32, ptr %bsLive2914, align 4
  %sub2915 = sub nsw i32 %2055, 8
  store i32 %sub2915, ptr %bsLive2914, align 4
  %2056 = load i32, ptr %v2908, align 4
  %conv2916 = trunc i32 %2056 to i8
  store i8 %conv2916, ptr %uc, align 1
  br label %while.end2951

if.end2917:                                       ; preds = %while.body2903
  %2057 = load ptr, ptr %s.addr, align 8
  %strm2918 = getelementptr inbounds nuw %struct.DState, ptr %2057, i32 0, i32 0
  %2058 = load ptr, ptr %strm2918, align 8
  %avail_in2919 = getelementptr inbounds nuw %struct.bz_stream, ptr %2058, i32 0, i32 1
  %2059 = load i32, ptr %avail_in2919, align 8
  %cmp2920 = icmp eq i32 %2059, 0
  br i1 %cmp2920, label %if.then2922, label %if.end2923

if.then2922:                                      ; preds = %if.end2917
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2923:                                       ; preds = %if.end2917
  %2060 = load ptr, ptr %s.addr, align 8
  %bsBuff2924 = getelementptr inbounds nuw %struct.DState, ptr %2060, i32 0, i32 7
  %2061 = load i32, ptr %bsBuff2924, align 8
  %shl2925 = shl i32 %2061, 8
  %2062 = load ptr, ptr %s.addr, align 8
  %strm2926 = getelementptr inbounds nuw %struct.DState, ptr %2062, i32 0, i32 0
  %2063 = load ptr, ptr %strm2926, align 8
  %next_in2927 = getelementptr inbounds nuw %struct.bz_stream, ptr %2063, i32 0, i32 0
  %2064 = load ptr, ptr %next_in2927, align 8
  %2065 = load i8, ptr %2064, align 1
  %conv2928 = zext i8 %2065 to i32
  %or2929 = or i32 %shl2925, %conv2928
  %2066 = load ptr, ptr %s.addr, align 8
  %bsBuff2930 = getelementptr inbounds nuw %struct.DState, ptr %2066, i32 0, i32 7
  store i32 %or2929, ptr %bsBuff2930, align 8
  %2067 = load ptr, ptr %s.addr, align 8
  %bsLive2931 = getelementptr inbounds nuw %struct.DState, ptr %2067, i32 0, i32 8
  %2068 = load i32, ptr %bsLive2931, align 4
  %add2932 = add nsw i32 %2068, 8
  store i32 %add2932, ptr %bsLive2931, align 4
  %2069 = load ptr, ptr %s.addr, align 8
  %strm2933 = getelementptr inbounds nuw %struct.DState, ptr %2069, i32 0, i32 0
  %2070 = load ptr, ptr %strm2933, align 8
  %next_in2934 = getelementptr inbounds nuw %struct.bz_stream, ptr %2070, i32 0, i32 0
  %2071 = load ptr, ptr %next_in2934, align 8
  %incdec.ptr2935 = getelementptr inbounds nuw i8, ptr %2071, i32 1
  store ptr %incdec.ptr2935, ptr %next_in2934, align 8
  %2072 = load ptr, ptr %s.addr, align 8
  %strm2936 = getelementptr inbounds nuw %struct.DState, ptr %2072, i32 0, i32 0
  %2073 = load ptr, ptr %strm2936, align 8
  %avail_in2937 = getelementptr inbounds nuw %struct.bz_stream, ptr %2073, i32 0, i32 1
  %2074 = load i32, ptr %avail_in2937, align 8
  %dec2938 = add i32 %2074, -1
  store i32 %dec2938, ptr %avail_in2937, align 8
  %2075 = load ptr, ptr %s.addr, align 8
  %strm2939 = getelementptr inbounds nuw %struct.DState, ptr %2075, i32 0, i32 0
  %2076 = load ptr, ptr %strm2939, align 8
  %total_in_lo322940 = getelementptr inbounds nuw %struct.bz_stream, ptr %2076, i32 0, i32 2
  %2077 = load i32, ptr %total_in_lo322940, align 4
  %inc2941 = add i32 %2077, 1
  store i32 %inc2941, ptr %total_in_lo322940, align 4
  %2078 = load ptr, ptr %s.addr, align 8
  %strm2942 = getelementptr inbounds nuw %struct.DState, ptr %2078, i32 0, i32 0
  %2079 = load ptr, ptr %strm2942, align 8
  %total_in_lo322943 = getelementptr inbounds nuw %struct.bz_stream, ptr %2079, i32 0, i32 2
  %2080 = load i32, ptr %total_in_lo322943, align 4
  %cmp2944 = icmp eq i32 %2080, 0
  br i1 %cmp2944, label %if.then2946, label %if.end2950

if.then2946:                                      ; preds = %if.end2923
  %2081 = load ptr, ptr %s.addr, align 8
  %strm2947 = getelementptr inbounds nuw %struct.DState, ptr %2081, i32 0, i32 0
  %2082 = load ptr, ptr %strm2947, align 8
  %total_in_hi322948 = getelementptr inbounds nuw %struct.bz_stream, ptr %2082, i32 0, i32 3
  %2083 = load i32, ptr %total_in_hi322948, align 8
  %inc2949 = add i32 %2083, 1
  store i32 %inc2949, ptr %total_in_hi322948, align 8
  br label %if.end2950

if.end2950:                                       ; preds = %if.then2946, %if.end2923
  br label %while.body2903

while.end2951:                                    ; preds = %if.then2907
  %2084 = load i8, ptr %uc, align 1
  %conv2952 = zext i8 %2084 to i32
  %cmp2953 = icmp ne i32 %conv2952, 114
  br i1 %cmp2953, label %if.then2955, label %if.end2956

if.then2955:                                      ; preds = %while.end2951
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2956:                                       ; preds = %while.end2951
  br label %sw.bb2957

sw.bb2957:                                        ; preds = %if.end2956, %if.end
  %2085 = load ptr, ptr %s.addr, align 8
  %state2958 = getelementptr inbounds nuw %struct.DState, ptr %2085, i32 0, i32 1
  store i32 43, ptr %state2958, align 8
  br label %while.body2960

while.body2960:                                   ; preds = %if.end3007, %sw.bb2957
  %2086 = load ptr, ptr %s.addr, align 8
  %bsLive2961 = getelementptr inbounds nuw %struct.DState, ptr %2086, i32 0, i32 8
  %2087 = load i32, ptr %bsLive2961, align 4
  %cmp2962 = icmp sge i32 %2087, 8
  br i1 %cmp2962, label %if.then2964, label %if.end2974

if.then2964:                                      ; preds = %while.body2960
  %2088 = load ptr, ptr %s.addr, align 8
  %bsBuff2966 = getelementptr inbounds nuw %struct.DState, ptr %2088, i32 0, i32 7
  %2089 = load i32, ptr %bsBuff2966, align 8
  %2090 = load ptr, ptr %s.addr, align 8
  %bsLive2967 = getelementptr inbounds nuw %struct.DState, ptr %2090, i32 0, i32 8
  %2091 = load i32, ptr %bsLive2967, align 4
  %sub2968 = sub nsw i32 %2091, 8
  %shr2969 = lshr i32 %2089, %sub2968
  %and2970 = and i32 %shr2969, 255
  store i32 %and2970, ptr %v2965, align 4
  %2092 = load ptr, ptr %s.addr, align 8
  %bsLive2971 = getelementptr inbounds nuw %struct.DState, ptr %2092, i32 0, i32 8
  %2093 = load i32, ptr %bsLive2971, align 4
  %sub2972 = sub nsw i32 %2093, 8
  store i32 %sub2972, ptr %bsLive2971, align 4
  %2094 = load i32, ptr %v2965, align 4
  %conv2973 = trunc i32 %2094 to i8
  store i8 %conv2973, ptr %uc, align 1
  br label %while.end3008

if.end2974:                                       ; preds = %while.body2960
  %2095 = load ptr, ptr %s.addr, align 8
  %strm2975 = getelementptr inbounds nuw %struct.DState, ptr %2095, i32 0, i32 0
  %2096 = load ptr, ptr %strm2975, align 8
  %avail_in2976 = getelementptr inbounds nuw %struct.bz_stream, ptr %2096, i32 0, i32 1
  %2097 = load i32, ptr %avail_in2976, align 8
  %cmp2977 = icmp eq i32 %2097, 0
  br i1 %cmp2977, label %if.then2979, label %if.end2980

if.then2979:                                      ; preds = %if.end2974
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2980:                                       ; preds = %if.end2974
  %2098 = load ptr, ptr %s.addr, align 8
  %bsBuff2981 = getelementptr inbounds nuw %struct.DState, ptr %2098, i32 0, i32 7
  %2099 = load i32, ptr %bsBuff2981, align 8
  %shl2982 = shl i32 %2099, 8
  %2100 = load ptr, ptr %s.addr, align 8
  %strm2983 = getelementptr inbounds nuw %struct.DState, ptr %2100, i32 0, i32 0
  %2101 = load ptr, ptr %strm2983, align 8
  %next_in2984 = getelementptr inbounds nuw %struct.bz_stream, ptr %2101, i32 0, i32 0
  %2102 = load ptr, ptr %next_in2984, align 8
  %2103 = load i8, ptr %2102, align 1
  %conv2985 = zext i8 %2103 to i32
  %or2986 = or i32 %shl2982, %conv2985
  %2104 = load ptr, ptr %s.addr, align 8
  %bsBuff2987 = getelementptr inbounds nuw %struct.DState, ptr %2104, i32 0, i32 7
  store i32 %or2986, ptr %bsBuff2987, align 8
  %2105 = load ptr, ptr %s.addr, align 8
  %bsLive2988 = getelementptr inbounds nuw %struct.DState, ptr %2105, i32 0, i32 8
  %2106 = load i32, ptr %bsLive2988, align 4
  %add2989 = add nsw i32 %2106, 8
  store i32 %add2989, ptr %bsLive2988, align 4
  %2107 = load ptr, ptr %s.addr, align 8
  %strm2990 = getelementptr inbounds nuw %struct.DState, ptr %2107, i32 0, i32 0
  %2108 = load ptr, ptr %strm2990, align 8
  %next_in2991 = getelementptr inbounds nuw %struct.bz_stream, ptr %2108, i32 0, i32 0
  %2109 = load ptr, ptr %next_in2991, align 8
  %incdec.ptr2992 = getelementptr inbounds nuw i8, ptr %2109, i32 1
  store ptr %incdec.ptr2992, ptr %next_in2991, align 8
  %2110 = load ptr, ptr %s.addr, align 8
  %strm2993 = getelementptr inbounds nuw %struct.DState, ptr %2110, i32 0, i32 0
  %2111 = load ptr, ptr %strm2993, align 8
  %avail_in2994 = getelementptr inbounds nuw %struct.bz_stream, ptr %2111, i32 0, i32 1
  %2112 = load i32, ptr %avail_in2994, align 8
  %dec2995 = add i32 %2112, -1
  store i32 %dec2995, ptr %avail_in2994, align 8
  %2113 = load ptr, ptr %s.addr, align 8
  %strm2996 = getelementptr inbounds nuw %struct.DState, ptr %2113, i32 0, i32 0
  %2114 = load ptr, ptr %strm2996, align 8
  %total_in_lo322997 = getelementptr inbounds nuw %struct.bz_stream, ptr %2114, i32 0, i32 2
  %2115 = load i32, ptr %total_in_lo322997, align 4
  %inc2998 = add i32 %2115, 1
  store i32 %inc2998, ptr %total_in_lo322997, align 4
  %2116 = load ptr, ptr %s.addr, align 8
  %strm2999 = getelementptr inbounds nuw %struct.DState, ptr %2116, i32 0, i32 0
  %2117 = load ptr, ptr %strm2999, align 8
  %total_in_lo323000 = getelementptr inbounds nuw %struct.bz_stream, ptr %2117, i32 0, i32 2
  %2118 = load i32, ptr %total_in_lo323000, align 4
  %cmp3001 = icmp eq i32 %2118, 0
  br i1 %cmp3001, label %if.then3003, label %if.end3007

if.then3003:                                      ; preds = %if.end2980
  %2119 = load ptr, ptr %s.addr, align 8
  %strm3004 = getelementptr inbounds nuw %struct.DState, ptr %2119, i32 0, i32 0
  %2120 = load ptr, ptr %strm3004, align 8
  %total_in_hi323005 = getelementptr inbounds nuw %struct.bz_stream, ptr %2120, i32 0, i32 3
  %2121 = load i32, ptr %total_in_hi323005, align 8
  %inc3006 = add i32 %2121, 1
  store i32 %inc3006, ptr %total_in_hi323005, align 8
  br label %if.end3007

if.end3007:                                       ; preds = %if.then3003, %if.end2980
  br label %while.body2960

while.end3008:                                    ; preds = %if.then2964
  %2122 = load i8, ptr %uc, align 1
  %conv3009 = zext i8 %2122 to i32
  %cmp3010 = icmp ne i32 %conv3009, 69
  br i1 %cmp3010, label %if.then3012, label %if.end3013

if.then3012:                                      ; preds = %while.end3008
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3013:                                       ; preds = %while.end3008
  br label %sw.bb3014

sw.bb3014:                                        ; preds = %if.end3013, %if.end
  %2123 = load ptr, ptr %s.addr, align 8
  %state3015 = getelementptr inbounds nuw %struct.DState, ptr %2123, i32 0, i32 1
  store i32 44, ptr %state3015, align 8
  br label %while.body3017

while.body3017:                                   ; preds = %if.end3064, %sw.bb3014
  %2124 = load ptr, ptr %s.addr, align 8
  %bsLive3018 = getelementptr inbounds nuw %struct.DState, ptr %2124, i32 0, i32 8
  %2125 = load i32, ptr %bsLive3018, align 4
  %cmp3019 = icmp sge i32 %2125, 8
  br i1 %cmp3019, label %if.then3021, label %if.end3031

if.then3021:                                      ; preds = %while.body3017
  %2126 = load ptr, ptr %s.addr, align 8
  %bsBuff3023 = getelementptr inbounds nuw %struct.DState, ptr %2126, i32 0, i32 7
  %2127 = load i32, ptr %bsBuff3023, align 8
  %2128 = load ptr, ptr %s.addr, align 8
  %bsLive3024 = getelementptr inbounds nuw %struct.DState, ptr %2128, i32 0, i32 8
  %2129 = load i32, ptr %bsLive3024, align 4
  %sub3025 = sub nsw i32 %2129, 8
  %shr3026 = lshr i32 %2127, %sub3025
  %and3027 = and i32 %shr3026, 255
  store i32 %and3027, ptr %v3022, align 4
  %2130 = load ptr, ptr %s.addr, align 8
  %bsLive3028 = getelementptr inbounds nuw %struct.DState, ptr %2130, i32 0, i32 8
  %2131 = load i32, ptr %bsLive3028, align 4
  %sub3029 = sub nsw i32 %2131, 8
  store i32 %sub3029, ptr %bsLive3028, align 4
  %2132 = load i32, ptr %v3022, align 4
  %conv3030 = trunc i32 %2132 to i8
  store i8 %conv3030, ptr %uc, align 1
  br label %while.end3065

if.end3031:                                       ; preds = %while.body3017
  %2133 = load ptr, ptr %s.addr, align 8
  %strm3032 = getelementptr inbounds nuw %struct.DState, ptr %2133, i32 0, i32 0
  %2134 = load ptr, ptr %strm3032, align 8
  %avail_in3033 = getelementptr inbounds nuw %struct.bz_stream, ptr %2134, i32 0, i32 1
  %2135 = load i32, ptr %avail_in3033, align 8
  %cmp3034 = icmp eq i32 %2135, 0
  br i1 %cmp3034, label %if.then3036, label %if.end3037

if.then3036:                                      ; preds = %if.end3031
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3037:                                       ; preds = %if.end3031
  %2136 = load ptr, ptr %s.addr, align 8
  %bsBuff3038 = getelementptr inbounds nuw %struct.DState, ptr %2136, i32 0, i32 7
  %2137 = load i32, ptr %bsBuff3038, align 8
  %shl3039 = shl i32 %2137, 8
  %2138 = load ptr, ptr %s.addr, align 8
  %strm3040 = getelementptr inbounds nuw %struct.DState, ptr %2138, i32 0, i32 0
  %2139 = load ptr, ptr %strm3040, align 8
  %next_in3041 = getelementptr inbounds nuw %struct.bz_stream, ptr %2139, i32 0, i32 0
  %2140 = load ptr, ptr %next_in3041, align 8
  %2141 = load i8, ptr %2140, align 1
  %conv3042 = zext i8 %2141 to i32
  %or3043 = or i32 %shl3039, %conv3042
  %2142 = load ptr, ptr %s.addr, align 8
  %bsBuff3044 = getelementptr inbounds nuw %struct.DState, ptr %2142, i32 0, i32 7
  store i32 %or3043, ptr %bsBuff3044, align 8
  %2143 = load ptr, ptr %s.addr, align 8
  %bsLive3045 = getelementptr inbounds nuw %struct.DState, ptr %2143, i32 0, i32 8
  %2144 = load i32, ptr %bsLive3045, align 4
  %add3046 = add nsw i32 %2144, 8
  store i32 %add3046, ptr %bsLive3045, align 4
  %2145 = load ptr, ptr %s.addr, align 8
  %strm3047 = getelementptr inbounds nuw %struct.DState, ptr %2145, i32 0, i32 0
  %2146 = load ptr, ptr %strm3047, align 8
  %next_in3048 = getelementptr inbounds nuw %struct.bz_stream, ptr %2146, i32 0, i32 0
  %2147 = load ptr, ptr %next_in3048, align 8
  %incdec.ptr3049 = getelementptr inbounds nuw i8, ptr %2147, i32 1
  store ptr %incdec.ptr3049, ptr %next_in3048, align 8
  %2148 = load ptr, ptr %s.addr, align 8
  %strm3050 = getelementptr inbounds nuw %struct.DState, ptr %2148, i32 0, i32 0
  %2149 = load ptr, ptr %strm3050, align 8
  %avail_in3051 = getelementptr inbounds nuw %struct.bz_stream, ptr %2149, i32 0, i32 1
  %2150 = load i32, ptr %avail_in3051, align 8
  %dec3052 = add i32 %2150, -1
  store i32 %dec3052, ptr %avail_in3051, align 8
  %2151 = load ptr, ptr %s.addr, align 8
  %strm3053 = getelementptr inbounds nuw %struct.DState, ptr %2151, i32 0, i32 0
  %2152 = load ptr, ptr %strm3053, align 8
  %total_in_lo323054 = getelementptr inbounds nuw %struct.bz_stream, ptr %2152, i32 0, i32 2
  %2153 = load i32, ptr %total_in_lo323054, align 4
  %inc3055 = add i32 %2153, 1
  store i32 %inc3055, ptr %total_in_lo323054, align 4
  %2154 = load ptr, ptr %s.addr, align 8
  %strm3056 = getelementptr inbounds nuw %struct.DState, ptr %2154, i32 0, i32 0
  %2155 = load ptr, ptr %strm3056, align 8
  %total_in_lo323057 = getelementptr inbounds nuw %struct.bz_stream, ptr %2155, i32 0, i32 2
  %2156 = load i32, ptr %total_in_lo323057, align 4
  %cmp3058 = icmp eq i32 %2156, 0
  br i1 %cmp3058, label %if.then3060, label %if.end3064

if.then3060:                                      ; preds = %if.end3037
  %2157 = load ptr, ptr %s.addr, align 8
  %strm3061 = getelementptr inbounds nuw %struct.DState, ptr %2157, i32 0, i32 0
  %2158 = load ptr, ptr %strm3061, align 8
  %total_in_hi323062 = getelementptr inbounds nuw %struct.bz_stream, ptr %2158, i32 0, i32 3
  %2159 = load i32, ptr %total_in_hi323062, align 8
  %inc3063 = add i32 %2159, 1
  store i32 %inc3063, ptr %total_in_hi323062, align 8
  br label %if.end3064

if.end3064:                                       ; preds = %if.then3060, %if.end3037
  br label %while.body3017

while.end3065:                                    ; preds = %if.then3021
  %2160 = load i8, ptr %uc, align 1
  %conv3066 = zext i8 %2160 to i32
  %cmp3067 = icmp ne i32 %conv3066, 56
  br i1 %cmp3067, label %if.then3069, label %if.end3070

if.then3069:                                      ; preds = %while.end3065
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3070:                                       ; preds = %while.end3065
  br label %sw.bb3071

sw.bb3071:                                        ; preds = %if.end3070, %if.end
  %2161 = load ptr, ptr %s.addr, align 8
  %state3072 = getelementptr inbounds nuw %struct.DState, ptr %2161, i32 0, i32 1
  store i32 45, ptr %state3072, align 8
  br label %while.body3074

while.body3074:                                   ; preds = %if.end3121, %sw.bb3071
  %2162 = load ptr, ptr %s.addr, align 8
  %bsLive3075 = getelementptr inbounds nuw %struct.DState, ptr %2162, i32 0, i32 8
  %2163 = load i32, ptr %bsLive3075, align 4
  %cmp3076 = icmp sge i32 %2163, 8
  br i1 %cmp3076, label %if.then3078, label %if.end3088

if.then3078:                                      ; preds = %while.body3074
  %2164 = load ptr, ptr %s.addr, align 8
  %bsBuff3080 = getelementptr inbounds nuw %struct.DState, ptr %2164, i32 0, i32 7
  %2165 = load i32, ptr %bsBuff3080, align 8
  %2166 = load ptr, ptr %s.addr, align 8
  %bsLive3081 = getelementptr inbounds nuw %struct.DState, ptr %2166, i32 0, i32 8
  %2167 = load i32, ptr %bsLive3081, align 4
  %sub3082 = sub nsw i32 %2167, 8
  %shr3083 = lshr i32 %2165, %sub3082
  %and3084 = and i32 %shr3083, 255
  store i32 %and3084, ptr %v3079, align 4
  %2168 = load ptr, ptr %s.addr, align 8
  %bsLive3085 = getelementptr inbounds nuw %struct.DState, ptr %2168, i32 0, i32 8
  %2169 = load i32, ptr %bsLive3085, align 4
  %sub3086 = sub nsw i32 %2169, 8
  store i32 %sub3086, ptr %bsLive3085, align 4
  %2170 = load i32, ptr %v3079, align 4
  %conv3087 = trunc i32 %2170 to i8
  store i8 %conv3087, ptr %uc, align 1
  br label %while.end3122

if.end3088:                                       ; preds = %while.body3074
  %2171 = load ptr, ptr %s.addr, align 8
  %strm3089 = getelementptr inbounds nuw %struct.DState, ptr %2171, i32 0, i32 0
  %2172 = load ptr, ptr %strm3089, align 8
  %avail_in3090 = getelementptr inbounds nuw %struct.bz_stream, ptr %2172, i32 0, i32 1
  %2173 = load i32, ptr %avail_in3090, align 8
  %cmp3091 = icmp eq i32 %2173, 0
  br i1 %cmp3091, label %if.then3093, label %if.end3094

if.then3093:                                      ; preds = %if.end3088
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3094:                                       ; preds = %if.end3088
  %2174 = load ptr, ptr %s.addr, align 8
  %bsBuff3095 = getelementptr inbounds nuw %struct.DState, ptr %2174, i32 0, i32 7
  %2175 = load i32, ptr %bsBuff3095, align 8
  %shl3096 = shl i32 %2175, 8
  %2176 = load ptr, ptr %s.addr, align 8
  %strm3097 = getelementptr inbounds nuw %struct.DState, ptr %2176, i32 0, i32 0
  %2177 = load ptr, ptr %strm3097, align 8
  %next_in3098 = getelementptr inbounds nuw %struct.bz_stream, ptr %2177, i32 0, i32 0
  %2178 = load ptr, ptr %next_in3098, align 8
  %2179 = load i8, ptr %2178, align 1
  %conv3099 = zext i8 %2179 to i32
  %or3100 = or i32 %shl3096, %conv3099
  %2180 = load ptr, ptr %s.addr, align 8
  %bsBuff3101 = getelementptr inbounds nuw %struct.DState, ptr %2180, i32 0, i32 7
  store i32 %or3100, ptr %bsBuff3101, align 8
  %2181 = load ptr, ptr %s.addr, align 8
  %bsLive3102 = getelementptr inbounds nuw %struct.DState, ptr %2181, i32 0, i32 8
  %2182 = load i32, ptr %bsLive3102, align 4
  %add3103 = add nsw i32 %2182, 8
  store i32 %add3103, ptr %bsLive3102, align 4
  %2183 = load ptr, ptr %s.addr, align 8
  %strm3104 = getelementptr inbounds nuw %struct.DState, ptr %2183, i32 0, i32 0
  %2184 = load ptr, ptr %strm3104, align 8
  %next_in3105 = getelementptr inbounds nuw %struct.bz_stream, ptr %2184, i32 0, i32 0
  %2185 = load ptr, ptr %next_in3105, align 8
  %incdec.ptr3106 = getelementptr inbounds nuw i8, ptr %2185, i32 1
  store ptr %incdec.ptr3106, ptr %next_in3105, align 8
  %2186 = load ptr, ptr %s.addr, align 8
  %strm3107 = getelementptr inbounds nuw %struct.DState, ptr %2186, i32 0, i32 0
  %2187 = load ptr, ptr %strm3107, align 8
  %avail_in3108 = getelementptr inbounds nuw %struct.bz_stream, ptr %2187, i32 0, i32 1
  %2188 = load i32, ptr %avail_in3108, align 8
  %dec3109 = add i32 %2188, -1
  store i32 %dec3109, ptr %avail_in3108, align 8
  %2189 = load ptr, ptr %s.addr, align 8
  %strm3110 = getelementptr inbounds nuw %struct.DState, ptr %2189, i32 0, i32 0
  %2190 = load ptr, ptr %strm3110, align 8
  %total_in_lo323111 = getelementptr inbounds nuw %struct.bz_stream, ptr %2190, i32 0, i32 2
  %2191 = load i32, ptr %total_in_lo323111, align 4
  %inc3112 = add i32 %2191, 1
  store i32 %inc3112, ptr %total_in_lo323111, align 4
  %2192 = load ptr, ptr %s.addr, align 8
  %strm3113 = getelementptr inbounds nuw %struct.DState, ptr %2192, i32 0, i32 0
  %2193 = load ptr, ptr %strm3113, align 8
  %total_in_lo323114 = getelementptr inbounds nuw %struct.bz_stream, ptr %2193, i32 0, i32 2
  %2194 = load i32, ptr %total_in_lo323114, align 4
  %cmp3115 = icmp eq i32 %2194, 0
  br i1 %cmp3115, label %if.then3117, label %if.end3121

if.then3117:                                      ; preds = %if.end3094
  %2195 = load ptr, ptr %s.addr, align 8
  %strm3118 = getelementptr inbounds nuw %struct.DState, ptr %2195, i32 0, i32 0
  %2196 = load ptr, ptr %strm3118, align 8
  %total_in_hi323119 = getelementptr inbounds nuw %struct.bz_stream, ptr %2196, i32 0, i32 3
  %2197 = load i32, ptr %total_in_hi323119, align 8
  %inc3120 = add i32 %2197, 1
  store i32 %inc3120, ptr %total_in_hi323119, align 8
  br label %if.end3121

if.end3121:                                       ; preds = %if.then3117, %if.end3094
  br label %while.body3074

while.end3122:                                    ; preds = %if.then3078
  %2198 = load i8, ptr %uc, align 1
  %conv3123 = zext i8 %2198 to i32
  %cmp3124 = icmp ne i32 %conv3123, 80
  br i1 %cmp3124, label %if.then3126, label %if.end3127

if.then3126:                                      ; preds = %while.end3122
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3127:                                       ; preds = %while.end3122
  br label %sw.bb3128

sw.bb3128:                                        ; preds = %if.end3127, %if.end
  %2199 = load ptr, ptr %s.addr, align 8
  %state3129 = getelementptr inbounds nuw %struct.DState, ptr %2199, i32 0, i32 1
  store i32 46, ptr %state3129, align 8
  br label %while.body3131

while.body3131:                                   ; preds = %if.end3178, %sw.bb3128
  %2200 = load ptr, ptr %s.addr, align 8
  %bsLive3132 = getelementptr inbounds nuw %struct.DState, ptr %2200, i32 0, i32 8
  %2201 = load i32, ptr %bsLive3132, align 4
  %cmp3133 = icmp sge i32 %2201, 8
  br i1 %cmp3133, label %if.then3135, label %if.end3145

if.then3135:                                      ; preds = %while.body3131
  %2202 = load ptr, ptr %s.addr, align 8
  %bsBuff3137 = getelementptr inbounds nuw %struct.DState, ptr %2202, i32 0, i32 7
  %2203 = load i32, ptr %bsBuff3137, align 8
  %2204 = load ptr, ptr %s.addr, align 8
  %bsLive3138 = getelementptr inbounds nuw %struct.DState, ptr %2204, i32 0, i32 8
  %2205 = load i32, ptr %bsLive3138, align 4
  %sub3139 = sub nsw i32 %2205, 8
  %shr3140 = lshr i32 %2203, %sub3139
  %and3141 = and i32 %shr3140, 255
  store i32 %and3141, ptr %v3136, align 4
  %2206 = load ptr, ptr %s.addr, align 8
  %bsLive3142 = getelementptr inbounds nuw %struct.DState, ptr %2206, i32 0, i32 8
  %2207 = load i32, ptr %bsLive3142, align 4
  %sub3143 = sub nsw i32 %2207, 8
  store i32 %sub3143, ptr %bsLive3142, align 4
  %2208 = load i32, ptr %v3136, align 4
  %conv3144 = trunc i32 %2208 to i8
  store i8 %conv3144, ptr %uc, align 1
  br label %while.end3179

if.end3145:                                       ; preds = %while.body3131
  %2209 = load ptr, ptr %s.addr, align 8
  %strm3146 = getelementptr inbounds nuw %struct.DState, ptr %2209, i32 0, i32 0
  %2210 = load ptr, ptr %strm3146, align 8
  %avail_in3147 = getelementptr inbounds nuw %struct.bz_stream, ptr %2210, i32 0, i32 1
  %2211 = load i32, ptr %avail_in3147, align 8
  %cmp3148 = icmp eq i32 %2211, 0
  br i1 %cmp3148, label %if.then3150, label %if.end3151

if.then3150:                                      ; preds = %if.end3145
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3151:                                       ; preds = %if.end3145
  %2212 = load ptr, ptr %s.addr, align 8
  %bsBuff3152 = getelementptr inbounds nuw %struct.DState, ptr %2212, i32 0, i32 7
  %2213 = load i32, ptr %bsBuff3152, align 8
  %shl3153 = shl i32 %2213, 8
  %2214 = load ptr, ptr %s.addr, align 8
  %strm3154 = getelementptr inbounds nuw %struct.DState, ptr %2214, i32 0, i32 0
  %2215 = load ptr, ptr %strm3154, align 8
  %next_in3155 = getelementptr inbounds nuw %struct.bz_stream, ptr %2215, i32 0, i32 0
  %2216 = load ptr, ptr %next_in3155, align 8
  %2217 = load i8, ptr %2216, align 1
  %conv3156 = zext i8 %2217 to i32
  %or3157 = or i32 %shl3153, %conv3156
  %2218 = load ptr, ptr %s.addr, align 8
  %bsBuff3158 = getelementptr inbounds nuw %struct.DState, ptr %2218, i32 0, i32 7
  store i32 %or3157, ptr %bsBuff3158, align 8
  %2219 = load ptr, ptr %s.addr, align 8
  %bsLive3159 = getelementptr inbounds nuw %struct.DState, ptr %2219, i32 0, i32 8
  %2220 = load i32, ptr %bsLive3159, align 4
  %add3160 = add nsw i32 %2220, 8
  store i32 %add3160, ptr %bsLive3159, align 4
  %2221 = load ptr, ptr %s.addr, align 8
  %strm3161 = getelementptr inbounds nuw %struct.DState, ptr %2221, i32 0, i32 0
  %2222 = load ptr, ptr %strm3161, align 8
  %next_in3162 = getelementptr inbounds nuw %struct.bz_stream, ptr %2222, i32 0, i32 0
  %2223 = load ptr, ptr %next_in3162, align 8
  %incdec.ptr3163 = getelementptr inbounds nuw i8, ptr %2223, i32 1
  store ptr %incdec.ptr3163, ptr %next_in3162, align 8
  %2224 = load ptr, ptr %s.addr, align 8
  %strm3164 = getelementptr inbounds nuw %struct.DState, ptr %2224, i32 0, i32 0
  %2225 = load ptr, ptr %strm3164, align 8
  %avail_in3165 = getelementptr inbounds nuw %struct.bz_stream, ptr %2225, i32 0, i32 1
  %2226 = load i32, ptr %avail_in3165, align 8
  %dec3166 = add i32 %2226, -1
  store i32 %dec3166, ptr %avail_in3165, align 8
  %2227 = load ptr, ptr %s.addr, align 8
  %strm3167 = getelementptr inbounds nuw %struct.DState, ptr %2227, i32 0, i32 0
  %2228 = load ptr, ptr %strm3167, align 8
  %total_in_lo323168 = getelementptr inbounds nuw %struct.bz_stream, ptr %2228, i32 0, i32 2
  %2229 = load i32, ptr %total_in_lo323168, align 4
  %inc3169 = add i32 %2229, 1
  store i32 %inc3169, ptr %total_in_lo323168, align 4
  %2230 = load ptr, ptr %s.addr, align 8
  %strm3170 = getelementptr inbounds nuw %struct.DState, ptr %2230, i32 0, i32 0
  %2231 = load ptr, ptr %strm3170, align 8
  %total_in_lo323171 = getelementptr inbounds nuw %struct.bz_stream, ptr %2231, i32 0, i32 2
  %2232 = load i32, ptr %total_in_lo323171, align 4
  %cmp3172 = icmp eq i32 %2232, 0
  br i1 %cmp3172, label %if.then3174, label %if.end3178

if.then3174:                                      ; preds = %if.end3151
  %2233 = load ptr, ptr %s.addr, align 8
  %strm3175 = getelementptr inbounds nuw %struct.DState, ptr %2233, i32 0, i32 0
  %2234 = load ptr, ptr %strm3175, align 8
  %total_in_hi323176 = getelementptr inbounds nuw %struct.bz_stream, ptr %2234, i32 0, i32 3
  %2235 = load i32, ptr %total_in_hi323176, align 8
  %inc3177 = add i32 %2235, 1
  store i32 %inc3177, ptr %total_in_hi323176, align 8
  br label %if.end3178

if.end3178:                                       ; preds = %if.then3174, %if.end3151
  br label %while.body3131

while.end3179:                                    ; preds = %if.then3135
  %2236 = load i8, ptr %uc, align 1
  %conv3180 = zext i8 %2236 to i32
  %cmp3181 = icmp ne i32 %conv3180, 144
  br i1 %cmp3181, label %if.then3183, label %if.end3184

if.then3183:                                      ; preds = %while.end3179
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3184:                                       ; preds = %while.end3179
  %2237 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC = getelementptr inbounds nuw %struct.DState, ptr %2237, i32 0, i32 24
  store i32 0, ptr %storedCombinedCRC, align 4
  br label %sw.bb3185

sw.bb3185:                                        ; preds = %if.end3184, %if.end
  %2238 = load ptr, ptr %s.addr, align 8
  %state3186 = getelementptr inbounds nuw %struct.DState, ptr %2238, i32 0, i32 1
  store i32 47, ptr %state3186, align 8
  br label %while.body3188

while.body3188:                                   ; preds = %if.end3235, %sw.bb3185
  %2239 = load ptr, ptr %s.addr, align 8
  %bsLive3189 = getelementptr inbounds nuw %struct.DState, ptr %2239, i32 0, i32 8
  %2240 = load i32, ptr %bsLive3189, align 4
  %cmp3190 = icmp sge i32 %2240, 8
  br i1 %cmp3190, label %if.then3192, label %if.end3202

if.then3192:                                      ; preds = %while.body3188
  %2241 = load ptr, ptr %s.addr, align 8
  %bsBuff3194 = getelementptr inbounds nuw %struct.DState, ptr %2241, i32 0, i32 7
  %2242 = load i32, ptr %bsBuff3194, align 8
  %2243 = load ptr, ptr %s.addr, align 8
  %bsLive3195 = getelementptr inbounds nuw %struct.DState, ptr %2243, i32 0, i32 8
  %2244 = load i32, ptr %bsLive3195, align 4
  %sub3196 = sub nsw i32 %2244, 8
  %shr3197 = lshr i32 %2242, %sub3196
  %and3198 = and i32 %shr3197, 255
  store i32 %and3198, ptr %v3193, align 4
  %2245 = load ptr, ptr %s.addr, align 8
  %bsLive3199 = getelementptr inbounds nuw %struct.DState, ptr %2245, i32 0, i32 8
  %2246 = load i32, ptr %bsLive3199, align 4
  %sub3200 = sub nsw i32 %2246, 8
  store i32 %sub3200, ptr %bsLive3199, align 4
  %2247 = load i32, ptr %v3193, align 4
  %conv3201 = trunc i32 %2247 to i8
  store i8 %conv3201, ptr %uc, align 1
  br label %while.end3236

if.end3202:                                       ; preds = %while.body3188
  %2248 = load ptr, ptr %s.addr, align 8
  %strm3203 = getelementptr inbounds nuw %struct.DState, ptr %2248, i32 0, i32 0
  %2249 = load ptr, ptr %strm3203, align 8
  %avail_in3204 = getelementptr inbounds nuw %struct.bz_stream, ptr %2249, i32 0, i32 1
  %2250 = load i32, ptr %avail_in3204, align 8
  %cmp3205 = icmp eq i32 %2250, 0
  br i1 %cmp3205, label %if.then3207, label %if.end3208

if.then3207:                                      ; preds = %if.end3202
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3208:                                       ; preds = %if.end3202
  %2251 = load ptr, ptr %s.addr, align 8
  %bsBuff3209 = getelementptr inbounds nuw %struct.DState, ptr %2251, i32 0, i32 7
  %2252 = load i32, ptr %bsBuff3209, align 8
  %shl3210 = shl i32 %2252, 8
  %2253 = load ptr, ptr %s.addr, align 8
  %strm3211 = getelementptr inbounds nuw %struct.DState, ptr %2253, i32 0, i32 0
  %2254 = load ptr, ptr %strm3211, align 8
  %next_in3212 = getelementptr inbounds nuw %struct.bz_stream, ptr %2254, i32 0, i32 0
  %2255 = load ptr, ptr %next_in3212, align 8
  %2256 = load i8, ptr %2255, align 1
  %conv3213 = zext i8 %2256 to i32
  %or3214 = or i32 %shl3210, %conv3213
  %2257 = load ptr, ptr %s.addr, align 8
  %bsBuff3215 = getelementptr inbounds nuw %struct.DState, ptr %2257, i32 0, i32 7
  store i32 %or3214, ptr %bsBuff3215, align 8
  %2258 = load ptr, ptr %s.addr, align 8
  %bsLive3216 = getelementptr inbounds nuw %struct.DState, ptr %2258, i32 0, i32 8
  %2259 = load i32, ptr %bsLive3216, align 4
  %add3217 = add nsw i32 %2259, 8
  store i32 %add3217, ptr %bsLive3216, align 4
  %2260 = load ptr, ptr %s.addr, align 8
  %strm3218 = getelementptr inbounds nuw %struct.DState, ptr %2260, i32 0, i32 0
  %2261 = load ptr, ptr %strm3218, align 8
  %next_in3219 = getelementptr inbounds nuw %struct.bz_stream, ptr %2261, i32 0, i32 0
  %2262 = load ptr, ptr %next_in3219, align 8
  %incdec.ptr3220 = getelementptr inbounds nuw i8, ptr %2262, i32 1
  store ptr %incdec.ptr3220, ptr %next_in3219, align 8
  %2263 = load ptr, ptr %s.addr, align 8
  %strm3221 = getelementptr inbounds nuw %struct.DState, ptr %2263, i32 0, i32 0
  %2264 = load ptr, ptr %strm3221, align 8
  %avail_in3222 = getelementptr inbounds nuw %struct.bz_stream, ptr %2264, i32 0, i32 1
  %2265 = load i32, ptr %avail_in3222, align 8
  %dec3223 = add i32 %2265, -1
  store i32 %dec3223, ptr %avail_in3222, align 8
  %2266 = load ptr, ptr %s.addr, align 8
  %strm3224 = getelementptr inbounds nuw %struct.DState, ptr %2266, i32 0, i32 0
  %2267 = load ptr, ptr %strm3224, align 8
  %total_in_lo323225 = getelementptr inbounds nuw %struct.bz_stream, ptr %2267, i32 0, i32 2
  %2268 = load i32, ptr %total_in_lo323225, align 4
  %inc3226 = add i32 %2268, 1
  store i32 %inc3226, ptr %total_in_lo323225, align 4
  %2269 = load ptr, ptr %s.addr, align 8
  %strm3227 = getelementptr inbounds nuw %struct.DState, ptr %2269, i32 0, i32 0
  %2270 = load ptr, ptr %strm3227, align 8
  %total_in_lo323228 = getelementptr inbounds nuw %struct.bz_stream, ptr %2270, i32 0, i32 2
  %2271 = load i32, ptr %total_in_lo323228, align 4
  %cmp3229 = icmp eq i32 %2271, 0
  br i1 %cmp3229, label %if.then3231, label %if.end3235

if.then3231:                                      ; preds = %if.end3208
  %2272 = load ptr, ptr %s.addr, align 8
  %strm3232 = getelementptr inbounds nuw %struct.DState, ptr %2272, i32 0, i32 0
  %2273 = load ptr, ptr %strm3232, align 8
  %total_in_hi323233 = getelementptr inbounds nuw %struct.bz_stream, ptr %2273, i32 0, i32 3
  %2274 = load i32, ptr %total_in_hi323233, align 8
  %inc3234 = add i32 %2274, 1
  store i32 %inc3234, ptr %total_in_hi323233, align 8
  br label %if.end3235

if.end3235:                                       ; preds = %if.then3231, %if.end3208
  br label %while.body3188

while.end3236:                                    ; preds = %if.then3192
  %2275 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3237 = getelementptr inbounds nuw %struct.DState, ptr %2275, i32 0, i32 24
  %2276 = load i32, ptr %storedCombinedCRC3237, align 4
  %shl3238 = shl i32 %2276, 8
  %2277 = load i8, ptr %uc, align 1
  %conv3239 = zext i8 %2277 to i32
  %or3240 = or i32 %shl3238, %conv3239
  %2278 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3241 = getelementptr inbounds nuw %struct.DState, ptr %2278, i32 0, i32 24
  store i32 %or3240, ptr %storedCombinedCRC3241, align 4
  br label %sw.bb3242

sw.bb3242:                                        ; preds = %while.end3236, %if.end
  %2279 = load ptr, ptr %s.addr, align 8
  %state3243 = getelementptr inbounds nuw %struct.DState, ptr %2279, i32 0, i32 1
  store i32 48, ptr %state3243, align 8
  br label %while.body3245

while.body3245:                                   ; preds = %if.end3292, %sw.bb3242
  %2280 = load ptr, ptr %s.addr, align 8
  %bsLive3246 = getelementptr inbounds nuw %struct.DState, ptr %2280, i32 0, i32 8
  %2281 = load i32, ptr %bsLive3246, align 4
  %cmp3247 = icmp sge i32 %2281, 8
  br i1 %cmp3247, label %if.then3249, label %if.end3259

if.then3249:                                      ; preds = %while.body3245
  %2282 = load ptr, ptr %s.addr, align 8
  %bsBuff3251 = getelementptr inbounds nuw %struct.DState, ptr %2282, i32 0, i32 7
  %2283 = load i32, ptr %bsBuff3251, align 8
  %2284 = load ptr, ptr %s.addr, align 8
  %bsLive3252 = getelementptr inbounds nuw %struct.DState, ptr %2284, i32 0, i32 8
  %2285 = load i32, ptr %bsLive3252, align 4
  %sub3253 = sub nsw i32 %2285, 8
  %shr3254 = lshr i32 %2283, %sub3253
  %and3255 = and i32 %shr3254, 255
  store i32 %and3255, ptr %v3250, align 4
  %2286 = load ptr, ptr %s.addr, align 8
  %bsLive3256 = getelementptr inbounds nuw %struct.DState, ptr %2286, i32 0, i32 8
  %2287 = load i32, ptr %bsLive3256, align 4
  %sub3257 = sub nsw i32 %2287, 8
  store i32 %sub3257, ptr %bsLive3256, align 4
  %2288 = load i32, ptr %v3250, align 4
  %conv3258 = trunc i32 %2288 to i8
  store i8 %conv3258, ptr %uc, align 1
  br label %while.end3293

if.end3259:                                       ; preds = %while.body3245
  %2289 = load ptr, ptr %s.addr, align 8
  %strm3260 = getelementptr inbounds nuw %struct.DState, ptr %2289, i32 0, i32 0
  %2290 = load ptr, ptr %strm3260, align 8
  %avail_in3261 = getelementptr inbounds nuw %struct.bz_stream, ptr %2290, i32 0, i32 1
  %2291 = load i32, ptr %avail_in3261, align 8
  %cmp3262 = icmp eq i32 %2291, 0
  br i1 %cmp3262, label %if.then3264, label %if.end3265

if.then3264:                                      ; preds = %if.end3259
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3265:                                       ; preds = %if.end3259
  %2292 = load ptr, ptr %s.addr, align 8
  %bsBuff3266 = getelementptr inbounds nuw %struct.DState, ptr %2292, i32 0, i32 7
  %2293 = load i32, ptr %bsBuff3266, align 8
  %shl3267 = shl i32 %2293, 8
  %2294 = load ptr, ptr %s.addr, align 8
  %strm3268 = getelementptr inbounds nuw %struct.DState, ptr %2294, i32 0, i32 0
  %2295 = load ptr, ptr %strm3268, align 8
  %next_in3269 = getelementptr inbounds nuw %struct.bz_stream, ptr %2295, i32 0, i32 0
  %2296 = load ptr, ptr %next_in3269, align 8
  %2297 = load i8, ptr %2296, align 1
  %conv3270 = zext i8 %2297 to i32
  %or3271 = or i32 %shl3267, %conv3270
  %2298 = load ptr, ptr %s.addr, align 8
  %bsBuff3272 = getelementptr inbounds nuw %struct.DState, ptr %2298, i32 0, i32 7
  store i32 %or3271, ptr %bsBuff3272, align 8
  %2299 = load ptr, ptr %s.addr, align 8
  %bsLive3273 = getelementptr inbounds nuw %struct.DState, ptr %2299, i32 0, i32 8
  %2300 = load i32, ptr %bsLive3273, align 4
  %add3274 = add nsw i32 %2300, 8
  store i32 %add3274, ptr %bsLive3273, align 4
  %2301 = load ptr, ptr %s.addr, align 8
  %strm3275 = getelementptr inbounds nuw %struct.DState, ptr %2301, i32 0, i32 0
  %2302 = load ptr, ptr %strm3275, align 8
  %next_in3276 = getelementptr inbounds nuw %struct.bz_stream, ptr %2302, i32 0, i32 0
  %2303 = load ptr, ptr %next_in3276, align 8
  %incdec.ptr3277 = getelementptr inbounds nuw i8, ptr %2303, i32 1
  store ptr %incdec.ptr3277, ptr %next_in3276, align 8
  %2304 = load ptr, ptr %s.addr, align 8
  %strm3278 = getelementptr inbounds nuw %struct.DState, ptr %2304, i32 0, i32 0
  %2305 = load ptr, ptr %strm3278, align 8
  %avail_in3279 = getelementptr inbounds nuw %struct.bz_stream, ptr %2305, i32 0, i32 1
  %2306 = load i32, ptr %avail_in3279, align 8
  %dec3280 = add i32 %2306, -1
  store i32 %dec3280, ptr %avail_in3279, align 8
  %2307 = load ptr, ptr %s.addr, align 8
  %strm3281 = getelementptr inbounds nuw %struct.DState, ptr %2307, i32 0, i32 0
  %2308 = load ptr, ptr %strm3281, align 8
  %total_in_lo323282 = getelementptr inbounds nuw %struct.bz_stream, ptr %2308, i32 0, i32 2
  %2309 = load i32, ptr %total_in_lo323282, align 4
  %inc3283 = add i32 %2309, 1
  store i32 %inc3283, ptr %total_in_lo323282, align 4
  %2310 = load ptr, ptr %s.addr, align 8
  %strm3284 = getelementptr inbounds nuw %struct.DState, ptr %2310, i32 0, i32 0
  %2311 = load ptr, ptr %strm3284, align 8
  %total_in_lo323285 = getelementptr inbounds nuw %struct.bz_stream, ptr %2311, i32 0, i32 2
  %2312 = load i32, ptr %total_in_lo323285, align 4
  %cmp3286 = icmp eq i32 %2312, 0
  br i1 %cmp3286, label %if.then3288, label %if.end3292

if.then3288:                                      ; preds = %if.end3265
  %2313 = load ptr, ptr %s.addr, align 8
  %strm3289 = getelementptr inbounds nuw %struct.DState, ptr %2313, i32 0, i32 0
  %2314 = load ptr, ptr %strm3289, align 8
  %total_in_hi323290 = getelementptr inbounds nuw %struct.bz_stream, ptr %2314, i32 0, i32 3
  %2315 = load i32, ptr %total_in_hi323290, align 8
  %inc3291 = add i32 %2315, 1
  store i32 %inc3291, ptr %total_in_hi323290, align 8
  br label %if.end3292

if.end3292:                                       ; preds = %if.then3288, %if.end3265
  br label %while.body3245

while.end3293:                                    ; preds = %if.then3249
  %2316 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3294 = getelementptr inbounds nuw %struct.DState, ptr %2316, i32 0, i32 24
  %2317 = load i32, ptr %storedCombinedCRC3294, align 4
  %shl3295 = shl i32 %2317, 8
  %2318 = load i8, ptr %uc, align 1
  %conv3296 = zext i8 %2318 to i32
  %or3297 = or i32 %shl3295, %conv3296
  %2319 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3298 = getelementptr inbounds nuw %struct.DState, ptr %2319, i32 0, i32 24
  store i32 %or3297, ptr %storedCombinedCRC3298, align 4
  br label %sw.bb3299

sw.bb3299:                                        ; preds = %while.end3293, %if.end
  %2320 = load ptr, ptr %s.addr, align 8
  %state3300 = getelementptr inbounds nuw %struct.DState, ptr %2320, i32 0, i32 1
  store i32 49, ptr %state3300, align 8
  br label %while.body3302

while.body3302:                                   ; preds = %if.end3349, %sw.bb3299
  %2321 = load ptr, ptr %s.addr, align 8
  %bsLive3303 = getelementptr inbounds nuw %struct.DState, ptr %2321, i32 0, i32 8
  %2322 = load i32, ptr %bsLive3303, align 4
  %cmp3304 = icmp sge i32 %2322, 8
  br i1 %cmp3304, label %if.then3306, label %if.end3316

if.then3306:                                      ; preds = %while.body3302
  %2323 = load ptr, ptr %s.addr, align 8
  %bsBuff3308 = getelementptr inbounds nuw %struct.DState, ptr %2323, i32 0, i32 7
  %2324 = load i32, ptr %bsBuff3308, align 8
  %2325 = load ptr, ptr %s.addr, align 8
  %bsLive3309 = getelementptr inbounds nuw %struct.DState, ptr %2325, i32 0, i32 8
  %2326 = load i32, ptr %bsLive3309, align 4
  %sub3310 = sub nsw i32 %2326, 8
  %shr3311 = lshr i32 %2324, %sub3310
  %and3312 = and i32 %shr3311, 255
  store i32 %and3312, ptr %v3307, align 4
  %2327 = load ptr, ptr %s.addr, align 8
  %bsLive3313 = getelementptr inbounds nuw %struct.DState, ptr %2327, i32 0, i32 8
  %2328 = load i32, ptr %bsLive3313, align 4
  %sub3314 = sub nsw i32 %2328, 8
  store i32 %sub3314, ptr %bsLive3313, align 4
  %2329 = load i32, ptr %v3307, align 4
  %conv3315 = trunc i32 %2329 to i8
  store i8 %conv3315, ptr %uc, align 1
  br label %while.end3350

if.end3316:                                       ; preds = %while.body3302
  %2330 = load ptr, ptr %s.addr, align 8
  %strm3317 = getelementptr inbounds nuw %struct.DState, ptr %2330, i32 0, i32 0
  %2331 = load ptr, ptr %strm3317, align 8
  %avail_in3318 = getelementptr inbounds nuw %struct.bz_stream, ptr %2331, i32 0, i32 1
  %2332 = load i32, ptr %avail_in3318, align 8
  %cmp3319 = icmp eq i32 %2332, 0
  br i1 %cmp3319, label %if.then3321, label %if.end3322

if.then3321:                                      ; preds = %if.end3316
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3322:                                       ; preds = %if.end3316
  %2333 = load ptr, ptr %s.addr, align 8
  %bsBuff3323 = getelementptr inbounds nuw %struct.DState, ptr %2333, i32 0, i32 7
  %2334 = load i32, ptr %bsBuff3323, align 8
  %shl3324 = shl i32 %2334, 8
  %2335 = load ptr, ptr %s.addr, align 8
  %strm3325 = getelementptr inbounds nuw %struct.DState, ptr %2335, i32 0, i32 0
  %2336 = load ptr, ptr %strm3325, align 8
  %next_in3326 = getelementptr inbounds nuw %struct.bz_stream, ptr %2336, i32 0, i32 0
  %2337 = load ptr, ptr %next_in3326, align 8
  %2338 = load i8, ptr %2337, align 1
  %conv3327 = zext i8 %2338 to i32
  %or3328 = or i32 %shl3324, %conv3327
  %2339 = load ptr, ptr %s.addr, align 8
  %bsBuff3329 = getelementptr inbounds nuw %struct.DState, ptr %2339, i32 0, i32 7
  store i32 %or3328, ptr %bsBuff3329, align 8
  %2340 = load ptr, ptr %s.addr, align 8
  %bsLive3330 = getelementptr inbounds nuw %struct.DState, ptr %2340, i32 0, i32 8
  %2341 = load i32, ptr %bsLive3330, align 4
  %add3331 = add nsw i32 %2341, 8
  store i32 %add3331, ptr %bsLive3330, align 4
  %2342 = load ptr, ptr %s.addr, align 8
  %strm3332 = getelementptr inbounds nuw %struct.DState, ptr %2342, i32 0, i32 0
  %2343 = load ptr, ptr %strm3332, align 8
  %next_in3333 = getelementptr inbounds nuw %struct.bz_stream, ptr %2343, i32 0, i32 0
  %2344 = load ptr, ptr %next_in3333, align 8
  %incdec.ptr3334 = getelementptr inbounds nuw i8, ptr %2344, i32 1
  store ptr %incdec.ptr3334, ptr %next_in3333, align 8
  %2345 = load ptr, ptr %s.addr, align 8
  %strm3335 = getelementptr inbounds nuw %struct.DState, ptr %2345, i32 0, i32 0
  %2346 = load ptr, ptr %strm3335, align 8
  %avail_in3336 = getelementptr inbounds nuw %struct.bz_stream, ptr %2346, i32 0, i32 1
  %2347 = load i32, ptr %avail_in3336, align 8
  %dec3337 = add i32 %2347, -1
  store i32 %dec3337, ptr %avail_in3336, align 8
  %2348 = load ptr, ptr %s.addr, align 8
  %strm3338 = getelementptr inbounds nuw %struct.DState, ptr %2348, i32 0, i32 0
  %2349 = load ptr, ptr %strm3338, align 8
  %total_in_lo323339 = getelementptr inbounds nuw %struct.bz_stream, ptr %2349, i32 0, i32 2
  %2350 = load i32, ptr %total_in_lo323339, align 4
  %inc3340 = add i32 %2350, 1
  store i32 %inc3340, ptr %total_in_lo323339, align 4
  %2351 = load ptr, ptr %s.addr, align 8
  %strm3341 = getelementptr inbounds nuw %struct.DState, ptr %2351, i32 0, i32 0
  %2352 = load ptr, ptr %strm3341, align 8
  %total_in_lo323342 = getelementptr inbounds nuw %struct.bz_stream, ptr %2352, i32 0, i32 2
  %2353 = load i32, ptr %total_in_lo323342, align 4
  %cmp3343 = icmp eq i32 %2353, 0
  br i1 %cmp3343, label %if.then3345, label %if.end3349

if.then3345:                                      ; preds = %if.end3322
  %2354 = load ptr, ptr %s.addr, align 8
  %strm3346 = getelementptr inbounds nuw %struct.DState, ptr %2354, i32 0, i32 0
  %2355 = load ptr, ptr %strm3346, align 8
  %total_in_hi323347 = getelementptr inbounds nuw %struct.bz_stream, ptr %2355, i32 0, i32 3
  %2356 = load i32, ptr %total_in_hi323347, align 8
  %inc3348 = add i32 %2356, 1
  store i32 %inc3348, ptr %total_in_hi323347, align 8
  br label %if.end3349

if.end3349:                                       ; preds = %if.then3345, %if.end3322
  br label %while.body3302

while.end3350:                                    ; preds = %if.then3306
  %2357 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3351 = getelementptr inbounds nuw %struct.DState, ptr %2357, i32 0, i32 24
  %2358 = load i32, ptr %storedCombinedCRC3351, align 4
  %shl3352 = shl i32 %2358, 8
  %2359 = load i8, ptr %uc, align 1
  %conv3353 = zext i8 %2359 to i32
  %or3354 = or i32 %shl3352, %conv3353
  %2360 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3355 = getelementptr inbounds nuw %struct.DState, ptr %2360, i32 0, i32 24
  store i32 %or3354, ptr %storedCombinedCRC3355, align 4
  br label %sw.bb3356

sw.bb3356:                                        ; preds = %while.end3350, %if.end
  %2361 = load ptr, ptr %s.addr, align 8
  %state3357 = getelementptr inbounds nuw %struct.DState, ptr %2361, i32 0, i32 1
  store i32 50, ptr %state3357, align 8
  br label %while.body3359

while.body3359:                                   ; preds = %if.end3406, %sw.bb3356
  %2362 = load ptr, ptr %s.addr, align 8
  %bsLive3360 = getelementptr inbounds nuw %struct.DState, ptr %2362, i32 0, i32 8
  %2363 = load i32, ptr %bsLive3360, align 4
  %cmp3361 = icmp sge i32 %2363, 8
  br i1 %cmp3361, label %if.then3363, label %if.end3373

if.then3363:                                      ; preds = %while.body3359
  %2364 = load ptr, ptr %s.addr, align 8
  %bsBuff3365 = getelementptr inbounds nuw %struct.DState, ptr %2364, i32 0, i32 7
  %2365 = load i32, ptr %bsBuff3365, align 8
  %2366 = load ptr, ptr %s.addr, align 8
  %bsLive3366 = getelementptr inbounds nuw %struct.DState, ptr %2366, i32 0, i32 8
  %2367 = load i32, ptr %bsLive3366, align 4
  %sub3367 = sub nsw i32 %2367, 8
  %shr3368 = lshr i32 %2365, %sub3367
  %and3369 = and i32 %shr3368, 255
  store i32 %and3369, ptr %v3364, align 4
  %2368 = load ptr, ptr %s.addr, align 8
  %bsLive3370 = getelementptr inbounds nuw %struct.DState, ptr %2368, i32 0, i32 8
  %2369 = load i32, ptr %bsLive3370, align 4
  %sub3371 = sub nsw i32 %2369, 8
  store i32 %sub3371, ptr %bsLive3370, align 4
  %2370 = load i32, ptr %v3364, align 4
  %conv3372 = trunc i32 %2370 to i8
  store i8 %conv3372, ptr %uc, align 1
  br label %while.end3407

if.end3373:                                       ; preds = %while.body3359
  %2371 = load ptr, ptr %s.addr, align 8
  %strm3374 = getelementptr inbounds nuw %struct.DState, ptr %2371, i32 0, i32 0
  %2372 = load ptr, ptr %strm3374, align 8
  %avail_in3375 = getelementptr inbounds nuw %struct.bz_stream, ptr %2372, i32 0, i32 1
  %2373 = load i32, ptr %avail_in3375, align 8
  %cmp3376 = icmp eq i32 %2373, 0
  br i1 %cmp3376, label %if.then3378, label %if.end3379

if.then3378:                                      ; preds = %if.end3373
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3379:                                       ; preds = %if.end3373
  %2374 = load ptr, ptr %s.addr, align 8
  %bsBuff3380 = getelementptr inbounds nuw %struct.DState, ptr %2374, i32 0, i32 7
  %2375 = load i32, ptr %bsBuff3380, align 8
  %shl3381 = shl i32 %2375, 8
  %2376 = load ptr, ptr %s.addr, align 8
  %strm3382 = getelementptr inbounds nuw %struct.DState, ptr %2376, i32 0, i32 0
  %2377 = load ptr, ptr %strm3382, align 8
  %next_in3383 = getelementptr inbounds nuw %struct.bz_stream, ptr %2377, i32 0, i32 0
  %2378 = load ptr, ptr %next_in3383, align 8
  %2379 = load i8, ptr %2378, align 1
  %conv3384 = zext i8 %2379 to i32
  %or3385 = or i32 %shl3381, %conv3384
  %2380 = load ptr, ptr %s.addr, align 8
  %bsBuff3386 = getelementptr inbounds nuw %struct.DState, ptr %2380, i32 0, i32 7
  store i32 %or3385, ptr %bsBuff3386, align 8
  %2381 = load ptr, ptr %s.addr, align 8
  %bsLive3387 = getelementptr inbounds nuw %struct.DState, ptr %2381, i32 0, i32 8
  %2382 = load i32, ptr %bsLive3387, align 4
  %add3388 = add nsw i32 %2382, 8
  store i32 %add3388, ptr %bsLive3387, align 4
  %2383 = load ptr, ptr %s.addr, align 8
  %strm3389 = getelementptr inbounds nuw %struct.DState, ptr %2383, i32 0, i32 0
  %2384 = load ptr, ptr %strm3389, align 8
  %next_in3390 = getelementptr inbounds nuw %struct.bz_stream, ptr %2384, i32 0, i32 0
  %2385 = load ptr, ptr %next_in3390, align 8
  %incdec.ptr3391 = getelementptr inbounds nuw i8, ptr %2385, i32 1
  store ptr %incdec.ptr3391, ptr %next_in3390, align 8
  %2386 = load ptr, ptr %s.addr, align 8
  %strm3392 = getelementptr inbounds nuw %struct.DState, ptr %2386, i32 0, i32 0
  %2387 = load ptr, ptr %strm3392, align 8
  %avail_in3393 = getelementptr inbounds nuw %struct.bz_stream, ptr %2387, i32 0, i32 1
  %2388 = load i32, ptr %avail_in3393, align 8
  %dec3394 = add i32 %2388, -1
  store i32 %dec3394, ptr %avail_in3393, align 8
  %2389 = load ptr, ptr %s.addr, align 8
  %strm3395 = getelementptr inbounds nuw %struct.DState, ptr %2389, i32 0, i32 0
  %2390 = load ptr, ptr %strm3395, align 8
  %total_in_lo323396 = getelementptr inbounds nuw %struct.bz_stream, ptr %2390, i32 0, i32 2
  %2391 = load i32, ptr %total_in_lo323396, align 4
  %inc3397 = add i32 %2391, 1
  store i32 %inc3397, ptr %total_in_lo323396, align 4
  %2392 = load ptr, ptr %s.addr, align 8
  %strm3398 = getelementptr inbounds nuw %struct.DState, ptr %2392, i32 0, i32 0
  %2393 = load ptr, ptr %strm3398, align 8
  %total_in_lo323399 = getelementptr inbounds nuw %struct.bz_stream, ptr %2393, i32 0, i32 2
  %2394 = load i32, ptr %total_in_lo323399, align 4
  %cmp3400 = icmp eq i32 %2394, 0
  br i1 %cmp3400, label %if.then3402, label %if.end3406

if.then3402:                                      ; preds = %if.end3379
  %2395 = load ptr, ptr %s.addr, align 8
  %strm3403 = getelementptr inbounds nuw %struct.DState, ptr %2395, i32 0, i32 0
  %2396 = load ptr, ptr %strm3403, align 8
  %total_in_hi323404 = getelementptr inbounds nuw %struct.bz_stream, ptr %2396, i32 0, i32 3
  %2397 = load i32, ptr %total_in_hi323404, align 8
  %inc3405 = add i32 %2397, 1
  store i32 %inc3405, ptr %total_in_hi323404, align 8
  br label %if.end3406

if.end3406:                                       ; preds = %if.then3402, %if.end3379
  br label %while.body3359

while.end3407:                                    ; preds = %if.then3363
  %2398 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3408 = getelementptr inbounds nuw %struct.DState, ptr %2398, i32 0, i32 24
  %2399 = load i32, ptr %storedCombinedCRC3408, align 4
  %shl3409 = shl i32 %2399, 8
  %2400 = load i8, ptr %uc, align 1
  %conv3410 = zext i8 %2400 to i32
  %or3411 = or i32 %shl3409, %conv3410
  %2401 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3412 = getelementptr inbounds nuw %struct.DState, ptr %2401, i32 0, i32 24
  store i32 %or3411, ptr %storedCombinedCRC3412, align 4
  %2402 = load ptr, ptr %s.addr, align 8
  %state3413 = getelementptr inbounds nuw %struct.DState, ptr %2402, i32 0, i32 1
  store i32 1, ptr %state3413, align 8
  store i32 4, ptr %retVal, align 4
  br label %save_state_and_return

sw.default:                                       ; preds = %if.end
  call void @BZ2_bz__AssertH__fail(i32 noundef 4001)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @BZ2_bz__AssertH__fail(i32 noundef 4002)
  br label %save_state_and_return

save_state_and_return:                            ; preds = %sw.epilog, %while.end3407, %if.then3378, %if.then3321, %if.then3264, %if.then3207, %if.then3183, %if.then3150, %if.then3126, %if.then3093, %if.then3069, %if.then3036, %if.then3012, %if.then2979, %if.then2955, %if.then2922, %if.end2899, %if.then2536, %if.then2521, %if.then2477, %if.then2447, %if.then2413, %if.then2367, %if.then2166, %if.then2153, %if.then2137, %if.then2105, %if.then2061, %if.then2031, %if.then1997, %if.then1951, %if.then1912, %if.then1868, %if.then1838, %if.then1804, %if.then1758, %if.then1605, %if.then1548, %if.then1524, %if.then1483, %if.then1411, %if.then1373, %if.then1344, %if.then1312, %if.then1290, %if.then1255, %if.then1231, %if.then1182, %if.then1099, %if.then1074, %if.then1066, %if.then1028, %if.then972, %if.then916, %if.then865, %if.then809, %if.then753, %if.then697, %if.then641, %if.then611, %if.then578, %if.then555, %if.then522, %if.then499, %if.then466, %if.then443, %if.then410, %if.then387, %if.then354, %if.then331, %if.then293, %if.then269, %if.then256, %if.then230, %if.then194, %if.then172, %if.then139, %if.then116, %if.then83, %if.then60, %if.then37
  %2403 = load i32, ptr %i, align 4
  %2404 = load ptr, ptr %s.addr, align 8
  %save_i3414 = getelementptr inbounds nuw %struct.DState, ptr %2404, i32 0, i32 40
  store i32 %2403, ptr %save_i3414, align 4
  %2405 = load i32, ptr %j, align 4
  %2406 = load ptr, ptr %s.addr, align 8
  %save_j3415 = getelementptr inbounds nuw %struct.DState, ptr %2406, i32 0, i32 41
  store i32 %2405, ptr %save_j3415, align 8
  %2407 = load i32, ptr %t, align 4
  %2408 = load ptr, ptr %s.addr, align 8
  %save_t3416 = getelementptr inbounds nuw %struct.DState, ptr %2408, i32 0, i32 42
  store i32 %2407, ptr %save_t3416, align 4
  %2409 = load i32, ptr %alphaSize, align 4
  %2410 = load ptr, ptr %s.addr, align 8
  %save_alphaSize3417 = getelementptr inbounds nuw %struct.DState, ptr %2410, i32 0, i32 43
  store i32 %2409, ptr %save_alphaSize3417, align 8
  %2411 = load i32, ptr %nGroups, align 4
  %2412 = load ptr, ptr %s.addr, align 8
  %save_nGroups3418 = getelementptr inbounds nuw %struct.DState, ptr %2412, i32 0, i32 44
  store i32 %2411, ptr %save_nGroups3418, align 4
  %2413 = load i32, ptr %nSelectors, align 4
  %2414 = load ptr, ptr %s.addr, align 8
  %save_nSelectors3419 = getelementptr inbounds nuw %struct.DState, ptr %2414, i32 0, i32 45
  store i32 %2413, ptr %save_nSelectors3419, align 8
  %2415 = load i32, ptr %EOB, align 4
  %2416 = load ptr, ptr %s.addr, align 8
  %save_EOB3420 = getelementptr inbounds nuw %struct.DState, ptr %2416, i32 0, i32 46
  store i32 %2415, ptr %save_EOB3420, align 4
  %2417 = load i32, ptr %groupNo, align 4
  %2418 = load ptr, ptr %s.addr, align 8
  %save_groupNo3421 = getelementptr inbounds nuw %struct.DState, ptr %2418, i32 0, i32 47
  store i32 %2417, ptr %save_groupNo3421, align 8
  %2419 = load i32, ptr %groupPos, align 4
  %2420 = load ptr, ptr %s.addr, align 8
  %save_groupPos3422 = getelementptr inbounds nuw %struct.DState, ptr %2420, i32 0, i32 48
  store i32 %2419, ptr %save_groupPos3422, align 4
  %2421 = load i32, ptr %nextSym, align 4
  %2422 = load ptr, ptr %s.addr, align 8
  %save_nextSym3423 = getelementptr inbounds nuw %struct.DState, ptr %2422, i32 0, i32 49
  store i32 %2421, ptr %save_nextSym3423, align 8
  %2423 = load i32, ptr %nblockMAX, align 4
  %2424 = load ptr, ptr %s.addr, align 8
  %save_nblockMAX3424 = getelementptr inbounds nuw %struct.DState, ptr %2424, i32 0, i32 50
  store i32 %2423, ptr %save_nblockMAX3424, align 4
  %2425 = load i32, ptr %nblock, align 4
  %2426 = load ptr, ptr %s.addr, align 8
  %save_nblock3425 = getelementptr inbounds nuw %struct.DState, ptr %2426, i32 0, i32 51
  store i32 %2425, ptr %save_nblock3425, align 8
  %2427 = load i32, ptr %es, align 4
  %2428 = load ptr, ptr %s.addr, align 8
  %save_es3426 = getelementptr inbounds nuw %struct.DState, ptr %2428, i32 0, i32 52
  store i32 %2427, ptr %save_es3426, align 4
  %2429 = load i32, ptr %N, align 4
  %2430 = load ptr, ptr %s.addr, align 8
  %save_N3427 = getelementptr inbounds nuw %struct.DState, ptr %2430, i32 0, i32 53
  store i32 %2429, ptr %save_N3427, align 8
  %2431 = load i32, ptr %curr, align 4
  %2432 = load ptr, ptr %s.addr, align 8
  %save_curr3428 = getelementptr inbounds nuw %struct.DState, ptr %2432, i32 0, i32 54
  store i32 %2431, ptr %save_curr3428, align 4
  %2433 = load i32, ptr %zt, align 4
  %2434 = load ptr, ptr %s.addr, align 8
  %save_zt3429 = getelementptr inbounds nuw %struct.DState, ptr %2434, i32 0, i32 55
  store i32 %2433, ptr %save_zt3429, align 8
  %2435 = load i32, ptr %zn, align 4
  %2436 = load ptr, ptr %s.addr, align 8
  %save_zn3430 = getelementptr inbounds nuw %struct.DState, ptr %2436, i32 0, i32 56
  store i32 %2435, ptr %save_zn3430, align 4
  %2437 = load i32, ptr %zvec, align 4
  %2438 = load ptr, ptr %s.addr, align 8
  %save_zvec3431 = getelementptr inbounds nuw %struct.DState, ptr %2438, i32 0, i32 57
  store i32 %2437, ptr %save_zvec3431, align 8
  %2439 = load i32, ptr %zj, align 4
  %2440 = load ptr, ptr %s.addr, align 8
  %save_zj3432 = getelementptr inbounds nuw %struct.DState, ptr %2440, i32 0, i32 58
  store i32 %2439, ptr %save_zj3432, align 4
  %2441 = load i32, ptr %gSel, align 4
  %2442 = load ptr, ptr %s.addr, align 8
  %save_gSel3433 = getelementptr inbounds nuw %struct.DState, ptr %2442, i32 0, i32 59
  store i32 %2441, ptr %save_gSel3433, align 8
  %2443 = load i32, ptr %gMinlen, align 4
  %2444 = load ptr, ptr %s.addr, align 8
  %save_gMinlen3434 = getelementptr inbounds nuw %struct.DState, ptr %2444, i32 0, i32 60
  store i32 %2443, ptr %save_gMinlen3434, align 4
  %2445 = load ptr, ptr %gLimit, align 8
  %2446 = load ptr, ptr %s.addr, align 8
  %save_gLimit3435 = getelementptr inbounds nuw %struct.DState, ptr %2446, i32 0, i32 61
  store ptr %2445, ptr %save_gLimit3435, align 8
  %2447 = load ptr, ptr %gBase, align 8
  %2448 = load ptr, ptr %s.addr, align 8
  %save_gBase3436 = getelementptr inbounds nuw %struct.DState, ptr %2448, i32 0, i32 62
  store ptr %2447, ptr %save_gBase3436, align 8
  %2449 = load ptr, ptr %gPerm, align 8
  %2450 = load ptr, ptr %s.addr, align 8
  %save_gPerm3437 = getelementptr inbounds nuw %struct.DState, ptr %2450, i32 0, i32 63
  store ptr %2449, ptr %save_gPerm3437, align 8
  %2451 = load i32, ptr %retVal, align 4
  ret i32 %2451
}

; Function Attrs: nounwind uwtable
declare hidden void @makeMaps_d(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_indexIntoF(i32 noundef, ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
