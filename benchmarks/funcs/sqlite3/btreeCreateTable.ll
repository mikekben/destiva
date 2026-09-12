; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeUpdateMeta(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @zeroPage(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @invalidateAllOverflowCache(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveAllCursors(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapGet(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @allocateBtreePage(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @relocatePage(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPut(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeGetMeta(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeCreateTable(ptr noundef %p, ptr noundef %piTable, i32 noundef %createTabFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %piTable.addr = alloca ptr, align 8
  %createTabFlags.addr = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %pRoot = alloca ptr, align 8
  %pgnoRoot = alloca i32, align 4
  %rc = alloca i32, align 4
  %ptfFlags = alloca i32, align 4
  %pgnoMove = alloca i32, align 4
  %pPageMove = alloca ptr, align 8
  %eType = alloca i8, align 1
  %iPtrPage = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %piTable, ptr %piTable.addr, align 8
  store i32 %createTabFlags, ptr %createTabFlags.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 5
  %3 = load i8, ptr %autoVacuum, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else53

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pBt, align 8
  call void @invalidateAllOverflowCache(ptr noundef %4)
  %5 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeGetMeta(ptr noundef %5, i32 noundef 4, ptr noundef %pgnoRoot)
  %6 = load i32, ptr %pgnoRoot, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %pgnoRoot, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %7 = load i32, ptr %pgnoRoot, align 4
  %8 = load ptr, ptr %pBt, align 8
  %9 = load i32, ptr %pgnoRoot, align 4
  %call = call i32 @ptrmapPageno(ptr noundef %8, i32 noundef %9)
  %cmp = icmp eq i32 %7, %call
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %10 = load i32, ptr %pgnoRoot, align 4
  %11 = load i32, ptr @sqlite3PendingByte, align 4
  %12 = load ptr, ptr %pBt, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %12, i32 0, i32 15
  %13 = load i32, ptr %pageSize, align 8
  %div = udiv i32 %11, %13
  %add = add i32 %div, 1
  %cmp2 = icmp eq i32 %10, %add
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %14 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %15 = load i32, ptr %pgnoRoot, align 4
  %inc3 = add i32 %15, 1
  store i32 %inc3, ptr %pgnoRoot, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %16 = load ptr, ptr %pBt, align 8
  %17 = load i32, ptr %pgnoRoot, align 4
  %call4 = call i32 @allocateBtreePage(ptr noundef %16, ptr noundef %pPageMove, ptr noundef %pgnoMove, i32 noundef %17, i8 noundef zeroext 1)
  store i32 %call4, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp5 = icmp ne i32 %18, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.end
  %19 = load i32, ptr %rc, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %20 = load i32, ptr %pgnoMove, align 4
  %21 = load i32, ptr %pgnoRoot, align 4
  %cmp7 = icmp ne i32 %20, %21
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  store i8 0, ptr %eType, align 1
  store i32 0, ptr %iPtrPage, align 4
  %22 = load ptr, ptr %pBt, align 8
  %call9 = call i32 @saveAllCursors(ptr noundef %22, i32 noundef 0, ptr noundef null)
  store i32 %call9, ptr %rc, align 4
  %23 = load ptr, ptr %pPageMove, align 8
  call void @releasePage(ptr noundef %23)
  %24 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %24, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  %25 = load i32, ptr %rc, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then8
  %26 = load ptr, ptr %pBt, align 8
  %27 = load i32, ptr %pgnoRoot, align 4
  %call13 = call i32 @btreeGetPage(ptr noundef %26, i32 noundef %27, ptr noundef %pRoot, i32 noundef 0)
  store i32 %call13, ptr %rc, align 4
  %28 = load i32, ptr %rc, align 4
  %cmp14 = icmp ne i32 %28, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %29 = load i32, ptr %rc, align 4
  store i32 %29, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %30 = load ptr, ptr %pBt, align 8
  %31 = load i32, ptr %pgnoRoot, align 4
  %call17 = call i32 @ptrmapGet(ptr noundef %30, i32 noundef %31, ptr noundef %eType, ptr noundef %iPtrPage)
  store i32 %call17, ptr %rc, align 4
  %32 = load i8, ptr %eType, align 1
  %conv = zext i8 %32 to i32
  %cmp18 = icmp eq i32 %conv, 1
  br i1 %cmp18, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %33 = load i8, ptr %eType, align 1
  %conv20 = zext i8 %33 to i32
  %cmp21 = icmp eq i32 %conv20, 2
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %lor.lhs.false, %if.end16
  %call24 = call i32 @sqlite3CorruptError(i32 noundef 72495)
  store i32 %call24, ptr %rc, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %lor.lhs.false
  %34 = load i32, ptr %rc, align 4
  %cmp26 = icmp ne i32 %34, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  %35 = load ptr, ptr %pRoot, align 8
  call void @releasePage(ptr noundef %35)
  %36 = load i32, ptr %rc, align 4
  store i32 %36, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end25
  %37 = load ptr, ptr %pBt, align 8
  %38 = load ptr, ptr %pRoot, align 8
  %39 = load i8, ptr %eType, align 1
  %40 = load i32, ptr %iPtrPage, align 4
  %41 = load i32, ptr %pgnoMove, align 4
  %call30 = call i32 @relocatePage(ptr noundef %37, ptr noundef %38, i8 noundef zeroext %39, i32 noundef %40, i32 noundef %41, i32 noundef 0)
  store i32 %call30, ptr %rc, align 4
  %42 = load ptr, ptr %pRoot, align 8
  call void @releasePage(ptr noundef %42)
  %43 = load i32, ptr %rc, align 4
  %cmp31 = icmp ne i32 %43, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  %44 = load i32, ptr %rc, align 4
  store i32 %44, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end29
  %45 = load ptr, ptr %pBt, align 8
  %46 = load i32, ptr %pgnoRoot, align 4
  %call35 = call i32 @btreeGetPage(ptr noundef %45, i32 noundef %46, ptr noundef %pRoot, i32 noundef 0)
  store i32 %call35, ptr %rc, align 4
  %47 = load i32, ptr %rc, align 4
  %cmp36 = icmp ne i32 %47, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end34
  %49 = load ptr, ptr %pRoot, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %49, i32 0, i32 23
  %50 = load ptr, ptr %pDbPage, align 8
  %call40 = call i32 @sqlite3PagerWrite(ptr noundef %50)
  store i32 %call40, ptr %rc, align 4
  %51 = load i32, ptr %rc, align 4
  %cmp41 = icmp ne i32 %51, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  %52 = load ptr, ptr %pRoot, align 8
  call void @releasePage(ptr noundef %52)
  %53 = load i32, ptr %rc, align 4
  store i32 %53, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end39
  br label %if.end45

if.else:                                          ; preds = %if.end
  %54 = load ptr, ptr %pPageMove, align 8
  store ptr %54, ptr %pRoot, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end44
  %55 = load ptr, ptr %pBt, align 8
  %56 = load i32, ptr %pgnoRoot, align 4
  call void @ptrmapPut(ptr noundef %55, i32 noundef %56, i8 noundef zeroext 1, i32 noundef 0, ptr noundef %rc)
  %57 = load i32, ptr %rc, align 4
  %tobool46 = icmp ne i32 %57, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  %58 = load ptr, ptr %pRoot, align 8
  call void @releasePage(ptr noundef %58)
  %59 = load i32, ptr %rc, align 4
  store i32 %59, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end45
  %60 = load ptr, ptr %p.addr, align 8
  %61 = load i32, ptr %pgnoRoot, align 4
  %call49 = call i32 @sqlite3BtreeUpdateMeta(ptr noundef %60, i32 noundef 4, i32 noundef %61)
  store i32 %call49, ptr %rc, align 4
  %62 = load i32, ptr %rc, align 4
  %tobool50 = icmp ne i32 %62, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  %63 = load ptr, ptr %pRoot, align 8
  call void @releasePage(ptr noundef %63)
  %64 = load i32, ptr %rc, align 4
  store i32 %64, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end48
  br label %if.end58

if.else53:                                        ; preds = %entry
  %65 = load ptr, ptr %pBt, align 8
  %call54 = call i32 @allocateBtreePage(ptr noundef %65, ptr noundef %pRoot, ptr noundef %pgnoRoot, i32 noundef 1, i8 noundef zeroext 0)
  store i32 %call54, ptr %rc, align 4
  %66 = load i32, ptr %rc, align 4
  %tobool55 = icmp ne i32 %66, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.else53
  %67 = load i32, ptr %rc, align 4
  store i32 %67, ptr %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.else53
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end52
  %68 = load i32, ptr %createTabFlags.addr, align 4
  %and = and i32 %68, 1
  %tobool59 = icmp ne i32 %and, 0
  br i1 %tobool59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.end58
  store i32 13, ptr %ptfFlags, align 4
  br label %if.end62

if.else61:                                        ; preds = %if.end58
  store i32 10, ptr %ptfFlags, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then60
  %69 = load ptr, ptr %pRoot, align 8
  %70 = load i32, ptr %ptfFlags, align 4
  call void @zeroPage(ptr noundef %69, i32 noundef %70)
  %71 = load ptr, ptr %pRoot, align 8
  %pDbPage63 = getelementptr inbounds nuw %struct.MemPage, ptr %71, i32 0, i32 23
  %72 = load ptr, ptr %pDbPage63, align 8
  call void @sqlite3PagerUnref(ptr noundef %72)
  %73 = load i32, ptr %pgnoRoot, align 4
  %74 = load ptr, ptr %piTable.addr, align 8
  store i32 %73, ptr %74, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end62, %if.then56, %if.then51, %if.then47, %if.then43, %if.then38, %if.then33, %if.then28, %if.then15, %if.then11, %if.then6
  %75 = load i32, ptr %retval, align 4
  ret i32 %75
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
