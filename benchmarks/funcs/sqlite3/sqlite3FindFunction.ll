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
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3FindFunction(ptr noundef %db, ptr noundef %zName, i32 noundef %nArg, i8 noundef zeroext %enc, i8 noundef zeroext %createFlag) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %enc.addr = alloca i8, align 1
  %createFlag.addr = alloca i8, align 1
  %p = alloca ptr, align 8
  %pBest = alloca ptr, align 8
  %bestScore = alloca i32, align 4
  %h = alloca i32, align 4
  %nName = alloca i32, align 4
  %score = alloca i32, align 4
  %score12 = alloca i32, align 4
  %pOther = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store i8 %enc, ptr %enc.addr, align 1
  store i8 %createFlag, ptr %createFlag.addr, align 1
  store ptr null, ptr %pBest, align 8
  store i32 0, ptr %bestScore, align 4
  %0 = load ptr, ptr %zName.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %0)
  store i32 %call, ptr %nName, align 4
  %1 = load ptr, ptr %db.addr, align 8
  %aFunc = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 72
  %2 = load ptr, ptr %zName.addr, align 8
  %call1 = call ptr @sqlite3HashFind(ptr noundef %aFunc, ptr noundef %2)
  store ptr %call1, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %p, align 8
  %5 = load i32, ptr %nArg.addr, align 4
  %6 = load i8, ptr %enc.addr, align 1
  %call2 = call i32 @matchQuality(ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6)
  store i32 %call2, ptr %score, align 4
  %7 = load i32, ptr %score, align 4
  %8 = load i32, ptr %bestScore, align 4
  %cmp = icmp sgt i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %p, align 8
  store ptr %9, ptr %pBest, align 8
  %10 = load i32, ptr %score, align 4
  store i32 %10, ptr %bestScore, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %11 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.FuncDef, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %pNext, align 8
  store ptr %12, ptr %p, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %13 = load i8, ptr %createFlag.addr, align 1
  %tobool3 = icmp ne i8 %13, 0
  br i1 %tobool3, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %14 = load ptr, ptr %pBest, align 8
  %cmp4 = icmp eq ptr %14, null
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load ptr, ptr %db.addr, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %mDbFlags, align 4
  %and = and i32 %16, 2
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.then6, label %if.end20

if.then6:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %bestScore, align 4
  %17 = load ptr, ptr %zName.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %18 to i64
  %arrayidx7 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom
  %19 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %19 to i32
  %20 = load i32, ptr %nName, align 4
  %add = add nsw i32 %conv, %20
  %rem = srem i32 %add, 23
  store i32 %rem, ptr %h, align 4
  %21 = load i32, ptr %h, align 4
  %22 = load ptr, ptr %zName.addr, align 8
  %call8 = call ptr @sqlite3FunctionSearch(i32 noundef %21, ptr noundef %22)
  store ptr %call8, ptr %p, align 8
  br label %while.cond9

while.cond9:                                      ; preds = %if.end17, %if.then6
  %23 = load ptr, ptr %p, align 8
  %tobool10 = icmp ne ptr %23, null
  br i1 %tobool10, label %while.body11, label %while.end19

while.body11:                                     ; preds = %while.cond9
  %24 = load ptr, ptr %p, align 8
  %25 = load i32, ptr %nArg.addr, align 4
  %26 = load i8, ptr %enc.addr, align 1
  %call13 = call i32 @matchQuality(ptr noundef %24, i32 noundef %25, i8 noundef zeroext %26)
  store i32 %call13, ptr %score12, align 4
  %27 = load i32, ptr %score12, align 4
  %28 = load i32, ptr %bestScore, align 4
  %cmp14 = icmp sgt i32 %27, %28
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body11
  %29 = load ptr, ptr %p, align 8
  store ptr %29, ptr %pBest, align 8
  %30 = load i32, ptr %score12, align 4
  store i32 %30, ptr %bestScore, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.body11
  %31 = load ptr, ptr %p, align 8
  %pNext18 = getelementptr inbounds nuw %struct.FuncDef, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %pNext18, align 8
  store ptr %32, ptr %p, align 8
  br label %while.cond9, !llvm.loop !8

while.end19:                                      ; preds = %while.cond9
  br label %if.end20

if.end20:                                         ; preds = %while.end19, %lor.lhs.false, %while.end
  %33 = load i8, ptr %createFlag.addr, align 1
  %conv21 = zext i8 %33 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  br i1 %tobool22, label %land.lhs.true23, label %if.end55

land.lhs.true23:                                  ; preds = %if.end20
  %34 = load i32, ptr %bestScore, align 4
  %cmp24 = icmp slt i32 %34, 6
  br i1 %cmp24, label %land.lhs.true26, label %if.end55

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %35 = load ptr, ptr %db.addr, align 8
  %36 = load i32, ptr %nName, align 4
  %conv27 = sext i32 %36 to i64
  %add28 = add i64 72, %conv27
  %add29 = add i64 %add28, 1
  %call30 = call ptr @sqlite3DbMallocZero(ptr noundef %35, i64 noundef %add29)
  store ptr %call30, ptr %pBest, align 8
  %cmp31 = icmp ne ptr %call30, null
  br i1 %cmp31, label %if.then33, label %if.end55

