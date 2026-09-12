; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@.str.727 = external hidden unnamed_addr constant [36 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3SrcListEnlarge(ptr noundef %pParse, ptr noundef %pSrc, i32 noundef %nExtra, i32 noundef %iStart) #2 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %nExtra.addr = alloca i32, align 4
  %iStart.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %nAlloc1 = alloca i64, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i32 %nExtra, ptr %nExtra.addr, align 4
  store i32 %iStart, ptr %iStart.addr, align 4
  %0 = load ptr, ptr %pSrc.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nSrc, align 8
  %2 = load i32, ptr %nExtra.addr, align 4
  %add = add i32 %1, %2
  %3 = load ptr, ptr %pSrc.addr, align 8
  %nAlloc = getelementptr inbounds nuw %struct.SrcList, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nAlloc, align 4
  %cmp = icmp ugt i32 %add, %4
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pSrc.addr, align 8
  %nSrc2 = getelementptr inbounds nuw %struct.SrcList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nSrc2, align 8
  %conv = sext i32 %6 to i64
  %mul = mul nsw i64 2, %conv
  %7 = load i32, ptr %nExtra.addr, align 4
  %conv3 = sext i32 %7 to i64
  %add4 = add nsw i64 %mul, %conv3
  store i64 %add4, ptr %nAlloc1, align 8
  %8 = load ptr, ptr %pParse.addr, align 8
  %db5 = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db5, align 8
  store ptr %9, ptr %db, align 8
  %10 = load ptr, ptr %pSrc.addr, align 8
  %nSrc6 = getelementptr inbounds nuw %struct.SrcList, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %nSrc6, align 8
  %12 = load i32, ptr %nExtra.addr, align 4
  %add7 = add nsw i32 %11, %12
  %cmp8 = icmp sge i32 %add7, 200
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %13 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %13, ptr noundef @.str.727, i32 noundef 200)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load i64, ptr %nAlloc1, align 8
  %cmp11 = icmp sgt i64 %14, 200
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  store i64 200, ptr %nAlloc1, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  %15 = load ptr, ptr %db, align 8
  %16 = load ptr, ptr %pSrc.addr, align 8
  %17 = load i64, ptr %nAlloc1, align 8
  %sub = sub nsw i64 %17, 1
  %mul15 = mul i64 %sub, 112
  %add16 = add i64 120, %mul15
  %call = call ptr @sqlite3DbRealloc(ptr noundef %15, ptr noundef %16, i64 noundef %add16)
  store ptr %call, ptr %pNew, align 8
  %18 = load ptr, ptr %pNew, align 8
  %cmp17 = icmp eq ptr %18, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  store ptr null, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.end14
  %19 = load ptr, ptr %pNew, align 8
  store ptr %19, ptr %pSrc.addr, align 8
  %20 = load i64, ptr %nAlloc1, align 8
  %conv21 = trunc i64 %20 to i32
  %21 = load ptr, ptr %pSrc.addr, align 8
  %nAlloc22 = getelementptr inbounds nuw %struct.SrcList, ptr %21, i32 0, i32 1
  store i32 %conv21, ptr %nAlloc22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %entry
  %22 = load ptr, ptr %pSrc.addr, align 8
  %nSrc24 = getelementptr inbounds nuw %struct.SrcList, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %nSrc24, align 8
  %sub25 = sub nsw i32 %23, 1
  store i32 %sub25, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %iStart.addr, align 4
  %cmp26 = icmp sge i32 %24, %25
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %pSrc.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %i, align 4
  %28 = load i32, ptr %nExtra.addr, align 4
  %add28 = add nsw i32 %27, %28
  %idxprom = sext i32 %add28 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %29 = load ptr, ptr %pSrc.addr, align 8
  %a29 = getelementptr inbounds nuw %struct.SrcList, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %arrayidx31 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a29, i64 0, i64 %idxprom30
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %arrayidx31, i64 112, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, ptr %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %32 = load i32, ptr %nExtra.addr, align 4
  %33 = load ptr, ptr %pSrc.addr, align 8
  %nSrc32 = getelementptr inbounds nuw %struct.SrcList, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %nSrc32, align 8
  %add33 = add nsw i32 %34, %32
  store i32 %add33, ptr %nSrc32, align 8
  %35 = load ptr, ptr %pSrc.addr, align 8
  %a34 = getelementptr inbounds nuw %struct.SrcList, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %iStart.addr, align 4
  %idxprom35 = sext i32 %36 to i64
  %arrayidx36 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a34, i64 0, i64 %idxprom35
  %37 = load i32, ptr %nExtra.addr, align 4
  %conv37 = sext i32 %37 to i64
  %mul38 = mul i64 112, %conv37
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx36, i8 0, i64 %mul38, i1 false)
  %38 = load i32, ptr %iStart.addr, align 4
  store i32 %38, ptr %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %for.end
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %iStart.addr, align 4
  %41 = load i32, ptr %nExtra.addr, align 4
  %add40 = add nsw i32 %40, %41
  %cmp41 = icmp slt i32 %39, %add40
  br i1 %cmp41, label %for.body43, label %for.end48

for.body43:                                       ; preds = %for.cond39
  %42 = load ptr, ptr %pSrc.addr, align 8
  %a44 = getelementptr inbounds nuw %struct.SrcList, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %43 to i64
  %arrayidx46 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a44, i64 0, i64 %idxprom45
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx46, i32 0, i32 10
  store i32 -1, ptr %iCursor, align 8
  br label %for.inc47

for.inc47:                                        ; preds = %for.body43
  %44 = load i32, ptr %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond39, !llvm.loop !8

for.end48:                                        ; preds = %for.cond39
  %45 = load ptr, ptr %pSrc.addr, align 8
  store ptr %45, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end48, %if.then19, %if.then10
  %46 = load ptr, ptr %retval, align 8
  ret ptr %46
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
