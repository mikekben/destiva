; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @vdbeSortSubtaskCleanup(ptr noundef %db, ptr noundef %pTask) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pTask.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %pTask.addr, align 8
  %pUnpacked = getelementptr inbounds nuw %struct.SortSubtask, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pUnpacked, align 8
  call void @sqlite3DbFree(ptr noundef %0, ptr noundef %2)
  %3 = load ptr, ptr %pTask.addr, align 8
  %list = getelementptr inbounds nuw %struct.SortSubtask, ptr %3, i32 0, i32 4
  %aMemory = getelementptr inbounds nuw %struct.SorterList, ptr %list, i32 0, i32 1
  %4 = load ptr, ptr %aMemory, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pTask.addr, align 8
  %list1 = getelementptr inbounds nuw %struct.SortSubtask, ptr %5, i32 0, i32 4
  %aMemory2 = getelementptr inbounds nuw %struct.SorterList, ptr %list1, i32 0, i32 1
  %6 = load ptr, ptr %aMemory2, align 8
  call void @sqlite3_free(ptr noundef %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pTask.addr, align 8
  %list3 = getelementptr inbounds nuw %struct.SortSubtask, ptr %7, i32 0, i32 4
  %pList = getelementptr inbounds nuw %struct.SorterList, ptr %list3, i32 0, i32 0
  %8 = load ptr, ptr %pList, align 8
  call void @vdbeSorterRecordFree(ptr noundef null, ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %pTask.addr, align 8
  %file = getelementptr inbounds nuw %struct.SortSubtask, ptr %9, i32 0, i32 7
  %pFd = getelementptr inbounds nuw %struct.SorterFile, ptr %file, i32 0, i32 0
  %10 = load ptr, ptr %pFd, align 8
  %tobool4 = icmp ne ptr %10, null
  br i1 %tobool4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %pTask.addr, align 8
  %file6 = getelementptr inbounds nuw %struct.SortSubtask, ptr %11, i32 0, i32 7
  %pFd7 = getelementptr inbounds nuw %struct.SorterFile, ptr %file6, i32 0, i32 0
  %12 = load ptr, ptr %pFd7, align 8
  call void @sqlite3OsCloseFree(ptr noundef %12)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %13 = load ptr, ptr %pTask.addr, align 8
  %file2 = getelementptr inbounds nuw %struct.SortSubtask, ptr %13, i32 0, i32 8
  %pFd9 = getelementptr inbounds nuw %struct.SorterFile, ptr %file2, i32 0, i32 0
  %14 = load ptr, ptr %pFd9, align 8
  %tobool10 = icmp ne ptr %14, null
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end8
  %15 = load ptr, ptr %pTask.addr, align 8
  %file212 = getelementptr inbounds nuw %struct.SortSubtask, ptr %15, i32 0, i32 8
  %pFd13 = getelementptr inbounds nuw %struct.SorterFile, ptr %file212, i32 0, i32 0
  %16 = load ptr, ptr %pFd13, align 8
  call void @sqlite3OsCloseFree(ptr noundef %16)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8
  %17 = load ptr, ptr %pTask.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 104, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @vdbeSorterRecordFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsCloseFree(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
