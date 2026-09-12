; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemJournal = type { ptr, i32, i32, i32, ptr, %struct.FilePoint, %struct.FilePoint, i32, ptr, ptr }
%struct.FilePoint = type { i64, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @memjrnlTruncate(ptr noundef %pJfd, i64 noundef %size) #0 {
entry:
  %pJfd.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %pJfd, ptr %pJfd.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %pJfd.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load i64, ptr %size.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  call void @memjrnlFreeChunks(ptr noundef %2)
  %3 = load ptr, ptr %p, align 8
  %nSize = getelementptr inbounds nuw %struct.MemJournal, ptr %3, i32 0, i32 3
  store i32 0, ptr %nSize, align 8
  %4 = load ptr, ptr %p, align 8
  %endpoint = getelementptr inbounds nuw %struct.MemJournal, ptr %4, i32 0, i32 5
  %pChunk = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint, i32 0, i32 1
  store ptr null, ptr %pChunk, align 8
  %5 = load ptr, ptr %p, align 8
  %endpoint1 = getelementptr inbounds nuw %struct.MemJournal, ptr %5, i32 0, i32 5
  %iOffset = getelementptr inbounds nuw %struct.FilePoint, ptr %endpoint1, i32 0, i32 0
  store i64 0, ptr %iOffset, align 8
  %6 = load ptr, ptr %p, align 8
  %readpoint = getelementptr inbounds nuw %struct.MemJournal, ptr %6, i32 0, i32 6
  %pChunk2 = getelementptr inbounds nuw %struct.FilePoint, ptr %readpoint, i32 0, i32 1
  store ptr null, ptr %pChunk2, align 8
  %7 = load ptr, ptr %p, align 8
  %readpoint3 = getelementptr inbounds nuw %struct.MemJournal, ptr %7, i32 0, i32 6
  %iOffset4 = getelementptr inbounds nuw %struct.FilePoint, ptr %readpoint3, i32 0, i32 0
  store i64 0, ptr %iOffset4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden void @memjrnlFreeChunks(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
