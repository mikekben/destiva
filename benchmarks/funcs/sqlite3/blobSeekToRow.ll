; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Incrblob = type { i32, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.405 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.406 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.407 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.408 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.409 = external hidden unnamed_addr constant [20 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_finalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_step(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @blobSeekToRow(ptr noundef %p, i64 noundef %iRow, ptr noundef %pzErr) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iRow.addr = alloca i64, align 8
  %pzErr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zErr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pC = alloca ptr, align 8
  %type = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i64 %iRow, ptr %iRow.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store ptr null, ptr %zErr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pStmt = getelementptr inbounds nuw %struct.Incrblob, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pStmt, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %v, align 8
  %aMem = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %aMem, align 8
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %3, i64 1
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx, i32 0, i32 1
  store i16 4, ptr %flags, align 8
  %4 = load i64, ptr %iRow.addr, align 8
  %5 = load ptr, ptr %v, align 8
  %aMem1 = getelementptr inbounds nuw %struct.Vdbe, ptr %5, i32 0, i32 19
  %6 = load ptr, ptr %aMem1, align 8
  %arrayidx2 = getelementptr inbounds %struct.sqlite3_value, ptr %6, i64 1
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx2, i32 0, i32 0
  store i64 %4, ptr %u, align 8
  %7 = load ptr, ptr %v, align 8
  %pc = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 10
  %8 = load i32, ptr %pc, align 4
  %cmp = icmp sgt i32 %8, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %v, align 8
  %pc3 = getelementptr inbounds nuw %struct.Vdbe, ptr %9, i32 0, i32 10
  store i32 4, ptr %pc3, align 4
  %10 = load ptr, ptr %v, align 8
  %call = call i32 @sqlite3VdbeExec(ptr noundef %10)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %p.addr, align 8
  %pStmt4 = getelementptr inbounds nuw %struct.Incrblob, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pStmt4, align 8
  %call5 = call i32 @sqlite3_step(ptr noundef %12)
  store i32 %call5, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %13, 100
  br i1 %cmp6, label %if.then7, label %if.end40

if.then7:                                         ; preds = %if.end
  %14 = load ptr, ptr %v, align 8
  %apCsr = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 21
  %15 = load ptr, ptr %apCsr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx8, align 8
  store ptr %16, ptr %pC, align 8
  %17 = load ptr, ptr %pC, align 8
  %nHdrParsed = getelementptr inbounds nuw %struct.VdbeCursor, ptr %17, i32 0, i32 17
  %18 = load i16, ptr %nHdrParsed, align 2
  %conv = zext i16 %18 to i32
  %19 = load ptr, ptr %p.addr, align 8
  %iCol = getelementptr inbounds nuw %struct.Incrblob, ptr %19, i32 0, i32 2
  %20 = load i16, ptr %iCol, align 8
  %conv9 = zext i16 %20 to i32
  %cmp10 = icmp sgt i32 %conv, %conv9
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  %21 = load ptr, ptr %pC, align 8
  %aType = getelementptr inbounds nuw %struct.VdbeCursor, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %p.addr, align 8
  %iCol12 = getelementptr inbounds nuw %struct.Incrblob, ptr %22, i32 0, i32 2
  %23 = load i16, ptr %iCol12, align 8
  %idxprom = zext i16 %23 to i64
  %arrayidx13 = getelementptr inbounds nuw [1 x i32], ptr %aType, i64 0, i64 %idxprom
  %24 = load i32, ptr %arrayidx13, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %type, align 4
  %25 = load i32, ptr %type, align 4
  %cmp14 = icmp ult i32 %25, 12
  br i1 %cmp14, label %if.then16, label %if.else30

if.then16:                                        ; preds = %cond.end
  %26 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Incrblob, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %db, align 8
  %28 = load i32, ptr %type, align 4
  %cmp17 = icmp eq i32 %28, 0
  br i1 %cmp17, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %if.then16
  br label %cond.end24

cond.false20:                                     ; preds = %if.then16
  %29 = load i32, ptr %type, align 4
  %cmp21 = icmp eq i32 %29, 7
  %30 = zext i1 %cmp21 to i64
  %cond23 = select i1 %cmp21, ptr @.str.407, ptr @.str.408
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false20, %cond.true19
  %cond25 = phi ptr [ @.str.406, %cond.true19 ], [ %cond23, %cond.false20 ]
  %call26 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %27, ptr noundef @.str.405, ptr noundef %cond25)
  store ptr %call26, ptr %zErr, align 8
  store i32 1, ptr %rc, align 4
  %31 = load ptr, ptr %p.addr, align 8
  %pStmt27 = getelementptr inbounds nuw %struct.Incrblob, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %pStmt27, align 8
  %call28 = call i32 @sqlite3_finalize(ptr noundef %32)
  %33 = load ptr, ptr %p.addr, align 8
  %pStmt29 = getelementptr inbounds nuw %struct.Incrblob, ptr %33, i32 0, i32 4
  store ptr null, ptr %pStmt29, align 8
  br label %if.end39

if.else30:                                        ; preds = %cond.end
  %34 = load ptr, ptr %pC, align 8
  %aType31 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %34, i32 0, i32 23
  %35 = load ptr, ptr %p.addr, align 8
  %iCol32 = getelementptr inbounds nuw %struct.Incrblob, ptr %35, i32 0, i32 2
  %36 = load i16, ptr %iCol32, align 8
  %conv33 = zext i16 %36 to i32
  %37 = load ptr, ptr %pC, align 8
  %nField = getelementptr inbounds nuw %struct.VdbeCursor, ptr %37, i32 0, i32 16
  %38 = load i16, ptr %nField, align 8
  %conv34 = sext i16 %38 to i32
  %add = add nsw i32 %conv33, %conv34
  %idxprom35 = sext i32 %add to i64
  %arrayidx36 = getelementptr inbounds [1 x i32], ptr %aType31, i64 0, i64 %idxprom35
  %39 = load i32, ptr %arrayidx36, align 4
  %40 = load ptr, ptr %p.addr, align 8
  %iOffset = getelementptr inbounds nuw %struct.Incrblob, ptr %40, i32 0, i32 1
  store i32 %39, ptr %iOffset, align 4
  %41 = load i32, ptr %type, align 4
  %call37 = call i32 @sqlite3VdbeSerialTypeLen(i32 noundef %41)
  %42 = load ptr, ptr %p.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.Incrblob, ptr %42, i32 0, i32 0
  store i32 %call37, ptr %nByte, align 8
  %43 = load ptr, ptr %pC, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %43, i32 0, i32 12
  %44 = load ptr, ptr %uc, align 8
  %45 = load ptr, ptr %p.addr, align 8
  %pCsr = getelementptr inbounds nuw %struct.Incrblob, ptr %45, i32 0, i32 3
  store ptr %44, ptr %pCsr, align 8
  %46 = load ptr, ptr %p.addr, align 8
  %pCsr38 = getelementptr inbounds nuw %struct.Incrblob, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %pCsr38, align 8
  call void @sqlite3BtreeIncrblobCursor(ptr noundef %47)
  br label %if.end39

if.end39:                                         ; preds = %if.else30, %cond.end24
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end
  %48 = load i32, ptr %rc, align 4
  %cmp41 = icmp eq i32 %48, 100
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.end40
  store i32 0, ptr %rc, align 4
  br label %if.end62

if.else44:                                        ; preds = %if.end40
  %49 = load ptr, ptr %p.addr, align 8
  %pStmt45 = getelementptr inbounds nuw %struct.Incrblob, ptr %49, i32 0, i32 4
  %50 = load ptr, ptr %pStmt45, align 8
  %tobool = icmp ne ptr %50, null
  br i1 %tobool, label %if.then46, label %if.end61

if.then46:                                        ; preds = %if.else44
  %51 = load ptr, ptr %p.addr, align 8
  %pStmt47 = getelementptr inbounds nuw %struct.Incrblob, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %pStmt47, align 8
  %call48 = call i32 @sqlite3_finalize(ptr noundef %52)
  store i32 %call48, ptr %rc, align 4
  %53 = load ptr, ptr %p.addr, align 8
  %pStmt49 = getelementptr inbounds nuw %struct.Incrblob, ptr %53, i32 0, i32 4
  store ptr null, ptr %pStmt49, align 8
  %54 = load i32, ptr %rc, align 4
  %cmp50 = icmp eq i32 %54, 0
  br i1 %cmp50, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.then46
  %55 = load ptr, ptr %p.addr, align 8
  %db53 = getelementptr inbounds nuw %struct.Incrblob, ptr %55, i32 0, i32 5
  %56 = load ptr, ptr %db53, align 8
  %57 = load i64, ptr %iRow.addr, align 8
  %call54 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %56, ptr noundef @.str.409, i64 noundef %57)
  store ptr %call54, ptr %zErr, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end60

if.else55:                                        ; preds = %if.then46
  %58 = load ptr, ptr %p.addr, align 8
  %db56 = getelementptr inbounds nuw %struct.Incrblob, ptr %58, i32 0, i32 5
  %59 = load ptr, ptr %db56, align 8
  %60 = load ptr, ptr %p.addr, align 8
  %db57 = getelementptr inbounds nuw %struct.Incrblob, ptr %60, i32 0, i32 5
  %61 = load ptr, ptr %db57, align 8
  %call58 = call ptr @sqlite3_errmsg(ptr noundef %61)
  %call59 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %59, ptr noundef @.str.20, ptr noundef %call58)
  store ptr %call59, ptr %zErr, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else55, %if.then52
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.else44
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then43
  %62 = load ptr, ptr %zErr, align 8
  %63 = load ptr, ptr %pzErr.addr, align 8
  store ptr %62, ptr %63, align 8
  %64 = load i32, ptr %rc, align 4
  ret i32 %64
}

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_errmsg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeExec(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSerialTypeLen(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeIncrblobCursor(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
