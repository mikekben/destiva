; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @pcacheMergeDirtyList(ptr noundef %pA, ptr noundef %pB) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %result = alloca %struct.PgHdr, align 8
  %pTail = alloca ptr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr %result, ptr %pTail, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end12, %entry
  %0 = load ptr, ptr %pA.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %pgno, align 8
  %2 = load ptr, ptr %pB.addr, align 8
  %pgno1 = getelementptr inbounds nuw %struct.PgHdr, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %pgno1, align 8
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %4 = load ptr, ptr %pA.addr, align 8
  %5 = load ptr, ptr %pTail, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 4
  store ptr %4, ptr %pDirty, align 8
  %6 = load ptr, ptr %pA.addr, align 8
  store ptr %6, ptr %pTail, align 8
  %7 = load ptr, ptr %pA.addr, align 8
  %pDirty2 = getelementptr inbounds nuw %struct.PgHdr, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pDirty2, align 8
  store ptr %8, ptr %pA.addr, align 8
  %9 = load ptr, ptr %pA.addr, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %10 = load ptr, ptr %pB.addr, align 8
  %11 = load ptr, ptr %pTail, align 8
  %pDirty5 = getelementptr inbounds nuw %struct.PgHdr, ptr %11, i32 0, i32 4
  store ptr %10, ptr %pDirty5, align 8
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end12

if.else:                                          ; preds = %for.cond
  %12 = load ptr, ptr %pB.addr, align 8
  %13 = load ptr, ptr %pTail, align 8
  %pDirty6 = getelementptr inbounds nuw %struct.PgHdr, ptr %13, i32 0, i32 4
  store ptr %12, ptr %pDirty6, align 8
  %14 = load ptr, ptr %pB.addr, align 8
  store ptr %14, ptr %pTail, align 8
  %15 = load ptr, ptr %pB.addr, align 8
  %pDirty7 = getelementptr inbounds nuw %struct.PgHdr, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %pDirty7, align 8
  store ptr %16, ptr %pB.addr, align 8
  %17 = load ptr, ptr %pB.addr, align 8
  %cmp8 = icmp eq ptr %17, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.else
  %18 = load ptr, ptr %pA.addr, align 8
  %19 = load ptr, ptr %pTail, align 8
  %pDirty10 = getelementptr inbounds nuw %struct.PgHdr, ptr %19, i32 0, i32 4
  store ptr %18, ptr %pDirty10, align 8
  br label %for.end

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then9, %if.then4
  %pDirty13 = getelementptr inbounds nuw %struct.PgHdr, ptr %result, i32 0, i32 4
  %20 = load ptr, ptr %pDirty13, align 8
  ret ptr %20
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
