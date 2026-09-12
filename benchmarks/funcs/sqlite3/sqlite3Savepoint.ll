; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@sqlite3Savepoint.az = external hidden constant [3 x ptr], align 16

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Savepoint(ptr noundef %pParse, i32 noundef %op, ptr noundef %pName) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pName.addr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %v = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pName, ptr %pName.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %2 = load ptr, ptr %pName.addr, align 8
  %call = call ptr @sqlite3NameFromToken(ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %zName, align 8
  %3 = load ptr, ptr %zName, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %call1 = call ptr @sqlite3GetVdbe(ptr noundef %4)
  store ptr %call1, ptr %v, align 8
  %5 = load ptr, ptr %v, align 8
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then5

lor.lhs.false:                                    ; preds = %if.then
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load i32, ptr %op.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x ptr], ptr @sqlite3Savepoint.az, i64 0, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = load ptr, ptr %zName, align 8
  %call3 = call i32 @sqlite3AuthCheck(ptr noundef %6, i32 noundef 32, ptr noundef %8, ptr noundef %9, ptr noundef null)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  %10 = load ptr, ptr %pParse.addr, align 8
  %db6 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %db6, align 8
  %12 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %11, ptr noundef %12)
  br label %if.end8

if.end:                                           ; preds = %lor.lhs.false
  %13 = load ptr, ptr %v, align 8
  %14 = load i32, ptr %op.addr, align 4
  %15 = load ptr, ptr %zName, align 8
  %call7 = call i32 @sqlite3VdbeAddOp4(ptr noundef %13, i32 noundef 0, i32 noundef %14, i32 noundef 0, i32 noundef 0, ptr noundef %15, i32 noundef -7)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then5, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
