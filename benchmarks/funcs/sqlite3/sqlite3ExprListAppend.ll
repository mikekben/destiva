; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ExprListAppend(ptr noundef %pParse, ptr noundef %pList, ptr noundef %pExpr) #1 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pList.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %3, i64 noundef 40)
  store ptr %call, ptr %pList.addr, align 8
  %4 = load ptr, ptr %pList.addr, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  br label %no_mem

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  store i32 0, ptr %nExpr, align 8
  br label %if.end17

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %pList.addr, align 8
  %nExpr4 = getelementptr inbounds nuw %struct.ExprList, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nExpr4, align 8
  %8 = load ptr, ptr %pList.addr, align 8
  %nExpr5 = getelementptr inbounds nuw %struct.ExprList, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nExpr5, align 8
  %sub = sub nsw i32 %9, 1
  %and = and i32 %7, %sub
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then7, label %if.end16

if.then7:                                         ; preds = %if.else
  %10 = load ptr, ptr %db, align 8
  %11 = load ptr, ptr %pList.addr, align 8
  %12 = load ptr, ptr %pList.addr, align 8
  %nExpr8 = getelementptr inbounds nuw %struct.ExprList, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nExpr8, align 8
  %conv = sext i32 %13 to i64
  %mul = mul nsw i64 2, %conv
  %sub9 = sub nsw i64 %mul, 1
  %mul10 = mul i64 %sub9, 32
  %add = add i64 40, %mul10
  %call11 = call ptr @sqlite3DbRealloc(ptr noundef %10, ptr noundef %11, i64 noundef %add)
  store ptr %call11, ptr %pNew, align 8
  %14 = load ptr, ptr %pNew, align 8
  %cmp12 = icmp eq ptr %14, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then7
  br label %no_mem

if.end15:                                         ; preds = %if.then7
  %15 = load ptr, ptr %pNew, align 8
  store ptr %15, ptr %pList.addr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %16 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %pList.addr, align 8
  %nExpr18 = getelementptr inbounds nuw %struct.ExprList, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %nExpr18, align 8
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %nExpr18, align 8
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %19 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.ExprList_item, ptr %19, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %zName, i8 0, i64 24, i1 false)
  %20 = load ptr, ptr %pExpr.addr, align 8
  %21 = load ptr, ptr %pItem, align 8
  %pExpr19 = getelementptr inbounds nuw %struct.ExprList_item, ptr %21, i32 0, i32 0
  store ptr %20, ptr %pExpr19, align 8
  %22 = load ptr, ptr %pList.addr, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

no_mem:                                           ; preds = %if.then14, %if.then3
  %23 = load ptr, ptr %db, align 8
  %24 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %23, ptr noundef %24)
  %25 = load ptr, ptr %db, align 8
  %26 = load ptr, ptr %pList.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %25, ptr noundef %26)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %no_mem, %if.end17
  %27 = load ptr, ptr %retval, align 8
  ret ptr %27
}

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
