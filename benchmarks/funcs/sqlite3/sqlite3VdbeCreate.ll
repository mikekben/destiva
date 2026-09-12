; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
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
define hidden ptr @sqlite3VdbeCreate(ptr noundef %pParse) #1 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %2, i64 noundef 296)
  store ptr %call, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 23
  call void @llvm.memset.p0.i64(ptr align 8 %aOp, i8 0, i64 160, i1 false)
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %p, align 8
  %db2 = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 0
  store ptr %5, ptr %db2, align 8
  %7 = load ptr, ptr %db, align 8
  %pVdbe = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pVdbe, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %p, align 8
  %10 = load ptr, ptr %db, align 8
  %pVdbe4 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pVdbe4, align 8
  %pPrev = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 1
  store ptr %9, ptr %pPrev, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %12 = load ptr, ptr %db, align 8
  %pVdbe6 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %pVdbe6, align 8
  %14 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 2
  store ptr %13, ptr %pNext, align 8
  %15 = load ptr, ptr %p, align 8
  %pPrev7 = getelementptr inbounds nuw %struct.Vdbe, ptr %15, i32 0, i32 1
  store ptr null, ptr %pPrev7, align 8
  %16 = load ptr, ptr %p, align 8
  %17 = load ptr, ptr %db, align 8
  %pVdbe8 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 1
  store ptr %16, ptr %pVdbe8, align 8
  %18 = load ptr, ptr %p, align 8
  %magic = getelementptr inbounds nuw %struct.Vdbe, ptr %18, i32 0, i32 6
  store i32 381479589, ptr %magic, align 4
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %p, align 8
  %pParse9 = getelementptr inbounds nuw %struct.Vdbe, ptr %20, i32 0, i32 3
  store ptr %19, ptr %pParse9, align 8
  %21 = load ptr, ptr %p, align 8
  %22 = load ptr, ptr %pParse.addr, align 8
  %pVdbe10 = getelementptr inbounds nuw %struct.Parse, ptr %22, i32 0, i32 2
  store ptr %21, ptr %pVdbe10, align 8
  %23 = load ptr, ptr %p, align 8
  %call11 = call i32 @sqlite3VdbeAddOp2(ptr noundef %23, i32 noundef 61, i32 noundef 0, i32 noundef 1)
  %24 = load ptr, ptr %p, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

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
