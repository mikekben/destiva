; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.ogg_page = type { ptr, i64, ptr, i64 }

@.str.157 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_stream_flush(ptr noundef %os, ptr noundef %og) #1 {
entry:
  %retval = alloca i32, align 4
  %os.addr = alloca ptr, align 8
  %og.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %vals = alloca i32, align 4
  %maxvals = alloca i32, align 4
  %bytes = alloca i32, align 4
  %acc = alloca i64, align 8
  %granule_pos = alloca i64, align 8
  %serialno = alloca i64, align 8
  %pageno103 = alloca i64, align 8
  store ptr %os, ptr %os.addr, align 8
  store ptr %og, ptr %og.addr, align 8
  store i32 0, ptr %vals, align 4
  %0 = load ptr, ptr %os.addr, align 8
  %lacing_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %0, i32 0, i32 7
  %1 = load i64, ptr %lacing_fill, align 8
  %cmp = icmp sgt i64 %1, 255
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %os.addr, align 8
  %lacing_fill1 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %2, i32 0, i32 7
  %3 = load i64, ptr %lacing_fill1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 255, %cond.true ], [ %3, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, ptr %maxvals, align 4
  store i32 0, ptr %bytes, align 4
  store i64 0, ptr %acc, align 8
  %4 = load ptr, ptr %os.addr, align 8
  %granule_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %granule_vals, align 8
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 0
  %6 = load i64, ptr %arrayidx, align 8
  store i64 %6, ptr %granule_pos, align 8
  %7 = load i32, ptr %maxvals, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %os.addr, align 8
  %b_o_s = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %8, i32 0, i32 13
  %9 = load i32, ptr %b_o_s, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  store i64 0, ptr %granule_pos, align 8
  store i32 0, ptr %vals, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %10 = load i32, ptr %vals, align 4
  %11 = load i32, ptr %maxvals, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %os.addr, align 8
  %lacing_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %lacing_vals, align 8
  %14 = load i32, ptr %vals, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %13, i64 %idxprom
  %15 = load i32, ptr %arrayidx9, align 4
  %and = and i32 %15, 255
  %cmp10 = icmp slt i32 %and, 255
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  %16 = load i32, ptr %vals, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %vals, align 4
  br label %for.end

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %17 = load i32, ptr %vals, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, ptr %vals, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then12, %for.cond
  br label %if.end34

if.else:                                          ; preds = %if.end
  store i32 0, ptr %vals, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc31, %if.else
  %18 = load i32, ptr %vals, align 4
  %19 = load i32, ptr %maxvals, align 4
  %cmp16 = icmp slt i32 %18, %19
  br i1 %cmp16, label %for.body18, label %for.end33

for.body18:                                       ; preds = %for.cond15
  %20 = load i64, ptr %acc, align 8
  %cmp19 = icmp sgt i64 %20, 4096
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body18
  br label %for.end33

if.end22:                                         ; preds = %for.body18
  %21 = load ptr, ptr %os.addr, align 8
  %lacing_vals23 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %lacing_vals23, align 8
  %23 = load i32, ptr %vals, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %22, i64 %idxprom24
  %24 = load i32, ptr %arrayidx25, align 4
  %and26 = and i32 %24, 255
  %conv27 = sext i32 %and26 to i64
  %25 = load i64, ptr %acc, align 8
  %add = add nsw i64 %25, %conv27
  store i64 %add, ptr %acc, align 8
  %26 = load ptr, ptr %os.addr, align 8
  %granule_vals28 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %granule_vals28, align 8
  %28 = load i32, ptr %vals, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds i64, ptr %27, i64 %idxprom29
  %29 = load i64, ptr %arrayidx30, align 8
  store i64 %29, ptr %granule_pos, align 8
  br label %for.inc31

for.inc31:                                        ; preds = %if.end22
  %30 = load i32, ptr %vals, align 4
  %inc32 = add nsw i32 %30, 1
  store i32 %inc32, ptr %vals, align 4
  br label %for.cond15, !llvm.loop !8

for.end33:                                        ; preds = %if.then21, %for.cond15
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %for.end
  %31 = load ptr, ptr %os.addr, align 8
  %header = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %31, i32 0, i32 10
  %arraydecay = getelementptr inbounds [282 x i8], ptr %header, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 @.str.157, i64 4, i1 false)
  %32 = load ptr, ptr %os.addr, align 8
  %header35 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %32, i32 0, i32 10
  %arrayidx36 = getelementptr inbounds [282 x i8], ptr %header35, i64 0, i64 4
  store i8 0, ptr %arrayidx36, align 4
  %33 = load ptr, ptr %os.addr, align 8
  %header37 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %33, i32 0, i32 10
  %arrayidx38 = getelementptr inbounds [282 x i8], ptr %header37, i64 0, i64 5
  store i8 0, ptr %arrayidx38, align 1
  %34 = load ptr, ptr %os.addr, align 8
  %lacing_vals39 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %lacing_vals39, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %35, i64 0
  %36 = load i32, ptr %arrayidx40, align 4
  %and41 = and i32 %36, 256
  %cmp42 = icmp eq i32 %and41, 0
  br i1 %cmp42, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.end34
  %37 = load ptr, ptr %os.addr, align 8
  %header45 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %37, i32 0, i32 10
  %arrayidx46 = getelementptr inbounds [282 x i8], ptr %header45, i64 0, i64 5
  %38 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %38 to i32
  %or = or i32 %conv47, 1
  %conv48 = trunc i32 %or to i8
  store i8 %conv48, ptr %arrayidx46, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end34
  %39 = load ptr, ptr %os.addr, align 8
  %b_o_s50 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %39, i32 0, i32 13
  %40 = load i32, ptr %b_o_s50, align 4
  %cmp51 = icmp eq i32 %40, 0
  br i1 %cmp51, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.end49
  %41 = load ptr, ptr %os.addr, align 8
  %header54 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %41, i32 0, i32 10
  %arrayidx55 = getelementptr inbounds [282 x i8], ptr %header54, i64 0, i64 5
  %42 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %42 to i32
  %or57 = or i32 %conv56, 2
  %conv58 = trunc i32 %or57 to i8
  store i8 %conv58, ptr %arrayidx55, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.end49
  %43 = load ptr, ptr %os.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %43, i32 0, i32 12
  %44 = load i32, ptr %e_o_s, align 8
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %if.end59
  %45 = load ptr, ptr %os.addr, align 8
  %lacing_fill60 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %45, i32 0, i32 7
  %46 = load i64, ptr %lacing_fill60, align 8
  %47 = load i32, ptr %vals, align 4
  %conv61 = sext i32 %47 to i64
  %cmp62 = icmp eq i64 %46, %conv61
  br i1 %cmp62, label %if.then64, label %if.end70

