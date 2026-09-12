; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @unixWrite(ptr noundef %id, ptr noundef %pBuf, i32 noundef %amt, i64 noundef %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %pBuf.addr = alloca ptr, align 8
  %amt.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %pFile = alloca ptr, align 8
  %wrote = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %amt, ptr %amt.addr, align 4
  store i64 %offset, ptr %offset.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  store i32 0, ptr %wrote, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %pFile, align 8
  %2 = load i64, ptr %offset.addr, align 8
  %3 = load ptr, ptr %pBuf.addr, align 8
  %4 = load i32, ptr %amt.addr, align 4
  %call = call i32 @seekAndWrite(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4)
  store i32 %call, ptr %wrote, align 4
  %5 = load i32, ptr %amt.addr, align 4
  %cmp = icmp slt i32 %call, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %wrote, align 4
  %cmp1 = icmp sgt i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, ptr %wrote, align 4
  %9 = load i32, ptr %amt.addr, align 4
  %sub = sub nsw i32 %9, %8
  store i32 %sub, ptr %amt.addr, align 4
  %10 = load i32, ptr %wrote, align 4
  %conv = sext i32 %10 to i64
  %11 = load i64, ptr %offset.addr, align 8
  %add = add nsw i64 %11, %conv
  store i64 %add, ptr %offset.addr, align 8
  %12 = load ptr, ptr %pBuf.addr, align 8
  %13 = load i32, ptr %wrote, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  store ptr %arrayidx, ptr %pBuf.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %14 = load i32, ptr %amt.addr, align 4
  %15 = load i32, ptr %wrote, align 4
  %cmp2 = icmp sgt i32 %14, %15
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %16 = load i32, ptr %wrote, align 4
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %17 = load ptr, ptr %pFile, align 8
  %lastErrno = getelementptr inbounds nuw %struct.unixFile, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %lastErrno, align 8
  %cmp6 = icmp ne i32 %18, 28
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true
  store i32 778, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %19 = load ptr, ptr %pFile, align 8
  call void @storeLastErrno(ptr noundef %19, i32 noundef 0)
  store i32 13, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then8
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @seekAndWrite(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #0

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
