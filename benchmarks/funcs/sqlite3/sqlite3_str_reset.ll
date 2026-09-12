; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @sqlite3_str_reset(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %printfFlags = getelementptr inbounds nuw %struct.sqlite3_str, ptr %0, i32 0, i32 6
  %1 = load i8, ptr %printfFlags, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 4
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_str, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %zText = getelementptr inbounds nuw %struct.sqlite3_str, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %zText, align 8
  call void @sqlite3DbFree(ptr noundef %3, ptr noundef %5)
  %6 = load ptr, ptr %p.addr, align 8
  %printfFlags2 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %6, i32 0, i32 6
  %7 = load i8, ptr %printfFlags2, align 1
  %conv3 = zext i8 %7 to i32
  %and4 = and i32 %conv3, -5
  %conv5 = trunc i32 %and4 to i8
  store i8 %conv5, ptr %printfFlags2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %8, i32 0, i32 2
  store i32 0, ptr %nAlloc, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %9, i32 0, i32 4
  store i32 0, ptr %nChar, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %zText6 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %10, i32 0, i32 1
  store ptr null, ptr %zText6, align 8
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
