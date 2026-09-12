; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.581 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.582 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3EndTransaction(ptr noundef %pParse, i32 noundef %eType) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %eType.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %isRollback = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %eType, ptr %eType.addr, align 4
  %0 = load i32, ptr %eType.addr, align 4
  %cmp = icmp eq i32 %0, 12
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %isRollback, align 4
  %1 = load ptr, ptr %pParse.addr, align 8
  %2 = load i32, ptr %isRollback, align 4
  %tobool = icmp ne i32 %2, 0
  %3 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.581, ptr @.str.582
  %call = call i32 @sqlite3AuthCheck(ptr noundef %1, i32 noundef 22, ptr noundef %cond, ptr noundef null, ptr noundef null)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end6

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %call2 = call ptr @sqlite3GetVdbe(ptr noundef %4)
  store ptr %call2, ptr %v, align 8
  %5 = load ptr, ptr %v, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %v, align 8
  %7 = load i32, ptr %isRollback, align 4
  %call5 = call i32 @sqlite3VdbeAddOp2(ptr noundef %6, i32 noundef 1, i32 noundef 1, i32 noundef %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

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
