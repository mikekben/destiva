; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemJournal = type { ptr, i32, i32, i32, ptr, %struct.FilePoint, %struct.FilePoint, i32, ptr, ptr }
%struct.FilePoint = type { i64, ptr }

@MemJournalMethods = external hidden constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3JournalOpen(ptr noundef %pVfs, ptr noundef %zName, ptr noundef %pJfd, i32 noundef %flags, i32 noundef %nSpill) #1 {
entry:
  %retval = alloca i32, align 4
  %pVfs.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %pJfd.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %nSpill.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %pJfd, ptr %pJfd.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %nSpill, ptr %nSpill.addr, align 4
  %0 = load ptr, ptr %pJfd.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 88, i1 false)
  %2 = load i32, ptr %nSpill.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pVfs.addr, align 8
  %4 = load ptr, ptr %zName.addr, align 8
  %5 = load ptr, ptr %pJfd.addr, align 8
  %6 = load i32, ptr %flags.addr, align 4
  %call = call i32 @sqlite3OsOpen(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef null)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %nSpill.addr, align 4
  %cmp1 = icmp sgt i32 %7, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %8 = load i32, ptr %nSpill.addr, align 4
  %9 = load ptr, ptr %p, align 8
  %nChunkSize = getelementptr inbounds nuw %struct.MemJournal, ptr %9, i32 0, i32 1
  store i32 %8, ptr %nChunkSize, align 8
  br label %if.end4

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %p, align 8
  %nChunkSize3 = getelementptr inbounds nuw %struct.MemJournal, ptr %10, i32 0, i32 1
  store i32 1016, ptr %nChunkSize3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %11 = load ptr, ptr %p, align 8
  %pMethod = getelementptr inbounds nuw %struct.MemJournal, ptr %11, i32 0, i32 0
  store ptr @MemJournalMethods, ptr %pMethod, align 8
  %12 = load i32, ptr %nSpill.addr, align 4
  %13 = load ptr, ptr %p, align 8
  %nSpill5 = getelementptr inbounds nuw %struct.MemJournal, ptr %13, i32 0, i32 2
  store i32 %12, ptr %nSpill5, align 4
  %14 = load i32, ptr %flags.addr, align 4
  %15 = load ptr, ptr %p, align 8
  %flags6 = getelementptr inbounds nuw %struct.MemJournal, ptr %15, i32 0, i32 7
  store i32 %14, ptr %flags6, align 8
  %16 = load ptr, ptr %zName.addr, align 8
  %17 = load ptr, ptr %p, align 8
  %zJournal = getelementptr inbounds nuw %struct.MemJournal, ptr %17, i32 0, i32 9
  store ptr %16, ptr %zJournal, align 8
  %18 = load ptr, ptr %pVfs.addr, align 8
  %19 = load ptr, ptr %p, align 8
  %pVfs7 = getelementptr inbounds nuw %struct.MemJournal, ptr %19, i32 0, i32 8
  store ptr %18, ptr %pVfs7, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
