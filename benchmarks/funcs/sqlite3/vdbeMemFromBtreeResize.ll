; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreePayload(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemClearAndResize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeMemFromBtreeResize(ptr noundef %pCur, i32 noundef %offset, i32 noundef %amt, ptr noundef %pMem) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %amt.addr = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  store i32 %amt, ptr %amt.addr, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  store i16 1, ptr %flags, align 8
  %1 = load ptr, ptr %pCur.addr, align 8
  %call = call i64 @sqlite3BtreeMaxRecordSize(ptr noundef %1)
  %2 = load i32, ptr %offset.addr, align 4
  %3 = load i32, ptr %amt.addr, align 4
  %add = add i32 %2, %3
  %conv = zext i32 %add to i64
  %cmp = icmp slt i64 %call, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @sqlite3CorruptError(i32 noundef 75834)
  store i32 %call2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pMem.addr, align 8
  %5 = load i32, ptr %amt.addr, align 4
  %add3 = add i32 %5, 1
  %call4 = call i32 @sqlite3VdbeMemClearAndResize(ptr noundef %4, i32 noundef %add3)
  store i32 %call4, ptr %rc, align 4
  %cmp5 = icmp eq i32 0, %call4
  br i1 %cmp5, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCur.addr, align 8
  %7 = load i32, ptr %offset.addr, align 4
  %8 = load i32, ptr %amt.addr, align 4
  %9 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %z, align 8
  %call8 = call i32 @sqlite3BtreePayload(ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %10)
  store i32 %call8, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  %12 = load ptr, ptr %pMem.addr, align 8
  %z12 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %z12, align 8
  %14 = load i32, ptr %amt.addr, align 4
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %13, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %15 = load ptr, ptr %pMem.addr, align 8
  %flags13 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %15, i32 0, i32 1
  store i16 16, ptr %flags13, align 8
  %16 = load i32, ptr %amt.addr, align 4
  %17 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %17, i32 0, i32 4
  store i32 %16, ptr %n, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then7
  %18 = load ptr, ptr %pMem.addr, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %18)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %19 = load i32, ptr %rc, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3BtreeMaxRecordSize(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
