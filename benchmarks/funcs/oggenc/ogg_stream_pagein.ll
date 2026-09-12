; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_eos(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_serialno(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_stream_pagein(ptr noundef %os, ptr noundef %og) #1 {
entry:
  %retval = alloca i32, align 4
  %os.addr = alloca ptr, align 8
  %og.addr = alloca ptr, align 8
  %header = alloca ptr, align 8
  %body = alloca ptr, align 8
  %bodysize = alloca i64, align 8
  %segptr = alloca i32, align 4
  %version = alloca i32, align 4
  %continued = alloca i32, align 4
  %bos = alloca i32, align 4
  %eos = alloca i32, align 4
  %granulepos = alloca i64, align 8
  %serialno = alloca i32, align 4
  %pageno = alloca i64, align 8
  %segments = alloca i32, align 4
  %lr = alloca i64, align 8
  %br = alloca i64, align 8
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %saved = alloca i32, align 4
  %val107 = alloca i32, align 4
  store ptr %os, ptr %os.addr, align 8
  store ptr %og, ptr %og.addr, align 8
  %0 = load ptr, ptr %og.addr, align 8
  %header1 = getelementptr inbounds nuw %struct.ogg_page, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %header1, align 8
  store ptr %1, ptr %header, align 8
  %2 = load ptr, ptr %og.addr, align 8
  %body2 = getelementptr inbounds nuw %struct.ogg_page, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %body2, align 8
  store ptr %3, ptr %body, align 8
  %4 = load ptr, ptr %og.addr, align 8
  %body_len = getelementptr inbounds nuw %struct.ogg_page, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %body_len, align 8
  store i64 %5, ptr %bodysize, align 8
  store i32 0, ptr %segptr, align 4
  %6 = load ptr, ptr %og.addr, align 8
  %call = call i32 @ogg_page_version(ptr noundef %6)
  store i32 %call, ptr %version, align 4
  %7 = load ptr, ptr %og.addr, align 8
  %call3 = call i32 @ogg_page_continued(ptr noundef %7)
  store i32 %call3, ptr %continued, align 4
  %8 = load ptr, ptr %og.addr, align 8
  %call4 = call i32 @ogg_page_bos(ptr noundef %8)
  store i32 %call4, ptr %bos, align 4
  %9 = load ptr, ptr %og.addr, align 8
  %call5 = call i32 @ogg_page_eos(ptr noundef %9)
  store i32 %call5, ptr %eos, align 4
  %10 = load ptr, ptr %og.addr, align 8
  %call6 = call i64 @ogg_page_granulepos(ptr noundef %10)
  store i64 %call6, ptr %granulepos, align 8
  %11 = load ptr, ptr %og.addr, align 8
  %call7 = call i32 @ogg_page_serialno(ptr noundef %11)
  store i32 %call7, ptr %serialno, align 4
  %12 = load ptr, ptr %og.addr, align 8
  %call8 = call i64 @ogg_page_pageno(ptr noundef %12)
  store i64 %call8, ptr %pageno, align 8
  %13 = load ptr, ptr %header, align 8
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 26
  %14 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, ptr %segments, align 4
  %15 = load ptr, ptr %os.addr, align 8
  %lacing_returned = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %15, i32 0, i32 9
  %16 = load i64, ptr %lacing_returned, align 8
  store i64 %16, ptr %lr, align 8
  %17 = load ptr, ptr %os.addr, align 8
  %body_returned = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %17, i32 0, i32 3
  %18 = load i64, ptr %body_returned, align 8
  store i64 %18, ptr %br, align 8
  %19 = load i64, ptr %br, align 8
  %tobool = icmp ne i64 %19, 0
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %20 = load i64, ptr %br, align 8
  %21 = load ptr, ptr %os.addr, align 8
  %body_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %21, i32 0, i32 2
  %22 = load i64, ptr %body_fill, align 8
  %sub = sub nsw i64 %22, %20
  store i64 %sub, ptr %body_fill, align 8
  %23 = load ptr, ptr %os.addr, align 8
  %body_fill9 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %23, i32 0, i32 2
  %24 = load i64, ptr %body_fill9, align 8
  %tobool10 = icmp ne i64 %24, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %25 = load ptr, ptr %os.addr, align 8
  %body_data = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %body_data, align 8
  %27 = load ptr, ptr %os.addr, align 8
  %body_data12 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %body_data12, align 8
  %29 = load i64, ptr %br, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 %29
  %30 = load ptr, ptr %os.addr, align 8
  %body_fill13 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %30, i32 0, i32 2
  %31 = load i64, ptr %body_fill13, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %26, ptr align 1 %add.ptr, i64 %31, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  %32 = load ptr, ptr %os.addr, align 8
  %body_returned14 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %32, i32 0, i32 3
  store i64 0, ptr %body_returned14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry
  %33 = load i64, ptr %lr, align 8
  %tobool16 = icmp ne i64 %33, 0
  br i1 %tobool16, label %if.then17, label %if.end35

if.then17:                                        ; preds = %if.end15
  %34 = load ptr, ptr %os.addr, align 8
  %lacing_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %34, i32 0, i32 7
  %35 = load i64, ptr %lacing_fill, align 8
  %36 = load i64, ptr %lr, align 8
  %sub18 = sub nsw i64 %35, %36
  %tobool19 = icmp ne i64 %sub18, 0
  br i1 %tobool19, label %if.then20, label %if.end30

if.then20:                                        ; preds = %if.then17
  %37 = load ptr, ptr %os.addr, align 8
  %lacing_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %lacing_vals, align 8
  %39 = load ptr, ptr %os.addr, align 8
  %lacing_vals21 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %lacing_vals21, align 8
  %41 = load i64, ptr %lr, align 8
  %add.ptr22 = getelementptr inbounds i32, ptr %40, i64 %41
  %42 = load ptr, ptr %os.addr, align 8
  %lacing_fill23 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %42, i32 0, i32 7
  %43 = load i64, ptr %lacing_fill23, align 8
  %44 = load i64, ptr %lr, align 8
  %sub24 = sub nsw i64 %43, %44
  %mul = mul i64 %sub24, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %38, ptr align 4 %add.ptr22, i64 %mul, i1 false)
  %45 = load ptr, ptr %os.addr, align 8
  %granule_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %granule_vals, align 8
  %47 = load ptr, ptr %os.addr, align 8
  %granule_vals25 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %granule_vals25, align 8
  %49 = load i64, ptr %lr, align 8
  %add.ptr26 = getelementptr inbounds i64, ptr %48, i64 %49
  %50 = load ptr, ptr %os.addr, align 8
  %lacing_fill27 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %50, i32 0, i32 7
  %51 = load i64, ptr %lacing_fill27, align 8
  %52 = load i64, ptr %lr, align 8
  %sub28 = sub nsw i64 %51, %52
  %mul29 = mul i64 %sub28, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %46, ptr align 8 %add.ptr26, i64 %mul29, i1 false)
  br label %if.end30

