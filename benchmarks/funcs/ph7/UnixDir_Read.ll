; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @UnixDir_Read(ptr noundef %pUserData, ptr noundef %pCtx) #0 {
entry:
  %retval = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %pDir = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pDir, align 8
  store ptr null, ptr %zName, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %entry
  %1 = load ptr, ptr %pDir, align 8
  %call = call ptr @readdir(ptr noundef %1)
  store ptr %call, ptr %pEntry, align 8
  %2 = load ptr, ptr %pEntry, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.cond
  %3 = load ptr, ptr %pEntry, align 8
  %d_name = getelementptr inbounds nuw %struct.dirent, ptr %3, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %d_name, i64 0, i64 0
  store ptr %arraydecay, ptr %zName, align 8
  %4 = load ptr, ptr %zName, align 8
  %call1 = call i32 @SyStrlen(ptr noundef %4)
  store i32 %call1, ptr %n, align 4
  %5 = load i32, ptr %n, align 4
  %conv = zext i32 %5 to i64
  %cmp2 = icmp ugt i64 %conv, 2
  br i1 %cmp2, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %zName, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv4, 46
  br i1 %cmp5, label %if.then15, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %8 = load i32, ptr %n, align 4
  %conv8 = zext i32 %8 to i64
  %cmp9 = icmp eq i64 %conv8, 2
  br i1 %cmp9, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %9 = load ptr, ptr %zName, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp ne i32 %conv12, 46
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  br label %for.end

if.end16:                                         ; preds = %land.lhs.true, %lor.lhs.false7
  br label %for.cond

for.end:                                          ; preds = %if.then15
  %11 = load ptr, ptr %pCtx.addr, align 8
  %12 = load ptr, ptr %zName, align 8
  %13 = load i32, ptr %n, align 4
  %call17 = call i32 @ph7_result_string(ptr noundef %11, ptr noundef %12, i32 noundef %13)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare ptr @readdir(ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
