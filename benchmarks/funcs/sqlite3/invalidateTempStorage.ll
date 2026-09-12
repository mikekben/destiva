; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.865 = external hidden unnamed_addr constant [62 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsInReadTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetAllSchemasOfConnection(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @invalidateTempStorage(ptr noundef %pParse) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %aDb, align 8
  %arrayidx = getelementptr inbounds %struct.Db, ptr %3, i64 1
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %4 = load ptr, ptr %pBt, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %db, align 8
  %autoCommit = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 17
  %6 = load i8, ptr %autoCommit, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %if.then
  %7 = load ptr, ptr %db, align 8
  %aDb2 = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %aDb2, align 8
  %arrayidx3 = getelementptr inbounds %struct.Db, ptr %8, i64 1
  %pBt4 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx3, i32 0, i32 1
  %9 = load ptr, ptr %pBt4, align 8
  %call = call i32 @sqlite3BtreeIsInReadTrans(ptr noundef %9)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  %10 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %10, ptr noundef @.str.865)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %db, align 8
  %aDb7 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %aDb7, align 8
  %arrayidx8 = getelementptr inbounds %struct.Db, ptr %12, i64 1
  %pBt9 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx8, i32 0, i32 1
  %13 = load ptr, ptr %pBt9, align 8
  %call10 = call i32 @sqlite3BtreeClose(ptr noundef %13)
  %14 = load ptr, ptr %db, align 8
  %aDb11 = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %aDb11, align 8
  %arrayidx12 = getelementptr inbounds %struct.Db, ptr %15, i64 1
  %pBt13 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx12, i32 0, i32 1
  store ptr null, ptr %pBt13, align 8
  %16 = load ptr, ptr %db, align 8
  call void @sqlite3ResetAllSchemasOfConnection(ptr noundef %16)
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then6
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
