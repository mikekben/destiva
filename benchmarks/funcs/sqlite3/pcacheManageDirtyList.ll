; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @pcacheManageDirtyList(ptr noundef %pPage, i8 noundef zeroext %addRemove) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %addRemove.addr = alloca i8, align 1
  %p = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store i8 %addRemove, ptr %addRemove.addr, align 1
  %0 = load ptr, ptr %pPage.addr, align 8
  %pCache = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pCache, align 8
  store ptr %1, ptr %p, align 8
  %2 = load i8, ptr %addRemove.addr, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %pSynced = getelementptr inbounds nuw %struct.PCache, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pSynced, align 8
  %5 = load ptr, ptr %pPage.addr, align 8
  %cmp = icmp eq ptr %4, %5
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %pPage.addr, align 8
  %pDirtyPrev = getelementptr inbounds nuw %struct.PgHdr, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %pDirtyPrev, align 8
  %8 = load ptr, ptr %p, align 8
  %pSynced3 = getelementptr inbounds nuw %struct.PCache, ptr %8, i32 0, i32 2
  store ptr %7, ptr %pSynced3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %9 = load ptr, ptr %pPage.addr, align 8
  %pDirtyNext = getelementptr inbounds nuw %struct.PgHdr, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %pDirtyNext, align 8
  %tobool4 = icmp ne ptr %10, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %pPage.addr, align 8
  %pDirtyPrev6 = getelementptr inbounds nuw %struct.PgHdr, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %pDirtyPrev6, align 8
  %13 = load ptr, ptr %pPage.addr, align 8
  %pDirtyNext7 = getelementptr inbounds nuw %struct.PgHdr, ptr %13, i32 0, i32 9
  %14 = load ptr, ptr %pDirtyNext7, align 8
  %pDirtyPrev8 = getelementptr inbounds nuw %struct.PgHdr, ptr %14, i32 0, i32 10
  store ptr %12, ptr %pDirtyPrev8, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %pPage.addr, align 8
  %pDirtyPrev9 = getelementptr inbounds nuw %struct.PgHdr, ptr %15, i32 0, i32 10
  %16 = load ptr, ptr %pDirtyPrev9, align 8
  %17 = load ptr, ptr %p, align 8
  %pDirtyTail = getelementptr inbounds nuw %struct.PCache, ptr %17, i32 0, i32 1
  store ptr %16, ptr %pDirtyTail, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %18 = load ptr, ptr %pPage.addr, align 8
  %pDirtyPrev11 = getelementptr inbounds nuw %struct.PgHdr, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %pDirtyPrev11, align 8
  %tobool12 = icmp ne ptr %19, null
  br i1 %tobool12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.end10
  %20 = load ptr, ptr %pPage.addr, align 8
  %pDirtyNext14 = getelementptr inbounds nuw %struct.PgHdr, ptr %20, i32 0, i32 9
  %21 = load ptr, ptr %pDirtyNext14, align 8
  %22 = load ptr, ptr %pPage.addr, align 8
  %pDirtyPrev15 = getelementptr inbounds nuw %struct.PgHdr, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %pDirtyPrev15, align 8
  %pDirtyNext16 = getelementptr inbounds nuw %struct.PgHdr, ptr %23, i32 0, i32 9
  store ptr %21, ptr %pDirtyNext16, align 8
  br label %if.end24

if.else17:                                        ; preds = %if.end10
  %24 = load ptr, ptr %pPage.addr, align 8
  %pDirtyNext18 = getelementptr inbounds nuw %struct.PgHdr, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %pDirtyNext18, align 8
  %26 = load ptr, ptr %p, align 8
  %pDirty = getelementptr inbounds nuw %struct.PCache, ptr %26, i32 0, i32 0
  store ptr %25, ptr %pDirty, align 8
  %27 = load ptr, ptr %p, align 8
  %pDirty19 = getelementptr inbounds nuw %struct.PCache, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pDirty19, align 8
  %cmp20 = icmp eq ptr %28, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else17
  %29 = load ptr, ptr %p, align 8
  %eCreate = getelementptr inbounds nuw %struct.PCache, ptr %29, i32 0, i32 9
  store i8 2, ptr %eCreate, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.else17
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then13
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %entry
  %30 = load i8, ptr %addRemove.addr, align 1
  %conv26 = zext i8 %30 to i32
  %and27 = and i32 %conv26, 2
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end55

