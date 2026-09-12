; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.1076 = external hidden unnamed_addr constant [68 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExpirePreparedStatements(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @createCollation(ptr noundef %db, ptr noundef %zName, i8 noundef zeroext %enc, ptr noundef %pCtx, ptr noundef %xCompare, ptr noundef %xDel) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  %pCtx.addr = alloca ptr, align 8
  %xCompare.addr = alloca ptr, align 8
  %xDel.addr = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %enc2 = alloca i32, align 4
  %aColl = alloca ptr, align 8
  %j = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %xCompare, ptr %xCompare.addr, align 8
  store ptr %xDel, ptr %xDel.addr, align 8
  %0 = load i8, ptr %enc.addr, align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %enc2, align 4
  %1 = load i32, ptr %enc2, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %enc2, align 4
  %cmp2 = icmp eq i32 %2, 8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, ptr %enc2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i32, ptr %enc2, align 4
  %cmp4 = icmp slt i32 %3, 1
  br i1 %cmp4, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %4 = load i32, ptr %enc2, align 4
  %cmp7 = icmp sgt i32 %4, 3
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  %call = call i32 @sqlite3MisuseError(i32 noundef 158767)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false6
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load i32, ptr %enc2, align 4
  %conv11 = trunc i32 %6 to i8
  %7 = load ptr, ptr %zName.addr, align 8
  %call12 = call ptr @sqlite3FindCollSeq(ptr noundef %5, i8 noundef zeroext %conv11, ptr noundef %7, i32 noundef 0)
  store ptr %call12, ptr %pColl, align 8
  %8 = load ptr, ptr %pColl, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.end10
  %9 = load ptr, ptr %pColl, align 8
  %xCmp = getelementptr inbounds nuw %struct.CollSeq, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %xCmp, align 8
  %tobool13 = icmp ne ptr %10, null
  br i1 %tobool13, label %if.then14, label %if.end41

if.then14:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %db.addr, align 8
  %nVdbeActive = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 36
  %12 = load i32, ptr %nVdbeActive, align 8
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  %13 = load ptr, ptr %db.addr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %13, i32 noundef 5, ptr noundef @.str.1076)
  store i32 5, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then14
  %14 = load ptr, ptr %db.addr, align 8
  call void @sqlite3ExpirePreparedStatements(ptr noundef %14, i32 noundef 0)
  %15 = load ptr, ptr %pColl, align 8
  %enc18 = getelementptr inbounds nuw %struct.CollSeq, ptr %15, i32 0, i32 1
  %16 = load i8, ptr %enc18, align 8
  %conv19 = zext i8 %16 to i32
  %and = and i32 %conv19, -9
  %17 = load i32, ptr %enc2, align 4
  %cmp20 = icmp eq i32 %and, %17
  br i1 %cmp20, label %if.then22, label %if.end40

if.then22:                                        ; preds = %if.end17
  %18 = load ptr, ptr %db.addr, align 8
  %aCollSeq = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 73
  %19 = load ptr, ptr %zName.addr, align 8
  %call23 = call ptr @sqlite3HashFind(ptr noundef %aCollSeq, ptr noundef %19)
  store ptr %call23, ptr %aColl, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then22
  %20 = load i32, ptr %j, align 4
  %cmp24 = icmp slt i32 %20, 3
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %aColl, align 8
  %22 = load i32, ptr %j, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds %struct.CollSeq, ptr %21, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %23 = load ptr, ptr %p, align 8
  %enc26 = getelementptr inbounds nuw %struct.CollSeq, ptr %23, i32 0, i32 1
  %24 = load i8, ptr %enc26, align 8
  %conv27 = zext i8 %24 to i32
  %25 = load ptr, ptr %pColl, align 8
  %enc28 = getelementptr inbounds nuw %struct.CollSeq, ptr %25, i32 0, i32 1
  %26 = load i8, ptr %enc28, align 8
  %conv29 = zext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv27, %conv29
  br i1 %cmp30, label %if.then32, label %if.end39

if.then32:                                        ; preds = %for.body
  %27 = load ptr, ptr %p, align 8
  %xDel33 = getelementptr inbounds nuw %struct.CollSeq, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %xDel33, align 8
  %tobool34 = icmp ne ptr %28, null
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then32
  %29 = load ptr, ptr %p, align 8
  %xDel36 = getelementptr inbounds nuw %struct.CollSeq, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %xDel36, align 8
  %31 = load ptr, ptr %p, align 8
  %pUser = getelementptr inbounds nuw %struct.CollSeq, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %pUser, align 8
  call void %30(ptr noundef %32)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then32
  %33 = load ptr, ptr %p, align 8
  %xCmp38 = getelementptr inbounds nuw %struct.CollSeq, ptr %33, i32 0, i32 3
  store ptr null, ptr %xCmp38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end39
  %34 = load i32, ptr %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end40

if.end40:                                         ; preds = %for.end, %if.end17
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %land.lhs.true, %if.end10
  %35 = load ptr, ptr %db.addr, align 8
  %36 = load i32, ptr %enc2, align 4
  %conv42 = trunc i32 %36 to i8
  %37 = load ptr, ptr %zName.addr, align 8
  %call43 = call ptr @sqlite3FindCollSeq(ptr noundef %35, i8 noundef zeroext %conv42, ptr noundef %37, i32 noundef 1)
  store ptr %call43, ptr %pColl, align 8
  %38 = load ptr, ptr %pColl, align 8
  %cmp44 = icmp eq ptr %38, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end41
  store i32 7, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end41
  %39 = load ptr, ptr %xCompare.addr, align 8
  %40 = load ptr, ptr %pColl, align 8
  %xCmp48 = getelementptr inbounds nuw %struct.CollSeq, ptr %40, i32 0, i32 3
  store ptr %39, ptr %xCmp48, align 8
  %41 = load ptr, ptr %pCtx.addr, align 8
  %42 = load ptr, ptr %pColl, align 8
  %pUser49 = getelementptr inbounds nuw %struct.CollSeq, ptr %42, i32 0, i32 2
  store ptr %41, ptr %pUser49, align 8
  %43 = load ptr, ptr %xDel.addr, align 8
  %44 = load ptr, ptr %pColl, align 8
  %xDel50 = getelementptr inbounds nuw %struct.CollSeq, ptr %44, i32 0, i32 4
  store ptr %43, ptr %xDel50, align 8
  %45 = load i32, ptr %enc2, align 4
  %46 = load i8, ptr %enc.addr, align 1
  %conv51 = zext i8 %46 to i32
  %and52 = and i32 %conv51, 8
  %or = or i32 %45, %and52
  %conv53 = trunc i32 %or to i8
  %47 = load ptr, ptr %pColl, align 8
  %enc54 = getelementptr inbounds nuw %struct.CollSeq, ptr %47, i32 0, i32 1
  store i8 %conv53, ptr %enc54, align 8
  %48 = load ptr, ptr %db.addr, align 8
  call void @sqlite3Error(ptr noundef %48, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end47, %if.then46, %if.then16, %if.then9
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindCollSeq(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

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
