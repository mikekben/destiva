; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Incrblob = type { i32, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @blobSeekToRow(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_blob_reopen(ptr noundef %pBlob, i64 noundef %iRow) #0 {
entry:
  %retval = alloca i32, align 4
  %pBlob.addr = alloca ptr, align 8
  %iRow.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %p = alloca ptr, align 8
  %db = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  store ptr %pBlob, ptr %pBlob.addr, align 8
  store i64 %iRow, ptr %iRow.addr, align 8
  %0 = load ptr, ptr %pBlob.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sqlite3MisuseError(i32 noundef 92253)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %db1 = getelementptr inbounds nuw %struct.Incrblob, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %5)
  %6 = load ptr, ptr %p, align 8
  %pStmt = getelementptr inbounds nuw %struct.Incrblob, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pStmt, align 8
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 4, ptr %rc, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %p, align 8
  %9 = load i64, ptr %iRow.addr, align 8
  %call4 = call i32 @blobSeekToRow(ptr noundef %8, i64 noundef %9, ptr noundef %zErr)
  store i32 %call4, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  %11 = load ptr, ptr %db, align 8
  %12 = load i32, ptr %rc, align 4
  %13 = load ptr, ptr %zErr, align 8
  %tobool = icmp ne ptr %13, null
  %14 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.20, ptr null
  %15 = load ptr, ptr %zErr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %11, i32 noundef %12, ptr noundef %cond, ptr noundef %15)
  %16 = load ptr, ptr %db, align 8
  %17 = load ptr, ptr %zErr, align 8
  call void @sqlite3DbFree(ptr noundef %16, ptr noundef %17)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  %18 = load ptr, ptr %db, align 8
  %19 = load i32, ptr %rc, align 4
  %call9 = call i32 @sqlite3ApiExit(ptr noundef %18, i32 noundef %19)
  store i32 %call9, ptr %rc, align 4
  %20 = load ptr, ptr %db, align 8
  %mutex10 = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %mutex10, align 8
  call void @sqlite3_mutex_leave(ptr noundef %21)
  %22 = load i32, ptr %rc, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
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
