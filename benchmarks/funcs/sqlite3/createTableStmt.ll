; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.295 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.670 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.671 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.672 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.673 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.674 = external hidden unnamed_addr constant [14 x i8], align 1
@createTableStmt.azType = external hidden constant [5 x ptr], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @createTableStmt(ptr noundef %db, ptr noundef %p) #1 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %zStmt = alloca ptr, align 8
  %zSep = alloca ptr, align 8
  %zSep2 = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %len = alloca i32, align 4
  %zType = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %n, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %aCol, align 8
  store ptr %1, ptr %pCol, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 11
  %4 = load i16, ptr %nCol, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp slt i32 %2, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pCol, align 8
  %zName = getelementptr inbounds nuw %struct.Column, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %zName, align 8
  %call = call i32 @identLength(ptr noundef %6)
  %add = add nsw i32 %call, 5
  %7 = load i32, ptr %n, align 4
  %add2 = add nsw i32 %7, %add
  store i32 %add2, ptr %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  %9 = load ptr, ptr %pCol, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.Column, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pCol, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %p.addr, align 8
  %zName3 = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zName3, align 8
  %call4 = call i32 @identLength(ptr noundef %11)
  %12 = load i32, ptr %n, align 4
  %add5 = add nsw i32 %12, %call4
  store i32 %add5, ptr %n, align 4
  %13 = load i32, ptr %n, align 4
  %cmp6 = icmp slt i32 %13, 50
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store ptr @.str.3, ptr %zSep, align 8
  store ptr @.str.670, ptr %zSep2, align 8
  store ptr @.str.295, ptr %zEnd, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  store ptr @.str.671, ptr %zSep, align 8
  store ptr @.str.672, ptr %zSep2, align 8
  store ptr @.str.673, ptr %zEnd, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %p.addr, align 8
  %nCol8 = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 11
  %15 = load i16, ptr %nCol8, align 2
  %conv9 = sext i16 %15 to i32
  %mul = mul nsw i32 6, %conv9
  %add10 = add nsw i32 35, %mul
  %16 = load i32, ptr %n, align 4
  %add11 = add nsw i32 %16, %add10
  store i32 %add11, ptr %n, align 4
  %17 = load i32, ptr %n, align 4
  %conv12 = sext i32 %17 to i64
  %call13 = call ptr @sqlite3DbMallocRaw(ptr noundef null, i64 noundef %conv12)
  store ptr %call13, ptr %zStmt, align 8
  %18 = load ptr, ptr %zStmt, align 8
  %cmp14 = icmp eq ptr %18, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  %19 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %19)
  store ptr null, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end
  %20 = load i32, ptr %n, align 4
  %21 = load ptr, ptr %zStmt, align 8
  %call18 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %20, ptr noundef %21, ptr noundef @.str.674)
  %22 = load ptr, ptr %zStmt, align 8
  %call19 = call i32 @sqlite3Strlen30(ptr noundef %22)
  store i32 %call19, ptr %k, align 4
  %23 = load ptr, ptr %zStmt, align 8
  %24 = load ptr, ptr %p.addr, align 8
  %zName20 = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zName20, align 8
  call void @identPut(ptr noundef %23, ptr noundef %k, ptr noundef %25)
  %26 = load ptr, ptr %zStmt, align 8
  %27 = load i32, ptr %k, align 4
  %inc21 = add nsw i32 %27, 1
  store i32 %inc21, ptr %k, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 %idxprom
  store i8 40, ptr %arrayidx, align 1
  %28 = load ptr, ptr %p.addr, align 8
  %aCol22 = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %aCol22, align 8
  store ptr %29, ptr %pCol, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc46, %if.end17
  %30 = load i32, ptr %i, align 4
  %31 = load ptr, ptr %p.addr, align 8
  %nCol24 = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 11
  %32 = load i16, ptr %nCol24, align 2
  %conv25 = sext i16 %32 to i32
  %cmp26 = icmp slt i32 %30, %conv25
  br i1 %cmp26, label %for.body28, label %for.end49

