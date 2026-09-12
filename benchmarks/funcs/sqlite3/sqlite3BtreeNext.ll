; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeNext(ptr noundef %pCur, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pPage = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load i32, ptr %flags.addr, align 4
  %1 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %1, i32 0, i32 10
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  store i16 0, ptr %nSize, align 2
  %2 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %curFlags, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, -7
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, ptr %curFlags, align 1
  %4 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %eState, align 8
  %conv2 = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @btreeNext(ptr noundef %6)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pCur.addr, align 8
  %pPage4 = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 18
  %8 = load ptr, ptr %pPage4, align 8
  store ptr %8, ptr %pPage, align 8
  %9 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 15
  %10 = load i16, ptr %ix, align 2
  %inc = add i16 %10, 1
  store i16 %inc, ptr %ix, align 2
  %conv5 = zext i16 %inc to i32
  %11 = load ptr, ptr %pPage, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %11, i32 0, i32 14
  %12 = load i16, ptr %nCell, align 8
  %conv6 = zext i16 %12 to i32
  %cmp7 = icmp sge i32 %conv5, %conv6
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %13 = load ptr, ptr %pCur.addr, align 8
  %ix10 = getelementptr inbounds nuw %struct.BtCursor, ptr %13, i32 0, i32 15
  %14 = load i16, ptr %ix10, align 2
  %dec = add i16 %14, -1
  store i16 %dec, ptr %ix10, align 2
  %15 = load ptr, ptr %pCur.addr, align 8
  %call11 = call i32 @btreeNext(ptr noundef %15)
  store i32 %call11, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %16 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 5
  %17 = load i8, ptr %leaf, align 8
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end12
  %18 = load ptr, ptr %pCur.addr, align 8
  %call14 = call i32 @moveToLeftmost(ptr noundef %18)
  store i32 %call14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then13, %if.then9, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeNext(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToLeftmost(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
