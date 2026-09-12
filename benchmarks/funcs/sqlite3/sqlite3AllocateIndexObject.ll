; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3AllocateIndexObject(ptr noundef %db, i16 noundef signext %nCol, i32 noundef %nExtra, ptr noundef %ppExtra) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %nCol.addr = alloca i16, align 2
  %nExtra.addr = alloca i32, align 4
  %ppExtra.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %pExtra = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i16 %nCol, ptr %nCol.addr, align 2
  store i32 %nExtra, ptr %nExtra.addr, align 4
  store ptr %ppExtra, ptr %ppExtra.addr, align 8
  %0 = load i16, ptr %nCol.addr, align 2
  %conv = sext i16 %0 to i64
  %mul = mul i64 8, %conv
  %add = add i64 %mul, 7
  %and = and i64 %add, -8
  %add1 = add i64 112, %and
  %1 = load i16, ptr %nCol.addr, align 2
  %conv2 = sext i16 %1 to i32
  %add3 = add nsw i32 %conv2, 1
  %conv4 = sext i32 %add3 to i64
  %mul5 = mul i64 2, %conv4
  %2 = load i16, ptr %nCol.addr, align 2
  %conv6 = sext i16 %2 to i64
  %mul7 = mul i64 2, %conv6
  %add8 = add i64 %mul5, %mul7
  %3 = load i16, ptr %nCol.addr, align 2
  %conv9 = sext i16 %3 to i64
  %mul10 = mul i64 1, %conv9
  %add11 = add i64 %add8, %mul10
  %add12 = add i64 %add11, 7
  %and13 = and i64 %add12, -8
  %add14 = add i64 %add1, %and13
  %conv15 = trunc i64 %add14 to i32
  store i32 %conv15, ptr %nByte, align 4
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load i32, ptr %nByte, align 4
  %6 = load i32, ptr %nExtra.addr, align 4
  %add16 = add nsw i32 %5, %6
  %conv17 = sext i32 %add16 to i64
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %4, i64 noundef %conv17)
  store ptr %call, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %8, i64 112
  store ptr %add.ptr, ptr %pExtra, align 8
  %9 = load ptr, ptr %pExtra, align 8
  %10 = load ptr, ptr %p, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %10, i32 0, i32 8
  store ptr %9, ptr %azColl, align 8
  %11 = load i16, ptr %nCol.addr, align 2
  %conv18 = sext i16 %11 to i64
  %mul19 = mul i64 8, %conv18
  %add20 = add i64 %mul19, 7
  %and21 = and i64 %add20, -8
  %12 = load ptr, ptr %pExtra, align 8
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %12, i64 %and21
  store ptr %add.ptr22, ptr %pExtra, align 8
  %13 = load ptr, ptr %pExtra, align 8
  %14 = load ptr, ptr %p, align 8
  %aiRowLogEst = getelementptr inbounds nuw %struct.Index, ptr %14, i32 0, i32 2
  store ptr %13, ptr %aiRowLogEst, align 8
  %15 = load i16, ptr %nCol.addr, align 2
  %conv23 = sext i16 %15 to i32
  %add24 = add nsw i32 %conv23, 1
  %conv25 = sext i32 %add24 to i64
  %mul26 = mul i64 2, %conv25
  %16 = load ptr, ptr %pExtra, align 8
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %16, i64 %mul26
  store ptr %add.ptr27, ptr %pExtra, align 8
  %17 = load ptr, ptr %pExtra, align 8
  %18 = load ptr, ptr %p, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %18, i32 0, i32 1
  store ptr %17, ptr %aiColumn, align 8
  %19 = load i16, ptr %nCol.addr, align 2
  %conv28 = sext i16 %19 to i64
  %mul29 = mul i64 2, %conv28
  %20 = load ptr, ptr %pExtra, align 8
  %add.ptr30 = getelementptr inbounds nuw i8, ptr %20, i64 %mul29
  store ptr %add.ptr30, ptr %pExtra, align 8
  %21 = load ptr, ptr %pExtra, align 8
  %22 = load ptr, ptr %p, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %22, i32 0, i32 7
  store ptr %21, ptr %aSortOrder, align 8
  %23 = load i16, ptr %nCol.addr, align 2
  %24 = load ptr, ptr %p, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %24, i32 0, i32 14
  store i16 %23, ptr %nColumn, align 8
  %25 = load i16, ptr %nCol.addr, align 2
  %conv31 = sext i16 %25 to i32
  %sub = sub nsw i32 %conv31, 1
  %conv32 = trunc i32 %sub to i16
  %26 = load ptr, ptr %p, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 13
  store i16 %conv32, ptr %nKeyCol, align 2
  %27 = load ptr, ptr %p, align 8
  %28 = load i32, ptr %nByte, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %27, i64 %idx.ext
  %29 = load ptr, ptr %ppExtra.addr, align 8
  store ptr %add.ptr33, ptr %29, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load ptr, ptr %p, align 8
  ret ptr %30
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
