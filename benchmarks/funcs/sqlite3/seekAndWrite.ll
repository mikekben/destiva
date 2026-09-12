; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @seekAndWrite(ptr noundef %id, i64 noundef %offset, ptr noundef %pBuf, i32 noundef %cnt) #0 {
entry:
  %id.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %pBuf.addr = alloca ptr, align 8
  %cnt.addr = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  store i64 %offset, ptr %offset.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %cnt, ptr %cnt.addr, align 4
  %0 = load ptr, ptr %id.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %h, align 8
  %2 = load i64, ptr %offset.addr, align 8
  %3 = load ptr, ptr %pBuf.addr, align 8
  %4 = load i32, ptr %cnt.addr, align 4
  %5 = load ptr, ptr %id.addr, align 8
  %lastErrno = getelementptr inbounds nuw %struct.unixFile, ptr %5, i32 0, i32 6
  %call = call i32 @seekAndWriteFd(i32 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %lastErrno)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
declare hidden i32 @seekAndWriteFd(i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
