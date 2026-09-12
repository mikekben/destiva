; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.112 = external hidden unnamed_addr constant [7 x i8], align 1
@hexdigits = external hidden constant [16 x i8], align 16
@.str.998 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_blob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local double @sqlite3_value_double(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AtoF(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @quoteFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %r1 = alloca double, align 8
  %r2 = alloca double, align 8
  %zBuf = alloca [50 x i8], align 16
  %zText = alloca ptr, align 8
  %zBlob = alloca ptr, align 8
  %nBlob = alloca i32, align 4
  %i = alloca i32, align 4
  %i50 = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i64, align 8
  %zArg = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb9
    i32 4, label %sw.bb11
    i32 3, label %sw.bb49
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call double @sqlite3_value_double(ptr noundef %4)
  store double %call2, ptr %r1, align 8
  %arraydecay = getelementptr inbounds [50 x i8], ptr %zBuf, i64 0, i64 0
  %5 = load double, ptr %r1, align 8
  %call3 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef %arraydecay, ptr noundef @.str.112, double noundef %5)
  %arraydecay4 = getelementptr inbounds [50 x i8], ptr %zBuf, i64 0, i64 0
  %call5 = call i32 @sqlite3AtoF(ptr noundef %arraydecay4, ptr noundef %r2, i32 noundef 20, i8 noundef zeroext 1)
  %6 = load double, ptr %r1, align 8
  %7 = load double, ptr %r2, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %arraydecay6 = getelementptr inbounds [50 x i8], ptr %zBuf, i64 0, i64 0
  %8 = load double, ptr %r1, align 8
  %call7 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef %arraydecay6, ptr noundef @.str.998, double noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load ptr, ptr %context.addr, align 8
  %arraydecay8 = getelementptr inbounds [50 x i8], ptr %zBuf, i64 0, i64 0
  call void @sqlite3_result_text(ptr noundef %9, ptr noundef %arraydecay8, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %10 = load ptr, ptr %context.addr, align 8
  %11 = load ptr, ptr %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx10, align 8
  call void @sqlite3_result_value(ptr noundef %10, ptr noundef %12)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store ptr null, ptr %zText, align 8
  %13 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx12, align 8
  %call13 = call ptr @sqlite3_value_blob(ptr noundef %14)
  store ptr %call13, ptr %zBlob, align 8
  %15 = load ptr, ptr %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx14, align 8
  %call15 = call i32 @sqlite3_value_bytes(ptr noundef %16)
  store i32 %call15, ptr %nBlob, align 4
  %17 = load ptr, ptr %context.addr, align 8
  %18 = load i32, ptr %nBlob, align 4
  %conv = sext i32 %18 to i64
  %mul = mul nsw i64 2, %conv
  %add = add nsw i64 %mul, 4
  %call16 = call ptr @contextMalloc(ptr noundef %17, i64 noundef %add)
  store ptr %call16, ptr %zText, align 8
  %19 = load ptr, ptr %zText, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %if.then17, label %if.end48

if.then17:                                        ; preds = %sw.bb11
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then17
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %nBlob, align 4
  %cmp18 = icmp slt i32 %20, %21
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %zBlob, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %22, i64 %idxprom
  %24 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %24 to i32
  %shr = ashr i32 %conv21, 4
  %and = and i32 %shr, 15
  %idxprom22 = sext i32 %and to i64
  %arrayidx23 = getelementptr inbounds [16 x i8], ptr @hexdigits, i64 0, i64 %idxprom22
  %25 = load i8, ptr %arrayidx23, align 1
  %26 = load ptr, ptr %zText, align 8
  %27 = load i32, ptr %i, align 4
  %mul24 = mul nsw i32 %27, 2
  %add25 = add nsw i32 %mul24, 2
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %26, i64 %idxprom26
  store i8 %25, ptr %arrayidx27, align 1
  %28 = load ptr, ptr %zBlob, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %29 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %28, i64 %idxprom28
  %30 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %30 to i32
  %and31 = and i32 %conv30, 15
  %idxprom32 = sext i32 %and31 to i64
  %arrayidx33 = getelementptr inbounds [16 x i8], ptr @hexdigits, i64 0, i64 %idxprom32
  %31 = load i8, ptr %arrayidx33, align 1
  %32 = load ptr, ptr %zText, align 8
  %33 = load i32, ptr %i, align 4
  %mul34 = mul nsw i32 %33, 2
  %add35 = add nsw i32 %mul34, 3
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %32, i64 %idxprom36
  store i8 %31, ptr %arrayidx37, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %zText, align 8
  %36 = load i32, ptr %nBlob, align 4
  %mul38 = mul nsw i32 %36, 2
  %add39 = add nsw i32 %mul38, 2
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %35, i64 %idxprom40
  store i8 39, ptr %arrayidx41, align 1
  %37 = load ptr, ptr %zText, align 8
  %38 = load i32, ptr %nBlob, align 4
  %mul42 = mul nsw i32 %38, 2
  %add43 = add nsw i32 %mul42, 3
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %37, i64 %idxprom44
  store i8 0, ptr %arrayidx45, align 1
  %39 = load ptr, ptr %zText, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %39, i64 0
  store i8 88, ptr %arrayidx46, align 1
  %40 = load ptr, ptr %zText, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 39, ptr %arrayidx47, align 1
  %41 = load ptr, ptr %context.addr, align 8
  %42 = load ptr, ptr %zText, align 8
  call void @sqlite3_result_text(ptr noundef %41, ptr noundef %42, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  %43 = load ptr, ptr %zText, align 8
  call void @sqlite3_free(ptr noundef %43)
  br label %if.end48

if.end48:                                         ; preds = %for.end, %sw.bb11
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %44 = load ptr, ptr %argv.addr, align 8
  %arrayidx51 = getelementptr inbounds ptr, ptr %44, i64 0
  %45 = load ptr, ptr %arrayidx51, align 8
  %call52 = call ptr @sqlite3_value_text(ptr noundef %45)
  store ptr %call52, ptr %zArg, align 8
  %46 = load ptr, ptr %zArg, align 8
  %cmp53 = icmp eq ptr %46, null
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %sw.bb49
  br label %sw.epilog

if.end56:                                         ; preds = %sw.bb49
  store i32 0, ptr %i50, align 4
  store i64 0, ptr %n, align 8
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc70, %if.end56
  %47 = load ptr, ptr %zArg, align 8
  %48 = load i32, ptr %i50, align 4
  %idxprom58 = sext i32 %48 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %47, i64 %idxprom58
  %49 = load i8, ptr %arrayidx59, align 1
  %tobool60 = icmp ne i8 %49, 0
  br i1 %tobool60, label %for.body61, label %for.end72

for.body61:                                       ; preds = %for.cond57
  %50 = load ptr, ptr %zArg, align 8
  %51 = load i32, ptr %i50, align 4
  %idxprom62 = sext i32 %51 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %50, i64 %idxprom62
  %52 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %52 to i32
  %cmp65 = icmp eq i32 %conv64, 39
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.body61
  %53 = load i64, ptr %n, align 8
  %inc68 = add i64 %53, 1
  store i64 %inc68, ptr %n, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.body61
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %54 = load i32, ptr %i50, align 4
  %inc71 = add nsw i32 %54, 1
  store i32 %inc71, ptr %i50, align 4
  br label %for.cond57, !llvm.loop !8

for.end72:                                        ; preds = %for.cond57
  %55 = load ptr, ptr %context.addr, align 8
  %56 = load i32, ptr %i50, align 4
  %conv73 = sext i32 %56 to i64
  %57 = load i64, ptr %n, align 8
  %add74 = add nsw i64 %conv73, %57
  %add75 = add nsw i64 %add74, 3
  %call76 = call ptr @contextMalloc(ptr noundef %55, i64 noundef %add75)
  store ptr %call76, ptr %z, align 8
  %58 = load ptr, ptr %z, align 8
  %tobool77 = icmp ne ptr %58, null
  br i1 %tobool77, label %if.then78, label %if.end108

if.then78:                                        ; preds = %for.end72
  %59 = load ptr, ptr %z, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %59, i64 0
  store i8 39, ptr %arrayidx79, align 1
  store i32 0, ptr %i50, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc100, %if.then78
  %60 = load ptr, ptr %zArg, align 8
  %61 = load i32, ptr %i50, align 4
  %idxprom81 = sext i32 %61 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %60, i64 %idxprom81
  %62 = load i8, ptr %arrayidx82, align 1
  %tobool83 = icmp ne i8 %62, 0
  br i1 %tobool83, label %for.body84, label %for.end102

for.body84:                                       ; preds = %for.cond80
  %63 = load ptr, ptr %zArg, align 8
  %64 = load i32, ptr %i50, align 4
  %idxprom85 = sext i32 %64 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %63, i64 %idxprom85
  %65 = load i8, ptr %arrayidx86, align 1
  %66 = load ptr, ptr %z, align 8
  %67 = load i32, ptr %j, align 4
  %inc87 = add nsw i32 %67, 1
  store i32 %inc87, ptr %j, align 4
  %idxprom88 = sext i32 %67 to i64
  %arrayidx89 = getelementptr inbounds i8, ptr %66, i64 %idxprom88
  store i8 %65, ptr %arrayidx89, align 1
  %68 = load ptr, ptr %zArg, align 8
  %69 = load i32, ptr %i50, align 4
  %idxprom90 = sext i32 %69 to i64
  %arrayidx91 = getelementptr inbounds i8, ptr %68, i64 %idxprom90
  %70 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %70 to i32
  %cmp93 = icmp eq i32 %conv92, 39
  br i1 %cmp93, label %if.then95, label %if.end99

if.then95:                                        ; preds = %for.body84
  %71 = load ptr, ptr %z, align 8
  %72 = load i32, ptr %j, align 4
  %inc96 = add nsw i32 %72, 1
  store i32 %inc96, ptr %j, align 4
  %idxprom97 = sext i32 %72 to i64
  %arrayidx98 = getelementptr inbounds i8, ptr %71, i64 %idxprom97
  store i8 39, ptr %arrayidx98, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %for.body84
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99
  %73 = load i32, ptr %i50, align 4
  %inc101 = add nsw i32 %73, 1
  store i32 %inc101, ptr %i50, align 4
  br label %for.cond80, !llvm.loop !9

for.end102:                                       ; preds = %for.cond80
  %74 = load ptr, ptr %z, align 8
  %75 = load i32, ptr %j, align 4
  %inc103 = add nsw i32 %75, 1
  store i32 %inc103, ptr %j, align 4
  %idxprom104 = sext i32 %75 to i64
  %arrayidx105 = getelementptr inbounds i8, ptr %74, i64 %idxprom104
  store i8 39, ptr %arrayidx105, align 1
  %76 = load ptr, ptr %z, align 8
  %77 = load i32, ptr %j, align 4
  %idxprom106 = sext i32 %77 to i64
  %arrayidx107 = getelementptr inbounds i8, ptr %76, i64 %idxprom106
  store i8 0, ptr %arrayidx107, align 1
  %78 = load ptr, ptr %context.addr, align 8
  %79 = load ptr, ptr %z, align 8
  %80 = load i32, ptr %j, align 4
  call void @sqlite3_result_text(ptr noundef %78, ptr noundef %79, i32 noundef %80, ptr noundef @sqlite3_free)
  br label %if.end108

if.end108:                                        ; preds = %for.end102, %for.end72
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %81 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %81, ptr noundef @.str.4, i32 noundef 4, ptr noundef null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end108, %if.then55, %if.end48, %sw.bb9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @contextMalloc(ptr noundef, i64 noundef) #0

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
!9 = distinct !{!9, !7}
