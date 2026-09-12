; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixShm = type { ptr, ptr, i8, i8, i16, i16 }
%struct.unixShmNode = type { ptr, ptr, ptr, i32, i32, i16, i8, i8, ptr, i32, ptr }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.52 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.63 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_realloc(ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @unixShmMap(ptr noundef %fd, i32 noundef %iRegion, i32 noundef %szRegion, i32 noundef %bExtend, ptr noundef %pp) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  %iRegion.addr = alloca i32, align 4
  %szRegion.addr = alloca i32, align 4
  %bExtend.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %pDbFd = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pShmNode = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nShmPerMap = alloca i32, align 4
  %nReqRegion = alloca i32, align 4
  %apNew = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %sStat = alloca %struct.stat, align 8
  %iPg = alloca i32, align 4
  %x = alloca i32, align 4
  %zFile = alloca ptr, align 8
  %nMap = alloca i32, align 4
  %i = alloca i32, align 4
  %pMem = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store i32 %iRegion, ptr %iRegion.addr, align 4
  store i32 %szRegion, ptr %szRegion.addr, align 4
  store i32 %bExtend, ptr %bExtend.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  store ptr %0, ptr %pDbFd, align 8
  store i32 0, ptr %rc, align 4
  %call = call i32 @unixShmRegionPerMap()
  store i32 %call, ptr %nShmPerMap, align 4
  %1 = load ptr, ptr %pDbFd, align 8
  %pShm = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %pShm, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pDbFd, align 8
  %call1 = call i32 @unixOpenSharedMemory(ptr noundef %3)
  store i32 %call1, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load i32, ptr %rc, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %pDbFd, align 8
  %pShm5 = getelementptr inbounds nuw %struct.unixFile, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %pShm5, align 8
  store ptr %7, ptr %p, align 8
  %8 = load ptr, ptr %p, align 8
  %pShmNode6 = getelementptr inbounds nuw %struct.unixShm, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pShmNode6, align 8
  store ptr %9, ptr %pShmNode, align 8
  %10 = load ptr, ptr %pShmNode, align 8
  %pShmMutex = getelementptr inbounds nuw %struct.unixShmNode, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pShmMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %11)
  %12 = load ptr, ptr %pShmNode, align 8
  %isUnlocked = getelementptr inbounds nuw %struct.unixShmNode, ptr %12, i32 0, i32 7
  %13 = load i8, ptr %isUnlocked, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end4
  %14 = load ptr, ptr %pDbFd, align 8
  %15 = load ptr, ptr %pShmNode, align 8
  %call8 = call i32 @unixLockSharedMemory(ptr noundef %14, ptr noundef %15)
  store i32 %call8, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 %16, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  br label %shmpage_out

if.end11:                                         ; preds = %if.then7
  %17 = load ptr, ptr %pShmNode, align 8
  %isUnlocked12 = getelementptr inbounds nuw %struct.unixShmNode, ptr %17, i32 0, i32 7
  store i8 0, ptr %isUnlocked12, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end4
  %18 = load i32, ptr %iRegion.addr, align 4
  %19 = load i32, ptr %nShmPerMap, align 4
  %add = add nsw i32 %18, %19
  %20 = load i32, ptr %nShmPerMap, align 4
  %div = sdiv i32 %add, %20
  %21 = load i32, ptr %nShmPerMap, align 4
  %mul = mul nsw i32 %div, %21
  store i32 %mul, ptr %nReqRegion, align 4
  %22 = load ptr, ptr %pShmNode, align 8
  %nRegion = getelementptr inbounds nuw %struct.unixShmNode, ptr %22, i32 0, i32 5
  %23 = load i16, ptr %nRegion, align 8
  %conv = zext i16 %23 to i32
  %24 = load i32, ptr %nReqRegion, align 4
  %cmp14 = icmp slt i32 %conv, %24
  br i1 %cmp14, label %if.then16, label %if.end111

if.then16:                                        ; preds = %if.end13
  %25 = load i32, ptr %nReqRegion, align 4
  %26 = load i32, ptr %szRegion.addr, align 4
  %mul17 = mul nsw i32 %25, %26
  store i32 %mul17, ptr %nByte, align 4
  %27 = load i32, ptr %szRegion.addr, align 4
  %28 = load ptr, ptr %pShmNode, align 8
  %szRegion18 = getelementptr inbounds nuw %struct.unixShmNode, ptr %28, i32 0, i32 4
  store i32 %27, ptr %szRegion18, align 4
  %29 = load ptr, ptr %pShmNode, align 8
  %hShm = getelementptr inbounds nuw %struct.unixShmNode, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %hShm, align 8
  %cmp19 = icmp sge i32 %30, 0
  br i1 %cmp19, label %if.then21, label %if.end51

