; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ReusableSpace = type { ptr, i64, i64 }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeRewind(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeMakeReady(ptr noundef %p, ptr noundef %pParse) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %nVar = alloca i32, align 4
  %nMem = alloca i32, align 4
  %nCursor = alloca i32, align 4
  %nArg = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca %struct.ReusableSpace, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %nVar2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 48
  %3 = load i16, ptr %nVar2, align 8
  %conv = sext i16 %3 to i32
  store i32 %conv, ptr %nVar, align 4
  %4 = load ptr, ptr %pParse.addr, align 8
  %nMem3 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 18
  %5 = load i32, ptr %nMem3, align 8
  store i32 %5, ptr %nMem, align 4
  %6 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 17
  %7 = load i32, ptr %nTab, align 4
  store i32 %7, ptr %nCursor, align 4
  %8 = load ptr, ptr %pParse.addr, align 8
  %nMaxArg = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 30
  %9 = load i32, ptr %nMaxArg, align 8
  store i32 %9, ptr %nArg, align 4
  %10 = load i32, ptr %nCursor, align 4
  %11 = load i32, ptr %nMem, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, ptr %nMem, align 4
  %12 = load i32, ptr %nCursor, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, ptr %nMem, align 4
  %cmp5 = icmp sgt i32 %13, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, ptr %nMem, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %nMem, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load ptr, ptr %p.addr, align 8
  %nOp = getelementptr inbounds nuw %struct.Vdbe, ptr %15, i32 0, i32 24
  %16 = load i32, ptr %nOp, align 8
  %conv7 = sext i32 %16 to i64
  %mul = mul i64 24, %conv7
  %add8 = add i64 %mul, 7
  %and = and i64 %add8, -8
  %conv9 = trunc i64 %and to i32
  store i32 %conv9, ptr %n, align 4
  %17 = load ptr, ptr %p.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 23
  %18 = load ptr, ptr %aOp, align 8
  %19 = load i32, ptr %n, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %idxprom
  %pSpace = getelementptr inbounds nuw %struct.ReusableSpace, ptr %x, i32 0, i32 0
  store ptr %arrayidx, ptr %pSpace, align 8
  %20 = load ptr, ptr %pParse.addr, align 8
  %szOpAlloc = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 19
  %21 = load i32, ptr %szOpAlloc, align 4
  %22 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %21, %22
  %and10 = and i32 %sub, -8
  %conv11 = sext i32 %and10 to i64
  %nFree = getelementptr inbounds nuw %struct.ReusableSpace, ptr %x, i32 0, i32 1
  store i64 %conv11, ptr %nFree, align 8
  %23 = load ptr, ptr %p.addr, align 8
  call void @resolveP2Values(ptr noundef %23, ptr noundef %nArg)
  %24 = load ptr, ptr %pParse.addr, align 8
  %isMultiWrite = getelementptr inbounds nuw %struct.Parse, ptr %24, i32 0, i32 8
  %25 = load i8, ptr %isMultiWrite, align 8
  %conv12 = zext i8 %25 to i32
  %tobool = icmp ne i32 %conv12, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %26 = load ptr, ptr %pParse.addr, align 8
  %mayAbort = getelementptr inbounds nuw %struct.Parse, ptr %26, i32 0, i32 9
  %27 = load i8, ptr %mayAbort, align 1
  %conv13 = zext i8 %27 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %28 = phi i1 [ false, %if.end ], [ %tobool14, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  %conv15 = trunc i32 %land.ext to i8
  %conv16 = zext i8 %conv15 to i32
  %29 = load ptr, ptr %p.addr, align 8
  %usesStmtJournal = getelementptr inbounds nuw %struct.Vdbe, ptr %29, i32 0, i32 35
  %30 = trunc i32 %conv16 to i16
  %bf.load = load i16, ptr %usesStmtJournal, align 1
  %bf.value = and i16 %30, 1
  %bf.shl = shl i16 %bf.value, 7
  %bf.clear = and i16 %bf.load, -129
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %usesStmtJournal, align 1
  %bf.result.cast = zext i16 %bf.value to i32
  %31 = load ptr, ptr %pParse.addr, align 8
  %explain = getelementptr inbounds nuw %struct.Parse, ptr %31, i32 0, i32 50
  %32 = load i8, ptr %explain, align 1
  %conv17 = zext i8 %32 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %land.end
  %33 = load i32, ptr %nMem, align 4
  %cmp20 = icmp slt i32 %33, 10
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true19
  store i32 10, ptr %nMem, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true19, %land.end
  %34 = load ptr, ptr %p.addr, align 8
  %expired = getelementptr inbounds nuw %struct.Vdbe, ptr %34, i32 0, i32 35
  %bf.load24 = load i16, ptr %expired, align 1
  %bf.clear25 = and i16 %bf.load24, -4
  %bf.set26 = or i16 %bf.clear25, 0
  store i16 %bf.set26, ptr %expired, align 1
  %nNeeded = getelementptr inbounds nuw %struct.ReusableSpace, ptr %x, i32 0, i32 2
  store i64 0, ptr %nNeeded, align 8
  %35 = load i32, ptr %nMem, align 4
  %conv27 = sext i32 %35 to i64
  %mul28 = mul i64 %conv27, 56
  %call = call ptr @allocSpace(ptr noundef %x, ptr noundef null, i64 noundef %mul28)
  %36 = load ptr, ptr %p.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.Vdbe, ptr %36, i32 0, i32 19
  store ptr %call, ptr %aMem, align 8
  %37 = load i32, ptr %nVar, align 4
  %conv29 = sext i32 %37 to i64
  %mul30 = mul i64 %conv29, 56
  %call31 = call ptr @allocSpace(ptr noundef %x, ptr noundef null, i64 noundef %mul30)
  %38 = load ptr, ptr %p.addr, align 8
  %aVar = getelementptr inbounds nuw %struct.Vdbe, ptr %38, i32 0, i32 22
  store ptr %call31, ptr %aVar, align 8
  %39 = load i32, ptr %nArg, align 4
  %conv32 = sext i32 %39 to i64
  %mul33 = mul i64 %conv32, 8
  %call34 = call ptr @allocSpace(ptr noundef %x, ptr noundef null, i64 noundef %mul33)
  %40 = load ptr, ptr %p.addr, align 8
  %apArg = getelementptr inbounds nuw %struct.Vdbe, ptr %40, i32 0, i32 20
  store ptr %call34, ptr %apArg, align 8
  %41 = load i32, ptr %nCursor, align 4
  %conv35 = sext i32 %41 to i64
  %mul36 = mul i64 %conv35, 8
  %call37 = call ptr @allocSpace(ptr noundef %x, ptr noundef null, i64 noundef %mul36)
  %42 = load ptr, ptr %p.addr, align 8
  %apCsr = getelementptr inbounds nuw %struct.Vdbe, ptr %42, i32 0, i32 21
  store ptr %call37, ptr %apCsr, align 8
  %nNeeded38 = getelementptr inbounds nuw %struct.ReusableSpace, ptr %x, i32 0, i32 2
  %43 = load i64, ptr %nNeeded38, align 8
  %tobool39 = icmp ne i64 %43, 0
  br i1 %tobool39, label %if.then40, label %if.end69

if.then40:                                        ; preds = %if.end23
  %44 = load ptr, ptr %db, align 8
  %nNeeded41 = getelementptr inbounds nuw %struct.ReusableSpace, ptr %x, i32 0, i32 2
  %45 = load i64, ptr %nNeeded41, align 8
  %call42 = call ptr @sqlite3DbMallocRawNN(ptr noundef %44, i64 noundef %45)
  %46 = load ptr, ptr %p.addr, align 8
  %pFree = getelementptr inbounds nuw %struct.Vdbe, ptr %46, i32 0, i32 42
  store ptr %call42, ptr %pFree, align 8
  %pSpace43 = getelementptr inbounds nuw %struct.ReusableSpace, ptr %x, i32 0, i32 0
  store ptr %call42, ptr %pSpace43, align 8
  %nNeeded44 = getelementptr inbounds nuw %struct.ReusableSpace, ptr %x, i32 0, i32 2
  %47 = load i64, ptr %nNeeded44, align 8
  %nFree45 = getelementptr inbounds nuw %struct.ReusableSpace, ptr %x, i32 0, i32 1
  store i64 %47, ptr %nFree45, align 8
  %48 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %48, i32 0, i32 19
  %49 = load i8, ptr %mallocFailed, align 1
  %tobool46 = icmp ne i8 %49, 0
  br i1 %tobool46, label %if.end68, label %if.then47

if.then47:                                        ; preds = %if.then40
  %50 = load ptr, ptr %p.addr, align 8
  %aMem48 = getelementptr inbounds nuw %struct.Vdbe, ptr %50, i32 0, i32 19
  %51 = load ptr, ptr %aMem48, align 8
  %52 = load i32, ptr %nMem, align 4
  %conv49 = sext i32 %52 to i64
  %mul50 = mul i64 %conv49, 56
  %call51 = call ptr @allocSpace(ptr noundef %x, ptr noundef %51, i64 noundef %mul50)
  %53 = load ptr, ptr %p.addr, align 8
  %aMem52 = getelementptr inbounds nuw %struct.Vdbe, ptr %53, i32 0, i32 19
  store ptr %call51, ptr %aMem52, align 8
  %54 = load ptr, ptr %p.addr, align 8
  %aVar53 = getelementptr inbounds nuw %struct.Vdbe, ptr %54, i32 0, i32 22
  %55 = load ptr, ptr %aVar53, align 8
  %56 = load i32, ptr %nVar, align 4
  %conv54 = sext i32 %56 to i64
  %mul55 = mul i64 %conv54, 56
  %call56 = call ptr @allocSpace(ptr noundef %x, ptr noundef %55, i64 noundef %mul55)
  %57 = load ptr, ptr %p.addr, align 8
  %aVar57 = getelementptr inbounds nuw %struct.Vdbe, ptr %57, i32 0, i32 22
  store ptr %call56, ptr %aVar57, align 8
  %58 = load ptr, ptr %p.addr, align 8
  %apArg58 = getelementptr inbounds nuw %struct.Vdbe, ptr %58, i32 0, i32 20
  %59 = load ptr, ptr %apArg58, align 8
  %60 = load i32, ptr %nArg, align 4
  %conv59 = sext i32 %60 to i64
  %mul60 = mul i64 %conv59, 8
  %call61 = call ptr @allocSpace(ptr noundef %x, ptr noundef %59, i64 noundef %mul60)
  %61 = load ptr, ptr %p.addr, align 8
  %apArg62 = getelementptr inbounds nuw %struct.Vdbe, ptr %61, i32 0, i32 20
  store ptr %call61, ptr %apArg62, align 8
  %62 = load ptr, ptr %p.addr, align 8
  %apCsr63 = getelementptr inbounds nuw %struct.Vdbe, ptr %62, i32 0, i32 21
  %63 = load ptr, ptr %apCsr63, align 8
  %64 = load i32, ptr %nCursor, align 4
  %conv64 = sext i32 %64 to i64
  %mul65 = mul i64 %conv64, 8
  %call66 = call ptr @allocSpace(ptr noundef %x, ptr noundef %63, i64 noundef %mul65)
  %65 = load ptr, ptr %p.addr, align 8
  %apCsr67 = getelementptr inbounds nuw %struct.Vdbe, ptr %65, i32 0, i32 21
  store ptr %call66, ptr %apCsr67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then47, %if.then40
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end23
  %66 = load ptr, ptr %pParse.addr, align 8
  %pVList = getelementptr inbounds nuw %struct.Parse, ptr %66, i32 0, i32 55
  %67 = load ptr, ptr %pVList, align 8
  %68 = load ptr, ptr %p.addr, align 8
  %pVList70 = getelementptr inbounds nuw %struct.Vdbe, ptr %68, i32 0, i32 29
  store ptr %67, ptr %pVList70, align 8
  %69 = load ptr, ptr %pParse.addr, align 8
  %pVList71 = getelementptr inbounds nuw %struct.Parse, ptr %69, i32 0, i32 55
  store ptr null, ptr %pVList71, align 8
  %70 = load ptr, ptr %pParse.addr, align 8
  %explain72 = getelementptr inbounds nuw %struct.Parse, ptr %70, i32 0, i32 50
  %71 = load i8, ptr %explain72, align 1
  %conv73 = zext i8 %71 to i32
  %72 = load ptr, ptr %p.addr, align 8
  %explain74 = getelementptr inbounds nuw %struct.Vdbe, ptr %72, i32 0, i32 35
  %73 = trunc i32 %conv73 to i16
  %bf.load75 = load i16, ptr %explain74, align 1
  %bf.value76 = and i16 %73, 3
  %bf.shl77 = shl i16 %bf.value76, 2
  %bf.clear78 = and i16 %bf.load75, -13
  %bf.set79 = or i16 %bf.clear78, %bf.shl77
  store i16 %bf.set79, ptr %explain74, align 1
  %bf.result.cast80 = zext i16 %bf.value76 to i32
  %74 = load ptr, ptr %db, align 8
  %mallocFailed81 = getelementptr inbounds nuw %struct.sqlite3, ptr %74, i32 0, i32 19
  %75 = load i8, ptr %mallocFailed81, align 1
  %tobool82 = icmp ne i8 %75, 0
  br i1 %tobool82, label %if.then83, label %if.else

if.then83:                                        ; preds = %if.end69
  %76 = load ptr, ptr %p.addr, align 8
  %nVar84 = getelementptr inbounds nuw %struct.Vdbe, ptr %76, i32 0, i32 4
  store i16 0, ptr %nVar84, align 8
  %77 = load ptr, ptr %p.addr, align 8
  %nCursor85 = getelementptr inbounds nuw %struct.Vdbe, ptr %77, i32 0, i32 8
  store i32 0, ptr %nCursor85, align 4
  %78 = load ptr, ptr %p.addr, align 8
  %nMem86 = getelementptr inbounds nuw %struct.Vdbe, ptr %78, i32 0, i32 7
  store i32 0, ptr %nMem86, align 8
  br label %if.end96

if.else:                                          ; preds = %if.end69
  %79 = load i32, ptr %nCursor, align 4
  %80 = load ptr, ptr %p.addr, align 8
  %nCursor87 = getelementptr inbounds nuw %struct.Vdbe, ptr %80, i32 0, i32 8
  store i32 %79, ptr %nCursor87, align 4
  %81 = load i32, ptr %nVar, align 4
  %conv88 = trunc i32 %81 to i16
  %82 = load ptr, ptr %p.addr, align 8
  %nVar89 = getelementptr inbounds nuw %struct.Vdbe, ptr %82, i32 0, i32 4
  store i16 %conv88, ptr %nVar89, align 8
  %83 = load ptr, ptr %p.addr, align 8
  %aVar90 = getelementptr inbounds nuw %struct.Vdbe, ptr %83, i32 0, i32 22
  %84 = load ptr, ptr %aVar90, align 8
  %85 = load i32, ptr %nVar, align 4
  %86 = load ptr, ptr %db, align 8
  call void @initMemArray(ptr noundef %84, i32 noundef %85, ptr noundef %86, i16 noundef zeroext 1)
  %87 = load i32, ptr %nMem, align 4
  %88 = load ptr, ptr %p.addr, align 8
  %nMem91 = getelementptr inbounds nuw %struct.Vdbe, ptr %88, i32 0, i32 7
  store i32 %87, ptr %nMem91, align 8
  %89 = load ptr, ptr %p.addr, align 8
  %aMem92 = getelementptr inbounds nuw %struct.Vdbe, ptr %89, i32 0, i32 19
  %90 = load ptr, ptr %aMem92, align 8
  %91 = load i32, ptr %nMem, align 4
  %92 = load ptr, ptr %db, align 8
  call void @initMemArray(ptr noundef %90, i32 noundef %91, ptr noundef %92, i16 noundef zeroext 128)
  %93 = load ptr, ptr %p.addr, align 8
  %apCsr93 = getelementptr inbounds nuw %struct.Vdbe, ptr %93, i32 0, i32 21
  %94 = load ptr, ptr %apCsr93, align 8
  %95 = load i32, ptr %nCursor, align 4
  %conv94 = sext i32 %95 to i64
  %mul95 = mul i64 %conv94, 8
  call void @llvm.memset.p0.i64(ptr align 8 %94, i8 0, i64 %mul95, i1 false)
  br label %if.end96

if.end96:                                         ; preds = %if.else, %if.then83
  %96 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeRewind(ptr noundef %96)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @resolveP2Values(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @allocSpace(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @initMemArray(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #0

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
