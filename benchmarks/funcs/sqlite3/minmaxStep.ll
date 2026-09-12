; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemCopy(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_user_data(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MemCompare(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @minmaxStep(ptr noundef %context, i32 noundef %NotUsed, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %NotUsed.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pArg = alloca ptr, align 8
  %pBest = alloca ptr, align 8
  %max = alloca i32, align 4
  %cmp9 = alloca i32, align 4
  %pColl = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %NotUsed, ptr %NotUsed.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  store ptr %1, ptr %pArg, align 8
  %2 = load i32, ptr %NotUsed.addr, align 4
  %3 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %3, i32 noundef 56)
  store ptr %call, ptr %pBest, align 8
  %4 = load ptr, ptr %pBest, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end29

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pArg, align 8
  %call1 = call i32 @sqlite3_value_type(ptr noundef %5)
  %cmp = icmp eq i32 %call1, 5
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %pBest, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 1
  %7 = load i16, ptr %flags, align 8
  %tobool3 = icmp ne i16 %7, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  %8 = load ptr, ptr %context.addr, align 8
  call void @sqlite3SkipAccumulatorLoad(ptr noundef %8)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2
  br label %if.end29

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %pBest, align 8
  %flags6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 1
  %10 = load i16, ptr %flags6, align 8
  %tobool7 = icmp ne i16 %10, 0
  br i1 %tobool7, label %if.then8, label %if.else25

if.then8:                                         ; preds = %if.else
  %11 = load ptr, ptr %context.addr, align 8
  %call10 = call ptr @sqlite3GetFuncCollSeq(ptr noundef %11)
  store ptr %call10, ptr %pColl, align 8
  %12 = load ptr, ptr %context.addr, align 8
  %call11 = call ptr @sqlite3_user_data(ptr noundef %12)
  %cmp12 = icmp ne ptr %call11, null
  %conv = zext i1 %cmp12 to i32
  store i32 %conv, ptr %max, align 4
  %13 = load ptr, ptr %pBest, align 8
  %14 = load ptr, ptr %pArg, align 8
  %15 = load ptr, ptr %pColl, align 8
  %call13 = call i32 @sqlite3MemCompare(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  store i32 %call13, ptr %cmp9, align 4
  %16 = load i32, ptr %max, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then8
  %17 = load i32, ptr %cmp9, align 4
  %cmp15 = icmp slt i32 %17, 0
  br i1 %cmp15, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then8
  %18 = load i32, ptr %max, align 4
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %if.else23, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %lor.lhs.false
  %19 = load i32, ptr %cmp9, align 4
  %cmp19 = icmp sgt i32 %19, 0
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %land.lhs.true18, %land.lhs.true
  %20 = load ptr, ptr %pBest, align 8
  %21 = load ptr, ptr %pArg, align 8
  %call22 = call i32 @sqlite3VdbeMemCopy(ptr noundef %20, ptr noundef %21)
  br label %if.end24

if.else23:                                        ; preds = %land.lhs.true18, %lor.lhs.false
  %22 = load ptr, ptr %context.addr, align 8
  call void @sqlite3SkipAccumulatorLoad(ptr noundef %22)
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then21
  br label %if.end28

if.else25:                                        ; preds = %if.else
  %23 = load ptr, ptr %context.addr, align 8
  %call26 = call ptr @sqlite3_context_db_handle(ptr noundef %23)
  %24 = load ptr, ptr %pBest, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_value, ptr %24, i32 0, i32 9
  store ptr %call26, ptr %db, align 8
  %25 = load ptr, ptr %pBest, align 8
  %26 = load ptr, ptr %pArg, align 8
  %call27 = call i32 @sqlite3VdbeMemCopy(ptr noundef %25, ptr noundef %26)
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.end24
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetFuncCollSeq(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SkipAccumulatorLoad(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
