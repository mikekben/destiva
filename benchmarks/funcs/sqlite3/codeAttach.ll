; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @codeAttach(ptr noundef %pParse, i32 noundef %type, ptr noundef %pFunc, ptr noundef %pAuthArg, ptr noundef %pFilename, ptr noundef %pDbname, ptr noundef %pKey) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %pFunc.addr = alloca ptr, align 8
  %pAuthArg.addr = alloca ptr, align 8
  %pFilename.addr = alloca ptr, align 8
  %pDbname.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sName = alloca %struct.NameContext, align 8
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %regArgs = alloca i32, align 4
  %zAuthArg = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store ptr %pFunc, ptr %pFunc.addr, align 8
  store ptr %pAuthArg, ptr %pAuthArg.addr, align 8
  store ptr %pFilename, ptr %pFilename.addr, align 8
  store ptr %pDbname, ptr %pDbname.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %nErr, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %attach_end

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %sName, i8 0, i64 56, i1 false)
  %4 = load ptr, ptr %pParse.addr, align 8
  %pParse2 = getelementptr inbounds nuw %struct.NameContext, ptr %sName, i32 0, i32 0
  store ptr %4, ptr %pParse2, align 8
  %5 = load ptr, ptr %pFilename.addr, align 8
  %call = call i32 @resolveAttachExpr(ptr noundef %sName, ptr noundef %5)
  store i32 %call, ptr %rc, align 4
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %pDbname.addr, align 8
  %call3 = call i32 @resolveAttachExpr(ptr noundef %sName, ptr noundef %6)
  store i32 %call3, ptr %rc, align 4
  %cmp4 = icmp ne i32 0, %call3
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %pKey.addr, align 8
  %call6 = call i32 @resolveAttachExpr(ptr noundef %sName, ptr noundef %7)
  store i32 %call6, ptr %rc, align 4
  %cmp7 = icmp ne i32 0, %call6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end
  br label %attach_end

if.end9:                                          ; preds = %lor.lhs.false5
  %8 = load ptr, ptr %pAuthArg.addr, align 8
  %tobool10 = icmp ne ptr %8, null
  br i1 %tobool10, label %if.then11, label %if.end21

if.then11:                                        ; preds = %if.end9
  %9 = load ptr, ptr %pAuthArg.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %op, align 8
  %conv = zext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv, 113
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then11
  %11 = load ptr, ptr %pAuthArg.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %u, align 8
  store ptr %12, ptr %zAuthArg, align 8
  br label %if.end15

if.else:                                          ; preds = %if.then11
  store ptr null, ptr %zAuthArg, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load i32, ptr %type.addr, align 4
  %15 = load ptr, ptr %zAuthArg, align 8
  %call16 = call i32 @sqlite3AuthCheck(ptr noundef %13, i32 noundef %14, ptr noundef %15, ptr noundef null, ptr noundef null)
  store i32 %call16, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp17 = icmp ne i32 %16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  br label %attach_end

if.end20:                                         ; preds = %if.end15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end9
  %17 = load ptr, ptr %pParse.addr, align 8
  %call22 = call ptr @sqlite3GetVdbe(ptr noundef %17)
  store ptr %call22, ptr %v, align 8
  %18 = load ptr, ptr %pParse.addr, align 8
  %call23 = call i32 @sqlite3GetTempRange(ptr noundef %18, i32 noundef 4)
  store i32 %call23, ptr %regArgs, align 4
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pFilename.addr, align 8
  %21 = load i32, ptr %regArgs, align 4
  call void @sqlite3ExprCode(ptr noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %pParse.addr, align 8
  %23 = load ptr, ptr %pDbname.addr, align 8
  %24 = load i32, ptr %regArgs, align 4
  %add = add nsw i32 %24, 1
  call void @sqlite3ExprCode(ptr noundef %22, ptr noundef %23, i32 noundef %add)
  %25 = load ptr, ptr %pParse.addr, align 8
  %26 = load ptr, ptr %pKey.addr, align 8
  %27 = load i32, ptr %regArgs, align 4
  %add24 = add nsw i32 %27, 2
  call void @sqlite3ExprCode(ptr noundef %25, ptr noundef %26, i32 noundef %add24)
  %28 = load ptr, ptr %v, align 8
  %tobool25 = icmp ne ptr %28, null
  br i1 %tobool25, label %if.then26, label %if.end36

if.then26:                                        ; preds = %if.end21
  %29 = load ptr, ptr %v, align 8
  %30 = load i32, ptr %regArgs, align 4
  %add27 = add nsw i32 %30, 3
  %31 = load ptr, ptr %pFunc.addr, align 8
  %nArg = getelementptr inbounds nuw %struct.FuncDef, ptr %31, i32 0, i32 0
  %32 = load i8, ptr %nArg, align 8
  %conv28 = sext i8 %32 to i32
  %sub = sub nsw i32 %add27, %conv28
  %33 = load i32, ptr %regArgs, align 4
  %add29 = add nsw i32 %33, 3
  %34 = load ptr, ptr %pFunc.addr, align 8
  %call30 = call i32 @sqlite3VdbeAddOp4(ptr noundef %29, i32 noundef 63, i32 noundef 0, i32 noundef %sub, i32 noundef %add29, ptr noundef %34, i32 noundef -8)
  %35 = load ptr, ptr %v, align 8
  %36 = load ptr, ptr %pFunc.addr, align 8
  %nArg31 = getelementptr inbounds nuw %struct.FuncDef, ptr %36, i32 0, i32 0
  %37 = load i8, ptr %nArg31, align 8
  %conv32 = zext i8 %37 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %35, i16 noundef zeroext %conv32)
  %38 = load ptr, ptr %v, align 8
  %39 = load i32, ptr %type.addr, align 4
  %cmp33 = icmp eq i32 %39, 24
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @sqlite3VdbeAddOp1(ptr noundef %38, i32 noundef 158, i32 noundef %conv34)
  br label %if.end36

if.end36:                                         ; preds = %if.then26, %if.end21
  br label %attach_end

attach_end:                                       ; preds = %if.end36, %if.then19, %if.then8, %if.then
  %40 = load ptr, ptr %db, align 8
  %41 = load ptr, ptr %pFilename.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %40, ptr noundef %41)
  %42 = load ptr, ptr %db, align 8
  %43 = load ptr, ptr %pDbname.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %db, align 8
  %45 = load ptr, ptr %pKey.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %44, ptr noundef %45)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @resolveAttachExpr(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
