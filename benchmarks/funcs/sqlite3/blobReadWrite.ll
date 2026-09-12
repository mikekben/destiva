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
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeFinalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @blobReadWrite(ptr noundef %pBlob, ptr noundef %z, i32 noundef %n, i32 noundef %iOffset, ptr noundef %xCall) #0 {
entry:
  %retval = alloca i32, align 4
  %pBlob.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %iOffset.addr = alloca i32, align 4
  %xCall.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %p = alloca ptr, align 8
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pBlob, ptr %pBlob.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %iOffset, ptr %iOffset.addr, align 4
  store ptr %xCall, ptr %xCall.addr, align 8
  %0 = load ptr, ptr %pBlob.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sqlite3MisuseError(i32 noundef 92155)
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
  store ptr %7, ptr %v, align 8
  %8 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, ptr %iOffset.addr, align 4
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then9, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %10 = load i32, ptr %iOffset.addr, align 4
  %conv = sext i32 %10 to i64
  %11 = load i32, ptr %n.addr, align 4
  %conv5 = sext i32 %11 to i64
  %add = add nsw i64 %conv, %conv5
  %12 = load ptr, ptr %p, align 8
  %nByte = getelementptr inbounds nuw %struct.Incrblob, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nByte, align 8
  %conv6 = sext i32 %13 to i64
  %cmp7 = icmp sgt i64 %add, %conv6
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.end
  store i32 1, ptr %rc, align 4
  br label %if.end28

if.else:                                          ; preds = %lor.lhs.false4
  %14 = load ptr, ptr %v, align 8
  %cmp10 = icmp eq ptr %14, null
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  store i32 4, ptr %rc, align 4
  br label %if.end27

if.else13:                                        ; preds = %if.else
  %15 = load ptr, ptr %p, align 8
  %pCsr = getelementptr inbounds nuw %struct.Incrblob, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %pCsr, align 8
  call void @sqlite3BtreeEnterCursor(ptr noundef %16)
  %17 = load ptr, ptr %xCall.addr, align 8
  %18 = load ptr, ptr %p, align 8
  %pCsr14 = getelementptr inbounds nuw %struct.Incrblob, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %pCsr14, align 8
  %20 = load i32, ptr %iOffset.addr, align 4
  %21 = load ptr, ptr %p, align 8
  %iOffset15 = getelementptr inbounds nuw %struct.Incrblob, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %iOffset15, align 4
  %add16 = add nsw i32 %20, %22
  %23 = load i32, ptr %n.addr, align 4
  %24 = load ptr, ptr %z.addr, align 8
  %call17 = call i32 %17(ptr noundef %19, i32 noundef %add16, i32 noundef %23, ptr noundef %24)
  store i32 %call17, ptr %rc, align 4
  %25 = load ptr, ptr %p, align 8
  %pCsr18 = getelementptr inbounds nuw %struct.Incrblob, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %pCsr18, align 8
  call void @sqlite3BtreeLeaveCursor(ptr noundef %26)
  %27 = load i32, ptr %rc, align 4
  %cmp19 = icmp eq i32 %27, 4
  br i1 %cmp19, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.else13
  %28 = load ptr, ptr %v, align 8
  %call22 = call i32 @sqlite3VdbeFinalize(ptr noundef %28)
  %29 = load ptr, ptr %p, align 8
  %pStmt23 = getelementptr inbounds nuw %struct.Incrblob, ptr %29, i32 0, i32 4
  store ptr null, ptr %pStmt23, align 8
  br label %if.end26

if.else24:                                        ; preds = %if.else13
  %30 = load i32, ptr %rc, align 4
  %31 = load ptr, ptr %v, align 8
  %rc25 = getelementptr inbounds nuw %struct.Vdbe, ptr %31, i32 0, i32 11
  store i32 %30, ptr %rc25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then21
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then12
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then9
  %32 = load ptr, ptr %db, align 8
  %33 = load i32, ptr %rc, align 4
  call void @sqlite3Error(ptr noundef %32, i32 noundef %33)
  %34 = load ptr, ptr %db, align 8
  %35 = load i32, ptr %rc, align 4
  %call29 = call i32 @sqlite3ApiExit(ptr noundef %34, i32 noundef %35)
  store i32 %call29, ptr %rc, align 4
  %36 = load ptr, ptr %db, align 8
  %mutex30 = getelementptr inbounds nuw %struct.sqlite3, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %mutex30, align 8
  call void @sqlite3_mutex_leave(ptr noundef %37)
  %38 = load i32, ptr %rc, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnterCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveCursor(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
