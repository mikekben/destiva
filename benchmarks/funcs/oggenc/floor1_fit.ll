; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsfit_acc = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vorbis_look_floor1 = type { [65 x i32], [65 x i32], [65 x i32], [63 x i32], [63 x i32], i32, i32, i32, ptr, i64, i64, i64 }
%struct.vorbis_info_floor1 = type { i32, [31 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x [8 x i32]], i32, [65 x i32], float, float, float, float, float, i32 }

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @floor1_fit(ptr noundef %vb, ptr noundef %look, ptr noundef %logmdct, ptr noundef %logmask) #1 {
entry:
  %vb.addr = alloca ptr, align 8
  %look.addr = alloca ptr, align 8
  %logmdct.addr = alloca ptr, align 8
  %logmask.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %info = alloca ptr, align 8
  %n = alloca i64, align 8
  %posts = alloca i64, align 8
  %nonzero = alloca i64, align 8
  %fits = alloca [64 x %struct.lsfit_acc], align 16
  %fit_valueA = alloca [65 x i32], align 16
  %fit_valueB = alloca [65 x i32], align 16
  %loneighbor = alloca [65 x i32], align 16
  %hineighbor = alloca [65 x i32], align 16
  %output = alloca ptr, align 8
  %memo = alloca [65 x i32], align 16
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %sortpos = alloca i32, align 4
  %ln = alloca i32, align 4
  %hn = alloca i32, align 4
  %lsortpos = alloca i32, align 4
  %hsortpos = alloca i32, align 4
  %lx = alloca i32, align 4
  %hx = alloca i32, align 4
  %ly = alloca i32, align 4
  %hy = alloca i32, align 4
  %ly0 = alloca i32, align 4
  %ly1 = alloca i32, align 4
  %hy0 = alloca i32, align 4
  %hy1 = alloca i32, align 4
  %ln193 = alloca i32, align 4
  %hn197 = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y0207 = alloca i32, align 4
  %y1210 = alloca i32, align 4
  %predicted = alloca i32, align 4
  %vx = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %look, ptr %look.addr, align 8
  store ptr %logmdct, ptr %logmdct.addr, align 8
  store ptr %logmask, ptr %logmask.addr, align 8
  %0 = load ptr, ptr %look.addr, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %vi, align 8
  store ptr %1, ptr %info, align 8
  %2 = load ptr, ptr %look.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %n1, align 8
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %n, align 8
  %4 = load ptr, ptr %look.addr, align 8
  %posts2 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %posts2, align 4
  %conv3 = sext i32 %5 to i64
  store i64 %conv3, ptr %posts, align 8
  store i64 0, ptr %nonzero, align 8
  store ptr null, ptr %output, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %posts, align 8
  %cmp = icmp slt i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 %8
  store i32 -200, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc10, %for.end
  %10 = load i64, ptr %i, align 8
  %11 = load i64, ptr %posts, align 8
  %cmp6 = icmp slt i64 %10, %11
  br i1 %cmp6, label %for.body8, label %for.end12

for.body8:                                        ; preds = %for.cond5
  %12 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 %12
  store i32 -200, ptr %arrayidx9, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body8
  %13 = load i64, ptr %i, align 8
  %inc11 = add nsw i64 %13, 1
  store i64 %inc11, ptr %i, align 8
  br label %for.cond5, !llvm.loop !8

for.end12:                                        ; preds = %for.cond5
  store i64 0, ptr %i, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc18, %for.end12
  %14 = load i64, ptr %i, align 8
  %15 = load i64, ptr %posts, align 8
  %cmp14 = icmp slt i64 %14, %15
  br i1 %cmp14, label %for.body16, label %for.end20

for.body16:                                       ; preds = %for.cond13
  %16 = load i64, ptr %i, align 8
  %arrayidx17 = getelementptr inbounds [65 x i32], ptr %loneighbor, i64 0, i64 %16
  store i32 0, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body16
  %17 = load i64, ptr %i, align 8
  %inc19 = add nsw i64 %17, 1
  store i64 %inc19, ptr %i, align 8
  br label %for.cond13, !llvm.loop !9

