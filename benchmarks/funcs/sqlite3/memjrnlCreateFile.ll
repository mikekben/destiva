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
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @memjrnlFreeChunks(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @memjrnlCreateFile(ptr noundef %p) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pReal = alloca ptr, align 8
  %copy = alloca %struct.MemJournal, align 8
  %nChunk = alloca i32, align 4
  %iOff = alloca i64, align 8
  %pIter = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pReal, align 8
  %1 = load ptr, ptr %p.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %copy, ptr align 8 %1, i64 88, i1 false)
  %2 = load ptr, ptr %p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 88, i1 false)
  %pVfs = getelementptr inbounds nuw %struct.MemJournal, ptr %copy, i32 0, i32 8
  %3 = load ptr, ptr %pVfs, align 8
  %zJournal = getelementptr inbounds nuw %struct.MemJournal, ptr %copy, i32 0, i32 9
  %4 = load ptr, ptr %zJournal, align 8
  %5 = load ptr, ptr %pReal, align 8
  %flags = getelementptr inbounds nuw %struct.MemJournal, ptr %copy, i32 0, i32 7
  %6 = load i32, ptr %flags, align 8
  %call = call i32 @sqlite3OsOpen(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %nChunkSize = getelementptr inbounds nuw %struct.MemJournal, ptr %copy, i32 0, i32 1
  %8 = load i32, ptr %nChunkSize, align 8
  store i32 %8, ptr %nChunk, align 4
  store i64 0, ptr %iOff, align 8
  %pFirst = getelementptr inbounds nuw %struct.MemJournal, ptr %copy, i32 0, i32 4
  %9 = load ptr, ptr %pFirst, align 8
  store ptr %9, ptr %pIter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load ptr, ptr %pIter, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, ptr %iOff, align 8
  %12 = load i32, ptr %nChunk, align 4
  %conv = sext i32 %12 to i64
  %add = add nsw i64 %11, %conv
  %endpoint = getelementptr inbounds nuw %struct.MemJournal, ptr %copy, i32 0, i32 5
  %iOffset = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint, i32 0, i32 0
  %13 = load i64, ptr %iOffset, align 8
  %cmp1 = icmp sgt i64 %add, %13
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  %endpoint4 = getelementptr inbounds nuw %struct.MemJournal, ptr %copy, i32 0, i32 5
  %iOffset5 = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint4, i32 0, i32 0
  %14 = load i64, ptr %iOffset5, align 8
  %15 = load i64, ptr %iOff, align 8
  %sub = sub nsw i64 %14, %15
  %conv6 = trunc i64 %sub to i32
  store i32 %conv6, ptr %nChunk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.body
  %16 = load ptr, ptr %pReal, align 8
  %17 = load ptr, ptr %pIter, align 8
  %zChunk = getelementptr inbounds nuw %struct.FileChunk, ptr %17, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i8], ptr %zChunk, i64 0, i64 0
  %18 = load i32, ptr %nChunk, align 4
  %19 = load i64, ptr %iOff, align 8
  %call7 = call i32 @sqlite3OsWrite(ptr noundef %16, ptr noundef %arraydecay, i32 noundef %18, i64 noundef %19)
  store i32 %call7, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %tobool8 = icmp ne i32 %20, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %for.end

if.end10:                                         ; preds = %if.end
  %21 = load i32, ptr %nChunk, align 4
  %conv11 = sext i32 %21 to i64
  %22 = load i64, ptr %iOff, align 8
  %add12 = add nsw i64 %22, %conv11
  store i64 %add12, ptr %iOff, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %23 = load ptr, ptr %pIter, align 8
  %pNext = getelementptr inbounds nuw %struct.FileChunk, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pNext, align 8
  store ptr %24, ptr %pIter, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then9, %for.cond
  %25 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %25, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.end
  call void @memjrnlFreeChunks(ptr noundef %copy)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  %26 = load i32, ptr %rc, align 4
  %cmp18 = icmp ne i32 %26, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %27 = load ptr, ptr %pReal, align 8
  call void @sqlite3OsClose(ptr noundef %27)
  %28 = load ptr, ptr %p.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %copy, i64 88, i1 false)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  %29 = load i32, ptr %rc, align 4
  ret i32 %29
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
