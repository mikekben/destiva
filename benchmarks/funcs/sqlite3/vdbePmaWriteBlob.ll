; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaWriter = type { i32, ptr, i32, i32, i32, i64, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @vdbePmaWriteBlob(ptr noundef %p, ptr noundef %pData, i32 noundef %nData) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %pData.addr = alloca ptr, align 8
  %nData.addr = alloca i32, align 4
  %nRem = alloca i32, align 4
  %nCopy = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  store i32 %nData, ptr %nData.addr, align 4
  %0 = load i32, ptr %nData.addr, align 4
  store i32 %0, ptr %nRem, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %entry
  %1 = load i32, ptr %nRem, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %p.addr, align 8
  %eFWErr = getelementptr inbounds nuw %struct.PmaWriter, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %eFWErr, align 8
  %cmp1 = icmp eq i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %nRem, align 4
  store i32 %5, ptr %nCopy, align 4
  %6 = load i32, ptr %nCopy, align 4
  %7 = load ptr, ptr %p.addr, align 8
  %nBuffer = getelementptr inbounds nuw %struct.PmaWriter, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %nBuffer, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %iBufEnd = getelementptr inbounds nuw %struct.PmaWriter, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %iBufEnd, align 8
  %sub = sub nsw i32 %8, %10
  %cmp2 = icmp sgt i32 %6, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %p.addr, align 8
  %nBuffer3 = getelementptr inbounds nuw %struct.PmaWriter, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nBuffer3, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %iBufEnd4 = getelementptr inbounds nuw %struct.PmaWriter, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %iBufEnd4, align 8
  %sub5 = sub nsw i32 %12, %14
  store i32 %sub5, ptr %nCopy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = load ptr, ptr %p.addr, align 8
  %aBuffer = getelementptr inbounds nuw %struct.PmaWriter, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %aBuffer, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %iBufEnd6 = getelementptr inbounds nuw %struct.PmaWriter, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %iBufEnd6, align 8
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom
  %19 = load ptr, ptr %pData.addr, align 8
  %20 = load i32, ptr %nData.addr, align 4
  %21 = load i32, ptr %nRem, align 4
  %sub7 = sub nsw i32 %20, %21
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 %idxprom8
  %22 = load i32, ptr %nCopy, align 4
  %conv = sext i32 %22 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %arrayidx9, i64 %conv, i1 false)
  %23 = load i32, ptr %nCopy, align 4
  %24 = load ptr, ptr %p.addr, align 8
  %iBufEnd10 = getelementptr inbounds nuw %struct.PmaWriter, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %iBufEnd10, align 8
  %add = add nsw i32 %25, %23
  store i32 %add, ptr %iBufEnd10, align 8
  %26 = load ptr, ptr %p.addr, align 8
  %iBufEnd11 = getelementptr inbounds nuw %struct.PmaWriter, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %iBufEnd11, align 8
  %28 = load ptr, ptr %p.addr, align 8
  %nBuffer12 = getelementptr inbounds nuw %struct.PmaWriter, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %nBuffer12, align 8
  %cmp13 = icmp eq i32 %27, %29
  br i1 %cmp13, label %if.then15, label %if.end32

if.then15:                                        ; preds = %if.end
  %30 = load ptr, ptr %p.addr, align 8
  %pFd = getelementptr inbounds nuw %struct.PmaWriter, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %pFd, align 8
  %32 = load ptr, ptr %p.addr, align 8
  %aBuffer16 = getelementptr inbounds nuw %struct.PmaWriter, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %aBuffer16, align 8
  %34 = load ptr, ptr %p.addr, align 8
  %iBufStart = getelementptr inbounds nuw %struct.PmaWriter, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %iBufStart, align 4
  %idxprom17 = sext i32 %35 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %33, i64 %idxprom17
  %36 = load ptr, ptr %p.addr, align 8
  %iBufEnd19 = getelementptr inbounds nuw %struct.PmaWriter, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %iBufEnd19, align 8
  %38 = load ptr, ptr %p.addr, align 8
  %iBufStart20 = getelementptr inbounds nuw %struct.PmaWriter, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %iBufStart20, align 4
  %sub21 = sub nsw i32 %37, %39
  %40 = load ptr, ptr %p.addr, align 8
  %iWriteOff = getelementptr inbounds nuw %struct.PmaWriter, ptr %40, i32 0, i32 5
  %41 = load i64, ptr %iWriteOff, align 8
  %42 = load ptr, ptr %p.addr, align 8
  %iBufStart22 = getelementptr inbounds nuw %struct.PmaWriter, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %iBufStart22, align 4
  %conv23 = sext i32 %43 to i64
  %add24 = add nsw i64 %41, %conv23
  %call = call i32 @sqlite3OsWrite(ptr noundef %31, ptr noundef %arrayidx18, i32 noundef %sub21, i64 noundef %add24)
  %44 = load ptr, ptr %p.addr, align 8
  %eFWErr25 = getelementptr inbounds nuw %struct.PmaWriter, ptr %44, i32 0, i32 0
  store i32 %call, ptr %eFWErr25, align 8
  %45 = load ptr, ptr %p.addr, align 8
  %iBufEnd26 = getelementptr inbounds nuw %struct.PmaWriter, ptr %45, i32 0, i32 4
  store i32 0, ptr %iBufEnd26, align 8
  %46 = load ptr, ptr %p.addr, align 8
  %iBufStart27 = getelementptr inbounds nuw %struct.PmaWriter, ptr %46, i32 0, i32 3
  store i32 0, ptr %iBufStart27, align 4
  %47 = load ptr, ptr %p.addr, align 8
  %nBuffer28 = getelementptr inbounds nuw %struct.PmaWriter, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %nBuffer28, align 8
  %conv29 = sext i32 %48 to i64
  %49 = load ptr, ptr %p.addr, align 8
  %iWriteOff30 = getelementptr inbounds nuw %struct.PmaWriter, ptr %49, i32 0, i32 5
  %50 = load i64, ptr %iWriteOff30, align 8
  %add31 = add nsw i64 %50, %conv29
  store i64 %add31, ptr %iWriteOff30, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then15, %if.end
  %51 = load i32, ptr %nCopy, align 4
  %52 = load i32, ptr %nRem, align 4
  %sub33 = sub nsw i32 %52, %51
  store i32 %sub33, ptr %nRem, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
