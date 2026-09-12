; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemSetStr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @bindText(ptr noundef %pStmt, i32 noundef %i, ptr noundef %zData, i32 noundef %nData, ptr noundef %xDel, i8 noundef zeroext %encoding) #0 {
entry:
  %pStmt.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %zData.addr = alloca ptr, align 8
  %nData.addr = alloca i32, align 4
  %xDel.addr = alloca ptr, align 8
  %encoding.addr = alloca i8, align 1
  %p = alloca ptr, align 8
  %pVar = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %zData, ptr %zData.addr, align 8
  store i32 %nData, ptr %nData.addr, align 4
  store ptr %xDel, ptr %xDel.addr, align 8
  store i8 %encoding, ptr %encoding.addr, align 1
  %0 = load ptr, ptr %pStmt.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %2 = load i32, ptr %i.addr, align 4
  %call = call i32 @vdbeUnbind(ptr noundef %1, i32 noundef %2)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %zData.addr, align 8
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.end15

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %p, align 8
  %aVar = getelementptr inbounds nuw %struct.Vdbe, ptr %5, i32 0, i32 22
  %6 = load ptr, ptr %aVar, align 8
  %7 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %pVar, align 8
  %8 = load ptr, ptr %pVar, align 8
  %9 = load ptr, ptr %zData.addr, align 8
  %10 = load i32, ptr %nData.addr, align 4
  %11 = load i8, ptr %encoding.addr, align 1
  %12 = load ptr, ptr %xDel.addr, align 8
  %call3 = call i32 @sqlite3VdbeMemSetStr(ptr noundef %8, ptr noundef %9, i32 noundef %10, i8 noundef zeroext %11, ptr noundef %12)
  store i32 %call3, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %13, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then2
  %14 = load i8, ptr %encoding.addr, align 1
  %conv = zext i8 %14 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %pVar, align 8
  %16 = load ptr, ptr %p, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %db, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 16
  %18 = load i8, ptr %enc, align 2
  %conv8 = zext i8 %18 to i32
  %call9 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %15, i32 noundef %conv8)
  store i32 %call9, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then2
  %19 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %20 = load ptr, ptr %p, align 8
  %db11 = getelementptr inbounds nuw %struct.Vdbe, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %db11, align 8
  %22 = load i32, ptr %rc, align 4
  call void @sqlite3Error(ptr noundef %21, i32 noundef %22)
  %23 = load ptr, ptr %p, align 8
  %db12 = getelementptr inbounds nuw %struct.Vdbe, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %db12, align 8
  %25 = load i32, ptr %rc, align 4
  %call13 = call i32 @sqlite3ApiExit(ptr noundef %24, i32 noundef %25)
  store i32 %call13, ptr %rc, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %26 = load ptr, ptr %p, align 8
  %db16 = getelementptr inbounds nuw %struct.Vdbe, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %db16, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %28)
  br label %if.end24

if.else:                                          ; preds = %entry
  %29 = load ptr, ptr %xDel.addr, align 8
  %cmp17 = icmp ne ptr %29, null
  br i1 %cmp17, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %if.else
  %30 = load ptr, ptr %xDel.addr, align 8
  %cmp20 = icmp ne ptr %30, inttoptr (i64 -1 to ptr)
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true19
  %31 = load ptr, ptr %xDel.addr, align 8
  %32 = load ptr, ptr %zData.addr, align 8
  call void %31(ptr noundef %32)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true19, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end15
  %33 = load i32, ptr %rc, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeUnbind(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeEncoding(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
