; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @tokenExpr(ptr noundef %pParse, i32 noundef %op, ptr %t.coerce0, i32 %t.coerce1) #1 {
entry:
  %retval = alloca ptr, align 8
  %t = alloca %struct.Token, align 8
  %pParse.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %0 = getelementptr inbounds nuw { ptr, i32 }, ptr %t, i32 0, i32 0
  store ptr %t.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { ptr, i32 }, ptr %t, i32 0, i32 1
  store i32 %t.coerce1, ptr %1, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  %2 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %t, i32 0, i32 1
  %4 = load i32, ptr %n, align 8
  %conv = zext i32 %4 to i64
  %add = add i64 72, %conv
  %add1 = add i64 %add, 1
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %3, i64 noundef %add1)
  store ptr %call, ptr %p, align 8
  %5 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %op.addr, align 4
  %conv2 = trunc i32 %6 to i8
  %7 = load ptr, ptr %p, align 8
  %op3 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 0
  store i8 %conv2, ptr %op3, align 8
  %8 = load ptr, ptr %p, align 8
  %affExpr = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 1
  store i8 0, ptr %affExpr, align 1
  %9 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 2
  store i32 8388608, ptr %flags, align 4
  %10 = load ptr, ptr %p, align 8
  %iAgg = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 10
  store i16 -1, ptr %iAgg, align 2
  %11 = load ptr, ptr %p, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 5
  store ptr null, ptr %pRight, align 8
  %12 = load ptr, ptr %p, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 4
  store ptr null, ptr %pLeft, align 8
  %13 = load ptr, ptr %p, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 6
  store ptr null, ptr %x, align 8
  %14 = load ptr, ptr %p, align 8
  %pAggInfo = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 13
  store ptr null, ptr %pAggInfo, align 8
  %15 = load ptr, ptr %p, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 14
  store ptr null, ptr %y, align 8
  %16 = load ptr, ptr %p, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 12
  store i8 0, ptr %op2, align 2
  %17 = load ptr, ptr %p, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 8
  store i32 0, ptr %iTable, align 4
  %18 = load ptr, ptr %p, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 9
  store i16 0, ptr %iColumn, align 8
  %19 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds %struct.Expr, ptr %19, i64 1
  %20 = load ptr, ptr %p, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 3
  store ptr %arrayidx, ptr %u, align 8
  %21 = load ptr, ptr %p, align 8
  %u4 = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %u4, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %t, i32 0, i32 0
  %23 = load ptr, ptr %z, align 8
  %n5 = getelementptr inbounds nuw %struct.Token, ptr %t, i32 0, i32 1
  %24 = load i32, ptr %n5, align 8
  %conv6 = zext i32 %24 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %23, i64 %conv6, i1 false)
  %25 = load ptr, ptr %p, align 8
  %u7 = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %u7, align 8
  %n8 = getelementptr inbounds nuw %struct.Token, ptr %t, i32 0, i32 1
  %27 = load i32, ptr %n8, align 8
  %idxprom = zext i32 %27 to i64
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %26, i64 %idxprom
  store i8 0, ptr %arrayidx9, align 1
  %28 = load ptr, ptr %p, align 8
  %u10 = getelementptr inbounds nuw %struct.Expr, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %u10, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx11, align 1
  %idxprom12 = zext i8 %30 to i64
  %arrayidx13 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom12
  %31 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %31 to i32
  %and = and i32 %conv14, 128
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then
  %32 = load ptr, ptr %p, align 8
  call void @sqlite3DequoteExpr(ptr noundef %32)
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then
  %33 = load ptr, ptr %p, align 8
  %nHeight = getelementptr inbounds nuw %struct.Expr, ptr %33, i32 0, i32 7
  store i32 1, ptr %nHeight, align 8
  %34 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %34, i32 0, i32 51
  %35 = load i8, ptr %eParseMode, align 4
  %conv17 = zext i8 %35 to i32
  %cmp = icmp sge i32 %conv17, 2
  br i1 %cmp, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end
  %36 = load ptr, ptr %pParse.addr, align 8
  %37 = load ptr, ptr %p, align 8
  %call20 = call ptr @sqlite3RenameTokenMap(ptr noundef %36, ptr noundef %37, ptr noundef %t)
  store ptr %call20, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %entry
  %38 = load ptr, ptr %p, align 8
  store ptr %38, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end22, %if.then19
  %39 = load ptr, ptr %retval, align 8
  ret ptr %39
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3RenameTokenMap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DequoteExpr(ptr noundef) #1

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
