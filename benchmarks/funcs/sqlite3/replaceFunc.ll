; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_toobig(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @replaceFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zStr = alloca ptr, align 8
  %zPattern = alloca ptr, align 8
  %zRep = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %nStr = alloca i32, align 4
  %nPattern = alloca i32, align 4
  %nRep = alloca i32, align 4
  %nOut = alloca i64, align 8
  %loopLimit = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cntExpand = alloca i32, align 4
  %db = alloca ptr, align 8
  %zOld = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_context_db_handle(ptr noundef %0)
  store ptr %call, ptr %db, align 8
  %1 = load i32, ptr %argc.addr, align 4
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @sqlite3_value_text(ptr noundef %3)
  store ptr %call1, ptr %zStr, align 8
  %4 = load ptr, ptr %zStr, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @sqlite3_value_bytes(ptr noundef %6)
  store i32 %call3, ptr %nStr, align 4
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx4, align 8
  %call5 = call ptr @sqlite3_value_text(ptr noundef %8)
  store ptr %call5, ptr %zPattern, align 8
  %9 = load ptr, ptr %zPattern, align 8
  %cmp6 = icmp eq ptr %9, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %return

if.end8:                                          ; preds = %if.end
  %10 = load ptr, ptr %zPattern, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %12 = load ptr, ptr %context.addr, align 8
  %13 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx13, align 8
  call void @sqlite3_result_value(ptr noundef %12, ptr noundef %14)
  br label %return

if.end14:                                         ; preds = %if.end8
  %15 = load ptr, ptr %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %15, i64 1
  %16 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @sqlite3_value_bytes(ptr noundef %16)
  store i32 %call16, ptr %nPattern, align 4
  %17 = load ptr, ptr %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %17, i64 2
  %18 = load ptr, ptr %arrayidx17, align 8
  %call18 = call ptr @sqlite3_value_text(ptr noundef %18)
  store ptr %call18, ptr %zRep, align 8
  %19 = load ptr, ptr %zRep, align 8
  %cmp19 = icmp eq ptr %19, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end14
  br label %return

if.end22:                                         ; preds = %if.end14
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %20, i64 2
  %21 = load ptr, ptr %arrayidx23, align 8
  %call24 = call i32 @sqlite3_value_bytes(ptr noundef %21)
  store i32 %call24, ptr %nRep, align 4
  %22 = load i32, ptr %nStr, align 4
  %add = add nsw i32 %22, 1
  %conv25 = sext i32 %add to i64
  store i64 %conv25, ptr %nOut, align 8
  %23 = load ptr, ptr %context.addr, align 8
  %24 = load i64, ptr %nOut, align 8
  %call26 = call ptr @contextMalloc(ptr noundef %23, i64 noundef %24)
  store ptr %call26, ptr %zOut, align 8
  %25 = load ptr, ptr %zOut, align 8
  %cmp27 = icmp eq ptr %25, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end22
  br label %return

if.end30:                                         ; preds = %if.end22
  %26 = load i32, ptr %nStr, align 4
  %27 = load i32, ptr %nPattern, align 4
  %sub = sub nsw i32 %26, %27
  store i32 %sub, ptr %loopLimit, align 4
  store i32 0, ptr %cntExpand, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %loopLimit, align 4
  %cmp31 = icmp sle i32 %28, %29
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %zStr, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %30, i64 %idxprom
  %32 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %32 to i32
  %33 = load ptr, ptr %zPattern, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %34 to i32
  %cmp37 = icmp ne i32 %conv34, %conv36
  br i1 %cmp37, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %35 = load ptr, ptr %zStr, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %36 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %35, i64 %idxprom39
  %37 = load ptr, ptr %zPattern, align 8
  %38 = load i32, ptr %nPattern, align 4
  %conv41 = sext i32 %38 to i64
  %call42 = call i32 @memcmp(ptr noundef %arrayidx40, ptr noundef %37, i64 noundef %conv41) #3
  %tobool = icmp ne i32 %call42, 0
  br i1 %tobool, label %if.then43, label %if.else

if.then43:                                        ; preds = %lor.lhs.false, %for.body
  %39 = load ptr, ptr %zStr, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %39, i64 %idxprom44
  %41 = load i8, ptr %arrayidx45, align 1
  %42 = load ptr, ptr %zOut, align 8
  %43 = load i32, ptr %j, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %j, align 4
  %idxprom46 = sext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %42, i64 %idxprom46
  store i8 %41, ptr %arrayidx47, align 1
  br label %if.end85

if.else:                                          ; preds = %lor.lhs.false
  %44 = load i32, ptr %nRep, align 4
  %45 = load i32, ptr %nPattern, align 4
  %cmp48 = icmp sgt i32 %44, %45
  br i1 %cmp48, label %if.then50, label %if.end78

if.then50:                                        ; preds = %if.else
  %46 = load i32, ptr %nRep, align 4
  %47 = load i32, ptr %nPattern, align 4
  %sub51 = sub nsw i32 %46, %47
  %conv52 = sext i32 %sub51 to i64
  %48 = load i64, ptr %nOut, align 8
  %add53 = add nsw i64 %48, %conv52
  store i64 %add53, ptr %nOut, align 8
  %49 = load i64, ptr %nOut, align 8
  %sub54 = sub nsw i64 %49, 1
  %50 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %50, i32 0, i32 33
  %arrayidx55 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %51 = load i32, ptr %arrayidx55, align 4
  %conv56 = sext i32 %51 to i64
  %cmp57 = icmp sgt i64 %sub54, %conv56
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then50
  %52 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_toobig(ptr noundef %52)
  %53 = load ptr, ptr %zOut, align 8
  call void @sqlite3_free(ptr noundef %53)
  br label %return

if.end60:                                         ; preds = %if.then50
  %54 = load i32, ptr %cntExpand, align 4
  %inc61 = add i32 %54, 1
  store i32 %inc61, ptr %cntExpand, align 4
  %55 = load i32, ptr %cntExpand, align 4
  %56 = load i32, ptr %cntExpand, align 4
  %sub62 = sub i32 %56, 1
  %and = and i32 %55, %sub62
  %cmp63 = icmp eq i32 %and, 0
  br i1 %cmp63, label %if.then65, label %if.end77

if.then65:                                        ; preds = %if.end60
  %57 = load ptr, ptr %zOut, align 8
  store ptr %57, ptr %zOld, align 8
  %58 = load ptr, ptr %zOut, align 8
  %59 = load i64, ptr %nOut, align 8
  %conv66 = trunc i64 %59 to i32
  %conv67 = sext i32 %conv66 to i64
  %60 = load i64, ptr %nOut, align 8
  %61 = load i32, ptr %nStr, align 4
  %conv68 = sext i32 %61 to i64
  %sub69 = sub nsw i64 %60, %conv68
  %sub70 = sub nsw i64 %sub69, 1
  %add71 = add nsw i64 %conv67, %sub70
  %call72 = call ptr @sqlite3_realloc64(ptr noundef %58, i64 noundef %add71)
  store ptr %call72, ptr %zOut, align 8
  %62 = load ptr, ptr %zOut, align 8
  %cmp73 = icmp eq ptr %62, null
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then65
  %63 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %63)
  %64 = load ptr, ptr %zOld, align 8
  call void @sqlite3_free(ptr noundef %64)
  br label %return

