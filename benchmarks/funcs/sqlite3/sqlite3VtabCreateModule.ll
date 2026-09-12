; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
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
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabModuleUnref(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VtabCreateModule(ptr noundef %db, ptr noundef %zName, ptr noundef %pModule, ptr noundef %pAux, ptr noundef %xDestroy) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %pModule.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %xDestroy.addr = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  %pDel = alloca ptr, align 8
  %zCopy = alloca ptr, align 8
  %nName = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %pModule, ptr %pModule.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store ptr %xDestroy, ptr %xDestroy.addr, align 8
  %0 = load ptr, ptr %pModule.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zName.addr, align 8
  store ptr %1, ptr %zCopy, align 8
  store ptr null, ptr %pMod, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %zName.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %2)
  store i32 %call, ptr %nName, align 4
  %3 = load i32, ptr %nName, align 4
  %conv = sext i32 %3 to i64
  %add = add i64 48, %conv
  %add1 = add i64 %add, 1
  %call2 = call ptr @sqlite3Malloc(i64 noundef %add1)
  store ptr %call2, ptr %pMod, align 8
  %4 = load ptr, ptr %pMod, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %5 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %5)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load ptr, ptr %pMod, align 8
  %arrayidx = getelementptr inbounds %struct.Module, ptr %6, i64 1
  store ptr %arrayidx, ptr %zCopy, align 8
  %7 = load ptr, ptr %zCopy, align 8
  %8 = load ptr, ptr %zName.addr, align 8
  %9 = load i32, ptr %nName, align 4
  %add6 = add nsw i32 %9, 1
  %conv7 = sext i32 %add6 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %conv7, i1 false)
  %10 = load ptr, ptr %zCopy, align 8
  %11 = load ptr, ptr %pMod, align 8
  %zName8 = getelementptr inbounds nuw %struct.Module, ptr %11, i32 0, i32 1
  store ptr %10, ptr %zName8, align 8
  %12 = load ptr, ptr %pModule.addr, align 8
  %13 = load ptr, ptr %pMod, align 8
  %pModule9 = getelementptr inbounds nuw %struct.Module, ptr %13, i32 0, i32 0
  store ptr %12, ptr %pModule9, align 8
  %14 = load ptr, ptr %pAux.addr, align 8
  %15 = load ptr, ptr %pMod, align 8
  %pAux10 = getelementptr inbounds nuw %struct.Module, ptr %15, i32 0, i32 3
  store ptr %14, ptr %pAux10, align 8
  %16 = load ptr, ptr %xDestroy.addr, align 8
  %17 = load ptr, ptr %pMod, align 8
  %xDestroy11 = getelementptr inbounds nuw %struct.Module, ptr %17, i32 0, i32 4
  store ptr %16, ptr %xDestroy11, align 8
  %18 = load ptr, ptr %pMod, align 8
  %pEpoTab = getelementptr inbounds nuw %struct.Module, ptr %18, i32 0, i32 5
  store ptr null, ptr %pEpoTab, align 8
  %19 = load ptr, ptr %pMod, align 8
  %nRefModule = getelementptr inbounds nuw %struct.Module, ptr %19, i32 0, i32 2
  store i32 1, ptr %nRefModule, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %20 = load ptr, ptr %db.addr, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 68
  %21 = load ptr, ptr %zCopy, align 8
  %22 = load ptr, ptr %pMod, align 8
  %call13 = call ptr @sqlite3HashInsert(ptr noundef %aModule, ptr noundef %21, ptr noundef %22)
  store ptr %call13, ptr %pDel, align 8
  %23 = load ptr, ptr %pDel, align 8
  %tobool = icmp ne ptr %23, null
  br i1 %tobool, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end12
  %24 = load ptr, ptr %pDel, align 8
  %25 = load ptr, ptr %pMod, align 8
  %cmp15 = icmp eq ptr %24, %25
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.then14
  %26 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %26)
  %27 = load ptr, ptr %db.addr, align 8
  %28 = load ptr, ptr %pDel, align 8
  call void @sqlite3DbFree(ptr noundef %27, ptr noundef %28)
  store ptr null, ptr %pMod, align 8
  br label %if.end19

if.else18:                                        ; preds = %if.then14
  %29 = load ptr, ptr %db.addr, align 8
  %30 = load ptr, ptr %pDel, align 8
  call void @sqlite3VtabEponymousTableClear(ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %db.addr, align 8
  %32 = load ptr, ptr %pDel, align 8
  call void @sqlite3VtabModuleUnref(ptr noundef %31, ptr noundef %32)
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end12
  %33 = load ptr, ptr %pMod, align 8
  store ptr %33, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end20, %if.then5
  %34 = load ptr, ptr %retval, align 8
  ret ptr %34
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabEponymousTableClear(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
