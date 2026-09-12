; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbePmaReadBlob(ptr noundef %p, i32 noundef %nByte, ptr noundef %ppOut) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %ppOut.addr = alloca ptr, align 8
  %iBuf = alloca i32, align 4
  %nAvail = alloca i32, align 4
  %nRead = alloca i32, align 4
  %rc = alloca i32, align 4
  %nRem = alloca i32, align 4
  %aNew = alloca ptr, align 8
  %nNew = alloca i64, align 8
  %rc72 = alloca i32, align 4
  %nCopy = alloca i32, align 4
  %aNext = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %ppOut, ptr %ppOut.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %aMap = getelementptr inbounds nuw %struct.PmaReader, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %aMap, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %aMap1 = getelementptr inbounds nuw %struct.PmaReader, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %aMap1, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %iReadOff = getelementptr inbounds nuw %struct.PmaReader, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %iReadOff, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %5
  %6 = load ptr, ptr %ppOut.addr, align 8
  store ptr %arrayidx, ptr %6, align 8
  %7 = load i32, ptr %nByte.addr, align 4
  %conv = sext i32 %7 to i64
  %8 = load ptr, ptr %p.addr, align 8
  %iReadOff2 = getelementptr inbounds nuw %struct.PmaReader, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %iReadOff2, align 8
  %add = add nsw i64 %9, %conv
  store i64 %add, ptr %iReadOff2, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %p.addr, align 8
  %iReadOff3 = getelementptr inbounds nuw %struct.PmaReader, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %iReadOff3, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %nBuffer = getelementptr inbounds nuw %struct.PmaReader, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %nBuffer, align 8
  %conv4 = sext i32 %13 to i64
  %rem = srem i64 %11, %conv4
  %conv5 = trunc i64 %rem to i32
  store i32 %conv5, ptr %iBuf, align 4
  %14 = load i32, ptr %iBuf, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then7, label %if.end25

if.then7:                                         ; preds = %if.end
  %15 = load ptr, ptr %p.addr, align 8
  %iEof = getelementptr inbounds nuw %struct.PmaReader, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %iEof, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %iReadOff8 = getelementptr inbounds nuw %struct.PmaReader, ptr %17, i32 0, i32 0
  %18 = load i64, ptr %iReadOff8, align 8
  %sub = sub nsw i64 %16, %18
  %19 = load ptr, ptr %p.addr, align 8
  %nBuffer9 = getelementptr inbounds nuw %struct.PmaReader, ptr %19, i32 0, i32 8
  %20 = load i32, ptr %nBuffer9, align 8
  %conv10 = sext i32 %20 to i64
  %cmp11 = icmp sgt i64 %sub, %conv10
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then7
  %21 = load ptr, ptr %p.addr, align 8
  %nBuffer14 = getelementptr inbounds nuw %struct.PmaReader, ptr %21, i32 0, i32 8
  %22 = load i32, ptr %nBuffer14, align 8
  store i32 %22, ptr %nRead, align 4
  br label %if.end19

if.else:                                          ; preds = %if.then7
  %23 = load ptr, ptr %p.addr, align 8
  %iEof15 = getelementptr inbounds nuw %struct.PmaReader, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %iEof15, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %iReadOff16 = getelementptr inbounds nuw %struct.PmaReader, ptr %25, i32 0, i32 0
  %26 = load i64, ptr %iReadOff16, align 8
  %sub17 = sub nsw i64 %24, %26
  %conv18 = trunc i64 %sub17 to i32
  store i32 %conv18, ptr %nRead, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  %27 = load ptr, ptr %p.addr, align 8
  %pFd = getelementptr inbounds nuw %struct.PmaReader, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %pFd, align 8
  %29 = load ptr, ptr %p.addr, align 8
  %aBuffer = getelementptr inbounds nuw %struct.PmaReader, ptr %29, i32 0, i32 7
  %30 = load ptr, ptr %aBuffer, align 8
  %31 = load i32, ptr %nRead, align 4
  %32 = load ptr, ptr %p.addr, align 8
  %iReadOff20 = getelementptr inbounds nuw %struct.PmaReader, ptr %32, i32 0, i32 0
  %33 = load i64, ptr %iReadOff20, align 8
  %call = call i32 @sqlite3OsRead(ptr noundef %28, ptr noundef %30, i32 noundef %31, i64 noundef %33)
  store i32 %call, ptr %rc, align 4
  %34 = load i32, ptr %rc, align 4
  %cmp21 = icmp ne i32 %34, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  %35 = load i32, ptr %rc, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  %36 = load ptr, ptr %p.addr, align 8
  %nBuffer26 = getelementptr inbounds nuw %struct.PmaReader, ptr %36, i32 0, i32 8
  %37 = load i32, ptr %nBuffer26, align 8
  %38 = load i32, ptr %iBuf, align 4
  %sub27 = sub nsw i32 %37, %38
  store i32 %sub27, ptr %nAvail, align 4
  %39 = load i32, ptr %nByte.addr, align 4
  %40 = load i32, ptr %nAvail, align 4
  %cmp28 = icmp sle i32 %39, %40
  br i1 %cmp28, label %if.then30, label %if.else36

