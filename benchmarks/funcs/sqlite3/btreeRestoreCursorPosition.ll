; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FaultSim(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeRestoreCursorPosition(ptr noundef %pCur) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %skipNext = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 0, ptr %skipNext, align 4
  %0 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %eState, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %skipNext2 = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %skipNext2, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pCur.addr, align 8
  %eState3 = getelementptr inbounds nuw %struct.BtCursor, ptr %4, i32 0, i32 0
  store i8 1, ptr %eState3, align 8
  %call = call i32 @sqlite3FaultSim(i32 noundef 410)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i32 10, ptr %rc, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %pCur.addr, align 8
  %6 = load ptr, ptr %pCur.addr, align 8
  %pKey = getelementptr inbounds nuw %struct.BtCursor, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %pKey, align 8
  %8 = load ptr, ptr %pCur.addr, align 8
  %nKey = getelementptr inbounds nuw %struct.BtCursor, ptr %8, i32 0, i32 11
  %9 = load i64, ptr %nKey, align 8
  %call5 = call i32 @btreeMoveto(ptr noundef %5, ptr noundef %7, i64 noundef %9, i32 noundef 0, ptr noundef %skipNext)
  store i32 %call5, ptr %rc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %10 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then9, label %if.end25

if.then9:                                         ; preds = %if.end6
  %11 = load ptr, ptr %pCur.addr, align 8
  %pKey10 = getelementptr inbounds nuw %struct.BtCursor, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %pKey10, align 8
  call void @sqlite3_free(ptr noundef %12)
  %13 = load ptr, ptr %pCur.addr, align 8
  %pKey11 = getelementptr inbounds nuw %struct.BtCursor, ptr %13, i32 0, i32 7
  store ptr null, ptr %pKey11, align 8
  %14 = load i32, ptr %skipNext, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then9
  %15 = load i32, ptr %skipNext, align 4
  %16 = load ptr, ptr %pCur.addr, align 8
  %skipNext14 = getelementptr inbounds nuw %struct.BtCursor, ptr %16, i32 0, i32 4
  store i32 %15, ptr %skipNext14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then9
  %17 = load ptr, ptr %pCur.addr, align 8
  %skipNext16 = getelementptr inbounds nuw %struct.BtCursor, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %skipNext16, align 4
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end15
  %19 = load ptr, ptr %pCur.addr, align 8
  %eState18 = getelementptr inbounds nuw %struct.BtCursor, ptr %19, i32 0, i32 0
  %20 = load i8, ptr %eState18, align 8
  %conv19 = zext i8 %20 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %pCur.addr, align 8
  %eState23 = getelementptr inbounds nuw %struct.BtCursor, ptr %21, i32 0, i32 0
  store i8 2, ptr %eState23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true, %if.end15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end6
  %22 = load i32, ptr %rc, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeMoveto(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
