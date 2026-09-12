; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstantNotJoin(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeAtInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprCodeFactorable(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %target) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %target.addr = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %target, ptr %target.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %okConstFactor = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 11
  %1 = load i8, ptr %okConstFactor, align 1
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3ExprIsConstantNotJoin(ptr noundef %2)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pParse.addr, align 8
  %4 = load ptr, ptr %pExpr.addr, align 8
  %5 = load i32, ptr %target.addr, align 4
  %call2 = call i32 @sqlite3ExprCodeAtInit(ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load ptr, ptr %pExpr.addr, align 8
  %8 = load i32, ptr %target.addr, align 4
  call void @sqlite3ExprCode(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
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