for.end20:                                        ; preds = %for.cond13
  store i64 0, ptr %i, align 8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc26, %for.end20
  %18 = load i64, ptr %i, align 8
  %19 = load i64, ptr %posts, align 8
  %cmp22 = icmp slt i64 %18, %19
  br i1 %cmp22, label %for.body24, label %for.end28

for.body24:                                       ; preds = %for.cond21
  %20 = load i64, ptr %i, align 8
  %arrayidx25 = getelementptr inbounds [65 x i32], ptr %hineighbor, i64 0, i64 %20
  store i32 1, ptr %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body24
  %21 = load i64, ptr %i, align 8
  %inc27 = add nsw i64 %21, 1
  store i64 %inc27, ptr %i, align 8
  br label %for.cond21, !llvm.loop !10

for.end28:                                        ; preds = %for.cond21
  store i64 0, ptr %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc34, %for.end28
  %22 = load i64, ptr %i, align 8
  %23 = load i64, ptr %posts, align 8
  %cmp30 = icmp slt i64 %22, %23
  br i1 %cmp30, label %for.body32, label %for.end36

for.body32:                                       ; preds = %for.cond29
  %24 = load i64, ptr %i, align 8
  %arrayidx33 = getelementptr inbounds [65 x i32], ptr %memo, i64 0, i64 %24
  store i32 -1, ptr %arrayidx33, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body32
  %25 = load i64, ptr %i, align 8
  %inc35 = add nsw i64 %25, 1
  store i64 %inc35, ptr %i, align 8
  br label %for.cond29, !llvm.loop !11

for.end36:                                        ; preds = %for.cond29
  %26 = load i64, ptr %posts, align 8
  %cmp37 = icmp eq i64 %26, 0
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.end36
  %27 = load ptr, ptr %logmask.addr, align 8
  %28 = load ptr, ptr %logmdct.addr, align 8
  %29 = load i64, ptr %n, align 8
  %conv39 = trunc i64 %29 to i32
  %arraydecay = getelementptr inbounds [64 x %struct.lsfit_acc], ptr %fits, i64 0, i64 0
  %30 = load i64, ptr %n, align 8
  %conv40 = trunc i64 %30 to i32
  %31 = load ptr, ptr %info, align 8
  %call = call i32 @accumulate_fit(ptr noundef %27, ptr noundef %28, i32 noundef 0, i32 noundef %conv39, ptr noundef %arraydecay, i32 noundef %conv40, ptr noundef %31)
  %conv41 = sext i32 %call to i64
  %32 = load i64, ptr %nonzero, align 8
  %add = add nsw i64 %32, %conv41
  store i64 %add, ptr %nonzero, align 8
  br label %if.end

if.else:                                          ; preds = %for.end36
  store i64 0, ptr %i, align 8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc55, %if.else
  %33 = load i64, ptr %i, align 8
  %34 = load i64, ptr %posts, align 8
  %sub = sub nsw i64 %34, 1
  %cmp43 = icmp slt i64 %33, %sub
  br i1 %cmp43, label %for.body45, label %for.end57

