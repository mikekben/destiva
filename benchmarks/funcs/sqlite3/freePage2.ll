; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPut(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @btreePageLookup(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @freePage2(ptr noundef %pBt, ptr noundef %pMemPage, i32 noundef %iPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %pMemPage.addr = alloca ptr, align 8
  %iPage.addr = alloca i32, align 4
  %pTrunk = alloca ptr, align 8
  %iTrunk = alloca i32, align 4
  %pPage1 = alloca ptr, align 8
  %pPage = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nFree = alloca i32, align 4
  %nLeaf = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store ptr %pMemPage, ptr %pMemPage.addr, align 8
  store i32 %iPage, ptr %iPage.addr, align 4
  store ptr null, ptr %pTrunk, align 8
  store i32 0, ptr %iTrunk, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %pPage11 = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pPage11, align 8
  store ptr %1, ptr %pPage1, align 8
  %2 = load i32, ptr %iPage.addr, align 4
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %iPage.addr, align 4
  %4 = load ptr, ptr %pBt.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 18
  %5 = load i32, ptr %nPage, align 4
  %cmp2 = icmp ugt i32 %3, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @sqlite3CorruptError(i32 noundef 69594)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pMemPage.addr, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %pMemPage.addr, align 8
  store ptr %7, ptr %pPage, align 8
  %8 = load ptr, ptr %pPage, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 23
  %9 = load ptr, ptr %pDbPage, align 8
  call void @sqlite3PagerRef(ptr noundef %9)
  br label %if.end5

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %pBt.addr, align 8
  %11 = load i32, ptr %iPage.addr, align 4
  %call4 = call ptr @btreePageLookup(ptr noundef %10, i32 noundef %11)
  store ptr %call4, ptr %pPage, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %12 = load ptr, ptr %pPage1, align 8
  %pDbPage6 = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 23
  %13 = load ptr, ptr %pDbPage6, align 8
  %call7 = call i32 @sqlite3PagerWrite(ptr noundef %13)
  store i32 %call7, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  br label %freepage_out

if.end10:                                         ; preds = %if.end5
  %15 = load ptr, ptr %pPage1, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %15, i32 0, i32 19
  %16 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 36
  %call11 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call11, ptr %nFree, align 4
  %17 = load ptr, ptr %pPage1, align 8
  %aData12 = getelementptr inbounds nuw %struct.MemPage, ptr %17, i32 0, i32 19
  %18 = load ptr, ptr %aData12, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %18, i64 36
  %19 = load i32, ptr %nFree, align 4
  %add = add i32 %19, 1
  call void @sqlite3Put4byte(ptr noundef %arrayidx13, i32 noundef %add)
  %20 = load ptr, ptr %pBt.addr, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %20, i32 0, i32 10
  %21 = load i16, ptr %btsFlags, align 2
  %conv = zext i16 %21 to i32
  %and = and i32 %conv, 4
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then15, label %if.end30

if.then15:                                        ; preds = %if.end10
  %22 = load ptr, ptr %pPage, align 8
  %tobool16 = icmp ne ptr %22, null
  br i1 %tobool16, label %lor.lhs.false20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then15
  %23 = load ptr, ptr %pBt.addr, align 8
  %24 = load i32, ptr %iPage.addr, align 4
  %call17 = call i32 @btreeGetPage(ptr noundef %23, i32 noundef %24, ptr noundef %pPage, i32 noundef 0)
  store i32 %call17, ptr %rc, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then25, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true, %if.then15
  %25 = load ptr, ptr %pPage, align 8
  %pDbPage21 = getelementptr inbounds nuw %struct.MemPage, ptr %25, i32 0, i32 23
  %26 = load ptr, ptr %pDbPage21, align 8
  %call22 = call i32 @sqlite3PagerWrite(ptr noundef %26)
  store i32 %call22, ptr %rc, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false20, %land.lhs.true
  br label %freepage_out

if.end26:                                         ; preds = %lor.lhs.false20
  %27 = load ptr, ptr %pPage, align 8
  %aData27 = getelementptr inbounds nuw %struct.MemPage, ptr %27, i32 0, i32 19
  %28 = load ptr, ptr %aData27, align 8
  %29 = load ptr, ptr %pPage, align 8
  %pBt28 = getelementptr inbounds nuw %struct.MemPage, ptr %29, i32 0, i32 18
  %30 = load ptr, ptr %pBt28, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %30, i32 0, i32 15
  %31 = load i32, ptr %pageSize, align 8
  %conv29 = zext i32 %31 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %28, i8 0, i64 %conv29, i1 false)
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.end10
  %32 = load ptr, ptr %pBt.addr, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %32, i32 0, i32 5
  %33 = load i8, ptr %autoVacuum, align 1
  %tobool31 = icmp ne i8 %33, 0
  br i1 %tobool31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end30
  %34 = load ptr, ptr %pBt.addr, align 8
  %35 = load i32, ptr %iPage.addr, align 4
  call void @ptrmapPut(ptr noundef %34, i32 noundef %35, i8 noundef zeroext 2, i32 noundef 0, ptr noundef %rc)
  %36 = load i32, ptr %rc, align 4
  %tobool33 = icmp ne i32 %36, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then32
  br label %freepage_out

if.end35:                                         ; preds = %if.then32
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end30
  %37 = load i32, ptr %nFree, align 4
  %cmp37 = icmp ne i32 %37, 0
  br i1 %cmp37, label %if.then39, label %if.end86

if.then39:                                        ; preds = %if.end36
  %38 = load ptr, ptr %pPage1, align 8
  %aData40 = getelementptr inbounds nuw %struct.MemPage, ptr %38, i32 0, i32 19
  %39 = load ptr, ptr %aData40, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %39, i64 32
  %call42 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx41)
  store i32 %call42, ptr %iTrunk, align 4
  %40 = load ptr, ptr %pBt.addr, align 8
  %41 = load i32, ptr %iTrunk, align 4
  %call43 = call i32 @btreeGetPage(ptr noundef %40, i32 noundef %41, ptr noundef %pTrunk, i32 noundef 0)
  store i32 %call43, ptr %rc, align 4
  %42 = load i32, ptr %rc, align 4
  %cmp44 = icmp ne i32 %42, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then39
  br label %freepage_out

if.end47:                                         ; preds = %if.then39
  %43 = load ptr, ptr %pTrunk, align 8
  %aData48 = getelementptr inbounds nuw %struct.MemPage, ptr %43, i32 0, i32 19
  %44 = load ptr, ptr %aData48, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %44, i64 4
  %call50 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx49)
  store i32 %call50, ptr %nLeaf, align 4
  %45 = load i32, ptr %nLeaf, align 4
  %46 = load ptr, ptr %pBt.addr, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %46, i32 0, i32 16
  %47 = load i32, ptr %usableSize, align 4
  %div = udiv i32 %47, 4
  %sub = sub i32 %div, 2
  %cmp51 = icmp ugt i32 %45, %sub
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end47
  %call54 = call i32 @sqlite3CorruptError(i32 noundef 69648)
  store i32 %call54, ptr %rc, align 4
  br label %freepage_out

