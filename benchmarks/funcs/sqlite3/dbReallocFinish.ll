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

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isLookaside(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @dbReallocFinish(ptr noundef %db, ptr noundef %p, i64 noundef %n) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %pNew = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr null, ptr %pNew, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 19
  %1 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %call = call i32 @isLookaside(ptr noundef %2, ptr noundef %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load i64, ptr %n.addr, align 8
  %call3 = call ptr @sqlite3DbMallocRawNN(ptr noundef %4, i64 noundef %5)
  store ptr %call3, ptr %pNew, align 8
  %6 = load ptr, ptr %pNew, align 8
  %tobool4 = icmp ne ptr %6, null
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  %7 = load ptr, ptr %pNew, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load ptr, ptr %db.addr, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 61
  %sz = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 1
  %10 = load i16, ptr %sz, align 4
  %conv6 = zext i16 %10 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %conv6, i1 false)
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  call void @sqlite3DbFree(ptr noundef %11, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then2
  br label %if.end11

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load i64, ptr %n.addr, align 8
  %call7 = call ptr @sqlite3_realloc64(ptr noundef %13, i64 noundef %14)
  store ptr %call7, ptr %pNew, align 8
  %15 = load ptr, ptr %pNew, align 8
  %tobool8 = icmp ne ptr %15, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.else
  %16 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %16)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  %17 = load ptr, ptr %pNew, align 8
  ret ptr %17
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
