; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnfetch(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @vdbePmaReaderClear(ptr noundef %pReadr) #0 {
entry:
  %pReadr.addr = alloca ptr, align 8
  store ptr %pReadr, ptr %pReadr.addr, align 8
  %0 = load ptr, ptr %pReadr.addr, align 8
  %aAlloc = getelementptr inbounds nuw %struct.PmaReader, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %aAlloc, align 8
  call void @sqlite3_free(ptr noundef %1)
  %2 = load ptr, ptr %pReadr.addr, align 8
  %aBuffer = getelementptr inbounds nuw %struct.PmaReader, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %aBuffer, align 8
  call void @sqlite3_free(ptr noundef %3)
  %4 = load ptr, ptr %pReadr.addr, align 8
  %aMap = getelementptr inbounds nuw %struct.PmaReader, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %aMap, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pReadr.addr, align 8
  %pFd = getelementptr inbounds nuw %struct.PmaReader, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pFd, align 8
  %8 = load ptr, ptr %pReadr.addr, align 8
  %aMap1 = getelementptr inbounds nuw %struct.PmaReader, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %aMap1, align 8
  %call = call i32 @sqlite3OsUnfetch(ptr noundef %7, i64 noundef 0, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %pReadr.addr, align 8
  %pIncr = getelementptr inbounds nuw %struct.PmaReader, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %pIncr, align 8
  call void @vdbeIncrFree(ptr noundef %11)
  %12 = load ptr, ptr %pReadr.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 80, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @vdbeIncrFree(ptr noundef) #0

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
