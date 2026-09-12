; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@UnixVfs_TempDir.azDirs = external hidden global [3 x ptr], align 16
@.str.31 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.32 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @UnixVfs_TempDir(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %buf = alloca %struct.stat, align 8
  %zDir = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %call = call ptr @getenv(ptr noundef @.str.31) #2
  store ptr %call, ptr %zDir, align 8
  %0 = load ptr, ptr %zDir, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %zDir, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %zDir, align 8
  %call3 = call i32 @access(ptr noundef %3, i32 noundef 7) #2
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %pCtx.addr, align 8
  %5 = load ptr, ptr %zDir, align 8
  %call5 = call i32 @ph7_result_string(ptr noundef %4, ptr noundef %5, i32 noundef -1)
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %conv6 = zext i32 %6 to i64
  %cmp7 = icmp ult i64 %conv6, 3
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds nuw [3 x ptr], ptr @UnixVfs_TempDir.azDirs, i64 0, i64 %idxprom
  %8 = load ptr, ptr %arrayidx9, align 8
  store ptr %8, ptr %zDir, align 8
  %9 = load ptr, ptr %zDir, align 8
  %cmp10 = icmp eq ptr %9, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %10 = load ptr, ptr %zDir, align 8
  %call14 = call i32 @stat(ptr noundef %10, ptr noundef %buf) #2
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  br label %for.inc

if.end17:                                         ; preds = %if.end13
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 3
  %11 = load i32, ptr %st_mode, align 8
  %and = and i32 %11, 61440
  %cmp18 = icmp eq i32 %and, 16384
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  br label %for.inc

if.end21:                                         ; preds = %if.end17
  %12 = load ptr, ptr %zDir, align 8
  %call22 = call i32 @access(ptr noundef %12, i32 noundef 7) #2
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  br label %for.inc

if.end25:                                         ; preds = %if.end21
  %13 = load ptr, ptr %pCtx.addr, align 8
  %14 = load ptr, ptr %zDir, align 8
  %call26 = call i32 @ph7_result_string(ptr noundef %13, ptr noundef %14, i32 noundef -1)
  br label %return

for.inc:                                          ; preds = %if.then24, %if.then20, %if.then16, %if.then12
  %15 = load i32, ptr %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call27 = call i32 @ph7_result_string(ptr noundef %16, ptr noundef @.str.32, i32 noundef 4)
  br label %return

return:                                           ; preds = %for.end, %if.end25, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @access(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
