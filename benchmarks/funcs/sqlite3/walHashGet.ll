; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalHashLoc = type { ptr, ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @walIndexPage(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walHashGet(ptr noundef %pWal, i32 noundef %iHash, ptr noundef %pLoc) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %iHash.addr = alloca i32, align 4
  %pLoc.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %iHash, ptr %iHash.addr, align 4
  store ptr %pLoc, ptr %pLoc.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %1 = load i32, ptr %iHash.addr, align 4
  %2 = load ptr, ptr %pLoc.addr, align 8
  %aPgno = getelementptr inbounds nuw %struct.WalHashLoc, ptr %2, i32 0, i32 1
  %call = call i32 @walIndexPage(ptr noundef %0, i32 noundef %1, ptr noundef %aPgno)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pLoc.addr, align 8
  %aPgno1 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %aPgno1, align 8
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 4096
  %6 = load ptr, ptr %pLoc.addr, align 8
  %aHash = getelementptr inbounds nuw %struct.WalHashLoc, ptr %6, i32 0, i32 0
  store ptr %arrayidx, ptr %aHash, align 8
  %7 = load i32, ptr %iHash.addr, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %pLoc.addr, align 8
  %aPgno4 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %aPgno4, align 8
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %9, i64 34
  %10 = load ptr, ptr %pLoc.addr, align 8
  %aPgno6 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %10, i32 0, i32 1
  store ptr %arrayidx5, ptr %aPgno6, align 8
  %11 = load ptr, ptr %pLoc.addr, align 8
  %iZero = getelementptr inbounds nuw %struct.WalHashLoc, ptr %11, i32 0, i32 2
  store i32 0, ptr %iZero, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i32, ptr %iHash.addr, align 4
  %sub = sub nsw i32 %12, 1
  %mul = mul nsw i32 %sub, 4096
  %conv = sext i32 %mul to i64
  %add = add i64 4062, %conv
  %conv7 = trunc i64 %add to i32
  %13 = load ptr, ptr %pLoc.addr, align 8
  %iZero8 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %13, i32 0, i32 2
  store i32 %conv7, ptr %iZero8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %14 = load ptr, ptr %pLoc.addr, align 8
  %aPgno9 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %aPgno9, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 -1
  %16 = load ptr, ptr %pLoc.addr, align 8
  %aPgno11 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %16, i32 0, i32 1
  store ptr %arrayidx10, ptr %aPgno11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  %17 = load i32, ptr %rc, align 4
  ret i32 %17
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
