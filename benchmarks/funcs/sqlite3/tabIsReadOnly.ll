; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WritableSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @tabIsReadOnly(ptr noundef %pParse, ptr noundef %pTab) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 16
  %1 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  %4 = load ptr, ptr %pTab.addr, align 8
  %call = call ptr @sqlite3GetVTable(ptr noundef %3, ptr noundef %4)
  %pMod = getelementptr inbounds nuw %struct.VTable, ptr %call, i32 0, i32 1
  %5 = load ptr, ptr %pMod, align 8
  %pModule = getelementptr inbounds nuw %struct.Module, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pModule, align 8
  %xUpdate = getelementptr inbounds nuw %struct.sqlite3_module, ptr %6, i32 0, i32 13
  %7 = load ptr, ptr %xUpdate, align 8
  %cmp = icmp eq ptr %7, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 9
  %9 = load i32, ptr %tabFlags, align 8
  %and = and i32 %9, 1025
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %pParse.addr, align 8
  %db6 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %db6, align 8
  store ptr %11, ptr %db, align 8
  %12 = load ptr, ptr %pTab.addr, align 8
  %tabFlags7 = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 9
  %13 = load i32, ptr %tabFlags7, align 8
  %and8 = and i32 %13, 1
  %cmp9 = icmp ne i32 %and8, 0
  br i1 %cmp9, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end5
  %14 = load ptr, ptr %db, align 8
  %call12 = call i32 @sqlite3WritableSchema(ptr noundef %14)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then11
  %15 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 6
  %16 = load i8, ptr %nested, align 2
  %conv15 = zext i8 %16 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then11
  %17 = phi i1 [ false, %if.then11 ], [ %cmp16, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end5
  %18 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 7
  %19 = load i64, ptr %flags, align 8
  %and19 = and i64 %19, 268435456
  %cmp20 = icmp ne i64 %and19, 0
  br i1 %cmp20, label %land.lhs.true, label %land.end27

land.lhs.true:                                    ; preds = %if.end18
  %20 = load ptr, ptr %db, align 8
  %pVtabCtx = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 69
  %21 = load ptr, ptr %pVtabCtx, align 8
  %cmp22 = icmp eq ptr %21, null
  br i1 %cmp22, label %land.rhs24, label %land.end27

land.rhs24:                                       ; preds = %land.lhs.true
  %22 = load ptr, ptr %db, align 8
  %nVdbeExec = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 39
  %23 = load i32, ptr %nVdbeExec, align 4
  %cmp25 = icmp eq i32 %23, 0
  br label %land.end27

land.end27:                                       ; preds = %land.rhs24, %land.lhs.true, %if.end18
  %24 = phi i1 [ false, %land.lhs.true ], [ false, %if.end18 ], [ %cmp25, %land.rhs24 ]
  %land.ext28 = zext i1 %24 to i32
  store i32 %land.ext28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %land.end27, %land.end, %if.then4, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
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
