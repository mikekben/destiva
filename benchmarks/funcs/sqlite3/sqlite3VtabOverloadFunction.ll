; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VtabOverloadFunction(ptr noundef %db, ptr noundef %pDef, i32 noundef %nArg, ptr noundef %pExpr) #1 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %pDef.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %pExpr.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pVtab = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  %xSFunc = alloca ptr, align 8
  %pArg = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pDef, ptr %pDef.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr null, ptr %xSFunc, align 8
  store ptr null, ptr %pArg, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pExpr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pDef.addr, align 8
  store ptr %1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %op, align 8
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 162
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %pDef.addr, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 14
  %6 = load ptr, ptr %y, align 8
  store ptr %6, ptr %pTab, align 8
  %7 = load ptr, ptr %pTab, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %8 = load ptr, ptr %pDef.addr, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 16
  %10 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end8
  %11 = load ptr, ptr %pDef.addr, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end8
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %pTab, align 8
  %call = call ptr @sqlite3GetVTable(ptr noundef %12, ptr noundef %13)
  %pVtab11 = getelementptr inbounds nuw %struct.VTable, ptr %call, i32 0, i32 2
  %14 = load ptr, ptr %pVtab11, align 8
  store ptr %14, ptr %pVtab, align 8
  %15 = load ptr, ptr %pVtab, align 8
  %pModule = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pModule, align 8
  store ptr %16, ptr %pMod, align 8
  %17 = load ptr, ptr %pMod, align 8
  %xFindFunction = getelementptr inbounds nuw %struct.sqlite3_module, ptr %17, i32 0, i32 18
  %18 = load ptr, ptr %xFindFunction, align 8
  %cmp12 = icmp eq ptr %18, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %19 = load ptr, ptr %pDef.addr, align 8
  store ptr %19, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end10
  %20 = load ptr, ptr %pMod, align 8
  %xFindFunction16 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %20, i32 0, i32 18
  %21 = load ptr, ptr %xFindFunction16, align 8
  %22 = load ptr, ptr %pVtab, align 8
  %23 = load i32, ptr %nArg.addr, align 4
  %24 = load ptr, ptr %pDef.addr, align 8
  %zName = getelementptr inbounds nuw %struct.FuncDef, ptr %24, i32 0, i32 8
  %25 = load ptr, ptr %zName, align 8
  %call17 = call i32 %21(ptr noundef %22, i32 noundef %23, ptr noundef %25, ptr noundef %xSFunc, ptr noundef %pArg)
  store i32 %call17, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp18 = icmp eq i32 %26, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  %27 = load ptr, ptr %pDef.addr, align 8
  store ptr %27, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.end15
  %28 = load ptr, ptr %db.addr, align 8
  %29 = load ptr, ptr %pDef.addr, align 8
  %zName22 = getelementptr inbounds nuw %struct.FuncDef, ptr %29, i32 0, i32 8
  %30 = load ptr, ptr %zName22, align 8
  %call23 = call i32 @sqlite3Strlen30(ptr noundef %30)
  %conv24 = sext i32 %call23 to i64
  %add = add i64 72, %conv24
  %add25 = add i64 %add, 1
  %call26 = call ptr @sqlite3DbMallocZero(ptr noundef %28, i64 noundef %add25)
  store ptr %call26, ptr %pNew, align 8
  %31 = load ptr, ptr %pNew, align 8
  %cmp27 = icmp eq ptr %31, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end21
  %32 = load ptr, ptr %pDef.addr, align 8
  store ptr %32, ptr %retval, align 8
  br label %return

if.end30:                                         ; preds = %if.end21
  %33 = load ptr, ptr %pNew, align 8
  %34 = load ptr, ptr %pDef.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %34, i64 72, i1 false)
  %35 = load ptr, ptr %pNew, align 8
  %arrayidx = getelementptr inbounds %struct.FuncDef, ptr %35, i64 1
  %36 = load ptr, ptr %pNew, align 8
  %zName31 = getelementptr inbounds nuw %struct.FuncDef, ptr %36, i32 0, i32 8
  store ptr %arrayidx, ptr %zName31, align 8
  %37 = load ptr, ptr %pNew, align 8
  %arrayidx32 = getelementptr inbounds %struct.FuncDef, ptr %37, i64 1
  %38 = load ptr, ptr %pDef.addr, align 8
  %zName33 = getelementptr inbounds nuw %struct.FuncDef, ptr %38, i32 0, i32 8
  %39 = load ptr, ptr %zName33, align 8
  %40 = load ptr, ptr %pDef.addr, align 8
  %zName34 = getelementptr inbounds nuw %struct.FuncDef, ptr %40, i32 0, i32 8
  %41 = load ptr, ptr %zName34, align 8
  %call35 = call i32 @sqlite3Strlen30(ptr noundef %41)
  %add36 = add nsw i32 %call35, 1
  %conv37 = sext i32 %add36 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx32, ptr align 1 %39, i64 %conv37, i1 false)
  %42 = load ptr, ptr %xSFunc, align 8
  %43 = load ptr, ptr %pNew, align 8
  %xSFunc38 = getelementptr inbounds nuw %struct.FuncDef, ptr %43, i32 0, i32 4
  store ptr %42, ptr %xSFunc38, align 8
  %44 = load ptr, ptr %pArg, align 8
  %45 = load ptr, ptr %pNew, align 8
  %pUserData = getelementptr inbounds nuw %struct.FuncDef, ptr %45, i32 0, i32 2
  store ptr %44, ptr %pUserData, align 8
  %46 = load ptr, ptr %pNew, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %funcFlags, align 4
  %or = or i32 %47, 16
  store i32 %or, ptr %funcFlags, align 4
  %48 = load ptr, ptr %pNew, align 8
  store ptr %48, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end30, %if.then29, %if.then20, %if.then14, %if.then9, %if.then7, %if.then3, %if.then
  %49 = load ptr, ptr %retval, align 8
  ret ptr %49
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