if.then33:                                        ; preds = %land.lhs.true26
  %37 = load ptr, ptr %pBest, align 8
  %arrayidx34 = getelementptr inbounds %struct.FuncDef, ptr %37, i64 1
  %38 = load ptr, ptr %pBest, align 8
  %zName35 = getelementptr inbounds nuw %struct.FuncDef, ptr %38, i32 0, i32 8
  store ptr %arrayidx34, ptr %zName35, align 8
  %39 = load i32, ptr %nArg.addr, align 4
  %conv36 = trunc i32 %39 to i16
  %conv37 = trunc i16 %conv36 to i8
  %40 = load ptr, ptr %pBest, align 8
  %nArg38 = getelementptr inbounds nuw %struct.FuncDef, ptr %40, i32 0, i32 0
  store i8 %conv37, ptr %nArg38, align 8
  %41 = load i8, ptr %enc.addr, align 1
  %conv39 = zext i8 %41 to i32
  %42 = load ptr, ptr %pBest, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %42, i32 0, i32 1
  store i32 %conv39, ptr %funcFlags, align 4
  %43 = load ptr, ptr %pBest, align 8
  %arrayidx40 = getelementptr inbounds %struct.FuncDef, ptr %43, i64 1
  %44 = load ptr, ptr %zName.addr, align 8
  %45 = load i32, ptr %nName, align 4
  %add41 = add nsw i32 %45, 1
  %conv42 = sext i32 %add41 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx40, ptr align 1 %44, i64 %conv42, i1 false)
  %46 = load ptr, ptr %pBest, align 8
  %zName43 = getelementptr inbounds nuw %struct.FuncDef, ptr %46, i32 0, i32 8
  %47 = load ptr, ptr %zName43, align 8
  store ptr %47, ptr %z, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then33
  %48 = load ptr, ptr %z, align 8
  %49 = load i8, ptr %48, align 1
  %tobool44 = icmp ne i8 %49, 0
  br i1 %tobool44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load ptr, ptr %z, align 8
  %51 = load i8, ptr %50, align 1
  %idxprom45 = zext i8 %51 to i64
  %arrayidx46 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom45
  %52 = load i8, ptr %arrayidx46, align 1
  %53 = load ptr, ptr %z, align 8
  store i8 %52, ptr %53, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %54, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %55 = load ptr, ptr %db.addr, align 8
  %aFunc47 = getelementptr inbounds nuw %struct.sqlite3, ptr %55, i32 0, i32 72
  %56 = load ptr, ptr %pBest, align 8
  %zName48 = getelementptr inbounds nuw %struct.FuncDef, ptr %56, i32 0, i32 8
  %57 = load ptr, ptr %zName48, align 8
  %58 = load ptr, ptr %pBest, align 8
  %call49 = call ptr @sqlite3HashInsert(ptr noundef %aFunc47, ptr noundef %57, ptr noundef %58)
  store ptr %call49, ptr %pOther, align 8
  %59 = load ptr, ptr %pOther, align 8
  %60 = load ptr, ptr %pBest, align 8
  %cmp50 = icmp eq ptr %59, %60
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.end
  %61 = load ptr, ptr %db.addr, align 8
  %62 = load ptr, ptr %pBest, align 8
  call void @sqlite3DbFree(ptr noundef %61, ptr noundef %62)
  %63 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %63)
  store ptr null, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %for.end
  %64 = load ptr, ptr %pOther, align 8
  %65 = load ptr, ptr %pBest, align 8
  %pNext53 = getelementptr inbounds nuw %struct.FuncDef, ptr %65, i32 0, i32 3
  store ptr %64, ptr %pNext53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %land.lhs.true26, %land.lhs.true23, %if.end20
  %66 = load ptr, ptr %pBest, align 8
  %tobool56 = icmp ne ptr %66, null
  br i1 %tobool56, label %land.lhs.true57, label %if.end63

land.lhs.true57:                                  ; preds = %if.end55
  %67 = load ptr, ptr %pBest, align 8
  %xSFunc = getelementptr inbounds nuw %struct.FuncDef, ptr %67, i32 0, i32 4
  %68 = load ptr, ptr %xSFunc, align 8
  %tobool58 = icmp ne ptr %68, null
  br i1 %tobool58, label %if.then62, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %land.lhs.true57
  %69 = load i8, ptr %createFlag.addr, align 1
  %conv60 = zext i8 %69 to i32
  %tobool61 = icmp ne i32 %conv60, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %lor.lhs.false59, %land.lhs.true57
  %70 = load ptr, ptr %pBest, align 8
  store ptr %70, ptr %retval, align 8
  br label %return

if.end63:                                         ; preds = %lor.lhs.false59, %if.end55
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end63, %if.then62, %if.then52
  %71 = load ptr, ptr %retval, align 8
  ret ptr %71
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FunctionSearch(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @matchQuality(ptr noundef, i32 noundef, i8 noundef zeroext) #0

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
!9 = distinct !{!9, !7}
