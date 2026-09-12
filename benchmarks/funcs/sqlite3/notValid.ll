; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }

@.str.615 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.616 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.617 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.618 = external hidden unnamed_addr constant [20 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @notValid(ptr noundef %pParse, ptr noundef %pNC, ptr noundef %zMsg, i32 noundef %validMask) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pNC.addr = alloca ptr, align 8
  %zMsg.addr = alloca ptr, align 8
  %validMask.addr = alloca i32, align 4
  %zIn = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pNC, ptr %pNC.addr, align 8
  store ptr %zMsg, ptr %zMsg.addr, align 8
  store i32 %validMask, ptr %validMask.addr, align 4
  %0 = load ptr, ptr %pNC.addr, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %ncFlags, align 8
  %2 = load i32, ptr %validMask.addr, align 4
  %and = and i32 %1, %2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  store ptr @.str.615, ptr %zIn, align 8
  %3 = load ptr, ptr %pNC.addr, align 8
  %ncFlags1 = getelementptr inbounds nuw %struct.NameContext, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %ncFlags1, align 8
  %and2 = and i32 %4, 32
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store ptr @.str.616, ptr %zIn, align 8
  br label %if.end8

if.else:                                          ; preds = %if.then
  %5 = load ptr, ptr %pNC.addr, align 8
  %ncFlags4 = getelementptr inbounds nuw %struct.NameContext, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %ncFlags4, align 8
  %and5 = and i32 %6, 4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  store ptr @.str.617, ptr %zIn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  %7 = load ptr, ptr %pParse.addr, align 8
  %8 = load ptr, ptr %zMsg.addr, align 8
  %9 = load ptr, ptr %zIn, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %7, ptr noundef @.str.618, ptr noundef %8, ptr noundef %9)
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
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
