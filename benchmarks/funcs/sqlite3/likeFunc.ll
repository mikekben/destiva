; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.compareInfo = type { i8, i8, i8, i8 }

@.str.871 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.872 = external hidden unnamed_addr constant [45 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_user_data(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @patternCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Utf8Read(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Utf8CharLen(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @likeFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zA = alloca ptr, align 8
  %zB = alloca ptr, align 8
  %escape = alloca i32, align 4
  %nPat = alloca i32, align 4
  %db = alloca ptr, align 8
  %pInfo = alloca ptr, align 8
  %zEsc = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_context_db_handle(ptr noundef %0)
  store ptr %call, ptr %db, align 8
  %1 = load ptr, ptr %context.addr, align 8
  %call1 = call ptr @sqlite3_user_data(ptr noundef %1)
  store ptr %call1, ptr %pInfo, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call2 = call i32 @sqlite3_value_bytes(ptr noundef %3)
  store i32 %call2, ptr %nPat, align 4
  %4 = load i32, ptr %nPat, align 4
  %5 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 33
  %arrayidx3 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 8
  %6 = load i32, ptr %arrayidx3, align 4
  %cmp = icmp sgt i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %7, ptr noundef @.str.871, i32 noundef -1)
  br label %if.end26

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %argc.addr, align 4
  %cmp4 = icmp eq i32 %8, 3
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 2
  %10 = load ptr, ptr %arrayidx6, align 8
  %call7 = call ptr @sqlite3_value_text(ptr noundef %10)
  store ptr %call7, ptr %zEsc, align 8
  %11 = load ptr, ptr %zEsc, align 8
  %cmp8 = icmp eq ptr %11, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then5
  br label %if.end26

if.end10:                                         ; preds = %if.then5
  %12 = load ptr, ptr %zEsc, align 8
  %call11 = call i32 @sqlite3Utf8CharLen(ptr noundef %12, i32 noundef -1)
  %cmp12 = icmp ne i32 %call11, 1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %13 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %13, ptr noundef @.str.872, i32 noundef -1)
  br label %if.end26

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @sqlite3Utf8Read(ptr noundef %zEsc)
  store i32 %call15, ptr %escape, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %pInfo, align 8
  %matchSet = getelementptr inbounds nuw %struct.compareInfo, ptr %14, i32 0, i32 2
  %15 = load i8, ptr %matchSet, align 1
  %conv = zext i8 %15 to i32
  store i32 %conv, ptr %escape, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end14
  %16 = load ptr, ptr %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %16, i64 0
  %17 = load ptr, ptr %arrayidx17, align 8
  %call18 = call ptr @sqlite3_value_text(ptr noundef %17)
  store ptr %call18, ptr %zB, align 8
  %18 = load ptr, ptr %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %18, i64 1
  %19 = load ptr, ptr %arrayidx19, align 8
  %call20 = call ptr @sqlite3_value_text(ptr noundef %19)
  store ptr %call20, ptr %zA, align 8
  %20 = load ptr, ptr %zA, align 8
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end16
  %21 = load ptr, ptr %zB, align 8
  %tobool21 = icmp ne ptr %21, null
  br i1 %tobool21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %context.addr, align 8
  %23 = load ptr, ptr %zB, align 8
  %24 = load ptr, ptr %zA, align 8
  %25 = load ptr, ptr %pInfo, align 8
  %26 = load i32, ptr %escape, align 4
  %call23 = call i32 @patternCompare(ptr noundef %23, ptr noundef %24, ptr noundef %25, i32 noundef %26)
  %cmp24 = icmp eq i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  call void @sqlite3_result_int(ptr noundef %22, i32 noundef %conv25)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %land.lhs.true, %if.end16, %if.then13, %if.then9, %if.then
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