if.end30:                                         ; preds = %if.then20, %if.then17
  %53 = load i64, ptr %lr, align 8
  %54 = load ptr, ptr %os.addr, align 8
  %lacing_fill31 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %54, i32 0, i32 7
  %55 = load i64, ptr %lacing_fill31, align 8
  %sub32 = sub nsw i64 %55, %53
  store i64 %sub32, ptr %lacing_fill31, align 8
  %56 = load i64, ptr %lr, align 8
  %57 = load ptr, ptr %os.addr, align 8
  %lacing_packet = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %57, i32 0, i32 8
  %58 = load i64, ptr %lacing_packet, align 8
  %sub33 = sub nsw i64 %58, %56
  store i64 %sub33, ptr %lacing_packet, align 8
  %59 = load ptr, ptr %os.addr, align 8
  %lacing_returned34 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %59, i32 0, i32 9
  store i64 0, ptr %lacing_returned34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end30, %if.end15
  %60 = load i32, ptr %serialno, align 4
  %conv36 = sext i32 %60 to i64
  %61 = load ptr, ptr %os.addr, align 8
  %serialno37 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %61, i32 0, i32 14
  %62 = load i64, ptr %serialno37, align 8
  %cmp = icmp ne i64 %conv36, %62
  br i1 %cmp, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  store i32 -1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end35
  %63 = load i32, ptr %version, align 4
  %cmp41 = icmp sgt i32 %63, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 -1, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end40
  %64 = load ptr, ptr %os.addr, align 8
  %65 = load i32, ptr %segments, align 4
  %add = add nsw i32 %65, 1
  call void @_os_lacing_expand(ptr noundef %64, i32 noundef %add)
  %66 = load i64, ptr %pageno, align 8
  %67 = load ptr, ptr %os.addr, align 8
  %pageno45 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %67, i32 0, i32 15
  %68 = load i64, ptr %pageno45, align 8
  %cmp46 = icmp ne i64 %66, %68
  br i1 %cmp46, label %if.then48, label %if.end95

