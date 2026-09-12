; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemTooBig(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 18
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %n1, align 4
  store i32 %3, ptr %n, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %flags2, align 8
  %conv3 = zext i16 %5 to i32
  %and4 = and i32 %conv3, 16384
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %6 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %u, align 8
  %8 = load i32, ptr %n, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %9 = load i32, ptr %n, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %12 = load i32, ptr %arrayidx, align 4
  %cmp = icmp sgt i32 %9, %12
  %conv7 = zext i1 %cmp to i32
  store i32 %conv7, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.end
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
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