if.then30:                                        ; preds = %if.end25
  %41 = load ptr, ptr %p.addr, align 8
  %aBuffer31 = getelementptr inbounds nuw %struct.PmaReader, ptr %41, i32 0, i32 7
  %42 = load ptr, ptr %aBuffer31, align 8
  %43 = load i32, ptr %iBuf, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %42, i64 %idxprom
  %44 = load ptr, ptr %ppOut.addr, align 8
  store ptr %arrayidx32, ptr %44, align 8
  %45 = load i32, ptr %nByte.addr, align 4
  %conv33 = sext i32 %45 to i64
  %46 = load ptr, ptr %p.addr, align 8
  %iReadOff34 = getelementptr inbounds nuw %struct.PmaReader, ptr %46, i32 0, i32 0
  %47 = load i64, ptr %iReadOff34, align 8
  %add35 = add nsw i64 %47, %conv33
  store i64 %add35, ptr %iReadOff34, align 8
  br label %if.end92

if.else36:                                        ; preds = %if.end25
  %48 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds nuw %struct.PmaReader, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %nAlloc, align 8
  %50 = load i32, ptr %nByte.addr, align 4
  %cmp37 = icmp slt i32 %49, %50
  br i1 %cmp37, label %if.then39, label %if.end58

if.then39:                                        ; preds = %if.else36
  %51 = load ptr, ptr %p.addr, align 8
  %nAlloc40 = getelementptr inbounds nuw %struct.PmaReader, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %nAlloc40, align 8
  %conv41 = sext i32 %52 to i64
  %mul = mul nsw i64 2, %conv41
  %cmp42 = icmp sgt i64 128, %mul
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then39
  br label %cond.end

cond.false:                                       ; preds = %if.then39
  %53 = load ptr, ptr %p.addr, align 8
  %nAlloc44 = getelementptr inbounds nuw %struct.PmaReader, ptr %53, i32 0, i32 2
  %54 = load i32, ptr %nAlloc44, align 8
  %conv45 = sext i32 %54 to i64
  %mul46 = mul nsw i64 2, %conv45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 128, %cond.true ], [ %mul46, %cond.false ]
  store i64 %cond, ptr %nNew, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %55 = load i32, ptr %nByte.addr, align 4
  %conv47 = sext i32 %55 to i64
  %56 = load i64, ptr %nNew, align 8
  %cmp48 = icmp sgt i64 %conv47, %56
  br i1 %cmp48, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %57 = load i64, ptr %nNew, align 8
  %mul50 = mul nsw i64 %57, 2
  store i64 %mul50, ptr %nNew, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %58 = load ptr, ptr %p.addr, align 8
  %aAlloc = getelementptr inbounds nuw %struct.PmaReader, ptr %58, i32 0, i32 5
  %59 = load ptr, ptr %aAlloc, align 8
  %60 = load i64, ptr %nNew, align 8
  %call51 = call ptr @sqlite3Realloc(ptr noundef %59, i64 noundef %60)
  store ptr %call51, ptr %aNew, align 8
  %61 = load ptr, ptr %aNew, align 8
  %tobool52 = icmp ne ptr %61, null
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %while.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %while.end
  %62 = load i64, ptr %nNew, align 8
  %conv55 = trunc i64 %62 to i32
  %63 = load ptr, ptr %p.addr, align 8
  %nAlloc56 = getelementptr inbounds nuw %struct.PmaReader, ptr %63, i32 0, i32 2
  store i32 %conv55, ptr %nAlloc56, align 8
  %64 = load ptr, ptr %aNew, align 8
  %65 = load ptr, ptr %p.addr, align 8
  %aAlloc57 = getelementptr inbounds nuw %struct.PmaReader, ptr %65, i32 0, i32 5
  store ptr %64, ptr %aAlloc57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.end54, %if.else36
  %66 = load ptr, ptr %p.addr, align 8
  %aAlloc59 = getelementptr inbounds nuw %struct.PmaReader, ptr %66, i32 0, i32 5
  %67 = load ptr, ptr %aAlloc59, align 8
  %68 = load ptr, ptr %p.addr, align 8
  %aBuffer60 = getelementptr inbounds nuw %struct.PmaReader, ptr %68, i32 0, i32 7
  %69 = load ptr, ptr %aBuffer60, align 8
  %70 = load i32, ptr %iBuf, align 4
  %idxprom61 = sext i32 %70 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %69, i64 %idxprom61
  %71 = load i32, ptr %nAvail, align 4
  %conv63 = sext i32 %71 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr align 1 %arrayidx62, i64 %conv63, i1 false)
  %72 = load i32, ptr %nAvail, align 4
  %conv64 = sext i32 %72 to i64
  %73 = load ptr, ptr %p.addr, align 8
  %iReadOff65 = getelementptr inbounds nuw %struct.PmaReader, ptr %73, i32 0, i32 0
  %74 = load i64, ptr %iReadOff65, align 8
  %add66 = add nsw i64 %74, %conv64
  store i64 %add66, ptr %iReadOff65, align 8
  %75 = load i32, ptr %nByte.addr, align 4
  %76 = load i32, ptr %nAvail, align 4
  %sub67 = sub nsw i32 %75, %76
  store i32 %sub67, ptr %nRem, align 4
  br label %while.cond68

