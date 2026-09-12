; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct._ht = type { i32, ptr }

@findElementWithHash.nullElement = external hidden global %struct.HashElem, align 8

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @findElementWithHash(ptr noundef %pH, ptr noundef %pKey, ptr noundef %pHash) #0 {
entry:
  %retval = alloca ptr, align 8
  %pH.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %pHash.addr = alloca ptr, align 8
  %elem = alloca ptr, align 8
  %count = alloca i32, align 4
  %h = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  store ptr %pH, ptr %pH.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pHash, ptr %pHash.addr, align 8
  %0 = load ptr, ptr %pH.addr, align 8
  %ht = getelementptr inbounds nuw %struct.Hash, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %ht, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pKey.addr, align 8
  %call = call i32 @strHash(ptr noundef %2)
  %3 = load ptr, ptr %pH.addr, align 8
  %htsize = getelementptr inbounds nuw %struct.Hash, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %htsize, align 8
  %rem = urem i32 %call, %4
  store i32 %rem, ptr %h, align 4
  %5 = load ptr, ptr %pH.addr, align 8
  %ht1 = getelementptr inbounds nuw %struct.Hash, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %ht1, align 8
  %7 = load i32, ptr %h, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds nuw %struct._ht, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %pEntry, align 8
  %8 = load ptr, ptr %pEntry, align 8
  %chain = getelementptr inbounds nuw %struct._ht, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %chain, align 8
  store ptr %9, ptr %elem, align 8
  %10 = load ptr, ptr %pEntry, align 8
  %count2 = getelementptr inbounds nuw %struct._ht, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %count2, align 8
  store i32 %11, ptr %count, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %h, align 4
  %12 = load ptr, ptr %pH.addr, align 8
  %first = getelementptr inbounds nuw %struct.Hash, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %first, align 8
  store ptr %13, ptr %elem, align 8
  %14 = load ptr, ptr %pH.addr, align 8
  %count3 = getelementptr inbounds nuw %struct.Hash, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %count3, align 4
  store i32 %15, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %pHash.addr, align 8
  %tobool4 = icmp ne ptr %16, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %17 = load i32, ptr %h, align 4
  %18 = load ptr, ptr %pHash.addr, align 8
  store i32 %17, ptr %18, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end6
  %19 = load i32, ptr %count, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %count, align 4
  %tobool7 = icmp ne i32 %19, 0
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %elem, align 8
  %pKey8 = getelementptr inbounds nuw %struct.HashElem, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %pKey8, align 8
  %22 = load ptr, ptr %pKey.addr, align 8
  %call9 = call i32 @sqlite3StrICmp(ptr noundef %21, ptr noundef %22)
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  %23 = load ptr, ptr %elem, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %while.body
  %24 = load ptr, ptr %elem, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %next, align 8
  store ptr %25, ptr %elem, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store ptr @findElementWithHash.nullElement, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then10
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26
}

; Function Attrs: nounwind uwtable
declare hidden i32 @strHash(ptr noundef) #0

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
