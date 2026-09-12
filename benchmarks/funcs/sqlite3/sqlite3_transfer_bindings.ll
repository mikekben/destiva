; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_transfer_bindings(ptr noundef %pFromStmt, ptr noundef %pToStmt) #0 {
entry:
  %retval = alloca i32, align 4
  %pFromStmt.addr = alloca ptr, align 8
  %pToStmt.addr = alloca ptr, align 8
  %pFrom = alloca ptr, align 8
  %pTo = alloca ptr, align 8
  store ptr %pFromStmt, ptr %pFromStmt.addr, align 8
  store ptr %pToStmt, ptr %pToStmt.addr, align 8
  %0 = load ptr, ptr %pFromStmt.addr, align 8
  store ptr %0, ptr %pFrom, align 8
  %1 = load ptr, ptr %pToStmt.addr, align 8
  store ptr %1, ptr %pTo, align 8
  %2 = load ptr, ptr %pFrom, align 8
  %nVar = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 4
  %3 = load i16, ptr %nVar, align 8
  %conv = sext i16 %3 to i32
  %4 = load ptr, ptr %pTo, align 8
  %nVar1 = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 4
  %5 = load i16, ptr %nVar1, align 8
  %conv2 = sext i16 %5 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pTo, align 8
  %expmask = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 46
  %7 = load i32, ptr %expmask, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pTo, align 8
  %expired = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 35
  %bf.load = load i16, ptr %expired, align 1
  %bf.clear = and i16 %bf.load, -4
  %bf.set = or i16 %bf.clear, 1
  store i16 %bf.set, ptr %expired, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %9 = load ptr, ptr %pFrom, align 8
  %expmask6 = getelementptr inbounds nuw %struct.Vdbe, ptr %9, i32 0, i32 46
  %10 = load i32, ptr %expmask6, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end5
  %11 = load ptr, ptr %pFrom, align 8
  %expired9 = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 35
  %bf.load10 = load i16, ptr %expired9, align 1
  %bf.clear11 = and i16 %bf.load10, -4
  %bf.set12 = or i16 %bf.clear11, 1
  store i16 %bf.set12, ptr %expired9, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end5
  %12 = load ptr, ptr %pFromStmt.addr, align 8
  %13 = load ptr, ptr %pToStmt.addr, align 8
  %call = call i32 @sqlite3TransferBindings(ptr noundef %12, ptr noundef %13)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TransferBindings(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
