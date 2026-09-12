; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @decodeFlags(ptr noundef %pPage, i32 noundef %flagByte) #0 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %flagByte.addr = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %flagByte, ptr %flagByte.addr, align 4
  %0 = load i32, ptr %flagByte.addr, align 4
  %shr = ashr i32 %0, 3
  %conv = trunc i32 %shr to i8
  %1 = load ptr, ptr %pPage.addr, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %1, i32 0, i32 5
  store i8 %conv, ptr %leaf, align 8
  %2 = load i32, ptr %flagByte.addr, align 4
  %and = and i32 %2, -9
  store i32 %and, ptr %flagByte.addr, align 4
  %3 = load ptr, ptr %pPage.addr, align 8
  %leaf1 = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 5
  %4 = load i8, ptr %leaf1, align 8
  %conv2 = zext i8 %4 to i32
  %mul = mul nsw i32 4, %conv2
  %sub = sub nsw i32 4, %mul
  %conv3 = trunc i32 %sub to i8
  %5 = load ptr, ptr %pPage.addr, align 8
  %childPtrSize = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 7
  store i8 %conv3, ptr %childPtrSize, align 2
  %6 = load ptr, ptr %pPage.addr, align 8
  %xCellSize = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 24
  store ptr @cellSizePtr, ptr %xCellSize, align 8
  %7 = load ptr, ptr %pPage.addr, align 8
  %pBt4 = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 18
  %8 = load ptr, ptr %pBt4, align 8
  store ptr %8, ptr %pBt, align 8
  %9 = load i32, ptr %flagByte.addr, align 4
  %cmp = icmp eq i32 %9, 5
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %pPage.addr, align 8
  %intKey = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 2
  store i8 1, ptr %intKey, align 2
  %11 = load ptr, ptr %pPage.addr, align 8
  %leaf6 = getelementptr inbounds nuw %struct.MemPage, ptr %11, i32 0, i32 5
  %12 = load i8, ptr %leaf6, align 8
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %13 = load ptr, ptr %pPage.addr, align 8
  %intKeyLeaf = getelementptr inbounds nuw %struct.MemPage, ptr %13, i32 0, i32 3
  store i8 1, ptr %intKeyLeaf, align 1
  %14 = load ptr, ptr %pPage.addr, align 8
  %xParseCell = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 25
  store ptr @btreeParseCellPtr, ptr %xParseCell, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %pPage.addr, align 8
  %intKeyLeaf8 = getelementptr inbounds nuw %struct.MemPage, ptr %15, i32 0, i32 3
  store i8 0, ptr %intKeyLeaf8, align 1
  %16 = load ptr, ptr %pPage.addr, align 8
  %xCellSize9 = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 24
  store ptr @cellSizePtrNoPayload, ptr %xCellSize9, align 8
  %17 = load ptr, ptr %pPage.addr, align 8
  %xParseCell10 = getelementptr inbounds nuw %struct.MemPage, ptr %17, i32 0, i32 25
  store ptr @btreeParseCellPtrNoPayload, ptr %xParseCell10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %18 = load ptr, ptr %pBt, align 8
  %maxLeaf = getelementptr inbounds nuw %struct.BtShared, ptr %18, i32 0, i32 13
  %19 = load i16, ptr %maxLeaf, align 4
  %20 = load ptr, ptr %pPage.addr, align 8
  %maxLocal = getelementptr inbounds nuw %struct.MemPage, ptr %20, i32 0, i32 10
  store i16 %19, ptr %maxLocal, align 2
  %21 = load ptr, ptr %pBt, align 8
  %minLeaf = getelementptr inbounds nuw %struct.BtShared, ptr %21, i32 0, i32 14
  %22 = load i16, ptr %minLeaf, align 2
  %23 = load ptr, ptr %pPage.addr, align 8
  %minLocal = getelementptr inbounds nuw %struct.MemPage, ptr %23, i32 0, i32 11
  store i16 %22, ptr %minLocal, align 8
  br label %if.end24

if.else11:                                        ; preds = %entry
  %24 = load i32, ptr %flagByte.addr, align 4
  %cmp12 = icmp eq i32 %24, 2
  br i1 %cmp12, label %if.then14, label %if.else22

if.then14:                                        ; preds = %if.else11
  %25 = load ptr, ptr %pPage.addr, align 8
  %intKey15 = getelementptr inbounds nuw %struct.MemPage, ptr %25, i32 0, i32 2
  store i8 0, ptr %intKey15, align 2
  %26 = load ptr, ptr %pPage.addr, align 8
  %intKeyLeaf16 = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 3
  store i8 0, ptr %intKeyLeaf16, align 1
  %27 = load ptr, ptr %pPage.addr, align 8
  %xParseCell17 = getelementptr inbounds nuw %struct.MemPage, ptr %27, i32 0, i32 25
  store ptr @btreeParseCellPtrIndex, ptr %xParseCell17, align 8
  %28 = load ptr, ptr %pBt, align 8
  %maxLocal18 = getelementptr inbounds nuw %struct.BtShared, ptr %28, i32 0, i32 11
  %29 = load i16, ptr %maxLocal18, align 8
  %30 = load ptr, ptr %pPage.addr, align 8
  %maxLocal19 = getelementptr inbounds nuw %struct.MemPage, ptr %30, i32 0, i32 10
  store i16 %29, ptr %maxLocal19, align 2
  %31 = load ptr, ptr %pBt, align 8
  %minLocal20 = getelementptr inbounds nuw %struct.BtShared, ptr %31, i32 0, i32 12
  %32 = load i16, ptr %minLocal20, align 2
  %33 = load ptr, ptr %pPage.addr, align 8
  %minLocal21 = getelementptr inbounds nuw %struct.MemPage, ptr %33, i32 0, i32 11
  store i16 %32, ptr %minLocal21, align 8
  br label %if.end23

if.else22:                                        ; preds = %if.else11
  %call = call i32 @sqlite3CorruptError(i32 noundef 65250)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end
  %34 = load ptr, ptr %pBt, align 8
  %max1bytePayload = getelementptr inbounds nuw %struct.BtShared, ptr %34, i32 0, i32 9
  %35 = load i8, ptr %max1bytePayload, align 1
  %36 = load ptr, ptr %pPage.addr, align 8
  %max1bytePayload25 = getelementptr inbounds nuw %struct.MemPage, ptr %36, i32 0, i32 8
  store i8 %35, ptr %max1bytePayload25, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.else22
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @cellSizePtr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeParseCellPtr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @cellSizePtrNoPayload(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeParseCellPtrNoPayload(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeParseCellPtrIndex(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
