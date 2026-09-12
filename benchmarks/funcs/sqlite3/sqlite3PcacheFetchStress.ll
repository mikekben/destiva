; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcachePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PcacheFetchStress(ptr noundef %pCache, i32 noundef %pgno, ptr noundef %ppPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pCache.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %ppPage.addr = alloca ptr, align 8
  %pPg = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCache, ptr %pCache.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %ppPage, ptr %ppPage.addr, align 8
  %0 = load ptr, ptr %pCache.addr, align 8
  %eCreate = getelementptr inbounds nuw %struct.PCache, ptr %0, i32 0, i32 9
  %1 = load i8, ptr %eCreate, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCache.addr, align 8
  %call = call i32 @sqlite3PcachePagecount(ptr noundef %2)
  %3 = load ptr, ptr %pCache.addr, align 8
  %szSpill = getelementptr inbounds nuw %struct.PCache, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %szSpill, align 8
  %cmp2 = icmp sgt i32 %call, %4
  br i1 %cmp2, label %if.then4, label %if.end34

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCache.addr, align 8
  %pSynced = getelementptr inbounds nuw %struct.PCache, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pSynced, align 8
  store ptr %6, ptr %pPg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %7 = load ptr, ptr %pPg, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pPg, align 8
  %nRef = getelementptr inbounds nuw %struct.PgHdr, ptr %8, i32 0, i32 8
  %9 = load i16, ptr %nRef, align 2
  %conv5 = sext i16 %9 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load ptr, ptr %pPg, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %10, i32 0, i32 7
  %11 = load i16, ptr %flags, align 4
  %conv7 = zext i16 %11 to i32
  %and = and i32 %conv7, 8
  %tobool8 = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ %tobool8, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %12, %lor.end ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr %pPg, align 8
  %pDirtyPrev = getelementptr inbounds nuw %struct.PgHdr, ptr %14, i32 0, i32 10
  %15 = load ptr, ptr %pDirtyPrev, align 8
  store ptr %15, ptr %pPg, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %16 = load ptr, ptr %pPg, align 8
  %17 = load ptr, ptr %pCache.addr, align 8
  %pSynced9 = getelementptr inbounds nuw %struct.PCache, ptr %17, i32 0, i32 2
  store ptr %16, ptr %pSynced9, align 8
  %18 = load ptr, ptr %pPg, align 8
  %tobool10 = icmp ne ptr %18, null
  br i1 %tobool10, label %if.end23, label %if.then11

if.then11:                                        ; preds = %for.end
  %19 = load ptr, ptr %pCache.addr, align 8
  %pDirtyTail = getelementptr inbounds nuw %struct.PCache, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pDirtyTail, align 8
  store ptr %20, ptr %pPg, align 8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc20, %if.then11
  %21 = load ptr, ptr %pPg, align 8
  %tobool13 = icmp ne ptr %21, null
  br i1 %tobool13, label %land.rhs14, label %land.end18

land.rhs14:                                       ; preds = %for.cond12
  %22 = load ptr, ptr %pPg, align 8
  %nRef15 = getelementptr inbounds nuw %struct.PgHdr, ptr %22, i32 0, i32 8
  %23 = load i16, ptr %nRef15, align 2
  %conv16 = sext i16 %23 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br label %land.end18

land.end18:                                       ; preds = %land.rhs14, %for.cond12
  %24 = phi i1 [ false, %for.cond12 ], [ %tobool17, %land.rhs14 ]
  br i1 %24, label %for.body19, label %for.end22

for.body19:                                       ; preds = %land.end18
  br label %for.inc20

for.inc20:                                        ; preds = %for.body19
  %25 = load ptr, ptr %pPg, align 8
  %pDirtyPrev21 = getelementptr inbounds nuw %struct.PgHdr, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %pDirtyPrev21, align 8
  store ptr %26, ptr %pPg, align 8
  br label %for.cond12, !llvm.loop !8

for.end22:                                        ; preds = %land.end18
  br label %if.end23

if.end23:                                         ; preds = %for.end22, %for.end
  %27 = load ptr, ptr %pPg, align 8
  %tobool24 = icmp ne ptr %27, null
  br i1 %tobool24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end23
  %28 = load ptr, ptr %pCache.addr, align 8
  %xStress = getelementptr inbounds nuw %struct.PCache, ptr %28, i32 0, i32 10
  %29 = load ptr, ptr %xStress, align 8
  %30 = load ptr, ptr %pCache.addr, align 8
  %pStress = getelementptr inbounds nuw %struct.PCache, ptr %30, i32 0, i32 11
  %31 = load ptr, ptr %pStress, align 8
  %32 = load ptr, ptr %pPg, align 8
  %call26 = call i32 %29(ptr noundef %31, ptr noundef %32)
  store i32 %call26, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp27 = icmp ne i32 %33, 0
  br i1 %cmp27, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.then25
  %34 = load i32, ptr %rc, align 4
  %cmp29 = icmp ne i32 %34, 5
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true
  %35 = load i32, ptr %rc, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true, %if.then25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end23
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end
  %36 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_pcache_methods2, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), i32 0, i32 7), align 8
  %37 = load ptr, ptr %pCache.addr, align 8
  %pCache35 = getelementptr inbounds nuw %struct.PCache, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %pCache35, align 8
  %39 = load i32, ptr %pgno.addr, align 4
  %call36 = call ptr %36(ptr noundef %38, i32 noundef %39, i32 noundef 2)
  %40 = load ptr, ptr %ppPage.addr, align 8
  store ptr %call36, ptr %40, align 8
  %41 = load ptr, ptr %ppPage.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %cmp37 = icmp eq ptr %42, null
  %43 = zext i1 %cmp37 to i64
  %cond = select i1 %cmp37, i32 7, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then31, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
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