if.then21:                                        ; preds = %if.then16
  %31 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 5), i32 0, i32 1), align 8
  %32 = load ptr, ptr %pShmNode, align 8
  %hShm22 = getelementptr inbounds nuw %struct.unixShmNode, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %hShm22, align 8
  %call23 = call i32 %31(i32 noundef %33, ptr noundef %sStat)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  store i32 4874, ptr %rc, align 4
  br label %shmpage_out

if.end26:                                         ; preds = %if.then21
  %st_size = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 8
  %34 = load i64, ptr %st_size, align 8
  %35 = load i32, ptr %nByte, align 4
  %conv27 = sext i32 %35 to i64
  %cmp28 = icmp slt i64 %34, %conv27
  br i1 %cmp28, label %if.then30, label %if.end50

if.then30:                                        ; preds = %if.end26
  %36 = load i32, ptr %bExtend.addr, align 4
  %tobool31 = icmp ne i32 %36, 0
  br i1 %tobool31, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then30
  br label %shmpage_out

if.else:                                          ; preds = %if.then30
  %st_size33 = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 8
  %37 = load i64, ptr %st_size33, align 8
  %div34 = sdiv i64 %37, 4096
  %conv35 = trunc i64 %div34 to i32
  store i32 %conv35, ptr %iPg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %38 = load i32, ptr %iPg, align 4
  %39 = load i32, ptr %nByte, align 4
  %div36 = sdiv i32 %39, 4096
  %cmp37 = icmp slt i32 %38, %div36
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4
  %40 = load ptr, ptr %pShmNode, align 8
  %hShm39 = getelementptr inbounds nuw %struct.unixShmNode, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %hShm39, align 8
  %42 = load i32, ptr %iPg, align 4
  %mul40 = mul nsw i32 %42, 4096
  %add41 = add nsw i32 %mul40, 4096
  %sub = sub nsw i32 %add41, 1
  %conv42 = sext i32 %sub to i64
  %call43 = call i32 @seekAndWriteFd(i32 noundef %41, i64 noundef %conv42, ptr noundef @.str.3, i32 noundef 1, ptr noundef %x)
  %cmp44 = icmp ne i32 %call43, 1
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %for.body
  %43 = load ptr, ptr %pShmNode, align 8
  %zFilename = getelementptr inbounds nuw %struct.unixShmNode, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %zFilename, align 8
  store ptr %44, ptr %zFile, align 8
  %45 = load ptr, ptr %zFile, align 8
  %call47 = call i32 @unixLogErrorAtLine(i32 noundef 4874, ptr noundef @.str.52, ptr noundef %45, i32 noundef 37416)
  store i32 %call47, ptr %rc, align 4
  br label %shmpage_out

if.end48:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %46 = load i32, ptr %iPg, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %iPg, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end49

if.end49:                                         ; preds = %for.end
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end26
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then16
  %47 = load ptr, ptr %pShmNode, align 8
  %apRegion = getelementptr inbounds nuw %struct.unixShmNode, ptr %47, i32 0, i32 8
  %48 = load ptr, ptr %apRegion, align 8
  %49 = load i32, ptr %nReqRegion, align 4
  %conv52 = sext i32 %49 to i64
  %mul53 = mul i64 %conv52, 8
  %conv54 = trunc i64 %mul53 to i32
  %call55 = call ptr @sqlite3_realloc(ptr noundef %48, i32 noundef %conv54)
  store ptr %call55, ptr %apNew, align 8
  %50 = load ptr, ptr %apNew, align 8
  %tobool56 = icmp ne ptr %50, null
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end51
  store i32 3082, ptr %rc, align 4
  br label %shmpage_out

