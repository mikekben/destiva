; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemJournal = type { ptr, i32, i32, i32, ptr, %struct.FilePoint, %struct.FilePoint, i32, ptr, ptr }
%struct.FilePoint = type { i64, ptr }
%struct.FileChunk = type { ptr, [8 x i8] }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc(i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @memjrnlWrite(ptr noundef %pJfd, ptr noundef %zBuf, i32 noundef %iAmt, i64 noundef %iOfst) #0 {
entry:
  %retval = alloca i32, align 4
  %pJfd.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %iAmt.addr = alloca i32, align 4
  %iOfst.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %nWrite = alloca i32, align 4
  %zWrite = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pChunk = alloca ptr, align 8
  %iChunkOffset = alloca i32, align 4
  %iSpace = alloca i32, align 4
  %pNew = alloca ptr, align 8
  store ptr %pJfd, ptr %pJfd.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 %iAmt, ptr %iAmt.addr, align 4
  store i64 %iOfst, ptr %iOfst.addr, align 8
  %0 = load ptr, ptr %pJfd.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load i32, ptr %iAmt.addr, align 4
  store i32 %1, ptr %nWrite, align 4
  %2 = load ptr, ptr %zBuf.addr, align 8
  store ptr %2, ptr %zWrite, align 8
  %3 = load ptr, ptr %p, align 8
  %nSpill = getelementptr inbounds nuw %struct.MemJournal, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nSpill, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %iAmt.addr, align 4
  %conv = sext i32 %5 to i64
  %6 = load i64, ptr %iOfst.addr, align 8
  %add = add nsw i64 %conv, %6
  %7 = load ptr, ptr %p, align 8
  %nSpill1 = getelementptr inbounds nuw %struct.MemJournal, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %nSpill1, align 4
  %conv2 = sext i32 %8 to i64
  %cmp3 = icmp sgt i64 %add, %conv2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %p, align 8
  %call = call i32 @memjrnlCreateFile(ptr noundef %9)
  store i32 %call, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %11 = load ptr, ptr %pJfd.addr, align 8
  %12 = load ptr, ptr %zBuf.addr, align 8
  %13 = load i32, ptr %iAmt.addr, align 4
  %14 = load i64, ptr %iOfst.addr, align 8
  %call8 = call i32 @sqlite3OsWrite(ptr noundef %11, ptr noundef %12, i32 noundef %13, i64 noundef %14)
  store i32 %call8, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %15 = load i32, ptr %rc, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.else
  %16 = load i32, ptr %nWrite, align 4
  %cmp9 = icmp sgt i32 %16, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %p, align 8
  %endpoint = getelementptr inbounds nuw %struct.MemJournal, ptr %17, i32 0, i32 5
  %pChunk11 = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint, i32 0, i32 1
  %18 = load ptr, ptr %pChunk11, align 8
  store ptr %18, ptr %pChunk, align 8
  %19 = load ptr, ptr %p, align 8
  %endpoint12 = getelementptr inbounds nuw %struct.MemJournal, ptr %19, i32 0, i32 5
  %iOffset = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint12, i32 0, i32 0
  %20 = load i64, ptr %iOffset, align 8
  %21 = load ptr, ptr %p, align 8
  %nChunkSize = getelementptr inbounds nuw %struct.MemJournal, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %nChunkSize, align 8
  %conv13 = sext i32 %22 to i64
  %rem = srem i64 %20, %conv13
  %conv14 = trunc i64 %rem to i32
  store i32 %conv14, ptr %iChunkOffset, align 4
  %23 = load i32, ptr %nWrite, align 4
  %24 = load ptr, ptr %p, align 8
  %nChunkSize15 = getelementptr inbounds nuw %struct.MemJournal, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nChunkSize15, align 8
  %26 = load i32, ptr %iChunkOffset, align 4
  %sub = sub nsw i32 %25, %26
  %cmp16 = icmp slt i32 %23, %sub
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %27 = load i32, ptr %nWrite, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %28 = load ptr, ptr %p, align 8
  %nChunkSize18 = getelementptr inbounds nuw %struct.MemJournal, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nChunkSize18, align 8
  %30 = load i32, ptr %iChunkOffset, align 4
  %sub19 = sub nsw i32 %29, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %sub19, %cond.false ]
  store i32 %cond, ptr %iSpace, align 4
  %31 = load i32, ptr %iChunkOffset, align 4
  %cmp20 = icmp eq i32 %31, 0
  br i1 %cmp20, label %if.then22, label %if.end38

