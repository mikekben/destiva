; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.TriggerPrg = type { ptr, ptr, ptr, i32, [2 x i32] }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @getRowTrigger(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CodeRowTriggerDirect(ptr noundef %pParse, ptr noundef %p, ptr noundef %pTab, i32 noundef %reg, i32 noundef %orconf, i32 noundef %ignoreJump) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %orconf.addr = alloca i32, align 4
  %ignoreJump.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %pPrg = alloca ptr, align 8
  %bRecursive = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  store i32 %orconf, ptr %orconf.addr, align 4
  store i32 %ignoreJump, ptr %ignoreJump.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  %1 = load ptr, ptr %pParse.addr, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %pTab.addr, align 8
  %4 = load i32, ptr %orconf.addr, align 4
  %call1 = call ptr @getRowTrigger(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  store ptr %call1, ptr %pPrg, align 8
  %5 = load ptr, ptr %pPrg, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Trigger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zName, align 8
  %tobool2 = icmp ne ptr %7, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %8 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 7
  %10 = load i64, ptr %flags, align 8
  %and = and i64 %10, 8192
  %cmp = icmp eq i64 0, %and
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %11 = phi i1 [ false, %if.then ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, ptr %bRecursive, align 4
  %12 = load ptr, ptr %v, align 8
  %13 = load i32, ptr %reg.addr, align 4
  %14 = load i32, ptr %ignoreJump.addr, align 4
  %15 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 18
  %16 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %nMem, align 8
  %17 = load ptr, ptr %pPrg, align 8
  %pProgram = getelementptr inbounds nuw %struct.TriggerPrg, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pProgram, align 8
  %call3 = call i32 @sqlite3VdbeAddOp4(ptr noundef %12, i32 noundef 45, i32 noundef %13, i32 noundef %14, i32 noundef %inc, ptr noundef %18, i32 noundef -4)
  %19 = load ptr, ptr %v, align 8
  %20 = load i32, ptr %bRecursive, align 4
  %conv = trunc i32 %20 to i8
  %conv4 = zext i8 %conv to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %19, i16 noundef zeroext %conv4)
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
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
