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

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_vappendf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VMPrintf(ptr noundef %db, ptr noundef %zFormat, ptr noundef %ap) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %zBase = alloca [70 x i8], align 16
  %acc = alloca %struct.sqlite3_str, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %arraydecay = getelementptr inbounds [70 x i8], ptr %zBase, i64 0, i64 0
  %1 = load ptr, ptr %db.addr, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %2 = load i32, ptr %arrayidx, align 4
  call void @sqlite3StrAccumInit(ptr noundef %acc, ptr noundef %0, ptr noundef %arraydecay, i32 noundef 70, i32 noundef %2)
  %printfFlags = getelementptr inbounds nuw %struct.sqlite3_str, ptr %acc, i32 0, i32 6
  store i8 1, ptr %printfFlags, align 1
  %3 = load ptr, ptr %zFormat.addr, align 8
  %4 = load ptr, ptr %ap.addr, align 8
  call void @sqlite3_str_vappendf(ptr noundef %acc, ptr noundef %3, ptr noundef %4)
  %call = call ptr @sqlite3StrAccumFinish(ptr noundef %acc)
  store ptr %call, ptr %z, align 8
  %accError = getelementptr inbounds nuw %struct.sqlite3_str, ptr %acc, i32 0, i32 5
  %5 = load i8, ptr %accError, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %z, align 8
  ret ptr %7
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
