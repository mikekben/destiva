; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemCopy(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ValueNew(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueApplyAffinity(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VdbeGetBoundValue(ptr noundef %v, i32 noundef %iVar, i8 noundef zeroext %aff) #0 {
entry:
  %retval = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %iVar.addr = alloca i32, align 4
  %aff.addr = alloca i8, align 1
  %pMem = alloca ptr, align 8
  %pRet = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 %iVar, ptr %iVar.addr, align 4
  store i8 %aff, ptr %aff.addr, align 1
  %0 = load ptr, ptr %v.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8
  %aVar = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 22
  %2 = load ptr, ptr %aVar, align 8
  %3 = load i32, ptr %iVar.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %pMem, align 8
  %4 = load ptr, ptr %pMem, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %flags, align 8
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1
  %cmp = icmp eq i32 0, %and
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %v.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3ValueNew(ptr noundef %7)
  store ptr %call, ptr %pRet, align 8
  %8 = load ptr, ptr %pRet, align 8
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %9 = load ptr, ptr %pRet, align 8
  %10 = load ptr, ptr %pMem, align 8
  %call5 = call i32 @sqlite3VdbeMemCopy(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %pRet, align 8
  %12 = load i8, ptr %aff.addr, align 1
  call void @sqlite3ValueApplyAffinity(ptr noundef %11, i8 noundef zeroext %12, i8 noundef zeroext 1)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  %13 = load ptr, ptr %pRet, align 8
  store ptr %13, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.end
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
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
