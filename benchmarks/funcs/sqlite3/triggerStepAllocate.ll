; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3RenameTokenMap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Dequote(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @triggerStepAllocate(ptr noundef %pParse, i8 noundef zeroext %op, ptr noundef %pName, ptr noundef %zStart, ptr noundef %zEnd) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %op.addr = alloca i8, align 1
  %pName.addr = alloca ptr, align 8
  %zStart.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pTriggerStep = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i8 %op, ptr %op.addr, align 1
  store ptr %pName, ptr %pName.addr, align 8
  store ptr %zStart, ptr %zStart.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %3 = load ptr, ptr %pName.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %n, align 8
  %conv = zext i32 %4 to i64
  %add = add i64 88, %conv
  %add2 = add i64 %add, 1
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %2, i64 noundef %add2)
  store ptr %call, ptr %pTriggerStep, align 8
  %5 = load ptr, ptr %pTriggerStep, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pTriggerStep, align 8
  %arrayidx = getelementptr inbounds %struct.TriggerStep, ptr %6, i64 1
  store ptr %arrayidx, ptr %z, align 8
  %7 = load ptr, ptr %z, align 8
  %8 = load ptr, ptr %pName.addr, align 8
  %z3 = getelementptr inbounds nuw %struct.Token, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %z3, align 8
  %10 = load ptr, ptr %pName.addr, align 8
  %n4 = getelementptr inbounds nuw %struct.Token, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %n4, align 8
  %conv5 = zext i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %9, i64 %conv5, i1 false)
  %12 = load ptr, ptr %z, align 8
  call void @sqlite3Dequote(ptr noundef %12)
  %13 = load ptr, ptr %z, align 8
  %14 = load ptr, ptr %pTriggerStep, align 8
  %zTarget = getelementptr inbounds nuw %struct.TriggerStep, ptr %14, i32 0, i32 4
  store ptr %13, ptr %zTarget, align 8
  %15 = load i8, ptr %op.addr, align 1
  %16 = load ptr, ptr %pTriggerStep, align 8
  %op6 = getelementptr inbounds nuw %struct.TriggerStep, ptr %16, i32 0, i32 0
  store i8 %15, ptr %op6, align 8
  %17 = load ptr, ptr %db, align 8
  %18 = load ptr, ptr %zStart.addr, align 8
  %19 = load ptr, ptr %zEnd.addr, align 8
  %call7 = call ptr @triggerSpanDup(ptr noundef %17, ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %pTriggerStep, align 8
  %zSpan = getelementptr inbounds nuw %struct.TriggerStep, ptr %20, i32 0, i32 9
  store ptr %call7, ptr %zSpan, align 8
  %21 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %21, i32 0, i32 51
  %22 = load i8, ptr %eParseMode, align 4
  %conv8 = zext i8 %22 to i32
  %cmp = icmp sge i32 %conv8, 2
  br i1 %cmp, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %pTriggerStep, align 8
  %zTarget11 = getelementptr inbounds nuw %struct.TriggerStep, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %zTarget11, align 8
  %26 = load ptr, ptr %pName.addr, align 8
  %call12 = call ptr @sqlite3RenameTokenMap(ptr noundef %23, ptr noundef %25, ptr noundef %26)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %27 = load ptr, ptr %pTriggerStep, align 8
  ret ptr %27
}

; Function Attrs: nounwind uwtable
declare hidden ptr @triggerSpanDup(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
