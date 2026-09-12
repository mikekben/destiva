; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPutOvflPtr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @insertCell(ptr noundef %pPage, i32 noundef %i, ptr noundef %pCell, i32 noundef %sz, ptr noundef %pTemp, i32 noundef %iChild, ptr noundef %pRC) #1 {
entry:
  %pPage.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pCell.addr = alloca ptr, align 8
  %sz.addr = alloca i32, align 4
  %pTemp.addr = alloca ptr, align 8
  %iChild.addr = alloca i32, align 4
  %pRC.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca ptr, align 8
  %pIns = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %pCell, ptr %pCell.addr, align 8
  store i32 %sz, ptr %sz.addr, align 4
  store ptr %pTemp, ptr %pTemp.addr, align 8
  store i32 %iChild, ptr %iChild.addr, align 4
  store ptr %pRC, ptr %pRC.addr, align 8
  store i32 0, ptr %idx, align 4
  %0 = load ptr, ptr %pPage.addr, align 8
  %nOverflow = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 9
  %1 = load i8, ptr %nOverflow, align 4
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %sz.addr, align 4
  %add = add nsw i32 %2, 2
  %3 = load ptr, ptr %pPage.addr, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 13
  %4 = load i32, ptr %nFree, align 4
  %cmp = icmp sgt i32 %add, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %pTemp.addr, align 8
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %pTemp.addr, align 8
  %7 = load ptr, ptr %pCell.addr, align 8
  %8 = load i32, ptr %sz.addr, align 4
  %conv4 = sext i32 %8 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %7, i64 %conv4, i1 false)
  %9 = load ptr, ptr %pTemp.addr, align 8
  store ptr %9, ptr %pCell.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %10 = load i32, ptr %iChild.addr, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %pCell.addr, align 8
  %12 = load i32, ptr %iChild.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %11, i32 noundef %12)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %13 = load ptr, ptr %pPage.addr, align 8
  %nOverflow8 = getelementptr inbounds nuw %struct.MemPage, ptr %13, i32 0, i32 9
  %14 = load i8, ptr %nOverflow8, align 4
  %inc = add i8 %14, 1
  store i8 %inc, ptr %nOverflow8, align 4
  %conv9 = zext i8 %14 to i32
  store i32 %conv9, ptr %j, align 4
  %15 = load ptr, ptr %pCell.addr, align 8
  %16 = load ptr, ptr %pPage.addr, align 8
  %apOvfl = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 17
  %17 = load i32, ptr %j, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %apOvfl, i64 0, i64 %idxprom
  store ptr %15, ptr %arrayidx, align 8
  %18 = load i32, ptr %i.addr, align 4
  %conv10 = trunc i32 %18 to i16
  %19 = load ptr, ptr %pPage.addr, align 8
  %aiOvfl = getelementptr inbounds nuw %struct.MemPage, ptr %19, i32 0, i32 16
  %20 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds [4 x i16], ptr %aiOvfl, i64 0, i64 %idxprom11
  store i16 %conv10, ptr %arrayidx12, align 2
  br label %if.end70

if.else:                                          ; preds = %lor.lhs.false
  %21 = load ptr, ptr %pPage.addr, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %pDbPage, align 8
  %call = call i32 @sqlite3PagerWrite(ptr noundef %22)
  store i32 %call, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp13 = icmp ne i32 %23, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.else
  %24 = load i32, ptr %rc, align 4
  %25 = load ptr, ptr %pRC.addr, align 8
  store i32 %24, ptr %25, align 4
  br label %if.end70

if.end16:                                         ; preds = %if.else
  %26 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 19
  %27 = load ptr, ptr %aData, align 8
  store ptr %27, ptr %data, align 8
  %28 = load ptr, ptr %pPage.addr, align 8
  %29 = load i32, ptr %sz.addr, align 4
  %call17 = call i32 @allocateSpace(ptr noundef %28, i32 noundef %29, ptr noundef %idx)
  store i32 %call17, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %tobool18 = icmp ne i32 %30, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %31 = load i32, ptr %rc, align 4
  %32 = load ptr, ptr %pRC.addr, align 8
  store i32 %31, ptr %32, align 4
  br label %if.end70

if.end20:                                         ; preds = %if.end16
  %33 = load i32, ptr %sz.addr, align 4
  %add21 = add nsw i32 2, %33
  %conv22 = trunc i32 %add21 to i16
  %conv23 = zext i16 %conv22 to i32
  %34 = load ptr, ptr %pPage.addr, align 8
  %nFree24 = getelementptr inbounds nuw %struct.MemPage, ptr %34, i32 0, i32 13
  %35 = load i32, ptr %nFree24, align 4
  %sub = sub nsw i32 %35, %conv23
  store i32 %sub, ptr %nFree24, align 4
  %36 = load i32, ptr %iChild.addr, align 4
  %tobool25 = icmp ne i32 %36, 0
  br i1 %tobool25, label %if.then26, label %if.else34