if.then29:                                        ; preds = %if.end25
  %31 = load ptr, ptr %pPage.addr, align 8
  %pDirtyPrev30 = getelementptr inbounds nuw %struct.PgHdr, ptr %31, i32 0, i32 10
  store ptr null, ptr %pDirtyPrev30, align 8
  %32 = load ptr, ptr %p, align 8
  %pDirty31 = getelementptr inbounds nuw %struct.PCache, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %pDirty31, align 8
  %34 = load ptr, ptr %pPage.addr, align 8
  %pDirtyNext32 = getelementptr inbounds nuw %struct.PgHdr, ptr %34, i32 0, i32 9
  store ptr %33, ptr %pDirtyNext32, align 8
  %35 = load ptr, ptr %pPage.addr, align 8
  %pDirtyNext33 = getelementptr inbounds nuw %struct.PgHdr, ptr %35, i32 0, i32 9
  %36 = load ptr, ptr %pDirtyNext33, align 8
  %tobool34 = icmp ne ptr %36, null
  br i1 %tobool34, label %if.then35, label %if.else38

if.then35:                                        ; preds = %if.then29
  %37 = load ptr, ptr %pPage.addr, align 8
  %38 = load ptr, ptr %pPage.addr, align 8
  %pDirtyNext36 = getelementptr inbounds nuw %struct.PgHdr, ptr %38, i32 0, i32 9
  %39 = load ptr, ptr %pDirtyNext36, align 8
  %pDirtyPrev37 = getelementptr inbounds nuw %struct.PgHdr, ptr %39, i32 0, i32 10
  store ptr %37, ptr %pDirtyPrev37, align 8
  br label %if.end44

if.else38:                                        ; preds = %if.then29
  %40 = load ptr, ptr %pPage.addr, align 8
  %41 = load ptr, ptr %p, align 8
  %pDirtyTail39 = getelementptr inbounds nuw %struct.PCache, ptr %41, i32 0, i32 1
  store ptr %40, ptr %pDirtyTail39, align 8
  %42 = load ptr, ptr %p, align 8
  %bPurgeable = getelementptr inbounds nuw %struct.PCache, ptr %42, i32 0, i32 8
  %43 = load i8, ptr %bPurgeable, align 4
  %tobool40 = icmp ne i8 %43, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.else38
  %44 = load ptr, ptr %p, align 8
  %eCreate42 = getelementptr inbounds nuw %struct.PCache, ptr %44, i32 0, i32 9
  store i8 1, ptr %eCreate42, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.else38
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then35
  %45 = load ptr, ptr %pPage.addr, align 8
  %46 = load ptr, ptr %p, align 8
  %pDirty45 = getelementptr inbounds nuw %struct.PCache, ptr %46, i32 0, i32 0
  store ptr %45, ptr %pDirty45, align 8
  %47 = load ptr, ptr %p, align 8
  %pSynced46 = getelementptr inbounds nuw %struct.PCache, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %pSynced46, align 8
  %tobool47 = icmp ne ptr %48, null
  br i1 %tobool47, label %if.end54, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end44
  %49 = load ptr, ptr %pPage.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %49, i32 0, i32 7
  %50 = load i16, ptr %flags, align 4
  %conv48 = zext i16 %50 to i32
  %and49 = and i32 %conv48, 8
  %cmp50 = icmp eq i32 0, %and49
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %land.lhs.true
  %51 = load ptr, ptr %pPage.addr, align 8
  %52 = load ptr, ptr %p, align 8
  %pSynced53 = getelementptr inbounds nuw %struct.PCache, ptr %52, i32 0, i32 2
  store ptr %51, ptr %pSynced53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %land.lhs.true, %if.end44
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end25
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
