; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SyXMLRawStrNS = type { ptr, i32, i32, %struct.SySet }
%struct.SyHashEntry = type { ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLexTokenizeInput(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyXMLProcess(ptr noundef %pParser, ptr noundef %zInput, i32 noundef %nByte) #0 {
entry:
  %retval = alloca i32, align 4
  %pParser.addr = alloca ptr, align 8
  %zInput.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %sTagStack = alloca %struct.SySet, align 8
  %sWorker = alloca %struct.SySet, align 8
  %rc = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %apEntry = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pParser, ptr %pParser.addr, align 8
  store ptr %zInput, ptr %zInput.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %pParser.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyXMLParser, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pAllocator, align 8
  %call = call i32 @SySetInit(ptr noundef %sWorker, ptr noundef %1, i32 noundef 16)
  %2 = load ptr, ptr %pParser.addr, align 8
  %pAllocator1 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pAllocator1, align 8
  %call2 = call i32 @SySetInit(ptr noundef %sTagStack, ptr noundef %3, i32 noundef 56)
  %4 = load ptr, ptr %pParser.addr, align 8
  %sLex = getelementptr inbounds nuw %struct.SyXMLParser, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %zInput.addr, align 8
  %6 = load i32, ptr %nByte.addr, align 4
  %call3 = call i32 @SyLexTokenizeInput(ptr noundef %sLex, ptr noundef %5, i32 noundef %6, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call3, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %7, -10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %pParser.addr, align 8
  %sToken = getelementptr inbounds nuw %struct.SyXMLParser, ptr %8, i32 0, i32 3
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sToken, i32 0, i32 2
  %9 = load i32, ptr %nUsed, align 8
  %cmp4 = icmp ult i32 %9, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %rc, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %pParser.addr, align 8
  %call6 = call i32 @ProcessXML(ptr noundef %10, ptr noundef %sTagStack, ptr noundef %sWorker)
  store i32 %call6, ptr %rc, align 4
  %11 = load ptr, ptr %pParser.addr, align 8
  %nFlags = getelementptr inbounds nuw %struct.SyXMLParser, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %nFlags, align 8
  %and = and i32 %12, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then7, label %if.end22

if.then7:                                         ; preds = %if.else
  %nUsed8 = getelementptr inbounds nuw %struct.SySet, ptr %sTagStack, i32 0, i32 2
  %13 = load i32, ptr %nUsed8, align 8
  %cmp9 = icmp ugt i32 %13, 0
  br i1 %cmp9, label %if.then10, label %if.end21

if.then10:                                        ; preds = %if.then7
  %call11 = call i32 @SySetResetCursor(ptr noundef %sTagStack)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then10
  %call12 = call i32 @SySetGetNextEntry(ptr noundef %sTagStack, ptr noundef %pEntry)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %pEntry, align 8
  %sNSset = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %14, i32 0, i32 3
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sNSset, i32 0, i32 1
  %15 = load ptr, ptr %pBase, align 8
  store ptr %15, ptr %apEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %16 = load i32, ptr %n, align 4
  %17 = load ptr, ptr %pEntry, align 8
  %sNSset14 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %17, i32 0, i32 3
  %nUsed15 = getelementptr inbounds nuw %struct.SySet, ptr %sNSset14, i32 0, i32 2
  %18 = load i32, ptr %nUsed15, align 8
  %cmp16 = icmp ult i32 %16, %18
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %pParser.addr, align 8
  %pAllocator17 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pAllocator17, align 8
  %21 = load ptr, ptr %apEntry, align 8
  %22 = load i32, ptr %n, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %21, i64 %idxprom
  %23 = load ptr, ptr %arrayidx, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %pUserData, align 8
  %call18 = call i32 @SyMemBackendFree(ptr noundef %20, ptr noundef %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %n, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %pEntry, align 8
  %sNSset19 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %26, i32 0, i32 3
  %call20 = call i32 @SySetRelease(ptr noundef %sNSset19)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.then7
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then5
  %call24 = call i32 @SySetRelease(ptr noundef %sWorker)
  %call25 = call i32 @SySetRelease(ptr noundef %sTagStack)
  %27 = load i32, ptr %rc, align 4
  store i32 %27, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ProcessXML(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetResetCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetGetNextEntry(ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
