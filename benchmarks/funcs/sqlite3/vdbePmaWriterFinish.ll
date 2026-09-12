; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaWriter = type { i32, ptr, i32, i32, i32, i64, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @vdbePmaWriterFinish(ptr noundef %p, ptr noundef %piEof) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %piEof.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %piEof, ptr %piEof.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %eFWErr = getelementptr inbounds nuw %struct.PmaWriter, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %eFWErr, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %aBuffer = getelementptr inbounds nuw %struct.PmaWriter, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %aBuffer, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %p.addr, align 8
  %iBufEnd = getelementptr inbounds nuw %struct.PmaWriter, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %iBufEnd, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %iBufStart = getelementptr inbounds nuw %struct.PmaWriter, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %iBufStart, align 4
  %cmp2 = icmp sgt i32 %5, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %8 = load ptr, ptr %p.addr, align 8
  %pFd = getelementptr inbounds nuw %struct.PmaWriter, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %pFd, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %aBuffer3 = getelementptr inbounds nuw %struct.PmaWriter, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %aBuffer3, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %iBufStart4 = getelementptr inbounds nuw %struct.PmaWriter, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %iBufStart4, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %14 = load ptr, ptr %p.addr, align 8
  %iBufEnd5 = getelementptr inbounds nuw %struct.PmaWriter, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %iBufEnd5, align 8
  %16 = load ptr, ptr %p.addr, align 8
  %iBufStart6 = getelementptr inbounds nuw %struct.PmaWriter, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %iBufStart6, align 4
  %sub = sub nsw i32 %15, %17
  %18 = load ptr, ptr %p.addr, align 8
  %iWriteOff = getelementptr inbounds nuw %struct.PmaWriter, ptr %18, i32 0, i32 5
  %19 = load i64, ptr %iWriteOff, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %iBufStart7 = getelementptr inbounds nuw %struct.PmaWriter, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %iBufStart7, align 4
  %conv = sext i32 %21 to i64
  %add = add nsw i64 %19, %conv
  %call = call i32 @sqlite3OsWrite(ptr noundef %9, ptr noundef %arrayidx, i32 noundef %sub, i64 noundef %add)
  %22 = load ptr, ptr %p.addr, align 8
  %eFWErr8 = getelementptr inbounds nuw %struct.PmaWriter, ptr %22, i32 0, i32 0
  store i32 %call, ptr %eFWErr8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  %23 = load ptr, ptr %p.addr, align 8
  %iWriteOff9 = getelementptr inbounds nuw %struct.PmaWriter, ptr %23, i32 0, i32 5
  %24 = load i64, ptr %iWriteOff9, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %iBufEnd10 = getelementptr inbounds nuw %struct.PmaWriter, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %iBufEnd10, align 8
  %conv11 = sext i32 %26 to i64
  %add12 = add nsw i64 %24, %conv11
  %27 = load ptr, ptr %piEof.addr, align 8
  store i64 %add12, ptr %27, align 8
  %28 = load ptr, ptr %p.addr, align 8
  %aBuffer13 = getelementptr inbounds nuw %struct.PmaWriter, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %aBuffer13, align 8
  call void @sqlite3_free(ptr noundef %29)
  %30 = load ptr, ptr %p.addr, align 8
  %eFWErr14 = getelementptr inbounds nuw %struct.PmaWriter, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %eFWErr14, align 8
  store i32 %31, ptr %rc, align 4
  %32 = load ptr, ptr %p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %32, i8 0, i64 48, i1 false)
  %33 = load i32, ptr %rc, align 4
  ret i32 %33
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
