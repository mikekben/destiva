; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemJournal = type { ptr, i32, i32, i32, ptr, %struct.FilePoint, %struct.FilePoint, i32, ptr, ptr }
%struct.FilePoint = type { i64, ptr }
%struct.FileChunk = type { ptr, [8 x i8] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @memjrnlRead(ptr noundef %pJfd, ptr noundef %zBuf, i32 noundef %iAmt, i64 noundef %iOfst) #1 {
entry:
  %retval = alloca i32, align 4
  %pJfd.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %iAmt.addr = alloca i32, align 4
  %iOfst.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %nRead = alloca i32, align 4
  %iChunkOffset = alloca i32, align 4
  %pChunk = alloca ptr, align 8
  %iOff = alloca i64, align 8
  %iSpace = alloca i32, align 4
  %nCopy = alloca i32, align 4
  store ptr %pJfd, ptr %pJfd.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 %iAmt, ptr %iAmt.addr, align 4
  store i64 %iOfst, ptr %iOfst.addr, align 8
  %0 = load ptr, ptr %pJfd.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %zBuf.addr, align 8
  store ptr %1, ptr %zOut, align 8
  %2 = load i32, ptr %iAmt.addr, align 4
  store i32 %2, ptr %nRead, align 4
  %3 = load i32, ptr %iAmt.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, ptr %iOfst.addr, align 8
  %add = add nsw i64 %conv, %4
  %5 = load ptr, ptr %p, align 8
  %endpoint = getelementptr inbounds nuw %struct.MemJournal, ptr %5, i32 0, i32 5
  %iOffset = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint, i32 0, i32 0
  %6 = load i64, ptr %iOffset, align 8
  %cmp = icmp sgt i64 %add, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 522, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %p, align 8
  %readpoint = getelementptr inbounds nuw %struct.MemJournal, ptr %7, i32 0, i32 6
  %iOffset2 = getelementptr inbounds nuw %struct.FilePoint, ptr %readpoint, i32 0, i32 0
  %8 = load i64, ptr %iOffset2, align 8
  %9 = load i64, ptr %iOfst.addr, align 8
  %cmp3 = icmp ne i64 %8, %9
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i64, ptr %iOfst.addr, align 8
  %cmp5 = icmp eq i64 %10, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  store i64 0, ptr %iOff, align 8
  %11 = load ptr, ptr %p, align 8
  %pFirst = getelementptr inbounds nuw %struct.MemJournal, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pFirst, align 8
  store ptr %12, ptr %pChunk, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then7
  %13 = load ptr, ptr %pChunk, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load i64, ptr %iOff, align 8
  %15 = load ptr, ptr %p, align 8
  %nChunkSize = getelementptr inbounds nuw %struct.MemJournal, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nChunkSize, align 8
  %conv8 = sext i32 %16 to i64
  %add9 = add nsw i64 %14, %conv8
  %17 = load i64, ptr %iOfst.addr, align 8
  %cmp10 = icmp sle i64 %add9, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %cmp10, %land.rhs ]
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %19 = load ptr, ptr %p, align 8
  %nChunkSize12 = getelementptr inbounds nuw %struct.MemJournal, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nChunkSize12, align 8
  %conv13 = sext i32 %20 to i64
  %21 = load i64, ptr %iOff, align 8
  %add14 = add nsw i64 %21, %conv13
  store i64 %add14, ptr %iOff, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load ptr, ptr %pChunk, align 8
  %pNext = getelementptr inbounds nuw %struct.FileChunk, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %pNext, align 8
  store ptr %23, ptr %pChunk, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  br label %if.end17

if.else:                                          ; preds = %lor.lhs.false
  %24 = load ptr, ptr %p, align 8
  %readpoint15 = getelementptr inbounds nuw %struct.MemJournal, ptr %24, i32 0, i32 6
  %pChunk16 = getelementptr inbounds nuw %struct.FilePoint, ptr %readpoint15, i32 0, i32 1
  %25 = load ptr, ptr %pChunk16, align 8
  store ptr %25, ptr %pChunk, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %for.end
  %26 = load i64, ptr %iOfst.addr, align 8
  %27 = load ptr, ptr %p, align 8
  %nChunkSize18 = getelementptr inbounds nuw %struct.MemJournal, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %nChunkSize18, align 8
  %conv19 = sext i32 %28 to i64
  %rem = srem i64 %26, %conv19
  %conv20 = trunc i64 %rem to i32
  store i32 %conv20, ptr %iChunkOffset, align 4
  br label %do.body

