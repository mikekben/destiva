; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }
%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }

@.str.1228 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobSearch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ZipExtract(ptr noundef %pArch, ptr noundef %zCentral, i32 noundef %nLen, ptr noundef %pSrc) #0 {
entry:
  %pArch.addr = alloca ptr, align 8
  %zCentral.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pSrc.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pDup = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nIncr = alloca i32, align 4
  %nOfft = alloca i32, align 4
  %pName = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nJmp = alloca i32, align 4
  store ptr %pArch, ptr %pArch.addr, align 8
  store ptr %zCentral, ptr %zCentral.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i32 0, ptr %nIncr, align 4
  store i32 0, ptr %nOfft, align 4
  %0 = load ptr, ptr %zCentral.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end71, %if.then56, %if.then45, %if.then25, %entry
  %2 = load ptr, ptr %zCentral.addr, align 8
  %3 = load i32, ptr %nOfft, align 4
  %idxprom1 = zext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %2, i64 %idxprom1
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %arrayidx2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %pArch.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyArchive, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pAllocator, align 8
  %call = call ptr @SyMemBackendPoolAlloc(ptr noundef %6, i32 noundef 168)
  store ptr %call, ptr %pEntry, align 8
  %7 = load ptr, ptr %pEntry, align 8
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %for.end

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %pEntry, align 8
  call void @SyZero(ptr noundef %8, i32 noundef 168)
  %9 = load ptr, ptr %pEntry, align 8
  %nMagic = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %9, i32 0, i32 17
  store i32 -559062182, ptr %nMagic, align 8
  store i32 0, ptr %nIncr, align 4
  %10 = load ptr, ptr %pArch.addr, align 8
  %11 = load ptr, ptr %pEntry, align 8
  %12 = load ptr, ptr %zCentral.addr, align 8
  %13 = load i32, ptr %nOfft, align 4
  %idxprom6 = zext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %12, i64 %idxprom6
  %call8 = call i32 @GetCentralDirectoryEntry(ptr noundef %10, ptr noundef %11, ptr noundef %arrayidx7, ptr noundef %nIncr)
  store i32 %call8, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  %15 = load ptr, ptr %pEntry, align 8
  %16 = load ptr, ptr %pSrc.addr, align 8
  %call11 = call i32 @ZipFixOffset(ptr noundef %15, ptr noundef %16)
  store i32 %call11, ptr %rc, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5
  %17 = load i32, ptr %rc, align 4
  %cmp13 = icmp ne i32 %17, 0
  br i1 %cmp13, label %if.then14, label %if.end29

