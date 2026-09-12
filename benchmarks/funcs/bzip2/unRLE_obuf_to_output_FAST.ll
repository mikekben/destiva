; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

@BZ2_crc32Table = external dso_local global [256 x i32], align 16
@BZ2_rNums = external dso_local global [512 x i32], align 16

; Function Attrs: nounwind uwtable
define hidden void @unRLE_obuf_to_output_FAST(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %k1 = alloca i8, align 1
  %c_calculatedBlockCRC = alloca i32, align 4
  %c_state_out_ch = alloca i8, align 1
  %c_state_out_len = alloca i32, align 4
  %c_nblock_used = alloca i32, align 4
  %c_k0 = alloca i32, align 4
  %c_tt = alloca ptr, align 8
  %c_tPos = alloca i32, align 4
  %cs_next_out = alloca ptr, align 8
  %cs_avail_out = alloca i32, align 4
  %avail_out_INIT = alloca i32, align 4
  %s_save_nblockPP = alloca i32, align 4
  %total_out_lo32_old = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %blockRandomised = getelementptr inbounds nuw %struct.DState, ptr %0, i32 0, i32 4
  %1 = load i8, ptr %blockRandomised, align 4
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end258, %if.then185, %if.then179, %if.then131, %if.then125, %if.then77, %if.then71, %if.then
  br label %while.body2

while.body2:                                      ; preds = %if.end26, %while.body
  %2 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds nuw %struct.DState, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %strm, align 8
  %avail_out = getelementptr inbounds nuw %struct.bz_stream, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %avail_out, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body2
  br label %if.end414

if.end:                                           ; preds = %while.body2
  %5 = load ptr, ptr %s.addr, align 8
  %state_out_len = getelementptr inbounds nuw %struct.DState, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %state_out_len, align 8
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %s.addr, align 8
  %state_out_ch = getelementptr inbounds nuw %struct.DState, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %state_out_ch, align 4
  %9 = load ptr, ptr %s.addr, align 8
  %strm7 = getelementptr inbounds nuw %struct.DState, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %strm7, align 8
  %next_out = getelementptr inbounds nuw %struct.bz_stream, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %next_out, align 8
  store i8 %8, ptr %11, align 1
  %12 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds nuw %struct.DState, ptr %12, i32 0, i32 25
  %13 = load i32, ptr %calculatedBlockCRC, align 8
  %shl = shl i32 %13, 8
  %14 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC8 = getelementptr inbounds nuw %struct.DState, ptr %14, i32 0, i32 25
  %15 = load i32, ptr %calculatedBlockCRC8, align 8
  %shr = lshr i32 %15, 24
  %16 = load ptr, ptr %s.addr, align 8
  %state_out_ch9 = getelementptr inbounds nuw %struct.DState, ptr %16, i32 0, i32 2
  %17 = load i8, ptr %state_out_ch9, align 4
  %conv = zext i8 %17 to i32
  %xor = xor i32 %shr, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4
  %xor10 = xor i32 %shl, %18
  %19 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC11 = getelementptr inbounds nuw %struct.DState, ptr %19, i32 0, i32 25
  store i32 %xor10, ptr %calculatedBlockCRC11, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %state_out_len12 = getelementptr inbounds nuw %struct.DState, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %state_out_len12, align 8
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %state_out_len12, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %strm13 = getelementptr inbounds nuw %struct.DState, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %strm13, align 8
  %next_out14 = getelementptr inbounds nuw %struct.bz_stream, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %next_out14, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %next_out14, align 8
  %25 = load ptr, ptr %s.addr, align 8
  %strm15 = getelementptr inbounds nuw %struct.DState, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %strm15, align 8
  %avail_out16 = getelementptr inbounds nuw %struct.bz_stream, ptr %26, i32 0, i32 5
  %27 = load i32, ptr %avail_out16, align 8
  %dec17 = add i32 %27, -1
  store i32 %dec17, ptr %avail_out16, align 8
  %28 = load ptr, ptr %s.addr, align 8
  %strm18 = getelementptr inbounds nuw %struct.DState, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %strm18, align 8
  %total_out_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %29, i32 0, i32 6
  %30 = load i32, ptr %total_out_lo32, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %total_out_lo32, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %strm19 = getelementptr inbounds nuw %struct.DState, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %strm19, align 8
  %total_out_lo3220 = getelementptr inbounds nuw %struct.bz_stream, ptr %32, i32 0, i32 6
  %33 = load i32, ptr %total_out_lo3220, align 4
  %cmp21 = icmp eq i32 %33, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end6
  %34 = load ptr, ptr %s.addr, align 8
  %strm24 = getelementptr inbounds nuw %struct.DState, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %strm24, align 8
  %total_out_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %35, i32 0, i32 7
  %36 = load i32, ptr %total_out_hi32, align 8
  %inc25 = add i32 %36, 1
  store i32 %inc25, ptr %total_out_hi32, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end6
  br label %while.body2

while.end:                                        ; preds = %if.then5
  %37 = load ptr, ptr %s.addr, align 8
  %nblock_used = getelementptr inbounds nuw %struct.DState, ptr %37, i32 0, i32 17
  %38 = load i32, ptr %nblock_used, align 4
  %39 = load ptr, ptr %s.addr, align 8
  %save_nblock = getelementptr inbounds nuw %struct.DState, ptr %39, i32 0, i32 51
  %40 = load i32, ptr %save_nblock, align 8
  %add = add nsw i32 %40, 1
  %cmp27 = icmp eq i32 %38, %add
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  br label %if.end414

if.end30:                                         ; preds = %while.end
  %41 = load ptr, ptr %s.addr, align 8
  %state_out_len31 = getelementptr inbounds nuw %struct.DState, ptr %41, i32 0, i32 3
  store i32 1, ptr %state_out_len31, align 8
  %42 = load ptr, ptr %s.addr, align 8
  %k0 = getelementptr inbounds nuw %struct.DState, ptr %42, i32 0, i32 15
  %43 = load i32, ptr %k0, align 8
  %conv32 = trunc i32 %43 to i8
  %44 = load ptr, ptr %s.addr, align 8
  %state_out_ch33 = getelementptr inbounds nuw %struct.DState, ptr %44, i32 0, i32 2
  store i8 %conv32, ptr %state_out_ch33, align 4
  %45 = load ptr, ptr %s.addr, align 8
  %tt = getelementptr inbounds nuw %struct.DState, ptr %45, i32 0, i32 20
  %46 = load ptr, ptr %tt, align 8
  %47 = load ptr, ptr %s.addr, align 8
  %tPos = getelementptr inbounds nuw %struct.DState, ptr %47, i32 0, i32 14
  %48 = load i32, ptr %tPos, align 4
  %idxprom34 = zext i32 %48 to i64
  %arrayidx35 = getelementptr inbounds nuw i32, ptr %46, i64 %idxprom34
  %49 = load i32, ptr %arrayidx35, align 4
  %50 = load ptr, ptr %s.addr, align 8
  %tPos36 = getelementptr inbounds nuw %struct.DState, ptr %50, i32 0, i32 14
  store i32 %49, ptr %tPos36, align 4
  %51 = load ptr, ptr %s.addr, align 8
  %tPos37 = getelementptr inbounds nuw %struct.DState, ptr %51, i32 0, i32 14
  %52 = load i32, ptr %tPos37, align 4
  %and = and i32 %52, 255
  %conv38 = trunc i32 %and to i8
  store i8 %conv38, ptr %k1, align 1
  %53 = load ptr, ptr %s.addr, align 8
  %tPos39 = getelementptr inbounds nuw %struct.DState, ptr %53, i32 0, i32 14
  %54 = load i32, ptr %tPos39, align 4
  %shr40 = lshr i32 %54, 8
  store i32 %shr40, ptr %tPos39, align 4
  %55 = load ptr, ptr %s.addr, align 8
  %rNToGo = getelementptr inbounds nuw %struct.DState, ptr %55, i32 0, i32 5
  %56 = load i32, ptr %rNToGo, align 8
  %cmp41 = icmp eq i32 %56, 0
  br i1 %cmp41, label %if.then43, label %if.end55

if.then43:                                        ; preds = %if.end30
  %57 = load ptr, ptr %s.addr, align 8
  %rTPos = getelementptr inbounds nuw %struct.DState, ptr %57, i32 0, i32 6
  %58 = load i32, ptr %rTPos, align 4
  %idxprom44 = sext i32 %58 to i64
  %arrayidx45 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom44
  %59 = load i32, ptr %arrayidx45, align 4
  %60 = load ptr, ptr %s.addr, align 8
  %rNToGo46 = getelementptr inbounds nuw %struct.DState, ptr %60, i32 0, i32 5
  store i32 %59, ptr %rNToGo46, align 8
  %61 = load ptr, ptr %s.addr, align 8
  %rTPos47 = getelementptr inbounds nuw %struct.DState, ptr %61, i32 0, i32 6
  %62 = load i32, ptr %rTPos47, align 4
  %inc48 = add nsw i32 %62, 1
  store i32 %inc48, ptr %rTPos47, align 4
  %63 = load ptr, ptr %s.addr, align 8
  %rTPos49 = getelementptr inbounds nuw %struct.DState, ptr %63, i32 0, i32 6
  %64 = load i32, ptr %rTPos49, align 4
  %cmp50 = icmp eq i32 %64, 512
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.then43
  %65 = load ptr, ptr %s.addr, align 8
  %rTPos53 = getelementptr inbounds nuw %struct.DState, ptr %65, i32 0, i32 6
  store i32 0, ptr %rTPos53, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.then43
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end30
  %66 = load ptr, ptr %s.addr, align 8
  %rNToGo56 = getelementptr inbounds nuw %struct.DState, ptr %66, i32 0, i32 5
  %67 = load i32, ptr %rNToGo56, align 8
  %dec57 = add nsw i32 %67, -1
  store i32 %dec57, ptr %rNToGo56, align 8
  %68 = load ptr, ptr %s.addr, align 8
  %rNToGo58 = getelementptr inbounds nuw %struct.DState, ptr %68, i32 0, i32 5
  %69 = load i32, ptr %rNToGo58, align 8
  %cmp59 = icmp eq i32 %69, 1
  %70 = zext i1 %cmp59 to i64
  %cond = select i1 %cmp59, i32 1, i32 0
  %71 = load i8, ptr %k1, align 1
  %conv61 = zext i8 %71 to i32
  %xor62 = xor i32 %conv61, %cond
  %conv63 = trunc i32 %xor62 to i8
  store i8 %conv63, ptr %k1, align 1
  %72 = load ptr, ptr %s.addr, align 8
  %nblock_used64 = getelementptr inbounds nuw %struct.DState, ptr %72, i32 0, i32 17
  %73 = load i32, ptr %nblock_used64, align 4
  %inc65 = add nsw i32 %73, 1
  store i32 %inc65, ptr %nblock_used64, align 4
  %74 = load ptr, ptr %s.addr, align 8
  %nblock_used66 = getelementptr inbounds nuw %struct.DState, ptr %74, i32 0, i32 17
  %75 = load i32, ptr %nblock_used66, align 4
  %76 = load ptr, ptr %s.addr, align 8
  %save_nblock67 = getelementptr inbounds nuw %struct.DState, ptr %76, i32 0, i32 51
  %77 = load i32, ptr %save_nblock67, align 8
  %add68 = add nsw i32 %77, 1
  %cmp69 = icmp eq i32 %75, %add68
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end55
  br label %while.body

if.end72:                                         ; preds = %if.end55
  %78 = load i8, ptr %k1, align 1
  %conv73 = zext i8 %78 to i32
  %79 = load ptr, ptr %s.addr, align 8
  %k074 = getelementptr inbounds nuw %struct.DState, ptr %79, i32 0, i32 15
  %80 = load i32, ptr %k074, align 8
  %cmp75 = icmp ne i32 %conv73, %80
  br i1 %cmp75, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end72
  %81 = load i8, ptr %k1, align 1
  %conv78 = zext i8 %81 to i32
  %82 = load ptr, ptr %s.addr, align 8
  %k079 = getelementptr inbounds nuw %struct.DState, ptr %82, i32 0, i32 15
  store i32 %conv78, ptr %k079, align 8
  br label %while.body

if.end80:                                         ; preds = %if.end72
  %83 = load ptr, ptr %s.addr, align 8
  %state_out_len81 = getelementptr inbounds nuw %struct.DState, ptr %83, i32 0, i32 3
  store i32 2, ptr %state_out_len81, align 8
  %84 = load ptr, ptr %s.addr, align 8
  %tt82 = getelementptr inbounds nuw %struct.DState, ptr %84, i32 0, i32 20
  %85 = load ptr, ptr %tt82, align 8
  %86 = load ptr, ptr %s.addr, align 8
  %tPos83 = getelementptr inbounds nuw %struct.DState, ptr %86, i32 0, i32 14
  %87 = load i32, ptr %tPos83, align 4
  %idxprom84 = zext i32 %87 to i64
  %arrayidx85 = getelementptr inbounds nuw i32, ptr %85, i64 %idxprom84
  %88 = load i32, ptr %arrayidx85, align 4
  %89 = load ptr, ptr %s.addr, align 8
  %tPos86 = getelementptr inbounds nuw %struct.DState, ptr %89, i32 0, i32 14
  store i32 %88, ptr %tPos86, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %tPos87 = getelementptr inbounds nuw %struct.DState, ptr %90, i32 0, i32 14
  %91 = load i32, ptr %tPos87, align 4
  %and88 = and i32 %91, 255
  %conv89 = trunc i32 %and88 to i8
  store i8 %conv89, ptr %k1, align 1
  %92 = load ptr, ptr %s.addr, align 8
  %tPos90 = getelementptr inbounds nuw %struct.DState, ptr %92, i32 0, i32 14
  %93 = load i32, ptr %tPos90, align 4
  %shr91 = lshr i32 %93, 8
  store i32 %shr91, ptr %tPos90, align 4
  %94 = load ptr, ptr %s.addr, align 8
  %rNToGo92 = getelementptr inbounds nuw %struct.DState, ptr %94, i32 0, i32 5
  %95 = load i32, ptr %rNToGo92, align 8
  %cmp93 = icmp eq i32 %95, 0
  br i1 %cmp93, label %if.then95, label %if.end108

if.then95:                                        ; preds = %if.end80
  %96 = load ptr, ptr %s.addr, align 8
  %rTPos96 = getelementptr inbounds nuw %struct.DState, ptr %96, i32 0, i32 6
  %97 = load i32, ptr %rTPos96, align 4
  %idxprom97 = sext i32 %97 to i64
  %arrayidx98 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom97
  %98 = load i32, ptr %arrayidx98, align 4
  %99 = load ptr, ptr %s.addr, align 8
  %rNToGo99 = getelementptr inbounds nuw %struct.DState, ptr %99, i32 0, i32 5
  store i32 %98, ptr %rNToGo99, align 8
  %100 = load ptr, ptr %s.addr, align 8
  %rTPos100 = getelementptr inbounds nuw %struct.DState, ptr %100, i32 0, i32 6
  %101 = load i32, ptr %rTPos100, align 4
  %inc101 = add nsw i32 %101, 1
  store i32 %inc101, ptr %rTPos100, align 4
  %102 = load ptr, ptr %s.addr, align 8
  %rTPos102 = getelementptr inbounds nuw %struct.DState, ptr %102, i32 0, i32 6
  %103 = load i32, ptr %rTPos102, align 4
  %cmp103 = icmp eq i32 %103, 512
  br i1 %cmp103, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.then95
  %104 = load ptr, ptr %s.addr, align 8
  %rTPos106 = getelementptr inbounds nuw %struct.DState, ptr %104, i32 0, i32 6
  store i32 0, ptr %rTPos106, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.then95
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end80
  %105 = load ptr, ptr %s.addr, align 8
  %rNToGo109 = getelementptr inbounds nuw %struct.DState, ptr %105, i32 0, i32 5
  %106 = load i32, ptr %rNToGo109, align 8
  %dec110 = add nsw i32 %106, -1
  store i32 %dec110, ptr %rNToGo109, align 8
  %107 = load ptr, ptr %s.addr, align 8
  %rNToGo111 = getelementptr inbounds nuw %struct.DState, ptr %107, i32 0, i32 5
  %108 = load i32, ptr %rNToGo111, align 8
  %cmp112 = icmp eq i32 %108, 1
  %109 = zext i1 %cmp112 to i64
  %cond114 = select i1 %cmp112, i32 1, i32 0
  %110 = load i8, ptr %k1, align 1
  %conv115 = zext i8 %110 to i32
  %xor116 = xor i32 %conv115, %cond114
  %conv117 = trunc i32 %xor116 to i8
  store i8 %conv117, ptr %k1, align 1
  %111 = load ptr, ptr %s.addr, align 8
  %nblock_used118 = getelementptr inbounds nuw %struct.DState, ptr %111, i32 0, i32 17
  %112 = load i32, ptr %nblock_used118, align 4
  %inc119 = add nsw i32 %112, 1
  store i32 %inc119, ptr %nblock_used118, align 4
  %113 = load ptr, ptr %s.addr, align 8
  %nblock_used120 = getelementptr inbounds nuw %struct.DState, ptr %113, i32 0, i32 17
  %114 = load i32, ptr %nblock_used120, align 4
  %115 = load ptr, ptr %s.addr, align 8
  %save_nblock121 = getelementptr inbounds nuw %struct.DState, ptr %115, i32 0, i32 51
  %116 = load i32, ptr %save_nblock121, align 8
  %add122 = add nsw i32 %116, 1
  %cmp123 = icmp eq i32 %114, %add122
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end108
  br label %while.body

if.end126:                                        ; preds = %if.end108
  %117 = load i8, ptr %k1, align 1
  %conv127 = zext i8 %117 to i32
  %118 = load ptr, ptr %s.addr, align 8
  %k0128 = getelementptr inbounds nuw %struct.DState, ptr %118, i32 0, i32 15
  %119 = load i32, ptr %k0128, align 8
  %cmp129 = icmp ne i32 %conv127, %119
  br i1 %cmp129, label %if.then131, label %if.end134

if.then131:                                       ; preds = %if.end126
  %120 = load i8, ptr %k1, align 1
  %conv132 = zext i8 %120 to i32
  %121 = load ptr, ptr %s.addr, align 8
  %k0133 = getelementptr inbounds nuw %struct.DState, ptr %121, i32 0, i32 15
  store i32 %conv132, ptr %k0133, align 8
  br label %while.body

if.end134:                                        ; preds = %if.end126
  %122 = load ptr, ptr %s.addr, align 8
  %state_out_len135 = getelementptr inbounds nuw %struct.DState, ptr %122, i32 0, i32 3
  store i32 3, ptr %state_out_len135, align 8
  %123 = load ptr, ptr %s.addr, align 8
  %tt136 = getelementptr inbounds nuw %struct.DState, ptr %123, i32 0, i32 20
  %124 = load ptr, ptr %tt136, align 8
  %125 = load ptr, ptr %s.addr, align 8
  %tPos137 = getelementptr inbounds nuw %struct.DState, ptr %125, i32 0, i32 14
  %126 = load i32, ptr %tPos137, align 4
  %idxprom138 = zext i32 %126 to i64
  %arrayidx139 = getelementptr inbounds nuw i32, ptr %124, i64 %idxprom138
  %127 = load i32, ptr %arrayidx139, align 4
  %128 = load ptr, ptr %s.addr, align 8
  %tPos140 = getelementptr inbounds nuw %struct.DState, ptr %128, i32 0, i32 14
  store i32 %127, ptr %tPos140, align 4
  %129 = load ptr, ptr %s.addr, align 8
  %tPos141 = getelementptr inbounds nuw %struct.DState, ptr %129, i32 0, i32 14
  %130 = load i32, ptr %tPos141, align 4
  %and142 = and i32 %130, 255
  %conv143 = trunc i32 %and142 to i8
  store i8 %conv143, ptr %k1, align 1
  %131 = load ptr, ptr %s.addr, align 8
  %tPos144 = getelementptr inbounds nuw %struct.DState, ptr %131, i32 0, i32 14
  %132 = load i32, ptr %tPos144, align 4
  %shr145 = lshr i32 %132, 8
  store i32 %shr145, ptr %tPos144, align 4
  %133 = load ptr, ptr %s.addr, align 8
  %rNToGo146 = getelementptr inbounds nuw %struct.DState, ptr %133, i32 0, i32 5
  %134 = load i32, ptr %rNToGo146, align 8
  %cmp147 = icmp eq i32 %134, 0
  br i1 %cmp147, label %if.then149, label %if.end162

if.then149:                                       ; preds = %if.end134
  %135 = load ptr, ptr %s.addr, align 8
  %rTPos150 = getelementptr inbounds nuw %struct.DState, ptr %135, i32 0, i32 6
  %136 = load i32, ptr %rTPos150, align 4
  %idxprom151 = sext i32 %136 to i64
  %arrayidx152 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom151
  %137 = load i32, ptr %arrayidx152, align 4
  %138 = load ptr, ptr %s.addr, align 8
  %rNToGo153 = getelementptr inbounds nuw %struct.DState, ptr %138, i32 0, i32 5
  store i32 %137, ptr %rNToGo153, align 8
  %139 = load ptr, ptr %s.addr, align 8
  %rTPos154 = getelementptr inbounds nuw %struct.DState, ptr %139, i32 0, i32 6
  %140 = load i32, ptr %rTPos154, align 4
  %inc155 = add nsw i32 %140, 1
  store i32 %inc155, ptr %rTPos154, align 4
  %141 = load ptr, ptr %s.addr, align 8
  %rTPos156 = getelementptr inbounds nuw %struct.DState, ptr %141, i32 0, i32 6
  %142 = load i32, ptr %rTPos156, align 4
  %cmp157 = icmp eq i32 %142, 512
  br i1 %cmp157, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.then149
  %143 = load ptr, ptr %s.addr, align 8
  %rTPos160 = getelementptr inbounds nuw %struct.DState, ptr %143, i32 0, i32 6
  store i32 0, ptr %rTPos160, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.then149
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.end134
  %144 = load ptr, ptr %s.addr, align 8
  %rNToGo163 = getelementptr inbounds nuw %struct.DState, ptr %144, i32 0, i32 5
  %145 = load i32, ptr %rNToGo163, align 8
  %dec164 = add nsw i32 %145, -1
  store i32 %dec164, ptr %rNToGo163, align 8
  %146 = load ptr, ptr %s.addr, align 8
  %rNToGo165 = getelementptr inbounds nuw %struct.DState, ptr %146, i32 0, i32 5
  %147 = load i32, ptr %rNToGo165, align 8
  %cmp166 = icmp eq i32 %147, 1
  %148 = zext i1 %cmp166 to i64
  %cond168 = select i1 %cmp166, i32 1, i32 0
  %149 = load i8, ptr %k1, align 1
  %conv169 = zext i8 %149 to i32
  %xor170 = xor i32 %conv169, %cond168
  %conv171 = trunc i32 %xor170 to i8
  store i8 %conv171, ptr %k1, align 1
  %150 = load ptr, ptr %s.addr, align 8
  %nblock_used172 = getelementptr inbounds nuw %struct.DState, ptr %150, i32 0, i32 17
  %151 = load i32, ptr %nblock_used172, align 4
  %inc173 = add nsw i32 %151, 1
  store i32 %inc173, ptr %nblock_used172, align 4
  %152 = load ptr, ptr %s.addr, align 8
  %nblock_used174 = getelementptr inbounds nuw %struct.DState, ptr %152, i32 0, i32 17
  %153 = load i32, ptr %nblock_used174, align 4
  %154 = load ptr, ptr %s.addr, align 8
  %save_nblock175 = getelementptr inbounds nuw %struct.DState, ptr %154, i32 0, i32 51
  %155 = load i32, ptr %save_nblock175, align 8
  %add176 = add nsw i32 %155, 1
  %cmp177 = icmp eq i32 %153, %add176
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %if.end162
  br label %while.body

if.end180:                                        ; preds = %if.end162
  %156 = load i8, ptr %k1, align 1
  %conv181 = zext i8 %156 to i32
  %157 = load ptr, ptr %s.addr, align 8
  %k0182 = getelementptr inbounds nuw %struct.DState, ptr %157, i32 0, i32 15
  %158 = load i32, ptr %k0182, align 8
  %cmp183 = icmp ne i32 %conv181, %158
  br i1 %cmp183, label %if.then185, label %if.end188

if.then185:                                       ; preds = %if.end180
  %159 = load i8, ptr %k1, align 1
  %conv186 = zext i8 %159 to i32
  %160 = load ptr, ptr %s.addr, align 8
  %k0187 = getelementptr inbounds nuw %struct.DState, ptr %160, i32 0, i32 15
  store i32 %conv186, ptr %k0187, align 8
  br label %while.body

if.end188:                                        ; preds = %if.end180
  %161 = load ptr, ptr %s.addr, align 8
  %tt189 = getelementptr inbounds nuw %struct.DState, ptr %161, i32 0, i32 20
  %162 = load ptr, ptr %tt189, align 8
  %163 = load ptr, ptr %s.addr, align 8
  %tPos190 = getelementptr inbounds nuw %struct.DState, ptr %163, i32 0, i32 14
  %164 = load i32, ptr %tPos190, align 4
  %idxprom191 = zext i32 %164 to i64
  %arrayidx192 = getelementptr inbounds nuw i32, ptr %162, i64 %idxprom191
  %165 = load i32, ptr %arrayidx192, align 4
  %166 = load ptr, ptr %s.addr, align 8
  %tPos193 = getelementptr inbounds nuw %struct.DState, ptr %166, i32 0, i32 14
  store i32 %165, ptr %tPos193, align 4
  %167 = load ptr, ptr %s.addr, align 8
  %tPos194 = getelementptr inbounds nuw %struct.DState, ptr %167, i32 0, i32 14
  %168 = load i32, ptr %tPos194, align 4
  %and195 = and i32 %168, 255
  %conv196 = trunc i32 %and195 to i8
  store i8 %conv196, ptr %k1, align 1
  %169 = load ptr, ptr %s.addr, align 8
  %tPos197 = getelementptr inbounds nuw %struct.DState, ptr %169, i32 0, i32 14
  %170 = load i32, ptr %tPos197, align 4
  %shr198 = lshr i32 %170, 8
  store i32 %shr198, ptr %tPos197, align 4
  %171 = load ptr, ptr %s.addr, align 8
  %rNToGo199 = getelementptr inbounds nuw %struct.DState, ptr %171, i32 0, i32 5
  %172 = load i32, ptr %rNToGo199, align 8
  %cmp200 = icmp eq i32 %172, 0
  br i1 %cmp200, label %if.then202, label %if.end215

if.then202:                                       ; preds = %if.end188
  %173 = load ptr, ptr %s.addr, align 8
  %rTPos203 = getelementptr inbounds nuw %struct.DState, ptr %173, i32 0, i32 6
  %174 = load i32, ptr %rTPos203, align 4
  %idxprom204 = sext i32 %174 to i64
  %arrayidx205 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom204
  %175 = load i32, ptr %arrayidx205, align 4
  %176 = load ptr, ptr %s.addr, align 8
  %rNToGo206 = getelementptr inbounds nuw %struct.DState, ptr %176, i32 0, i32 5
  store i32 %175, ptr %rNToGo206, align 8
  %177 = load ptr, ptr %s.addr, align 8
  %rTPos207 = getelementptr inbounds nuw %struct.DState, ptr %177, i32 0, i32 6
  %178 = load i32, ptr %rTPos207, align 4
  %inc208 = add nsw i32 %178, 1
  store i32 %inc208, ptr %rTPos207, align 4
  %179 = load ptr, ptr %s.addr, align 8
  %rTPos209 = getelementptr inbounds nuw %struct.DState, ptr %179, i32 0, i32 6
  %180 = load i32, ptr %rTPos209, align 4
  %cmp210 = icmp eq i32 %180, 512
  br i1 %cmp210, label %if.then212, label %if.end214

if.then212:                                       ; preds = %if.then202
  %181 = load ptr, ptr %s.addr, align 8
  %rTPos213 = getelementptr inbounds nuw %struct.DState, ptr %181, i32 0, i32 6
  store i32 0, ptr %rTPos213, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %if.then202
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.end188
  %182 = load ptr, ptr %s.addr, align 8
  %rNToGo216 = getelementptr inbounds nuw %struct.DState, ptr %182, i32 0, i32 5
  %183 = load i32, ptr %rNToGo216, align 8
  %dec217 = add nsw i32 %183, -1
  store i32 %dec217, ptr %rNToGo216, align 8
  %184 = load ptr, ptr %s.addr, align 8
  %rNToGo218 = getelementptr inbounds nuw %struct.DState, ptr %184, i32 0, i32 5
  %185 = load i32, ptr %rNToGo218, align 8
  %cmp219 = icmp eq i32 %185, 1
  %186 = zext i1 %cmp219 to i64
  %cond221 = select i1 %cmp219, i32 1, i32 0
  %187 = load i8, ptr %k1, align 1
  %conv222 = zext i8 %187 to i32
  %xor223 = xor i32 %conv222, %cond221
  %conv224 = trunc i32 %xor223 to i8
  store i8 %conv224, ptr %k1, align 1
  %188 = load ptr, ptr %s.addr, align 8
  %nblock_used225 = getelementptr inbounds nuw %struct.DState, ptr %188, i32 0, i32 17
  %189 = load i32, ptr %nblock_used225, align 4
  %inc226 = add nsw i32 %189, 1
  store i32 %inc226, ptr %nblock_used225, align 4
  %190 = load i8, ptr %k1, align 1
  %conv227 = zext i8 %190 to i32
  %add228 = add nsw i32 %conv227, 4
  %191 = load ptr, ptr %s.addr, align 8
  %state_out_len229 = getelementptr inbounds nuw %struct.DState, ptr %191, i32 0, i32 3
  store i32 %add228, ptr %state_out_len229, align 8
  %192 = load ptr, ptr %s.addr, align 8
  %tt230 = getelementptr inbounds nuw %struct.DState, ptr %192, i32 0, i32 20
  %193 = load ptr, ptr %tt230, align 8
  %194 = load ptr, ptr %s.addr, align 8
  %tPos231 = getelementptr inbounds nuw %struct.DState, ptr %194, i32 0, i32 14
  %195 = load i32, ptr %tPos231, align 4
  %idxprom232 = zext i32 %195 to i64
  %arrayidx233 = getelementptr inbounds nuw i32, ptr %193, i64 %idxprom232
  %196 = load i32, ptr %arrayidx233, align 4
  %197 = load ptr, ptr %s.addr, align 8
  %tPos234 = getelementptr inbounds nuw %struct.DState, ptr %197, i32 0, i32 14
  store i32 %196, ptr %tPos234, align 4
  %198 = load ptr, ptr %s.addr, align 8
  %tPos235 = getelementptr inbounds nuw %struct.DState, ptr %198, i32 0, i32 14
  %199 = load i32, ptr %tPos235, align 4
  %and236 = and i32 %199, 255
  %conv237 = trunc i32 %and236 to i8
  %conv238 = zext i8 %conv237 to i32
  %200 = load ptr, ptr %s.addr, align 8
  %k0239 = getelementptr inbounds nuw %struct.DState, ptr %200, i32 0, i32 15
  store i32 %conv238, ptr %k0239, align 8
  %201 = load ptr, ptr %s.addr, align 8
  %tPos240 = getelementptr inbounds nuw %struct.DState, ptr %201, i32 0, i32 14
  %202 = load i32, ptr %tPos240, align 4
  %shr241 = lshr i32 %202, 8
  store i32 %shr241, ptr %tPos240, align 4
  %203 = load ptr, ptr %s.addr, align 8
  %rNToGo242 = getelementptr inbounds nuw %struct.DState, ptr %203, i32 0, i32 5
  %204 = load i32, ptr %rNToGo242, align 8
  %cmp243 = icmp eq i32 %204, 0
  br i1 %cmp243, label %if.then245, label %if.end258

if.then245:                                       ; preds = %if.end215
  %205 = load ptr, ptr %s.addr, align 8
  %rTPos246 = getelementptr inbounds nuw %struct.DState, ptr %205, i32 0, i32 6
  %206 = load i32, ptr %rTPos246, align 4
  %idxprom247 = sext i32 %206 to i64
  %arrayidx248 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom247
  %207 = load i32, ptr %arrayidx248, align 4
  %208 = load ptr, ptr %s.addr, align 8
  %rNToGo249 = getelementptr inbounds nuw %struct.DState, ptr %208, i32 0, i32 5
  store i32 %207, ptr %rNToGo249, align 8
  %209 = load ptr, ptr %s.addr, align 8
  %rTPos250 = getelementptr inbounds nuw %struct.DState, ptr %209, i32 0, i32 6
  %210 = load i32, ptr %rTPos250, align 4
  %inc251 = add nsw i32 %210, 1
  store i32 %inc251, ptr %rTPos250, align 4
  %211 = load ptr, ptr %s.addr, align 8
  %rTPos252 = getelementptr inbounds nuw %struct.DState, ptr %211, i32 0, i32 6
  %212 = load i32, ptr %rTPos252, align 4
  %cmp253 = icmp eq i32 %212, 512
  br i1 %cmp253, label %if.then255, label %if.end257

if.then255:                                       ; preds = %if.then245
  %213 = load ptr, ptr %s.addr, align 8
  %rTPos256 = getelementptr inbounds nuw %struct.DState, ptr %213, i32 0, i32 6
  store i32 0, ptr %rTPos256, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.then255, %if.then245
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %if.end215
  %214 = load ptr, ptr %s.addr, align 8
  %rNToGo259 = getelementptr inbounds nuw %struct.DState, ptr %214, i32 0, i32 5
  %215 = load i32, ptr %rNToGo259, align 8
  %dec260 = add nsw i32 %215, -1
  store i32 %dec260, ptr %rNToGo259, align 8
  %216 = load ptr, ptr %s.addr, align 8
  %rNToGo261 = getelementptr inbounds nuw %struct.DState, ptr %216, i32 0, i32 5
  %217 = load i32, ptr %rNToGo261, align 8
  %cmp262 = icmp eq i32 %217, 1
  %218 = zext i1 %cmp262 to i64
  %cond264 = select i1 %cmp262, i32 1, i32 0
  %219 = load ptr, ptr %s.addr, align 8
  %k0265 = getelementptr inbounds nuw %struct.DState, ptr %219, i32 0, i32 15
  %220 = load i32, ptr %k0265, align 8
  %xor266 = xor i32 %220, %cond264
  store i32 %xor266, ptr %k0265, align 8
  %221 = load ptr, ptr %s.addr, align 8
  %nblock_used267 = getelementptr inbounds nuw %struct.DState, ptr %221, i32 0, i32 17
  %222 = load i32, ptr %nblock_used267, align 4
  %inc268 = add nsw i32 %222, 1
  store i32 %inc268, ptr %nblock_used267, align 4
  br label %while.body

if.else:                                          ; preds = %entry
  %223 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC269 = getelementptr inbounds nuw %struct.DState, ptr %223, i32 0, i32 25
  %224 = load i32, ptr %calculatedBlockCRC269, align 8
  store i32 %224, ptr %c_calculatedBlockCRC, align 4
  %225 = load ptr, ptr %s.addr, align 8
  %state_out_ch270 = getelementptr inbounds nuw %struct.DState, ptr %225, i32 0, i32 2
  %226 = load i8, ptr %state_out_ch270, align 4
  store i8 %226, ptr %c_state_out_ch, align 1
  %227 = load ptr, ptr %s.addr, align 8
  %state_out_len271 = getelementptr inbounds nuw %struct.DState, ptr %227, i32 0, i32 3
  %228 = load i32, ptr %state_out_len271, align 8
  store i32 %228, ptr %c_state_out_len, align 4
  %229 = load ptr, ptr %s.addr, align 8
  %nblock_used272 = getelementptr inbounds nuw %struct.DState, ptr %229, i32 0, i32 17
  %230 = load i32, ptr %nblock_used272, align 4
  store i32 %230, ptr %c_nblock_used, align 4
  %231 = load ptr, ptr %s.addr, align 8
  %k0273 = getelementptr inbounds nuw %struct.DState, ptr %231, i32 0, i32 15
  %232 = load i32, ptr %k0273, align 8
  store i32 %232, ptr %c_k0, align 4
  %233 = load ptr, ptr %s.addr, align 8
  %tt274 = getelementptr inbounds nuw %struct.DState, ptr %233, i32 0, i32 20
  %234 = load ptr, ptr %tt274, align 8
  store ptr %234, ptr %c_tt, align 8
  %235 = load ptr, ptr %s.addr, align 8
  %tPos275 = getelementptr inbounds nuw %struct.DState, ptr %235, i32 0, i32 14
  %236 = load i32, ptr %tPos275, align 4
  store i32 %236, ptr %c_tPos, align 4
  %237 = load ptr, ptr %s.addr, align 8
  %strm276 = getelementptr inbounds nuw %struct.DState, ptr %237, i32 0, i32 0
  %238 = load ptr, ptr %strm276, align 8
  %next_out277 = getelementptr inbounds nuw %struct.bz_stream, ptr %238, i32 0, i32 4
  %239 = load ptr, ptr %next_out277, align 8
  store ptr %239, ptr %cs_next_out, align 8
  %240 = load ptr, ptr %s.addr, align 8
  %strm278 = getelementptr inbounds nuw %struct.DState, ptr %240, i32 0, i32 0
  %241 = load ptr, ptr %strm278, align 8
  %avail_out279 = getelementptr inbounds nuw %struct.bz_stream, ptr %241, i32 0, i32 5
  %242 = load i32, ptr %avail_out279, align 8
  store i32 %242, ptr %cs_avail_out, align 4
  %243 = load i32, ptr %cs_avail_out, align 4
  store i32 %243, ptr %avail_out_INIT, align 4
  %244 = load ptr, ptr %s.addr, align 8
  %save_nblock280 = getelementptr inbounds nuw %struct.DState, ptr %244, i32 0, i32 51
  %245 = load i32, ptr %save_nblock280, align 8
  %add281 = add nsw i32 %245, 1
  store i32 %add281, ptr %s_save_nblockPP, align 4
  br label %while.body282

while.body282:                                    ; preds = %if.end373, %if.then371, %if.then366, %if.then355, %if.then350, %if.else
  %246 = load i32, ptr %c_state_out_len, align 4
  %cmp283 = icmp sgt i32 %246, 0
  br i1 %cmp283, label %if.then285, label %if.end320

if.then285:                                       ; preds = %while.body282
  br label %while.body287

while.body287:                                    ; preds = %if.end295, %if.then285
  %247 = load i32, ptr %cs_avail_out, align 4
  %cmp288 = icmp eq i32 %247, 0
  br i1 %cmp288, label %if.then290, label %if.end291

if.then290:                                       ; preds = %while.body287
  br label %return_notr

if.end291:                                        ; preds = %while.body287
  %248 = load i32, ptr %c_state_out_len, align 4
  %cmp292 = icmp eq i32 %248, 1
  br i1 %cmp292, label %if.then294, label %if.end295

if.then294:                                       ; preds = %if.end291
  br label %while.end306

if.end295:                                        ; preds = %if.end291
  %249 = load i8, ptr %c_state_out_ch, align 1
  %250 = load ptr, ptr %cs_next_out, align 8
  store i8 %249, ptr %250, align 1
  %251 = load i32, ptr %c_calculatedBlockCRC, align 4
  %shl296 = shl i32 %251, 8
  %252 = load i32, ptr %c_calculatedBlockCRC, align 4
  %shr297 = lshr i32 %252, 24
  %253 = load i8, ptr %c_state_out_ch, align 1
  %conv298 = zext i8 %253 to i32
  %xor299 = xor i32 %shr297, %conv298
  %idxprom300 = zext i32 %xor299 to i64
  %arrayidx301 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom300
  %254 = load i32, ptr %arrayidx301, align 4
  %xor302 = xor i32 %shl296, %254
  store i32 %xor302, ptr %c_calculatedBlockCRC, align 4
  %255 = load i32, ptr %c_state_out_len, align 4
  %dec303 = add nsw i32 %255, -1
  store i32 %dec303, ptr %c_state_out_len, align 4
  %256 = load ptr, ptr %cs_next_out, align 8
  %incdec.ptr304 = getelementptr inbounds nuw i8, ptr %256, i32 1
  store ptr %incdec.ptr304, ptr %cs_next_out, align 8
  %257 = load i32, ptr %cs_avail_out, align 4
  %dec305 = add i32 %257, -1
  store i32 %dec305, ptr %cs_avail_out, align 4
  br label %while.body287

while.end306:                                     ; preds = %if.then294
  br label %s_state_out_len_eq_one

s_state_out_len_eq_one:                           ; preds = %if.then340, %if.then335, %while.end306
  %258 = load i32, ptr %cs_avail_out, align 4
  %cmp307 = icmp eq i32 %258, 0
  br i1 %cmp307, label %if.then309, label %if.end310

if.then309:                                       ; preds = %s_state_out_len_eq_one
  store i32 1, ptr %c_state_out_len, align 4
  br label %return_notr

if.end310:                                        ; preds = %s_state_out_len_eq_one
  %259 = load i8, ptr %c_state_out_ch, align 1
  %260 = load ptr, ptr %cs_next_out, align 8
  store i8 %259, ptr %260, align 1
  %261 = load i32, ptr %c_calculatedBlockCRC, align 4
  %shl311 = shl i32 %261, 8
  %262 = load i32, ptr %c_calculatedBlockCRC, align 4
  %shr312 = lshr i32 %262, 24
  %263 = load i8, ptr %c_state_out_ch, align 1
  %conv313 = zext i8 %263 to i32
  %xor314 = xor i32 %shr312, %conv313
  %idxprom315 = zext i32 %xor314 to i64
  %arrayidx316 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom315
  %264 = load i32, ptr %arrayidx316, align 4
  %xor317 = xor i32 %shl311, %264
  store i32 %xor317, ptr %c_calculatedBlockCRC, align 4
  %265 = load ptr, ptr %cs_next_out, align 8
  %incdec.ptr318 = getelementptr inbounds nuw i8, ptr %265, i32 1
  store ptr %incdec.ptr318, ptr %cs_next_out, align 8
  %266 = load i32, ptr %cs_avail_out, align 4
  %dec319 = add i32 %266, -1
  store i32 %dec319, ptr %cs_avail_out, align 4
  br label %if.end320

if.end320:                                        ; preds = %if.end310, %while.body282
  %267 = load i32, ptr %c_nblock_used, align 4
  %268 = load i32, ptr %s_save_nblockPP, align 4
  %cmp321 = icmp eq i32 %267, %268
  br i1 %cmp321, label %if.then323, label %if.end324

if.then323:                                       ; preds = %if.end320
  store i32 0, ptr %c_state_out_len, align 4
  br label %return_notr

if.end324:                                        ; preds = %if.end320
  %269 = load i32, ptr %c_k0, align 4
  %conv325 = trunc i32 %269 to i8
  store i8 %conv325, ptr %c_state_out_ch, align 1
  %270 = load ptr, ptr %c_tt, align 8
  %271 = load i32, ptr %c_tPos, align 4
  %idxprom326 = zext i32 %271 to i64
  %arrayidx327 = getelementptr inbounds nuw i32, ptr %270, i64 %idxprom326
  %272 = load i32, ptr %arrayidx327, align 4
  store i32 %272, ptr %c_tPos, align 4
  %273 = load i32, ptr %c_tPos, align 4
  %and328 = and i32 %273, 255
  %conv329 = trunc i32 %and328 to i8
  store i8 %conv329, ptr %k1, align 1
  %274 = load i32, ptr %c_tPos, align 4
  %shr330 = lshr i32 %274, 8
  store i32 %shr330, ptr %c_tPos, align 4
  %275 = load i32, ptr %c_nblock_used, align 4
  %inc331 = add nsw i32 %275, 1
  store i32 %inc331, ptr %c_nblock_used, align 4
  %276 = load i8, ptr %k1, align 1
  %conv332 = zext i8 %276 to i32
  %277 = load i32, ptr %c_k0, align 4
  %cmp333 = icmp ne i32 %conv332, %277
  br i1 %cmp333, label %if.then335, label %if.end337

if.then335:                                       ; preds = %if.end324
  %278 = load i8, ptr %k1, align 1
  %conv336 = zext i8 %278 to i32
  store i32 %conv336, ptr %c_k0, align 4
  br label %s_state_out_len_eq_one

if.end337:                                        ; preds = %if.end324
  %279 = load i32, ptr %c_nblock_used, align 4
  %280 = load i32, ptr %s_save_nblockPP, align 4
  %cmp338 = icmp eq i32 %279, %280
  br i1 %cmp338, label %if.then340, label %if.end341

if.then340:                                       ; preds = %if.end337
  br label %s_state_out_len_eq_one

if.end341:                                        ; preds = %if.end337
  store i32 2, ptr %c_state_out_len, align 4
  %281 = load ptr, ptr %c_tt, align 8
  %282 = load i32, ptr %c_tPos, align 4
  %idxprom342 = zext i32 %282 to i64
  %arrayidx343 = getelementptr inbounds nuw i32, ptr %281, i64 %idxprom342
  %283 = load i32, ptr %arrayidx343, align 4
  store i32 %283, ptr %c_tPos, align 4
  %284 = load i32, ptr %c_tPos, align 4
  %and344 = and i32 %284, 255
  %conv345 = trunc i32 %and344 to i8
  store i8 %conv345, ptr %k1, align 1
  %285 = load i32, ptr %c_tPos, align 4
  %shr346 = lshr i32 %285, 8
  store i32 %shr346, ptr %c_tPos, align 4
  %286 = load i32, ptr %c_nblock_used, align 4
  %inc347 = add nsw i32 %286, 1
  store i32 %inc347, ptr %c_nblock_used, align 4
  %287 = load i32, ptr %c_nblock_used, align 4
  %288 = load i32, ptr %s_save_nblockPP, align 4
  %cmp348 = icmp eq i32 %287, %288
  br i1 %cmp348, label %if.then350, label %if.end351

if.then350:                                       ; preds = %if.end341
  br label %while.body282

if.end351:                                        ; preds = %if.end341
  %289 = load i8, ptr %k1, align 1
  %conv352 = zext i8 %289 to i32
  %290 = load i32, ptr %c_k0, align 4
  %cmp353 = icmp ne i32 %conv352, %290
  br i1 %cmp353, label %if.then355, label %if.end357

if.then355:                                       ; preds = %if.end351
  %291 = load i8, ptr %k1, align 1
  %conv356 = zext i8 %291 to i32
  store i32 %conv356, ptr %c_k0, align 4
  br label %while.body282

if.end357:                                        ; preds = %if.end351
  store i32 3, ptr %c_state_out_len, align 4
  %292 = load ptr, ptr %c_tt, align 8
  %293 = load i32, ptr %c_tPos, align 4
  %idxprom358 = zext i32 %293 to i64
  %arrayidx359 = getelementptr inbounds nuw i32, ptr %292, i64 %idxprom358
  %294 = load i32, ptr %arrayidx359, align 4
  store i32 %294, ptr %c_tPos, align 4
  %295 = load i32, ptr %c_tPos, align 4
  %and360 = and i32 %295, 255
  %conv361 = trunc i32 %and360 to i8
  store i8 %conv361, ptr %k1, align 1
  %296 = load i32, ptr %c_tPos, align 4
  %shr362 = lshr i32 %296, 8
  store i32 %shr362, ptr %c_tPos, align 4
  %297 = load i32, ptr %c_nblock_used, align 4
  %inc363 = add nsw i32 %297, 1
  store i32 %inc363, ptr %c_nblock_used, align 4
  %298 = load i32, ptr %c_nblock_used, align 4
  %299 = load i32, ptr %s_save_nblockPP, align 4
  %cmp364 = icmp eq i32 %298, %299
  br i1 %cmp364, label %if.then366, label %if.end367

if.then366:                                       ; preds = %if.end357
  br label %while.body282

if.end367:                                        ; preds = %if.end357
  %300 = load i8, ptr %k1, align 1
  %conv368 = zext i8 %300 to i32
  %301 = load i32, ptr %c_k0, align 4
  %cmp369 = icmp ne i32 %conv368, %301
  br i1 %cmp369, label %if.then371, label %if.end373

if.then371:                                       ; preds = %if.end367
  %302 = load i8, ptr %k1, align 1
  %conv372 = zext i8 %302 to i32
  store i32 %conv372, ptr %c_k0, align 4
  br label %while.body282

if.end373:                                        ; preds = %if.end367
  %303 = load ptr, ptr %c_tt, align 8
  %304 = load i32, ptr %c_tPos, align 4
  %idxprom374 = zext i32 %304 to i64
  %arrayidx375 = getelementptr inbounds nuw i32, ptr %303, i64 %idxprom374
  %305 = load i32, ptr %arrayidx375, align 4
  store i32 %305, ptr %c_tPos, align 4
  %306 = load i32, ptr %c_tPos, align 4
  %and376 = and i32 %306, 255
  %conv377 = trunc i32 %and376 to i8
  store i8 %conv377, ptr %k1, align 1
  %307 = load i32, ptr %c_tPos, align 4
  %shr378 = lshr i32 %307, 8
  store i32 %shr378, ptr %c_tPos, align 4
  %308 = load i32, ptr %c_nblock_used, align 4
  %inc379 = add nsw i32 %308, 1
  store i32 %inc379, ptr %c_nblock_used, align 4
  %309 = load i8, ptr %k1, align 1
  %conv380 = zext i8 %309 to i32
  %add381 = add nsw i32 %conv380, 4
  store i32 %add381, ptr %c_state_out_len, align 4
  %310 = load ptr, ptr %c_tt, align 8
  %311 = load i32, ptr %c_tPos, align 4
  %idxprom382 = zext i32 %311 to i64
  %arrayidx383 = getelementptr inbounds nuw i32, ptr %310, i64 %idxprom382
  %312 = load i32, ptr %arrayidx383, align 4
  store i32 %312, ptr %c_tPos, align 4
  %313 = load i32, ptr %c_tPos, align 4
  %and384 = and i32 %313, 255
  %conv385 = trunc i32 %and384 to i8
  %conv386 = zext i8 %conv385 to i32
  store i32 %conv386, ptr %c_k0, align 4
  %314 = load i32, ptr %c_tPos, align 4
  %shr387 = lshr i32 %314, 8
  store i32 %shr387, ptr %c_tPos, align 4
  %315 = load i32, ptr %c_nblock_used, align 4
  %inc388 = add nsw i32 %315, 1
  store i32 %inc388, ptr %c_nblock_used, align 4
  br label %while.body282

return_notr:                                      ; preds = %if.then323, %if.then309, %if.then290
  %316 = load ptr, ptr %s.addr, align 8
  %strm389 = getelementptr inbounds nuw %struct.DState, ptr %316, i32 0, i32 0
  %317 = load ptr, ptr %strm389, align 8
  %total_out_lo32390 = getelementptr inbounds nuw %struct.bz_stream, ptr %317, i32 0, i32 6
  %318 = load i32, ptr %total_out_lo32390, align 4
  store i32 %318, ptr %total_out_lo32_old, align 4
  %319 = load i32, ptr %avail_out_INIT, align 4
  %320 = load i32, ptr %cs_avail_out, align 4
  %sub = sub i32 %319, %320
  %321 = load ptr, ptr %s.addr, align 8
  %strm391 = getelementptr inbounds nuw %struct.DState, ptr %321, i32 0, i32 0
  %322 = load ptr, ptr %strm391, align 8
  %total_out_lo32392 = getelementptr inbounds nuw %struct.bz_stream, ptr %322, i32 0, i32 6
  %323 = load i32, ptr %total_out_lo32392, align 4
  %add393 = add i32 %323, %sub
  store i32 %add393, ptr %total_out_lo32392, align 4
  %324 = load ptr, ptr %s.addr, align 8
  %strm394 = getelementptr inbounds nuw %struct.DState, ptr %324, i32 0, i32 0
  %325 = load ptr, ptr %strm394, align 8
  %total_out_lo32395 = getelementptr inbounds nuw %struct.bz_stream, ptr %325, i32 0, i32 6
  %326 = load i32, ptr %total_out_lo32395, align 4
  %327 = load i32, ptr %total_out_lo32_old, align 4
  %cmp396 = icmp ult i32 %326, %327
  br i1 %cmp396, label %if.then398, label %if.end402

if.then398:                                       ; preds = %return_notr
  %328 = load ptr, ptr %s.addr, align 8
  %strm399 = getelementptr inbounds nuw %struct.DState, ptr %328, i32 0, i32 0
  %329 = load ptr, ptr %strm399, align 8
  %total_out_hi32400 = getelementptr inbounds nuw %struct.bz_stream, ptr %329, i32 0, i32 7
  %330 = load i32, ptr %total_out_hi32400, align 8
  %inc401 = add i32 %330, 1
  store i32 %inc401, ptr %total_out_hi32400, align 8
  br label %if.end402

if.end402:                                        ; preds = %if.then398, %return_notr
  %331 = load i32, ptr %c_calculatedBlockCRC, align 4
  %332 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC403 = getelementptr inbounds nuw %struct.DState, ptr %332, i32 0, i32 25
  store i32 %331, ptr %calculatedBlockCRC403, align 8
  %333 = load i8, ptr %c_state_out_ch, align 1
  %334 = load ptr, ptr %s.addr, align 8
  %state_out_ch404 = getelementptr inbounds nuw %struct.DState, ptr %334, i32 0, i32 2
  store i8 %333, ptr %state_out_ch404, align 4
  %335 = load i32, ptr %c_state_out_len, align 4
  %336 = load ptr, ptr %s.addr, align 8
  %state_out_len405 = getelementptr inbounds nuw %struct.DState, ptr %336, i32 0, i32 3
  store i32 %335, ptr %state_out_len405, align 8
  %337 = load i32, ptr %c_nblock_used, align 4
  %338 = load ptr, ptr %s.addr, align 8
  %nblock_used406 = getelementptr inbounds nuw %struct.DState, ptr %338, i32 0, i32 17
  store i32 %337, ptr %nblock_used406, align 4
  %339 = load i32, ptr %c_k0, align 4
  %340 = load ptr, ptr %s.addr, align 8
  %k0407 = getelementptr inbounds nuw %struct.DState, ptr %340, i32 0, i32 15
  store i32 %339, ptr %k0407, align 8
  %341 = load ptr, ptr %c_tt, align 8
  %342 = load ptr, ptr %s.addr, align 8
  %tt408 = getelementptr inbounds nuw %struct.DState, ptr %342, i32 0, i32 20
  store ptr %341, ptr %tt408, align 8
  %343 = load i32, ptr %c_tPos, align 4
  %344 = load ptr, ptr %s.addr, align 8
  %tPos409 = getelementptr inbounds nuw %struct.DState, ptr %344, i32 0, i32 14
  store i32 %343, ptr %tPos409, align 4
  %345 = load ptr, ptr %cs_next_out, align 8
  %346 = load ptr, ptr %s.addr, align 8
  %strm410 = getelementptr inbounds nuw %struct.DState, ptr %346, i32 0, i32 0
  %347 = load ptr, ptr %strm410, align 8
  %next_out411 = getelementptr inbounds nuw %struct.bz_stream, ptr %347, i32 0, i32 4
  store ptr %345, ptr %next_out411, align 8
  %348 = load i32, ptr %cs_avail_out, align 4
  %349 = load ptr, ptr %s.addr, align 8
  %strm412 = getelementptr inbounds nuw %struct.DState, ptr %349, i32 0, i32 0
  %350 = load ptr, ptr %strm412, align 8
  %avail_out413 = getelementptr inbounds nuw %struct.bz_stream, ptr %350, i32 0, i32 5
  store i32 %348, ptr %avail_out413, align 8
  br label %if.end414

if.end414:                                        ; preds = %if.end402, %if.then29, %if.then3
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
