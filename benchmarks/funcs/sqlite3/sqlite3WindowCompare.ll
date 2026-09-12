; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WindowCompare(ptr noundef %pParse, ptr noundef %p1, ptr noundef %p2, i32 noundef %bFilter) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %bFilter.addr = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p1, ptr %p1.addr, align 8
  store ptr %p2, ptr %p2.addr, align 8
  store i32 %bFilter, ptr %bFilter.addr, align 4
  %0 = load ptr, ptr %p1.addr, align 8
  %eFrmType = getelementptr inbounds nuw %struct.Window, ptr %0, i32 0, i32 4
  %1 = load i8, ptr %eFrmType, align 8
  %conv = zext i8 %1 to i32
  %2 = load ptr, ptr %p2.addr, align 8
  %eFrmType1 = getelementptr inbounds nuw %struct.Window, ptr %2, i32 0, i32 4
  %3 = load i8, ptr %eFrmType1, align 8
  %conv2 = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p1.addr, align 8
  %eStart = getelementptr inbounds nuw %struct.Window, ptr %4, i32 0, i32 5
  %5 = load i8, ptr %eStart, align 1
  %conv4 = zext i8 %5 to i32
  %6 = load ptr, ptr %p2.addr, align 8
  %eStart5 = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 5
  %7 = load i8, ptr %eStart5, align 1
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp ne i32 %conv4, %conv6
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %8 = load ptr, ptr %p1.addr, align 8
  %eEnd = getelementptr inbounds nuw %struct.Window, ptr %8, i32 0, i32 6
  %9 = load i8, ptr %eEnd, align 2
  %conv11 = zext i8 %9 to i32
  %10 = load ptr, ptr %p2.addr, align 8
  %eEnd12 = getelementptr inbounds nuw %struct.Window, ptr %10, i32 0, i32 6
  %11 = load i8, ptr %eEnd12, align 2
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp ne i32 %conv11, %conv13
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  store i32 1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end10
  %12 = load ptr, ptr %p1.addr, align 8
  %eExclude = getelementptr inbounds nuw %struct.Window, ptr %12, i32 0, i32 8
  %13 = load i8, ptr %eExclude, align 4
  %conv18 = zext i8 %13 to i32
  %14 = load ptr, ptr %p2.addr, align 8
  %eExclude19 = getelementptr inbounds nuw %struct.Window, ptr %14, i32 0, i32 8
  %15 = load i8, ptr %eExclude19, align 4
  %conv20 = zext i8 %15 to i32
  %cmp21 = icmp ne i32 %conv18, %conv20
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end17
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end17
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %p1.addr, align 8
  %pStart = getelementptr inbounds nuw %struct.Window, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %pStart, align 8
  %19 = load ptr, ptr %p2.addr, align 8
  %pStart25 = getelementptr inbounds nuw %struct.Window, ptr %19, i32 0, i32 9
  %20 = load ptr, ptr %pStart25, align 8
  %call = call i32 @sqlite3ExprCompare(ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef -1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  store i32 1, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end24
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %p1.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.Window, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %pEnd, align 8
  %24 = load ptr, ptr %p2.addr, align 8
  %pEnd28 = getelementptr inbounds nuw %struct.Window, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %pEnd28, align 8
  %call29 = call i32 @sqlite3ExprCompare(ptr noundef %21, ptr noundef %23, ptr noundef %25, i32 noundef -1)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end27
  %26 = load ptr, ptr %p1.addr, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %pPartition, align 8
  %28 = load ptr, ptr %p2.addr, align 8
  %pPartition33 = getelementptr inbounds nuw %struct.Window, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %pPartition33, align 8
  %call34 = call i32 @sqlite3ExprListCompare(ptr noundef %27, ptr noundef %29, i32 noundef -1)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  store i32 1, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end32
  %30 = load ptr, ptr %p1.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %pOrderBy, align 8
  %32 = load ptr, ptr %p2.addr, align 8
  %pOrderBy38 = getelementptr inbounds nuw %struct.Window, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %pOrderBy38, align 8
  %call39 = call i32 @sqlite3ExprListCompare(ptr noundef %31, ptr noundef %33, i32 noundef -1)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  store i32 1, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end37
  %34 = load i32, ptr %bFilter.addr, align 4
  %tobool43 = icmp ne i32 %34, 0
  br i1 %tobool43, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.end42
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %p1.addr, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %36, i32 0, i32 13
  %37 = load ptr, ptr %pFilter, align 8
  %38 = load ptr, ptr %p2.addr, align 8
  %pFilter45 = getelementptr inbounds nuw %struct.Window, ptr %38, i32 0, i32 13
  %39 = load ptr, ptr %pFilter45, align 8
  %call46 = call i32 @sqlite3ExprCompare(ptr noundef %35, ptr noundef %37, ptr noundef %39, i32 noundef -1)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then44
  store i32 1, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.then44
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end42
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end50, %if.then48, %if.then41, %if.then36, %if.then31, %if.then26, %if.then23, %if.then16, %if.then9, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprListCompare(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
