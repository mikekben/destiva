; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VListNameToNum(ptr noundef %pIn, ptr noundef %zName, i32 noundef %nName) #1 {
entry:
  %retval = alloca i32, align 4
  %pIn.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %nName.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mx = alloca i32, align 4
  %z = alloca ptr, align 8
  store ptr %pIn, ptr %pIn.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %nName, ptr %nName.addr, align 4
  %0 = load ptr, ptr %pIn.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pIn.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 1
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %mx, align 4
  store i32 2, ptr %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load ptr, ptr %pIn.addr, align 8
  %4 = load i32, ptr %i, align 4
  %add = add nsw i32 %4, 2
  %idxprom = sext i32 %add to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 %idxprom
  store ptr %arrayidx1, ptr %z, align 8
  %5 = load ptr, ptr %z, align 8
  %6 = load ptr, ptr %zName.addr, align 8
  %7 = load i32, ptr %nName.addr, align 4
  %conv = sext i32 %7 to i64
  %call = call i32 @strncmp(ptr noundef %5, ptr noundef %6, i64 noundef %conv) #2
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %z, align 8
  %9 = load i32, ptr %nName.addr, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %idxprom4
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %pIn.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %11, i64 %idxprom10
  %13 = load i32, ptr %arrayidx11, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true, %do.body
  %14 = load ptr, ptr %pIn.addr, align 8
  %15 = load i32, ptr %i, align 4
  %add13 = add nsw i32 %15, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %14, i64 %idxprom14
  %16 = load i32, ptr %arrayidx15, align 4
  %17 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %17, %16
  store i32 %add16, ptr %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %mx, align 4
  %cmp17 = icmp slt i32 %18, %19
  br i1 %cmp17, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then9, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
