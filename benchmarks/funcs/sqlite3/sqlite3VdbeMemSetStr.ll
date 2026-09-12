; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DbMallocSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemSetStr(ptr noundef %pMem, ptr noundef %z, i32 noundef %n, i8 noundef zeroext %enc, ptr noundef %xDel) #0 {
entry:
  %retval = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %enc.addr = alloca i8, align 1
  %xDel.addr = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %iLimit = alloca i32, align 4
  %flags = alloca i16, align 2
  %nAlloc = alloca i32, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i8 %enc, ptr %enc.addr, align 1
  store ptr %xDel, ptr %xDel.addr, align 8
  %0 = load i32, ptr %n.addr, align 4
  store i32 %0, ptr %nByte, align 4
  store i16 0, ptr %flags, align 2
  %1 = load ptr, ptr %z.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pMem.addr, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pMem.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %db, align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %pMem.addr, align 8
  %db3 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %db3, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %iLimit, align 4
  br label %if.end4

if.else:                                          ; preds = %if.end
  store i32 1000000000, ptr %iLimit, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %8 = load i8, ptr %enc.addr, align 1
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 0
  %9 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 16, i32 2
  %conv6 = trunc i32 %cond to i16
  store i16 %conv6, ptr %flags, align 2
  %10 = load i32, ptr %nByte, align 4
  %cmp7 = icmp slt i32 %10, 0
  br i1 %cmp7, label %if.then9, label %if.end29

if.then9:                                         ; preds = %if.end4
  %11 = load i8, ptr %enc.addr, align 1
  %conv10 = zext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 1
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.then9
  %12 = load ptr, ptr %z.addr, align 8
  %call = call i64 @strlen(ptr noundef %12) #3
  %conv14 = trunc i64 %call to i32
  %and = and i32 2147483647, %conv14
  store i32 %and, ptr %nByte, align 4
  br label %if.end25

if.else15:                                        ; preds = %if.then9
  store i32 0, ptr %nByte, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else15
  %13 = load i32, ptr %nByte, align 4
  %14 = load i32, ptr %iLimit, align 4
  %cmp16 = icmp sle i32 %13, %14
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load ptr, ptr %z.addr, align 8
  %16 = load i32, ptr %nByte, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %15, i64 %idxprom
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %17 to i32
  %18 = load ptr, ptr %z.addr, align 8
  %19 = load i32, ptr %nByte, align 4
  %add = add nsw i32 %19, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %18, i64 %idxprom20
  %20 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %20 to i32
  %or = or i32 %conv19, %conv22
  %tobool23 = icmp ne i32 %or, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %tobool23, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %nByte, align 4
  %add24 = add nsw i32 %22, 2
  store i32 %add24, ptr %nByte, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  br label %if.end25

if.end25:                                         ; preds = %for.end, %if.then13
  %23 = load i16, ptr %flags, align 2
  %conv26 = zext i16 %23 to i32
  %or27 = or i32 %conv26, 512
  %conv28 = trunc i32 %or27 to i16
  store i16 %conv28, ptr %flags, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.end25, %if.end4
  %24 = load ptr, ptr %xDel.addr, align 8
  %cmp30 = icmp eq ptr %24, inttoptr (i64 -1 to ptr)
  br i1 %cmp30, label %if.then32, label %if.else58

if.then32:                                        ; preds = %if.end29
  %25 = load i32, ptr %nByte, align 4
  store i32 %25, ptr %nAlloc, align 4
  %26 = load i16, ptr %flags, align 2
  %conv33 = zext i16 %26 to i32
  %and34 = and i32 %conv33, 512
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.then32
  %27 = load i8, ptr %enc.addr, align 1
  %conv37 = zext i8 %27 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  %28 = zext i1 %cmp38 to i64
  %cond40 = select i1 %cmp38, i32 1, i32 2
  %29 = load i32, ptr %nAlloc, align 4
  %add41 = add i32 %29, %cond40
  store i32 %add41, ptr %nAlloc, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.then32
  %30 = load i32, ptr %nByte, align 4
  %31 = load i32, ptr %iLimit, align 4
  %cmp43 = icmp sgt i32 %30, %31
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end42
  %32 = load ptr, ptr %pMem.addr, align 8
  %db46 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %32, i32 0, i32 9
  %33 = load ptr, ptr %db46, align 8
  %call47 = call i32 @sqlite3ErrorToParser(ptr noundef %33, i32 noundef 18)
  store i32 %call47, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end42
  %34 = load ptr, ptr %pMem.addr, align 8
  %35 = load i32, ptr %nAlloc, align 4
  %cmp49 = icmp ugt i32 %35, 32
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end48
  %36 = load i32, ptr %nAlloc, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond51 = phi i32 [ %36, %cond.true ], [ 32, %cond.false ]
  %call52 = call i32 @sqlite3VdbeMemClearAndResize(ptr noundef %34, i32 noundef %cond51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %cond.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %cond.end
  %37 = load ptr, ptr %pMem.addr, align 8
  %z56 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %z56, align 8
  %39 = load ptr, ptr %z.addr, align 8
  %40 = load i32, ptr %nAlloc, align 4
  %conv57 = zext i32 %40 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %39, i64 %conv57, i1 false)
  br label %if.end76

