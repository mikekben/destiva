; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetInt32(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ExprAlloc(ptr noundef %db, i32 noundef %op, ptr noundef %pToken, i32 noundef %dequote) #2 {
entry:
  %db.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pToken.addr = alloca ptr, align 8
  %dequote.addr = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %nExtra = alloca i32, align 4
  %iValue = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pToken, ptr %pToken.addr, align 8
  store i32 %dequote, ptr %dequote.addr, align 4
  store i32 0, ptr %nExtra, align 4
  store i32 0, ptr %iValue, align 4
  %0 = load ptr, ptr %pToken.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %op.addr, align 4
  %cmp = icmp ne i32 %1, 150
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load ptr, ptr %pToken.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %z, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then5, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pToken.addr, align 8
  %z3 = getelementptr inbounds nuw %struct.Token, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %z3, align 8
  %call = call i32 @sqlite3GetInt32(ptr noundef %5, ptr noundef %iValue)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %if.then
  %6 = load ptr, ptr %pToken.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %n, align 8
  %add = add i32 %7, 1
  store i32 %add, ptr %nExtra, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %lor.lhs.false2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load i32, ptr %nExtra, align 4
  %conv = sext i32 %9 to i64
  %add7 = add i64 72, %conv
  %call8 = call ptr @sqlite3DbMallocRawNN(ptr noundef %8, i64 noundef %add7)
  store ptr %call8, ptr %pNew, align 8
  %10 = load ptr, ptr %pNew, align 8
  %tobool9 = icmp ne ptr %10, null
  br i1 %tobool9, label %if.then10, label %if.end43

if.then10:                                        ; preds = %if.end6
  %11 = load ptr, ptr %pNew, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 72, i1 false)
  %12 = load i32, ptr %op.addr, align 4
  %conv11 = trunc i32 %12 to i8
  %13 = load ptr, ptr %pNew, align 8
  %op12 = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 0
  store i8 %conv11, ptr %op12, align 8
  %14 = load ptr, ptr %pNew, align 8
  %iAgg = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 10
  store i16 -1, ptr %iAgg, align 2
  %15 = load ptr, ptr %pToken.addr, align 8
  %tobool13 = icmp ne ptr %15, null
  br i1 %tobool13, label %if.then14, label %if.end42

if.then14:                                        ; preds = %if.then10
  %16 = load i32, ptr %nExtra, align 4
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14
  %17 = load i32, ptr %iValue, align 4
  %tobool18 = icmp ne i32 %17, 0
  %18 = zext i1 %tobool18 to i64
  %cond = select i1 %tobool18, i32 268435456, i32 536870912
  %or = or i32 8389632, %cond
  %19 = load ptr, ptr %pNew, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %flags, align 4
  %or19 = or i32 %20, %or
  store i32 %or19, ptr %flags, align 4
  %21 = load i32, ptr %iValue, align 4
  %22 = load ptr, ptr %pNew, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 3
  store i32 %21, ptr %u, align 8
  br label %if.end41

if.else:                                          ; preds = %if.then14
  %23 = load ptr, ptr %pNew, align 8
  %arrayidx = getelementptr inbounds %struct.Expr, ptr %23, i64 1
  %24 = load ptr, ptr %pNew, align 8
  %u20 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 3
  store ptr %arrayidx, ptr %u20, align 8
  %25 = load ptr, ptr %pToken.addr, align 8
  %n21 = getelementptr inbounds nuw %struct.Token, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %n21, align 8
  %tobool22 = icmp ne i32 %26, 0
  br i1 %tobool22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.else
  %27 = load ptr, ptr %pNew, align 8
  %u24 = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %u24, align 8
  %29 = load ptr, ptr %pToken.addr, align 8
  %z25 = getelementptr inbounds nuw %struct.Token, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %z25, align 8
  %31 = load ptr, ptr %pToken.addr, align 8
  %n26 = getelementptr inbounds nuw %struct.Token, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %n26, align 8
  %conv27 = zext i32 %32 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %30, i64 %conv27, i1 false)
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.else
  %33 = load ptr, ptr %pNew, align 8
  %u29 = getelementptr inbounds nuw %struct.Expr, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %u29, align 8
  %35 = load ptr, ptr %pToken.addr, align 8
  %n30 = getelementptr inbounds nuw %struct.Token, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %n30, align 8
  %idxprom = zext i32 %36 to i64
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %34, i64 %idxprom
  store i8 0, ptr %arrayidx31, align 1
  %37 = load i32, ptr %dequote.addr, align 4
  %tobool32 = icmp ne i32 %37, 0
  br i1 %tobool32, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end28
  %38 = load ptr, ptr %pNew, align 8
  %u33 = getelementptr inbounds nuw %struct.Expr, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %u33, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx34, align 1
  %idxprom35 = zext i8 %40 to i64
  %arrayidx36 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom35
  %41 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %41 to i32
  %and = and i32 %conv37, 128
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  %42 = load ptr, ptr %pNew, align 8
  call void @sqlite3DequoteExpr(ptr noundef %42)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true, %if.end28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then17
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then10
  %43 = load ptr, ptr %pNew, align 8
  %nHeight = getelementptr inbounds nuw %struct.Expr, ptr %43, i32 0, i32 7
  store i32 1, ptr %nHeight, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end6
  %44 = load ptr, ptr %pNew, align 8
  ret ptr %44
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DequoteExpr(ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