for.body45:                                       ; preds = %for.cond42
  %35 = load ptr, ptr %logmask.addr, align 8
  %36 = load ptr, ptr %logmdct.addr, align 8
  %37 = load ptr, ptr %look.addr, align 8
  %sorted_index = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %37, i32 0, i32 0
  %38 = load i64, ptr %i, align 8
  %arrayidx46 = getelementptr inbounds [65 x i32], ptr %sorted_index, i64 0, i64 %38
  %39 = load i32, ptr %arrayidx46, align 4
  %40 = load ptr, ptr %look.addr, align 8
  %sorted_index47 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %40, i32 0, i32 0
  %41 = load i64, ptr %i, align 8
  %add48 = add nsw i64 %41, 1
  %arrayidx49 = getelementptr inbounds [65 x i32], ptr %sorted_index47, i64 0, i64 %add48
  %42 = load i32, ptr %arrayidx49, align 4
  %arraydecay50 = getelementptr inbounds [64 x %struct.lsfit_acc], ptr %fits, i64 0, i64 0
  %43 = load i64, ptr %i, align 8
  %add.ptr = getelementptr inbounds %struct.lsfit_acc, ptr %arraydecay50, i64 %43
  %44 = load i64, ptr %n, align 8
  %conv51 = trunc i64 %44 to i32
  %45 = load ptr, ptr %info, align 8
  %call52 = call i32 @accumulate_fit(ptr noundef %35, ptr noundef %36, i32 noundef %39, i32 noundef %42, ptr noundef %add.ptr, i32 noundef %conv51, ptr noundef %45)
  %conv53 = sext i32 %call52 to i64
  %46 = load i64, ptr %nonzero, align 8
  %add54 = add nsw i64 %46, %conv53
  store i64 %add54, ptr %nonzero, align 8
  br label %for.inc55

for.inc55:                                        ; preds = %for.body45
  %47 = load i64, ptr %i, align 8
  %inc56 = add nsw i64 %47, 1
  store i64 %inc56, ptr %i, align 8
  br label %for.cond42, !llvm.loop !12

for.end57:                                        ; preds = %for.cond42
  br label %if.end

if.end:                                           ; preds = %for.end57, %if.then
  %48 = load i64, ptr %nonzero, align 8
  %tobool = icmp ne i64 %48, 0
  br i1 %tobool, label %if.then58, label %if.end232

if.then58:                                        ; preds = %if.end
  store i32 -200, ptr %y0, align 4
  store i32 -200, ptr %y1, align 4
  %arraydecay59 = getelementptr inbounds [64 x %struct.lsfit_acc], ptr %fits, i64 0, i64 0
  %49 = load i64, ptr %posts, align 8
  %sub60 = sub nsw i64 %49, 1
  %conv61 = trunc i64 %sub60 to i32
  call void @fit_line(ptr noundef %arraydecay59, i32 noundef %conv61, ptr noundef %y0, ptr noundef %y1)
  %50 = load i32, ptr %y0, align 4
  %arrayidx62 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 0
  store i32 %50, ptr %arrayidx62, align 16
  %51 = load i32, ptr %y0, align 4
  %arrayidx63 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 0
  store i32 %51, ptr %arrayidx63, align 16
  %52 = load i32, ptr %y1, align 4
  %arrayidx64 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 1
  store i32 %52, ptr %arrayidx64, align 4
  %53 = load i32, ptr %y1, align 4
  %arrayidx65 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 1
  store i32 %53, ptr %arrayidx65, align 4
  store i64 2, ptr %i, align 8
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc177, %if.then58
  %54 = load i64, ptr %i, align 8
  %55 = load i64, ptr %posts, align 8
  %cmp67 = icmp slt i64 %54, %55
  br i1 %cmp67, label %for.body69, label %for.end179

for.body69:                                       ; preds = %for.cond66
  %56 = load ptr, ptr %look.addr, align 8
  %reverse_index = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %56, i32 0, i32 2
  %57 = load i64, ptr %i, align 8
  %arrayidx70 = getelementptr inbounds [65 x i32], ptr %reverse_index, i64 0, i64 %57
  %58 = load i32, ptr %arrayidx70, align 4
  store i32 %58, ptr %sortpos, align 4
  %59 = load i32, ptr %sortpos, align 4
  %idxprom = sext i32 %59 to i64
  %arrayidx71 = getelementptr inbounds [65 x i32], ptr %loneighbor, i64 0, i64 %idxprom
  %60 = load i32, ptr %arrayidx71, align 4
  store i32 %60, ptr %ln, align 4
  %61 = load i32, ptr %sortpos, align 4
  %idxprom72 = sext i32 %61 to i64
  %arrayidx73 = getelementptr inbounds [65 x i32], ptr %hineighbor, i64 0, i64 %idxprom72
  %62 = load i32, ptr %arrayidx73, align 4
  store i32 %62, ptr %hn, align 4
  %63 = load i32, ptr %ln, align 4
  %idxprom74 = sext i32 %63 to i64
  %arrayidx75 = getelementptr inbounds [65 x i32], ptr %memo, i64 0, i64 %idxprom74
  %64 = load i32, ptr %arrayidx75, align 4
  %65 = load i32, ptr %hn, align 4
  %cmp76 = icmp ne i32 %64, %65
  br i1 %cmp76, label %if.then78, label %if.end176

