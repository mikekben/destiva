; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.670 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @groupConcatStep(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zVal = alloca ptr, align 8
  %pAccum = alloca ptr, align 8
  %zSep = alloca ptr, align 8
  %nVal = alloca i32, align 4
  %nSep = alloca i32, align 4
  %db = alloca ptr, align 8
  %firstTerm = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %1)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end28

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8
  %call1 = call ptr @sqlite3_aggregate_context(ptr noundef %2, i32 noundef 32)
  store ptr %call1, ptr %pAccum, align 8
  %3 = load ptr, ptr %pAccum, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then2, label %if.end28

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %context.addr, align 8
  %call3 = call ptr @sqlite3_context_db_handle(ptr noundef %4)
  store ptr %call3, ptr %db, align 8
  %5 = load ptr, ptr %pAccum, align 8
  %mxAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %mxAlloc, align 4
  %cmp4 = icmp eq i32 %6, 0
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, ptr %firstTerm, align 4
  %7 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 33
  %arrayidx5 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %8 = load i32, ptr %arrayidx5, align 4
  %9 = load ptr, ptr %pAccum, align 8
  %mxAlloc6 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %9, i32 0, i32 3
  store i32 %8, ptr %mxAlloc6, align 4
  %10 = load i32, ptr %firstTerm, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.end20, label %if.then8

if.then8:                                         ; preds = %if.then2
  %11 = load i32, ptr %argc.addr, align 4
  %cmp9 = icmp eq i32 %11, 2
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx12, align 8
  %call13 = call ptr @sqlite3_value_text(ptr noundef %13)
  store ptr %call13, ptr %zSep, align 8
  %14 = load ptr, ptr %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx14, align 8
  %call15 = call i32 @sqlite3_value_bytes(ptr noundef %15)
  store i32 %call15, ptr %nSep, align 4
  br label %if.end16

if.else:                                          ; preds = %if.then8
  store ptr @.str.670, ptr %zSep, align 8
  store i32 1, ptr %nSep, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %16 = load ptr, ptr %zSep, align 8
  %tobool17 = icmp ne ptr %16, null
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  %17 = load ptr, ptr %pAccum, align 8
  %18 = load ptr, ptr %zSep, align 8
  %19 = load i32, ptr %nSep, align 4
  call void @sqlite3_str_append(ptr noundef %17, ptr noundef %18, i32 noundef %19)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then2
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %20, i64 0
  %21 = load ptr, ptr %arrayidx21, align 8
  %call22 = call ptr @sqlite3_value_text(ptr noundef %21)
  store ptr %call22, ptr %zVal, align 8
  %22 = load ptr, ptr %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %22, i64 0
  %23 = load ptr, ptr %arrayidx23, align 8
  %call24 = call i32 @sqlite3_value_bytes(ptr noundef %23)
  store i32 %call24, ptr %nVal, align 4
  %24 = load ptr, ptr %zVal, align 8
  %tobool25 = icmp ne ptr %24, null
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end20
  %25 = load ptr, ptr %pAccum, align 8
  %26 = load ptr, ptr %zVal, align 8
  %27 = load i32, ptr %nVal, align 4
  call void @sqlite3_str_append(ptr noundef %25, ptr noundef %26, i32 noundef %27)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end20
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end, %if.then
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