while.cond68:                                     ; preds = %if.end83, %if.end58
  %77 = load i32, ptr %nRem, align 4
  %cmp69 = icmp sgt i32 %77, 0
  br i1 %cmp69, label %while.body71, label %while.end90

while.body71:                                     ; preds = %while.cond68
  %78 = load i32, ptr %nRem, align 4
  store i32 %78, ptr %nCopy, align 4
  %79 = load i32, ptr %nRem, align 4
  %80 = load ptr, ptr %p.addr, align 8
  %nBuffer73 = getelementptr inbounds nuw %struct.PmaReader, ptr %80, i32 0, i32 8
  %81 = load i32, ptr %nBuffer73, align 8
  %cmp74 = icmp sgt i32 %79, %81
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %while.body71
  %82 = load ptr, ptr %p.addr, align 8
  %nBuffer77 = getelementptr inbounds nuw %struct.PmaReader, ptr %82, i32 0, i32 8
  %83 = load i32, ptr %nBuffer77, align 8
  store i32 %83, ptr %nCopy, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %while.body71
  %84 = load ptr, ptr %p.addr, align 8
  %85 = load i32, ptr %nCopy, align 4
  %call79 = call i32 @vdbePmaReadBlob(ptr noundef %84, i32 noundef %85, ptr noundef %aNext)
  store i32 %call79, ptr %rc72, align 4
  %86 = load i32, ptr %rc72, align 4
  %cmp80 = icmp ne i32 %86, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end78
  %87 = load i32, ptr %rc72, align 4
  store i32 %87, ptr %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.end78
  %88 = load ptr, ptr %p.addr, align 8
  %aAlloc84 = getelementptr inbounds nuw %struct.PmaReader, ptr %88, i32 0, i32 5
  %89 = load ptr, ptr %aAlloc84, align 8
  %90 = load i32, ptr %nByte.addr, align 4
  %91 = load i32, ptr %nRem, align 4
  %sub85 = sub nsw i32 %90, %91
  %idxprom86 = sext i32 %sub85 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %89, i64 %idxprom86
  %92 = load ptr, ptr %aNext, align 8
  %93 = load i32, ptr %nCopy, align 4
  %conv88 = sext i32 %93 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx87, ptr align 1 %92, i64 %conv88, i1 false)
  %94 = load i32, ptr %nCopy, align 4
  %95 = load i32, ptr %nRem, align 4
  %sub89 = sub nsw i32 %95, %94
  store i32 %sub89, ptr %nRem, align 4
  br label %while.cond68, !llvm.loop !8

while.end90:                                      ; preds = %while.cond68
  %96 = load ptr, ptr %p.addr, align 8
  %aAlloc91 = getelementptr inbounds nuw %struct.PmaReader, ptr %96, i32 0, i32 5
  %97 = load ptr, ptr %aAlloc91, align 8
  %98 = load ptr, ptr %ppOut.addr, align 8
  store ptr %97, ptr %98, align 8
  br label %if.end92

if.end92:                                         ; preds = %while.end90, %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end92, %if.then82, %if.then53, %if.then23, %if.then
  %99 = load i32, ptr %retval, align 4
  ret i32 %99
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
