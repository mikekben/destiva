; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

@aJournalMagic = external hidden constant [8 x i8], align 1
@syncJournal.zerobyte = external hidden constant i8, align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDeviceCharacteristics(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @syncJournal(ptr noundef %pPager, i32 noundef %newHdr) #1 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %newHdr.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %iDc = alloca i32, align 4
  %iNextHdrOffset = alloca i64, align 8
  %aMagic = alloca [8 x i8], align 1
  %zHeader = alloca [12 x i8], align 1
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %newHdr, ptr %newHdr.addr, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %call = call i32 @sqlite3PagerExclusiveLock(ptr noundef %0)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pPager.addr, align 8
  %noSync = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 4
  %4 = load i8, ptr %noSync, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end89, label %if.then1

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 31
  %6 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pMethods, align 8
  %cmp2 = icmp ne ptr %7, null
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then1
  %8 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %journalMode, align 1
  %conv = zext i8 %9 to i32
  %cmp3 = icmp ne i32 %conv, 4
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 30
  %11 = load ptr, ptr %fd, align 8
  %call6 = call i32 @sqlite3OsDeviceCharacteristics(ptr noundef %11)
  store i32 %call6, ptr %iDc, align 4
  %12 = load i32, ptr %iDc, align 4
  %and = and i32 %12, 512
  %cmp7 = icmp eq i32 0, %and
  br i1 %cmp7, label %if.then9, label %if.end54

if.then9:                                         ; preds = %if.then5
  %arraydecay = getelementptr inbounds [12 x i8], ptr %zHeader, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 @aJournalMagic, i64 8, i1 false)
  %arrayidx = getelementptr inbounds nuw [12 x i8], ptr %zHeader, i64 0, i64 8
  %13 = load ptr, ptr %pPager.addr, align 8
  %nRec = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 26
  %14 = load i32, ptr %nRec, align 8
  call void @sqlite3Put4byte(ptr noundef %arrayidx, i32 noundef %14)
  %15 = load ptr, ptr %pPager.addr, align 8
  %call10 = call i64 @journalHdrOffset(ptr noundef %15)
  store i64 %call10, ptr %iNextHdrOffset, align 8
  %16 = load ptr, ptr %pPager.addr, align 8
  %jfd11 = getelementptr inbounds nuw %struct.Pager, ptr %16, i32 0, i32 31
  %17 = load ptr, ptr %jfd11, align 8
  %arraydecay12 = getelementptr inbounds [8 x i8], ptr %aMagic, i64 0, i64 0
  %18 = load i64, ptr %iNextHdrOffset, align 8
  %call13 = call i32 @sqlite3OsRead(ptr noundef %17, ptr noundef %arraydecay12, i32 noundef 8, i64 noundef %18)
  store i32 %call13, ptr %rc, align 4
  %19 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %19, 0
  br i1 %cmp14, label %land.lhs.true16, label %if.end24

land.lhs.true16:                                  ; preds = %if.then9
  %arraydecay17 = getelementptr inbounds [8 x i8], ptr %aMagic, i64 0, i64 0
  %call18 = call i32 @memcmp(ptr noundef %arraydecay17, ptr noundef @aJournalMagic, i64 noundef 8) #3
  %cmp19 = icmp eq i32 0, %call18
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %land.lhs.true16
  %20 = load ptr, ptr %pPager.addr, align 8
  %jfd22 = getelementptr inbounds nuw %struct.Pager, ptr %20, i32 0, i32 31
  %21 = load ptr, ptr %jfd22, align 8
  %22 = load i64, ptr %iNextHdrOffset, align 8
  %call23 = call i32 @sqlite3OsWrite(ptr noundef %21, ptr noundef @syncJournal.zerobyte, i32 noundef 1, i64 noundef %22)
  store i32 %call23, ptr %rc, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true16, %if.then9
  %23 = load i32, ptr %rc, align 4
  %cmp25 = icmp ne i32 %23, 0
  br i1 %cmp25, label %land.lhs.true27, label %if.end31

land.lhs.true27:                                  ; preds = %if.end24
  %24 = load i32, ptr %rc, align 4
  %cmp28 = icmp ne i32 %24, 522
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true27
  %25 = load i32, ptr %rc, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true27, %if.end24
  %26 = load ptr, ptr %pPager.addr, align 8
  %fullSync = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 5
  %27 = load i8, ptr %fullSync, align 4
  %conv32 = zext i8 %27 to i32
  %tobool33 = icmp ne i32 %conv32, 0
  br i1 %tobool33, label %land.lhs.true34, label %if.end46

land.lhs.true34:                                  ; preds = %if.end31
  %28 = load i32, ptr %iDc, align 4
  %and35 = and i32 %28, 1024
  %cmp36 = icmp eq i32 0, %and35
  br i1 %cmp36, label %if.then38, label %if.end46

