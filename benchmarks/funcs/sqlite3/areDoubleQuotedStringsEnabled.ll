; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WritableSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @areDoubleQuotedStringsEnabled(ptr noundef %db, ptr noundef %pTopNC) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pTopNC.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTopNC, ptr %pTopNC.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %1 = load i8, ptr %busy, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pTopNC.addr, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %ncFlags, align 8
  %and = and i32 %3, 65536
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3WritableSchema(ptr noundef %4)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.then2
  %5 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 7
  %6 = load i64, ptr %flags, align 8
  %and4 = and i64 %6, 1073741824
  %cmp = icmp ne i64 %and4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.then2
  %7 = load ptr, ptr %db.addr, align 8
  %flags7 = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 7
  %8 = load i64, ptr %flags7, align 8
  %and8 = and i64 %8, 536870912
  %cmp9 = icmp ne i64 %and8, 0
  %conv = zext i1 %cmp9 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %db.addr, align 8
  %flags10 = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 7
  %10 = load i64, ptr %flags10, align 8
  %and11 = and i64 %10, 1073741824
  %cmp12 = icmp ne i64 %and11, 0
  %conv13 = zext i1 %cmp12 to i32
  store i32 %conv13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.end6, %if.then5, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
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