if.then48:                                        ; preds = %if.end44
  %69 = load ptr, ptr %os.addr, align 8
  %lacing_packet49 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %69, i32 0, i32 8
  %70 = load i64, ptr %lacing_packet49, align 8
  %conv50 = trunc i64 %70 to i32
  store i32 %conv50, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then48
  %71 = load i32, ptr %i, align 4
  %conv51 = sext i32 %71 to i64
  %72 = load ptr, ptr %os.addr, align 8
  %lacing_fill52 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %72, i32 0, i32 7
  %73 = load i64, ptr %lacing_fill52, align 8
  %cmp53 = icmp slt i64 %conv51, %73
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load ptr, ptr %os.addr, align 8
  %lacing_vals55 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %lacing_vals55, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom = sext i32 %76 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %75, i64 %idxprom
  %77 = load i32, ptr %arrayidx56, align 4
  %and = and i32 %77, 255
  %conv57 = sext i32 %and to i64
  %78 = load ptr, ptr %os.addr, align 8
  %body_fill58 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %78, i32 0, i32 2
  %79 = load i64, ptr %body_fill58, align 8
  %sub59 = sub nsw i64 %79, %conv57
  store i64 %sub59, ptr %body_fill58, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, ptr %i, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %81 = load ptr, ptr %os.addr, align 8
  %lacing_packet60 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %81, i32 0, i32 8
  %82 = load i64, ptr %lacing_packet60, align 8
  %83 = load ptr, ptr %os.addr, align 8
  %lacing_fill61 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %83, i32 0, i32 7
  store i64 %82, ptr %lacing_fill61, align 8
  %84 = load ptr, ptr %os.addr, align 8
  %pageno62 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %84, i32 0, i32 15
  %85 = load i64, ptr %pageno62, align 8
  %cmp63 = icmp ne i64 %85, -1
  br i1 %cmp63, label %if.then65, label %if.end72

if.then65:                                        ; preds = %for.end
  %86 = load ptr, ptr %os.addr, align 8
  %lacing_vals66 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %86, i32 0, i32 4
  %87 = load ptr, ptr %lacing_vals66, align 8
  %88 = load ptr, ptr %os.addr, align 8
  %lacing_fill67 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %88, i32 0, i32 7
  %89 = load i64, ptr %lacing_fill67, align 8
  %inc68 = add nsw i64 %89, 1
  store i64 %inc68, ptr %lacing_fill67, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %87, i64 %89
  store i32 1024, ptr %arrayidx69, align 4
  %90 = load ptr, ptr %os.addr, align 8
  %lacing_packet70 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %90, i32 0, i32 8
  %91 = load i64, ptr %lacing_packet70, align 8
  %inc71 = add nsw i64 %91, 1
  store i64 %inc71, ptr %lacing_packet70, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %for.end
  %92 = load i32, ptr %continued, align 4
  %tobool73 = icmp ne i32 %92, 0
  br i1 %tobool73, label %if.then74, label %if.end94

if.then74:                                        ; preds = %if.end72
  store i32 0, ptr %bos, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc91, %if.then74
  %93 = load i32, ptr %segptr, align 4
  %94 = load i32, ptr %segments, align 4
  %cmp76 = icmp slt i32 %93, %94
  br i1 %cmp76, label %for.body78, label %for.end93

for.body78:                                       ; preds = %for.cond75
  %95 = load ptr, ptr %header, align 8
  %96 = load i32, ptr %segptr, align 4
  %add79 = add nsw i32 27, %96
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %95, i64 %idxprom80
  %97 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %97 to i32
  store i32 %conv82, ptr %val, align 4
  %98 = load i32, ptr %val, align 4
  %99 = load ptr, ptr %body, align 8
  %idx.ext = sext i32 %98 to i64
  %add.ptr83 = getelementptr inbounds i8, ptr %99, i64 %idx.ext
  store ptr %add.ptr83, ptr %body, align 8
  %100 = load i32, ptr %val, align 4
  %conv84 = sext i32 %100 to i64
  %101 = load i64, ptr %bodysize, align 8
  %sub85 = sub nsw i64 %101, %conv84
  store i64 %sub85, ptr %bodysize, align 8
  %102 = load i32, ptr %val, align 4
  %cmp86 = icmp slt i32 %102, 255
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %for.body78
  %103 = load i32, ptr %segptr, align 4
  %inc89 = add nsw i32 %103, 1
  store i32 %inc89, ptr %segptr, align 4
  br label %for.end93

