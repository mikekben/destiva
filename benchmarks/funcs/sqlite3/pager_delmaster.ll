; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @readMasterJournal(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsAccess(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @pager_delmaster(ptr noundef %pPager, ptr noundef %zMaster) #1 {
entry:
  %pPager.addr = alloca ptr, align 8
  %zMaster.addr = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pMaster = alloca ptr, align 8
  %pJournal = alloca ptr, align 8
  %zMasterJournal = alloca ptr, align 8
  %nMasterJournal = alloca i64, align 8
  %zJournal = alloca ptr, align 8
  %zMasterPtr = alloca ptr, align 8
  %nMasterPtr = alloca i32, align 4
  %flags = alloca i32, align 4
  %exists = alloca i32, align 4
  %c = alloca i32, align 4
  %flags36 = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %zMaster, ptr %zMaster.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %pVfs1 = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVfs1, align 8
  store ptr %1, ptr %pVfs, align 8
  store ptr null, ptr %zMasterJournal, align 8
  %2 = load ptr, ptr %pVfs, align 8
  %szOsFile = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %szOsFile, align 4
  %mul = mul nsw i32 %3, 2
  %conv = sext i32 %mul to i64
  %call = call ptr @sqlite3MallocZero(i64 noundef %conv)
  store ptr %call, ptr %pMaster, align 8
  %4 = load ptr, ptr %pMaster, align 8
  %5 = load ptr, ptr %pVfs, align 8
  %szOsFile2 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %szOsFile2, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  store ptr %add.ptr, ptr %pJournal, align 8
  %7 = load ptr, ptr %pMaster, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 16385, ptr %flags, align 4
  %8 = load ptr, ptr %pVfs, align 8
  %9 = load ptr, ptr %zMaster.addr, align 8
  %10 = load ptr, ptr %pMaster, align 8
  %call3 = call i32 @sqlite3OsOpen(ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef 16385, ptr noundef null)
  store i32 %call3, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %delmaster_out

if.end6:                                          ; preds = %if.end
  %12 = load ptr, ptr %pMaster, align 8
  %call7 = call i32 @sqlite3OsFileSize(ptr noundef %12, ptr noundef %nMasterJournal)
  store i32 %call7, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp8 = icmp ne i32 %13, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  br label %delmaster_out

if.end11:                                         ; preds = %if.end6
  %14 = load ptr, ptr %pVfs, align 8
  %mxPathname = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %mxPathname, align 8
  %add = add nsw i32 %15, 1
  store i32 %add, ptr %nMasterPtr, align 4
  %16 = load i64, ptr %nMasterJournal, align 8
  %17 = load i32, ptr %nMasterPtr, align 4
  %conv12 = sext i32 %17 to i64
  %add13 = add nsw i64 %16, %conv12
  %add14 = add nsw i64 %add13, 1
  %call15 = call ptr @sqlite3Malloc(i64 noundef %add14)
  store ptr %call15, ptr %zMasterJournal, align 8
  %18 = load ptr, ptr %zMasterJournal, align 8
  %tobool16 = icmp ne ptr %18, null
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end11
  store i32 7, ptr %rc, align 4
  br label %delmaster_out

if.end18:                                         ; preds = %if.end11
  %19 = load ptr, ptr %zMasterJournal, align 8
  %20 = load i64, ptr %nMasterJournal, align 8
  %add19 = add nsw i64 %20, 1
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 %add19
  store ptr %arrayidx, ptr %zMasterPtr, align 8
  %21 = load ptr, ptr %pMaster, align 8
  %22 = load ptr, ptr %zMasterJournal, align 8
  %23 = load i64, ptr %nMasterJournal, align 8
  %conv20 = trunc i64 %23 to i32
  %call21 = call i32 @sqlite3OsRead(ptr noundef %21, ptr noundef %22, i32 noundef %conv20, i64 noundef 0)
  store i32 %call21, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp22 = icmp ne i32 %24, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  br label %delmaster_out

if.end25:                                         ; preds = %if.end18
  %25 = load ptr, ptr %zMasterJournal, align 8
  %26 = load i64, ptr %nMasterJournal, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %25, i64 %26
  store i8 0, ptr %arrayidx26, align 1
  %27 = load ptr, ptr %zMasterJournal, align 8
  store ptr %27, ptr %zJournal, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end57, %if.end25
  %28 = load ptr, ptr %zJournal, align 8
  %29 = load ptr, ptr %zMasterJournal, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %30 = load i64, ptr %nMasterJournal, align 8
  %cmp27 = icmp slt i64 %sub.ptr.sub, %30
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load ptr, ptr %pVfs, align 8
  %32 = load ptr, ptr %zJournal, align 8
  %call29 = call i32 @sqlite3OsAccess(ptr noundef %31, ptr noundef %32, i32 noundef 0, ptr noundef %exists)
  store i32 %call29, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp30 = icmp ne i32 %33, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.body
  br label %delmaster_out

if.end33:                                         ; preds = %while.body
  %34 = load i32, ptr %exists, align 4
  %tobool34 = icmp ne i32 %34, 0
  br i1 %tobool34, label %if.then35, label %if.end57

if.then35:                                        ; preds = %if.end33
  store i32 2049, ptr %flags36, align 4
  %35 = load ptr, ptr %pVfs, align 8
  %36 = load ptr, ptr %zJournal, align 8
  %37 = load ptr, ptr %pJournal, align 8
  %38 = load i32, ptr %flags36, align 4
  %call37 = call i32 @sqlite3OsOpen(ptr noundef %35, ptr noundef %36, ptr noundef %37, i32 noundef %38, ptr noundef null)
  store i32 %call37, ptr %rc, align 4
  %39 = load i32, ptr %rc, align 4
  %cmp38 = icmp ne i32 %39, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then35
  br label %delmaster_out

if.end41:                                         ; preds = %if.then35
  %40 = load ptr, ptr %pJournal, align 8
  %41 = load ptr, ptr %zMasterPtr, align 8
  %42 = load i32, ptr %nMasterPtr, align 4
  %call42 = call i32 @readMasterJournal(ptr noundef %40, ptr noundef %41, i32 noundef %42)
  store i32 %call42, ptr %rc, align 4
  %43 = load ptr, ptr %pJournal, align 8
  call void @sqlite3OsClose(ptr noundef %43)
  %44 = load i32, ptr %rc, align 4
  %cmp43 = icmp ne i32 %44, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  br label %delmaster_out

if.end46:                                         ; preds = %if.end41
  %45 = load ptr, ptr %zMasterPtr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %46 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  br i1 %cmp49, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end46
  %47 = load ptr, ptr %zMasterPtr, align 8
  %48 = load ptr, ptr %zMaster.addr, align 8
  %call51 = call i32 @strcmp(ptr noundef %47, ptr noundef %48) #2
  %cmp52 = icmp eq i32 %call51, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end46
  %49 = phi i1 [ false, %if.end46 ], [ %cmp52, %land.rhs ]
  %land.ext = zext i1 %49 to i32
  store i32 %land.ext, ptr %c, align 4
  %50 = load i32, ptr %c, align 4
  %tobool54 = icmp ne i32 %50, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.end
  br label %delmaster_out

if.end56:                                         ; preds = %land.end
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end33
  %51 = load ptr, ptr %zJournal, align 8
  %call58 = call i32 @sqlite3Strlen30(ptr noundef %51)
  %add59 = add nsw i32 %call58, 1
  %52 = load ptr, ptr %zJournal, align 8
  %idx.ext60 = sext i32 %add59 to i64
  %add.ptr61 = getelementptr inbounds i8, ptr %52, i64 %idx.ext60
  store ptr %add.ptr61, ptr %zJournal, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %53 = load ptr, ptr %pMaster, align 8
  call void @sqlite3OsClose(ptr noundef %53)
  %54 = load ptr, ptr %pVfs, align 8
  %55 = load ptr, ptr %zMaster.addr, align 8
  %call62 = call i32 @sqlite3OsDelete(ptr noundef %54, ptr noundef %55, i32 noundef 0)
  store i32 %call62, ptr %rc, align 4
  br label %delmaster_out

delmaster_out:                                    ; preds = %while.end, %if.then55, %if.then45, %if.then40, %if.then32, %if.then24, %if.then17, %if.then10, %if.then5
  %56 = load ptr, ptr %zMasterJournal, align 8
  call void @sqlite3_free(ptr noundef %56)
  %57 = load ptr, ptr %pMaster, align 8
  %tobool63 = icmp ne ptr %57, null
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %delmaster_out
  %58 = load ptr, ptr %pMaster, align 8
  call void @sqlite3OsClose(ptr noundef %58)
  %59 = load ptr, ptr %pMaster, align 8
  call void @sqlite3_free(ptr noundef %59)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %delmaster_out
  %60 = load i32, ptr %rc, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDelete(ptr noundef, ptr noundef, i32 noundef) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
