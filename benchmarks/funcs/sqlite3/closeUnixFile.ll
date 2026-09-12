; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @closeUnixFile(ptr noundef %id) #0 {
entry:
  %id.addr = alloca ptr, align 8
  %pFile = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  %1 = load ptr, ptr %pFile, align 8
  call void @unixUnmapfile(ptr noundef %1)
  %2 = load ptr, ptr %pFile, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %h, align 8
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pFile, align 8
  %5 = load ptr, ptr %pFile, align 8
  %h1 = getelementptr inbounds nuw %struct.unixFile, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %h1, align 8
  call void @robust_close(ptr noundef %4, i32 noundef %6, i32 noundef 34779)
  %7 = load ptr, ptr %pFile, align 8
  %h2 = getelementptr inbounds nuw %struct.unixFile, ptr %7, i32 0, i32 3
  store i32 -1, ptr %h2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %pFile, align 8
  %pPreallocatedUnused = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %pPreallocatedUnused, align 8
  call void @sqlite3_free(ptr noundef %9)
  %10 = load ptr, ptr %pFile, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 120, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden void @robust_close(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unixUnmapfile(ptr noundef) #0

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