if.then38:                                        ; preds = %land.lhs.true34
  %29 = load ptr, ptr %pPager.addr, align 8
  %jfd39 = getelementptr inbounds nuw %struct.Pager, ptr %29, i32 0, i32 31
  %30 = load ptr, ptr %jfd39, align 8
  %31 = load ptr, ptr %pPager.addr, align 8
  %syncFlags = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 7
  %32 = load i8, ptr %syncFlags, align 2
  %conv40 = zext i8 %32 to i32
  %call41 = call i32 @sqlite3OsSync(ptr noundef %30, i32 noundef %conv40)
  store i32 %call41, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp42 = icmp ne i32 %33, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then38
  %34 = load i32, ptr %rc, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.then38
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %land.lhs.true34, %if.end31
  %35 = load ptr, ptr %pPager.addr, align 8
  %jfd47 = getelementptr inbounds nuw %struct.Pager, ptr %35, i32 0, i32 31
  %36 = load ptr, ptr %jfd47, align 8
  %arraydecay48 = getelementptr inbounds [12 x i8], ptr %zHeader, i64 0, i64 0
  %37 = load ptr, ptr %pPager.addr, align 8
  %journalHdr = getelementptr inbounds nuw %struct.Pager, ptr %37, i32 0, i32 34
  %38 = load i64, ptr %journalHdr, align 8
  %call49 = call i32 @sqlite3OsWrite(ptr noundef %36, ptr noundef %arraydecay48, i32 noundef 12, i64 noundef %38)
  store i32 %call49, ptr %rc, align 4
  %39 = load i32, ptr %rc, align 4
  %cmp50 = icmp ne i32 %39, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end46
  %40 = load i32, ptr %rc, align 4
  store i32 %40, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end46
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then5
  %41 = load i32, ptr %iDc, align 4
  %and55 = and i32 %41, 1024
  %cmp56 = icmp eq i32 0, %and55
  br i1 %cmp56, label %if.then58, label %if.end71

if.then58:                                        ; preds = %if.end54
  %42 = load ptr, ptr %pPager.addr, align 8
  %jfd59 = getelementptr inbounds nuw %struct.Pager, ptr %42, i32 0, i32 31
  %43 = load ptr, ptr %jfd59, align 8
  %44 = load ptr, ptr %pPager.addr, align 8
  %syncFlags60 = getelementptr inbounds nuw %struct.Pager, ptr %44, i32 0, i32 7
  %45 = load i8, ptr %syncFlags60, align 2
  %conv61 = zext i8 %45 to i32
  %46 = load ptr, ptr %pPager.addr, align 8
  %syncFlags62 = getelementptr inbounds nuw %struct.Pager, ptr %46, i32 0, i32 7
  %47 = load i8, ptr %syncFlags62, align 2
  %conv63 = zext i8 %47 to i32
  %cmp64 = icmp eq i32 %conv63, 3
  %48 = zext i1 %cmp64 to i64
  %cond = select i1 %cmp64, i32 16, i32 0
  %or = or i32 %conv61, %cond
  %call66 = call i32 @sqlite3OsSync(ptr noundef %43, i32 noundef %or)
  store i32 %call66, ptr %rc, align 4
  %49 = load i32, ptr %rc, align 4
  %cmp67 = icmp ne i32 %49, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then58
  %50 = load i32, ptr %rc, align 4
  store i32 %50, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.then58
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end54
  %51 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %51, i32 0, i32 33
  %52 = load i64, ptr %journalOff, align 8
  %53 = load ptr, ptr %pPager.addr, align 8
  %journalHdr72 = getelementptr inbounds nuw %struct.Pager, ptr %53, i32 0, i32 34
  store i64 %52, ptr %journalHdr72, align 8
  %54 = load i32, ptr %newHdr.addr, align 4
  %tobool73 = icmp ne i32 %54, 0
  br i1 %tobool73, label %land.lhs.true74, label %if.end85

land.lhs.true74:                                  ; preds = %if.end71
  %55 = load i32, ptr %iDc, align 4
  %and75 = and i32 %55, 512
  %cmp76 = icmp eq i32 0, %and75
  br i1 %cmp76, label %if.then78, label %if.end85

if.then78:                                        ; preds = %land.lhs.true74
  %56 = load ptr, ptr %pPager.addr, align 8
  %nRec79 = getelementptr inbounds nuw %struct.Pager, ptr %56, i32 0, i32 26
  store i32 0, ptr %nRec79, align 8
  %57 = load ptr, ptr %pPager.addr, align 8
  %call80 = call i32 @writeJournalHdr(ptr noundef %57)
  store i32 %call80, ptr %rc, align 4
  %58 = load i32, ptr %rc, align 4
  %cmp81 = icmp ne i32 %58, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then78
  %59 = load i32, ptr %rc, align 4
  store i32 %59, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.then78
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %land.lhs.true74, %if.end71
  br label %if.end88

if.else:                                          ; preds = %land.lhs.true, %if.then1
  %60 = load ptr, ptr %pPager.addr, align 8
  %journalOff86 = getelementptr inbounds nuw %struct.Pager, ptr %60, i32 0, i32 33
  %61 = load i64, ptr %journalOff86, align 8
  %62 = load ptr, ptr %pPager.addr, align 8
  %journalHdr87 = getelementptr inbounds nuw %struct.Pager, ptr %62, i32 0, i32 34
  store i64 %61, ptr %journalHdr87, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.end85
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end
  %63 = load ptr, ptr %pPager.addr, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %63, i32 0, i32 58
  %64 = load ptr, ptr %pPCache, align 8
  call void @sqlite3PcacheClearSyncFlags(ptr noundef %64)
  %65 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %65, i32 0, i32 13
  store i8 4, ptr %eState, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end89, %if.then83, %if.then69, %if.then52, %if.then44, %if.then30, %if.then
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSync(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerExclusiveLock(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @journalHdrOffset(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @writeJournalHdr(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheClearSyncFlags(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
