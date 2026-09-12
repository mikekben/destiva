; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden void @getCellInfo(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 10
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  %1 = load i16, ptr %nSize, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %curFlags, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %conv2, 2
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, ptr %curFlags, align 1
  %4 = load ptr, ptr %pCur.addr, align 8
  %pPage = getelementptr inbounds nuw %struct.BtCursor, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %pPage, align 8
  %6 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %6, i32 0, i32 15
  %7 = load i16, ptr %ix, align 2
  %conv4 = zext i16 %7 to i32
  %8 = load ptr, ptr %pCur.addr, align 8
  %info5 = getelementptr inbounds nuw %struct.BtCursor, ptr %8, i32 0, i32 10
  call void @btreeParseCell(ptr noundef %5, i32 noundef %conv4, ptr noundef %info5)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @btreeParseCell(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