if.then64:                                        ; preds = %land.lhs.true
  %48 = load ptr, ptr %os.addr, align 8
  %header65 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %48, i32 0, i32 10
  %arrayidx66 = getelementptr inbounds [282 x i8], ptr %header65, i64 0, i64 5
  %49 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %49 to i32
  %or68 = or i32 %conv67, 4
  %conv69 = trunc i32 %or68 to i8
  store i8 %conv69, ptr %arrayidx66, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %land.lhs.true, %if.end59
  %50 = load ptr, ptr %os.addr, align 8
  %b_o_s71 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %50, i32 0, i32 13
  store i32 1, ptr %b_o_s71, align 4
  store i32 6, ptr %i, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc81, %if.end70
  %51 = load i32, ptr %i, align 4
  %cmp73 = icmp slt i32 %51, 14
  br i1 %cmp73, label %for.body75, label %for.end83

for.body75:                                       ; preds = %for.cond72
  %52 = load i64, ptr %granule_pos, align 8
  %and76 = and i64 %52, 255
  %conv77 = trunc i64 %and76 to i8
  %53 = load ptr, ptr %os.addr, align 8
  %header78 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %53, i32 0, i32 10
  %54 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %54 to i64
  %arrayidx80 = getelementptr inbounds [282 x i8], ptr %header78, i64 0, i64 %idxprom79
  store i8 %conv77, ptr %arrayidx80, align 1
  %55 = load i64, ptr %granule_pos, align 8
  %shr = ashr i64 %55, 8
  store i64 %shr, ptr %granule_pos, align 8
  br label %for.inc81

