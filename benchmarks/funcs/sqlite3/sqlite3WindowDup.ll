; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3WindowDup(ptr noundef %db, ptr noundef %pOwner, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pOwner.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pOwner, ptr %pOwner.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr null, ptr %pNew, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %1, i64 noundef 144)
  store ptr %call, ptr %pNew, align 8
  %2 = load ptr, ptr %pNew, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Window, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zName, align 8
  %call3 = call ptr @sqlite3DbStrDup(ptr noundef %3, ptr noundef %5)
  %6 = load ptr, ptr %pNew, align 8
  %zName4 = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 0
  store ptr %call3, ptr %zName4, align 8
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %zBase = getelementptr inbounds nuw %struct.Window, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %zBase, align 8
  %call5 = call ptr @sqlite3DbStrDup(ptr noundef %7, ptr noundef %9)
  %10 = load ptr, ptr %pNew, align 8
  %zBase6 = getelementptr inbounds nuw %struct.Window, ptr %10, i32 0, i32 1
  store ptr %call5, ptr %zBase6, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %12, i32 0, i32 13
  %13 = load ptr, ptr %pFilter, align 8
  %call7 = call ptr @sqlite3ExprDup(ptr noundef %11, ptr noundef %13, i32 noundef 0)
  %14 = load ptr, ptr %pNew, align 8
  %pFilter8 = getelementptr inbounds nuw %struct.Window, ptr %14, i32 0, i32 13
  store ptr %call7, ptr %pFilter8, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %pFunc = getelementptr inbounds nuw %struct.Window, ptr %15, i32 0, i32 14
  %16 = load ptr, ptr %pFunc, align 8
  %17 = load ptr, ptr %pNew, align 8
  %pFunc9 = getelementptr inbounds nuw %struct.Window, ptr %17, i32 0, i32 14
  store ptr %16, ptr %pFunc9, align 8
  %18 = load ptr, ptr %db.addr, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %pPartition, align 8
  %call10 = call ptr @sqlite3ExprListDup(ptr noundef %18, ptr noundef %20, i32 noundef 0)
  %21 = load ptr, ptr %pNew, align 8
  %pPartition11 = getelementptr inbounds nuw %struct.Window, ptr %21, i32 0, i32 2
  store ptr %call10, ptr %pPartition11, align 8
  %22 = load ptr, ptr %db.addr, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %pOrderBy, align 8
  %call12 = call ptr @sqlite3ExprListDup(ptr noundef %22, ptr noundef %24, i32 noundef 0)
  %25 = load ptr, ptr %pNew, align 8
  %pOrderBy13 = getelementptr inbounds nuw %struct.Window, ptr %25, i32 0, i32 3
  store ptr %call12, ptr %pOrderBy13, align 8
  %26 = load ptr, ptr %p.addr, align 8
  %eFrmType = getelementptr inbounds nuw %struct.Window, ptr %26, i32 0, i32 4
  %27 = load i8, ptr %eFrmType, align 8
  %28 = load ptr, ptr %pNew, align 8
  %eFrmType14 = getelementptr inbounds nuw %struct.Window, ptr %28, i32 0, i32 4
  store i8 %27, ptr %eFrmType14, align 8
  %29 = load ptr, ptr %p.addr, align 8
  %eEnd = getelementptr inbounds nuw %struct.Window, ptr %29, i32 0, i32 6
  %30 = load i8, ptr %eEnd, align 2
  %31 = load ptr, ptr %pNew, align 8
  %eEnd15 = getelementptr inbounds nuw %struct.Window, ptr %31, i32 0, i32 6
  store i8 %30, ptr %eEnd15, align 2
  %32 = load ptr, ptr %p.addr, align 8
  %eStart = getelementptr inbounds nuw %struct.Window, ptr %32, i32 0, i32 5
  %33 = load i8, ptr %eStart, align 1
  %34 = load ptr, ptr %pNew, align 8
  %eStart16 = getelementptr inbounds nuw %struct.Window, ptr %34, i32 0, i32 5
  store i8 %33, ptr %eStart16, align 1
  %35 = load ptr, ptr %p.addr, align 8
  %eExclude = getelementptr inbounds nuw %struct.Window, ptr %35, i32 0, i32 8
  %36 = load i8, ptr %eExclude, align 4
  %37 = load ptr, ptr %pNew, align 8
  %eExclude17 = getelementptr inbounds nuw %struct.Window, ptr %37, i32 0, i32 8
  store i8 %36, ptr %eExclude17, align 4
  %38 = load ptr, ptr %p.addr, align 8
  %regResult = getelementptr inbounds nuw %struct.Window, ptr %38, i32 0, i32 17
  %39 = load i32, ptr %regResult, align 8
  %40 = load ptr, ptr %pNew, align 8
  %regResult18 = getelementptr inbounds nuw %struct.Window, ptr %40, i32 0, i32 17
  store i32 %39, ptr %regResult18, align 8
  %41 = load ptr, ptr %db.addr, align 8
  %42 = load ptr, ptr %p.addr, align 8
  %pStart = getelementptr inbounds nuw %struct.Window, ptr %42, i32 0, i32 9
  %43 = load ptr, ptr %pStart, align 8
  %call19 = call ptr @sqlite3ExprDup(ptr noundef %41, ptr noundef %43, i32 noundef 0)
  %44 = load ptr, ptr %pNew, align 8
  %pStart20 = getelementptr inbounds nuw %struct.Window, ptr %44, i32 0, i32 9
  store ptr %call19, ptr %pStart20, align 8
  %45 = load ptr, ptr %db.addr, align 8
  %46 = load ptr, ptr %p.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.Window, ptr %46, i32 0, i32 10
  %47 = load ptr, ptr %pEnd, align 8
  %call21 = call ptr @sqlite3ExprDup(ptr noundef %45, ptr noundef %47, i32 noundef 0)
  %48 = load ptr, ptr %pNew, align 8
  %pEnd22 = getelementptr inbounds nuw %struct.Window, ptr %48, i32 0, i32 10
  store ptr %call21, ptr %pEnd22, align 8
  %49 = load ptr, ptr %pOwner.addr, align 8
  %50 = load ptr, ptr %pNew, align 8
  %pOwner23 = getelementptr inbounds nuw %struct.Window, ptr %50, i32 0, i32 21
  store ptr %49, ptr %pOwner23, align 8
  %51 = load ptr, ptr %p.addr, align 8
  %bImplicitFrame = getelementptr inbounds nuw %struct.Window, ptr %51, i32 0, i32 7
  %52 = load i8, ptr %bImplicitFrame, align 1
  %53 = load ptr, ptr %pNew, align 8
  %bImplicitFrame24 = getelementptr inbounds nuw %struct.Window, ptr %53, i32 0, i32 7
  store i8 %52, ptr %bImplicitFrame24, align 1
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end25

if.end25:                                         ; preds = %if.end, %entry
  %54 = load ptr, ptr %pNew, align 8
  ret ptr %54
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
