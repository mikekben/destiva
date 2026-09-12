; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.UnixUnusedFd = type { i32, i32, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.41 = external hidden unnamed_addr constant [5 x i8], align 1
@randomnessPid = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixOpen(ptr noundef %pVfs, ptr noundef %zPath, ptr noundef %pFile, i32 noundef %flags, ptr noundef %pOutFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pVfs.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %pFile.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pOutFlags.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %fd = alloca i32, align 4
  %openFlags = alloca i32, align 4
  %eType = alloca i32, align 4
  %noLock = alloca i32, align 4
  %rc = alloca i32, align 4
  %ctrlFlags = alloca i32, align 4
  %isExclusive = alloca i32, align 4
  %isDelete = alloca i32, align 4
  %isCreate = alloca i32, align 4
  %isReadonly = alloca i32, align 4
  %isReadWrite = alloca i32, align 4
  %isNewJrnl = alloca i32, align 4
  %zTmpname = alloca [514 x i8], align 16
  %zName = alloca ptr, align 8
  %pUnused = alloca ptr, align 8
  %openMode = alloca i32, align 4
  %uid = alloca i32, align 4
  %gid = alloca i32, align 4
  %rc2 = alloca i32, align 4
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %pOutFlags, ptr %pOutFlags.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  store ptr %0, ptr %p, align 8
  store i32 -1, ptr %fd, align 4
  store i32 0, ptr %openFlags, align 4
  %1 = load i32, ptr %flags.addr, align 4
  %and = and i32 %1, -256
  store i32 %and, ptr %eType, align 4
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %ctrlFlags, align 4
  %2 = load i32, ptr %flags.addr, align 4
  %and1 = and i32 %2, 16
  store i32 %and1, ptr %isExclusive, align 4
  %3 = load i32, ptr %flags.addr, align 4
  %and2 = and i32 %3, 8
  store i32 %and2, ptr %isDelete, align 4
  %4 = load i32, ptr %flags.addr, align 4
  %and3 = and i32 %4, 4
  store i32 %and3, ptr %isCreate, align 4
  %5 = load i32, ptr %flags.addr, align 4
  %and4 = and i32 %5, 1
  store i32 %and4, ptr %isReadonly, align 4
  %6 = load i32, ptr %flags.addr, align 4
  %and5 = and i32 %6, 2
  store i32 %and5, ptr %isReadWrite, align 4
  %7 = load i32, ptr %isCreate, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %8 = load i32, ptr %eType, align 4
  %cmp = icmp eq i32 %8, 16384
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %9 = load i32, ptr %eType, align 4
  %cmp6 = icmp eq i32 %9, 2048
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %10 = load i32, ptr %eType, align 4
  %cmp7 = icmp eq i32 %10, 524288
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %11 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp7, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %12 = phi i1 [ false, %entry ], [ %11, %lor.end ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, ptr %isNewJrnl, align 4
  %13 = load ptr, ptr %zPath.addr, align 8
  store ptr %13, ptr %zName, align 8
  %14 = load i32, ptr @randomnessPid, align 4
  %call = call i32 @getpid() #4
  %cmp8 = icmp ne i32 %14, %call
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call9 = call i32 @getpid() #4
  store i32 %call9, ptr @randomnessPid, align 4
  call void @sqlite3_randomness(i32 noundef 0, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %15 = load ptr, ptr %p, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 120, i1 false)
  %16 = load i32, ptr %eType, align 4
  %cmp10 = icmp eq i32 %16, 256
  br i1 %cmp10, label %if.then11, label %if.else21

if.then11:                                        ; preds = %if.end
  %17 = load ptr, ptr %zName, align 8
  %18 = load i32, ptr %flags.addr, align 4
  %call12 = call ptr @findReusableFd(ptr noundef %17, i32 noundef %18)
  store ptr %call12, ptr %pUnused, align 8
  %19 = load ptr, ptr %pUnused, align 8
  %tobool13 = icmp ne ptr %19, null
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then11
  %20 = load ptr, ptr %pUnused, align 8
  %fd15 = getelementptr inbounds nuw %struct.UnixUnusedFd, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %fd15, align 8
  store i32 %21, ptr %fd, align 4
  br label %if.end20

if.else:                                          ; preds = %if.then11
  %call16 = call ptr @sqlite3_malloc64(i64 noundef 16)
  store ptr %call16, ptr %pUnused, align 8
  %22 = load ptr, ptr %pUnused, align 8
  %tobool17 = icmp ne ptr %22, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.else
  store i32 7, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then14
  %23 = load ptr, ptr %pUnused, align 8
  %24 = load ptr, ptr %p, align 8
  %pPreallocatedUnused = getelementptr inbounds nuw %struct.unixFile, ptr %24, i32 0, i32 8
  store ptr %23, ptr %pPreallocatedUnused, align 8
  br label %if.end30

if.else21:                                        ; preds = %if.end
  %25 = load ptr, ptr %zName, align 8
  %tobool22 = icmp ne ptr %25, null
  br i1 %tobool22, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.else21
  %26 = load ptr, ptr %pVfs.addr, align 8
  %mxPathname = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %mxPathname, align 8
  %arraydecay = getelementptr inbounds [514 x i8], ptr %zTmpname, i64 0, i64 0
  %call24 = call i32 @unixGetTempname(i32 noundef %27, ptr noundef %arraydecay)
  store i32 %call24, ptr %rc, align 4
  %28 = load i32, ptr %rc, align 4
  %cmp25 = icmp ne i32 %28, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then23
  %29 = load i32, ptr %rc, align 4
  store i32 %29, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.then23
  %arraydecay28 = getelementptr inbounds [514 x i8], ptr %zTmpname, i64 0, i64 0
  store ptr %arraydecay28, ptr %zName, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.else21
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end20
  %30 = load i32, ptr %isReadonly, align 4
  %tobool31 = icmp ne i32 %30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  %31 = load i32, ptr %openFlags, align 4
  %or = or i32 %31, 0
  store i32 %or, ptr %openFlags, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30
  %32 = load i32, ptr %isReadWrite, align 4
  %tobool34 = icmp ne i32 %32, 0
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %33 = load i32, ptr %openFlags, align 4
  %or36 = or i32 %33, 2
  store i32 %or36, ptr %openFlags, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  %34 = load i32, ptr %isCreate, align 4
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end37
  %35 = load i32, ptr %openFlags, align 4
  %or40 = or i32 %35, 64
  store i32 %or40, ptr %openFlags, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  %36 = load i32, ptr %isExclusive, align 4
  %tobool42 = icmp ne i32 %36, 0
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %37 = load i32, ptr %openFlags, align 4
  %or44 = or i32 %37, 131200
  store i32 %or44, ptr %openFlags, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  %38 = load i32, ptr %openFlags, align 4
  %or46 = or i32 %38, 0
  store i32 %or46, ptr %openFlags, align 4
  %39 = load i32, ptr %fd, align 4
  %cmp47 = icmp slt i32 %39, 0
  br i1 %cmp47, label %if.then48, label %if.end92

if.then48:                                        ; preds = %if.end45
  %40 = load ptr, ptr %zName, align 8
  %41 = load i32, ptr %flags.addr, align 4
  %call49 = call i32 @findCreateFileMode(ptr noundef %40, i32 noundef %41, ptr noundef %openMode, ptr noundef %uid, ptr noundef %gid)
  store i32 %call49, ptr %rc, align 4
  %42 = load i32, ptr %rc, align 4
  %cmp50 = icmp ne i32 %42, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then48
  %43 = load i32, ptr %rc, align 4
  store i32 %43, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.then48
  %44 = load ptr, ptr %zName, align 8
  %45 = load i32, ptr %openFlags, align 4
  %46 = load i32, ptr %openMode, align 4
  %call53 = call i32 @robust_open(ptr noundef %44, i32 noundef %45, i32 noundef %46)
  store i32 %call53, ptr %fd, align 4
  %47 = load i32, ptr %fd, align 4
  %cmp54 = icmp slt i32 %47, 0
  br i1 %cmp54, label %if.then55, label %if.end76

if.then55:                                        ; preds = %if.end52
  %48 = load i32, ptr %isNewJrnl, align 4
  %tobool56 = icmp ne i32 %48, 0
  br i1 %tobool56, label %land.lhs.true, label %if.else63

land.lhs.true:                                    ; preds = %if.then55
  %call57 = call ptr @__errno_location() #5
  %49 = load i32, ptr %call57, align 4
  %cmp58 = icmp eq i32 %49, 13
  br i1 %cmp58, label %land.lhs.true59, label %if.else63

land.lhs.true59:                                  ; preds = %land.lhs.true
  %50 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 2), i32 0, i32 1), align 8
  %51 = load ptr, ptr %zName, align 8
  %call60 = call i32 %50(ptr noundef %51, i32 noundef 0)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %land.lhs.true59
  store i32 1544, ptr %rc, align 4
  br label %if.end75

if.else63:                                        ; preds = %land.lhs.true59, %land.lhs.true, %if.then55
  %call64 = call ptr @__errno_location() #5
  %52 = load i32, ptr %call64, align 4
  %cmp65 = icmp ne i32 %52, 21
  br i1 %cmp65, label %land.lhs.true66, label %if.end74

land.lhs.true66:                                  ; preds = %if.else63
  %53 = load i32, ptr %isReadWrite, align 4
  %tobool67 = icmp ne i32 %53, 0
  br i1 %tobool67, label %if.then68, label %if.end74

if.then68:                                        ; preds = %land.lhs.true66
  %54 = load i32, ptr %flags.addr, align 4
  %and69 = and i32 %54, -7
  store i32 %and69, ptr %flags.addr, align 4
  %55 = load i32, ptr %openFlags, align 4
  %and70 = and i32 %55, -67
  store i32 %and70, ptr %openFlags, align 4
  %56 = load i32, ptr %flags.addr, align 4
  %or71 = or i32 %56, 1
  store i32 %or71, ptr %flags.addr, align 4
  %57 = load i32, ptr %openFlags, align 4
  %or72 = or i32 %57, 0
  store i32 %or72, ptr %openFlags, align 4
  store i32 1, ptr %isReadonly, align 4
  %58 = load ptr, ptr %zName, align 8
  %59 = load i32, ptr %openFlags, align 4
  %60 = load i32, ptr %openMode, align 4
  %call73 = call i32 @robust_open(ptr noundef %58, i32 noundef %59, i32 noundef %60)
  store i32 %call73, ptr %fd, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %land.lhs.true66, %if.else63
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then62
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end52
  %61 = load i32, ptr %fd, align 4
  %cmp77 = icmp slt i32 %61, 0
  br i1 %cmp77, label %if.then78, label %if.end84

if.then78:                                        ; preds = %if.end76
  %call79 = call i32 @sqlite3CantopenError(i32 noundef 38761)
  %62 = load ptr, ptr %zName, align 8
  %call80 = call i32 @unixLogErrorAtLine(i32 noundef %call79, ptr noundef @.str.41, ptr noundef %62, i32 noundef 38761)
  store i32 %call80, ptr %rc2, align 4
  %63 = load i32, ptr %rc, align 4
  %cmp81 = icmp eq i32 %63, 0
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then78
  %64 = load i32, ptr %rc2, align 4
  store i32 %64, ptr %rc, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then78
  br label %open_finished

if.end84:                                         ; preds = %if.end76
  %65 = load i32, ptr %openMode, align 4
  %tobool85 = icmp ne i32 %65, 0
  br i1 %tobool85, label %land.lhs.true86, label %if.end91

land.lhs.true86:                                  ; preds = %if.end84
  %66 = load i32, ptr %flags.addr, align 4
  %and87 = and i32 %66, 526336
  %cmp88 = icmp ne i32 %and87, 0
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %land.lhs.true86
  %67 = load i32, ptr %fd, align 4
  %68 = load i32, ptr %uid, align 4
  %69 = load i32, ptr %gid, align 4
  %call90 = call i32 @robustFchown(i32 noundef %67, i32 noundef %68, i32 noundef %69)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %land.lhs.true86, %if.end84
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end45
  %70 = load ptr, ptr %pOutFlags.addr, align 8
  %tobool93 = icmp ne ptr %70, null
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end92
  %71 = load i32, ptr %flags.addr, align 4
  %72 = load ptr, ptr %pOutFlags.addr, align 8
  store i32 %71, ptr %72, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end92
  %73 = load ptr, ptr %p, align 8
  %pPreallocatedUnused96 = getelementptr inbounds nuw %struct.unixFile, ptr %73, i32 0, i32 8
  %74 = load ptr, ptr %pPreallocatedUnused96, align 8
  %tobool97 = icmp ne ptr %74, null
  br i1 %tobool97, label %if.then98, label %if.end104

if.then98:                                        ; preds = %if.end95
  %75 = load i32, ptr %fd, align 4
  %76 = load ptr, ptr %p, align 8
  %pPreallocatedUnused99 = getelementptr inbounds nuw %struct.unixFile, ptr %76, i32 0, i32 8
  %77 = load ptr, ptr %pPreallocatedUnused99, align 8
  %fd100 = getelementptr inbounds nuw %struct.UnixUnusedFd, ptr %77, i32 0, i32 0
  store i32 %75, ptr %fd100, align 8
  %78 = load i32, ptr %flags.addr, align 4
  %and101 = and i32 %78, 3
  %79 = load ptr, ptr %p, align 8
  %pPreallocatedUnused102 = getelementptr inbounds nuw %struct.unixFile, ptr %79, i32 0, i32 8
  %80 = load ptr, ptr %pPreallocatedUnused102, align 8
  %flags103 = getelementptr inbounds nuw %struct.UnixUnusedFd, ptr %80, i32 0, i32 1
  store i32 %and101, ptr %flags103, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then98, %if.end95
  %81 = load i32, ptr %isDelete, align 4
  %tobool105 = icmp ne i32 %81, 0
  br i1 %tobool105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end104
  %82 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 16), i32 0, i32 1), align 8
  %83 = load ptr, ptr %zName, align 8
  %call107 = call i32 %82(ptr noundef %83)
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end104
  %84 = load i32, ptr %isDelete, align 4
  %tobool109 = icmp ne i32 %84, 0
  br i1 %tobool109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end108
  %85 = load i32, ptr %ctrlFlags, align 4
  %or111 = or i32 %85, 32
  store i32 %or111, ptr %ctrlFlags, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end108
  %86 = load i32, ptr %isReadonly, align 4
  %tobool113 = icmp ne i32 %86, 0
  br i1 %tobool113, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.end112
  %87 = load i32, ptr %ctrlFlags, align 4
  %or115 = or i32 %87, 2
  store i32 %or115, ptr %ctrlFlags, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end112
  %88 = load i32, ptr %eType, align 4
  %cmp117 = icmp ne i32 %88, 256
  %conv = zext i1 %cmp117 to i32
  store i32 %conv, ptr %noLock, align 4
  %89 = load i32, ptr %noLock, align 4
  %tobool118 = icmp ne i32 %89, 0
  br i1 %tobool118, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end116
  %90 = load i32, ptr %ctrlFlags, align 4
  %or120 = or i32 %90, 128
  store i32 %or120, ptr %ctrlFlags, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end116
  %91 = load i32, ptr %isNewJrnl, align 4
  %tobool122 = icmp ne i32 %91, 0
  br i1 %tobool122, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.end121
  %92 = load i32, ptr %ctrlFlags, align 4
  %or124 = or i32 %92, 8
  store i32 %or124, ptr %ctrlFlags, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end121
  %93 = load i32, ptr %flags.addr, align 4
  %and126 = and i32 %93, 64
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.end125
  %94 = load i32, ptr %ctrlFlags, align 4
  %or129 = or i32 %94, 64
  store i32 %or129, ptr %ctrlFlags, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end125
  %95 = load ptr, ptr %pVfs.addr, align 8
  %96 = load i32, ptr %fd, align 4
  %97 = load ptr, ptr %pFile.addr, align 8
  %98 = load ptr, ptr %zPath.addr, align 8
  %99 = load i32, ptr %ctrlFlags, align 4
  %call131 = call i32 @fillInUnixFile(ptr noundef %95, i32 noundef %96, ptr noundef %97, ptr noundef %98, i32 noundef %99)
  store i32 %call131, ptr %rc, align 4
  br label %open_finished

open_finished:                                    ; preds = %if.end130, %if.end83
  %100 = load i32, ptr %rc, align 4
  %cmp132 = icmp ne i32 %100, 0
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %open_finished
  %101 = load ptr, ptr %p, align 8
  %pPreallocatedUnused135 = getelementptr inbounds nuw %struct.unixFile, ptr %101, i32 0, i32 8
  %102 = load ptr, ptr %pPreallocatedUnused135, align 8
  call void @sqlite3_free(ptr noundef %102)
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %open_finished
  %103 = load i32, ptr %rc, align 4
  store i32 %103, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end136, %if.then51, %if.then26, %if.then18
  %104 = load i32, ptr %retval, align 4
  ret i32 %104
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @robust_open(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CantopenError(i32 noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind uwtable
declare hidden i32 @unixGetTempname(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @robustFchown(i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: nounwind uwtable
declare hidden ptr @findReusableFd(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @findCreateFileMode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @fillInUnixFile(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
