; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3KeyInfoAlloc(ptr noundef %db, i32 noundef %N, i32 noundef %X) #1 {
entry:
  %db.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %X.addr = alloca i32, align 4
  %nExtra = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i32 %X, ptr %X.addr, align 4
  %0 = load i32, ptr %N.addr, align 4
  %1 = load i32, ptr %X.addr, align 4
  %add = add nsw i32 %0, %1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 9
  %sub = sub i64 %mul, 8
  %conv1 = trunc i64 %sub to i32
  store i32 %conv1, ptr %nExtra, align 4
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load i32, ptr %nExtra, align 4
  %conv2 = sext i32 %3 to i64
  %add3 = add i64 40, %conv2
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %2, i64 noundef %add3)
  store ptr %call, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %N.addr, align 4
  %7 = load i32, ptr %X.addr, align 4
  %add4 = add nsw i32 %6, %7
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 %idxprom
  %8 = load ptr, ptr %p, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %8, i32 0, i32 5
  store ptr %arrayidx, ptr %aSortFlags, align 8
  %9 = load i32, ptr %N.addr, align 4
  %conv5 = trunc i32 %9 to i16
  %10 = load ptr, ptr %p, align 8
  %nKeyField = getelementptr inbounds nuw %struct.KeyInfo, ptr %10, i32 0, i32 2
  store i16 %conv5, ptr %nKeyField, align 2
  %11 = load i32, ptr %N.addr, align 4
  %12 = load i32, ptr %X.addr, align 4
  %add6 = add nsw i32 %11, %12
  %conv7 = trunc i32 %add6 to i16
  %13 = load ptr, ptr %p, align 8
  %nAllField = getelementptr inbounds nuw %struct.KeyInfo, ptr %13, i32 0, i32 3
  store i16 %conv7, ptr %nAllField, align 8
  %14 = load ptr, ptr %db.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 16
  %15 = load i8, ptr %enc, align 2
  %16 = load ptr, ptr %p, align 8
  %enc8 = getelementptr inbounds nuw %struct.KeyInfo, ptr %16, i32 0, i32 1
  store i8 %15, ptr %enc8, align 4
  %17 = load ptr, ptr %db.addr, align 8
  %18 = load ptr, ptr %p, align 8
  %db9 = getelementptr inbounds nuw %struct.KeyInfo, ptr %18, i32 0, i32 4
  store ptr %17, ptr %db9, align 8
  %19 = load ptr, ptr %p, align 8
  %nRef = getelementptr inbounds nuw %struct.KeyInfo, ptr %19, i32 0, i32 0
  store i32 1, ptr %nRef, align 8
  %20 = load ptr, ptr %p, align 8
  %arrayidx10 = getelementptr inbounds %struct.KeyInfo, ptr %20, i64 1
  %21 = load i32, ptr %nExtra, align 4
  %conv11 = sext i32 %21 to i64
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx10, i8 0, i64 %conv11, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load ptr, ptr %p, align 8
  ret ptr %23
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
