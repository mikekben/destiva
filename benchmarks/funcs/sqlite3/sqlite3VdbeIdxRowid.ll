; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

@sqlite3SmallTypeSizes = external hidden constant [128 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreePayloadSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint32(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemFromBtree(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSerialGet(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeIdxRowid(ptr noundef %db, ptr noundef %pCur, ptr noundef %rowid) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pCur.addr = alloca ptr, align 8
  %rowid.addr = alloca ptr, align 8
  %nCellKey = alloca i64, align 8
  %rc = alloca i32, align 4
  %szHdr = alloca i32, align 4
  %typeRowid = alloca i32, align 4
  %lenRowid = alloca i32, align 4
  %m = alloca %struct.sqlite3_value, align 8
  %v = alloca %struct.sqlite3_value, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %rowid, ptr %rowid.addr, align 8
  store i64 0, ptr %nCellKey, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @sqlite3BtreePayloadSize(ptr noundef %0)
  %conv = zext i32 %call to i64
  store i64 %conv, ptr %nCellKey, align 8
  %1 = load ptr, ptr %db.addr, align 8
  call void @sqlite3VdbeMemInit(ptr noundef %m, ptr noundef %1, i16 noundef zeroext 0)
  %2 = load ptr, ptr %pCur.addr, align 8
  %3 = load i64, ptr %nCellKey, align 8
  %conv1 = trunc i64 %3 to i32
  %call2 = call i32 @sqlite3VdbeMemFromBtree(ptr noundef %2, i32 noundef 0, i32 noundef %conv1, ptr noundef %m)
  store i32 %call2, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rc, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  %6 = load ptr, ptr %z, align 8
  %7 = load i8, ptr %6, align 1
  %conv3 = zext i8 %7 to i32
  %cmp = icmp slt i32 %conv3, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %z5 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  %8 = load ptr, ptr %z5, align 8
  %9 = load i8, ptr %8, align 1
  %conv6 = zext i8 %9 to i32
  store i32 %conv6, ptr %szHdr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %z7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  %10 = load ptr, ptr %z7, align 8
  %call8 = call zeroext i8 @sqlite3GetVarint32(ptr noundef %10, ptr noundef %szHdr)
  %conv9 = zext i8 %call8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv9, %cond.false ]
  %conv10 = trunc i32 %cond to i8
  %11 = load i32, ptr %szHdr, align 4
  %cmp11 = icmp ult i32 %11, 3
  br i1 %cmp11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %12 = load i32, ptr %szHdr, align 4
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 4
  %13 = load i32, ptr %n, align 4
  %cmp13 = icmp ugt i32 %12, %13
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %cond.end
  br label %idx_rowid_corruption

if.end16:                                         ; preds = %lor.lhs.false
  %z17 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  %14 = load ptr, ptr %z17, align 8
  %15 = load i32, ptr %szHdr, align 4
  %sub = sub i32 %15, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %14, i64 %idxprom
  %16 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %16 to i32
  %cmp19 = icmp slt i32 %conv18, 128
  br i1 %cmp19, label %cond.true21, label %cond.false27

cond.true21:                                      ; preds = %if.end16
  %z22 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  %17 = load ptr, ptr %z22, align 8
  %18 = load i32, ptr %szHdr, align 4
  %sub23 = sub i32 %18, 1
  %idxprom24 = zext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %17, i64 %idxprom24
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  store i32 %conv26, ptr %typeRowid, align 4
  br label %cond.end34

cond.false27:                                     ; preds = %if.end16
  %z28 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  %20 = load ptr, ptr %z28, align 8
  %21 = load i32, ptr %szHdr, align 4
  %sub29 = sub i32 %21, 1
  %idxprom30 = zext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %20, i64 %idxprom30
  %call32 = call zeroext i8 @sqlite3GetVarint32(ptr noundef %arrayidx31, ptr noundef %typeRowid)
  %conv33 = zext i8 %call32 to i32
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false27, %cond.true21
  %cond35 = phi i32 [ 1, %cond.true21 ], [ %conv33, %cond.false27 ]
  %conv36 = trunc i32 %cond35 to i8
  %22 = load i32, ptr %typeRowid, align 4
  %cmp37 = icmp ult i32 %22, 1
  br i1 %cmp37, label %if.then45, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %cond.end34
  %23 = load i32, ptr %typeRowid, align 4
  %cmp40 = icmp ugt i32 %23, 9
  br i1 %cmp40, label %if.then45, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %24 = load i32, ptr %typeRowid, align 4
  %cmp43 = icmp eq i32 %24, 7
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false42, %lor.lhs.false39, %cond.end34
  br label %idx_rowid_corruption

if.end46:                                         ; preds = %lor.lhs.false42
  %25 = load i32, ptr %typeRowid, align 4
  %idxprom47 = zext i32 %25 to i64
  %arrayidx48 = getelementptr inbounds nuw [128 x i8], ptr @sqlite3SmallTypeSizes, i64 0, i64 %idxprom47
  %26 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %26 to i32
  store i32 %conv49, ptr %lenRowid, align 4
  %n50 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 4
  %27 = load i32, ptr %n50, align 4
  %28 = load i32, ptr %szHdr, align 4
  %29 = load i32, ptr %lenRowid, align 4
  %add = add i32 %28, %29
  %cmp51 = icmp ult i32 %27, %add
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end46
  br label %idx_rowid_corruption

if.end54:                                         ; preds = %if.end46
  %z55 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  %30 = load ptr, ptr %z55, align 8
  %n56 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 4
  %31 = load i32, ptr %n56, align 4
  %32 = load i32, ptr %lenRowid, align 4
  %sub57 = sub i32 %31, %32
  %idxprom58 = zext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %30, i64 %idxprom58
  %33 = load i32, ptr %typeRowid, align 4
  %call60 = call i32 @sqlite3VdbeSerialGet(ptr noundef %arrayidx59, i32 noundef %33, ptr noundef %v)
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %v, i32 0, i32 0
  %34 = load i64, ptr %u, align 8
  %35 = load ptr, ptr %rowid.addr, align 8
  store i64 %34, ptr %35, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %m)
  store i32 0, ptr %retval, align 4
  br label %return

idx_rowid_corruption:                             ; preds = %if.then53, %if.then45, %if.then15
  call void @sqlite3VdbeMemRelease(ptr noundef %m)
  %call61 = call i32 @sqlite3CorruptError(i32 noundef 81332)
  store i32 %call61, ptr %retval, align 4
  br label %return

return:                                           ; preds = %idx_rowid_corruption, %if.end54, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemInit(ptr noundef, ptr noundef, i16 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
