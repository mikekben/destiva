; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aJournalMagic = external hidden constant [8 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @read32bits(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @readMasterJournal(ptr noundef %pJrnl, ptr noundef %zMaster, i32 noundef %nMaster) #1 {
entry:
  %retval = alloca i32, align 4
  %pJrnl.addr = alloca ptr, align 8
  %zMaster.addr = alloca ptr, align 8
  %nMaster.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %len = alloca i32, align 4
  %szJ = alloca i64, align 8
  %cksum = alloca i32, align 4
  %u = alloca i32, align 4
  %aMagic = alloca [8 x i8], align 1
  store ptr %pJrnl, ptr %pJrnl.addr, align 8
  store ptr %zMaster, ptr %zMaster.addr, align 8
  store i32 %nMaster, ptr %nMaster.addr, align 4
  %0 = load ptr, ptr %zMaster.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  store i8 0, ptr %arrayidx, align 1
  %1 = load ptr, ptr %pJrnl.addr, align 8
  %call = call i32 @sqlite3OsFileSize(ptr noundef %1, ptr noundef %szJ)
  store i32 %call, ptr %rc, align 4
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %szJ, align 8
  %cmp1 = icmp slt i64 %2, 16
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pJrnl.addr, align 8
  %4 = load i64, ptr %szJ, align 8
  %sub = sub nsw i64 %4, 16
  %call3 = call i32 @read32bits(ptr noundef %3, i64 noundef %sub, ptr noundef %len)
  store i32 %call3, ptr %rc, align 4
  %cmp4 = icmp ne i32 0, %call3
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %5 = load i32, ptr %len, align 4
  %6 = load i32, ptr %nMaster.addr, align 4
  %cmp6 = icmp uge i32 %5, %6
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %7 = load i32, ptr %len, align 4
  %conv = zext i32 %7 to i64
  %8 = load i64, ptr %szJ, align 8
  %sub8 = sub nsw i64 %8, 16
  %cmp9 = icmp sgt i64 %conv, %sub8
  br i1 %cmp9, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %9 = load i32, ptr %len, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %10 = load ptr, ptr %pJrnl.addr, align 8
  %11 = load i64, ptr %szJ, align 8
  %sub15 = sub nsw i64 %11, 12
  %call16 = call i32 @read32bits(ptr noundef %10, i64 noundef %sub15, ptr noundef %cksum)
  store i32 %call16, ptr %rc, align 4
  %cmp17 = icmp ne i32 0, %call16
  br i1 %cmp17, label %if.then, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false14
  %12 = load ptr, ptr %pJrnl.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %aMagic, i64 0, i64 0
  %13 = load i64, ptr %szJ, align 8
  %sub20 = sub nsw i64 %13, 8
  %call21 = call i32 @sqlite3OsRead(ptr noundef %12, ptr noundef %arraydecay, i32 noundef 8, i64 noundef %sub20)
  store i32 %call21, ptr %rc, align 4
  %cmp22 = icmp ne i32 0, %call21
  br i1 %cmp22, label %if.then, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %arraydecay25 = getelementptr inbounds [8 x i8], ptr %aMagic, i64 0, i64 0
  %call26 = call i32 @memcmp(ptr noundef %arraydecay25, ptr noundef @aJournalMagic, i64 noundef 8) #2
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %14 = load ptr, ptr %pJrnl.addr, align 8
  %15 = load ptr, ptr %zMaster.addr, align 8
  %16 = load i32, ptr %len, align 4
  %17 = load i64, ptr %szJ, align 8
  %sub28 = sub nsw i64 %17, 16
  %18 = load i32, ptr %len, align 4
  %conv29 = zext i32 %18 to i64
  %sub30 = sub nsw i64 %sub28, %conv29
  %call31 = call i32 @sqlite3OsRead(ptr noundef %14, ptr noundef %15, i32 noundef %16, i64 noundef %sub30)
  store i32 %call31, ptr %rc, align 4
  %cmp32 = icmp ne i32 0, %call31
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false19, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %19 = load i32, ptr %rc, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false27
  store i32 0, ptr %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, ptr %u, align 4
  %21 = load i32, ptr %len, align 4
  %cmp34 = icmp ult i32 %20, %21
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %zMaster.addr, align 8
  %23 = load i32, ptr %u, align 4
  %idxprom = zext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %22, i64 %idxprom
  %24 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %24 to i32
  %25 = load i32, ptr %cksum, align 4
  %sub38 = sub i32 %25, %conv37
  store i32 %sub38, ptr %cksum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %u, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %u, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %cksum, align 4
  %tobool39 = icmp ne i32 %27, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.end
  store i32 0, ptr %len, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %for.end
  %28 = load ptr, ptr %zMaster.addr, align 8
  %29 = load i32, ptr %len, align 4
  %idxprom42 = zext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %28, i64 %idxprom42
  store i8 0, ptr %arrayidx43, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