if.then78:                                        ; preds = %for.body69
  %66 = load ptr, ptr %look.addr, align 8
  %reverse_index79 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %66, i32 0, i32 2
  %67 = load i32, ptr %ln, align 4
  %idxprom80 = sext i32 %67 to i64
  %arrayidx81 = getelementptr inbounds [65 x i32], ptr %reverse_index79, i64 0, i64 %idxprom80
  %68 = load i32, ptr %arrayidx81, align 4
  store i32 %68, ptr %lsortpos, align 4
  %69 = load ptr, ptr %look.addr, align 8
  %reverse_index82 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %69, i32 0, i32 2
  %70 = load i32, ptr %hn, align 4
  %idxprom83 = sext i32 %70 to i64
  %arrayidx84 = getelementptr inbounds [65 x i32], ptr %reverse_index82, i64 0, i64 %idxprom83
  %71 = load i32, ptr %arrayidx84, align 4
  store i32 %71, ptr %hsortpos, align 4
  %72 = load i32, ptr %hn, align 4
  %73 = load i32, ptr %ln, align 4
  %idxprom85 = sext i32 %73 to i64
  %arrayidx86 = getelementptr inbounds [65 x i32], ptr %memo, i64 0, i64 %idxprom85
  store i32 %72, ptr %arrayidx86, align 4
  %74 = load ptr, ptr %info, align 8
  %postlist = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %74, i32 0, i32 7
  %75 = load i32, ptr %ln, align 4
  %idxprom87 = sext i32 %75 to i64
  %arrayidx88 = getelementptr inbounds [65 x i32], ptr %postlist, i64 0, i64 %idxprom87
  %76 = load i32, ptr %arrayidx88, align 4
  store i32 %76, ptr %lx, align 4
  %77 = load ptr, ptr %info, align 8
  %postlist89 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %77, i32 0, i32 7
  %78 = load i32, ptr %hn, align 4
  %idxprom90 = sext i32 %78 to i64
  %arrayidx91 = getelementptr inbounds [65 x i32], ptr %postlist89, i64 0, i64 %idxprom90
  %79 = load i32, ptr %arrayidx91, align 4
  store i32 %79, ptr %hx, align 4
  %arraydecay92 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 0
  %arraydecay93 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 0
  %80 = load i32, ptr %ln, align 4
  %call94 = call i32 @post_Y(ptr noundef %arraydecay92, ptr noundef %arraydecay93, i32 noundef %80)
  store i32 %call94, ptr %ly, align 4
  %arraydecay95 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 0
  %arraydecay96 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 0
  %81 = load i32, ptr %hn, align 4
  %call97 = call i32 @post_Y(ptr noundef %arraydecay95, ptr noundef %arraydecay96, i32 noundef %81)
  store i32 %call97, ptr %hy, align 4
  %82 = load i32, ptr %ly, align 4
  %cmp98 = icmp eq i32 %82, -1
  br i1 %cmp98, label %if.then102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then78
  %83 = load i32, ptr %hy, align 4
  %cmp100 = icmp eq i32 %83, -1
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %lor.lhs.false, %if.then78
  call void @exit(i32 noundef 1) #2
  unreachable

