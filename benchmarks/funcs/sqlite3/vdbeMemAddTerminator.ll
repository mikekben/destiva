; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemGrow(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeMemAddTerminator(ptr noundef %pMem) #0 {
entry:
  %retval = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %1 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %n, align 4
  %add = add nsw i32 %2, 3
  %call = call i32 @sqlite3VdbeMemGrow(ptr noundef %0, i32 noundef %add, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %z, align 8
  %5 = load ptr, ptr %pMem.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %n1, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %7 = load ptr, ptr %pMem.addr, align 8
  %z2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %z2, align 8
  %9 = load ptr, ptr %pMem.addr, align 8
  %n3 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %n3, align 4
  %add4 = add nsw i32 %10, 1
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 %idxprom5
  store i8 0, ptr %arrayidx6, align 1
  %11 = load ptr, ptr %pMem.addr, align 8
  %z7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %z7, align 8
  %13 = load ptr, ptr %pMem.addr, align 8
  %n8 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %n8, align 4
  %add9 = add nsw i32 %14, 2
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %12, i64 %idxprom10
  store i8 0, ptr %arrayidx11, align 1
  %15 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %15, i32 0, i32 1
  %16 = load i16, ptr %flags, align 8
  %conv = zext i16 %16 to i32
  %or = or i32 %conv, 512
  %conv12 = trunc i32 %or to i16
  store i16 %conv12, ptr %flags, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
