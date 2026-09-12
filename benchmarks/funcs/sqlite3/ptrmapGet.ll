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
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ptrmapGet(ptr noundef %pBt, i32 noundef %key, ptr noundef %pEType, ptr noundef %pPgno) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %pEType.addr = alloca ptr, align 8
  %pPgno.addr = alloca ptr, align 8
  %pDbPage = alloca ptr, align 8
  %iPtrmap = alloca i32, align 4
  %pPtrmap = alloca ptr, align 8
  %offset = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %key, ptr %key.addr, align 4
  store ptr %pEType, ptr %pEType.addr, align 8
  store ptr %pPgno, ptr %pPgno.addr, align 8
  %0 = load ptr, ptr %pBt.addr, align 8
  %1 = load i32, ptr %key.addr, align 4
  %call = call i32 @ptrmapPageno(ptr noundef %0, i32 noundef %1)
  store i32 %call, ptr %iPtrmap, align 4
  %2 = load ptr, ptr %pBt.addr, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pPager, align 8
  %4 = load i32, ptr %iPtrmap, align 4
  %call1 = call i32 @sqlite3PagerGet(ptr noundef %3, i32 noundef %4, ptr noundef %pDbPage, i32 noundef 0)
  store i32 %call1, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pDbPage, align 8
  %call2 = call ptr @sqlite3PagerGetData(ptr noundef %7)
  store ptr %call2, ptr %pPtrmap, align 8
  %8 = load i32, ptr %key.addr, align 4
  %9 = load i32, ptr %iPtrmap, align 4
  %sub = sub i32 %8, %9
  %sub3 = sub i32 %sub, 1
  %mul = mul i32 5, %sub3
  store i32 %mul, ptr %offset, align 4
  %10 = load i32, ptr %offset, align 4
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %pDbPage, align 8
  call void @sqlite3PagerUnref(ptr noundef %11)
  %call6 = call i32 @sqlite3CorruptError(i32 noundef 64459)
  store i32 %call6, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %12 = load ptr, ptr %pPtrmap, align 8
  %13 = load i32, ptr %offset, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1
  %15 = load ptr, ptr %pEType.addr, align 8
  store i8 %14, ptr %15, align 1
  %16 = load ptr, ptr %pPgno.addr, align 8
  %tobool = icmp ne ptr %16, null
  br i1 %tobool, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end7
  %17 = load ptr, ptr %pPtrmap, align 8
  %18 = load i32, ptr %offset, align 4
  %add = add nsw i32 %18, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %17, i64 %idxprom9
  %call11 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx10)
  %19 = load ptr, ptr %pPgno.addr, align 8
  store i32 %call11, ptr %19, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end7
  %20 = load ptr, ptr %pDbPage, align 8
  call void @sqlite3PagerUnref(ptr noundef %20)
  %21 = load ptr, ptr %pEType.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv = zext i8 %22 to i32
  %cmp13 = icmp slt i32 %conv, 1
  br i1 %cmp13, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %23 = load ptr, ptr %pEType.addr, align 8
  %24 = load i8, ptr %23, align 1
  %conv15 = zext i8 %24 to i32
  %cmp16 = icmp sgt i32 %conv15, 5
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  %call19 = call i32 @sqlite3CorruptError(i32 noundef 64467)
  store i32 %call19, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then18, %if.then5, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
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
