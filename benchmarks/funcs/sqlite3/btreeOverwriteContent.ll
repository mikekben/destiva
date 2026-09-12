; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtreePayload = type { ptr, i64, ptr, ptr, i16, i32, i32 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define hidden i32 @btreeOverwriteContent(ptr noundef %pPage, ptr noundef %pDest, ptr noundef %pX, i32 noundef %iOffset, i32 noundef %iAmt) #0 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %iOffset.addr = alloca i32, align 4
  %iAmt.addr = alloca i32, align 4
  %nData = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %rc15 = alloca i32, align 4
  %rc31 = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  store i32 %iOffset, ptr %iOffset.addr, align 4
  store i32 %iAmt, ptr %iAmt.addr, align 4
  %0 = load ptr, ptr %pX.addr, align 8
  %nData1 = getelementptr inbounds nuw %struct.BtreePayload, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nData1, align 4
  %2 = load i32, ptr %iOffset.addr, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, ptr %nData, align 4
  %3 = load i32, ptr %nData, align 4
  %cmp = icmp sle i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %iAmt.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pDest.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %iAmt.addr, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %for.end
  %13 = load ptr, ptr %pPage.addr, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %13, i32 0, i32 23
  %14 = load ptr, ptr %pDbPage, align 8
  %call = call i32 @sqlite3PagerWrite(ptr noundef %14)
  store i32 %call, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then7
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then7
  %17 = load ptr, ptr %pDest.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  %19 = load i32, ptr %iAmt.addr, align 4
  %20 = load i32, ptr %i, align 4
  %sub9 = sub nsw i32 %19, %20
  %conv10 = sext i32 %sub9 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv10, i1 false)
  br label %if.end11

if.end11:                                         ; preds = %if.end, %for.end
  br label %if.end42

if.else:                                          ; preds = %entry
  %21 = load i32, ptr %nData, align 4
  %22 = load i32, ptr %iAmt.addr, align 4
  %cmp12 = icmp slt i32 %21, %22
  br i1 %cmp12, label %if.then14, label %if.end23

if.then14:                                        ; preds = %if.else
  %23 = load ptr, ptr %pPage.addr, align 8
  %24 = load ptr, ptr %pDest.addr, align 8
  %25 = load i32, ptr %nData, align 4
  %idx.ext16 = sext i32 %25 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %24, i64 %idx.ext16
  %26 = load ptr, ptr %pX.addr, align 8
  %27 = load i32, ptr %iOffset.addr, align 4
  %28 = load i32, ptr %nData, align 4
  %add = add nsw i32 %27, %28
  %29 = load i32, ptr %iAmt.addr, align 4
  %30 = load i32, ptr %nData, align 4
  %sub18 = sub nsw i32 %29, %30
  %call19 = call i32 @btreeOverwriteContent(ptr noundef %23, ptr noundef %add.ptr17, ptr noundef %26, i32 noundef %add, i32 noundef %sub18)
  store i32 %call19, ptr %rc15, align 4
  %31 = load i32, ptr %rc15, align 4
  %tobool20 = icmp ne i32 %31, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then14
  %32 = load i32, ptr %rc15, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then14
  %33 = load i32, ptr %nData, align 4
  store i32 %33, ptr %iAmt.addr, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.else
  %34 = load ptr, ptr %pDest.addr, align 8
  %35 = load ptr, ptr %pX.addr, align 8
  %pData = getelementptr inbounds nuw %struct.BtreePayload, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %pData, align 8
  %37 = load i32, ptr %iOffset.addr, align 4
  %idx.ext24 = sext i32 %37 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %36, i64 %idx.ext24
  %38 = load i32, ptr %iAmt.addr, align 4
  %conv26 = sext i32 %38 to i64
  %call27 = call i32 @memcmp(ptr noundef %34, ptr noundef %add.ptr25, i64 noundef %conv26) #4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end41

if.then30:                                        ; preds = %if.end23
  %39 = load ptr, ptr %pPage.addr, align 8
  %pDbPage32 = getelementptr inbounds nuw %struct.MemPage, ptr %39, i32 0, i32 23
  %40 = load ptr, ptr %pDbPage32, align 8
  %call33 = call i32 @sqlite3PagerWrite(ptr noundef %40)
  store i32 %call33, ptr %rc31, align 4
  %41 = load i32, ptr %rc31, align 4
  %tobool34 = icmp ne i32 %41, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  %42 = load i32, ptr %rc31, align 4
  store i32 %42, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then30
  %43 = load ptr, ptr %pDest.addr, align 8
  %44 = load ptr, ptr %pX.addr, align 8
  %pData37 = getelementptr inbounds nuw %struct.BtreePayload, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %pData37, align 8
  %46 = load i32, ptr %iOffset.addr, align 4
  %idx.ext38 = sext i32 %46 to i64
  %add.ptr39 = getelementptr inbounds i8, ptr %45, i64 %idx.ext38
  %47 = load i32, ptr %iAmt.addr, align 4
  %conv40 = sext i32 %47 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %43, ptr align 1 %add.ptr39, i64 %conv40, i1 false)
  br label %if.end41

if.end41:                                         ; preds = %if.end36, %if.end23
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then35, %if.then21, %if.then8
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(read) }

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
