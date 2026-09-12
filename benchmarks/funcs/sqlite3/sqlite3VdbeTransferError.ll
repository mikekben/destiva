; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ValueNew(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueSetStr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueSetNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeTransferError(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %rc2 = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %rc2, align 8
  store i32 %3, ptr %rc, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 28
  %5 = load ptr, ptr %zErrMsg, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %db, align 8
  %bBenignMalloc = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 20
  %7 = load i8, ptr %bBenignMalloc, align 2
  %inc = add i8 %7, 1
  store i8 %inc, ptr %bBenignMalloc, align 2
  call void @sqlite3BeginBenignMalloc()
  %8 = load ptr, ptr %db, align 8
  %pErr = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 59
  %9 = load ptr, ptr %pErr, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %10 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3ValueNew(ptr noundef %10)
  %11 = load ptr, ptr %db, align 8
  %pErr4 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 59
  store ptr %call, ptr %pErr4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %12 = load ptr, ptr %db, align 8
  %pErr5 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 59
  %13 = load ptr, ptr %pErr5, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %zErrMsg6 = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 28
  %15 = load ptr, ptr %zErrMsg6, align 8
  call void @sqlite3ValueSetStr(ptr noundef %13, i32 noundef -1, ptr noundef %15, i8 noundef zeroext 1, ptr noundef inttoptr (i64 -1 to ptr))
  call void @sqlite3EndBenignMalloc()
  %16 = load ptr, ptr %db, align 8
  %bBenignMalloc7 = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 20
  %17 = load i8, ptr %bBenignMalloc7, align 2
  %dec = add i8 %17, -1
  store i8 %dec, ptr %bBenignMalloc7, align 2
  br label %if.end13

if.else:                                          ; preds = %entry
  %18 = load ptr, ptr %db, align 8
  %pErr8 = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 59
  %19 = load ptr, ptr %pErr8, align 8
  %tobool9 = icmp ne ptr %19, null
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %20 = load ptr, ptr %db, align 8
  %pErr11 = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 59
  %21 = load ptr, ptr %pErr11, align 8
  call void @sqlite3ValueSetNull(ptr noundef %21)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %22 = load i32, ptr %rc, align 4
  %23 = load ptr, ptr %db, align 8
  %errCode = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 12
  store i32 %22, ptr %errCode, align 8
  %24 = load i32, ptr %rc, align 4
  ret i32 %24
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