if.end90:                                         ; preds = %for.body78
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %104 = load i32, ptr %segptr, align 4
  %inc92 = add nsw i32 %104, 1
  store i32 %inc92, ptr %segptr, align 4
  br label %for.cond75, !llvm.loop !8

for.end93:                                        ; preds = %if.then88, %for.cond75
  br label %if.end94

if.end94:                                         ; preds = %for.end93, %if.end72
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end44
  %105 = load i64, ptr %bodysize, align 8
  %tobool96 = icmp ne i64 %105, 0
  br i1 %tobool96, label %if.then97, label %if.end104

if.then97:                                        ; preds = %if.end95
  %106 = load ptr, ptr %os.addr, align 8
  %107 = load i64, ptr %bodysize, align 8
  %conv98 = trunc i64 %107 to i32
  call void @_os_body_expand(ptr noundef %106, i32 noundef %conv98)
  %108 = load ptr, ptr %os.addr, align 8
  %body_data99 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %body_data99, align 8
  %110 = load ptr, ptr %os.addr, align 8
  %body_fill100 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %110, i32 0, i32 2
  %111 = load i64, ptr %body_fill100, align 8
  %add.ptr101 = getelementptr inbounds i8, ptr %109, i64 %111
  %112 = load ptr, ptr %body, align 8
  %113 = load i64, ptr %bodysize, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr101, ptr align 1 %112, i64 %113, i1 false)
  %114 = load i64, ptr %bodysize, align 8
  %115 = load ptr, ptr %os.addr, align 8
  %body_fill102 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %115, i32 0, i32 2
  %116 = load i64, ptr %body_fill102, align 8
  %add103 = add nsw i64 %116, %114
  store i64 %add103, ptr %body_fill102, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then97, %if.end95
  store i32 -1, ptr %saved, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end138, %if.end104
  %117 = load i32, ptr %segptr, align 4
  %118 = load i32, ptr %segments, align 4
  %cmp105 = icmp slt i32 %117, %118
  br i1 %cmp105, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %119 = load ptr, ptr %header, align 8
  %120 = load i32, ptr %segptr, align 4
  %add108 = add nsw i32 27, %120
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds i8, ptr %119, i64 %idxprom109
  %121 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %121 to i32
  store i32 %conv111, ptr %val107, align 4
  %122 = load i32, ptr %val107, align 4
  %123 = load ptr, ptr %os.addr, align 8
  %lacing_vals112 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %123, i32 0, i32 4
  %124 = load ptr, ptr %lacing_vals112, align 8
  %125 = load ptr, ptr %os.addr, align 8
  %lacing_fill113 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %125, i32 0, i32 7
  %126 = load i64, ptr %lacing_fill113, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %124, i64 %126
  store i32 %122, ptr %arrayidx114, align 4
  %127 = load ptr, ptr %os.addr, align 8
  %granule_vals115 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %127, i32 0, i32 5
  %128 = load ptr, ptr %granule_vals115, align 8
  %129 = load ptr, ptr %os.addr, align 8
  %lacing_fill116 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %129, i32 0, i32 7
  %130 = load i64, ptr %lacing_fill116, align 8
  %arrayidx117 = getelementptr inbounds i64, ptr %128, i64 %130
  store i64 -1, ptr %arrayidx117, align 8
  %131 = load i32, ptr %bos, align 4
  %tobool118 = icmp ne i32 %131, 0
  br i1 %tobool118, label %if.then119, label %if.end123

if.then119:                                       ; preds = %while.body
  %132 = load ptr, ptr %os.addr, align 8
  %lacing_vals120 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %132, i32 0, i32 4
  %133 = load ptr, ptr %lacing_vals120, align 8
  %134 = load ptr, ptr %os.addr, align 8
  %lacing_fill121 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %134, i32 0, i32 7
  %135 = load i64, ptr %lacing_fill121, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %133, i64 %135
  %136 = load i32, ptr %arrayidx122, align 4
  %or = or i32 %136, 256
  store i32 %or, ptr %arrayidx122, align 4
  store i32 0, ptr %bos, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %while.body
  %137 = load i32, ptr %val107, align 4
  %cmp124 = icmp slt i32 %137, 255
  br i1 %cmp124, label %if.then126, label %if.end129