if.end58:                                         ; preds = %if.end51
  %51 = load ptr, ptr %apNew, align 8
  %52 = load ptr, ptr %pShmNode, align 8
  %apRegion59 = getelementptr inbounds nuw %struct.unixShmNode, ptr %52, i32 0, i32 8
  store ptr %51, ptr %apRegion59, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end106, %if.end58
  %53 = load ptr, ptr %pShmNode, align 8
  %nRegion60 = getelementptr inbounds nuw %struct.unixShmNode, ptr %53, i32 0, i32 5
  %54 = load i16, ptr %nRegion60, align 8
  %conv61 = zext i16 %54 to i32
  %55 = load i32, ptr %nReqRegion, align 4
  %cmp62 = icmp slt i32 %conv61, %55
  br i1 %cmp62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = load i32, ptr %szRegion.addr, align 4
  %57 = load i32, ptr %nShmPerMap, align 4
  %mul64 = mul nsw i32 %56, %57
  store i32 %mul64, ptr %nMap, align 4
  %58 = load ptr, ptr %pShmNode, align 8
  %hShm65 = getelementptr inbounds nuw %struct.unixShmNode, ptr %58, i32 0, i32 3
  %59 = load i32, ptr %hShm65, align 8
  %cmp66 = icmp sge i32 %59, 0
  br i1 %cmp66, label %if.then68, label %if.else84

if.then68:                                        ; preds = %while.body
  %60 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 22), i32 0, i32 1), align 8
  %61 = load i32, ptr %nMap, align 4
  %conv69 = sext i32 %61 to i64
  %62 = load ptr, ptr %pShmNode, align 8
  %isReadonly = getelementptr inbounds nuw %struct.unixShmNode, ptr %62, i32 0, i32 6
  %63 = load i8, ptr %isReadonly, align 2
  %conv70 = zext i8 %63 to i32
  %tobool71 = icmp ne i32 %conv70, 0
  %64 = zext i1 %tobool71 to i64
  %cond = select i1 %tobool71, i32 1, i32 3
  %65 = load ptr, ptr %pShmNode, align 8
  %hShm72 = getelementptr inbounds nuw %struct.unixShmNode, ptr %65, i32 0, i32 3
  %66 = load i32, ptr %hShm72, align 8
  %67 = load i32, ptr %szRegion.addr, align 4
  %conv73 = sext i32 %67 to i64
  %68 = load ptr, ptr %pShmNode, align 8
  %nRegion74 = getelementptr inbounds nuw %struct.unixShmNode, ptr %68, i32 0, i32 5
  %69 = load i16, ptr %nRegion74, align 8
  %conv75 = zext i16 %69 to i64
  %mul76 = mul nsw i64 %conv73, %conv75
  %call77 = call ptr %60(ptr noundef null, i64 noundef %conv69, i32 noundef %cond, i32 noundef 1, i32 noundef %66, i64 noundef %mul76)
  store ptr %call77, ptr %pMem, align 8
  %70 = load ptr, ptr %pMem, align 8
  %cmp78 = icmp eq ptr %70, inttoptr (i64 -1 to ptr)
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.then68
  %71 = load ptr, ptr %pShmNode, align 8
  %zFilename81 = getelementptr inbounds nuw %struct.unixShmNode, ptr %71, i32 0, i32 2
  %72 = load ptr, ptr %zFilename81, align 8
  %call82 = call i32 @unixLogErrorAtLine(i32 noundef 5386, ptr noundef @.str.63, ptr noundef %72, i32 noundef 37443)
  store i32 %call82, ptr %rc, align 4
  br label %shmpage_out

if.end83:                                         ; preds = %if.then68
  br label %if.end92

if.else84:                                        ; preds = %while.body
  %73 = load i32, ptr %nMap, align 4
  %conv85 = sext i32 %73 to i64
  %call86 = call ptr @sqlite3_malloc64(i64 noundef %conv85)
  store ptr %call86, ptr %pMem, align 8
  %74 = load ptr, ptr %pMem, align 8
  %cmp87 = icmp eq ptr %74, null
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.else84
  store i32 7, ptr %rc, align 4
  br label %shmpage_out

if.end90:                                         ; preds = %if.else84
  %75 = load ptr, ptr %pMem, align 8
  %76 = load i32, ptr %nMap, align 4
  %conv91 = sext i32 %76 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %75, i8 0, i64 %conv91, i1 false)
  br label %if.end92

if.end92:                                         ; preds = %if.end90, %if.end83
  store i32 0, ptr %i, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc104, %if.end92
  %77 = load i32, ptr %i, align 4
  %78 = load i32, ptr %nShmPerMap, align 4
  %cmp94 = icmp slt i32 %77, %78
  br i1 %cmp94, label %for.body96, label %for.end106