for.inc81:                                        ; preds = %for.body75
  %56 = load i32, ptr %i, align 4
  %inc82 = add nsw i32 %56, 1
  store i32 %inc82, ptr %i, align 4
  br label %for.cond72, !llvm.loop !9

for.end83:                                        ; preds = %for.cond72
  %57 = load ptr, ptr %os.addr, align 8
  %serialno84 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %57, i32 0, i32 14
  %58 = load i64, ptr %serialno84, align 8
  store i64 %58, ptr %serialno, align 8
  store i32 14, ptr %i, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc95, %for.end83
  %59 = load i32, ptr %i, align 4
  %cmp86 = icmp slt i32 %59, 18
  br i1 %cmp86, label %for.body88, label %for.end97

for.body88:                                       ; preds = %for.cond85
  %60 = load i64, ptr %serialno, align 8
  %and89 = and i64 %60, 255
  %conv90 = trunc i64 %and89 to i8
  %61 = load ptr, ptr %os.addr, align 8
  %header91 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %61, i32 0, i32 10
  %62 = load i32, ptr %i, align 4
  %idxprom92 = sext i32 %62 to i64
  %arrayidx93 = getelementptr inbounds [282 x i8], ptr %header91, i64 0, i64 %idxprom92
  store i8 %conv90, ptr %arrayidx93, align 1
  %63 = load i64, ptr %serialno, align 8
  %shr94 = ashr i64 %63, 8
  store i64 %shr94, ptr %serialno, align 8
  br label %for.inc95

for.inc95:                                        ; preds = %for.body88
  %64 = load i32, ptr %i, align 4
  %inc96 = add nsw i32 %64, 1
  store i32 %inc96, ptr %i, align 4
  br label %for.cond85, !llvm.loop !10

for.end97:                                        ; preds = %for.cond85
  %65 = load ptr, ptr %os.addr, align 8
  %pageno = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %65, i32 0, i32 15
  %66 = load i64, ptr %pageno, align 8
  %cmp98 = icmp eq i64 %66, -1
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %for.end97
  %67 = load ptr, ptr %os.addr, align 8
  %pageno101 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %67, i32 0, i32 15
  store i64 0, ptr %pageno101, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %for.end97
  %68 = load ptr, ptr %os.addr, align 8
  %pageno104 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %68, i32 0, i32 15
  %69 = load i64, ptr %pageno104, align 8
  %inc105 = add nsw i64 %69, 1
  store i64 %inc105, ptr %pageno104, align 8
  store i64 %69, ptr %pageno103, align 8
  store i32 18, ptr %i, align 4
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc116, %if.end102
  %70 = load i32, ptr %i, align 4
  %cmp107 = icmp slt i32 %70, 22
  br i1 %cmp107, label %for.body109, label %for.end118

for.body109:                                      ; preds = %for.cond106
  %71 = load i64, ptr %pageno103, align 8
  %and110 = and i64 %71, 255
  %conv111 = trunc i64 %and110 to i8
  %72 = load ptr, ptr %os.addr, align 8
  %header112 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %72, i32 0, i32 10
  %73 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %73 to i64
  %arrayidx114 = getelementptr inbounds [282 x i8], ptr %header112, i64 0, i64 %idxprom113
  store i8 %conv111, ptr %arrayidx114, align 1
  %74 = load i64, ptr %pageno103, align 8
  %shr115 = ashr i64 %74, 8
  store i64 %shr115, ptr %pageno103, align 8
  br label %for.inc116

