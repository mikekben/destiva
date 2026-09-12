; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetData(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetExtra(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @ptrmapPut(ptr noundef %pBt, i32 noundef %key, i8 noundef zeroext %eType, i32 noundef %parent, ptr noundef %pRC) #0 {
entry:
  %pBt.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %eType.addr = alloca i8, align 1
  %parent.addr = alloca i32, align 4
  %pRC.addr = alloca ptr, align 8
  %pDbPage = alloca ptr, align 8
  %pPtrmap = alloca ptr, align 8
  %iPtrmap = alloca i32, align 4
  %offset = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %key, ptr %key.addr, align 4
  store i8 %eType, ptr %eType.addr, align 1
  store i32 %parent, ptr %parent.addr, align 4
  store ptr %pRC, ptr %pRC.addr, align 8
  %0 = load ptr, ptr %pRC.addr, align 8
  %1 = load i32, ptr %0, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %key.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %call = call i32 @sqlite3CorruptError(i32 noundef 64396)
  %3 = load ptr, ptr %pRC.addr, align 8
  store i32 %call, ptr %3, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %pBt.addr, align 8
  %5 = load i32, ptr %key.addr, align 4
  %call3 = call i32 @ptrmapPageno(ptr noundef %4, i32 noundef %5)
  store i32 %call3, ptr %iPtrmap, align 4
  %6 = load ptr, ptr %pBt.addr, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pPager, align 8
  %8 = load i32, ptr %iPtrmap, align 4
  %call4 = call i32 @sqlite3PagerGet(ptr noundef %7, i32 noundef %8, ptr noundef %pDbPage, i32 noundef 0)
  store i32 %call4, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp5 = icmp ne i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end2
  %10 = load i32, ptr %rc, align 4
  %11 = load ptr, ptr %pRC.addr, align 8
  store i32 %10, ptr %11, align 4
  br label %return

if.end7:                                          ; preds = %if.end2
  %12 = load ptr, ptr %pDbPage, align 8
  %call8 = call ptr @sqlite3PagerGetExtra(ptr noundef %12)
  %arrayidx = getelementptr inbounds i8, ptr %call8, i64 0
  %13 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp9 = icmp ne i32 %conv, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %call12 = call i32 @sqlite3CorruptError(i32 noundef 64409)
  %14 = load ptr, ptr %pRC.addr, align 8
  store i32 %call12, ptr %14, align 4
  br label %ptrmap_exit

if.end13:                                         ; preds = %if.end7
  %15 = load i32, ptr %key.addr, align 4
  %16 = load i32, ptr %iPtrmap, align 4
  %sub = sub i32 %15, %16
  %sub14 = sub i32 %sub, 1
  %mul = mul i32 5, %sub14
  store i32 %mul, ptr %offset, align 4
  %17 = load i32, ptr %offset, align 4
  %cmp15 = icmp slt i32 %17, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %call18 = call i32 @sqlite3CorruptError(i32 noundef 64414)
  %18 = load ptr, ptr %pRC.addr, align 8
  store i32 %call18, ptr %18, align 4
  br label %ptrmap_exit

if.end19:                                         ; preds = %if.end13
  %19 = load ptr, ptr %pDbPage, align 8
  %call20 = call ptr @sqlite3PagerGetData(ptr noundef %19)
  store ptr %call20, ptr %pPtrmap, align 8
  %20 = load i8, ptr %eType.addr, align 1
  %conv21 = zext i8 %20 to i32
  %21 = load ptr, ptr %pPtrmap, align 8
  %22 = load i32, ptr %offset, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %23 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %23 to i32
  %cmp24 = icmp ne i32 %conv21, %conv23
  br i1 %cmp24, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %24 = load ptr, ptr %pPtrmap, align 8
  %25 = load i32, ptr %offset, align 4
  %add = add nsw i32 %25, 1
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 %idxprom26
  %call28 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx27)
  %26 = load i32, ptr %parent.addr, align 4
  %cmp29 = icmp ne i32 %call28, %26
  br i1 %cmp29, label %if.then31, label %if.end42

if.then31:                                        ; preds = %lor.lhs.false, %if.end19
  %27 = load ptr, ptr %pDbPage, align 8
  %call32 = call i32 @sqlite3PagerWrite(ptr noundef %27)
  store i32 %call32, ptr %rc, align 4
  %28 = load ptr, ptr %pRC.addr, align 8
  store i32 %call32, ptr %28, align 4
  %29 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %29, 0
  br i1 %cmp33, label %if.then35, label %if.end41

if.then35:                                        ; preds = %if.then31
  %30 = load i8, ptr %eType.addr, align 1
  %31 = load ptr, ptr %pPtrmap, align 8
  %32 = load i32, ptr %offset, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %31, i64 %idxprom36
  store i8 %30, ptr %arrayidx37, align 1
  %33 = load ptr, ptr %pPtrmap, align 8
  %34 = load i32, ptr %offset, align 4
  %add38 = add nsw i32 %34, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %33, i64 %idxprom39
  %35 = load i32, ptr %parent.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx40, i32 noundef %35)
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.then31
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %lor.lhs.false
  br label %ptrmap_exit

ptrmap_exit:                                      ; preds = %if.end42, %if.then17, %if.then11
  %36 = load ptr, ptr %pDbPage, align 8
  call void @sqlite3PagerUnref(ptr noundef %36)
  br label %return

return:                                           ; preds = %ptrmap_exit, %if.then6, %if.then1, %if.then
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
