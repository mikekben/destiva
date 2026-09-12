; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyXMLRawStr = type { ptr, i32, i32 }
%struct.SyXMLRawStrNS = type { ptr, i32, i32, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashDeleteEntry2(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @XMLnsUnlink(ptr noundef %pParse, ptr noundef %pLast, ptr noundef %pToken) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pLast.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %apEntry = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pUserData = alloca ptr, align 8
  %n = alloca i32, align 4
  %sPrefix = alloca %struct.SyXMLRawStr, align 8
  %rc = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pLast, ptr %pLast.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  %0 = load ptr, ptr %pLast.addr, align 8
  %sNSset = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %0, i32 0, i32 3
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sNSset, i32 0, i32 1
  %1 = load ptr, ptr %pBase, align 8
  store ptr %1, ptr %apEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %n, align 4
  %3 = load ptr, ptr %pLast.addr, align 8
  %sNSset1 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %3, i32 0, i32 3
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sNSset1, i32 0, i32 2
  %4 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %apEntry, align 8
  %6 = load i32, ptr %n, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %pEntry, align 8
  %8 = load ptr, ptr %pParse.addr, align 8
  %xNameSpaceEnd = getelementptr inbounds nuw %struct.SyXMLParser, ptr %8, i32 0, i32 15
  %9 = load ptr, ptr %xNameSpaceEnd, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %pParse.addr, align 8
  %nFlags = getelementptr inbounds nuw %struct.SyXMLParser, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %nFlags, align 8
  %and = and i32 %11, 1
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.end10

land.lhs.true3:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %pToken.addr, align 8
  %tobool4 = icmp ne ptr %12, null
  br i1 %tobool4, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true3
  %13 = load ptr, ptr %pEntry, align 8
  %pKey = getelementptr inbounds nuw %struct.SyHashEntry, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pKey, align 8
  %zString = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sPrefix, i32 0, i32 0
  store ptr %14, ptr %zString, align 8
  %15 = load ptr, ptr %pEntry, align 8
  %nKeyLen = getelementptr inbounds nuw %struct.SyHashEntry, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nKeyLen, align 8
  %nByte = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sPrefix, i32 0, i32 1
  store i32 %16, ptr %nByte, align 8
  %17 = load ptr, ptr %pToken.addr, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %nLine, align 4
  %nLine5 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sPrefix, i32 0, i32 2
  store i32 %18, ptr %nLine5, align 4
  %19 = load ptr, ptr %pParse.addr, align 8
  %xNameSpaceEnd6 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %19, i32 0, i32 15
  %20 = load ptr, ptr %xNameSpaceEnd6, align 8
  %21 = load ptr, ptr %pParse.addr, align 8
  %pUserData7 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pUserData7, align 8
  %call = call i32 %20(ptr noundef %sPrefix, ptr noundef %22)
  store i32 %call, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %23, -10
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true3, %land.lhs.true, %for.body
  %24 = load ptr, ptr %pEntry, align 8
  %pUserData11 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %pUserData11, align 8
  store ptr %25, ptr %pUserData, align 8
  %26 = load ptr, ptr %pEntry, align 8
  %call12 = call i32 @SyHashDeleteEntry2(ptr noundef %26)
  %27 = load ptr, ptr %pParse.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyXMLParser, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pAllocator, align 8
  %29 = load ptr, ptr %pUserData, align 8
  %call13 = call i32 @SyMemBackendFree(ptr noundef %28, ptr noundef %29)
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %30 = load i32, ptr %n, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %pLast.addr, align 8
  %sNSset14 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %31, i32 0, i32 3
  %call15 = call i32 @SySetRelease(ptr noundef %sNSset14)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then9
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
