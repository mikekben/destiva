; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3KeywordCode(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @identPut(ptr noundef %z, ptr noundef %pIdx, ptr noundef %zSignedIdent) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %zSignedIdent.addr = alloca ptr, align 8
  %zIdent = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %needQuote = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store ptr %zSignedIdent, ptr %zSignedIdent.addr, align 8
  %0 = load ptr, ptr %zSignedIdent.addr, align 8
  store ptr %0, ptr %zIdent, align 8
  %1 = load ptr, ptr %pIdx.addr, align 8
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %zIdent, align 8
  %4 = load i32, ptr %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %zIdent, align 8
  %7 = load i32, ptr %j, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 %idxprom1
  %8 = load i8, ptr %arrayidx2, align 1
  %idxprom3 = zext i8 %8 to i64
  %arrayidx4 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom3
  %9 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 6
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %zIdent, align 8
  %11 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 %idxprom6
  %12 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  %cmp = icmp ne i32 %conv8, 95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load ptr, ptr %zIdent, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx10, align 1
  %idxprom11 = zext i8 %15 to i64
  %arrayidx12 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom11
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %and14 = and i32 %conv13, 4
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %17 = load ptr, ptr %zIdent, align 8
  %18 = load i32, ptr %j, align 4
  %call = call i32 @sqlite3KeywordCode(ptr noundef %17, i32 noundef %18)
  %cmp16 = icmp ne i32 %call, 59
  br i1 %cmp16, label %lor.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %19 = load ptr, ptr %zIdent, align 8
  %20 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %19, i64 %idxprom19
  %21 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false18
  %22 = load i32, ptr %j, align 4
  %cmp24 = icmp eq i32 %22, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false18, %lor.lhs.false, %for.end
  %23 = phi i1 [ true, %lor.lhs.false18 ], [ true, %lor.lhs.false ], [ true, %for.end ], [ %cmp24, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  store i32 %lor.ext, ptr %needQuote, align 4
  %24 = load i32, ptr %needQuote, align 4
  %tobool26 = icmp ne i32 %24, 0
  br i1 %tobool26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %lor.end
  %25 = load ptr, ptr %z.addr, align 8
  %26 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, ptr %i, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %25, i64 %idxprom29
  store i8 34, ptr %arrayidx30, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %lor.end
  store i32 0, ptr %j, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc52, %if.end31
  %27 = load ptr, ptr %zIdent, align 8
  %28 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %27, i64 %idxprom33
  %29 = load i8, ptr %arrayidx34, align 1
  %tobool35 = icmp ne i8 %29, 0
  br i1 %tobool35, label %for.body36, label %for.end54

for.body36:                                       ; preds = %for.cond32
  %30 = load ptr, ptr %zIdent, align 8
  %31 = load i32, ptr %j, align 4
  %idxprom37 = sext i32 %31 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %30, i64 %idxprom37
  %32 = load i8, ptr %arrayidx38, align 1
  %33 = load ptr, ptr %z.addr, align 8
  %34 = load i32, ptr %i, align 4
  %inc39 = add nsw i32 %34, 1
  store i32 %inc39, ptr %i, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %33, i64 %idxprom40
  store i8 %32, ptr %arrayidx41, align 1
  %35 = load ptr, ptr %zIdent, align 8
  %36 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %35, i64 %idxprom42
  %37 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv44, 34
  br i1 %cmp45, label %if.then47, label %if.end51

if.then47:                                        ; preds = %for.body36
  %38 = load ptr, ptr %z.addr, align 8
  %39 = load i32, ptr %i, align 4
  %inc48 = add nsw i32 %39, 1
  store i32 %inc48, ptr %i, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %38, i64 %idxprom49
  store i8 34, ptr %arrayidx50, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %for.body36
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %40 = load i32, ptr %j, align 4
  %inc53 = add nsw i32 %40, 1
  store i32 %inc53, ptr %j, align 4
  br label %for.cond32, !llvm.loop !8

for.end54:                                        ; preds = %for.cond32
  %41 = load i32, ptr %needQuote, align 4
  %tobool55 = icmp ne i32 %41, 0
  br i1 %tobool55, label %if.then56, label %if.end60

if.then56:                                        ; preds = %for.end54
  %42 = load ptr, ptr %z.addr, align 8
  %43 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %43, 1
  store i32 %inc57, ptr %i, align 4
  %idxprom58 = sext i32 %43 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %42, i64 %idxprom58
  store i8 34, ptr %arrayidx59, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %for.end54
  %44 = load ptr, ptr %z.addr, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %44, i64 %idxprom61
  store i8 0, ptr %arrayidx62, align 1
  %46 = load i32, ptr %i, align 4
  %47 = load ptr, ptr %pIdx.addr, align 8
  store i32 %46, ptr %47, align 4
  ret void
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
!8 = distinct !{!8, !7}
