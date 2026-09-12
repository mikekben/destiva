; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @hasColumn(ptr noundef %aiCol, i32 noundef %nCol, i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %aiCol.addr = alloca ptr, align 8
  %nCol.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store ptr %aiCol, ptr %aiCol.addr, align 8
  store i32 %nCol, ptr %nCol.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %nCol.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %nCol.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %x.addr, align 4
  %2 = load ptr, ptr %aiCol.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %aiCol.addr, align 8
  %3 = load i16, ptr %2, align 2
  %conv = sext i16 %3 to i32
  %cmp1 = icmp eq i32 %1, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