if.end76:                                         ; preds = %if.then65
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end60
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.else
  %65 = load ptr, ptr %zOut, align 8
  %66 = load i32, ptr %j, align 4
  %idxprom79 = sext i32 %66 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %65, i64 %idxprom79
  %67 = load ptr, ptr %zRep, align 8
  %68 = load i32, ptr %nRep, align 4
  %conv81 = sext i32 %68 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx80, ptr align 1 %67, i64 %conv81, i1 false)
  %69 = load i32, ptr %nRep, align 4
  %70 = load i32, ptr %j, align 4
  %add82 = add nsw i32 %70, %69
  store i32 %add82, ptr %j, align 4
  %71 = load i32, ptr %nPattern, align 4
  %sub83 = sub nsw i32 %71, 1
  %72 = load i32, ptr %i, align 4
  %add84 = add nsw i32 %72, %sub83
  store i32 %add84, ptr %i, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end78, %if.then43
  br label %for.inc

for.inc:                                          ; preds = %if.end85
  %73 = load i32, ptr %i, align 4
  %inc86 = add nsw i32 %73, 1
  store i32 %inc86, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %74 = load ptr, ptr %zOut, align 8
  %75 = load i32, ptr %j, align 4
  %idxprom87 = sext i32 %75 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %74, i64 %idxprom87
  %76 = load ptr, ptr %zStr, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom89 = sext i32 %77 to i64
  %arrayidx90 = getelementptr inbounds i8, ptr %76, i64 %idxprom89
  %78 = load i32, ptr %nStr, align 4
  %79 = load i32, ptr %i, align 4
  %sub91 = sub nsw i32 %78, %79
  %conv92 = sext i32 %sub91 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx88, ptr align 1 %arrayidx90, i64 %conv92, i1 false)
  %80 = load i32, ptr %nStr, align 4
  %81 = load i32, ptr %i, align 4
  %sub93 = sub nsw i32 %80, %81
  %82 = load i32, ptr %j, align 4
  %add94 = add nsw i32 %82, %sub93
  store i32 %add94, ptr %j, align 4
  %83 = load ptr, ptr %zOut, align 8
  %84 = load i32, ptr %j, align 4
  %idxprom95 = sext i32 %84 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %83, i64 %idxprom95
  store i8 0, ptr %arrayidx96, align 1
  %85 = load ptr, ptr %context.addr, align 8
  %86 = load ptr, ptr %zOut, align 8
  %87 = load i32, ptr %j, align 4
  call void @sqlite3_result_text(ptr noundef %85, ptr noundef %86, i32 noundef %87, ptr noundef @sqlite3_free)
  br label %return

return:                                           ; preds = %for.end, %if.then75, %if.then59, %if.then29, %if.then21, %if.then12, %if.then7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @contextMalloc(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

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