for.inc116:                                       ; preds = %for.body109
  %75 = load i32, ptr %i, align 4
  %inc117 = add nsw i32 %75, 1
  store i32 %inc117, ptr %i, align 4
  br label %for.cond106, !llvm.loop !11

for.end118:                                       ; preds = %for.cond106
  %76 = load ptr, ptr %os.addr, align 8
  %header119 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %76, i32 0, i32 10
  %arrayidx120 = getelementptr inbounds [282 x i8], ptr %header119, i64 0, i64 22
  store i8 0, ptr %arrayidx120, align 2
  %77 = load ptr, ptr %os.addr, align 8
  %header121 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %77, i32 0, i32 10
  %arrayidx122 = getelementptr inbounds [282 x i8], ptr %header121, i64 0, i64 23
  store i8 0, ptr %arrayidx122, align 1
  %78 = load ptr, ptr %os.addr, align 8
  %header123 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %78, i32 0, i32 10
  %arrayidx124 = getelementptr inbounds [282 x i8], ptr %header123, i64 0, i64 24
  store i8 0, ptr %arrayidx124, align 8
  %79 = load ptr, ptr %os.addr, align 8
  %header125 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %79, i32 0, i32 10
  %arrayidx126 = getelementptr inbounds [282 x i8], ptr %header125, i64 0, i64 25
  store i8 0, ptr %arrayidx126, align 1
  %80 = load i32, ptr %vals, align 4
  %and127 = and i32 %80, 255
  %conv128 = trunc i32 %and127 to i8
  %81 = load ptr, ptr %os.addr, align 8
  %header129 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %81, i32 0, i32 10
  %arrayidx130 = getelementptr inbounds [282 x i8], ptr %header129, i64 0, i64 26
  store i8 %conv128, ptr %arrayidx130, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc146, %for.end118
  %82 = load i32, ptr %i, align 4
  %83 = load i32, ptr %vals, align 4
  %cmp132 = icmp slt i32 %82, %83
  br i1 %cmp132, label %for.body134, label %for.end148

for.body134:                                      ; preds = %for.cond131
  %84 = load ptr, ptr %os.addr, align 8
  %lacing_vals135 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %lacing_vals135, align 8
  %86 = load i32, ptr %i, align 4
  %idxprom136 = sext i32 %86 to i64
  %arrayidx137 = getelementptr inbounds i32, ptr %85, i64 %idxprom136
  %87 = load i32, ptr %arrayidx137, align 4
  %and138 = and i32 %87, 255
  %conv139 = trunc i32 %and138 to i8
  %88 = load ptr, ptr %os.addr, align 8
  %header140 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %88, i32 0, i32 10
  %89 = load i32, ptr %i, align 4
  %add141 = add nsw i32 %89, 27
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds [282 x i8], ptr %header140, i64 0, i64 %idxprom142
  store i8 %conv139, ptr %arrayidx143, align 1
  %conv144 = zext i8 %conv139 to i32
  %90 = load i32, ptr %bytes, align 4
  %add145 = add nsw i32 %90, %conv144
  store i32 %add145, ptr %bytes, align 4
  br label %for.inc146

for.inc146:                                       ; preds = %for.body134
  %91 = load i32, ptr %i, align 4
  %inc147 = add nsw i32 %91, 1
  store i32 %inc147, ptr %i, align 4
  br label %for.cond131, !llvm.loop !12

