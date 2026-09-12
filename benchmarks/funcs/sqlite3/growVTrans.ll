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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @growVTrans(ptr noundef %db) #1 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %ARRAY_INCR = alloca i32, align 4
  %aVTrans = alloca ptr, align 8
  %nBytes = alloca i64, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 5, ptr %ARRAY_INCR, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %nVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 67
  %1 = load i32, ptr %nVTrans, align 4
  %rem = srem i32 %1, 5
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %nVTrans1 = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 67
  %3 = load i32, ptr %nVTrans1, align 4
  %conv = sext i32 %3 to i64
  %add = add nsw i64 %conv, 5
  %mul = mul i64 8, %add
  store i64 %mul, ptr %nBytes, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load ptr, ptr %db.addr, align 8
  %aVTrans2 = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 70
  %6 = load ptr, ptr %aVTrans2, align 8
  %7 = load i64, ptr %nBytes, align 8
  %call = call ptr @sqlite3DbRealloc(ptr noundef %4, ptr noundef %6, i64 noundef %7)
  store ptr %call, ptr %aVTrans, align 8
  %8 = load ptr, ptr %aVTrans, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %aVTrans, align 8
  %10 = load ptr, ptr %db.addr, align 8
  %nVTrans4 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 67
  %11 = load i32, ptr %nVTrans4, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx, i8 0, i64 40, i1 false)
  %12 = load ptr, ptr %aVTrans, align 8
  %13 = load ptr, ptr %db.addr, align 8
  %aVTrans5 = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 70
  store ptr %12, ptr %aVTrans5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then3
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
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