if.end55:                                         ; preds = %if.end47
  %48 = load i32, ptr %nLeaf, align 4
  %49 = load ptr, ptr %pBt.addr, align 8
  %usableSize56 = getelementptr inbounds nuw %struct.BtShared, ptr %49, i32 0, i32 16
  %50 = load i32, ptr %usableSize56, align 4
  %div57 = udiv i32 %50, 4
  %sub58 = sub i32 %div57, 8
  %cmp59 = icmp ult i32 %48, %sub58
  br i1 %cmp59, label %if.then61, label %if.end85

if.then61:                                        ; preds = %if.end55
  %51 = load ptr, ptr %pTrunk, align 8
  %pDbPage62 = getelementptr inbounds nuw %struct.MemPage, ptr %51, i32 0, i32 23
  %52 = load ptr, ptr %pDbPage62, align 8
  %call63 = call i32 @sqlite3PagerWrite(ptr noundef %52)
  store i32 %call63, ptr %rc, align 4
  %53 = load i32, ptr %rc, align 4
  %cmp64 = icmp eq i32 %53, 0
  br i1 %cmp64, label %if.then66, label %if.end84

if.then66:                                        ; preds = %if.then61
  %54 = load ptr, ptr %pTrunk, align 8
  %aData67 = getelementptr inbounds nuw %struct.MemPage, ptr %54, i32 0, i32 19
  %55 = load ptr, ptr %aData67, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %55, i64 4
  %56 = load i32, ptr %nLeaf, align 4
  %add69 = add i32 %56, 1
  call void @sqlite3Put4byte(ptr noundef %arrayidx68, i32 noundef %add69)
  %57 = load ptr, ptr %pTrunk, align 8
  %aData70 = getelementptr inbounds nuw %struct.MemPage, ptr %57, i32 0, i32 19
  %58 = load ptr, ptr %aData70, align 8
  %59 = load i32, ptr %nLeaf, align 4
  %mul = mul i32 %59, 4
  %add71 = add i32 8, %mul
  %idxprom = zext i32 %add71 to i64
  %arrayidx72 = getelementptr inbounds nuw i8, ptr %58, i64 %idxprom
  %60 = load i32, ptr %iPage.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx72, i32 noundef %60)
  %61 = load ptr, ptr %pPage, align 8
  %tobool73 = icmp ne ptr %61, null
  br i1 %tobool73, label %land.lhs.true74, label %if.end82