if.end103:                                        ; preds = %lor.lhs.false
  %84 = load i32, ptr %lx, align 4
  %85 = load i32, ptr %hx, align 4
  %86 = load i32, ptr %ly, align 4
  %87 = load i32, ptr %hy, align 4
  %88 = load ptr, ptr %logmask.addr, align 8
  %89 = load ptr, ptr %logmdct.addr, align 8
  %90 = load ptr, ptr %info, align 8
  %call104 = call i32 @inspect_error(i32 noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87, ptr noundef %88, ptr noundef %89, ptr noundef %90)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then106, label %if.else172

if.then106:                                       ; preds = %if.end103
  store i32 -200, ptr %ly0, align 4
  store i32 -200, ptr %ly1, align 4
  store i32 -200, ptr %hy0, align 4
  store i32 -200, ptr %hy1, align 4
  %arraydecay107 = getelementptr inbounds [64 x %struct.lsfit_acc], ptr %fits, i64 0, i64 0
  %91 = load i32, ptr %lsortpos, align 4
  %idx.ext = sext i32 %91 to i64
  %add.ptr108 = getelementptr inbounds %struct.lsfit_acc, ptr %arraydecay107, i64 %idx.ext
  %92 = load i32, ptr %sortpos, align 4
  %93 = load i32, ptr %lsortpos, align 4
  %sub109 = sub nsw i32 %92, %93
  call void @fit_line(ptr noundef %add.ptr108, i32 noundef %sub109, ptr noundef %ly0, ptr noundef %ly1)
  %arraydecay110 = getelementptr inbounds [64 x %struct.lsfit_acc], ptr %fits, i64 0, i64 0
  %94 = load i32, ptr %sortpos, align 4
  %idx.ext111 = sext i32 %94 to i64
  %add.ptr112 = getelementptr inbounds %struct.lsfit_acc, ptr %arraydecay110, i64 %idx.ext111
  %95 = load i32, ptr %hsortpos, align 4
  %96 = load i32, ptr %sortpos, align 4
  %sub113 = sub nsw i32 %95, %96
  call void @fit_line(ptr noundef %add.ptr112, i32 noundef %sub113, ptr noundef %hy0, ptr noundef %hy1)
  %97 = load i32, ptr %ly0, align 4
  %98 = load i32, ptr %ln, align 4
  %idxprom114 = sext i32 %98 to i64
  %arrayidx115 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 %idxprom114
  store i32 %97, ptr %arrayidx115, align 4
  %99 = load i32, ptr %ln, align 4
  %cmp116 = icmp eq i32 %99, 0
  br i1 %cmp116, label %if.then118, label %if.end121

if.then118:                                       ; preds = %if.then106
  %100 = load i32, ptr %ly0, align 4
  %101 = load i32, ptr %ln, align 4
  %idxprom119 = sext i32 %101 to i64
  %arrayidx120 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 %idxprom119
  store i32 %100, ptr %arrayidx120, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.then106
  %102 = load i32, ptr %ly1, align 4
  %103 = load i64, ptr %i, align 8
  %arrayidx122 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 %103
  store i32 %102, ptr %arrayidx122, align 4
  %104 = load i32, ptr %hy0, align 4
  %105 = load i64, ptr %i, align 8
  %arrayidx123 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 %105
  store i32 %104, ptr %arrayidx123, align 4
  %106 = load i32, ptr %hy1, align 4
  %107 = load i32, ptr %hn, align 4
  %idxprom124 = sext i32 %107 to i64
  %arrayidx125 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 %idxprom124
  store i32 %106, ptr %arrayidx125, align 4
  %108 = load i32, ptr %hn, align 4
  %cmp126 = icmp eq i32 %108, 1
  br i1 %cmp126, label %if.then128, label %if.end131

