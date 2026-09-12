; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeLast(ptr noundef %pCur, ptr noundef %pRes) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pRes.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pRes, ptr %pRes.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %eState, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %curFlags, align 1
  %conv2 = zext i8 %3 to i32
  %and = and i32 %conv2, 8
  %cmp3 = icmp ne i32 %and, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pRes.addr, align 8
  store i32 0, ptr %4, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @moveToRoot(ptr noundef %5)
  store i32 %call, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then7, label %if.else20

if.then7:                                         ; preds = %if.end
  %7 = load ptr, ptr %pRes.addr, align 8
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %pCur.addr, align 8
  %call8 = call i32 @moveToRightmost(ptr noundef %8)
  store i32 %call8, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  %10 = load ptr, ptr %pCur.addr, align 8
  %curFlags12 = getelementptr inbounds nuw %struct.BtCursor, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %curFlags12, align 1
  %conv13 = zext i8 %11 to i32
  %or = or i32 %conv13, 8
  %conv14 = trunc i32 %or to i8
  store i8 %conv14, ptr %curFlags12, align 1
  br label %if.end19

if.else:                                          ; preds = %if.then7
  %12 = load ptr, ptr %pCur.addr, align 8
  %curFlags15 = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 1
  %13 = load i8, ptr %curFlags15, align 1
  %conv16 = zext i8 %13 to i32
  %and17 = and i32 %conv16, -9
  %conv18 = trunc i32 %and17 to i8
  store i8 %conv18, ptr %curFlags15, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11
  br label %if.end25

if.else20:                                        ; preds = %if.end
  %14 = load i32, ptr %rc, align 4
  %cmp21 = icmp eq i32 %14, 16
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else20
  %15 = load ptr, ptr %pRes.addr, align 8
  store i32 1, ptr %15, align 4
  store i32 0, ptr %rc, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.else20
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end19
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToRoot(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToRightmost(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
