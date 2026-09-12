; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VtabMakeWritable(ptr noundef %pParse, ptr noundef %pTab) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pToplevel = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %apVtabLock = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pToplevel1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 35
  %1 = load ptr, ptr %pToplevel1, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %pToplevel2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 35
  %3 = load ptr, ptr %pToplevel2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ]
  store ptr %cond, ptr %pToplevel, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %pToplevel, align 8
  %nVtabLock = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 52
  %7 = load i32, ptr %nVtabLock, align 8
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pTab.addr, align 8
  %9 = load ptr, ptr %pToplevel, align 8
  %apVtabLock3 = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 63
  %10 = load ptr, ptr %apVtabLock3, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  %cmp4 = icmp eq ptr %8, %12
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %if.end17

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %pToplevel, align 8
  %nVtabLock5 = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 52
  %15 = load i32, ptr %nVtabLock5, align 8
  %add = add nsw i32 %15, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %conv6 = trunc i64 %mul to i32
  store i32 %conv6, ptr %n, align 4
  %16 = load ptr, ptr %pToplevel, align 8
  %apVtabLock7 = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 63
  %17 = load ptr, ptr %apVtabLock7, align 8
  %18 = load i32, ptr %n, align 4
  %conv8 = sext i32 %18 to i64
  %call = call ptr @sqlite3_realloc64(ptr noundef %17, i64 noundef %conv8)
  store ptr %call, ptr %apVtabLock, align 8
  %19 = load ptr, ptr %apVtabLock, align 8
  %tobool9 = icmp ne ptr %19, null
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.end
  %20 = load ptr, ptr %apVtabLock, align 8
  %21 = load ptr, ptr %pToplevel, align 8
  %apVtabLock11 = getelementptr inbounds nuw %struct.Parse, ptr %21, i32 0, i32 63
  store ptr %20, ptr %apVtabLock11, align 8
  %22 = load ptr, ptr %pTab.addr, align 8
  %23 = load ptr, ptr %pToplevel, align 8
  %apVtabLock12 = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 63
  %24 = load ptr, ptr %apVtabLock12, align 8
  %25 = load ptr, ptr %pToplevel, align 8
  %nVtabLock13 = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 52
  %26 = load i32, ptr %nVtabLock13, align 8
  %inc14 = add nsw i32 %26, 1
  store i32 %inc14, ptr %nVtabLock13, align 8
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %24, i64 %idxprom15
  store ptr %22, ptr %arrayidx16, align 8
  br label %if.end17

if.else:                                          ; preds = %for.end
  %27 = load ptr, ptr %pToplevel, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %28)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10, %if.then
  ret void
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