if.then128:                                       ; preds = %if.end121
  %109 = load i32, ptr %hy1, align 4
  %110 = load i32, ptr %hn, align 4
  %idxprom129 = sext i32 %110 to i64
  %arrayidx130 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 %idxprom129
  store i32 %109, ptr %arrayidx130, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.end121
  %111 = load i32, ptr %ly1, align 4
  %cmp132 = icmp sge i32 %111, 0
  br i1 %cmp132, label %if.then137, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %if.end131
  %112 = load i32, ptr %hy0, align 4
  %cmp135 = icmp sge i32 %112, 0
  br i1 %cmp135, label %if.then137, label %if.end171

if.then137:                                       ; preds = %lor.lhs.false134, %if.end131
  %113 = load i32, ptr %sortpos, align 4
  %sub138 = sub nsw i32 %113, 1
  %conv139 = sext i32 %sub138 to i64
  store i64 %conv139, ptr %j, align 8
  br label %for.cond140

for.cond140:                                      ; preds = %for.inc152, %if.then137
  %114 = load i64, ptr %j, align 8
  %cmp141 = icmp sge i64 %114, 0
  br i1 %cmp141, label %for.body143, label %for.end153

for.body143:                                      ; preds = %for.cond140
  %115 = load i64, ptr %j, align 8
  %arrayidx144 = getelementptr inbounds [65 x i32], ptr %hineighbor, i64 0, i64 %115
  %116 = load i32, ptr %arrayidx144, align 4
  %117 = load i32, ptr %hn, align 4
  %cmp145 = icmp eq i32 %116, %117
  br i1 %cmp145, label %if.then147, label %if.else150

if.then147:                                       ; preds = %for.body143
  %118 = load i64, ptr %i, align 8
  %conv148 = trunc i64 %118 to i32
  %119 = load i64, ptr %j, align 8
  %arrayidx149 = getelementptr inbounds [65 x i32], ptr %hineighbor, i64 0, i64 %119
  store i32 %conv148, ptr %arrayidx149, align 4
  br label %if.end151

if.else150:                                       ; preds = %for.body143
  br label %for.end153

if.end151:                                        ; preds = %if.then147
  br label %for.inc152

for.inc152:                                       ; preds = %if.end151
  %120 = load i64, ptr %j, align 8
  %dec = add nsw i64 %120, -1
  store i64 %dec, ptr %j, align 8
  br label %for.cond140, !llvm.loop !13

for.end153:                                       ; preds = %if.else150, %for.cond140
  %121 = load i32, ptr %sortpos, align 4
  %add154 = add nsw i32 %121, 1
  %conv155 = sext i32 %add154 to i64
  store i64 %conv155, ptr %j, align 8
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc168, %for.end153
  %122 = load i64, ptr %j, align 8
  %123 = load i64, ptr %posts, align 8
  %cmp157 = icmp slt i64 %122, %123
  br i1 %cmp157, label %for.body159, label %for.end170

for.body159:                                      ; preds = %for.cond156
  %124 = load i64, ptr %j, align 8
  %arrayidx160 = getelementptr inbounds [65 x i32], ptr %loneighbor, i64 0, i64 %124
  %125 = load i32, ptr %arrayidx160, align 4
  %126 = load i32, ptr %ln, align 4
  %cmp161 = icmp eq i32 %125, %126
  br i1 %cmp161, label %if.then163, label %if.else166

if.then163:                                       ; preds = %for.body159
  %127 = load i64, ptr %i, align 8
  %conv164 = trunc i64 %127 to i32
  %128 = load i64, ptr %j, align 8
  %arrayidx165 = getelementptr inbounds [65 x i32], ptr %loneighbor, i64 0, i64 %128
  store i32 %conv164, ptr %arrayidx165, align 4
  br label %if.end167

if.else166:                                       ; preds = %for.body159
  br label %for.end170

if.end167:                                        ; preds = %if.then163
  br label %for.inc168

for.inc168:                                       ; preds = %if.end167
  %129 = load i64, ptr %j, align 8
  %inc169 = add nsw i64 %129, 1
  store i64 %inc169, ptr %j, align 8
  br label %for.cond156, !llvm.loop !14

