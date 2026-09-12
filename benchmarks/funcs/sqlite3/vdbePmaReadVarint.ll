; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbePmaReadVarint(ptr noundef %p, ptr noundef %pnOut) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pnOut.addr = alloca ptr, align 8
  %iBuf = alloca i32, align 4
  %aVarint = alloca [16 x i8], align 16
  %a = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pnOut, ptr %pnOut.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %aMap = getelementptr inbounds nuw %struct.PmaReader, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %aMap, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %aMap1 = getelementptr inbounds nuw %struct.PmaReader, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %aMap1, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %iReadOff = getelementptr inbounds nuw %struct.PmaReader, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %iReadOff, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %5
  %6 = load ptr, ptr %pnOut.addr, align 8
  %call = call zeroext i8 @sqlite3GetVarint(ptr noundef %arrayidx, ptr noundef %6)
  %conv = zext i8 %call to i64
  %7 = load ptr, ptr %p.addr, align 8
  %iReadOff2 = getelementptr inbounds nuw %struct.PmaReader, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %iReadOff2, align 8
  %add = add nsw i64 %8, %conv
  store i64 %add, ptr %iReadOff2, align 8
  br label %if.end29

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %p.addr, align 8
  %iReadOff3 = getelementptr inbounds nuw %struct.PmaReader, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %iReadOff3, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %nBuffer = getelementptr inbounds nuw %struct.PmaReader, ptr %11, i32 0, i32 8
  %12 = load i32, ptr %nBuffer, align 8
  %conv4 = sext i32 %12 to i64
  %rem = srem i64 %10, %conv4
  %conv5 = trunc i64 %rem to i32
  store i32 %conv5, ptr %iBuf, align 4
  %13 = load i32, ptr %iBuf, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.else
  %14 = load ptr, ptr %p.addr, align 8
  %nBuffer7 = getelementptr inbounds nuw %struct.PmaReader, ptr %14, i32 0, i32 8
  %15 = load i32, ptr %nBuffer7, align 8
  %16 = load i32, ptr %iBuf, align 4
  %sub = sub nsw i32 %15, %16
  %cmp = icmp sge i32 %sub, 9
  br i1 %cmp, label %if.then9, label %if.else15

if.then9:                                         ; preds = %land.lhs.true
  %17 = load ptr, ptr %p.addr, align 8
  %aBuffer = getelementptr inbounds nuw %struct.PmaReader, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %aBuffer, align 8
  %19 = load i32, ptr %iBuf, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %pnOut.addr, align 8
  %call11 = call zeroext i8 @sqlite3GetVarint(ptr noundef %arrayidx10, ptr noundef %20)
  %conv12 = zext i8 %call11 to i64
  %21 = load ptr, ptr %p.addr, align 8
  %iReadOff13 = getelementptr inbounds nuw %struct.PmaReader, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %iReadOff13, align 8
  %add14 = add nsw i64 %22, %conv12
  store i64 %add14, ptr %iReadOff13, align 8
  br label %if.end28

if.else15:                                        ; preds = %land.lhs.true, %if.else
  store i32 0, ptr %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else15
  %23 = load ptr, ptr %p.addr, align 8
  %call16 = call i32 @vdbePmaReadBlob(ptr noundef %23, i32 noundef 1, ptr noundef %a)
  store i32 %call16, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %tobool17 = icmp ne i32 %24, 0
  br i1 %tobool17, label %if.then18, label %if.end

if.then18:                                        ; preds = %do.body
  %25 = load i32, ptr %rc, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %26 = load ptr, ptr %a, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx19, align 1
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  %and = and i32 %28, 15
  %idxprom20 = sext i32 %and to i64
  %arrayidx21 = getelementptr inbounds [16 x i8], ptr %aVarint, i64 0, i64 %idxprom20
  store i8 %27, ptr %arrayidx21, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %29 = load ptr, ptr %a, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %30 to i32
  %and24 = and i32 %conv23, 128
  %cmp25 = icmp ne i32 %and24, 0
  br i1 %cmp25, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %arraydecay = getelementptr inbounds [16 x i8], ptr %aVarint, i64 0, i64 0
  %31 = load ptr, ptr %pnOut.addr, align 8
  %call27 = call zeroext i8 @sqlite3GetVarint(ptr noundef %arraydecay, ptr noundef %31)
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.then9
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then18
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReadBlob(ptr noundef, i32 noundef, ptr noundef) #0

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
