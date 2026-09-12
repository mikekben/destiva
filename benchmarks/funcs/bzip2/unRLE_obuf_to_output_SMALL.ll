; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

@BZ2_crc32Table = external dso_local global [256 x i32], align 16
@BZ2_rNums = external dso_local global [512 x i32], align 16

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_indexIntoF(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @unRLE_obuf_to_output_SMALL(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %k1 = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %blockRandomised = getelementptr inbounds nuw %struct.DState, ptr %0, i32 0, i32 4
  %1 = load i8, ptr %blockRandomised, align 4
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end321, %if.then222, %if.then216, %if.then154, %if.then148, %if.then86, %if.then80, %if.then
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
  br label %return

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
  br label %return

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
  %tPos = getelementptr inbounds nuw %struct.DState, ptr %45, i32 0, i32 14
  %46 = load i32, ptr %tPos, align 4
  %47 = load ptr, ptr %s.addr, align 8
  %cftab = getelementptr inbounds nuw %struct.DState, ptr %47, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], ptr %cftab, i64 0, i64 0
  %call = call i32 @BZ2_indexIntoF(i32 noundef %46, ptr noundef %arraydecay)
  %conv34 = trunc i32 %call to i8
  store i8 %conv34, ptr %k1, align 1
  %48 = load ptr, ptr %s.addr, align 8
  %ll16 = getelementptr inbounds nuw %struct.DState, ptr %48, i32 0, i32 21
  %49 = load ptr, ptr %ll16, align 8
  %50 = load ptr, ptr %s.addr, align 8
  %tPos35 = getelementptr inbounds nuw %struct.DState, ptr %50, i32 0, i32 14
  %51 = load i32, ptr %tPos35, align 4
  %idxprom36 = zext i32 %51 to i64
  %arrayidx37 = getelementptr inbounds nuw i16, ptr %49, i64 %idxprom36
  %52 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %52 to i32
  %53 = load ptr, ptr %s.addr, align 8
  %ll4 = getelementptr inbounds nuw %struct.DState, ptr %53, i32 0, i32 22
  %54 = load ptr, ptr %ll4, align 8
  %55 = load ptr, ptr %s.addr, align 8
  %tPos39 = getelementptr inbounds nuw %struct.DState, ptr %55, i32 0, i32 14
  %56 = load i32, ptr %tPos39, align 4
  %shr40 = lshr i32 %56, 1
  %idxprom41 = zext i32 %shr40 to i64
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %54, i64 %idxprom41
  %57 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %57 to i32
  %58 = load ptr, ptr %s.addr, align 8
  %tPos44 = getelementptr inbounds nuw %struct.DState, ptr %58, i32 0, i32 14
  %59 = load i32, ptr %tPos44, align 4
  %shl45 = shl i32 %59, 2
  %and = and i32 %shl45, 4
  %shr46 = lshr i32 %conv43, %and
  %and47 = and i32 %shr46, 15
  %shl48 = shl i32 %and47, 16
  %or = or i32 %conv38, %shl48
  %60 = load ptr, ptr %s.addr, align 8
  %tPos49 = getelementptr inbounds nuw %struct.DState, ptr %60, i32 0, i32 14
  store i32 %or, ptr %tPos49, align 4
  %61 = load ptr, ptr %s.addr, align 8
  %rNToGo = getelementptr inbounds nuw %struct.DState, ptr %61, i32 0, i32 5
  %62 = load i32, ptr %rNToGo, align 8
  %cmp50 = icmp eq i32 %62, 0
  br i1 %cmp50, label %if.then52, label %if.end64

if.then52:                                        ; preds = %if.end30
  %63 = load ptr, ptr %s.addr, align 8
  %rTPos = getelementptr inbounds nuw %struct.DState, ptr %63, i32 0, i32 6
  %64 = load i32, ptr %rTPos, align 4
  %idxprom53 = sext i32 %64 to i64
  %arrayidx54 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom53
  %65 = load i32, ptr %arrayidx54, align 4
  %66 = load ptr, ptr %s.addr, align 8
  %rNToGo55 = getelementptr inbounds nuw %struct.DState, ptr %66, i32 0, i32 5
  store i32 %65, ptr %rNToGo55, align 8
  %67 = load ptr, ptr %s.addr, align 8
  %rTPos56 = getelementptr inbounds nuw %struct.DState, ptr %67, i32 0, i32 6
  %68 = load i32, ptr %rTPos56, align 4
  %inc57 = add nsw i32 %68, 1
  store i32 %inc57, ptr %rTPos56, align 4
  %69 = load ptr, ptr %s.addr, align 8
  %rTPos58 = getelementptr inbounds nuw %struct.DState, ptr %69, i32 0, i32 6
  %70 = load i32, ptr %rTPos58, align 4
  %cmp59 = icmp eq i32 %70, 512
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then52
  %71 = load ptr, ptr %s.addr, align 8
  %rTPos62 = getelementptr inbounds nuw %struct.DState, ptr %71, i32 0, i32 6
  store i32 0, ptr %rTPos62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then52
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end30
  %72 = load ptr, ptr %s.addr, align 8
  %rNToGo65 = getelementptr inbounds nuw %struct.DState, ptr %72, i32 0, i32 5
  %73 = load i32, ptr %rNToGo65, align 8
  %dec66 = add nsw i32 %73, -1
  store i32 %dec66, ptr %rNToGo65, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %rNToGo67 = getelementptr inbounds nuw %struct.DState, ptr %74, i32 0, i32 5
  %75 = load i32, ptr %rNToGo67, align 8
  %cmp68 = icmp eq i32 %75, 1
  %76 = zext i1 %cmp68 to i64
  %cond = select i1 %cmp68, i32 1, i32 0
  %77 = load i8, ptr %k1, align 1
  %conv70 = zext i8 %77 to i32
  %xor71 = xor i32 %conv70, %cond
  %conv72 = trunc i32 %xor71 to i8
  store i8 %conv72, ptr %k1, align 1
  %78 = load ptr, ptr %s.addr, align 8
  %nblock_used73 = getelementptr inbounds nuw %struct.DState, ptr %78, i32 0, i32 17
  %79 = load i32, ptr %nblock_used73, align 4
  %inc74 = add nsw i32 %79, 1
  store i32 %inc74, ptr %nblock_used73, align 4
  %80 = load ptr, ptr %s.addr, align 8
  %nblock_used75 = getelementptr inbounds nuw %struct.DState, ptr %80, i32 0, i32 17
  %81 = load i32, ptr %nblock_used75, align 4
  %82 = load ptr, ptr %s.addr, align 8
  %save_nblock76 = getelementptr inbounds nuw %struct.DState, ptr %82, i32 0, i32 51
  %83 = load i32, ptr %save_nblock76, align 8
  %add77 = add nsw i32 %83, 1
  %cmp78 = icmp eq i32 %81, %add77
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end64
  br label %while.body

if.end81:                                         ; preds = %if.end64
  %84 = load i8, ptr %k1, align 1
  %conv82 = zext i8 %84 to i32
  %85 = load ptr, ptr %s.addr, align 8
  %k083 = getelementptr inbounds nuw %struct.DState, ptr %85, i32 0, i32 15
  %86 = load i32, ptr %k083, align 8
  %cmp84 = icmp ne i32 %conv82, %86
  br i1 %cmp84, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end81
  %87 = load i8, ptr %k1, align 1
  %conv87 = zext i8 %87 to i32
  %88 = load ptr, ptr %s.addr, align 8
  %k088 = getelementptr inbounds nuw %struct.DState, ptr %88, i32 0, i32 15
  store i32 %conv87, ptr %k088, align 8
  br label %while.body

if.end89:                                         ; preds = %if.end81
  %89 = load ptr, ptr %s.addr, align 8
  %state_out_len90 = getelementptr inbounds nuw %struct.DState, ptr %89, i32 0, i32 3
  store i32 2, ptr %state_out_len90, align 8
  %90 = load ptr, ptr %s.addr, align 8
  %tPos91 = getelementptr inbounds nuw %struct.DState, ptr %90, i32 0, i32 14
  %91 = load i32, ptr %tPos91, align 4
  %92 = load ptr, ptr %s.addr, align 8
  %cftab92 = getelementptr inbounds nuw %struct.DState, ptr %92, i32 0, i32 18
  %arraydecay93 = getelementptr inbounds [257 x i32], ptr %cftab92, i64 0, i64 0
  %call94 = call i32 @BZ2_indexIntoF(i32 noundef %91, ptr noundef %arraydecay93)
  %conv95 = trunc i32 %call94 to i8
  store i8 %conv95, ptr %k1, align 1
  %93 = load ptr, ptr %s.addr, align 8
  %ll1696 = getelementptr inbounds nuw %struct.DState, ptr %93, i32 0, i32 21
  %94 = load ptr, ptr %ll1696, align 8
  %95 = load ptr, ptr %s.addr, align 8
  %tPos97 = getelementptr inbounds nuw %struct.DState, ptr %95, i32 0, i32 14
  %96 = load i32, ptr %tPos97, align 4
  %idxprom98 = zext i32 %96 to i64
  %arrayidx99 = getelementptr inbounds nuw i16, ptr %94, i64 %idxprom98
  %97 = load i16, ptr %arrayidx99, align 2
  %conv100 = zext i16 %97 to i32
  %98 = load ptr, ptr %s.addr, align 8
  %ll4101 = getelementptr inbounds nuw %struct.DState, ptr %98, i32 0, i32 22
  %99 = load ptr, ptr %ll4101, align 8
  %100 = load ptr, ptr %s.addr, align 8
  %tPos102 = getelementptr inbounds nuw %struct.DState, ptr %100, i32 0, i32 14
  %101 = load i32, ptr %tPos102, align 4
  %shr103 = lshr i32 %101, 1
  %idxprom104 = zext i32 %shr103 to i64
  %arrayidx105 = getelementptr inbounds nuw i8, ptr %99, i64 %idxprom104
  %102 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %102 to i32
  %103 = load ptr, ptr %s.addr, align 8
  %tPos107 = getelementptr inbounds nuw %struct.DState, ptr %103, i32 0, i32 14
  %104 = load i32, ptr %tPos107, align 4
  %shl108 = shl i32 %104, 2
  %and109 = and i32 %shl108, 4
  %shr110 = lshr i32 %conv106, %and109
  %and111 = and i32 %shr110, 15
  %shl112 = shl i32 %and111, 16
  %or113 = or i32 %conv100, %shl112
  %105 = load ptr, ptr %s.addr, align 8
  %tPos114 = getelementptr inbounds nuw %struct.DState, ptr %105, i32 0, i32 14
  store i32 %or113, ptr %tPos114, align 4
  %106 = load ptr, ptr %s.addr, align 8
  %rNToGo115 = getelementptr inbounds nuw %struct.DState, ptr %106, i32 0, i32 5
  %107 = load i32, ptr %rNToGo115, align 8
  %cmp116 = icmp eq i32 %107, 0
  br i1 %cmp116, label %if.then118, label %if.end131

if.then118:                                       ; preds = %if.end89
  %108 = load ptr, ptr %s.addr, align 8
  %rTPos119 = getelementptr inbounds nuw %struct.DState, ptr %108, i32 0, i32 6
  %109 = load i32, ptr %rTPos119, align 4
  %idxprom120 = sext i32 %109 to i64
  %arrayidx121 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom120
  %110 = load i32, ptr %arrayidx121, align 4
  %111 = load ptr, ptr %s.addr, align 8
  %rNToGo122 = getelementptr inbounds nuw %struct.DState, ptr %111, i32 0, i32 5
  store i32 %110, ptr %rNToGo122, align 8
  %112 = load ptr, ptr %s.addr, align 8
  %rTPos123 = getelementptr inbounds nuw %struct.DState, ptr %112, i32 0, i32 6
  %113 = load i32, ptr %rTPos123, align 4
  %inc124 = add nsw i32 %113, 1
  store i32 %inc124, ptr %rTPos123, align 4
  %114 = load ptr, ptr %s.addr, align 8
  %rTPos125 = getelementptr inbounds nuw %struct.DState, ptr %114, i32 0, i32 6
  %115 = load i32, ptr %rTPos125, align 4
  %cmp126 = icmp eq i32 %115, 512
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.then118
  %116 = load ptr, ptr %s.addr, align 8
  %rTPos129 = getelementptr inbounds nuw %struct.DState, ptr %116, i32 0, i32 6
  store i32 0, ptr %rTPos129, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.then118
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end89
  %117 = load ptr, ptr %s.addr, align 8
  %rNToGo132 = getelementptr inbounds nuw %struct.DState, ptr %117, i32 0, i32 5
  %118 = load i32, ptr %rNToGo132, align 8
  %dec133 = add nsw i32 %118, -1
  store i32 %dec133, ptr %rNToGo132, align 8
  %119 = load ptr, ptr %s.addr, align 8
  %rNToGo134 = getelementptr inbounds nuw %struct.DState, ptr %119, i32 0, i32 5
  %120 = load i32, ptr %rNToGo134, align 8
  %cmp135 = icmp eq i32 %120, 1
  %121 = zext i1 %cmp135 to i64
  %cond137 = select i1 %cmp135, i32 1, i32 0
  %122 = load i8, ptr %k1, align 1
  %conv138 = zext i8 %122 to i32
  %xor139 = xor i32 %conv138, %cond137
  %conv140 = trunc i32 %xor139 to i8
  store i8 %conv140, ptr %k1, align 1
  %123 = load ptr, ptr %s.addr, align 8
  %nblock_used141 = getelementptr inbounds nuw %struct.DState, ptr %123, i32 0, i32 17
  %124 = load i32, ptr %nblock_used141, align 4
  %inc142 = add nsw i32 %124, 1
  store i32 %inc142, ptr %nblock_used141, align 4
  %125 = load ptr, ptr %s.addr, align 8
  %nblock_used143 = getelementptr inbounds nuw %struct.DState, ptr %125, i32 0, i32 17
  %126 = load i32, ptr %nblock_used143, align 4
  %127 = load ptr, ptr %s.addr, align 8
  %save_nblock144 = getelementptr inbounds nuw %struct.DState, ptr %127, i32 0, i32 51
  %128 = load i32, ptr %save_nblock144, align 8
  %add145 = add nsw i32 %128, 1
  %cmp146 = icmp eq i32 %126, %add145
  br i1 %cmp146, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.end131
  br label %while.body

if.end149:                                        ; preds = %if.end131
  %129 = load i8, ptr %k1, align 1
  %conv150 = zext i8 %129 to i32
  %130 = load ptr, ptr %s.addr, align 8
  %k0151 = getelementptr inbounds nuw %struct.DState, ptr %130, i32 0, i32 15
  %131 = load i32, ptr %k0151, align 8
  %cmp152 = icmp ne i32 %conv150, %131
  br i1 %cmp152, label %if.then154, label %if.end157

if.then154:                                       ; preds = %if.end149
  %132 = load i8, ptr %k1, align 1
  %conv155 = zext i8 %132 to i32
  %133 = load ptr, ptr %s.addr, align 8
  %k0156 = getelementptr inbounds nuw %struct.DState, ptr %133, i32 0, i32 15
  store i32 %conv155, ptr %k0156, align 8
  br label %while.body

if.end157:                                        ; preds = %if.end149
  %134 = load ptr, ptr %s.addr, align 8
  %state_out_len158 = getelementptr inbounds nuw %struct.DState, ptr %134, i32 0, i32 3
  store i32 3, ptr %state_out_len158, align 8
  %135 = load ptr, ptr %s.addr, align 8
  %tPos159 = getelementptr inbounds nuw %struct.DState, ptr %135, i32 0, i32 14
  %136 = load i32, ptr %tPos159, align 4
  %137 = load ptr, ptr %s.addr, align 8
  %cftab160 = getelementptr inbounds nuw %struct.DState, ptr %137, i32 0, i32 18
  %arraydecay161 = getelementptr inbounds [257 x i32], ptr %cftab160, i64 0, i64 0
  %call162 = call i32 @BZ2_indexIntoF(i32 noundef %136, ptr noundef %arraydecay161)
  %conv163 = trunc i32 %call162 to i8
  store i8 %conv163, ptr %k1, align 1
  %138 = load ptr, ptr %s.addr, align 8
  %ll16164 = getelementptr inbounds nuw %struct.DState, ptr %138, i32 0, i32 21
  %139 = load ptr, ptr %ll16164, align 8
  %140 = load ptr, ptr %s.addr, align 8
  %tPos165 = getelementptr inbounds nuw %struct.DState, ptr %140, i32 0, i32 14
  %141 = load i32, ptr %tPos165, align 4
  %idxprom166 = zext i32 %141 to i64
  %arrayidx167 = getelementptr inbounds nuw i16, ptr %139, i64 %idxprom166
  %142 = load i16, ptr %arrayidx167, align 2
  %conv168 = zext i16 %142 to i32
  %143 = load ptr, ptr %s.addr, align 8
  %ll4169 = getelementptr inbounds nuw %struct.DState, ptr %143, i32 0, i32 22
  %144 = load ptr, ptr %ll4169, align 8
  %145 = load ptr, ptr %s.addr, align 8
  %tPos170 = getelementptr inbounds nuw %struct.DState, ptr %145, i32 0, i32 14
  %146 = load i32, ptr %tPos170, align 4
  %shr171 = lshr i32 %146, 1
  %idxprom172 = zext i32 %shr171 to i64
  %arrayidx173 = getelementptr inbounds nuw i8, ptr %144, i64 %idxprom172
  %147 = load i8, ptr %arrayidx173, align 1
  %conv174 = zext i8 %147 to i32
  %148 = load ptr, ptr %s.addr, align 8
  %tPos175 = getelementptr inbounds nuw %struct.DState, ptr %148, i32 0, i32 14
  %149 = load i32, ptr %tPos175, align 4
  %shl176 = shl i32 %149, 2
  %and177 = and i32 %shl176, 4
  %shr178 = lshr i32 %conv174, %and177
  %and179 = and i32 %shr178, 15
  %shl180 = shl i32 %and179, 16
  %or181 = or i32 %conv168, %shl180
  %150 = load ptr, ptr %s.addr, align 8
  %tPos182 = getelementptr inbounds nuw %struct.DState, ptr %150, i32 0, i32 14
  store i32 %or181, ptr %tPos182, align 4
  %151 = load ptr, ptr %s.addr, align 8
  %rNToGo183 = getelementptr inbounds nuw %struct.DState, ptr %151, i32 0, i32 5
  %152 = load i32, ptr %rNToGo183, align 8
  %cmp184 = icmp eq i32 %152, 0
  br i1 %cmp184, label %if.then186, label %if.end199

if.then186:                                       ; preds = %if.end157
  %153 = load ptr, ptr %s.addr, align 8
  %rTPos187 = getelementptr inbounds nuw %struct.DState, ptr %153, i32 0, i32 6
  %154 = load i32, ptr %rTPos187, align 4
  %idxprom188 = sext i32 %154 to i64
  %arrayidx189 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom188
  %155 = load i32, ptr %arrayidx189, align 4
  %156 = load ptr, ptr %s.addr, align 8
  %rNToGo190 = getelementptr inbounds nuw %struct.DState, ptr %156, i32 0, i32 5
  store i32 %155, ptr %rNToGo190, align 8
  %157 = load ptr, ptr %s.addr, align 8
  %rTPos191 = getelementptr inbounds nuw %struct.DState, ptr %157, i32 0, i32 6
  %158 = load i32, ptr %rTPos191, align 4
  %inc192 = add nsw i32 %158, 1
  store i32 %inc192, ptr %rTPos191, align 4
  %159 = load ptr, ptr %s.addr, align 8
  %rTPos193 = getelementptr inbounds nuw %struct.DState, ptr %159, i32 0, i32 6
  %160 = load i32, ptr %rTPos193, align 4
  %cmp194 = icmp eq i32 %160, 512
  br i1 %cmp194, label %if.then196, label %if.end198

if.then196:                                       ; preds = %if.then186
  %161 = load ptr, ptr %s.addr, align 8
  %rTPos197 = getelementptr inbounds nuw %struct.DState, ptr %161, i32 0, i32 6
  store i32 0, ptr %rTPos197, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %if.then186
  br label %if.end199

if.end199:                                        ; preds = %if.end198, %if.end157
  %162 = load ptr, ptr %s.addr, align 8
  %rNToGo200 = getelementptr inbounds nuw %struct.DState, ptr %162, i32 0, i32 5
  %163 = load i32, ptr %rNToGo200, align 8
  %dec201 = add nsw i32 %163, -1
  store i32 %dec201, ptr %rNToGo200, align 8
  %164 = load ptr, ptr %s.addr, align 8
  %rNToGo202 = getelementptr inbounds nuw %struct.DState, ptr %164, i32 0, i32 5
  %165 = load i32, ptr %rNToGo202, align 8
  %cmp203 = icmp eq i32 %165, 1
  %166 = zext i1 %cmp203 to i64
  %cond205 = select i1 %cmp203, i32 1, i32 0
  %167 = load i8, ptr %k1, align 1
  %conv206 = zext i8 %167 to i32
  %xor207 = xor i32 %conv206, %cond205
  %conv208 = trunc i32 %xor207 to i8
  store i8 %conv208, ptr %k1, align 1
  %168 = load ptr, ptr %s.addr, align 8
  %nblock_used209 = getelementptr inbounds nuw %struct.DState, ptr %168, i32 0, i32 17
  %169 = load i32, ptr %nblock_used209, align 4
  %inc210 = add nsw i32 %169, 1
  store i32 %inc210, ptr %nblock_used209, align 4
  %170 = load ptr, ptr %s.addr, align 8
  %nblock_used211 = getelementptr inbounds nuw %struct.DState, ptr %170, i32 0, i32 17
  %171 = load i32, ptr %nblock_used211, align 4
  %172 = load ptr, ptr %s.addr, align 8
  %save_nblock212 = getelementptr inbounds nuw %struct.DState, ptr %172, i32 0, i32 51
  %173 = load i32, ptr %save_nblock212, align 8
  %add213 = add nsw i32 %173, 1
  %cmp214 = icmp eq i32 %171, %add213
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.end199
  br label %while.body

if.end217:                                        ; preds = %if.end199
  %174 = load i8, ptr %k1, align 1
  %conv218 = zext i8 %174 to i32
  %175 = load ptr, ptr %s.addr, align 8
  %k0219 = getelementptr inbounds nuw %struct.DState, ptr %175, i32 0, i32 15
  %176 = load i32, ptr %k0219, align 8
  %cmp220 = icmp ne i32 %conv218, %176
  br i1 %cmp220, label %if.then222, label %if.end225

if.then222:                                       ; preds = %if.end217
  %177 = load i8, ptr %k1, align 1
  %conv223 = zext i8 %177 to i32
  %178 = load ptr, ptr %s.addr, align 8
  %k0224 = getelementptr inbounds nuw %struct.DState, ptr %178, i32 0, i32 15
  store i32 %conv223, ptr %k0224, align 8
  br label %while.body

if.end225:                                        ; preds = %if.end217
  %179 = load ptr, ptr %s.addr, align 8
  %tPos226 = getelementptr inbounds nuw %struct.DState, ptr %179, i32 0, i32 14
  %180 = load i32, ptr %tPos226, align 4
  %181 = load ptr, ptr %s.addr, align 8
  %cftab227 = getelementptr inbounds nuw %struct.DState, ptr %181, i32 0, i32 18
  %arraydecay228 = getelementptr inbounds [257 x i32], ptr %cftab227, i64 0, i64 0
  %call229 = call i32 @BZ2_indexIntoF(i32 noundef %180, ptr noundef %arraydecay228)
  %conv230 = trunc i32 %call229 to i8
  store i8 %conv230, ptr %k1, align 1
  %182 = load ptr, ptr %s.addr, align 8
  %ll16231 = getelementptr inbounds nuw %struct.DState, ptr %182, i32 0, i32 21
  %183 = load ptr, ptr %ll16231, align 8
  %184 = load ptr, ptr %s.addr, align 8
  %tPos232 = getelementptr inbounds nuw %struct.DState, ptr %184, i32 0, i32 14
  %185 = load i32, ptr %tPos232, align 4
  %idxprom233 = zext i32 %185 to i64
  %arrayidx234 = getelementptr inbounds nuw i16, ptr %183, i64 %idxprom233
  %186 = load i16, ptr %arrayidx234, align 2
  %conv235 = zext i16 %186 to i32
  %187 = load ptr, ptr %s.addr, align 8
  %ll4236 = getelementptr inbounds nuw %struct.DState, ptr %187, i32 0, i32 22
  %188 = load ptr, ptr %ll4236, align 8
  %189 = load ptr, ptr %s.addr, align 8
  %tPos237 = getelementptr inbounds nuw %struct.DState, ptr %189, i32 0, i32 14
  %190 = load i32, ptr %tPos237, align 4
  %shr238 = lshr i32 %190, 1
  %idxprom239 = zext i32 %shr238 to i64
  %arrayidx240 = getelementptr inbounds nuw i8, ptr %188, i64 %idxprom239
  %191 = load i8, ptr %arrayidx240, align 1
  %conv241 = zext i8 %191 to i32
  %192 = load ptr, ptr %s.addr, align 8
  %tPos242 = getelementptr inbounds nuw %struct.DState, ptr %192, i32 0, i32 14
  %193 = load i32, ptr %tPos242, align 4
  %shl243 = shl i32 %193, 2
  %and244 = and i32 %shl243, 4
  %shr245 = lshr i32 %conv241, %and244
  %and246 = and i32 %shr245, 15
  %shl247 = shl i32 %and246, 16
  %or248 = or i32 %conv235, %shl247
  %194 = load ptr, ptr %s.addr, align 8
  %tPos249 = getelementptr inbounds nuw %struct.DState, ptr %194, i32 0, i32 14
  store i32 %or248, ptr %tPos249, align 4
  %195 = load ptr, ptr %s.addr, align 8
  %rNToGo250 = getelementptr inbounds nuw %struct.DState, ptr %195, i32 0, i32 5
  %196 = load i32, ptr %rNToGo250, align 8
  %cmp251 = icmp eq i32 %196, 0
  br i1 %cmp251, label %if.then253, label %if.end266

if.then253:                                       ; preds = %if.end225
  %197 = load ptr, ptr %s.addr, align 8
  %rTPos254 = getelementptr inbounds nuw %struct.DState, ptr %197, i32 0, i32 6
  %198 = load i32, ptr %rTPos254, align 4
  %idxprom255 = sext i32 %198 to i64
  %arrayidx256 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom255
  %199 = load i32, ptr %arrayidx256, align 4
  %200 = load ptr, ptr %s.addr, align 8
  %rNToGo257 = getelementptr inbounds nuw %struct.DState, ptr %200, i32 0, i32 5
  store i32 %199, ptr %rNToGo257, align 8
  %201 = load ptr, ptr %s.addr, align 8
  %rTPos258 = getelementptr inbounds nuw %struct.DState, ptr %201, i32 0, i32 6
  %202 = load i32, ptr %rTPos258, align 4
  %inc259 = add nsw i32 %202, 1
  store i32 %inc259, ptr %rTPos258, align 4
  %203 = load ptr, ptr %s.addr, align 8
  %rTPos260 = getelementptr inbounds nuw %struct.DState, ptr %203, i32 0, i32 6
  %204 = load i32, ptr %rTPos260, align 4
  %cmp261 = icmp eq i32 %204, 512
  br i1 %cmp261, label %if.then263, label %if.end265

if.then263:                                       ; preds = %if.then253
  %205 = load ptr, ptr %s.addr, align 8
  %rTPos264 = getelementptr inbounds nuw %struct.DState, ptr %205, i32 0, i32 6
  store i32 0, ptr %rTPos264, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.then253
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %if.end225
  %206 = load ptr, ptr %s.addr, align 8
  %rNToGo267 = getelementptr inbounds nuw %struct.DState, ptr %206, i32 0, i32 5
  %207 = load i32, ptr %rNToGo267, align 8
  %dec268 = add nsw i32 %207, -1
  store i32 %dec268, ptr %rNToGo267, align 8
  %208 = load ptr, ptr %s.addr, align 8
  %rNToGo269 = getelementptr inbounds nuw %struct.DState, ptr %208, i32 0, i32 5
  %209 = load i32, ptr %rNToGo269, align 8
  %cmp270 = icmp eq i32 %209, 1
  %210 = zext i1 %cmp270 to i64
  %cond272 = select i1 %cmp270, i32 1, i32 0
  %211 = load i8, ptr %k1, align 1
  %conv273 = zext i8 %211 to i32
  %xor274 = xor i32 %conv273, %cond272
  %conv275 = trunc i32 %xor274 to i8
  store i8 %conv275, ptr %k1, align 1
  %212 = load ptr, ptr %s.addr, align 8
  %nblock_used276 = getelementptr inbounds nuw %struct.DState, ptr %212, i32 0, i32 17
  %213 = load i32, ptr %nblock_used276, align 4
  %inc277 = add nsw i32 %213, 1
  store i32 %inc277, ptr %nblock_used276, align 4
  %214 = load i8, ptr %k1, align 1
  %conv278 = zext i8 %214 to i32
  %add279 = add nsw i32 %conv278, 4
  %215 = load ptr, ptr %s.addr, align 8
  %state_out_len280 = getelementptr inbounds nuw %struct.DState, ptr %215, i32 0, i32 3
  store i32 %add279, ptr %state_out_len280, align 8
  %216 = load ptr, ptr %s.addr, align 8
  %tPos281 = getelementptr inbounds nuw %struct.DState, ptr %216, i32 0, i32 14
  %217 = load i32, ptr %tPos281, align 4
  %218 = load ptr, ptr %s.addr, align 8
  %cftab282 = getelementptr inbounds nuw %struct.DState, ptr %218, i32 0, i32 18
  %arraydecay283 = getelementptr inbounds [257 x i32], ptr %cftab282, i64 0, i64 0
  %call284 = call i32 @BZ2_indexIntoF(i32 noundef %217, ptr noundef %arraydecay283)
  %219 = load ptr, ptr %s.addr, align 8
  %k0285 = getelementptr inbounds nuw %struct.DState, ptr %219, i32 0, i32 15
  store i32 %call284, ptr %k0285, align 8
  %220 = load ptr, ptr %s.addr, align 8
  %ll16286 = getelementptr inbounds nuw %struct.DState, ptr %220, i32 0, i32 21
  %221 = load ptr, ptr %ll16286, align 8
  %222 = load ptr, ptr %s.addr, align 8
  %tPos287 = getelementptr inbounds nuw %struct.DState, ptr %222, i32 0, i32 14
  %223 = load i32, ptr %tPos287, align 4
  %idxprom288 = zext i32 %223 to i64
  %arrayidx289 = getelementptr inbounds nuw i16, ptr %221, i64 %idxprom288
  %224 = load i16, ptr %arrayidx289, align 2
  %conv290 = zext i16 %224 to i32
  %225 = load ptr, ptr %s.addr, align 8
  %ll4291 = getelementptr inbounds nuw %struct.DState, ptr %225, i32 0, i32 22
  %226 = load ptr, ptr %ll4291, align 8
  %227 = load ptr, ptr %s.addr, align 8
  %tPos292 = getelementptr inbounds nuw %struct.DState, ptr %227, i32 0, i32 14
  %228 = load i32, ptr %tPos292, align 4
  %shr293 = lshr i32 %228, 1
  %idxprom294 = zext i32 %shr293 to i64
  %arrayidx295 = getelementptr inbounds nuw i8, ptr %226, i64 %idxprom294
  %229 = load i8, ptr %arrayidx295, align 1
  %conv296 = zext i8 %229 to i32
  %230 = load ptr, ptr %s.addr, align 8
  %tPos297 = getelementptr inbounds nuw %struct.DState, ptr %230, i32 0, i32 14
  %231 = load i32, ptr %tPos297, align 4
  %shl298 = shl i32 %231, 2
  %and299 = and i32 %shl298, 4
  %shr300 = lshr i32 %conv296, %and299
  %and301 = and i32 %shr300, 15
  %shl302 = shl i32 %and301, 16
  %or303 = or i32 %conv290, %shl302
  %232 = load ptr, ptr %s.addr, align 8
  %tPos304 = getelementptr inbounds nuw %struct.DState, ptr %232, i32 0, i32 14
  store i32 %or303, ptr %tPos304, align 4
  %233 = load ptr, ptr %s.addr, align 8
  %rNToGo305 = getelementptr inbounds nuw %struct.DState, ptr %233, i32 0, i32 5
  %234 = load i32, ptr %rNToGo305, align 8
  %cmp306 = icmp eq i32 %234, 0
  br i1 %cmp306, label %if.then308, label %if.end321

if.then308:                                       ; preds = %if.end266
  %235 = load ptr, ptr %s.addr, align 8
  %rTPos309 = getelementptr inbounds nuw %struct.DState, ptr %235, i32 0, i32 6
  %236 = load i32, ptr %rTPos309, align 4
  %idxprom310 = sext i32 %236 to i64
  %arrayidx311 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom310
  %237 = load i32, ptr %arrayidx311, align 4
  %238 = load ptr, ptr %s.addr, align 8
  %rNToGo312 = getelementptr inbounds nuw %struct.DState, ptr %238, i32 0, i32 5
  store i32 %237, ptr %rNToGo312, align 8
  %239 = load ptr, ptr %s.addr, align 8
  %rTPos313 = getelementptr inbounds nuw %struct.DState, ptr %239, i32 0, i32 6
  %240 = load i32, ptr %rTPos313, align 4
  %inc314 = add nsw i32 %240, 1
  store i32 %inc314, ptr %rTPos313, align 4
  %241 = load ptr, ptr %s.addr, align 8
  %rTPos315 = getelementptr inbounds nuw %struct.DState, ptr %241, i32 0, i32 6
  %242 = load i32, ptr %rTPos315, align 4
  %cmp316 = icmp eq i32 %242, 512
  br i1 %cmp316, label %if.then318, label %if.end320

if.then318:                                       ; preds = %if.then308
  %243 = load ptr, ptr %s.addr, align 8
  %rTPos319 = getelementptr inbounds nuw %struct.DState, ptr %243, i32 0, i32 6
  store i32 0, ptr %rTPos319, align 4
  br label %if.end320

if.end320:                                        ; preds = %if.then318, %if.then308
  br label %if.end321

if.end321:                                        ; preds = %if.end320, %if.end266
  %244 = load ptr, ptr %s.addr, align 8
  %rNToGo322 = getelementptr inbounds nuw %struct.DState, ptr %244, i32 0, i32 5
  %245 = load i32, ptr %rNToGo322, align 8
  %dec323 = add nsw i32 %245, -1
  store i32 %dec323, ptr %rNToGo322, align 8
  %246 = load ptr, ptr %s.addr, align 8
  %rNToGo324 = getelementptr inbounds nuw %struct.DState, ptr %246, i32 0, i32 5
  %247 = load i32, ptr %rNToGo324, align 8
  %cmp325 = icmp eq i32 %247, 1
  %248 = zext i1 %cmp325 to i64
  %cond327 = select i1 %cmp325, i32 1, i32 0
  %249 = load ptr, ptr %s.addr, align 8
  %k0328 = getelementptr inbounds nuw %struct.DState, ptr %249, i32 0, i32 15
  %250 = load i32, ptr %k0328, align 8
  %xor329 = xor i32 %250, %cond327
  store i32 %xor329, ptr %k0328, align 8
  %251 = load ptr, ptr %s.addr, align 8
  %nblock_used330 = getelementptr inbounds nuw %struct.DState, ptr %251, i32 0, i32 17
  %252 = load i32, ptr %nblock_used330, align 4
  %inc331 = add nsw i32 %252, 1
  store i32 %inc331, ptr %nblock_used330, align 4
  br label %while.body

if.else:                                          ; preds = %entry
  br label %while.body332

while.body332:                                    ; preds = %if.end516, %if.then513, %if.then507, %if.then471, %if.then465, %if.then429, %if.then423, %if.else
  br label %while.body334

while.body334:                                    ; preds = %if.end379, %while.body332
  %253 = load ptr, ptr %s.addr, align 8
  %strm335 = getelementptr inbounds nuw %struct.DState, ptr %253, i32 0, i32 0
  %254 = load ptr, ptr %strm335, align 8
  %avail_out336 = getelementptr inbounds nuw %struct.bz_stream, ptr %254, i32 0, i32 5
  %255 = load i32, ptr %avail_out336, align 8
  %cmp337 = icmp eq i32 %255, 0
  br i1 %cmp337, label %if.then339, label %if.end340

if.then339:                                       ; preds = %while.body334
  br label %return

if.end340:                                        ; preds = %while.body334
  %256 = load ptr, ptr %s.addr, align 8
  %state_out_len341 = getelementptr inbounds nuw %struct.DState, ptr %256, i32 0, i32 3
  %257 = load i32, ptr %state_out_len341, align 8
  %cmp342 = icmp eq i32 %257, 0
  br i1 %cmp342, label %if.then344, label %if.end345

if.then344:                                       ; preds = %if.end340
  br label %while.end380

if.end345:                                        ; preds = %if.end340
  %258 = load ptr, ptr %s.addr, align 8
  %state_out_ch346 = getelementptr inbounds nuw %struct.DState, ptr %258, i32 0, i32 2
  %259 = load i8, ptr %state_out_ch346, align 4
  %260 = load ptr, ptr %s.addr, align 8
  %strm347 = getelementptr inbounds nuw %struct.DState, ptr %260, i32 0, i32 0
  %261 = load ptr, ptr %strm347, align 8
  %next_out348 = getelementptr inbounds nuw %struct.bz_stream, ptr %261, i32 0, i32 4
  %262 = load ptr, ptr %next_out348, align 8
  store i8 %259, ptr %262, align 1
  %263 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC349 = getelementptr inbounds nuw %struct.DState, ptr %263, i32 0, i32 25
  %264 = load i32, ptr %calculatedBlockCRC349, align 8
  %shl350 = shl i32 %264, 8
  %265 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC351 = getelementptr inbounds nuw %struct.DState, ptr %265, i32 0, i32 25
  %266 = load i32, ptr %calculatedBlockCRC351, align 8
  %shr352 = lshr i32 %266, 24
  %267 = load ptr, ptr %s.addr, align 8
  %state_out_ch353 = getelementptr inbounds nuw %struct.DState, ptr %267, i32 0, i32 2
  %268 = load i8, ptr %state_out_ch353, align 4
  %conv354 = zext i8 %268 to i32
  %xor355 = xor i32 %shr352, %conv354
  %idxprom356 = zext i32 %xor355 to i64
  %arrayidx357 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom356
  %269 = load i32, ptr %arrayidx357, align 4
  %xor358 = xor i32 %shl350, %269
  %270 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC359 = getelementptr inbounds nuw %struct.DState, ptr %270, i32 0, i32 25
  store i32 %xor358, ptr %calculatedBlockCRC359, align 8
  %271 = load ptr, ptr %s.addr, align 8
  %state_out_len360 = getelementptr inbounds nuw %struct.DState, ptr %271, i32 0, i32 3
  %272 = load i32, ptr %state_out_len360, align 8
  %dec361 = add nsw i32 %272, -1
  store i32 %dec361, ptr %state_out_len360, align 8
  %273 = load ptr, ptr %s.addr, align 8
  %strm362 = getelementptr inbounds nuw %struct.DState, ptr %273, i32 0, i32 0
  %274 = load ptr, ptr %strm362, align 8
  %next_out363 = getelementptr inbounds nuw %struct.bz_stream, ptr %274, i32 0, i32 4
  %275 = load ptr, ptr %next_out363, align 8
  %incdec.ptr364 = getelementptr inbounds nuw i8, ptr %275, i32 1
  store ptr %incdec.ptr364, ptr %next_out363, align 8
  %276 = load ptr, ptr %s.addr, align 8
  %strm365 = getelementptr inbounds nuw %struct.DState, ptr %276, i32 0, i32 0
  %277 = load ptr, ptr %strm365, align 8
  %avail_out366 = getelementptr inbounds nuw %struct.bz_stream, ptr %277, i32 0, i32 5
  %278 = load i32, ptr %avail_out366, align 8
  %dec367 = add i32 %278, -1
  store i32 %dec367, ptr %avail_out366, align 8
  %279 = load ptr, ptr %s.addr, align 8
  %strm368 = getelementptr inbounds nuw %struct.DState, ptr %279, i32 0, i32 0
  %280 = load ptr, ptr %strm368, align 8
  %total_out_lo32369 = getelementptr inbounds nuw %struct.bz_stream, ptr %280, i32 0, i32 6
  %281 = load i32, ptr %total_out_lo32369, align 4
  %inc370 = add i32 %281, 1
  store i32 %inc370, ptr %total_out_lo32369, align 4
  %282 = load ptr, ptr %s.addr, align 8
  %strm371 = getelementptr inbounds nuw %struct.DState, ptr %282, i32 0, i32 0
  %283 = load ptr, ptr %strm371, align 8
  %total_out_lo32372 = getelementptr inbounds nuw %struct.bz_stream, ptr %283, i32 0, i32 6
  %284 = load i32, ptr %total_out_lo32372, align 4
  %cmp373 = icmp eq i32 %284, 0
  br i1 %cmp373, label %if.then375, label %if.end379

if.then375:                                       ; preds = %if.end345
  %285 = load ptr, ptr %s.addr, align 8
  %strm376 = getelementptr inbounds nuw %struct.DState, ptr %285, i32 0, i32 0
  %286 = load ptr, ptr %strm376, align 8
  %total_out_hi32377 = getelementptr inbounds nuw %struct.bz_stream, ptr %286, i32 0, i32 7
  %287 = load i32, ptr %total_out_hi32377, align 8
  %inc378 = add i32 %287, 1
  store i32 %inc378, ptr %total_out_hi32377, align 8
  br label %if.end379

if.end379:                                        ; preds = %if.then375, %if.end345
  br label %while.body334

while.end380:                                     ; preds = %if.then344
  %288 = load ptr, ptr %s.addr, align 8
  %nblock_used381 = getelementptr inbounds nuw %struct.DState, ptr %288, i32 0, i32 17
  %289 = load i32, ptr %nblock_used381, align 4
  %290 = load ptr, ptr %s.addr, align 8
  %save_nblock382 = getelementptr inbounds nuw %struct.DState, ptr %290, i32 0, i32 51
  %291 = load i32, ptr %save_nblock382, align 8
  %add383 = add nsw i32 %291, 1
  %cmp384 = icmp eq i32 %289, %add383
  br i1 %cmp384, label %if.then386, label %if.end387

if.then386:                                       ; preds = %while.end380
  br label %return

if.end387:                                        ; preds = %while.end380
  %292 = load ptr, ptr %s.addr, align 8
  %state_out_len388 = getelementptr inbounds nuw %struct.DState, ptr %292, i32 0, i32 3
  store i32 1, ptr %state_out_len388, align 8
  %293 = load ptr, ptr %s.addr, align 8
  %k0389 = getelementptr inbounds nuw %struct.DState, ptr %293, i32 0, i32 15
  %294 = load i32, ptr %k0389, align 8
  %conv390 = trunc i32 %294 to i8
  %295 = load ptr, ptr %s.addr, align 8
  %state_out_ch391 = getelementptr inbounds nuw %struct.DState, ptr %295, i32 0, i32 2
  store i8 %conv390, ptr %state_out_ch391, align 4
  %296 = load ptr, ptr %s.addr, align 8
  %tPos392 = getelementptr inbounds nuw %struct.DState, ptr %296, i32 0, i32 14
  %297 = load i32, ptr %tPos392, align 4
  %298 = load ptr, ptr %s.addr, align 8
  %cftab393 = getelementptr inbounds nuw %struct.DState, ptr %298, i32 0, i32 18
  %arraydecay394 = getelementptr inbounds [257 x i32], ptr %cftab393, i64 0, i64 0
  %call395 = call i32 @BZ2_indexIntoF(i32 noundef %297, ptr noundef %arraydecay394)
  %conv396 = trunc i32 %call395 to i8
  store i8 %conv396, ptr %k1, align 1
  %299 = load ptr, ptr %s.addr, align 8
  %ll16397 = getelementptr inbounds nuw %struct.DState, ptr %299, i32 0, i32 21
  %300 = load ptr, ptr %ll16397, align 8
  %301 = load ptr, ptr %s.addr, align 8
  %tPos398 = getelementptr inbounds nuw %struct.DState, ptr %301, i32 0, i32 14
  %302 = load i32, ptr %tPos398, align 4
  %idxprom399 = zext i32 %302 to i64
  %arrayidx400 = getelementptr inbounds nuw i16, ptr %300, i64 %idxprom399
  %303 = load i16, ptr %arrayidx400, align 2
  %conv401 = zext i16 %303 to i32
  %304 = load ptr, ptr %s.addr, align 8
  %ll4402 = getelementptr inbounds nuw %struct.DState, ptr %304, i32 0, i32 22
  %305 = load ptr, ptr %ll4402, align 8
  %306 = load ptr, ptr %s.addr, align 8
  %tPos403 = getelementptr inbounds nuw %struct.DState, ptr %306, i32 0, i32 14
  %307 = load i32, ptr %tPos403, align 4
  %shr404 = lshr i32 %307, 1
  %idxprom405 = zext i32 %shr404 to i64
  %arrayidx406 = getelementptr inbounds nuw i8, ptr %305, i64 %idxprom405
  %308 = load i8, ptr %arrayidx406, align 1
  %conv407 = zext i8 %308 to i32
  %309 = load ptr, ptr %s.addr, align 8
  %tPos408 = getelementptr inbounds nuw %struct.DState, ptr %309, i32 0, i32 14
  %310 = load i32, ptr %tPos408, align 4
  %shl409 = shl i32 %310, 2
  %and410 = and i32 %shl409, 4
  %shr411 = lshr i32 %conv407, %and410
  %and412 = and i32 %shr411, 15
  %shl413 = shl i32 %and412, 16
  %or414 = or i32 %conv401, %shl413
  %311 = load ptr, ptr %s.addr, align 8
  %tPos415 = getelementptr inbounds nuw %struct.DState, ptr %311, i32 0, i32 14
  store i32 %or414, ptr %tPos415, align 4
  %312 = load ptr, ptr %s.addr, align 8
  %nblock_used416 = getelementptr inbounds nuw %struct.DState, ptr %312, i32 0, i32 17
  %313 = load i32, ptr %nblock_used416, align 4
  %inc417 = add nsw i32 %313, 1
  store i32 %inc417, ptr %nblock_used416, align 4
  %314 = load ptr, ptr %s.addr, align 8
  %nblock_used418 = getelementptr inbounds nuw %struct.DState, ptr %314, i32 0, i32 17
  %315 = load i32, ptr %nblock_used418, align 4
  %316 = load ptr, ptr %s.addr, align 8
  %save_nblock419 = getelementptr inbounds nuw %struct.DState, ptr %316, i32 0, i32 51
  %317 = load i32, ptr %save_nblock419, align 8
  %add420 = add nsw i32 %317, 1
  %cmp421 = icmp eq i32 %315, %add420
  br i1 %cmp421, label %if.then423, label %if.end424

if.then423:                                       ; preds = %if.end387
  br label %while.body332

if.end424:                                        ; preds = %if.end387
  %318 = load i8, ptr %k1, align 1
  %conv425 = zext i8 %318 to i32
  %319 = load ptr, ptr %s.addr, align 8
  %k0426 = getelementptr inbounds nuw %struct.DState, ptr %319, i32 0, i32 15
  %320 = load i32, ptr %k0426, align 8
  %cmp427 = icmp ne i32 %conv425, %320
  br i1 %cmp427, label %if.then429, label %if.end432

if.then429:                                       ; preds = %if.end424
  %321 = load i8, ptr %k1, align 1
  %conv430 = zext i8 %321 to i32
  %322 = load ptr, ptr %s.addr, align 8
  %k0431 = getelementptr inbounds nuw %struct.DState, ptr %322, i32 0, i32 15
  store i32 %conv430, ptr %k0431, align 8
  br label %while.body332

if.end432:                                        ; preds = %if.end424
  %323 = load ptr, ptr %s.addr, align 8
  %state_out_len433 = getelementptr inbounds nuw %struct.DState, ptr %323, i32 0, i32 3
  store i32 2, ptr %state_out_len433, align 8
  %324 = load ptr, ptr %s.addr, align 8
  %tPos434 = getelementptr inbounds nuw %struct.DState, ptr %324, i32 0, i32 14
  %325 = load i32, ptr %tPos434, align 4
  %326 = load ptr, ptr %s.addr, align 8
  %cftab435 = getelementptr inbounds nuw %struct.DState, ptr %326, i32 0, i32 18
  %arraydecay436 = getelementptr inbounds [257 x i32], ptr %cftab435, i64 0, i64 0
  %call437 = call i32 @BZ2_indexIntoF(i32 noundef %325, ptr noundef %arraydecay436)
  %conv438 = trunc i32 %call437 to i8
  store i8 %conv438, ptr %k1, align 1
  %327 = load ptr, ptr %s.addr, align 8
  %ll16439 = getelementptr inbounds nuw %struct.DState, ptr %327, i32 0, i32 21
  %328 = load ptr, ptr %ll16439, align 8
  %329 = load ptr, ptr %s.addr, align 8
  %tPos440 = getelementptr inbounds nuw %struct.DState, ptr %329, i32 0, i32 14
  %330 = load i32, ptr %tPos440, align 4
  %idxprom441 = zext i32 %330 to i64
  %arrayidx442 = getelementptr inbounds nuw i16, ptr %328, i64 %idxprom441
  %331 = load i16, ptr %arrayidx442, align 2
  %conv443 = zext i16 %331 to i32
  %332 = load ptr, ptr %s.addr, align 8
  %ll4444 = getelementptr inbounds nuw %struct.DState, ptr %332, i32 0, i32 22
  %333 = load ptr, ptr %ll4444, align 8
  %334 = load ptr, ptr %s.addr, align 8
  %tPos445 = getelementptr inbounds nuw %struct.DState, ptr %334, i32 0, i32 14
  %335 = load i32, ptr %tPos445, align 4
  %shr446 = lshr i32 %335, 1
  %idxprom447 = zext i32 %shr446 to i64
  %arrayidx448 = getelementptr inbounds nuw i8, ptr %333, i64 %idxprom447
  %336 = load i8, ptr %arrayidx448, align 1
  %conv449 = zext i8 %336 to i32
  %337 = load ptr, ptr %s.addr, align 8
  %tPos450 = getelementptr inbounds nuw %struct.DState, ptr %337, i32 0, i32 14
  %338 = load i32, ptr %tPos450, align 4
  %shl451 = shl i32 %338, 2
  %and452 = and i32 %shl451, 4
  %shr453 = lshr i32 %conv449, %and452
  %and454 = and i32 %shr453, 15
  %shl455 = shl i32 %and454, 16
  %or456 = or i32 %conv443, %shl455
  %339 = load ptr, ptr %s.addr, align 8
  %tPos457 = getelementptr inbounds nuw %struct.DState, ptr %339, i32 0, i32 14
  store i32 %or456, ptr %tPos457, align 4
  %340 = load ptr, ptr %s.addr, align 8
  %nblock_used458 = getelementptr inbounds nuw %struct.DState, ptr %340, i32 0, i32 17
  %341 = load i32, ptr %nblock_used458, align 4
  %inc459 = add nsw i32 %341, 1
  store i32 %inc459, ptr %nblock_used458, align 4
  %342 = load ptr, ptr %s.addr, align 8
  %nblock_used460 = getelementptr inbounds nuw %struct.DState, ptr %342, i32 0, i32 17
  %343 = load i32, ptr %nblock_used460, align 4
  %344 = load ptr, ptr %s.addr, align 8
  %save_nblock461 = getelementptr inbounds nuw %struct.DState, ptr %344, i32 0, i32 51
  %345 = load i32, ptr %save_nblock461, align 8
  %add462 = add nsw i32 %345, 1
  %cmp463 = icmp eq i32 %343, %add462
  br i1 %cmp463, label %if.then465, label %if.end466

if.then465:                                       ; preds = %if.end432
  br label %while.body332

if.end466:                                        ; preds = %if.end432
  %346 = load i8, ptr %k1, align 1
  %conv467 = zext i8 %346 to i32
  %347 = load ptr, ptr %s.addr, align 8
  %k0468 = getelementptr inbounds nuw %struct.DState, ptr %347, i32 0, i32 15
  %348 = load i32, ptr %k0468, align 8
  %cmp469 = icmp ne i32 %conv467, %348
  br i1 %cmp469, label %if.then471, label %if.end474

if.then471:                                       ; preds = %if.end466
  %349 = load i8, ptr %k1, align 1
  %conv472 = zext i8 %349 to i32
  %350 = load ptr, ptr %s.addr, align 8
  %k0473 = getelementptr inbounds nuw %struct.DState, ptr %350, i32 0, i32 15
  store i32 %conv472, ptr %k0473, align 8
  br label %while.body332

if.end474:                                        ; preds = %if.end466
  %351 = load ptr, ptr %s.addr, align 8
  %state_out_len475 = getelementptr inbounds nuw %struct.DState, ptr %351, i32 0, i32 3
  store i32 3, ptr %state_out_len475, align 8
  %352 = load ptr, ptr %s.addr, align 8
  %tPos476 = getelementptr inbounds nuw %struct.DState, ptr %352, i32 0, i32 14
  %353 = load i32, ptr %tPos476, align 4
  %354 = load ptr, ptr %s.addr, align 8
  %cftab477 = getelementptr inbounds nuw %struct.DState, ptr %354, i32 0, i32 18
  %arraydecay478 = getelementptr inbounds [257 x i32], ptr %cftab477, i64 0, i64 0
  %call479 = call i32 @BZ2_indexIntoF(i32 noundef %353, ptr noundef %arraydecay478)
  %conv480 = trunc i32 %call479 to i8
  store i8 %conv480, ptr %k1, align 1
  %355 = load ptr, ptr %s.addr, align 8
  %ll16481 = getelementptr inbounds nuw %struct.DState, ptr %355, i32 0, i32 21
  %356 = load ptr, ptr %ll16481, align 8
  %357 = load ptr, ptr %s.addr, align 8
  %tPos482 = getelementptr inbounds nuw %struct.DState, ptr %357, i32 0, i32 14
  %358 = load i32, ptr %tPos482, align 4
  %idxprom483 = zext i32 %358 to i64
  %arrayidx484 = getelementptr inbounds nuw i16, ptr %356, i64 %idxprom483
  %359 = load i16, ptr %arrayidx484, align 2
  %conv485 = zext i16 %359 to i32
  %360 = load ptr, ptr %s.addr, align 8
  %ll4486 = getelementptr inbounds nuw %struct.DState, ptr %360, i32 0, i32 22
  %361 = load ptr, ptr %ll4486, align 8
  %362 = load ptr, ptr %s.addr, align 8
  %tPos487 = getelementptr inbounds nuw %struct.DState, ptr %362, i32 0, i32 14
  %363 = load i32, ptr %tPos487, align 4
  %shr488 = lshr i32 %363, 1
  %idxprom489 = zext i32 %shr488 to i64
  %arrayidx490 = getelementptr inbounds nuw i8, ptr %361, i64 %idxprom489
  %364 = load i8, ptr %arrayidx490, align 1
  %conv491 = zext i8 %364 to i32
  %365 = load ptr, ptr %s.addr, align 8
  %tPos492 = getelementptr inbounds nuw %struct.DState, ptr %365, i32 0, i32 14
  %366 = load i32, ptr %tPos492, align 4
  %shl493 = shl i32 %366, 2
  %and494 = and i32 %shl493, 4
  %shr495 = lshr i32 %conv491, %and494
  %and496 = and i32 %shr495, 15
  %shl497 = shl i32 %and496, 16
  %or498 = or i32 %conv485, %shl497
  %367 = load ptr, ptr %s.addr, align 8
  %tPos499 = getelementptr inbounds nuw %struct.DState, ptr %367, i32 0, i32 14
  store i32 %or498, ptr %tPos499, align 4
  %368 = load ptr, ptr %s.addr, align 8
  %nblock_used500 = getelementptr inbounds nuw %struct.DState, ptr %368, i32 0, i32 17
  %369 = load i32, ptr %nblock_used500, align 4
  %inc501 = add nsw i32 %369, 1
  store i32 %inc501, ptr %nblock_used500, align 4
  %370 = load ptr, ptr %s.addr, align 8
  %nblock_used502 = getelementptr inbounds nuw %struct.DState, ptr %370, i32 0, i32 17
  %371 = load i32, ptr %nblock_used502, align 4
  %372 = load ptr, ptr %s.addr, align 8
  %save_nblock503 = getelementptr inbounds nuw %struct.DState, ptr %372, i32 0, i32 51
  %373 = load i32, ptr %save_nblock503, align 8
  %add504 = add nsw i32 %373, 1
  %cmp505 = icmp eq i32 %371, %add504
  br i1 %cmp505, label %if.then507, label %if.end508

if.then507:                                       ; preds = %if.end474
  br label %while.body332

if.end508:                                        ; preds = %if.end474
  %374 = load i8, ptr %k1, align 1
  %conv509 = zext i8 %374 to i32
  %375 = load ptr, ptr %s.addr, align 8
  %k0510 = getelementptr inbounds nuw %struct.DState, ptr %375, i32 0, i32 15
  %376 = load i32, ptr %k0510, align 8
  %cmp511 = icmp ne i32 %conv509, %376
  br i1 %cmp511, label %if.then513, label %if.end516

if.then513:                                       ; preds = %if.end508
  %377 = load i8, ptr %k1, align 1
  %conv514 = zext i8 %377 to i32
  %378 = load ptr, ptr %s.addr, align 8
  %k0515 = getelementptr inbounds nuw %struct.DState, ptr %378, i32 0, i32 15
  store i32 %conv514, ptr %k0515, align 8
  br label %while.body332

if.end516:                                        ; preds = %if.end508
  %379 = load ptr, ptr %s.addr, align 8
  %tPos517 = getelementptr inbounds nuw %struct.DState, ptr %379, i32 0, i32 14
  %380 = load i32, ptr %tPos517, align 4
  %381 = load ptr, ptr %s.addr, align 8
  %cftab518 = getelementptr inbounds nuw %struct.DState, ptr %381, i32 0, i32 18
  %arraydecay519 = getelementptr inbounds [257 x i32], ptr %cftab518, i64 0, i64 0
  %call520 = call i32 @BZ2_indexIntoF(i32 noundef %380, ptr noundef %arraydecay519)
  %conv521 = trunc i32 %call520 to i8
  store i8 %conv521, ptr %k1, align 1
  %382 = load ptr, ptr %s.addr, align 8
  %ll16522 = getelementptr inbounds nuw %struct.DState, ptr %382, i32 0, i32 21
  %383 = load ptr, ptr %ll16522, align 8
  %384 = load ptr, ptr %s.addr, align 8
  %tPos523 = getelementptr inbounds nuw %struct.DState, ptr %384, i32 0, i32 14
  %385 = load i32, ptr %tPos523, align 4
  %idxprom524 = zext i32 %385 to i64
  %arrayidx525 = getelementptr inbounds nuw i16, ptr %383, i64 %idxprom524
  %386 = load i16, ptr %arrayidx525, align 2
  %conv526 = zext i16 %386 to i32
  %387 = load ptr, ptr %s.addr, align 8
  %ll4527 = getelementptr inbounds nuw %struct.DState, ptr %387, i32 0, i32 22
  %388 = load ptr, ptr %ll4527, align 8
  %389 = load ptr, ptr %s.addr, align 8
  %tPos528 = getelementptr inbounds nuw %struct.DState, ptr %389, i32 0, i32 14
  %390 = load i32, ptr %tPos528, align 4
  %shr529 = lshr i32 %390, 1
  %idxprom530 = zext i32 %shr529 to i64
  %arrayidx531 = getelementptr inbounds nuw i8, ptr %388, i64 %idxprom530
  %391 = load i8, ptr %arrayidx531, align 1
  %conv532 = zext i8 %391 to i32
  %392 = load ptr, ptr %s.addr, align 8
  %tPos533 = getelementptr inbounds nuw %struct.DState, ptr %392, i32 0, i32 14
  %393 = load i32, ptr %tPos533, align 4
  %shl534 = shl i32 %393, 2
  %and535 = and i32 %shl534, 4
  %shr536 = lshr i32 %conv532, %and535
  %and537 = and i32 %shr536, 15
  %shl538 = shl i32 %and537, 16
  %or539 = or i32 %conv526, %shl538
  %394 = load ptr, ptr %s.addr, align 8
  %tPos540 = getelementptr inbounds nuw %struct.DState, ptr %394, i32 0, i32 14
  store i32 %or539, ptr %tPos540, align 4
  %395 = load ptr, ptr %s.addr, align 8
  %nblock_used541 = getelementptr inbounds nuw %struct.DState, ptr %395, i32 0, i32 17
  %396 = load i32, ptr %nblock_used541, align 4
  %inc542 = add nsw i32 %396, 1
  store i32 %inc542, ptr %nblock_used541, align 4
  %397 = load i8, ptr %k1, align 1
  %conv543 = zext i8 %397 to i32
  %add544 = add nsw i32 %conv543, 4
  %398 = load ptr, ptr %s.addr, align 8
  %state_out_len545 = getelementptr inbounds nuw %struct.DState, ptr %398, i32 0, i32 3
  store i32 %add544, ptr %state_out_len545, align 8
  %399 = load ptr, ptr %s.addr, align 8
  %tPos546 = getelementptr inbounds nuw %struct.DState, ptr %399, i32 0, i32 14
  %400 = load i32, ptr %tPos546, align 4
  %401 = load ptr, ptr %s.addr, align 8
  %cftab547 = getelementptr inbounds nuw %struct.DState, ptr %401, i32 0, i32 18
  %arraydecay548 = getelementptr inbounds [257 x i32], ptr %cftab547, i64 0, i64 0
  %call549 = call i32 @BZ2_indexIntoF(i32 noundef %400, ptr noundef %arraydecay548)
  %402 = load ptr, ptr %s.addr, align 8
  %k0550 = getelementptr inbounds nuw %struct.DState, ptr %402, i32 0, i32 15
  store i32 %call549, ptr %k0550, align 8
  %403 = load ptr, ptr %s.addr, align 8
  %ll16551 = getelementptr inbounds nuw %struct.DState, ptr %403, i32 0, i32 21
  %404 = load ptr, ptr %ll16551, align 8
  %405 = load ptr, ptr %s.addr, align 8
  %tPos552 = getelementptr inbounds nuw %struct.DState, ptr %405, i32 0, i32 14
  %406 = load i32, ptr %tPos552, align 4
  %idxprom553 = zext i32 %406 to i64
  %arrayidx554 = getelementptr inbounds nuw i16, ptr %404, i64 %idxprom553
  %407 = load i16, ptr %arrayidx554, align 2
  %conv555 = zext i16 %407 to i32
  %408 = load ptr, ptr %s.addr, align 8
  %ll4556 = getelementptr inbounds nuw %struct.DState, ptr %408, i32 0, i32 22
  %409 = load ptr, ptr %ll4556, align 8
  %410 = load ptr, ptr %s.addr, align 8
  %tPos557 = getelementptr inbounds nuw %struct.DState, ptr %410, i32 0, i32 14
  %411 = load i32, ptr %tPos557, align 4
  %shr558 = lshr i32 %411, 1
  %idxprom559 = zext i32 %shr558 to i64
  %arrayidx560 = getelementptr inbounds nuw i8, ptr %409, i64 %idxprom559
  %412 = load i8, ptr %arrayidx560, align 1
  %conv561 = zext i8 %412 to i32
  %413 = load ptr, ptr %s.addr, align 8
  %tPos562 = getelementptr inbounds nuw %struct.DState, ptr %413, i32 0, i32 14
  %414 = load i32, ptr %tPos562, align 4
  %shl563 = shl i32 %414, 2
  %and564 = and i32 %shl563, 4
  %shr565 = lshr i32 %conv561, %and564
  %and566 = and i32 %shr565, 15
  %shl567 = shl i32 %and566, 16
  %or568 = or i32 %conv555, %shl567
  %415 = load ptr, ptr %s.addr, align 8
  %tPos569 = getelementptr inbounds nuw %struct.DState, ptr %415, i32 0, i32 14
  store i32 %or568, ptr %tPos569, align 4
  %416 = load ptr, ptr %s.addr, align 8
  %nblock_used570 = getelementptr inbounds nuw %struct.DState, ptr %416, i32 0, i32 17
  %417 = load i32, ptr %nblock_used570, align 4
  %inc571 = add nsw i32 %417, 1
  store i32 %inc571, ptr %nblock_used570, align 4
  br label %while.body332

return:                                           ; preds = %if.then386, %if.then339, %if.then29, %if.then3
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