for.end170:                                       ; preds = %if.else166, %for.cond156
  br label %if.end171

if.end171:                                        ; preds = %for.end170, %lor.lhs.false134
  br label %if.end175

if.else172:                                       ; preds = %if.end103
  %130 = load i64, ptr %i, align 8
  %arrayidx173 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 %130
  store i32 -200, ptr %arrayidx173, align 4
  %131 = load i64, ptr %i, align 8
  %arrayidx174 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 %131
  store i32 -200, ptr %arrayidx174, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.else172, %if.end171
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %for.body69
  br label %for.inc177

for.inc177:                                       ; preds = %if.end176
  %132 = load i64, ptr %i, align 8
  %inc178 = add nsw i64 %132, 1
  store i64 %inc178, ptr %i, align 8
  br label %for.cond66, !llvm.loop !15

for.end179:                                       ; preds = %for.cond66
  %133 = load ptr, ptr %vb.addr, align 8
  %134 = load i64, ptr %posts, align 8
  %mul = mul i64 4, %134
  %call180 = call ptr @_vorbis_block_alloc(ptr noundef %133, i64 noundef %mul)
  store ptr %call180, ptr %output, align 8
  %arraydecay181 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 0
  %arraydecay182 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 0
  %call183 = call i32 @post_Y(ptr noundef %arraydecay181, ptr noundef %arraydecay182, i32 noundef 0)
  %135 = load ptr, ptr %output, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %135, i64 0
  store i32 %call183, ptr %arrayidx184, align 4
  %arraydecay185 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 0
  %arraydecay186 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 0
  %call187 = call i32 @post_Y(ptr noundef %arraydecay185, ptr noundef %arraydecay186, i32 noundef 1)
  %136 = load ptr, ptr %output, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %136, i64 1
  store i32 %call187, ptr %arrayidx188, align 4
  store i64 2, ptr %i, align 8
  br label %for.cond189

for.cond189:                                      ; preds = %for.inc229, %for.end179
  %137 = load i64, ptr %i, align 8
  %138 = load i64, ptr %posts, align 8
  %cmp190 = icmp slt i64 %137, %138
  br i1 %cmp190, label %for.body192, label %for.end231