for.body28:                                       ; preds = %for.cond23
  %33 = load i32, ptr %n, align 4
  %34 = load i32, ptr %k, align 4
  %sub = sub nsw i32 %33, %34
  %35 = load ptr, ptr %zStmt, align 8
  %36 = load i32, ptr %k, align 4
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %35, i64 %idxprom29
  %37 = load ptr, ptr %zSep, align 8
  %call31 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub, ptr noundef %arrayidx30, ptr noundef %37)
  %38 = load ptr, ptr %zStmt, align 8
  %39 = load i32, ptr %k, align 4
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %38, i64 %idxprom32
  %call34 = call i32 @sqlite3Strlen30(ptr noundef %arrayidx33)
  %40 = load i32, ptr %k, align 4
  %add35 = add nsw i32 %40, %call34
  store i32 %add35, ptr %k, align 4
  %41 = load ptr, ptr %zSep2, align 8
  store ptr %41, ptr %zSep, align 8
  %42 = load ptr, ptr %zStmt, align 8
  %43 = load ptr, ptr %pCol, align 8
  %zName36 = getelementptr inbounds nuw %struct.Column, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %zName36, align 8
  call void @identPut(ptr noundef %42, ptr noundef %k, ptr noundef %44)
  %45 = load ptr, ptr %pCol, align 8
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %45, i32 0, i32 4
  %46 = load i8, ptr %affinity, align 1
  %conv37 = sext i8 %46 to i32
  %sub38 = sub nsw i32 %conv37, 65
  %idxprom39 = sext i32 %sub38 to i64
  %arrayidx40 = getelementptr inbounds [5 x ptr], ptr @createTableStmt.azType, i64 0, i64 %idxprom39
  %47 = load ptr, ptr %arrayidx40, align 8
  store ptr %47, ptr %zType, align 8
  %48 = load ptr, ptr %zType, align 8
  %call41 = call i32 @sqlite3Strlen30(ptr noundef %48)
  store i32 %call41, ptr %len, align 4
  %49 = load ptr, ptr %zStmt, align 8
  %50 = load i32, ptr %k, align 4
  %idxprom42 = sext i32 %50 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %49, i64 %idxprom42
  %51 = load ptr, ptr %zType, align 8
  %52 = load i32, ptr %len, align 4
  %conv44 = sext i32 %52 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx43, ptr align 1 %51, i64 %conv44, i1 false)
  %53 = load i32, ptr %len, align 4
  %54 = load i32, ptr %k, align 4
  %add45 = add nsw i32 %54, %53
  store i32 %add45, ptr %k, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %for.body28
  %55 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %55, 1
  store i32 %inc47, ptr %i, align 4
  %56 = load ptr, ptr %pCol, align 8
  %incdec.ptr48 = getelementptr inbounds nuw %struct.Column, ptr %56, i32 1
  store ptr %incdec.ptr48, ptr %pCol, align 8
  br label %for.cond23, !llvm.loop !8

for.end49:                                        ; preds = %for.cond23
  %57 = load i32, ptr %n, align 4
  %58 = load i32, ptr %k, align 4
  %sub50 = sub nsw i32 %57, %58
  %59 = load ptr, ptr %zStmt, align 8
  %60 = load i32, ptr %k, align 4
  %idxprom51 = sext i32 %60 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %59, i64 %idxprom51
  %61 = load ptr, ptr %zEnd, align 8
  %call53 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub50, ptr noundef %arrayidx52, ptr noundef @.str.20, ptr noundef %61)
  %62 = load ptr, ptr %zStmt, align 8
  store ptr %62, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end49, %if.then16
  %63 = load ptr, ptr %retval, align 8
  ret ptr %63
}

; Function Attrs: nounwind uwtable
declare hidden i32 @identLength(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @identPut(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
