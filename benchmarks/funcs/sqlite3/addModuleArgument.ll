; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.524 = external hidden unnamed_addr constant [23 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @addModuleArgument(ptr noundef %pParse, ptr noundef %pTable, ptr noundef %zArg) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTable.addr = alloca ptr, align 8
  %zArg.addr = alloca ptr, align 8
  %nBytes = alloca i64, align 8
  %azModuleArg = alloca ptr, align 8
  %db = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTable, ptr %pTable.addr, align 8
  store ptr %zArg, ptr %zArg.addr, align 8
  %0 = load ptr, ptr %pTable.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 16
  %1 = load i32, ptr %nModuleArg, align 4
  %add = add nsw i32 2, %1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  store i64 %mul, ptr %nBytes, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pTable.addr, align 8
  %nModuleArg2 = getelementptr inbounds nuw %struct.Table, ptr %4, i32 0, i32 16
  %5 = load i32, ptr %nModuleArg2, align 4
  %add3 = add nsw i32 %5, 3
  %6 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 2
  %7 = load i32, ptr %arrayidx, align 4
  %cmp = icmp sge i32 %add3, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %pTable.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %8, ptr noundef @.str.524, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %db, align 8
  %12 = load ptr, ptr %pTable.addr, align 8
  %azModuleArg5 = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 17
  %13 = load ptr, ptr %azModuleArg5, align 8
  %14 = load i64, ptr %nBytes, align 8
  %call = call ptr @sqlite3DbRealloc(ptr noundef %11, ptr noundef %13, i64 noundef %14)
  store ptr %call, ptr %azModuleArg, align 8
  %15 = load ptr, ptr %azModuleArg, align 8
  %cmp6 = icmp eq ptr %15, null
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %16 = load ptr, ptr %db, align 8
  %17 = load ptr, ptr %zArg.addr, align 8
  call void @sqlite3DbFree(ptr noundef %16, ptr noundef %17)
  br label %if.end15

if.else:                                          ; preds = %if.end
  %18 = load ptr, ptr %pTable.addr, align 8
  %nModuleArg9 = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 16
  %19 = load i32, ptr %nModuleArg9, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %nModuleArg9, align 4
  store i32 %19, ptr %i, align 4
  %20 = load ptr, ptr %zArg.addr, align 8
  %21 = load ptr, ptr %azModuleArg, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %21, i64 %idxprom
  store ptr %20, ptr %arrayidx10, align 8
  %23 = load ptr, ptr %azModuleArg, align 8
  %24 = load i32, ptr %i, align 4
  %add11 = add nsw i32 %24, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %23, i64 %idxprom12
  store ptr null, ptr %arrayidx13, align 8
  %25 = load ptr, ptr %azModuleArg, align 8
  %26 = load ptr, ptr %pTable.addr, align 8
  %azModuleArg14 = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 17
  store ptr %25, ptr %azModuleArg14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
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
