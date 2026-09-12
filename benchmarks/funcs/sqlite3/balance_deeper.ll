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

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @zeroPage(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @allocateBtreePage(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPut(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @balance_deeper(ptr noundef %pRoot, ptr noundef %ppChild) #1 {
entry:
  %retval = alloca i32, align 4
  %pRoot.addr = alloca ptr, align 8
  %ppChild.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pChild = alloca ptr, align 8
  %pgnoChild = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %pRoot, ptr %pRoot.addr, align 8
  store ptr %ppChild, ptr %ppChild.addr, align 8
  store ptr null, ptr %pChild, align 8
  store i32 0, ptr %pgnoChild, align 4
  %0 = load ptr, ptr %pRoot.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pRoot.addr, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 23
  %3 = load ptr, ptr %pDbPage, align 8
  %call = call i32 @sqlite3PagerWrite(ptr noundef %3)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pBt, align 8
  %6 = load ptr, ptr %pRoot.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %pgno, align 4
  %call2 = call i32 @allocateBtreePage(ptr noundef %5, ptr noundef %pChild, ptr noundef %pgnoChild, i32 noundef %7, i8 noundef zeroext 0)
  store i32 %call2, ptr %rc, align 4
  %8 = load ptr, ptr %pRoot.addr, align 8
  %9 = load ptr, ptr %pChild, align 8
  call void @copyNodeContent(ptr noundef %8, ptr noundef %9, ptr noundef %rc)
  %10 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %10, i32 0, i32 5
  %11 = load i8, ptr %autoVacuum, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %12 = load ptr, ptr %pBt, align 8
  %13 = load i32, ptr %pgnoChild, align 4
  %14 = load ptr, ptr %pRoot.addr, align 8
  %pgno4 = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %pgno4, align 4
  call void @ptrmapPut(ptr noundef %12, i32 noundef %13, i8 noundef zeroext 5, i32 noundef %15, ptr noundef %rc)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %16 = load i32, ptr %rc, align 4
  %tobool6 = icmp ne i32 %16, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %17 = load ptr, ptr %ppChild.addr, align 8
  store ptr null, ptr %17, align 8
  %18 = load ptr, ptr %pChild, align 8
  call void @releasePage(ptr noundef %18)
  %19 = load i32, ptr %rc, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %20 = load ptr, ptr %pChild, align 8
  %aiOvfl = getelementptr inbounds nuw %struct.MemPage, ptr %20, i32 0, i32 16
  %arraydecay = getelementptr inbounds [4 x i16], ptr %aiOvfl, i64 0, i64 0
  %21 = load ptr, ptr %pRoot.addr, align 8
  %aiOvfl9 = getelementptr inbounds nuw %struct.MemPage, ptr %21, i32 0, i32 16
  %arraydecay10 = getelementptr inbounds [4 x i16], ptr %aiOvfl9, i64 0, i64 0
  %22 = load ptr, ptr %pRoot.addr, align 8
  %nOverflow = getelementptr inbounds nuw %struct.MemPage, ptr %22, i32 0, i32 9
  %23 = load i8, ptr %nOverflow, align 4
  %conv = zext i8 %23 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 4 %arraydecay10, i64 %mul, i1 false)
  %24 = load ptr, ptr %pChild, align 8
  %apOvfl = getelementptr inbounds nuw %struct.MemPage, ptr %24, i32 0, i32 17
  %arraydecay11 = getelementptr inbounds [4 x ptr], ptr %apOvfl, i64 0, i64 0
  %25 = load ptr, ptr %pRoot.addr, align 8
  %apOvfl12 = getelementptr inbounds nuw %struct.MemPage, ptr %25, i32 0, i32 17
  %arraydecay13 = getelementptr inbounds [4 x ptr], ptr %apOvfl12, i64 0, i64 0
  %26 = load ptr, ptr %pRoot.addr, align 8
  %nOverflow14 = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 9
  %27 = load i8, ptr %nOverflow14, align 4
  %conv15 = zext i8 %27 to i64
  %mul16 = mul i64 %conv15, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay11, ptr align 8 %arraydecay13, i64 %mul16, i1 false)
  %28 = load ptr, ptr %pRoot.addr, align 8
  %nOverflow17 = getelementptr inbounds nuw %struct.MemPage, ptr %28, i32 0, i32 9
  %29 = load i8, ptr %nOverflow17, align 4
  %30 = load ptr, ptr %pChild, align 8
  %nOverflow18 = getelementptr inbounds nuw %struct.MemPage, ptr %30, i32 0, i32 9
  store i8 %29, ptr %nOverflow18, align 4
  %31 = load ptr, ptr %pRoot.addr, align 8
  %32 = load ptr, ptr %pChild, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %32, i32 0, i32 19
  %33 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %34 to i32
  %and = and i32 %conv19, -9
  call void @zeroPage(ptr noundef %31, i32 noundef %and)
  %35 = load ptr, ptr %pRoot.addr, align 8
  %aData20 = getelementptr inbounds nuw %struct.MemPage, ptr %35, i32 0, i32 19
  %36 = load ptr, ptr %aData20, align 8
  %37 = load ptr, ptr %pRoot.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 6
  %38 = load i8, ptr %hdrOffset, align 1
  %conv21 = zext i8 %38 to i32
  %add = add nsw i32 %conv21, 8
  %idxprom = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %36, i64 %idxprom
  %39 = load i32, ptr %pgnoChild, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx22, i32 noundef %39)
  %40 = load ptr, ptr %pChild, align 8
  %41 = load ptr, ptr %ppChild.addr, align 8
  store ptr %40, ptr %41, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
declare hidden void @copyNodeContent(ptr noundef, ptr noundef, ptr noundef) #1

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