for.end148:                                       ; preds = %for.cond131
  %92 = load ptr, ptr %os.addr, align 8
  %header149 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %92, i32 0, i32 10
  %arraydecay150 = getelementptr inbounds [282 x i8], ptr %header149, i64 0, i64 0
  %93 = load ptr, ptr %og.addr, align 8
  %header151 = getelementptr inbounds nuw %struct.ogg_page, ptr %93, i32 0, i32 0
  store ptr %arraydecay150, ptr %header151, align 8
  %94 = load i32, ptr %vals, align 4
  %add152 = add nsw i32 %94, 27
  %95 = load ptr, ptr %os.addr, align 8
  %header_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %95, i32 0, i32 11
  store i32 %add152, ptr %header_fill, align 4
  %conv153 = sext i32 %add152 to i64
  %96 = load ptr, ptr %og.addr, align 8
  %header_len = getelementptr inbounds nuw %struct.ogg_page, ptr %96, i32 0, i32 1
  store i64 %conv153, ptr %header_len, align 8
  %97 = load ptr, ptr %os.addr, align 8
  %body_data = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %body_data, align 8
  %99 = load ptr, ptr %os.addr, align 8
  %body_returned = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %99, i32 0, i32 3
  %100 = load i64, ptr %body_returned, align 8
  %add.ptr = getelementptr inbounds i8, ptr %98, i64 %100
  %101 = load ptr, ptr %og.addr, align 8
  %body = getelementptr inbounds nuw %struct.ogg_page, ptr %101, i32 0, i32 2
  store ptr %add.ptr, ptr %body, align 8
  %102 = load i32, ptr %bytes, align 4
  %conv154 = sext i32 %102 to i64
  %103 = load ptr, ptr %og.addr, align 8
  %body_len = getelementptr inbounds nuw %struct.ogg_page, ptr %103, i32 0, i32 3
  store i64 %conv154, ptr %body_len, align 8
  %104 = load i32, ptr %vals, align 4
  %conv155 = sext i32 %104 to i64
  %105 = load ptr, ptr %os.addr, align 8
  %lacing_fill156 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %105, i32 0, i32 7
  %106 = load i64, ptr %lacing_fill156, align 8
  %sub = sub nsw i64 %106, %conv155
  store i64 %sub, ptr %lacing_fill156, align 8
  %107 = load ptr, ptr %os.addr, align 8
  %lacing_vals157 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %107, i32 0, i32 4
  %108 = load ptr, ptr %lacing_vals157, align 8
  %109 = load ptr, ptr %os.addr, align 8
  %lacing_vals158 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %109, i32 0, i32 4
  %110 = load ptr, ptr %lacing_vals158, align 8
  %111 = load i32, ptr %vals, align 4
  %idx.ext = sext i32 %111 to i64
  %add.ptr159 = getelementptr inbounds i32, ptr %110, i64 %idx.ext
  %112 = load ptr, ptr %os.addr, align 8
  %lacing_fill160 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %112, i32 0, i32 7
  %113 = load i64, ptr %lacing_fill160, align 8
  %mul = mul i64 %113, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %108, ptr align 4 %add.ptr159, i64 %mul, i1 false)
  %114 = load ptr, ptr %os.addr, align 8
  %granule_vals161 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %114, i32 0, i32 5
  %115 = load ptr, ptr %granule_vals161, align 8
  %116 = load ptr, ptr %os.addr, align 8
  %granule_vals162 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %116, i32 0, i32 5
  %117 = load ptr, ptr %granule_vals162, align 8
  %118 = load i32, ptr %vals, align 4
  %idx.ext163 = sext i32 %118 to i64
  %add.ptr164 = getelementptr inbounds i64, ptr %117, i64 %idx.ext163
  %119 = load ptr, ptr %os.addr, align 8
  %lacing_fill165 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %119, i32 0, i32 7
  %120 = load i64, ptr %lacing_fill165, align 8
  %mul166 = mul i64 %120, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %115, ptr align 8 %add.ptr164, i64 %mul166, i1 false)
  %121 = load i32, ptr %bytes, align 4
  %conv167 = sext i32 %121 to i64
  %122 = load ptr, ptr %os.addr, align 8
  %body_returned168 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %122, i32 0, i32 3
  %123 = load i64, ptr %body_returned168, align 8
  %add169 = add nsw i64 %123, %conv167
  store i64 %add169, ptr %body_returned168, align 8
  %124 = load ptr, ptr %og.addr, align 8
  call void @ogg_page_checksum_set(ptr noundef %124)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end148, %if.then
  %125 = load i32, ptr %retval, align 4
  ret i32 %125
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local void @ogg_page_checksum_set(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
