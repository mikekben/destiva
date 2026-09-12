; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprDeleteNN(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8404992
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end23, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pLeft, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op, align 8
  %conv = zext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 173
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %pLeft4 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pLeft4, align 8
  call void @sqlite3ExprDeleteNN(ptr noundef %6, ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %9 = load ptr, ptr %p.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pRight, align 8
  %tobool5 = icmp ne ptr %10, null
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %pRight7 = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %pRight7, align 8
  call void @sqlite3ExprDeleteNN(ptr noundef %11, ptr noundef %13)
  br label %if.end22

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %p.addr, align 8
  %flags8 = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %flags8, align 4
  %and9 = and i32 %15, 2048
  %cmp10 = icmp ne i32 %and9, 0
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  %16 = load ptr, ptr %db.addr, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %x, align 8
  call void @sqlite3SelectDelete(ptr noundef %16, ptr noundef %18)
  br label %if.end21

if.else13:                                        ; preds = %if.else
  %19 = load ptr, ptr %db.addr, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %x14 = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %x14, align 8
  call void @sqlite3ExprListDelete(ptr noundef %19, ptr noundef %21)
  %22 = load ptr, ptr %p.addr, align 8
  %flags15 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %flags15, align 4
  %and16 = and i32 %23, 16777216
  %cmp17 = icmp ne i32 %and16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else13
  %24 = load ptr, ptr %db.addr, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 14
  %26 = load ptr, ptr %y, align 8
  call void @sqlite3WindowDelete(ptr noundef %24, ptr noundef %26)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.else13
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then12
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then6
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %entry
  %27 = load ptr, ptr %p.addr, align 8
  %flags24 = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %flags24, align 4
  %and25 = and i32 %28, 65536
  %cmp26 = icmp ne i32 %and25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  %29 = load ptr, ptr %db.addr, align 8
  %30 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %u, align 8
  call void @sqlite3DbFree(ptr noundef %29, ptr noundef %31)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end23
  %32 = load ptr, ptr %p.addr, align 8
  %flags30 = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %flags30, align 4
  %and31 = and i32 %33, 134217728
  %cmp32 = icmp ne i32 %and31, 0
  br i1 %cmp32, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end29
  %34 = load ptr, ptr %db.addr, align 8
  %35 = load ptr, ptr %p.addr, align 8
  call void @sqlite3DbFreeNN(ptr noundef %34, ptr noundef %35)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end29
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowDelete(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
