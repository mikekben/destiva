; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

@aJournalMagic = external hidden constant [8 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSetPagesize(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @journalHdrOffset(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @readJournalHdr(ptr noundef %pPager, i32 noundef %isHot, i64 noundef %journalSize, ptr noundef %pNRec, ptr noundef %pDbSize) #1 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %isHot.addr = alloca i32, align 4
  %journalSize.addr = alloca i64, align 8
  %pNRec.addr = alloca ptr, align 8
  %pDbSize.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %aMagic = alloca [8 x i8], align 1
  %iHdrOff = alloca i64, align 8
  %iPageSize = alloca i32, align 4
  %iSectorSize = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %isHot, ptr %isHot.addr, align 4
  store i64 %journalSize, ptr %journalSize.addr, align 8
  store ptr %pNRec, ptr %pNRec.addr, align 8
  store ptr %pDbSize, ptr %pDbSize.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %call = call i64 @journalHdrOffset(ptr noundef %0)
  %1 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 33
  store i64 %call, ptr %journalOff, align 8
  %2 = load ptr, ptr %pPager.addr, align 8
  %journalOff1 = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 33
  %3 = load i64, ptr %journalOff1, align 8
  %4 = load ptr, ptr %pPager.addr, align 8
  %sectorSize = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 46
  %5 = load i32, ptr %sectorSize, align 8
  %conv = zext i32 %5 to i64
  %add = add nsw i64 %3, %conv
  %6 = load i64, ptr %journalSize.addr, align 8
  %cmp = icmp sgt i64 %add, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 101, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pPager.addr, align 8
  %journalOff3 = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 33
  %8 = load i64, ptr %journalOff3, align 8
  store i64 %8, ptr %iHdrOff, align 8
  %9 = load i32, ptr %isHot.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i64, ptr %iHdrOff, align 8
  %11 = load ptr, ptr %pPager.addr, align 8
  %journalHdr = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 34
  %12 = load i64, ptr %journalHdr, align 8
  %cmp4 = icmp ne i64 %10, %12
  br i1 %cmp4, label %if.then6, label %if.end17

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %13 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 31
  %14 = load ptr, ptr %jfd, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %aMagic, i64 0, i64 0
  %15 = load i64, ptr %iHdrOff, align 8
  %call7 = call i32 @sqlite3OsRead(ptr noundef %14, ptr noundef %arraydecay, i32 noundef 8, i64 noundef %15)
  store i32 %call7, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  %17 = load i32, ptr %rc, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  %arraydecay11 = getelementptr inbounds [8 x i8], ptr %aMagic, i64 0, i64 0
  %call12 = call i32 @memcmp(ptr noundef %arraydecay11, ptr noundef @aJournalMagic, i64 noundef 8) #2
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  store i32 101, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %lor.lhs.false
  %18 = load ptr, ptr %pPager.addr, align 8
  %jfd18 = getelementptr inbounds nuw %struct.Pager, ptr %18, i32 0, i32 31
  %19 = load ptr, ptr %jfd18, align 8
  %20 = load i64, ptr %iHdrOff, align 8
  %add19 = add nsw i64 %20, 8
  %21 = load ptr, ptr %pNRec.addr, align 8
  %call20 = call i32 @read32bits(ptr noundef %19, i64 noundef %add19, ptr noundef %21)
  store i32 %call20, ptr %rc, align 4
  %cmp21 = icmp ne i32 0, %call20
  br i1 %cmp21, label %if.then35, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end17
  %22 = load ptr, ptr %pPager.addr, align 8
  %jfd24 = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 31
  %23 = load ptr, ptr %jfd24, align 8
  %24 = load i64, ptr %iHdrOff, align 8
  %add25 = add nsw i64 %24, 12
  %25 = load ptr, ptr %pPager.addr, align 8
  %cksumInit = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 27
  %call26 = call i32 @read32bits(ptr noundef %23, i64 noundef %add25, ptr noundef %cksumInit)
  store i32 %call26, ptr %rc, align 4
  %cmp27 = icmp ne i32 0, %call26
  br i1 %cmp27, label %if.then35, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %26 = load ptr, ptr %pPager.addr, align 8
  %jfd30 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 31
  %27 = load ptr, ptr %jfd30, align 8
  %28 = load i64, ptr %iHdrOff, align 8
  %add31 = add nsw i64 %28, 16
  %29 = load ptr, ptr %pDbSize.addr, align 8
  %call32 = call i32 @read32bits(ptr noundef %27, i64 noundef %add31, ptr noundef %29)
  store i32 %call32, ptr %rc, align 4
  %cmp33 = icmp ne i32 0, %call32
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %lor.lhs.false29, %lor.lhs.false23, %if.end17
  %30 = load i32, ptr %rc, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %lor.lhs.false29
  %31 = load ptr, ptr %pPager.addr, align 8
  %journalOff37 = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 33
  %32 = load i64, ptr %journalOff37, align 8
  %cmp38 = icmp eq i64 %32, 0
  br i1 %cmp38, label %if.then40, label %if.end81

if.then40:                                        ; preds = %if.end36
  %33 = load ptr, ptr %pPager.addr, align 8
  %jfd41 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 31
  %34 = load ptr, ptr %jfd41, align 8
  %35 = load i64, ptr %iHdrOff, align 8
  %add42 = add nsw i64 %35, 20
  %call43 = call i32 @read32bits(ptr noundef %34, i64 noundef %add42, ptr noundef %iSectorSize)
  store i32 %call43, ptr %rc, align 4
  %cmp44 = icmp ne i32 0, %call43
  br i1 %cmp44, label %if.then52, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.then40
  %36 = load ptr, ptr %pPager.addr, align 8
  %jfd47 = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 31
  %37 = load ptr, ptr %jfd47, align 8
  %38 = load i64, ptr %iHdrOff, align 8
  %add48 = add nsw i64 %38, 24
  %call49 = call i32 @read32bits(ptr noundef %37, i64 noundef %add48, ptr noundef %iPageSize)
  store i32 %call49, ptr %rc, align 4
  %cmp50 = icmp ne i32 0, %call49
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false46, %if.then40
  %39 = load i32, ptr %rc, align 4
  store i32 %39, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %lor.lhs.false46
  %40 = load i32, ptr %iPageSize, align 4
  %cmp54 = icmp eq i32 %40, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  %41 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %41, i32 0, i32 47
  %42 = load i32, ptr %pageSize, align 4
  store i32 %42, ptr %iPageSize, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53
  %43 = load i32, ptr %iPageSize, align 4
  %cmp58 = icmp ult i32 %43, 512
  br i1 %cmp58, label %if.then77, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end57
  %44 = load i32, ptr %iSectorSize, align 4
  %cmp61 = icmp ult i32 %44, 32
  br i1 %cmp61, label %if.then77, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %45 = load i32, ptr %iPageSize, align 4
  %cmp64 = icmp ugt i32 %45, 65536
  br i1 %cmp64, label %if.then77, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %46 = load i32, ptr %iSectorSize, align 4
  %cmp67 = icmp ugt i32 %46, 65536
  br i1 %cmp67, label %if.then77, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false66
  %47 = load i32, ptr %iPageSize, align 4
  %sub = sub i32 %47, 1
  %48 = load i32, ptr %iPageSize, align 4
  %and = and i32 %sub, %48
  %cmp70 = icmp ne i32 %and, 0
  br i1 %cmp70, label %if.then77, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false69
  %49 = load i32, ptr %iSectorSize, align 4
  %sub73 = sub i32 %49, 1
  %50 = load i32, ptr %iSectorSize, align 4
  %and74 = and i32 %sub73, %50
  %cmp75 = icmp ne i32 %and74, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %lor.lhs.false72, %lor.lhs.false69, %lor.lhs.false66, %lor.lhs.false63, %lor.lhs.false60, %if.end57
  store i32 101, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %lor.lhs.false72
  %51 = load ptr, ptr %pPager.addr, align 8
  %call79 = call i32 @sqlite3PagerSetPagesize(ptr noundef %51, ptr noundef %iPageSize, i32 noundef -1)
  store i32 %call79, ptr %rc, align 4
  %52 = load i32, ptr %iSectorSize, align 4
  %53 = load ptr, ptr %pPager.addr, align 8
  %sectorSize80 = getelementptr inbounds nuw %struct.Pager, ptr %53, i32 0, i32 46
  store i32 %52, ptr %sectorSize80, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end78, %if.end36
  %54 = load ptr, ptr %pPager.addr, align 8
  %sectorSize82 = getelementptr inbounds nuw %struct.Pager, ptr %54, i32 0, i32 46
  %55 = load i32, ptr %sectorSize82, align 8
  %conv83 = zext i32 %55 to i64
  %56 = load ptr, ptr %pPager.addr, align 8
  %journalOff84 = getelementptr inbounds nuw %struct.Pager, ptr %56, i32 0, i32 33
  %57 = load i64, ptr %journalOff84, align 8
  %add85 = add nsw i64 %57, %conv83
  store i64 %add85, ptr %journalOff84, align 8
  %58 = load i32, ptr %rc, align 4
  store i32 %58, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end81, %if.then77, %if.then52, %if.then35, %if.then15, %if.then9, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

; Function Attrs: nounwind uwtable
declare hidden i32 @read32bits(ptr noundef, i64 noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
