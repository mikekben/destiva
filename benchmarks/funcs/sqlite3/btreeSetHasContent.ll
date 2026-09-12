; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecSet(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BitvecCreate(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeSetHasContent(ptr noundef %pBt, i32 noundef %pgno) #0 {
entry:
  %pBt.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %pHasContent = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 22
  %1 = load ptr, ptr %pHasContent, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pBt.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 18
  %3 = load i32, ptr %nPage, align 4
  %call = call ptr @sqlite3BitvecCreate(i32 noundef %3)
  %4 = load ptr, ptr %pBt.addr, align 8
  %pHasContent1 = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 22
  store ptr %call, ptr %pHasContent1, align 8
  %5 = load ptr, ptr %pBt.addr, align 8
  %pHasContent2 = getelementptr inbounds nuw %struct.BtShared, ptr %5, i32 0, i32 22
  %6 = load ptr, ptr %pHasContent2, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  store i32 7, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %7 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  %8 = load i32, ptr %pgno.addr, align 4
  %9 = load ptr, ptr %pBt.addr, align 8
  %pHasContent6 = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 22
  %10 = load ptr, ptr %pHasContent6, align 8
  %call7 = call i32 @sqlite3BitvecSize(ptr noundef %10)
  %cmp8 = icmp ule i32 %8, %call7
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %pBt.addr, align 8
  %pHasContent10 = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 22
  %12 = load ptr, ptr %pHasContent10, align 8
  %13 = load i32, ptr %pgno.addr, align 4
  %call11 = call i32 @sqlite3BitvecSet(ptr noundef %12, i32 noundef %13)
  store i32 %call11, ptr %rc, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true, %if.end5
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
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
