; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.530 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.806 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HaltConstraint(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef signext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3RowidConstraint(ptr noundef %pParse, i32 noundef %onError, ptr noundef %pTab) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %onError.addr = alloca i32, align 4
  %pTab.addr = alloca ptr, align 8
  %zMsg = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %onError, ptr %onError.addr, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 10
  %1 = load i16, ptr %iPKey, align 4
  %conv = sext i16 %1 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zName, align 8
  %6 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %aCol, align 8
  %8 = load ptr, ptr %pTab.addr, align 8
  %iPKey2 = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 10
  %9 = load i16, ptr %iPKey2, align 4
  %idxprom = sext i16 %9 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %7, i64 %idxprom
  %zName3 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 0
  %10 = load ptr, ptr %zName3, align 8
  %call = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %3, ptr noundef @.str.530, ptr noundef %5, ptr noundef %10)
  store ptr %call, ptr %zMsg, align 8
  store i32 1555, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %pParse.addr, align 8
  %db4 = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %db4, align 8
  %13 = load ptr, ptr %pTab.addr, align 8
  %zName5 = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zName5, align 8
  %call6 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %12, ptr noundef @.str.806, ptr noundef %14)
  store ptr %call6, ptr %zMsg, align 8
  store i32 2579, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load i32, ptr %rc, align 4
  %17 = load i32, ptr %onError.addr, align 4
  %18 = load ptr, ptr %zMsg, align 8
  call void @sqlite3HaltConstraint(ptr noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %18, i8 noundef signext -7, i8 noundef zeroext 2)
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
