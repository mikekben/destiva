; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePayloadFetch(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemFromBtree(ptr noundef %pCur, i32 noundef %offset, i32 noundef %amt, ptr noundef %pMem) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %amt.addr = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %zData = alloca ptr, align 8
  %available = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  store i32 %amt, ptr %amt.addr, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  store i32 0, ptr %available, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pCur.addr, align 8
  %call = call ptr @sqlite3BtreePayloadFetch(ptr noundef %0, ptr noundef %available)
  store ptr %call, ptr %zData, align 8
  %1 = load i32, ptr %offset.addr, align 4
  %2 = load i32, ptr %amt.addr, align 4
  %add = add i32 %1, %2
  %3 = load i32, ptr %available, align 4
  %cmp = icmp ule i32 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %zData, align 8
  %5 = load i32, ptr %offset.addr, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 5
  store ptr %arrayidx, ptr %z, align 8
  %7 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 1
  store i16 4112, ptr %flags, align 8
  %8 = load i32, ptr %amt.addr, align 4
  %9 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 4
  store i32 %8, ptr %n, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %pCur.addr, align 8
  %11 = load i32, ptr %offset.addr, align 4
  %12 = load i32, ptr %amt.addr, align 4
  %13 = load ptr, ptr %pMem.addr, align 8
  %call1 = call i32 @vdbeMemFromBtreeResize(ptr noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeMemFromBtreeResize(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
