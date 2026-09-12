; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @setStrAccumError(ptr noundef %p, i8 noundef zeroext %eError) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %eError.addr = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  store i8 %eError, ptr %eError.addr, align 1
  %0 = load i8, ptr %eError.addr, align 1
  %1 = load ptr, ptr %p.addr, align 8
  %accError = getelementptr inbounds nuw %struct.sqlite3_str, ptr %1, i32 0, i32 5
  store i8 %0, ptr %accError, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %mxAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %mxAlloc, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_str_reset(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, ptr %eError.addr, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 18
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_str, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db, align 8
  %8 = load i8, ptr %eError.addr, align 1
  %conv3 = zext i8 %8 to i32
  %call = call i32 @sqlite3ErrorToParser(ptr noundef %7, i32 noundef %conv3)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ErrorToParser(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
