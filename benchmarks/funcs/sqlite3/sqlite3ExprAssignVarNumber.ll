; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.813 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.814 = external hidden unnamed_addr constant [23 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VListNumToName(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi64(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VListNameToNum(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprAssignVarNumber(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %n) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %z = alloca ptr, align 8
  %x = alloca i16, align 2
  %doAdd = alloca i32, align 4
  %i = alloca i64, align 8
  %bOk = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end78

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pExpr.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %u, align 8
  store ptr %4, ptr %z, align 8
  %5 = load ptr, ptr %z, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %pParse.addr, align 8
  %nVar = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 48
  %8 = load i16, ptr %nVar, align 8
  %inc = add i16 %8, 1
  store i16 %inc, ptr %nVar, align 8
  store i16 %inc, ptr %x, align 2
  br label %if.end71

if.else:                                          ; preds = %if.end
  store i32 0, ptr %doAdd, align 4
  %9 = load ptr, ptr %z, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 63
  br i1 %cmp7, label %if.then9, label %if.else53

if.then9:                                         ; preds = %if.else
  %11 = load i32, ptr %n.addr, align 4
  %cmp10 = icmp eq i32 %11, 2
  br i1 %cmp10, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.then9
  %12 = load ptr, ptr %z, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %13 to i32
  %sub = sub nsw i32 %conv14, 48
  %conv15 = sext i32 %sub to i64
  store i64 %conv15, ptr %i, align 8
  store i32 1, ptr %bOk, align 4
  br label %if.end21

if.else16:                                        ; preds = %if.then9
  %14 = load ptr, ptr %z, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i32, ptr %n.addr, align 4
  %sub18 = sub i32 %15, 1
  %call = call i32 @sqlite3Atoi64(ptr noundef %arrayidx17, ptr noundef %i, i32 noundef %sub18, i8 noundef zeroext 1)
  %cmp19 = icmp eq i32 0, %call
  %conv20 = zext i1 %cmp19 to i32
  store i32 %conv20, ptr %bOk, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then12
  %16 = load i32, ptr %bOk, align 4
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %17 = load i64, ptr %i, align 8
  %cmp24 = icmp slt i64 %17, 1
  br i1 %cmp24, label %if.then31, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %18 = load i64, ptr %i, align 8
  %19 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 33
  %arrayidx27 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 9
  %20 = load i32, ptr %arrayidx27, align 4
  %conv28 = sext i32 %20 to i64
  %cmp29 = icmp sgt i64 %18, %conv28
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %lor.lhs.false26, %lor.lhs.false, %if.end21
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %db, align 8
  %aLimit32 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 33
  %arrayidx33 = getelementptr inbounds [12 x i32], ptr %aLimit32, i64 0, i64 9
  %23 = load i32, ptr %arrayidx33, align 4
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %21, ptr noundef @.str.813, i32 noundef %23)
  br label %if.end78

if.end34:                                         ; preds = %lor.lhs.false26
  %24 = load i64, ptr %i, align 8
  %conv35 = trunc i64 %24 to i16
  store i16 %conv35, ptr %x, align 2
  %25 = load i16, ptr %x, align 2
  %conv36 = sext i16 %25 to i32
  %26 = load ptr, ptr %pParse.addr, align 8
  %nVar37 = getelementptr inbounds nuw %struct.Parse, ptr %26, i32 0, i32 48
  %27 = load i16, ptr %nVar37, align 8
  %conv38 = sext i16 %27 to i32
  %cmp39 = icmp sgt i32 %conv36, %conv38
  br i1 %cmp39, label %if.then41, label %if.else45

if.then41:                                        ; preds = %if.end34
  %28 = load i16, ptr %x, align 2
  %conv42 = sext i16 %28 to i32
  %conv43 = trunc i32 %conv42 to i16
  %29 = load ptr, ptr %pParse.addr, align 8
  %nVar44 = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 48
  store i16 %conv43, ptr %nVar44, align 8
  store i32 1, ptr %doAdd, align 4
  br label %if.end52

if.else45:                                        ; preds = %if.end34
  %30 = load ptr, ptr %pParse.addr, align 8
  %pVList = getelementptr inbounds nuw %struct.Parse, ptr %30, i32 0, i32 55
  %31 = load ptr, ptr %pVList, align 8
  %32 = load i16, ptr %x, align 2
  %conv46 = sext i16 %32 to i32
  %call47 = call ptr @sqlite3VListNumToName(ptr noundef %31, i32 noundef %conv46)
  %cmp48 = icmp eq ptr %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.else45
  store i32 1, ptr %doAdd, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.else45
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then41
  br label %if.end64

if.else53:                                        ; preds = %if.else
  %33 = load ptr, ptr %pParse.addr, align 8
  %pVList54 = getelementptr inbounds nuw %struct.Parse, ptr %33, i32 0, i32 55
  %34 = load ptr, ptr %pVList54, align 8
  %35 = load ptr, ptr %z, align 8
  %36 = load i32, ptr %n.addr, align 4
  %call55 = call i32 @sqlite3VListNameToNum(ptr noundef %34, ptr noundef %35, i32 noundef %36)
  %conv56 = trunc i32 %call55 to i16
  store i16 %conv56, ptr %x, align 2
  %37 = load i16, ptr %x, align 2
  %conv57 = sext i16 %37 to i32
  %cmp58 = icmp eq i32 %conv57, 0
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.else53
  %38 = load ptr, ptr %pParse.addr, align 8
  %nVar61 = getelementptr inbounds nuw %struct.Parse, ptr %38, i32 0, i32 48
  %39 = load i16, ptr %nVar61, align 8
  %inc62 = add i16 %39, 1
  store i16 %inc62, ptr %nVar61, align 8
  store i16 %inc62, ptr %x, align 2
  store i32 1, ptr %doAdd, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.else53
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end52
  %40 = load i32, ptr %doAdd, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end64
  %41 = load ptr, ptr %db, align 8
  %42 = load ptr, ptr %pParse.addr, align 8
  %pVList66 = getelementptr inbounds nuw %struct.Parse, ptr %42, i32 0, i32 55
  %43 = load ptr, ptr %pVList66, align 8
  %44 = load ptr, ptr %z, align 8
  %45 = load i32, ptr %n.addr, align 4
  %46 = load i16, ptr %x, align 2
  %conv67 = sext i16 %46 to i32
  %call68 = call ptr @sqlite3VListAdd(ptr noundef %41, ptr noundef %43, ptr noundef %44, i32 noundef %45, i32 noundef %conv67)
  %47 = load ptr, ptr %pParse.addr, align 8
  %pVList69 = getelementptr inbounds nuw %struct.Parse, ptr %47, i32 0, i32 55
  store ptr %call68, ptr %pVList69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.end64
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then4
  %48 = load i16, ptr %x, align 2
  %49 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %49, i32 0, i32 9
  store i16 %48, ptr %iColumn, align 8
  %50 = load i16, ptr %x, align 2
  %conv72 = sext i16 %50 to i32
  %51 = load ptr, ptr %db, align 8
  %aLimit73 = getelementptr inbounds nuw %struct.sqlite3, ptr %51, i32 0, i32 33
  %arrayidx74 = getelementptr inbounds [12 x i32], ptr %aLimit73, i64 0, i64 9
  %52 = load i32, ptr %arrayidx74, align 4
  %cmp75 = icmp sgt i32 %conv72, %52
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end71
  %53 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %53, ptr noundef @.str.814)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end71, %if.then31, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VListAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
