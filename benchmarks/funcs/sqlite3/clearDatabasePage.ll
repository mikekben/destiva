; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @zeroPage(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getAndInitPage(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @clearDatabasePage(ptr noundef %pBt, i32 noundef %pgno, i32 noundef %freePageFlag, ptr noundef %pnChange) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %freePageFlag.addr = alloca i32, align 4
  %pnChange.addr = alloca ptr, align 8
  %pPage = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pCell = alloca ptr, align 8
  %i = alloca i32, align 4
  %hdr = alloca i32, align 4
  %info = alloca %struct.CellInfo, align 8
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store i32 %freePageFlag, ptr %freePageFlag.addr, align 4
  store ptr %pnChange, ptr %pnChange.addr, align 8
  %0 = load i32, ptr %pgno.addr, align 4
  %1 = load ptr, ptr %pBt.addr, align 8
  %call = call i32 @btreePagecount(ptr noundef %1)
  %cmp = icmp ugt i32 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @sqlite3CorruptError(i32 noundef 72585)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pBt.addr, align 8
  %3 = load i32, ptr %pgno.addr, align 4
  %call2 = call i32 @getAndInitPage(ptr noundef %2, i32 noundef %3, ptr noundef %pPage, ptr noundef null, i32 noundef 0)
  store i32 %call2, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %rc, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %pPage, align 8
  %bBusy = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %bBusy, align 1
  %tobool5 = icmp ne i8 %7, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %call7 = call i32 @sqlite3CorruptError(i32 noundef 72590)
  store i32 %call7, ptr %rc, align 4
  br label %cleardatabasepage_out

if.end8:                                          ; preds = %if.end4
  %8 = load ptr, ptr %pPage, align 8
  %bBusy9 = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 1
  store i8 1, ptr %bBusy9, align 1
  %9 = load ptr, ptr %pPage, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %9, i32 0, i32 6
  %10 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %10 to i32
  store i32 %conv, ptr %hdr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %11 = load i32, ptr %i, align 4
  %12 = load ptr, ptr %pPage, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 14
  %13 = load i16, ptr %nCell, align 8
  %conv10 = zext i16 %13 to i32
  %cmp11 = icmp slt i32 %11, %conv10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %aData, align 8
  %16 = load ptr, ptr %pPage, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 15
  %17 = load i16, ptr %maskPage, align 2
  %conv13 = zext i16 %17 to i32
  %18 = load ptr, ptr %pPage, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %18, i32 0, i32 21
  %19 = load ptr, ptr %aCellIdx, align 8
  %20 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %20
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 %idxprom
  %arrayidx14 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %21 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %21 to i32
  %shl = shl i32 %conv15, 8
  %22 = load ptr, ptr %pPage, align 8
  %aCellIdx16 = getelementptr inbounds nuw %struct.MemPage, ptr %22, i32 0, i32 21
  %23 = load ptr, ptr %aCellIdx16, align 8
  %24 = load i32, ptr %i, align 4
  %mul17 = mul nsw i32 2, %24
  %idxprom18 = sext i32 %mul17 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %23, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds i8, ptr %arrayidx19, i64 1
  %25 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %or = or i32 %shl, %conv21
  %and = and i32 %conv13, %or
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %idx.ext
  store ptr %add.ptr, ptr %pCell, align 8
  %26 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 5
  %27 = load i8, ptr %leaf, align 8
  %tobool22 = icmp ne i8 %27, 0
  br i1 %tobool22, label %if.end29, label %if.then23

if.then23:                                        ; preds = %for.body
  %28 = load ptr, ptr %pBt.addr, align 8
  %29 = load ptr, ptr %pCell, align 8
  %call24 = call i32 @sqlite3Get4byte(ptr noundef %29)
  %30 = load ptr, ptr %pnChange.addr, align 8
  %call25 = call i32 @clearDatabasePage(ptr noundef %28, i32 noundef %call24, i32 noundef 1, ptr noundef %30)
  store i32 %call25, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %tobool26 = icmp ne i32 %31, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  br label %cleardatabasepage_out

if.end28:                                         ; preds = %if.then23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %for.body
  %32 = load ptr, ptr %pPage, align 8
  %33 = load ptr, ptr %pCell, align 8
  %call30 = call i32 @clearCell(ptr noundef %32, ptr noundef %33, ptr noundef %info)
  store i32 %call30, ptr %rc, align 4
  %34 = load i32, ptr %rc, align 4
  %tobool31 = icmp ne i32 %34, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  br label %cleardatabasepage_out

if.end33:                                         ; preds = %if.end29
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %pPage, align 8
  %leaf34 = getelementptr inbounds nuw %struct.MemPage, ptr %36, i32 0, i32 5
  %37 = load i8, ptr %leaf34, align 8
  %tobool35 = icmp ne i8 %37, 0
  br i1 %tobool35, label %if.else, label %if.then36

if.then36:                                        ; preds = %for.end
  %38 = load ptr, ptr %pBt.addr, align 8
  %39 = load ptr, ptr %pPage, align 8
  %aData37 = getelementptr inbounds nuw %struct.MemPage, ptr %39, i32 0, i32 19
  %40 = load ptr, ptr %aData37, align 8
  %41 = load i32, ptr %hdr, align 4
  %add = add nsw i32 %41, 8
  %idxprom38 = sext i32 %add to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %40, i64 %idxprom38
  %call40 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx39)
  %42 = load ptr, ptr %pnChange.addr, align 8
  %call41 = call i32 @clearDatabasePage(ptr noundef %38, i32 noundef %call40, i32 noundef 1, ptr noundef %42)
  store i32 %call41, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %tobool42 = icmp ne i32 %43, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then36
  br label %cleardatabasepage_out

if.end44:                                         ; preds = %if.then36
  br label %if.end51

if.else:                                          ; preds = %for.end
  %44 = load ptr, ptr %pnChange.addr, align 8
  %tobool45 = icmp ne ptr %44, null
  br i1 %tobool45, label %if.then46, label %if.end50

if.then46:                                        ; preds = %if.else
  %45 = load ptr, ptr %pPage, align 8
  %nCell47 = getelementptr inbounds nuw %struct.MemPage, ptr %45, i32 0, i32 14
  %46 = load i16, ptr %nCell47, align 8
  %conv48 = zext i16 %46 to i32
  %47 = load ptr, ptr %pnChange.addr, align 8
  %48 = load i32, ptr %47, align 4
  %add49 = add nsw i32 %48, %conv48
  store i32 %add49, ptr %47, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end44
  %49 = load i32, ptr %freePageFlag.addr, align 4
  %tobool52 = icmp ne i32 %49, 0
  br i1 %tobool52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.end51
  %50 = load ptr, ptr %pPage, align 8
  call void @freePage(ptr noundef %50, ptr noundef %rc)
  br label %if.end65

if.else54:                                        ; preds = %if.end51
  %51 = load ptr, ptr %pPage, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %51, i32 0, i32 23
  %52 = load ptr, ptr %pDbPage, align 8
  %call55 = call i32 @sqlite3PagerWrite(ptr noundef %52)
  store i32 %call55, ptr %rc, align 4
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.else54
  %53 = load ptr, ptr %pPage, align 8
  %54 = load ptr, ptr %pPage, align 8
  %aData59 = getelementptr inbounds nuw %struct.MemPage, ptr %54, i32 0, i32 19
  %55 = load ptr, ptr %aData59, align 8
  %56 = load i32, ptr %hdr, align 4
  %idxprom60 = sext i32 %56 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %55, i64 %idxprom60
  %57 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %57 to i32
  %or63 = or i32 %conv62, 8
  call void @zeroPage(ptr noundef %53, i32 noundef %or63)
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.else54
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then53
  br label %cleardatabasepage_out

cleardatabasepage_out:                            ; preds = %if.end65, %if.then43, %if.then32, %if.then27, %if.then6
  %58 = load ptr, ptr %pPage, align 8
  %bBusy66 = getelementptr inbounds nuw %struct.MemPage, ptr %58, i32 0, i32 1
  store i8 0, ptr %bBusy66, align 1
  %59 = load ptr, ptr %pPage, align 8
  call void @releasePage(ptr noundef %59)
  %60 = load i32, ptr %rc, align 4
  store i32 %60, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cleardatabasepage_out, %if.then3, %if.then
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: nounwind uwtable
declare hidden i32 @clearCell(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @freePage(ptr noundef, ptr noundef) #0

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
