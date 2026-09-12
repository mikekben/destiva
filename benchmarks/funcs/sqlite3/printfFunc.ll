; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PrintfArguments = type { i32, i32, ptr }
%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @printfFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %x = alloca %struct.PrintfArguments, align 8
  %str = alloca %struct.sqlite3_str, align 8
  %zFormat = alloca ptr, align 8
  %n = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_context_db_handle(ptr noundef %0)
  store ptr %call, ptr %db, align 8
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sge i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @sqlite3_value_text(ptr noundef %3)
  store ptr %call1, ptr %zFormat, align 8
  %cmp2 = icmp ne ptr %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %4, 1
  %nArg = getelementptr inbounds nuw %struct.PrintfArguments, ptr %x, i32 0, i32 0
  store i32 %sub, ptr %nArg, align 8
  %nUsed = getelementptr inbounds nuw %struct.PrintfArguments, ptr %x, i32 0, i32 1
  store i32 0, ptr %nUsed, align 4
  %5 = load ptr, ptr %argv.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %5, i64 1
  %apArg = getelementptr inbounds nuw %struct.PrintfArguments, ptr %x, i32 0, i32 2
  store ptr %add.ptr, ptr %apArg, align 8
  %6 = load ptr, ptr %db, align 8
  %7 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 33
  %arrayidx3 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %8 = load i32, ptr %arrayidx3, align 4
  call void @sqlite3StrAccumInit(ptr noundef %str, ptr noundef %6, ptr noundef null, i32 noundef 0, i32 noundef %8)
  %printfFlags = getelementptr inbounds nuw %struct.sqlite3_str, ptr %str, i32 0, i32 6
  store i8 2, ptr %printfFlags, align 1
  %9 = load ptr, ptr %zFormat, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %str, ptr noundef %9, ptr noundef %x)
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %str, i32 0, i32 4
  %10 = load i32, ptr %nChar, align 8
  store i32 %10, ptr %n, align 4
  %11 = load ptr, ptr %context.addr, align 8
  %call4 = call ptr @sqlite3StrAccumFinish(ptr noundef %str)
  %12 = load i32, ptr %n, align 4
  call void @sqlite3_result_text(ptr noundef %11, ptr noundef %call4, i32 noundef %12, ptr noundef @sqlite3MallocSize)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
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
