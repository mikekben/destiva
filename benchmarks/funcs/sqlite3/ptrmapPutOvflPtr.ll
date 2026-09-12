; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPut(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @ptrmapPutOvflPtr(ptr noundef %pPage, ptr noundef %pSrc, ptr noundef %pCell, ptr noundef %pRC) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %pRC.addr = alloca ptr, align 8
  %info = alloca %struct.CellInfo, align 8
  %ovfl = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store ptr %pRC, ptr %pRC.addr, align 8
  %0 = load ptr, ptr %pRC.addr, align 8
  %1 = load i32, ptr %0, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end14

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pPage.addr, align 8
  %xParseCell = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 25
  %3 = load ptr, ptr %xParseCell, align 8
  %4 = load ptr, ptr %pPage.addr, align 8
  %5 = load ptr, ptr %pCell.addr, align 8
  call void %3(ptr noundef %4, ptr noundef %5, ptr noundef %info)
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 3
  %6 = load i16, ptr %nLocal, align 4
  %conv = zext i16 %6 to i32
  %nPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 2
  %7 = load i32, ptr %nPayload, align 8
  %cmp = icmp ult i32 %conv, %7
  br i1 %cmp, label %if.then2, label %if.end14

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %pSrc.addr, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 20
  %9 = load ptr, ptr %aDataEnd, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = load ptr, ptr %pCell.addr, align 8
  %12 = ptrtoint ptr %11 to i64
  %cmp3 = icmp uge i64 %10, %12
  br i1 %cmp3, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then2
  %13 = load ptr, ptr %pSrc.addr, align 8
  %aDataEnd5 = getelementptr inbounds nuw %struct.MemPage, ptr %13, i32 0, i32 20
  %14 = load ptr, ptr %aDataEnd5, align 8
  %15 = ptrtoint ptr %14 to i64
  %16 = load ptr, ptr %pCell.addr, align 8
  %nLocal6 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 3
  %17 = load i16, ptr %nLocal6, align 4
  %conv7 = zext i16 %17 to i32
  %idx.ext = sext i32 %conv7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %idx.ext
  %18 = ptrtoint ptr %add.ptr to i64
  %cmp8 = icmp ult i64 %15, %18
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %call = call i32 @sqlite3CorruptError(i32 noundef 64781)
  %19 = load ptr, ptr %pRC.addr, align 8
  store i32 %call, ptr %19, align 4
  br label %if.end14

if.end11:                                         ; preds = %land.lhs.true, %if.then2
  %20 = load ptr, ptr %pCell.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  %21 = load i16, ptr %nSize, align 2
  %conv12 = zext i16 %21 to i32
  %sub = sub nsw i32 %conv12, 4
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %20, i64 %idxprom
  %call13 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call13, ptr %ovfl, align 4
  %22 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %22, i32 0, i32 18
  %23 = load ptr, ptr %pBt, align 8
  %24 = load i32, ptr %ovfl, align 4
  %25 = load ptr, ptr %pPage.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.MemPage, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %pgno, align 4
  %27 = load ptr, ptr %pRC.addr, align 8
  call void @ptrmapPut(ptr noundef %23, i32 noundef %24, i8 noundef zeroext 3, i32 noundef %26, ptr noundef %27)
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.then10, %if.end, %if.then
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
