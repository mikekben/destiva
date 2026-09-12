; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreePutData(ptr noundef %pCsr, i32 noundef %offset, i32 noundef %amt, ptr noundef %z) #0 {
entry:
  %retval = alloca i32, align 4
  %pCsr.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %amt.addr = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCsr, ptr %pCsr.addr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  store i32 %amt, ptr %amt.addr, align 4
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %pCsr.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %eState, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pCsr.addr, align 8
  %call = call i32 @btreeRestoreCursorPosition(ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = load i32, ptr %rc, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load ptr, ptr %pCsr.addr, align 8
  %eState4 = getelementptr inbounds nuw %struct.BtCursor, ptr %5, i32 0, i32 0
  %6 = load i8, ptr %eState4, align 8
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %7 = load ptr, ptr %pCsr.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %pBt, align 8
  %9 = load ptr, ptr %pCsr.addr, align 8
  %pgnoRoot = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 12
  %10 = load i32, ptr %pgnoRoot, align 8
  %11 = load ptr, ptr %pCsr.addr, align 8
  %call10 = call i32 @saveAllCursors(ptr noundef %8, i32 noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %pCsr.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 1
  %13 = load i8, ptr %curFlags, align 1
  %conv11 = zext i8 %13 to i32
  %and = and i32 %conv11, 1
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  store i32 8, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end9
  %14 = load ptr, ptr %pCsr.addr, align 8
  %15 = load i32, ptr %offset.addr, align 4
  %16 = load i32, ptr %amt.addr, align 4
  %17 = load ptr, ptr %z.addr, align 8
  %call16 = call i32 @accessPayload(ptr noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %17, i32 noundef 1)
  store i32 %call16, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then8, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
declare hidden i32 @saveAllCursors(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @accessPayload(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeRestoreCursorPosition(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