if.then126:                                       ; preds = %if.end123
  %138 = load ptr, ptr %os.addr, align 8
  %lacing_fill127 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %138, i32 0, i32 7
  %139 = load i64, ptr %lacing_fill127, align 8
  %conv128 = trunc i64 %139 to i32
  store i32 %conv128, ptr %saved, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end123
  %140 = load ptr, ptr %os.addr, align 8
  %lacing_fill130 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %140, i32 0, i32 7
  %141 = load i64, ptr %lacing_fill130, align 8
  %inc131 = add nsw i64 %141, 1
  store i64 %inc131, ptr %lacing_fill130, align 8
  %142 = load i32, ptr %segptr, align 4
  %inc132 = add nsw i32 %142, 1
  store i32 %inc132, ptr %segptr, align 4
  %143 = load i32, ptr %val107, align 4
  %cmp133 = icmp slt i32 %143, 255
  br i1 %cmp133, label %if.then135, label %if.end138

if.then135:                                       ; preds = %if.end129
  %144 = load ptr, ptr %os.addr, align 8
  %lacing_fill136 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %144, i32 0, i32 7
  %145 = load i64, ptr %lacing_fill136, align 8
  %146 = load ptr, ptr %os.addr, align 8
  %lacing_packet137 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %146, i32 0, i32 8
  store i64 %145, ptr %lacing_packet137, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end129
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %147 = load i32, ptr %saved, align 4
  %cmp139 = icmp ne i32 %147, -1
  br i1 %cmp139, label %if.then141, label %if.end145

if.then141:                                       ; preds = %while.end
  %148 = load i64, ptr %granulepos, align 8
  %149 = load ptr, ptr %os.addr, align 8
  %granule_vals142 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %149, i32 0, i32 5
  %150 = load ptr, ptr %granule_vals142, align 8
  %151 = load i32, ptr %saved, align 4
  %idxprom143 = sext i32 %151 to i64
  %arrayidx144 = getelementptr inbounds i64, ptr %150, i64 %idxprom143
  store i64 %148, ptr %arrayidx144, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %while.end
  %152 = load i32, ptr %eos, align 4
  %tobool146 = icmp ne i32 %152, 0
  br i1 %tobool146, label %if.then147, label %if.end158

if.then147:                                       ; preds = %if.end145
  %153 = load ptr, ptr %os.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %153, i32 0, i32 12
  store i32 1, ptr %e_o_s, align 8
  %154 = load ptr, ptr %os.addr, align 8
  %lacing_fill148 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %154, i32 0, i32 7
  %155 = load i64, ptr %lacing_fill148, align 8
  %cmp149 = icmp sgt i64 %155, 0
  br i1 %cmp149, label %if.then151, label %if.end157

if.then151:                                       ; preds = %if.then147
  %156 = load ptr, ptr %os.addr, align 8
  %lacing_vals152 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %156, i32 0, i32 4
  %157 = load ptr, ptr %lacing_vals152, align 8
  %158 = load ptr, ptr %os.addr, align 8
  %lacing_fill153 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %158, i32 0, i32 7
  %159 = load i64, ptr %lacing_fill153, align 8
  %sub154 = sub nsw i64 %159, 1
  %arrayidx155 = getelementptr inbounds i32, ptr %157, i64 %sub154
  %160 = load i32, ptr %arrayidx155, align 4
  %or156 = or i32 %160, 512
  store i32 %or156, ptr %arrayidx155, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then151, %if.then147
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.end145
  %161 = load i64, ptr %pageno, align 8
  %add159 = add nsw i64 %161, 1
  %162 = load ptr, ptr %os.addr, align 8
  %pageno160 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %162, i32 0, i32 15
  store i64 %add159, ptr %pageno160, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end158, %if.then43, %if.then39
  %163 = load i32, ptr %retval, align 4
  ret i32 %163
}

; Function Attrs: nounwind uwtable
declare dso_local i64 @ogg_page_granulepos(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_continued(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_version(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_bos(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @ogg_page_pageno(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @_os_body_expand(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @_os_lacing_expand(ptr noundef, i32 noundef) #1

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
