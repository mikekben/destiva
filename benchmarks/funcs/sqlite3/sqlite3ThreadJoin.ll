; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SQLiteThread = type { i64, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ThreadJoin(ptr noundef %p, ptr noundef %ppOut) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %ppOut.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %ppOut, ptr %ppOut.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %done = getelementptr inbounds nuw %struct.SQLiteThread, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %done, align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %p.addr, align 8
  %pOut = getelementptr inbounds nuw %struct.SQLiteThread, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pOut, align 8
  %5 = load ptr, ptr %ppOut.addr, align 8
  store ptr %4, ptr %5, align 8
  store i32 0, ptr %rc, align 4
  br label %if.end3

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8
  %tid = getelementptr inbounds nuw %struct.SQLiteThread, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %tid, align 8
  %8 = load ptr, ptr %ppOut.addr, align 8
  %call = call i32 @pthread_join(i64 noundef %7, ptr noundef %8)
  %tobool2 = icmp ne i32 %call, 0
  %9 = zext i1 %tobool2 to i64
  %cond = select i1 %tobool2, i32 1, i32 0
  store i32 %cond, ptr %rc, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %10 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %10)
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