for.body192:                                      ; preds = %for.cond189
  %139 = load ptr, ptr %look.addr, align 8
  %loneighbor194 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %139, i32 0, i32 4
  %140 = load i64, ptr %i, align 8
  %sub195 = sub nsw i64 %140, 2
  %arrayidx196 = getelementptr inbounds [63 x i32], ptr %loneighbor194, i64 0, i64 %sub195
  %141 = load i32, ptr %arrayidx196, align 4
  store i32 %141, ptr %ln193, align 4
  %142 = load ptr, ptr %look.addr, align 8
  %hineighbor198 = getelementptr inbounds nuw %struct.vorbis_look_floor1, ptr %142, i32 0, i32 3
  %143 = load i64, ptr %i, align 8
  %sub199 = sub nsw i64 %143, 2
  %arrayidx200 = getelementptr inbounds [63 x i32], ptr %hineighbor198, i64 0, i64 %sub199
  %144 = load i32, ptr %arrayidx200, align 4
  store i32 %144, ptr %hn197, align 4
  %145 = load ptr, ptr %info, align 8
  %postlist201 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %145, i32 0, i32 7
  %146 = load i32, ptr %ln193, align 4
  %idxprom202 = sext i32 %146 to i64
  %arrayidx203 = getelementptr inbounds [65 x i32], ptr %postlist201, i64 0, i64 %idxprom202
  %147 = load i32, ptr %arrayidx203, align 4
  store i32 %147, ptr %x0, align 4
  %148 = load ptr, ptr %info, align 8
  %postlist204 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %148, i32 0, i32 7
  %149 = load i32, ptr %hn197, align 4
  %idxprom205 = sext i32 %149 to i64
  %arrayidx206 = getelementptr inbounds [65 x i32], ptr %postlist204, i64 0, i64 %idxprom205
  %150 = load i32, ptr %arrayidx206, align 4
  store i32 %150, ptr %x1, align 4
  %151 = load ptr, ptr %output, align 8
  %152 = load i32, ptr %ln193, align 4
  %idxprom208 = sext i32 %152 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %151, i64 %idxprom208
  %153 = load i32, ptr %arrayidx209, align 4
  store i32 %153, ptr %y0207, align 4
  %154 = load ptr, ptr %output, align 8
  %155 = load i32, ptr %hn197, align 4
  %idxprom211 = sext i32 %155 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %154, i64 %idxprom211
  %156 = load i32, ptr %arrayidx212, align 4
  store i32 %156, ptr %y1210, align 4
  %157 = load i32, ptr %x0, align 4
  %158 = load i32, ptr %x1, align 4
  %159 = load i32, ptr %y0207, align 4
  %160 = load i32, ptr %y1210, align 4
  %161 = load ptr, ptr %info, align 8
  %postlist213 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %161, i32 0, i32 7
  %162 = load i64, ptr %i, align 8
  %arrayidx214 = getelementptr inbounds [65 x i32], ptr %postlist213, i64 0, i64 %162
  %163 = load i32, ptr %arrayidx214, align 4
  %call215 = call i32 @render_point(i32 noundef %157, i32 noundef %158, i32 noundef %159, i32 noundef %160, i32 noundef %163)
  store i32 %call215, ptr %predicted, align 4
  %arraydecay216 = getelementptr inbounds [65 x i32], ptr %fit_valueA, i64 0, i64 0
  %arraydecay217 = getelementptr inbounds [65 x i32], ptr %fit_valueB, i64 0, i64 0
  %164 = load i64, ptr %i, align 8
  %conv218 = trunc i64 %164 to i32
  %call219 = call i32 @post_Y(ptr noundef %arraydecay216, ptr noundef %arraydecay217, i32 noundef %conv218)
  store i32 %call219, ptr %vx, align 4
  %165 = load i32, ptr %vx, align 4
  %cmp220 = icmp sge i32 %165, 0
  br i1 %cmp220, label %land.lhs.true, label %if.else226

land.lhs.true:                                    ; preds = %for.body192
  %166 = load i32, ptr %predicted, align 4
  %167 = load i32, ptr %vx, align 4
  %cmp222 = icmp ne i32 %166, %167
  br i1 %cmp222, label %if.then224, label %if.else226

if.then224:                                       ; preds = %land.lhs.true
  %168 = load i32, ptr %vx, align 4
  %169 = load ptr, ptr %output, align 8
  %170 = load i64, ptr %i, align 8
  %arrayidx225 = getelementptr inbounds i32, ptr %169, i64 %170
  store i32 %168, ptr %arrayidx225, align 4
  br label %if.end228

if.else226:                                       ; preds = %land.lhs.true, %for.body192
  %171 = load i32, ptr %predicted, align 4
  %or = or i32 %171, 32768
  %172 = load ptr, ptr %output, align 8
  %173 = load i64, ptr %i, align 8
  %arrayidx227 = getelementptr inbounds i32, ptr %172, i64 %173
  store i32 %or, ptr %arrayidx227, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.else226, %if.then224
  br label %for.inc229

for.inc229:                                       ; preds = %if.end228
  %174 = load i64, ptr %i, align 8
  %inc230 = add nsw i64 %174, 1
  store i64 %inc230, ptr %i, align 8
  br label %for.cond189, !llvm.loop !16

for.end231:                                       ; preds = %for.cond189
  br label %if.end232

if.end232:                                        ; preds = %for.end231, %if.end
  %175 = load ptr, ptr %output, align 8
  ret ptr %175
}

; Function Attrs: nounwind uwtable
declare hidden i32 @accumulate_fit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @fit_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @post_Y(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @inspect_error(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @render_point(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