for.body96:                                       ; preds = %for.cond93
  %79 = load ptr, ptr %pMem, align 8
  %80 = load i32, ptr %szRegion.addr, align 4
  %81 = load i32, ptr %i, align 4
  %mul97 = mul nsw i32 %80, %81
  %idxprom = sext i32 %mul97 to i64
  %arrayidx = getelementptr inbounds i8, ptr %79, i64 %idxprom
  %82 = load ptr, ptr %pShmNode, align 8
  %apRegion98 = getelementptr inbounds nuw %struct.unixShmNode, ptr %82, i32 0, i32 8
  %83 = load ptr, ptr %apRegion98, align 8
  %84 = load ptr, ptr %pShmNode, align 8
  %nRegion99 = getelementptr inbounds nuw %struct.unixShmNode, ptr %84, i32 0, i32 5
  %85 = load i16, ptr %nRegion99, align 8
  %conv100 = zext i16 %85 to i32
  %86 = load i32, ptr %i, align 4
  %add101 = add nsw i32 %conv100, %86
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds ptr, ptr %83, i64 %idxprom102
  store ptr %arrayidx, ptr %arrayidx103, align 8
  br label %for.inc104

for.inc104:                                       ; preds = %for.body96
  %87 = load i32, ptr %i, align 4
  %inc105 = add nsw i32 %87, 1
  store i32 %inc105, ptr %i, align 4
  br label %for.cond93, !llvm.loop !8

for.end106:                                       ; preds = %for.cond93
  %88 = load i32, ptr %nShmPerMap, align 4
  %89 = load ptr, ptr %pShmNode, align 8
  %nRegion107 = getelementptr inbounds nuw %struct.unixShmNode, ptr %89, i32 0, i32 5
  %90 = load i16, ptr %nRegion107, align 8
  %conv108 = zext i16 %90 to i32
  %add109 = add nsw i32 %conv108, %88
  %conv110 = trunc i32 %add109 to i16
  store i16 %conv110, ptr %nRegion107, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %if.end111

if.end111:                                        ; preds = %while.end, %if.end13
  br label %shmpage_out

shmpage_out:                                      ; preds = %if.end111, %if.then89, %if.then80, %if.then57, %if.then46, %if.then32, %if.then25, %if.then10
  %91 = load ptr, ptr %pShmNode, align 8
  %nRegion112 = getelementptr inbounds nuw %struct.unixShmNode, ptr %91, i32 0, i32 5
  %92 = load i16, ptr %nRegion112, align 8
  %conv113 = zext i16 %92 to i32
  %93 = load i32, ptr %iRegion.addr, align 4
  %cmp114 = icmp sgt i32 %conv113, %93
  br i1 %cmp114, label %if.then116, label %if.else120

if.then116:                                       ; preds = %shmpage_out
  %94 = load ptr, ptr %pShmNode, align 8
  %apRegion117 = getelementptr inbounds nuw %struct.unixShmNode, ptr %94, i32 0, i32 8
  %95 = load ptr, ptr %apRegion117, align 8
  %96 = load i32, ptr %iRegion.addr, align 4
  %idxprom118 = sext i32 %96 to i64
  %arrayidx119 = getelementptr inbounds ptr, ptr %95, i64 %idxprom118
  %97 = load ptr, ptr %arrayidx119, align 8
  %98 = load ptr, ptr %pp.addr, align 8
  store ptr %97, ptr %98, align 8
  br label %if.end121

if.else120:                                       ; preds = %shmpage_out
  %99 = load ptr, ptr %pp.addr, align 8
  store ptr null, ptr %99, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %if.then116
  %100 = load ptr, ptr %pShmNode, align 8
  %isReadonly122 = getelementptr inbounds nuw %struct.unixShmNode, ptr %100, i32 0, i32 6
  %101 = load i8, ptr %isReadonly122, align 2
  %conv123 = zext i8 %101 to i32
  %tobool124 = icmp ne i32 %conv123, 0
  br i1 %tobool124, label %land.lhs.true, label %if.end128

land.lhs.true:                                    ; preds = %if.end121
  %102 = load i32, ptr %rc, align 4
  %cmp125 = icmp eq i32 %102, 0
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %land.lhs.true
  store i32 8, ptr %rc, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %land.lhs.true, %if.end121
  %103 = load ptr, ptr %pShmNode, align 8
  %pShmMutex129 = getelementptr inbounds nuw %struct.unixShmNode, ptr %103, i32 0, i32 1
  %104 = load ptr, ptr %pShmMutex129, align 8
  call void @sqlite3_mutex_leave(ptr noundef %104)
  %105 = load i32, ptr %rc, align 4
  store i32 %105, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end128, %if.then3
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @seekAndWriteFd(i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixShmRegionPerMap() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixOpenSharedMemory(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLockSharedMemory(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
