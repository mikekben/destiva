; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

@BZ2_crc32Table = external dso_local global [256 x i32], align 16

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @copy_input_until_stop(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %progress_in = alloca i8, align 1
  %zchh = alloca i32, align 4
  %ch = alloca i8, align 1
  %zchh77 = alloca i32, align 4
  %ch89 = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i8 0, ptr %progress_in, align 1
  %0 = load ptr, ptr %s.addr, align 8
  %mode = getelementptr inbounds nuw %struct.EState, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %mode, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else59

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end58, %if.then
  %2 = load ptr, ptr %s.addr, align 8
  %nblock = getelementptr inbounds nuw %struct.EState, ptr %2, i32 0, i32 17
  %3 = load i32, ptr %nblock, align 4
  %4 = load ptr, ptr %s.addr, align 8
  %nblockMAX = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 18
  %5 = load i32, ptr %nblockMAX, align 8
  %cmp1 = icmp sge i32 %3, %5
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %s.addr, align 8
  %strm = getelementptr inbounds nuw %struct.EState, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %strm, align 8
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %avail_in, align 8
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %while.end

if.end5:                                          ; preds = %if.end
  store i8 1, ptr %progress_in, align 1
  %9 = load ptr, ptr %s.addr, align 8
  %strm6 = getelementptr inbounds nuw %struct.EState, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %strm6, align 8
  %next_in = getelementptr inbounds nuw %struct.bz_stream, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_in, align 8
  %12 = load i8, ptr %11, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, ptr %zchh, align 4
  %13 = load i32, ptr %zchh, align 4
  %14 = load ptr, ptr %s.addr, align 8
  %state_in_ch = getelementptr inbounds nuw %struct.EState, ptr %14, i32 0, i32 13
  %15 = load i32, ptr %state_in_ch, align 4
  %cmp7 = icmp ne i32 %13, %15
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %16 = load ptr, ptr %s.addr, align 8
  %state_in_len = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 14
  %17 = load i32, ptr %state_in_len, align 8
  %cmp9 = icmp eq i32 %17, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %s.addr, align 8
  %state_in_ch12 = getelementptr inbounds nuw %struct.EState, ptr %18, i32 0, i32 13
  %19 = load i32, ptr %state_in_ch12, align 4
  %conv13 = trunc i32 %19 to i8
  store i8 %conv13, ptr %ch, align 1
  %20 = load ptr, ptr %s.addr, align 8
  %blockCRC = getelementptr inbounds nuw %struct.EState, ptr %20, i32 0, i32 26
  %21 = load i32, ptr %blockCRC, align 8
  %shl = shl i32 %21, 8
  %22 = load ptr, ptr %s.addr, align 8
  %blockCRC14 = getelementptr inbounds nuw %struct.EState, ptr %22, i32 0, i32 26
  %23 = load i32, ptr %blockCRC14, align 8
  %shr = lshr i32 %23, 24
  %24 = load i8, ptr %ch, align 1
  %conv15 = zext i8 %24 to i32
  %xor = xor i32 %shr, %conv15
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom
  %25 = load i32, ptr %arrayidx, align 4
  %xor16 = xor i32 %shl, %25
  %26 = load ptr, ptr %s.addr, align 8
  %blockCRC17 = getelementptr inbounds nuw %struct.EState, ptr %26, i32 0, i32 26
  store i32 %xor16, ptr %blockCRC17, align 8
  %27 = load ptr, ptr %s.addr, align 8
  %inUse = getelementptr inbounds nuw %struct.EState, ptr %27, i32 0, i32 22
  %28 = load ptr, ptr %s.addr, align 8
  %state_in_ch18 = getelementptr inbounds nuw %struct.EState, ptr %28, i32 0, i32 13
  %29 = load i32, ptr %state_in_ch18, align 4
  %idxprom19 = zext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds nuw [256 x i8], ptr %inUse, i64 0, i64 %idxprom19
  store i8 1, ptr %arrayidx20, align 1
  %30 = load i8, ptr %ch, align 1
  %31 = load ptr, ptr %s.addr, align 8
  %block = getelementptr inbounds nuw %struct.EState, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %block, align 8
  %33 = load ptr, ptr %s.addr, align 8
  %nblock21 = getelementptr inbounds nuw %struct.EState, ptr %33, i32 0, i32 17
  %34 = load i32, ptr %nblock21, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %32, i64 %idxprom22
  store i8 %30, ptr %arrayidx23, align 1
  %35 = load ptr, ptr %s.addr, align 8
  %nblock24 = getelementptr inbounds nuw %struct.EState, ptr %35, i32 0, i32 17
  %36 = load i32, ptr %nblock24, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %nblock24, align 4
  %37 = load i32, ptr %zchh, align 4
  %38 = load ptr, ptr %s.addr, align 8
  %state_in_ch25 = getelementptr inbounds nuw %struct.EState, ptr %38, i32 0, i32 13
  store i32 %37, ptr %state_in_ch25, align 4
  br label %if.end44

if.else:                                          ; preds = %land.lhs.true, %if.end5
  %39 = load i32, ptr %zchh, align 4
  %40 = load ptr, ptr %s.addr, align 8
  %state_in_ch26 = getelementptr inbounds nuw %struct.EState, ptr %40, i32 0, i32 13
  %41 = load i32, ptr %state_in_ch26, align 4
  %cmp27 = icmp ne i32 %39, %41
  br i1 %cmp27, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %42 = load ptr, ptr %s.addr, align 8
  %state_in_len29 = getelementptr inbounds nuw %struct.EState, ptr %42, i32 0, i32 14
  %43 = load i32, ptr %state_in_len29, align 8
  %cmp30 = icmp eq i32 %43, 255
  br i1 %cmp30, label %if.then32, label %if.else40

if.then32:                                        ; preds = %lor.lhs.false, %if.else
  %44 = load ptr, ptr %s.addr, align 8
  %state_in_ch33 = getelementptr inbounds nuw %struct.EState, ptr %44, i32 0, i32 13
  %45 = load i32, ptr %state_in_ch33, align 4
  %cmp34 = icmp ult i32 %45, 256
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  %46 = load ptr, ptr %s.addr, align 8
  call void @add_pair_to_block(ptr noundef %46)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then32
  %47 = load i32, ptr %zchh, align 4
  %48 = load ptr, ptr %s.addr, align 8
  %state_in_ch38 = getelementptr inbounds nuw %struct.EState, ptr %48, i32 0, i32 13
  store i32 %47, ptr %state_in_ch38, align 4
  %49 = load ptr, ptr %s.addr, align 8
  %state_in_len39 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 14
  store i32 1, ptr %state_in_len39, align 8
  br label %if.end43

if.else40:                                        ; preds = %lor.lhs.false
  %50 = load ptr, ptr %s.addr, align 8
  %state_in_len41 = getelementptr inbounds nuw %struct.EState, ptr %50, i32 0, i32 14
  %51 = load i32, ptr %state_in_len41, align 8
  %inc42 = add nsw i32 %51, 1
  store i32 %inc42, ptr %state_in_len41, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.end37
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then11
  %52 = load ptr, ptr %s.addr, align 8
  %strm45 = getelementptr inbounds nuw %struct.EState, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %strm45, align 8
  %next_in46 = getelementptr inbounds nuw %struct.bz_stream, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %next_in46, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %54, i32 1
  store ptr %incdec.ptr, ptr %next_in46, align 8
  %55 = load ptr, ptr %s.addr, align 8
  %strm47 = getelementptr inbounds nuw %struct.EState, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %strm47, align 8
  %avail_in48 = getelementptr inbounds nuw %struct.bz_stream, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %avail_in48, align 8
  %dec = add i32 %57, -1
  store i32 %dec, ptr %avail_in48, align 8
  %58 = load ptr, ptr %s.addr, align 8
  %strm49 = getelementptr inbounds nuw %struct.EState, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %strm49, align 8
  %total_in_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %59, i32 0, i32 2
  %60 = load i32, ptr %total_in_lo32, align 4
  %inc50 = add i32 %60, 1
  store i32 %inc50, ptr %total_in_lo32, align 4
  %61 = load ptr, ptr %s.addr, align 8
  %strm51 = getelementptr inbounds nuw %struct.EState, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %strm51, align 8
  %total_in_lo3252 = getelementptr inbounds nuw %struct.bz_stream, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %total_in_lo3252, align 4
  %cmp53 = icmp eq i32 %63, 0
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end44
  %64 = load ptr, ptr %s.addr, align 8
  %strm56 = getelementptr inbounds nuw %struct.EState, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %strm56, align 8
  %total_in_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %65, i32 0, i32 3
  %66 = load i32, ptr %total_in_hi32, align 8
  %inc57 = add i32 %66, 1
  store i32 %inc57, ptr %total_in_hi32, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end44
  br label %while.body

while.end:                                        ; preds = %if.then4, %if.then2
  br label %if.end155

if.else59:                                        ; preds = %entry
  br label %while.body60

while.body60:                                     ; preds = %if.end151, %if.else59
  %67 = load ptr, ptr %s.addr, align 8
  %nblock61 = getelementptr inbounds nuw %struct.EState, ptr %67, i32 0, i32 17
  %68 = load i32, ptr %nblock61, align 4
  %69 = load ptr, ptr %s.addr, align 8
  %nblockMAX62 = getelementptr inbounds nuw %struct.EState, ptr %69, i32 0, i32 18
  %70 = load i32, ptr %nblockMAX62, align 8
  %cmp63 = icmp sge i32 %68, %70
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %while.body60
  br label %while.end154

if.end66:                                         ; preds = %while.body60
  %71 = load ptr, ptr %s.addr, align 8
  %strm67 = getelementptr inbounds nuw %struct.EState, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %strm67, align 8
  %avail_in68 = getelementptr inbounds nuw %struct.bz_stream, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %avail_in68, align 8
  %cmp69 = icmp eq i32 %73, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end66
  br label %while.end154

if.end72:                                         ; preds = %if.end66
  %74 = load ptr, ptr %s.addr, align 8
  %avail_in_expect = getelementptr inbounds nuw %struct.EState, ptr %74, i32 0, i32 3
  %75 = load i32, ptr %avail_in_expect, align 8
  %cmp73 = icmp eq i32 %75, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  br label %while.end154

if.end76:                                         ; preds = %if.end72
  store i8 1, ptr %progress_in, align 1
  %76 = load ptr, ptr %s.addr, align 8
  %strm78 = getelementptr inbounds nuw %struct.EState, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %strm78, align 8
  %next_in79 = getelementptr inbounds nuw %struct.bz_stream, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %next_in79, align 8
  %79 = load i8, ptr %78, align 1
  %conv80 = zext i8 %79 to i32
  store i32 %conv80, ptr %zchh77, align 4
  %80 = load i32, ptr %zchh77, align 4
  %81 = load ptr, ptr %s.addr, align 8
  %state_in_ch81 = getelementptr inbounds nuw %struct.EState, ptr %81, i32 0, i32 13
  %82 = load i32, ptr %state_in_ch81, align 4
  %cmp82 = icmp ne i32 %80, %82
  br i1 %cmp82, label %land.lhs.true84, label %if.else113

land.lhs.true84:                                  ; preds = %if.end76
  %83 = load ptr, ptr %s.addr, align 8
  %state_in_len85 = getelementptr inbounds nuw %struct.EState, ptr %83, i32 0, i32 14
  %84 = load i32, ptr %state_in_len85, align 8
  %cmp86 = icmp eq i32 %84, 1
  br i1 %cmp86, label %if.then88, label %if.else113

if.then88:                                        ; preds = %land.lhs.true84
  %85 = load ptr, ptr %s.addr, align 8
  %state_in_ch90 = getelementptr inbounds nuw %struct.EState, ptr %85, i32 0, i32 13
  %86 = load i32, ptr %state_in_ch90, align 4
  %conv91 = trunc i32 %86 to i8
  store i8 %conv91, ptr %ch89, align 1
  %87 = load ptr, ptr %s.addr, align 8
  %blockCRC92 = getelementptr inbounds nuw %struct.EState, ptr %87, i32 0, i32 26
  %88 = load i32, ptr %blockCRC92, align 8
  %shl93 = shl i32 %88, 8
  %89 = load ptr, ptr %s.addr, align 8
  %blockCRC94 = getelementptr inbounds nuw %struct.EState, ptr %89, i32 0, i32 26
  %90 = load i32, ptr %blockCRC94, align 8
  %shr95 = lshr i32 %90, 24
  %91 = load i8, ptr %ch89, align 1
  %conv96 = zext i8 %91 to i32
  %xor97 = xor i32 %shr95, %conv96
  %idxprom98 = zext i32 %xor97 to i64
  %arrayidx99 = getelementptr inbounds nuw [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom98
  %92 = load i32, ptr %arrayidx99, align 4
  %xor100 = xor i32 %shl93, %92
  %93 = load ptr, ptr %s.addr, align 8
  %blockCRC101 = getelementptr inbounds nuw %struct.EState, ptr %93, i32 0, i32 26
  store i32 %xor100, ptr %blockCRC101, align 8
  %94 = load ptr, ptr %s.addr, align 8
  %inUse102 = getelementptr inbounds nuw %struct.EState, ptr %94, i32 0, i32 22
  %95 = load ptr, ptr %s.addr, align 8
  %state_in_ch103 = getelementptr inbounds nuw %struct.EState, ptr %95, i32 0, i32 13
  %96 = load i32, ptr %state_in_ch103, align 4
  %idxprom104 = zext i32 %96 to i64
  %arrayidx105 = getelementptr inbounds nuw [256 x i8], ptr %inUse102, i64 0, i64 %idxprom104
  store i8 1, ptr %arrayidx105, align 1
  %97 = load i8, ptr %ch89, align 1
  %98 = load ptr, ptr %s.addr, align 8
  %block106 = getelementptr inbounds nuw %struct.EState, ptr %98, i32 0, i32 9
  %99 = load ptr, ptr %block106, align 8
  %100 = load ptr, ptr %s.addr, align 8
  %nblock107 = getelementptr inbounds nuw %struct.EState, ptr %100, i32 0, i32 17
  %101 = load i32, ptr %nblock107, align 4
  %idxprom108 = sext i32 %101 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %99, i64 %idxprom108
  store i8 %97, ptr %arrayidx109, align 1
  %102 = load ptr, ptr %s.addr, align 8
  %nblock110 = getelementptr inbounds nuw %struct.EState, ptr %102, i32 0, i32 17
  %103 = load i32, ptr %nblock110, align 4
  %inc111 = add nsw i32 %103, 1
  store i32 %inc111, ptr %nblock110, align 4
  %104 = load i32, ptr %zchh77, align 4
  %105 = load ptr, ptr %s.addr, align 8
  %state_in_ch112 = getelementptr inbounds nuw %struct.EState, ptr %105, i32 0, i32 13
  store i32 %104, ptr %state_in_ch112, align 4
  br label %if.end133

if.else113:                                       ; preds = %land.lhs.true84, %if.end76
  %106 = load i32, ptr %zchh77, align 4
  %107 = load ptr, ptr %s.addr, align 8
  %state_in_ch114 = getelementptr inbounds nuw %struct.EState, ptr %107, i32 0, i32 13
  %108 = load i32, ptr %state_in_ch114, align 4
  %cmp115 = icmp ne i32 %106, %108
  br i1 %cmp115, label %if.then121, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.else113
  %109 = load ptr, ptr %s.addr, align 8
  %state_in_len118 = getelementptr inbounds nuw %struct.EState, ptr %109, i32 0, i32 14
  %110 = load i32, ptr %state_in_len118, align 8
  %cmp119 = icmp eq i32 %110, 255
  br i1 %cmp119, label %if.then121, label %if.else129

if.then121:                                       ; preds = %lor.lhs.false117, %if.else113
  %111 = load ptr, ptr %s.addr, align 8
  %state_in_ch122 = getelementptr inbounds nuw %struct.EState, ptr %111, i32 0, i32 13
  %112 = load i32, ptr %state_in_ch122, align 4
  %cmp123 = icmp ult i32 %112, 256
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.then121
  %113 = load ptr, ptr %s.addr, align 8
  call void @add_pair_to_block(ptr noundef %113)
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.then121
  %114 = load i32, ptr %zchh77, align 4
  %115 = load ptr, ptr %s.addr, align 8
  %state_in_ch127 = getelementptr inbounds nuw %struct.EState, ptr %115, i32 0, i32 13
  store i32 %114, ptr %state_in_ch127, align 4
  %116 = load ptr, ptr %s.addr, align 8
  %state_in_len128 = getelementptr inbounds nuw %struct.EState, ptr %116, i32 0, i32 14
  store i32 1, ptr %state_in_len128, align 8
  br label %if.end132

if.else129:                                       ; preds = %lor.lhs.false117
  %117 = load ptr, ptr %s.addr, align 8
  %state_in_len130 = getelementptr inbounds nuw %struct.EState, ptr %117, i32 0, i32 14
  %118 = load i32, ptr %state_in_len130, align 8
  %inc131 = add nsw i32 %118, 1
  store i32 %inc131, ptr %state_in_len130, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.else129, %if.end126
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then88
  %119 = load ptr, ptr %s.addr, align 8
  %strm134 = getelementptr inbounds nuw %struct.EState, ptr %119, i32 0, i32 0
  %120 = load ptr, ptr %strm134, align 8
  %next_in135 = getelementptr inbounds nuw %struct.bz_stream, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %next_in135, align 8
  %incdec.ptr136 = getelementptr inbounds nuw i8, ptr %121, i32 1
  store ptr %incdec.ptr136, ptr %next_in135, align 8
  %122 = load ptr, ptr %s.addr, align 8
  %strm137 = getelementptr inbounds nuw %struct.EState, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %strm137, align 8
  %avail_in138 = getelementptr inbounds nuw %struct.bz_stream, ptr %123, i32 0, i32 1
  %124 = load i32, ptr %avail_in138, align 8
  %dec139 = add i32 %124, -1
  store i32 %dec139, ptr %avail_in138, align 8
  %125 = load ptr, ptr %s.addr, align 8
  %strm140 = getelementptr inbounds nuw %struct.EState, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %strm140, align 8
  %total_in_lo32141 = getelementptr inbounds nuw %struct.bz_stream, ptr %126, i32 0, i32 2
  %127 = load i32, ptr %total_in_lo32141, align 4
  %inc142 = add i32 %127, 1
  store i32 %inc142, ptr %total_in_lo32141, align 4
  %128 = load ptr, ptr %s.addr, align 8
  %strm143 = getelementptr inbounds nuw %struct.EState, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %strm143, align 8
  %total_in_lo32144 = getelementptr inbounds nuw %struct.bz_stream, ptr %129, i32 0, i32 2
  %130 = load i32, ptr %total_in_lo32144, align 4
  %cmp145 = icmp eq i32 %130, 0
  br i1 %cmp145, label %if.then147, label %if.end151

if.then147:                                       ; preds = %if.end133
  %131 = load ptr, ptr %s.addr, align 8
  %strm148 = getelementptr inbounds nuw %struct.EState, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %strm148, align 8
  %total_in_hi32149 = getelementptr inbounds nuw %struct.bz_stream, ptr %132, i32 0, i32 3
  %133 = load i32, ptr %total_in_hi32149, align 8
  %inc150 = add i32 %133, 1
  store i32 %inc150, ptr %total_in_hi32149, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %if.end133
  %134 = load ptr, ptr %s.addr, align 8
  %avail_in_expect152 = getelementptr inbounds nuw %struct.EState, ptr %134, i32 0, i32 3
  %135 = load i32, ptr %avail_in_expect152, align 8
  %dec153 = add i32 %135, -1
  store i32 %dec153, ptr %avail_in_expect152, align 8
  br label %while.body60

while.end154:                                     ; preds = %if.then75, %if.then71, %if.then65
  br label %if.end155

if.end155:                                        ; preds = %while.end154, %while.end
  %136 = load i8, ptr %progress_in, align 1
  ret i8 %136
}

; Function Attrs: nounwind uwtable
declare hidden void @add_pair_to_block(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
