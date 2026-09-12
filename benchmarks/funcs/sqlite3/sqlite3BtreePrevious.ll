; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreePrevious(ptr noundef %pCur, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load i32, ptr %flags.addr, align 4
  %1 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %curFlags, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, -15
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, ptr %curFlags, align 1
  %3 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %3, i32 0, i32 10
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  store i16 0, ptr %nSize, align 2
  %4 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %eState, align 8
  %conv2 = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %6, i32 0, i32 15
  %7 = load i16, ptr %ix, align 2
  %conv4 = zext i16 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %pCur.addr, align 8
  %pPage = getelementptr inbounds nuw %struct.BtCursor, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %9, i32 0, i32 5
  %10 = load i8, ptr %leaf, align 8
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %entry
  %11 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @btreePrevious(ptr noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  %12 = load ptr, ptr %pCur.addr, align 8
  %ix11 = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 15
  %13 = load i16, ptr %ix11, align 2
  %dec = add i16 %13, -1
  store i16 %dec, ptr %ix11, align 2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @btreePrevious(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
