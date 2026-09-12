; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden void @unixModeBit(ptr noundef %pFile, i8 noundef zeroext %mask, ptr noundef %pArg) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %mask.addr = alloca i8, align 1
  %pArg.addr = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i8 %mask, ptr %mask.addr, align 1
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %pArg.addr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pFile.addr, align 8
  %ctrlFlags = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 5
  %3 = load i16, ptr %ctrlFlags, align 2
  %conv = zext i16 %3 to i32
  %4 = load i8, ptr %mask.addr, align 1
  %conv1 = zext i8 %4 to i32
  %and = and i32 %conv, %conv1
  %cmp2 = icmp ne i32 %and, 0
  %conv3 = zext i1 %cmp2 to i32
  %5 = load ptr, ptr %pArg.addr, align 8
  store i32 %conv3, ptr %5, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %pArg.addr, align 8
  %7 = load i32, ptr %6, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then6, label %if.else12

if.then6:                                         ; preds = %if.else
  %8 = load i8, ptr %mask.addr, align 1
  %conv7 = zext i8 %8 to i32
  %not = xor i32 %conv7, -1
  %9 = load ptr, ptr %pFile.addr, align 8
  %ctrlFlags8 = getelementptr inbounds nuw %struct.unixFile, ptr %9, i32 0, i32 5
  %10 = load i16, ptr %ctrlFlags8, align 2
  %conv9 = zext i16 %10 to i32
  %and10 = and i32 %conv9, %not
  %conv11 = trunc i32 %and10 to i16
  store i16 %conv11, ptr %ctrlFlags8, align 2
  br label %if.end

if.else12:                                        ; preds = %if.else
  %11 = load i8, ptr %mask.addr, align 1
  %conv13 = zext i8 %11 to i32
  %12 = load ptr, ptr %pFile.addr, align 8
  %ctrlFlags14 = getelementptr inbounds nuw %struct.unixFile, ptr %12, i32 0, i32 5
  %13 = load i16, ptr %ctrlFlags14, align 2
  %conv15 = zext i16 %13 to i32
  %or = or i32 %conv15, %conv13
  %conv16 = trunc i32 %or to i16
  store i16 %conv16, ptr %ctrlFlags14, align 2
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then6
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
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
