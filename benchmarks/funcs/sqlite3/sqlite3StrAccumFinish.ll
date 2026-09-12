; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3StrAccumFinish(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %zText = getelementptr inbounds nuw %struct.sqlite3_str, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %zText, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %zText1 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %zText1, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %nChar, align 8
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %3, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %6 = load ptr, ptr %p.addr, align 8
  %mxAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %mxAlloc, align 4
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load ptr, ptr %p.addr, align 8
  %printfFlags = getelementptr inbounds nuw %struct.sqlite3_str, ptr %8, i32 0, i32 6
  %9 = load i8, ptr %printfFlags, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 4
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.end, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %p.addr, align 8
  %call = call ptr @strAccumFinishRealloc(ptr noundef %10)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %p.addr, align 8
  %zText6 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %zText6, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
declare hidden ptr @strAccumFinishRealloc(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
