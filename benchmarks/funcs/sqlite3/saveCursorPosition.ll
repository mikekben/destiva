; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden i32 @saveCursorPosition(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %eState, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %eState2 = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 0
  store i8 0, ptr %eState2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %pCur.addr, align 8
  %skipNext = getelementptr inbounds nuw %struct.BtCursor, ptr %3, i32 0, i32 4
  store i32 0, ptr %skipNext, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @saveCursorKey(ptr noundef %4)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCur.addr, align 8
  call void @btreeReleaseAllCursorPages(ptr noundef %6)
  %7 = load ptr, ptr %pCur.addr, align 8
  %eState6 = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 0
  store i8 3, ptr %eState6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %8 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %curFlags, align 1
  %conv8 = zext i8 %9 to i32
  %and = and i32 %conv8, -15
  %conv9 = trunc i32 %and to i8
  store i8 %conv9, ptr %curFlags, align 1
  %10 = load i32, ptr %rc, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
declare hidden void @btreeReleaseAllCursorPages(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveCursorKey(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
