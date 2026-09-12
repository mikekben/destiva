; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zMagicHeader = external hidden constant [16 x i8], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @newDatabase(ptr noundef %pBt) #1 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %pP1 = alloca ptr, align 8
  %data = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  %0 = load ptr, ptr %pBt.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 18
  %1 = load i32, ptr %nPage, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pBt.addr, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pPage1, align 8
  store ptr %3, ptr %pP1, align 8
  %4 = load ptr, ptr %pP1, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %aData, align 8
  store ptr %5, ptr %data, align 8
  %6 = load ptr, ptr %pP1, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 23
  %7 = load ptr, ptr %pDbPage, align 8
  %call = call i32 @sqlite3PagerWrite(ptr noundef %7)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %9 = load i32, ptr %rc, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %10 = load ptr, ptr %data, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 16 @zMagicHeader, i64 16, i1 false)
  %11 = load ptr, ptr %pBt.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 15
  %12 = load i32, ptr %pageSize, align 8
  %shr = lshr i32 %12, 8
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %13 = load ptr, ptr %data, align 8
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 16
  store i8 %conv, ptr %arrayidx, align 1
  %14 = load ptr, ptr %pBt.addr, align 8
  %pageSize3 = getelementptr inbounds nuw %struct.BtShared, ptr %14, i32 0, i32 15
  %15 = load i32, ptr %pageSize3, align 8
  %shr4 = lshr i32 %15, 16
  %and5 = and i32 %shr4, 255
  %conv6 = trunc i32 %and5 to i8
  %16 = load ptr, ptr %data, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %16, i64 17
  store i8 %conv6, ptr %arrayidx7, align 1
  %17 = load ptr, ptr %data, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %17, i64 18
  store i8 1, ptr %arrayidx8, align 1
  %18 = load ptr, ptr %data, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %18, i64 19
  store i8 1, ptr %arrayidx9, align 1
  %19 = load ptr, ptr %pBt.addr, align 8
  %pageSize10 = getelementptr inbounds nuw %struct.BtShared, ptr %19, i32 0, i32 15
  %20 = load i32, ptr %pageSize10, align 8
  %21 = load ptr, ptr %pBt.addr, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %21, i32 0, i32 16
  %22 = load i32, ptr %usableSize, align 4
  %sub = sub i32 %20, %22
  %conv11 = trunc i32 %sub to i8
  %23 = load ptr, ptr %data, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %23, i64 20
  store i8 %conv11, ptr %arrayidx12, align 1
  %24 = load ptr, ptr %data, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %24, i64 21
  store i8 64, ptr %arrayidx13, align 1
  %25 = load ptr, ptr %data, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %25, i64 22
  store i8 32, ptr %arrayidx14, align 1
  %26 = load ptr, ptr %data, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %26, i64 23
  store i8 32, ptr %arrayidx15, align 1
  %27 = load ptr, ptr %data, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %27, i64 24
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx16, i8 0, i64 76, i1 false)
  %28 = load ptr, ptr %pP1, align 8
  call void @zeroPage(ptr noundef %28, i32 noundef 13)
  %29 = load ptr, ptr %pBt.addr, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %29, i32 0, i32 10
  %30 = load i16, ptr %btsFlags, align 2
  %conv17 = zext i16 %30 to i32
  %or = or i32 %conv17, 2
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, ptr %btsFlags, align 2
  %31 = load ptr, ptr %data, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %31, i64 52
  %32 = load ptr, ptr %pBt.addr, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %32, i32 0, i32 5
  %33 = load i8, ptr %autoVacuum, align 1
  %conv20 = zext i8 %33 to i32
  call void @sqlite3Put4byte(ptr noundef %arrayidx19, i32 noundef %conv20)
  %34 = load ptr, ptr %data, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %34, i64 64
  %35 = load ptr, ptr %pBt.addr, align 8
  %incrVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %35, i32 0, i32 6
  %36 = load i8, ptr %incrVacuum, align 2
  %conv22 = zext i8 %36 to i32
  call void @sqlite3Put4byte(ptr noundef %arrayidx21, i32 noundef %conv22)
  %37 = load ptr, ptr %pBt.addr, align 8
  %nPage23 = getelementptr inbounds nuw %struct.BtShared, ptr %37, i32 0, i32 18
  store i32 1, ptr %nPage23, align 4
  %38 = load ptr, ptr %data, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %38, i64 31
  store i8 1, ptr %arrayidx24, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
declare hidden void @zeroPage(ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
