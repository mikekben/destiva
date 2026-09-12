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
%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @createModule(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_drop_modules(ptr noundef %db, ptr noundef %azNames) #1 {
entry:
  %db.addr = alloca ptr, align 8
  %azNames.addr = alloca ptr, align 8
  %pThis = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  %ii = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %azNames, ptr %azNames.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 68
  %first = getelementptr inbounds nuw %struct.Hash, ptr %aModule, i32 0, i32 2
  %1 = load ptr, ptr %first, align 8
  store ptr %1, ptr %pThis, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %2 = load ptr, ptr %pThis, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pThis, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %data, align 8
  store ptr %4, ptr %pMod, align 8
  %5 = load ptr, ptr %pThis, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next, align 8
  store ptr %6, ptr %pNext, align 8
  %7 = load ptr, ptr %azNames.addr, align 8
  %tobool1 = icmp ne ptr %7, null
  br i1 %tobool1, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  store i32 0, ptr %ii, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %8 = load ptr, ptr %azNames.addr, align 8
  %9 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %10, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond2
  %11 = load ptr, ptr %azNames.addr, align 8
  %12 = load i32, ptr %ii, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %11, i64 %idxprom3
  %13 = load ptr, ptr %arrayidx4, align 8
  %14 = load ptr, ptr %pMod, align 8
  %zName = getelementptr inbounds nuw %struct.Module, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %zName, align 8
  %call = call i32 @strcmp(ptr noundef %13, ptr noundef %15) #2
  %cmp5 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond2
  %16 = phi i1 [ false, %for.cond2 ], [ %cmp5, %land.rhs ]
  br i1 %16, label %for.body6, label %for.end

for.body6:                                        ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %17 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %azNames.addr, align 8
  %19 = load i32, ptr %ii, align 4
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %18, i64 %idxprom7
  %20 = load ptr, ptr %arrayidx8, align 8
  %cmp9 = icmp ne ptr %20, null
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %for.end
  br label %for.inc14

if.end:                                           ; preds = %for.end
  br label %if.end11

if.end11:                                         ; preds = %if.end, %for.body
  %21 = load ptr, ptr %db.addr, align 8
  %22 = load ptr, ptr %pMod, align 8
  %zName12 = getelementptr inbounds nuw %struct.Module, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %zName12, align 8
  %call13 = call i32 @createModule(ptr noundef %21, ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %for.inc14

for.inc14:                                        ; preds = %if.end11, %if.then10
  %24 = load ptr, ptr %pNext, align 8
  store ptr %24, ptr %pThis, align 8
  br label %for.cond, !llvm.loop !8

for.end15:                                        ; preds = %for.cond
  ret i32 0
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !7}
