; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3AutoExtList = type { i32, ptr }

@sqlite3Autoext = external hidden global { i32, [4 x i8], ptr }, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_initialize() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_auto_extension(ptr noundef %xInit) #0 {
entry:
  %retval = alloca i32, align 4
  %xInit.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %mutex = alloca ptr, align 8
  %nByte = alloca i64, align 8
  %aNew = alloca ptr, align 8
  store ptr %xInit, ptr %xInit.addr, align 8
  store i32 0, ptr %rc, align 4
  %call = call i32 @sqlite3_initialize()
  store i32 %call, ptr %rc, align 4
  %0 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %rc, align 4
  store i32 %1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call ptr @sqlite3MutexAlloc(i32 noundef 2)
  store ptr %call1, ptr %mutex, align 8
  %2 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr @sqlite3Autoext, align 8
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3AutoExtList, ptr @sqlite3Autoext, i32 0, i32 1), align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load ptr, ptr %xInit.addr, align 8
  %cmp2 = icmp eq ptr %7, %8
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then3, %for.cond
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr @sqlite3Autoext, align 8
  %cmp4 = icmp eq i32 %10, %11
  br i1 %cmp4, label %if.then5, label %if.end15

if.then5:                                         ; preds = %for.end
  %12 = load i32, ptr @sqlite3Autoext, align 8
  %add = add i32 %12, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 8
  store i64 %mul, ptr %nByte, align 8
  %13 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3AutoExtList, ptr @sqlite3Autoext, i32 0, i32 1), align 8
  %14 = load i64, ptr %nByte, align 8
  %call6 = call ptr @sqlite3_realloc64(ptr noundef %13, i64 noundef %14)
  store ptr %call6, ptr %aNew, align 8
  %15 = load ptr, ptr %aNew, align 8
  %cmp7 = icmp eq ptr %15, null
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.then5
  store i32 7, ptr %rc, align 4
  br label %if.end14

if.else10:                                        ; preds = %if.then5
  %16 = load ptr, ptr %aNew, align 8
  store ptr %16, ptr getelementptr inbounds nuw (%struct.sqlite3AutoExtList, ptr @sqlite3Autoext, i32 0, i32 1), align 8
  %17 = load ptr, ptr %xInit.addr, align 8
  %18 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3AutoExtList, ptr @sqlite3Autoext, i32 0, i32 1), align 8
  %19 = load i32, ptr @sqlite3Autoext, align 8
  %idxprom11 = zext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds nuw ptr, ptr %18, i64 %idxprom11
  store ptr %17, ptr %arrayidx12, align 8
  %20 = load i32, ptr @sqlite3Autoext, align 8
  %inc13 = add i32 %20, 1
  store i32 %inc13, ptr @sqlite3Autoext, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.then9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %for.end
  %21 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %21)
  %22 = load i32, ptr %rc, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
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
