; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3GetTempRange(ptr noundef %pParse, i32 noundef %nReg) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %nReg.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %nReg, ptr %nReg.addr, align 4
  %0 = load i32, ptr %nReg.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3GetTempReg(ptr noundef %1)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %iRangeReg = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 15
  %3 = load i32, ptr %iRangeReg, align 4
  store i32 %3, ptr %i, align 4
  %4 = load ptr, ptr %pParse.addr, align 8
  %nRangeReg = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 14
  %5 = load i32, ptr %nRangeReg, align 8
  store i32 %5, ptr %n, align 4
  %6 = load i32, ptr %nReg.addr, align 4
  %7 = load i32, ptr %n, align 4
  %cmp1 = icmp sle i32 %6, %7
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %8 = load i32, ptr %nReg.addr, align 4
  %9 = load ptr, ptr %pParse.addr, align 8
  %iRangeReg3 = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 15
  %10 = load i32, ptr %iRangeReg3, align 4
  %add = add nsw i32 %10, %8
  store i32 %add, ptr %iRangeReg3, align 4
  %11 = load i32, ptr %nReg.addr, align 4
  %12 = load ptr, ptr %pParse.addr, align 8
  %nRangeReg4 = getelementptr inbounds nuw %struct.Parse, ptr %12, i32 0, i32 14
  %13 = load i32, ptr %nRangeReg4, align 8
  %sub = sub nsw i32 %13, %11
  store i32 %sub, ptr %nRangeReg4, align 8
  br label %if.end8

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 18
  %15 = load i32, ptr %nMem, align 8
  %add5 = add nsw i32 %15, 1
  store i32 %add5, ptr %i, align 4
  %16 = load i32, ptr %nReg.addr, align 4
  %17 = load ptr, ptr %pParse.addr, align 8
  %nMem6 = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 18
  %18 = load i32, ptr %nMem6, align 8
  %add7 = add nsw i32 %18, %16
  store i32 %add7, ptr %nMem6, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %19 = load i32, ptr %i, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