if.then26:                                        ; preds = %if.end20
  %37 = load ptr, ptr %data, align 8
  %38 = load i32, ptr %idx, align 4
  %add27 = add nsw i32 %38, 4
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %37, i64 %idxprom28
  %39 = load ptr, ptr %pCell.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 4
  %40 = load i32, ptr %sz.addr, align 4
  %sub30 = sub nsw i32 %40, 4
  %conv31 = sext i32 %sub30 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx29, ptr align 1 %add.ptr, i64 %conv31, i1 false)
  %41 = load ptr, ptr %data, align 8
  %42 = load i32, ptr %idx, align 4
  %idxprom32 = sext i32 %42 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %41, i64 %idxprom32
  %43 = load i32, ptr %iChild.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx33, i32 noundef %43)
  br label %if.end38

if.else34:                                        ; preds = %if.end20
  %44 = load ptr, ptr %data, align 8
  %45 = load i32, ptr %idx, align 4
  %idxprom35 = sext i32 %45 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %44, i64 %idxprom35
  %46 = load ptr, ptr %pCell.addr, align 8
  %47 = load i32, ptr %sz.addr, align 4
  %conv37 = sext i32 %47 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx36, ptr align 1 %46, i64 %conv37, i1 false)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then26
  %48 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %48, i32 0, i32 21
  %49 = load ptr, ptr %aCellIdx, align 8
  %50 = load i32, ptr %i.addr, align 4
  %mul = mul nsw i32 %50, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr39 = getelementptr inbounds i8, ptr %49, i64 %idx.ext
  store ptr %add.ptr39, ptr %pIns, align 8
  %51 = load ptr, ptr %pIns, align 8
  %add.ptr40 = getelementptr inbounds i8, ptr %51, i64 2
  %52 = load ptr, ptr %pIns, align 8
  %53 = load ptr, ptr %pPage.addr, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %53, i32 0, i32 14
  %54 = load i16, ptr %nCell, align 8
  %conv41 = zext i16 %54 to i32
  %55 = load i32, ptr %i.addr, align 4
  %sub42 = sub nsw i32 %conv41, %55
  %mul43 = mul nsw i32 2, %sub42
  %conv44 = sext i32 %mul43 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr40, ptr align 1 %52, i64 %conv44, i1 false)
  %56 = load i32, ptr %idx, align 4
  %shr = ashr i32 %56, 8
  %conv45 = trunc i32 %shr to i8
  %57 = load ptr, ptr %pIns, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %57, i64 0
  store i8 %conv45, ptr %arrayidx46, align 1
  %58 = load i32, ptr %idx, align 4
  %conv47 = trunc i32 %58 to i8
  %59 = load ptr, ptr %pIns, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %conv47, ptr %arrayidx48, align 1
  %60 = load ptr, ptr %pPage.addr, align 8
  %nCell49 = getelementptr inbounds nuw %struct.MemPage, ptr %60, i32 0, i32 14
  %61 = load i16, ptr %nCell49, align 8
  %inc50 = add i16 %61, 1
  store i16 %inc50, ptr %nCell49, align 8
  %62 = load ptr, ptr %data, align 8
  %63 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %63, i32 0, i32 6
  %64 = load i8, ptr %hdrOffset, align 1
  %conv51 = zext i8 %64 to i32
  %add52 = add nsw i32 %conv51, 4
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %62, i64 %idxprom53
  %65 = load i8, ptr %arrayidx54, align 1
  %inc55 = add i8 %65, 1
  store i8 %inc55, ptr %arrayidx54, align 1
  %conv56 = zext i8 %inc55 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.end38
  %66 = load ptr, ptr %data, align 8
  %67 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset60 = getelementptr inbounds nuw %struct.MemPage, ptr %67, i32 0, i32 6
  %68 = load i8, ptr %hdrOffset60, align 1
  %conv61 = zext i8 %68 to i32
  %add62 = add nsw i32 %conv61, 3
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %66, i64 %idxprom63
  %69 = load i8, ptr %arrayidx64, align 1
  %inc65 = add i8 %69, 1
  store i8 %inc65, ptr %arrayidx64, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %if.end38
  %70 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %70, i32 0, i32 18
  %71 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %71, i32 0, i32 5
  %72 = load i8, ptr %autoVacuum, align 1
  %tobool67 = icmp ne i8 %72, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end66
  %73 = load ptr, ptr %pPage.addr, align 8
  %74 = load ptr, ptr %pPage.addr, align 8
  %75 = load ptr, ptr %pCell.addr, align 8
  %76 = load ptr, ptr %pRC.addr, align 8
  call void @ptrmapPutOvflPtr(ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %76)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end66
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then19, %if.then15, %if.end7
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @allocateSpace(ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
