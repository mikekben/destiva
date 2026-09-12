; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }
%struct.SorterRecord = type { i32, %union.anon.10 }
%union.anon.10 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint32(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VarintLen(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeSorterWrite(ptr noundef %pCsr, ptr noundef %pVal) #0 {
entry:
  %retval = alloca i32, align 4
  %pCsr.addr = alloca ptr, align 8
  %pVal.addr = alloca ptr, align 8
  %pSorter = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %bFlush = alloca i32, align 4
  %nReq = alloca i32, align 4
  %nPMA = alloca i32, align 4
  %t = alloca i32, align 4
  %nMin = alloca i32, align 4
  %aNew = alloca ptr, align 8
  %nNew = alloca i64, align 8
  %iListOff = alloca i32, align 4
  store ptr %pCsr, ptr %pCsr.addr, align 8
  store ptr %pVal, ptr %pVal.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pCsr.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %uc, align 8
  store ptr %1, ptr %pSorter, align 8
  %2 = load ptr, ptr %pVal.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %z, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %pVal.addr, align 8
  %z2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %z2, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  store i32 %conv4, ptr %t, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %pVal.addr, align 8
  %z5 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %z5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 1
  %call = call zeroext i8 @sqlite3GetVarint32(ptr noundef %arrayidx6, ptr noundef %t)
  %conv7 = zext i8 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv7, %cond.false ]
  %conv8 = trunc i32 %cond to i8
  %10 = load i32, ptr %t, align 4
  %cmp9 = icmp sgt i32 %10, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %11 = load i32, ptr %t, align 4
  %cmp11 = icmp slt i32 %11, 10
  br i1 %cmp11, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true
  %12 = load i32, ptr %t, align 4
  %cmp14 = icmp ne i32 %12, 7
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true13
  %13 = load ptr, ptr %pSorter, align 8
  %typeMask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %13, i32 0, i32 16
  %14 = load i8, ptr %typeMask, align 4
  %conv16 = zext i8 %14 to i32
  %and = and i32 %conv16, 1
  %conv17 = trunc i32 %and to i8
  store i8 %conv17, ptr %typeMask, align 4
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true, %cond.end
  %15 = load i32, ptr %t, align 4
  %cmp18 = icmp sgt i32 %15, 10
  br i1 %cmp18, label %land.lhs.true20, label %if.else27

land.lhs.true20:                                  ; preds = %if.else
  %16 = load i32, ptr %t, align 4
  %and21 = and i32 %16, 1
  %tobool = icmp ne i32 %and21, 0
  br i1 %tobool, label %if.then22, label %if.else27

if.then22:                                        ; preds = %land.lhs.true20
  %17 = load ptr, ptr %pSorter, align 8
  %typeMask23 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %17, i32 0, i32 16
  %18 = load i8, ptr %typeMask23, align 4
  %conv24 = zext i8 %18 to i32
  %and25 = and i32 %conv24, 2
  %conv26 = trunc i32 %and25 to i8
  store i8 %conv26, ptr %typeMask23, align 4
  br label %if.end

if.else27:                                        ; preds = %land.lhs.true20, %if.else
  %19 = load ptr, ptr %pSorter, align 8
  %typeMask28 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %19, i32 0, i32 16
  store i8 0, ptr %typeMask28, align 4
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then22
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then
  %20 = load ptr, ptr %pVal.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %n, align 4
  %conv30 = sext i32 %21 to i64
  %add = add i64 %conv30, 16
  %conv31 = trunc i64 %add to i32
  store i32 %conv31, ptr %nReq, align 4
  %22 = load ptr, ptr %pVal.addr, align 8
  %n32 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %n32, align 4
  %24 = load ptr, ptr %pVal.addr, align 8
  %n33 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %n33, align 4
  %conv34 = sext i32 %25 to i64
  %call35 = call i32 @sqlite3VarintLen(i64 noundef %conv34)
  %add36 = add nsw i32 %23, %call35
  store i32 %add36, ptr %nPMA, align 4
  %26 = load ptr, ptr %pSorter, align 8
  %mxPmaSize = getelementptr inbounds nuw %struct.VdbeSorter, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %mxPmaSize, align 4
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.then38, label %if.end69

if.then38:                                        ; preds = %if.end29
  %28 = load ptr, ptr %pSorter, align 8
  %list = getelementptr inbounds nuw %struct.VdbeSorter, ptr %28, i32 0, i32 9
  %aMemory = getelementptr inbounds nuw %struct.SorterList, ptr %list, i32 0, i32 1
  %29 = load ptr, ptr %aMemory, align 8
  %tobool39 = icmp ne ptr %29, null
  br i1 %tobool39, label %if.then40, label %if.else47

if.then40:                                        ; preds = %if.then38
  %30 = load ptr, ptr %pSorter, align 8
  %iMemory = getelementptr inbounds nuw %struct.VdbeSorter, ptr %30, i32 0, i32 10
  %31 = load i32, ptr %iMemory, align 8
  %tobool41 = icmp ne i32 %31, 0
  br i1 %tobool41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then40
  %32 = load ptr, ptr %pSorter, align 8
  %iMemory42 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %32, i32 0, i32 10
  %33 = load i32, ptr %iMemory42, align 8
  %34 = load i32, ptr %nReq, align 4
  %add43 = add nsw i32 %33, %34
  %35 = load ptr, ptr %pSorter, align 8
  %mxPmaSize44 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %mxPmaSize44, align 4
  %cmp45 = icmp sgt i32 %add43, %36
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then40
  %37 = phi i1 [ false, %if.then40 ], [ %cmp45, %land.rhs ]
  %land.ext = zext i1 %37 to i32
  store i32 %land.ext, ptr %bFlush, align 4
  br label %if.end61

if.else47:                                        ; preds = %if.then38
  %38 = load ptr, ptr %pSorter, align 8
  %list48 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %38, i32 0, i32 9
  %szPMA = getelementptr inbounds nuw %struct.SorterList, ptr %list48, i32 0, i32 2
  %39 = load i32, ptr %szPMA, align 8
  %40 = load ptr, ptr %pSorter, align 8
  %mxPmaSize49 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %mxPmaSize49, align 4
  %cmp50 = icmp sgt i32 %39, %41
  br i1 %cmp50, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else47
  %42 = load ptr, ptr %pSorter, align 8
  %list52 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %42, i32 0, i32 9
  %szPMA53 = getelementptr inbounds nuw %struct.SorterList, ptr %list52, i32 0, i32 2
  %43 = load i32, ptr %szPMA53, align 8
  %44 = load ptr, ptr %pSorter, align 8
  %mnPmaSize = getelementptr inbounds nuw %struct.VdbeSorter, ptr %44, i32 0, i32 0
  %45 = load i32, ptr %mnPmaSize, align 8
  %cmp54 = icmp sgt i32 %43, %45
  br i1 %cmp54, label %land.rhs56, label %land.end59

land.rhs56:                                       ; preds = %lor.rhs
  %call57 = call i32 @sqlite3HeapNearlyFull()
  %tobool58 = icmp ne i32 %call57, 0
  br label %land.end59

land.end59:                                       ; preds = %land.rhs56, %lor.rhs
  %46 = phi i1 [ false, %lor.rhs ], [ %tobool58, %land.rhs56 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end59, %if.else47
  %47 = phi i1 [ true, %if.else47 ], [ %46, %land.end59 ]
  %lor.ext = zext i1 %47 to i32
  store i32 %lor.ext, ptr %bFlush, align 4
  br label %if.end61

if.end61:                                         ; preds = %lor.end, %land.end
  %48 = load i32, ptr %bFlush, align 4
  %tobool62 = icmp ne i32 %48, 0
  br i1 %tobool62, label %if.then63, label %if.end68

if.then63:                                        ; preds = %if.end61
  %49 = load ptr, ptr %pSorter, align 8
  %call64 = call i32 @vdbeSorterFlushPMA(ptr noundef %49)
  store i32 %call64, ptr %rc, align 4
  %50 = load ptr, ptr %pSorter, align 8
  %list65 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %50, i32 0, i32 9
  %szPMA66 = getelementptr inbounds nuw %struct.SorterList, ptr %list65, i32 0, i32 2
  store i32 0, ptr %szPMA66, align 8
  %51 = load ptr, ptr %pSorter, align 8
  %iMemory67 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %51, i32 0, i32 10
  store i32 0, ptr %iMemory67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.end61
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end29
  %52 = load i32, ptr %nPMA, align 4
  %53 = load ptr, ptr %pSorter, align 8
  %list70 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %53, i32 0, i32 9
  %szPMA71 = getelementptr inbounds nuw %struct.SorterList, ptr %list70, i32 0, i32 2
  %54 = load i32, ptr %szPMA71, align 8
  %add72 = add nsw i32 %54, %52
  store i32 %add72, ptr %szPMA71, align 8
  %55 = load i32, ptr %nPMA, align 4
  %56 = load ptr, ptr %pSorter, align 8
  %mxKeysize = getelementptr inbounds nuw %struct.VdbeSorter, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %mxKeysize, align 8
  %cmp73 = icmp sgt i32 %55, %57
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end69
  %58 = load i32, ptr %nPMA, align 4
  %59 = load ptr, ptr %pSorter, align 8
  %mxKeysize76 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %59, i32 0, i32 2
  store i32 %58, ptr %mxKeysize76, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end69
  %60 = load ptr, ptr %pSorter, align 8
  %list78 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %60, i32 0, i32 9
  %aMemory79 = getelementptr inbounds nuw %struct.SorterList, ptr %list78, i32 0, i32 1
  %61 = load ptr, ptr %aMemory79, align 8
  %tobool80 = icmp ne ptr %61, null
  br i1 %tobool80, label %if.then81, label %if.else156

if.then81:                                        ; preds = %if.end77
  %62 = load ptr, ptr %pSorter, align 8
  %iMemory82 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %62, i32 0, i32 10
  %63 = load i32, ptr %iMemory82, align 8
  %64 = load i32, ptr %nReq, align 4
  %add83 = add nsw i32 %63, %64
  store i32 %add83, ptr %nMin, align 4
  %65 = load i32, ptr %nMin, align 4
  %66 = load ptr, ptr %pSorter, align 8
  %nMemory = getelementptr inbounds nuw %struct.VdbeSorter, ptr %66, i32 0, i32 11
  %67 = load i32, ptr %nMemory, align 4
  %cmp84 = icmp sgt i32 %65, %67
  br i1 %cmp84, label %if.then86, label %if.end133

if.then86:                                        ; preds = %if.then81
  %68 = load ptr, ptr %pSorter, align 8
  %nMemory87 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %68, i32 0, i32 11
  %69 = load i32, ptr %nMemory87, align 4
  %conv88 = sext i32 %69 to i64
  %mul = mul nsw i64 2, %conv88
  store i64 %mul, ptr %nNew, align 8
  store i32 -1, ptr %iListOff, align 4
  %70 = load ptr, ptr %pSorter, align 8
  %list89 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %70, i32 0, i32 9
  %pList = getelementptr inbounds nuw %struct.SorterList, ptr %list89, i32 0, i32 0
  %71 = load ptr, ptr %pList, align 8
  %tobool90 = icmp ne ptr %71, null
  br i1 %tobool90, label %if.then91, label %if.end97

if.then91:                                        ; preds = %if.then86
  %72 = load ptr, ptr %pSorter, align 8
  %list92 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %72, i32 0, i32 9
  %pList93 = getelementptr inbounds nuw %struct.SorterList, ptr %list92, i32 0, i32 0
  %73 = load ptr, ptr %pList93, align 8
  %74 = load ptr, ptr %pSorter, align 8
  %list94 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %74, i32 0, i32 9
  %aMemory95 = getelementptr inbounds nuw %struct.SorterList, ptr %list94, i32 0, i32 1
  %75 = load ptr, ptr %aMemory95, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %73 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %75 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv96 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv96, ptr %iListOff, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %if.then86
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end97
  %76 = load i64, ptr %nNew, align 8
  %77 = load i32, ptr %nMin, align 4
  %conv98 = sext i32 %77 to i64
  %cmp99 = icmp slt i64 %76, %conv98
  br i1 %cmp99, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %78 = load i64, ptr %nNew, align 8
  %mul101 = mul nsw i64 %78, 2
  store i64 %mul101, ptr %nNew, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %79 = load i64, ptr %nNew, align 8
  %80 = load ptr, ptr %pSorter, align 8
  %mxPmaSize102 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %80, i32 0, i32 1
  %81 = load i32, ptr %mxPmaSize102, align 4
  %conv103 = sext i32 %81 to i64
  %cmp104 = icmp sgt i64 %79, %conv103
  br i1 %cmp104, label %if.then106, label %if.end109

if.then106:                                       ; preds = %while.end
  %82 = load ptr, ptr %pSorter, align 8
  %mxPmaSize107 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %82, i32 0, i32 1
  %83 = load i32, ptr %mxPmaSize107, align 4
  %conv108 = sext i32 %83 to i64
  store i64 %conv108, ptr %nNew, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %while.end
  %84 = load i64, ptr %nNew, align 8
  %85 = load i32, ptr %nMin, align 4
  %conv110 = sext i32 %85 to i64
  %cmp111 = icmp slt i64 %84, %conv110
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end109
  %86 = load i32, ptr %nMin, align 4
  %conv114 = sext i32 %86 to i64
  store i64 %conv114, ptr %nNew, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end109
  %87 = load ptr, ptr %pSorter, align 8
  %list116 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %87, i32 0, i32 9
  %aMemory117 = getelementptr inbounds nuw %struct.SorterList, ptr %list116, i32 0, i32 1
  %88 = load ptr, ptr %aMemory117, align 8
  %89 = load i64, ptr %nNew, align 8
  %call118 = call ptr @sqlite3Realloc(ptr noundef %88, i64 noundef %89)
  store ptr %call118, ptr %aNew, align 8
  %90 = load ptr, ptr %aNew, align 8
  %tobool119 = icmp ne ptr %90, null
  br i1 %tobool119, label %if.end121, label %if.then120

if.then120:                                       ; preds = %if.end115
  store i32 7, ptr %retval, align 4
  br label %return

if.end121:                                        ; preds = %if.end115
  %91 = load i32, ptr %iListOff, align 4
  %cmp122 = icmp sge i32 %91, 0
  br i1 %cmp122, label %if.then124, label %if.end128

if.then124:                                       ; preds = %if.end121
  %92 = load ptr, ptr %aNew, align 8
  %93 = load i32, ptr %iListOff, align 4
  %idxprom = sext i32 %93 to i64
  %arrayidx125 = getelementptr inbounds i8, ptr %92, i64 %idxprom
  %94 = load ptr, ptr %pSorter, align 8
  %list126 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %94, i32 0, i32 9
  %pList127 = getelementptr inbounds nuw %struct.SorterList, ptr %list126, i32 0, i32 0
  store ptr %arrayidx125, ptr %pList127, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %if.end121
  %95 = load ptr, ptr %aNew, align 8
  %96 = load ptr, ptr %pSorter, align 8
  %list129 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %96, i32 0, i32 9
  %aMemory130 = getelementptr inbounds nuw %struct.SorterList, ptr %list129, i32 0, i32 1
  store ptr %95, ptr %aMemory130, align 8
  %97 = load i64, ptr %nNew, align 8
  %conv131 = trunc i64 %97 to i32
  %98 = load ptr, ptr %pSorter, align 8
  %nMemory132 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %98, i32 0, i32 11
  store i32 %conv131, ptr %nMemory132, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.end128, %if.then81
  %99 = load ptr, ptr %pSorter, align 8
  %list134 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %99, i32 0, i32 9
  %aMemory135 = getelementptr inbounds nuw %struct.SorterList, ptr %list134, i32 0, i32 1
  %100 = load ptr, ptr %aMemory135, align 8
  %101 = load ptr, ptr %pSorter, align 8
  %iMemory136 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %101, i32 0, i32 10
  %102 = load i32, ptr %iMemory136, align 8
  %idxprom137 = sext i32 %102 to i64
  %arrayidx138 = getelementptr inbounds i8, ptr %100, i64 %idxprom137
  store ptr %arrayidx138, ptr %pNew, align 8
  %103 = load i32, ptr %nReq, align 4
  %add139 = add nsw i32 %103, 7
  %and140 = and i32 %add139, -8
  %104 = load ptr, ptr %pSorter, align 8
  %iMemory141 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %104, i32 0, i32 10
  %105 = load i32, ptr %iMemory141, align 8
  %add142 = add nsw i32 %105, %and140
  store i32 %add142, ptr %iMemory141, align 8
  %106 = load ptr, ptr %pSorter, align 8
  %list143 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %106, i32 0, i32 9
  %pList144 = getelementptr inbounds nuw %struct.SorterList, ptr %list143, i32 0, i32 0
  %107 = load ptr, ptr %pList144, align 8
  %tobool145 = icmp ne ptr %107, null
  br i1 %tobool145, label %if.then146, label %if.end155

if.then146:                                       ; preds = %if.end133
  %108 = load ptr, ptr %pSorter, align 8
  %list147 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %108, i32 0, i32 9
  %pList148 = getelementptr inbounds nuw %struct.SorterList, ptr %list147, i32 0, i32 0
  %109 = load ptr, ptr %pList148, align 8
  %110 = load ptr, ptr %pSorter, align 8
  %list149 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %110, i32 0, i32 9
  %aMemory150 = getelementptr inbounds nuw %struct.SorterList, ptr %list149, i32 0, i32 1
  %111 = load ptr, ptr %aMemory150, align 8
  %sub.ptr.lhs.cast151 = ptrtoint ptr %109 to i64
  %sub.ptr.rhs.cast152 = ptrtoint ptr %111 to i64
  %sub.ptr.sub153 = sub i64 %sub.ptr.lhs.cast151, %sub.ptr.rhs.cast152
  %conv154 = trunc i64 %sub.ptr.sub153 to i32
  %112 = load ptr, ptr %pNew, align 8
  %u = getelementptr inbounds nuw %struct.SorterRecord, ptr %112, i32 0, i32 1
  store i32 %conv154, ptr %u, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then146, %if.end133
  br label %if.end166

if.else156:                                       ; preds = %if.end77
  %113 = load i32, ptr %nReq, align 4
  %conv157 = sext i32 %113 to i64
  %call158 = call ptr @sqlite3Malloc(i64 noundef %conv157)
  store ptr %call158, ptr %pNew, align 8
  %114 = load ptr, ptr %pNew, align 8
  %cmp159 = icmp eq ptr %114, null
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.else156
  store i32 7, ptr %retval, align 4
  br label %return

if.end162:                                        ; preds = %if.else156
  %115 = load ptr, ptr %pSorter, align 8
  %list163 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %115, i32 0, i32 9
  %pList164 = getelementptr inbounds nuw %struct.SorterList, ptr %list163, i32 0, i32 0
  %116 = load ptr, ptr %pList164, align 8
  %117 = load ptr, ptr %pNew, align 8
  %u165 = getelementptr inbounds nuw %struct.SorterRecord, ptr %117, i32 0, i32 1
  store ptr %116, ptr %u165, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.end162, %if.end155
  %118 = load ptr, ptr %pNew, align 8
  %add.ptr = getelementptr inbounds %struct.SorterRecord, ptr %118, i64 1
  %119 = load ptr, ptr %pVal.addr, align 8
  %z167 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %119, i32 0, i32 5
  %120 = load ptr, ptr %z167, align 8
  %121 = load ptr, ptr %pVal.addr, align 8
  %n168 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %121, i32 0, i32 4
  %122 = load i32, ptr %n168, align 4
  %conv169 = sext i32 %122 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %120, i64 %conv169, i1 false)
  %123 = load ptr, ptr %pVal.addr, align 8
  %n170 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %123, i32 0, i32 4
  %124 = load i32, ptr %n170, align 4
  %125 = load ptr, ptr %pNew, align 8
  %nVal = getelementptr inbounds nuw %struct.SorterRecord, ptr %125, i32 0, i32 0
  store i32 %124, ptr %nVal, align 8
  %126 = load ptr, ptr %pNew, align 8
  %127 = load ptr, ptr %pSorter, align 8
  %list171 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %127, i32 0, i32 9
  %pList172 = getelementptr inbounds nuw %struct.SorterList, ptr %list171, i32 0, i32 0
  store ptr %126, ptr %pList172, align 8
  %128 = load i32, ptr %rc, align 4
  store i32 %128, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end166, %if.then161, %if.then120
  %129 = load i32, ptr %retval, align 4
  ret i32 %129
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterFlushPMA(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3HeapNearlyFull() #0

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
