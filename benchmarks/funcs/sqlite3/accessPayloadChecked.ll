; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden i32 @accessPayload(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeRestoreCursorPosition(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @accessPayloadChecked(ptr noundef %pCur, i32 noundef %offset, i32 noundef %amt, ptr noundef %pBuf) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %amt.addr = alloca i32, align 4
  %pBuf.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  store i32 %amt, ptr %amt.addr, align 4
  store ptr %pBuf, ptr %pBuf.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %eState, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @btreeRestoreCursorPosition(ptr noundef %2)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, ptr %rc, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load ptr, ptr %pCur.addr, align 8
  %6 = load i32, ptr %offset.addr, align 4
  %7 = load i32, ptr %amt.addr, align 4
  %8 = load ptr, ptr %pBuf.addr, align 8
  %call2 = call i32 @accessPayload(ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
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