if.then14:                                        ; preds = %if.end12
  store i32 0, ptr %nJmp, align 4
  %18 = load ptr, ptr %pArch.addr, align 8
  %pAllocator15 = getelementptr inbounds nuw %struct.SyArchive, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pAllocator15, align 8
  %20 = load ptr, ptr %pEntry, align 8
  %call16 = call i32 @SyMemBackendPoolFree(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %zCentral.addr, align 8
  %22 = load i32, ptr %nOfft, align 4
  %23 = load i32, ptr %nIncr, align 4
  %add = add i32 %22, %23
  %idxprom17 = zext i32 %add to i64
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %21, i64 %idxprom17
  %24 = load ptr, ptr %zEnd, align 8
  %25 = load ptr, ptr %zCentral.addr, align 8
  %26 = load i32, ptr %nOfft, align 4
  %27 = load i32, ptr %nIncr, align 4
  %add19 = add i32 %26, %27
  %idxprom20 = zext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom20
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %call22 = call i32 @SyBlobSearch(ptr noundef %arrayidx18, i32 noundef %conv, ptr noundef @.str.1228, i32 noundef 4, ptr noundef %nJmp)
  %cmp23 = icmp eq i32 0, %call22
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then14
  %28 = load i32, ptr %nIncr, align 4
  %29 = load i32, ptr %nJmp, align 4
  %add26 = add i32 %28, %29
  %30 = load i32, ptr %nOfft, align 4
  %add27 = add i32 %30, %add26
  store i32 %add27, ptr %nOfft, align 4
  br label %for.cond

if.end28:                                         ; preds = %if.then14
  br label %for.end

if.end29:                                         ; preds = %if.end12
  %31 = load ptr, ptr %pEntry, align 8
  %sFileName = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %31, i32 0, i32 8
  store ptr %sFileName, ptr %pName, align 8
  %32 = load ptr, ptr %zCentral.addr, align 8
  %33 = load i32, ptr %nOfft, align 4
  %add30 = add i32 %33, 46
  %idxprom31 = zext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %32, i64 %idxprom31
  %34 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %34, i32 0, i32 0
  store ptr %arrayidx32, ptr %zString, align 8
  %35 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %nByte, align 8
  %cmp33 = icmp ule i32 %36, 0
  br i1 %cmp33, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %37 = load ptr, ptr %pEntry, align 8
  %nByte35 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %nByte35, align 8
  %cmp36 = icmp ule i32 %38, 0
  br i1 %cmp36, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %lor.lhs.false
  %39 = load ptr, ptr %pName, align 8
  %zString38 = getelementptr inbounds nuw %struct.SyString, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %zString38, align 8
  %41 = load ptr, ptr %pName, align 8
  %nByte39 = getelementptr inbounds nuw %struct.SyString, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %nByte39, align 8
  %sub = sub i32 %42, 1
  %idxprom40 = zext i32 %sub to i64
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %40, i64 %idxprom40
  %43 = load i8, ptr %arrayidx41, align 1
  %conv42 = sext i8 %43 to i32
  %cmp43 = icmp ne i32 %conv42, 47
  br i1 %cmp43, label %if.then45, label %if.end49

if.then45:                                        ; preds = %land.lhs.true, %if.end29
  %44 = load ptr, ptr %pArch.addr, align 8
  %pAllocator46 = getelementptr inbounds nuw %struct.SyArchive, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %pAllocator46, align 8
  %46 = load ptr, ptr %pEntry, align 8
  %call47 = call i32 @SyMemBackendPoolFree(ptr noundef %45, ptr noundef %46)
  %47 = load i32, ptr %nIncr, align 4
  %48 = load i32, ptr %nOfft, align 4
  %add48 = add i32 %48, %47
  store i32 %add48, ptr %nOfft, align 4
  br label %for.cond

if.end49:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %49 = load ptr, ptr %pArch.addr, align 8
  %pAllocator50 = getelementptr inbounds nuw %struct.SyArchive, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %pAllocator50, align 8
  %51 = load ptr, ptr %pName, align 8
  %zString51 = getelementptr inbounds nuw %struct.SyString, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %zString51, align 8
  %53 = load ptr, ptr %pName, align 8
  %nByte52 = getelementptr inbounds nuw %struct.SyString, ptr %53, i32 0, i32 1
  %54 = load i32, ptr %nByte52, align 8
  %call53 = call ptr @SyMemBackendStrDup(ptr noundef %50, ptr noundef %52, i32 noundef %54)
  store ptr %call53, ptr %zName, align 8
  %55 = load ptr, ptr %zName, align 8
  %cmp54 = icmp eq ptr %55, null
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.end49
  %56 = load ptr, ptr %pArch.addr, align 8
  %pAllocator57 = getelementptr inbounds nuw %struct.SyArchive, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %pAllocator57, align 8
  %58 = load ptr, ptr %pEntry, align 8
  %call58 = call i32 @SyMemBackendPoolFree(ptr noundef %57, ptr noundef %58)
  %59 = load i32, ptr %nIncr, align 4
  %60 = load i32, ptr %nOfft, align 4
  %add59 = add i32 %60, %59
  store i32 %add59, ptr %nOfft, align 4
  br label %for.cond

if.end60:                                         ; preds = %if.end49
  %61 = load ptr, ptr %zName, align 8
  %62 = load ptr, ptr %pName, align 8
  %zString61 = getelementptr inbounds nuw %struct.SyString, ptr %62, i32 0, i32 0
  store ptr %61, ptr %zString61, align 8
  %63 = load ptr, ptr %pArch.addr, align 8
  %64 = load ptr, ptr %pName, align 8
  %zString62 = getelementptr inbounds nuw %struct.SyString, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %zString62, align 8
  %66 = load ptr, ptr %pName, align 8
  %nByte63 = getelementptr inbounds nuw %struct.SyString, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %nByte63, align 8
  %call64 = call i32 @ArchiveHashGetEntry(ptr noundef %63, ptr noundef %65, i32 noundef %67, ptr noundef %pDup)
  store i32 %call64, ptr %rc, align 4
  %68 = load i32, ptr %rc, align 4
  %cmp65 = icmp eq i32 %68, 0
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end60
  %69 = load ptr, ptr %pDup, align 8
  %pNextName = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %69, i32 0, i32 12
  %70 = load ptr, ptr %pNextName, align 8
  %71 = load ptr, ptr %pEntry, align 8
  %pNextName68 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %71, i32 0, i32 12
  store ptr %70, ptr %pNextName68, align 8
  %72 = load ptr, ptr %pEntry, align 8
  %73 = load ptr, ptr %pDup, align 8
  %pNextName69 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %73, i32 0, i32 12
  store ptr %72, ptr %pNextName69, align 8
  %74 = load ptr, ptr %pDup, align 8
  %nDup = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %74, i32 0, i32 9
  %75 = load i32, ptr %nDup, align 8
  %inc = add i32 %75, 1
  store i32 %inc, ptr %nDup, align 8
  br label %if.end71

if.else:                                          ; preds = %if.end60
  %76 = load ptr, ptr %pArch.addr, align 8
  %77 = load ptr, ptr %pEntry, align 8
  %call70 = call i32 @ArchiveHashInstallEntry(ptr noundef %76, ptr noundef %77)
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then67
  %78 = load i32, ptr %nIncr, align 4
  %79 = load i32, ptr %nOfft, align 4
  %add72 = add i32 %79, %78
  store i32 %add72, ptr %nOfft, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end28, %if.then4, %if.then
  %80 = load ptr, ptr %pArch.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyArchive, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %pList, align 8
  %82 = load ptr, ptr %pArch.addr, align 8
  %pCursor = getelementptr inbounds nuw %struct.SyArchive, ptr %82, i32 0, i32 1
  store ptr %81, ptr %pCursor, align 8
  %83 = load ptr, ptr %pArch.addr, align 8
  %nLoaded = getelementptr inbounds nuw %struct.SyArchive, ptr %83, i32 0, i32 8
  %84 = load i32, ptr %nLoaded, align 8
  %cmp73 = icmp ugt i32 %84, 0
  %85 = zext i1 %cmp73 to i64
  %cond = select i1 %cmp73, i32 0, i32 -3
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GetCentralDirectoryEntry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ZipFixOffset(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ArchiveHashGetEntry(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ArchiveHashInstallEntry(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
