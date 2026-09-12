; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @transferParseError(ptr noundef %pTo, ptr noundef %pFrom) #0 {
entry:
  %pTo.addr = alloca ptr, align 8
  %pFrom.addr = alloca ptr, align 8
  store ptr %pTo, ptr %pTo.addr, align 8
  store ptr %pFrom, ptr %pFrom.addr, align 8
  %0 = load ptr, ptr %pTo.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 16
  %1 = load i32, ptr %nErr, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pFrom.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %zErrMsg, align 8
  %4 = load ptr, ptr %pTo.addr, align 8
  %zErrMsg1 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 1
  store ptr %3, ptr %zErrMsg1, align 8
  %5 = load ptr, ptr %pFrom.addr, align 8
  %nErr2 = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %nErr2, align 8
  %7 = load ptr, ptr %pTo.addr, align 8
  %nErr3 = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 16
  store i32 %6, ptr %nErr3, align 8
  %8 = load ptr, ptr %pFrom.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %rc, align 8
  %10 = load ptr, ptr %pTo.addr, align 8
  %rc4 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 3
  store i32 %9, ptr %rc4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %pFrom.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %db, align 8
  %13 = load ptr, ptr %pFrom.addr, align 8
  %zErrMsg5 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %zErrMsg5, align 8
  call void @sqlite3DbFree(ptr noundef %12, ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
