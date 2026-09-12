; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TabResult = type { ptr, ptr, i32, i32, i32, i32, i32 }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.550 = external hidden unnamed_addr constant [65 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_get_table_cb(ptr noundef %pArg, i32 noundef %nCol, ptr noundef %argv, ptr noundef %colv) #0 {
entry:
  %retval = alloca i32, align 4
  %pArg.addr = alloca ptr, align 8
  %nCol.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %colv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %need = alloca i32, align 4
  %i = alloca i32, align 4
  %z = alloca ptr, align 8
  %azNew = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pArg, ptr %pArg.addr, align 8
  store i32 %nCol, ptr %nCol.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %colv, ptr %colv.addr, align 8
  %0 = load ptr, ptr %pArg.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %nRow = getelementptr inbounds nuw %struct.TabResult, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %nRow, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %cmp1 = icmp ne ptr %3, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %nCol.addr, align 4
  %mul = mul nsw i32 %4, 2
  store i32 %mul, ptr %need, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %nCol.addr, align 4
  store i32 %5, ptr %need, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %p, align 8
  %nData = getelementptr inbounds nuw %struct.TabResult, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %nData, align 4
  %8 = load i32, ptr %need, align 4
  %add = add i32 %7, %8
  %9 = load ptr, ptr %p, align 8
  %nAlloc = getelementptr inbounds nuw %struct.TabResult, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %nAlloc, align 8
  %cmp2 = icmp ugt i32 %add, %10
  br i1 %cmp2, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %p, align 8
  %nAlloc4 = getelementptr inbounds nuw %struct.TabResult, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nAlloc4, align 8
  %mul5 = mul i32 %12, 2
  %13 = load i32, ptr %need, align 4
  %add6 = add i32 %mul5, %13
  %14 = load ptr, ptr %p, align 8
  %nAlloc7 = getelementptr inbounds nuw %struct.TabResult, ptr %14, i32 0, i32 2
  store i32 %add6, ptr %nAlloc7, align 8
  %15 = load ptr, ptr %p, align 8
  %azResult = getelementptr inbounds nuw %struct.TabResult, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %azResult, align 8
  %17 = load ptr, ptr %p, align 8
  %nAlloc8 = getelementptr inbounds nuw %struct.TabResult, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %nAlloc8, align 8
  %conv = zext i32 %18 to i64
  %mul9 = mul i64 8, %conv
  %call = call ptr @sqlite3_realloc64(ptr noundef %16, i64 noundef %mul9)
  store ptr %call, ptr %azNew, align 8
  %19 = load ptr, ptr %azNew, align 8
  %cmp10 = icmp eq ptr %19, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then3
  br label %malloc_failed

if.end13:                                         ; preds = %if.then3
  %20 = load ptr, ptr %azNew, align 8
  %21 = load ptr, ptr %p, align 8
  %azResult14 = getelementptr inbounds nuw %struct.TabResult, ptr %21, i32 0, i32 0
  store ptr %20, ptr %azResult14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end
  %22 = load ptr, ptr %p, align 8
  %nRow16 = getelementptr inbounds nuw %struct.TabResult, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %nRow16, align 4
  %cmp17 = icmp eq i32 %23, 0
  br i1 %cmp17, label %if.then19, label %if.else32

if.then19:                                        ; preds = %if.end15
  %24 = load i32, ptr %nCol.addr, align 4
  %25 = load ptr, ptr %p, align 8
  %nColumn = getelementptr inbounds nuw %struct.TabResult, ptr %25, i32 0, i32 4
  store i32 %24, ptr %nColumn, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then19
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %nCol.addr, align 4
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %colv.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %28, i64 %idxprom
  %30 = load ptr, ptr %arrayidx, align 8
  %call22 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.20, ptr noundef %30)
  store ptr %call22, ptr %z, align 8
  %31 = load ptr, ptr %z, align 8
  %cmp23 = icmp eq ptr %31, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body
  br label %malloc_failed

if.end26:                                         ; preds = %for.body
  %32 = load ptr, ptr %z, align 8
  %33 = load ptr, ptr %p, align 8
  %azResult27 = getelementptr inbounds nuw %struct.TabResult, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %azResult27, align 8
  %35 = load ptr, ptr %p, align 8
  %nData28 = getelementptr inbounds nuw %struct.TabResult, ptr %35, i32 0, i32 5
  %36 = load i32, ptr %nData28, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %nData28, align 4
  %idxprom29 = zext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds nuw ptr, ptr %34, i64 %idxprom29
  store ptr %32, ptr %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %37 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %37, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end40

