; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }

@.str.1227 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1228 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyZipExtractFromBuf(ptr noundef %pArch, ptr noundef %zBuf, i32 noundef %nLen) #0 {
entry:
  %retval = alloca i32, align 4
  %pArch.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zCentral = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pArch, ptr %pArch.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp ult i32 %0, 98
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zBuf.addr, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %sub = sub i32 %2, 22
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %zBuf.addr, align 8
  %4 = load i32, ptr %nLen.addr, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %3, i64 %idxprom1
  %5 = load ptr, ptr %zEnd, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %cmp3 = icmp ult i32 %conv, 32789
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load ptr, ptr %zEnd, align 8
  %7 = load ptr, ptr %zBuf.addr, align 8
  %cmp5 = icmp ugt ptr %6, %7
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %zEnd, align 8
  %call = call i32 @SyMemcmp(ptr noundef %8, ptr noundef @.str.1227, i32 noundef 4)
  %cmp7 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %11 = load ptr, ptr %pArch.addr, align 8
  %12 = load ptr, ptr %zEnd, align 8
  %call9 = call i32 @ParseEndOfCentralDirectory(ptr noundef %11, ptr noundef %12)
  store i32 %call9, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %13, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.end
  %14 = load i32, ptr %rc, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %while.end
  %15 = load ptr, ptr %zEnd, align 8
  %16 = load ptr, ptr %pArch.addr, align 8
  %nCentralSize = getelementptr inbounds nuw %struct.SyArchive, ptr %16, i32 0, i32 10
  %17 = load i32, ptr %nCentralSize, align 8
  %sub14 = sub nsw i32 0, %17
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %15, i64 %idxprom15
  store ptr %arrayidx16, ptr %zCentral, align 8
  %18 = load ptr, ptr %zCentral, align 8
  %19 = load ptr, ptr %zBuf.addr, align 8
  %cmp17 = icmp ule ptr %18, %19
  br i1 %cmp17, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %20 = load ptr, ptr %zCentral, align 8
  %call19 = call i32 @SyMemcmp(ptr noundef %20, ptr noundef @.str.1228, i32 noundef 4)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end35

if.then22:                                        ; preds = %lor.lhs.false, %if.end13
  %21 = load ptr, ptr %pArch.addr, align 8
  %nCentralOfft = getelementptr inbounds nuw %struct.SyArchive, ptr %21, i32 0, i32 9
  %22 = load i32, ptr %nCentralOfft, align 4
  %23 = load i32, ptr %nLen.addr, align 4
  %cmp23 = icmp uge i32 %22, %23
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then22
  store i32 -24, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then22
  %24 = load ptr, ptr %zBuf.addr, align 8
  %25 = load ptr, ptr %pArch.addr, align 8
  %nCentralOfft27 = getelementptr inbounds nuw %struct.SyArchive, ptr %25, i32 0, i32 9
  %26 = load i32, ptr %nCentralOfft27, align 4
  %idxprom28 = zext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %24, i64 %idxprom28
  store ptr %arrayidx29, ptr %zCentral, align 8
  %27 = load ptr, ptr %zCentral, align 8
  %call30 = call i32 @SyMemcmp(ptr noundef %27, ptr noundef @.str.1228, i32 noundef 4)
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end26
  store i32 -24, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end26
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %lor.lhs.false
  %28 = load ptr, ptr %pArch.addr, align 8
  %29 = load ptr, ptr %zCentral, align 8
  %30 = load ptr, ptr %zEnd, align 8
  %31 = load ptr, ptr %zCentral, align 8
  %sub.ptr.lhs.cast36 = ptrtoint ptr %30 to i64
  %sub.ptr.rhs.cast37 = ptrtoint ptr %31 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %conv39 = trunc i64 %sub.ptr.sub38 to i32
  %32 = load ptr, ptr %zBuf.addr, align 8
  %call40 = call i32 @ZipExtract(ptr noundef %28, ptr noundef %29, i32 noundef %conv39, ptr noundef %32)
  store i32 %call40, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  store i32 %33, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then33, %if.then25, %if.then12, %if.then
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ParseEndOfCentralDirectory(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ZipExtract(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

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
