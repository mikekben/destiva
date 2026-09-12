; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.712 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.713 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ClearStatTables(ptr noundef %pParse, i32 noundef %iDb, ptr noundef %zType, ptr noundef %zName) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %zType.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %zDbName = alloca ptr, align 8
  %zTab = alloca [24 x i8], align 16
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %zType, ptr %zType.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %aDb, align 8
  %3 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %2, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %4 = load ptr, ptr %zDbSName, align 8
  store ptr %4, ptr %zDbName, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %5, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [24 x i8], ptr %zTab, i64 0, i64 0
  %6 = load i32, ptr %i, align 4
  %call = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 24, ptr noundef %arraydecay, ptr noundef @.str.712, i32 noundef %6)
  %7 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db1, align 8
  %arraydecay2 = getelementptr inbounds [24 x i8], ptr %zTab, i64 0, i64 0
  %9 = load ptr, ptr %zDbName, align 8
  %call3 = call ptr @sqlite3FindTable(ptr noundef %8, ptr noundef %arraydecay2, ptr noundef %9)
  %tobool = icmp ne ptr %call3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %zDbName, align 8
  %arraydecay4 = getelementptr inbounds [24 x i8], ptr %zTab, i64 0, i64 0
  %12 = load ptr, ptr %zType.addr, align 8
  %13 = load ptr, ptr %zName.addr, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %10, ptr noundef @.str.713, ptr noundef %11, ptr noundef %arraydecay4, ptr noundef %12, ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