if.else32:                                        ; preds = %if.end15
  %38 = load ptr, ptr %p, align 8
  %nColumn33 = getelementptr inbounds nuw %struct.TabResult, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %nColumn33, align 8
  %40 = load i32, ptr %nCol.addr, align 4
  %cmp34 = icmp ne i32 %39, %40
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.else32
  %41 = load ptr, ptr %p, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.TabResult, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3_free(ptr noundef %42)
  %call37 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.550)
  %43 = load ptr, ptr %p, align 8
  %zErrMsg38 = getelementptr inbounds nuw %struct.TabResult, ptr %43, i32 0, i32 1
  store ptr %call37, ptr %zErrMsg38, align 8
  %44 = load ptr, ptr %p, align 8
  %rc = getelementptr inbounds nuw %struct.TabResult, ptr %44, i32 0, i32 6
  store i32 1, ptr %rc, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.else32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %for.end
  %45 = load ptr, ptr %argv.addr, align 8
  %cmp41 = icmp ne ptr %45, null
  br i1 %cmp41, label %if.then43, label %if.end78

if.then43:                                        ; preds = %if.end40
  store i32 0, ptr %i, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc73, %if.then43
  %46 = load i32, ptr %i, align 4
  %47 = load i32, ptr %nCol.addr, align 4
  %cmp45 = icmp slt i32 %46, %47
  br i1 %cmp45, label %for.body47, label %for.end75

for.body47:                                       ; preds = %for.cond44
  %48 = load ptr, ptr %argv.addr, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %49 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %48, i64 %idxprom48
  %50 = load ptr, ptr %arrayidx49, align 8
  %cmp50 = icmp eq ptr %50, null
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %for.body47
  store ptr null, ptr %z, align 8
  br label %if.end67

if.else53:                                        ; preds = %for.body47
  %51 = load ptr, ptr %argv.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %52 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %51, i64 %idxprom54
  %53 = load ptr, ptr %arrayidx55, align 8
  %call56 = call i32 @sqlite3Strlen30(ptr noundef %53)
  %add57 = add nsw i32 %call56, 1
  store i32 %add57, ptr %n, align 4
  %54 = load i32, ptr %n, align 4
  %conv58 = sext i32 %54 to i64
  %call59 = call ptr @sqlite3_malloc64(i64 noundef %conv58)
  store ptr %call59, ptr %z, align 8
  %55 = load ptr, ptr %z, align 8
  %cmp60 = icmp eq ptr %55, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.else53
  br label %malloc_failed

if.end63:                                         ; preds = %if.else53
  %56 = load ptr, ptr %z, align 8
  %57 = load ptr, ptr %argv.addr, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %58 to i64
  %arrayidx65 = getelementptr inbounds ptr, ptr %57, i64 %idxprom64
  %59 = load ptr, ptr %arrayidx65, align 8
  %60 = load i32, ptr %n, align 4
  %conv66 = sext i32 %60 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %59, i64 %conv66, i1 false)
  br label %if.end67

if.end67:                                         ; preds = %if.end63, %if.then52
  %61 = load ptr, ptr %z, align 8
  %62 = load ptr, ptr %p, align 8
  %azResult68 = getelementptr inbounds nuw %struct.TabResult, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %azResult68, align 8
  %64 = load ptr, ptr %p, align 8
  %nData69 = getelementptr inbounds nuw %struct.TabResult, ptr %64, i32 0, i32 5
  %65 = load i32, ptr %nData69, align 4
  %inc70 = add i32 %65, 1
  store i32 %inc70, ptr %nData69, align 4
  %idxprom71 = zext i32 %65 to i64
  %arrayidx72 = getelementptr inbounds nuw ptr, ptr %63, i64 %idxprom71
  store ptr %61, ptr %arrayidx72, align 8
  br label %for.inc73

for.inc73:                                        ; preds = %if.end67
  %66 = load i32, ptr %i, align 4
  %inc74 = add nsw i32 %66, 1
  store i32 %inc74, ptr %i, align 4
  br label %for.cond44, !llvm.loop !8

for.end75:                                        ; preds = %for.cond44
  %67 = load ptr, ptr %p, align 8
  %nRow76 = getelementptr inbounds nuw %struct.TabResult, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %nRow76, align 4
  %inc77 = add i32 %68, 1
  store i32 %inc77, ptr %nRow76, align 4
  br label %if.end78

if.end78:                                         ; preds = %for.end75, %if.end40
  store i32 0, ptr %retval, align 4
  br label %return

malloc_failed:                                    ; preds = %if.then62, %if.then25, %if.then12
  %69 = load ptr, ptr %p, align 8
  %rc79 = getelementptr inbounds nuw %struct.TabResult, ptr %69, i32 0, i32 6
  store i32 7, ptr %rc79, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %malloc_failed, %if.end78, %if.then36
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
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