land.lhs.true74:                                  ; preds = %if.then66
  %62 = load ptr, ptr %pBt.addr, align 8
  %btsFlags75 = getelementptr inbounds nuw %struct.BtShared, ptr %62, i32 0, i32 10
  %63 = load i16, ptr %btsFlags75, align 2
  %conv76 = zext i16 %63 to i32
  %and77 = and i32 %conv76, 4
  %cmp78 = icmp eq i32 %and77, 0
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %land.lhs.true74
  %64 = load ptr, ptr %pPage, align 8
  %pDbPage81 = getelementptr inbounds nuw %struct.MemPage, ptr %64, i32 0, i32 23
  %65 = load ptr, ptr %pDbPage81, align 8
  call void @sqlite3PagerDontWrite(ptr noundef %65)
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %land.lhs.true74, %if.then66
  %66 = load ptr, ptr %pBt.addr, align 8
  %67 = load i32, ptr %iPage.addr, align 4
  %call83 = call i32 @btreeSetHasContent(ptr noundef %66, i32 noundef %67)
  store i32 %call83, ptr %rc, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end82, %if.then61
  br label %freepage_out

if.end85:                                         ; preds = %if.end55
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end36
  %68 = load ptr, ptr %pPage, align 8
  %cmp87 = icmp eq ptr %68, null
  br i1 %cmp87, label %land.lhs.true89, label %if.end94

land.lhs.true89:                                  ; preds = %if.end86
  %69 = load ptr, ptr %pBt.addr, align 8
  %70 = load i32, ptr %iPage.addr, align 4
  %call90 = call i32 @btreeGetPage(ptr noundef %69, i32 noundef %70, ptr noundef %pPage, i32 noundef 0)
  store i32 %call90, ptr %rc, align 4
  %cmp91 = icmp ne i32 0, %call90
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %land.lhs.true89
  br label %freepage_out

if.end94:                                         ; preds = %land.lhs.true89, %if.end86
  %71 = load ptr, ptr %pPage, align 8
  %pDbPage95 = getelementptr inbounds nuw %struct.MemPage, ptr %71, i32 0, i32 23
  %72 = load ptr, ptr %pDbPage95, align 8
  %call96 = call i32 @sqlite3PagerWrite(ptr noundef %72)
  store i32 %call96, ptr %rc, align 4
  %73 = load i32, ptr %rc, align 4
  %cmp97 = icmp ne i32 %73, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end94
  br label %freepage_out

if.end100:                                        ; preds = %if.end94
  %74 = load ptr, ptr %pPage, align 8
  %aData101 = getelementptr inbounds nuw %struct.MemPage, ptr %74, i32 0, i32 19
  %75 = load ptr, ptr %aData101, align 8
  %76 = load i32, ptr %iTrunk, align 4
  call void @sqlite3Put4byte(ptr noundef %75, i32 noundef %76)
  %77 = load ptr, ptr %pPage, align 8
  %aData102 = getelementptr inbounds nuw %struct.MemPage, ptr %77, i32 0, i32 19
  %78 = load ptr, ptr %aData102, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %78, i64 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx103, i32 noundef 0)
  %79 = load ptr, ptr %pPage1, align 8
  %aData104 = getelementptr inbounds nuw %struct.MemPage, ptr %79, i32 0, i32 19
  %80 = load ptr, ptr %aData104, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %80, i64 32
  %81 = load i32, ptr %iPage.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx105, i32 noundef %81)
  br label %freepage_out

freepage_out:                                     ; preds = %if.end100, %if.then99, %if.then93, %if.end84, %if.then53, %if.then46, %if.then34, %if.then25, %if.then9
  %82 = load ptr, ptr %pPage, align 8
  %tobool106 = icmp ne ptr %82, null
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %freepage_out
  %83 = load ptr, ptr %pPage, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %83, i32 0, i32 0
  store i8 0, ptr %isInit, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %freepage_out
  %84 = load ptr, ptr %pPage, align 8
  call void @releasePage(ptr noundef %84)
  %85 = load ptr, ptr %pTrunk, align 8
  call void @releasePage(ptr noundef %85)
  %86 = load i32, ptr %rc, align 4
  store i32 %86, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end108, %if.then
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerRef(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerDontWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeSetHasContent(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