if.then22:                                        ; preds = %cond.end
  %32 = load ptr, ptr %p, align 8
  %nChunkSize23 = getelementptr inbounds nuw %struct.MemJournal, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %nChunkSize23, align 8
  %sub24 = sub nsw i32 %33, 8
  %conv25 = sext i32 %sub24 to i64
  %add26 = add i64 16, %conv25
  %conv27 = trunc i64 %add26 to i32
  %call28 = call ptr @sqlite3_malloc(i32 noundef %conv27)
  store ptr %call28, ptr %pNew, align 8
  %34 = load ptr, ptr %pNew, align 8
  %tobool = icmp ne ptr %34, null
  br i1 %tobool, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then22
  store i32 3082, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then22
  %35 = load ptr, ptr %pNew, align 8
  %pNext = getelementptr inbounds nuw %struct.FileChunk, ptr %35, i32 0, i32 0
  store ptr null, ptr %pNext, align 8
  %36 = load ptr, ptr %pChunk, align 8
  %tobool31 = icmp ne ptr %36, null
  br i1 %tobool31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.end30
  %37 = load ptr, ptr %pNew, align 8
  %38 = load ptr, ptr %pChunk, align 8
  %pNext33 = getelementptr inbounds nuw %struct.FileChunk, ptr %38, i32 0, i32 0
  store ptr %37, ptr %pNext33, align 8
  br label %if.end35

if.else34:                                        ; preds = %if.end30
  %39 = load ptr, ptr %pNew, align 8
  %40 = load ptr, ptr %p, align 8
  %pFirst = getelementptr inbounds nuw %struct.MemJournal, ptr %40, i32 0, i32 4
  store ptr %39, ptr %pFirst, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then32
  %41 = load ptr, ptr %pNew, align 8
  %42 = load ptr, ptr %p, align 8
  %endpoint36 = getelementptr inbounds nuw %struct.MemJournal, ptr %42, i32 0, i32 5
  %pChunk37 = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint36, i32 0, i32 1
  store ptr %41, ptr %pChunk37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %cond.end
  %43 = load ptr, ptr %p, align 8
  %endpoint39 = getelementptr inbounds nuw %struct.MemJournal, ptr %43, i32 0, i32 5
  %pChunk40 = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint39, i32 0, i32 1
  %44 = load ptr, ptr %pChunk40, align 8
  %zChunk = getelementptr inbounds nuw %struct.FileChunk, ptr %44, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i8], ptr %zChunk, i64 0, i64 0
  %45 = load i32, ptr %iChunkOffset, align 4
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext
  %46 = load ptr, ptr %zWrite, align 8
  %47 = load i32, ptr %iSpace, align 4
  %conv41 = sext i32 %47 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %46, i64 %conv41, i1 false)
  %48 = load i32, ptr %iSpace, align 4
  %49 = load ptr, ptr %zWrite, align 8
  %idx.ext42 = sext i32 %48 to i64
  %add.ptr43 = getelementptr inbounds i8, ptr %49, i64 %idx.ext42
  store ptr %add.ptr43, ptr %zWrite, align 8
  %50 = load i32, ptr %iSpace, align 4
  %51 = load i32, ptr %nWrite, align 4
  %sub44 = sub nsw i32 %51, %50
  store i32 %sub44, ptr %nWrite, align 4
  %52 = load i32, ptr %iSpace, align 4
  %conv45 = sext i32 %52 to i64
  %53 = load ptr, ptr %p, align 8
  %endpoint46 = getelementptr inbounds nuw %struct.MemJournal, ptr %53, i32 0, i32 5
  %iOffset47 = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint46, i32 0, i32 0
  %54 = load i64, ptr %iOffset47, align 8
  %add48 = add nsw i64 %54, %conv45
  store i64 %add48, ptr %iOffset47, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %55 = load i32, ptr %iAmt.addr, align 4
  %conv49 = sext i32 %55 to i64
  %56 = load i64, ptr %iOfst.addr, align 8
  %add50 = add nsw i64 %conv49, %56
  %conv51 = trunc i64 %add50 to i32
  %57 = load ptr, ptr %p, align 8
  %nSize = getelementptr inbounds nuw %struct.MemJournal, ptr %57, i32 0, i32 3
  store i32 %conv51, ptr %nSize, align 8
  br label %if.end52

if.end52:                                         ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end52, %if.then29, %if.end
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
declare hidden i32 @memjrnlCreateFile(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
