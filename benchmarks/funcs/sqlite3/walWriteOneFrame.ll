; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.WalWriter = type { ptr, ptr, i64, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @walWriteOneFrame(ptr noundef %p, ptr noundef %pPage, i32 noundef %nTruncate, i64 noundef %iOffset) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pPage.addr = alloca ptr, align 8
  %nTruncate.addr = alloca i32, align 4
  %iOffset.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %pData = alloca ptr, align 8
  %aFrame = alloca [24 x i8], align 16
  store ptr %p, ptr %p.addr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %nTruncate, ptr %nTruncate.addr, align 4
  store i64 %iOffset, ptr %iOffset.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %pData1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pData1, align 8
  store ptr %1, ptr %pData, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.WalWriter, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pWal, align 8
  %4 = load ptr, ptr %pPage.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %pgno, align 8
  %6 = load i32, ptr %nTruncate.addr, align 4
  %7 = load ptr, ptr %pData, align 8
  %arraydecay = getelementptr inbounds [24 x i8], ptr %aFrame, i64 0, i64 0
  call void @walEncodeFrame(ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %arraydecay)
  %8 = load ptr, ptr %p.addr, align 8
  %arraydecay2 = getelementptr inbounds [24 x i8], ptr %aFrame, i64 0, i64 0
  %9 = load i64, ptr %iOffset.addr, align 8
  %call = call i32 @walWriteToLog(ptr noundef %8, ptr noundef %arraydecay2, i32 noundef 24, i64 noundef %9)
  store i32 %call, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %p.addr, align 8
  %13 = load ptr, ptr %pData, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %szPage = getelementptr inbounds nuw %struct.WalWriter, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %szPage, align 4
  %16 = load i64, ptr %iOffset.addr, align 8
  %add = add i64 %16, 24
  %call3 = call i32 @walWriteToLog(ptr noundef %12, ptr noundef %13, i32 noundef %15, i64 noundef %add)
  store i32 %call3, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
declare hidden void @walEncodeFrame(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walWriteToLog(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
