; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SyhttpHeader = type { %struct.SyString, %struct.SyString }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmHttpExtractHeaders(ptr noundef %pRequest, ptr noundef %pOut) #0 {
entry:
  %pRequest.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  %pLast = alloca ptr, align 8
  %sCurrent = alloca %struct.SyString, align 8
  %sHdr = alloca %struct.SyhttpHeader, align 8
  %bEol = alloca i8, align 1
  %rc = alloca i32, align 4
  store ptr %pRequest, ptr %pRequest.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  store ptr null, ptr %pLast, align 8
  %0 = load ptr, ptr %pOut.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %nUsed, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pOut.addr, align 8
  %3 = load ptr, ptr %pOut.addr, align 8
  %nUsed1 = getelementptr inbounds nuw %struct.SySet, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nUsed1, align 8
  %sub = sub i32 %4, 1
  %call = call ptr @SySetAt(ptr noundef %2, i32 noundef %sub)
  store ptr %call, ptr %pLast, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8 0, ptr %bEol, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end20, %if.end
  call void @SyZero(ptr noundef %sHdr, i32 noundef 32)
  %5 = load ptr, ptr %pRequest.addr, align 8
  %call2 = call i32 @VmGetNextLine(ptr noundef %5, ptr noundef %sCurrent)
  store i32 %call2, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %for.cond
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sCurrent, i32 0, i32 1
  %7 = load i32, ptr %nByte, align 8
  %cmp5 = icmp ult i32 %7, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  br label %for.end

if.end7:                                          ; preds = %if.then4
  store i8 1, ptr %bEol, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %for.cond
  %8 = load ptr, ptr %pLast, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sCurrent, i32 0, i32 0
  %9 = load ptr, ptr %zString, align 8
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %sCurrent, i32 0, i32 1
  %10 = load i32, ptr %nByte9, align 8
  %call10 = call i32 @VmHttpProcessOneHeader(ptr noundef %sHdr, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  %cmp11 = icmp eq i32 0, %call10
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end8
  %11 = load ptr, ptr %pOut.addr, align 8
  %call13 = call i32 @SySetPut(ptr noundef %11, ptr noundef %sHdr)
  %cmp14 = icmp ne i32 0, %call13
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  br label %for.end

if.end16:                                         ; preds = %if.then12
  %12 = load ptr, ptr %pOut.addr, align 8
  %call17 = call ptr @SySetPeek(ptr noundef %12)
  store ptr %call17, ptr %pLast, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end8
  %13 = load i8, ptr %bEol, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end18
  br label %for.end

if.end20:                                         ; preds = %if.end18
  br label %for.cond

for.end:                                          ; preds = %if.then19, %if.then15, %if.then6
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmGetNextLine(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHttpProcessOneHeader(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