if.else58:                                        ; preds = %if.end29
  %41 = load ptr, ptr %pMem.addr, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %41)
  %42 = load ptr, ptr %z.addr, align 8
  %43 = load ptr, ptr %pMem.addr, align 8
  %z59 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %43, i32 0, i32 5
  store ptr %42, ptr %z59, align 8
  %44 = load ptr, ptr %xDel.addr, align 8
  %cmp60 = icmp eq ptr %44, @sqlite3MallocSize
  br i1 %cmp60, label %if.then62, label %if.else67

if.then62:                                        ; preds = %if.else58
  %45 = load ptr, ptr %pMem.addr, align 8
  %z63 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %z63, align 8
  %47 = load ptr, ptr %pMem.addr, align 8
  %zMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %47, i32 0, i32 6
  store ptr %46, ptr %zMalloc, align 8
  %48 = load ptr, ptr %pMem.addr, align 8
  %db64 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %48, i32 0, i32 9
  %49 = load ptr, ptr %db64, align 8
  %50 = load ptr, ptr %pMem.addr, align 8
  %zMalloc65 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %zMalloc65, align 8
  %call66 = call i32 @sqlite3DbMallocSize(ptr noundef %49, ptr noundef %51)
  %52 = load ptr, ptr %pMem.addr, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %52, i32 0, i32 7
  store i32 %call66, ptr %szMalloc, align 8
  br label %if.end75

if.else67:                                        ; preds = %if.else58
  %53 = load ptr, ptr %xDel.addr, align 8
  %54 = load ptr, ptr %pMem.addr, align 8
  %xDel68 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %54, i32 0, i32 10
  store ptr %53, ptr %xDel68, align 8
  %55 = load ptr, ptr %xDel.addr, align 8
  %cmp69 = icmp eq ptr %55, null
  %56 = zext i1 %cmp69 to i64
  %cond71 = select i1 %cmp69, i32 2048, i32 1024
  %57 = load i16, ptr %flags, align 2
  %conv72 = zext i16 %57 to i32
  %or73 = or i32 %conv72, %cond71
  %conv74 = trunc i32 %or73 to i16
  store i16 %conv74, ptr %flags, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.else67, %if.then62
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end55
  %58 = load i32, ptr %nByte, align 4
  %59 = load ptr, ptr %pMem.addr, align 8
  %n77 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %59, i32 0, i32 4
  store i32 %58, ptr %n77, align 4
  %60 = load i16, ptr %flags, align 2
  %61 = load ptr, ptr %pMem.addr, align 8
  %flags78 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %61, i32 0, i32 1
  store i16 %60, ptr %flags78, align 8
  %62 = load i8, ptr %enc.addr, align 1
  %conv79 = zext i8 %62 to i32
  %cmp80 = icmp eq i32 %conv79, 0
  br i1 %cmp80, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %if.end76
  br label %cond.end85

cond.false83:                                     ; preds = %if.end76
  %63 = load i8, ptr %enc.addr, align 1
  %conv84 = zext i8 %63 to i32
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false83, %cond.true82
  %cond86 = phi i32 [ 1, %cond.true82 ], [ %conv84, %cond.false83 ]
  %conv87 = trunc i32 %cond86 to i8
  %64 = load ptr, ptr %pMem.addr, align 8
  %enc88 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %64, i32 0, i32 2
  store i8 %conv87, ptr %enc88, align 2
  %65 = load ptr, ptr %pMem.addr, align 8
  %enc89 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %65, i32 0, i32 2
  %66 = load i8, ptr %enc89, align 2
  %conv90 = zext i8 %66 to i32
  %cmp91 = icmp ne i32 %conv90, 1
  br i1 %cmp91, label %land.lhs.true, label %if.end96

land.lhs.true:                                    ; preds = %cond.end85
  %67 = load ptr, ptr %pMem.addr, align 8
  %call93 = call i32 @sqlite3VdbeMemHandleBom(ptr noundef %67)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %land.lhs.true
  store i32 7, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %land.lhs.true, %cond.end85
  %68 = load i32, ptr %nByte, align 4
  %69 = load i32, ptr %iLimit, align 4
  %cmp97 = icmp sgt i32 %68, %69
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  store i32 18, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end96
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end100, %if.then99, %if.then95, %if.then54, %if.then45, %if.then
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemSetNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ErrorToParser(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemClearAndResize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemHandleBom(ptr noundef) #0

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