do.body:                                          ; preds = %land.end40, %if.end17
  %29 = load ptr, ptr %p, align 8
  %nChunkSize21 = getelementptr inbounds nuw %struct.MemJournal, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %nChunkSize21, align 8
  %31 = load i32, ptr %iChunkOffset, align 4
  %sub = sub nsw i32 %30, %31
  store i32 %sub, ptr %iSpace, align 4
  %32 = load i32, ptr %nRead, align 4
  %33 = load ptr, ptr %p, align 8
  %nChunkSize22 = getelementptr inbounds nuw %struct.MemJournal, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %nChunkSize22, align 8
  %35 = load i32, ptr %iChunkOffset, align 4
  %sub23 = sub nsw i32 %34, %35
  %cmp24 = icmp slt i32 %32, %sub23
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %36 = load i32, ptr %nRead, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %37 = load ptr, ptr %p, align 8
  %nChunkSize26 = getelementptr inbounds nuw %struct.MemJournal, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nChunkSize26, align 8
  %39 = load i32, ptr %iChunkOffset, align 4
  %sub27 = sub nsw i32 %38, %39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ %sub27, %cond.false ]
  store i32 %cond, ptr %nCopy, align 4
  %40 = load ptr, ptr %zOut, align 8
  %41 = load ptr, ptr %pChunk, align 8
  %zChunk = getelementptr inbounds nuw %struct.FileChunk, ptr %41, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i8], ptr %zChunk, i64 0, i64 0
  %42 = load i32, ptr %iChunkOffset, align 4
  %idx.ext = sext i32 %42 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext
  %43 = load i32, ptr %nCopy, align 4
  %conv28 = sext i32 %43 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr align 1 %add.ptr, i64 %conv28, i1 false)
  %44 = load i32, ptr %nCopy, align 4
  %45 = load ptr, ptr %zOut, align 8
  %idx.ext29 = sext i32 %44 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %45, i64 %idx.ext29
  store ptr %add.ptr30, ptr %zOut, align 8
  %46 = load i32, ptr %iSpace, align 4
  %47 = load i32, ptr %nRead, align 4
  %sub31 = sub nsw i32 %47, %46
  store i32 %sub31, ptr %nRead, align 4
  store i32 0, ptr %iChunkOffset, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %48 = load i32, ptr %nRead, align 4
  %cmp32 = icmp sge i32 %48, 0
  br i1 %cmp32, label %land.lhs.true, label %land.end40

land.lhs.true:                                    ; preds = %do.cond
  %49 = load ptr, ptr %pChunk, align 8
  %pNext34 = getelementptr inbounds nuw %struct.FileChunk, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %pNext34, align 8
  store ptr %50, ptr %pChunk, align 8
  %cmp35 = icmp ne ptr %50, null
  br i1 %cmp35, label %land.rhs37, label %land.end40

land.rhs37:                                       ; preds = %land.lhs.true
  %51 = load i32, ptr %nRead, align 4
  %cmp38 = icmp sgt i32 %51, 0
  br label %land.end40

land.end40:                                       ; preds = %land.rhs37, %land.lhs.true, %do.cond
  %52 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp38, %land.rhs37 ]
  br i1 %52, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %land.end40
  %53 = load ptr, ptr %pChunk, align 8
  %tobool41 = icmp ne ptr %53, null
  br i1 %tobool41, label %cond.true42, label %cond.false45

cond.true42:                                      ; preds = %do.end
  %54 = load i64, ptr %iOfst.addr, align 8
  %55 = load i32, ptr %iAmt.addr, align 4
  %conv43 = sext i32 %55 to i64
  %add44 = add nsw i64 %54, %conv43
  br label %cond.end46

cond.false45:                                     ; preds = %do.end
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true42
  %cond47 = phi i64 [ %add44, %cond.true42 ], [ 0, %cond.false45 ]
  %56 = load ptr, ptr %p, align 8
  %readpoint48 = getelementptr inbounds nuw %struct.MemJournal, ptr %56, i32 0, i32 6
  %iOffset49 = getelementptr inbounds nuw %struct.FilePoint, ptr %readpoint48, i32 0, i32 0
  store i64 %cond47, ptr %iOffset49, align 8
  %57 = load ptr, ptr %pChunk, align 8
  %58 = load ptr, ptr %p, align 8
  %readpoint50 = getelementptr inbounds nuw %struct.MemJournal, ptr %58, i32 0, i32 6
  %pChunk51 = getelementptr inbounds nuw %struct.FilePoint, ptr %readpoint50, i32 0, i32 1
  store ptr %57, ptr %pChunk51, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end46, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

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
