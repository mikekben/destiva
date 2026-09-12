; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }

; Function Attrs: nounwind uwtable
define hidden i32 @SyDosTimeFormat(i32 noundef %nDosDate, ptr noundef %pOut) #0 {
entry:
  %nDosDate.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %nDate = alloca i16, align 2
  %nTime = alloca i16, align 2
  store i32 %nDosDate, ptr %nDosDate.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load i32, ptr %nDosDate.addr, align 4
  %shr = lshr i32 %0, 16
  %conv = trunc i32 %shr to i16
  store i16 %conv, ptr %nDate, align 2
  %1 = load i32, ptr %nDosDate.addr, align 4
  %and = and i32 %1, 65535
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, ptr %nTime, align 2
  %2 = load ptr, ptr %pOut.addr, align 8
  %tm_isdst = getelementptr inbounds nuw %struct.Sytm, ptr %2, i32 0, i32 8
  store i32 0, ptr %tm_isdst, align 8
  %3 = load i16, ptr %nDate, align 2
  %conv2 = zext i16 %3 to i32
  %shr3 = ashr i32 %conv2, 9
  %add = add nsw i32 1980, %shr3
  %4 = load ptr, ptr %pOut.addr, align 8
  %tm_year = getelementptr inbounds nuw %struct.Sytm, ptr %4, i32 0, i32 5
  store i32 %add, ptr %tm_year, align 4
  %5 = load i16, ptr %nDate, align 2
  %conv4 = zext i16 %5 to i32
  %rem = srem i32 %conv4, 512
  %shr5 = ashr i32 %rem, 5
  %6 = load ptr, ptr %pOut.addr, align 8
  %tm_mon = getelementptr inbounds nuw %struct.Sytm, ptr %6, i32 0, i32 4
  store i32 %shr5, ptr %tm_mon, align 8
  %7 = load i16, ptr %nDate, align 2
  %conv6 = zext i16 %7 to i32
  %rem7 = srem i32 %conv6, 512
  %and8 = and i32 %rem7, 31
  %8 = load ptr, ptr %pOut.addr, align 8
  %tm_mday = getelementptr inbounds nuw %struct.Sytm, ptr %8, i32 0, i32 3
  store i32 %and8, ptr %tm_mday, align 4
  %9 = load i16, ptr %nTime, align 2
  %conv9 = zext i16 %9 to i32
  %shr10 = ashr i32 %conv9, 11
  %10 = load ptr, ptr %pOut.addr, align 8
  %tm_hour = getelementptr inbounds nuw %struct.Sytm, ptr %10, i32 0, i32 2
  store i32 %shr10, ptr %tm_hour, align 8
  %11 = load i16, ptr %nTime, align 2
  %conv11 = zext i16 %11 to i32
  %rem12 = srem i32 %conv11, 2048
  %shr13 = ashr i32 %rem12, 5
  %12 = load ptr, ptr %pOut.addr, align 8
  %tm_min = getelementptr inbounds nuw %struct.Sytm, ptr %12, i32 0, i32 1
  store i32 %shr13, ptr %tm_min, align 4
  %13 = load i16, ptr %nTime, align 2
  %conv14 = zext i16 %13 to i32
  %rem15 = srem i32 %conv14, 2048
  %and16 = and i32 %rem15, 31
  %shl = shl i32 %and16, 1
  %14 = load ptr, ptr %pOut.addr, align 8
  %tm_sec = getelementptr inbounds nuw %struct.Sytm, ptr %14, i32 0, i32 0
  store i32 %shl, ptr %tm_sec, align 8
  ret i32 0
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
