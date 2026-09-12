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
declare hidden ptr @sqlite3ValueText(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ValueNew(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueSetStr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @callCollNeeded(ptr noundef %db, i32 noundef %enc, ptr noundef %zName) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %enc.addr = alloca i32, align 4
  %zName.addr = alloca ptr, align 8
  %zExternal = alloca ptr, align 8
  %zExternal7 = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %enc, ptr %enc.addr, align 4
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %xCollNeeded = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 56
  %1 = load ptr, ptr %xCollNeeded, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %zName.addr, align 8
  %call = call ptr @sqlite3DbStrDup(ptr noundef %2, ptr noundef %3)
  store ptr %call, ptr %zExternal, align 8
  %4 = load ptr, ptr %zExternal, align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  br label %if.end16

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %db.addr, align 8
  %xCollNeeded3 = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 56
  %6 = load ptr, ptr %xCollNeeded3, align 8
  %7 = load ptr, ptr %db.addr, align 8
  %pCollNeededArg = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 58
  %8 = load ptr, ptr %pCollNeededArg, align 8
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load i32, ptr %enc.addr, align 4
  %11 = load ptr, ptr %zExternal, align 8
  call void %6(ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %zExternal, align 8
  call void @sqlite3DbFree(ptr noundef %12, ptr noundef %13)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %14 = load ptr, ptr %db.addr, align 8
  %xCollNeeded16 = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 57
  %15 = load ptr, ptr %xCollNeeded16, align 8
  %tobool5 = icmp ne ptr %15, null
  br i1 %tobool5, label %if.then6, label %if.end16

if.then6:                                         ; preds = %if.end4
  %16 = load ptr, ptr %db.addr, align 8
  %call8 = call ptr @sqlite3ValueNew(ptr noundef %16)
  store ptr %call8, ptr %pTmp, align 8
  %17 = load ptr, ptr %pTmp, align 8
  %18 = load ptr, ptr %zName.addr, align 8
  call void @sqlite3ValueSetStr(ptr noundef %17, i32 noundef -1, ptr noundef %18, i8 noundef zeroext 1, ptr noundef null)
  %19 = load ptr, ptr %pTmp, align 8
  %call9 = call ptr @sqlite3ValueText(ptr noundef %19, i8 noundef zeroext 2)
  store ptr %call9, ptr %zExternal7, align 8
  %20 = load ptr, ptr %zExternal7, align 8
  %tobool10 = icmp ne ptr %20, null
  br i1 %tobool10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.then6
  %21 = load ptr, ptr %db.addr, align 8
  %xCollNeeded1612 = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 57
  %22 = load ptr, ptr %xCollNeeded1612, align 8
  %23 = load ptr, ptr %db.addr, align 8
  %pCollNeededArg13 = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 58
  %24 = load ptr, ptr %pCollNeededArg13, align 8
  %25 = load ptr, ptr %db.addr, align 8
  %26 = load ptr, ptr %db.addr, align 8
  %enc14 = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 16
  %27 = load i8, ptr %enc14, align 2
  %conv = zext i8 %27 to i32
  %28 = load ptr, ptr %zExternal7, align 8
  call void %22(ptr noundef %24, ptr noundef %25, i32 noundef %conv, ptr noundef %28)
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then6
  %29 = load ptr, ptr %pTmp, align 8
  call void @sqlite3ValueFree(ptr noundef %29)
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end4, %if.then2
  ret void
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
