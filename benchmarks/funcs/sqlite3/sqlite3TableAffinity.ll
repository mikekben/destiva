; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeDb(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3TableAffinity(ptr noundef %v, ptr noundef %pTab, i32 noundef %iReg) #1 {
entry:
  %v.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %iReg.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %zColAff = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %iReg, ptr %iReg.addr, align 4
  %0 = load ptr, ptr %pTab.addr, align 8
  %zColAff1 = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %zColAff1, align 8
  store ptr %1, ptr %zColAff, align 8
  %2 = load ptr, ptr %zColAff, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %v.addr, align 8
  %call = call ptr @sqlite3VdbeDb(ptr noundef %3)
  store ptr %call, ptr %db, align 8
  %4 = load ptr, ptr %pTab.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %4, i32 0, i32 11
  %5 = load i16, ptr %nCol, align 2
  %conv = sext i16 %5 to i32
  %add = add nsw i32 %conv, 1
  %conv2 = sext i32 %add to i64
  %call3 = call ptr @sqlite3DbMallocRaw(ptr noundef null, i64 noundef %conv2)
  store ptr %call3, ptr %zColAff, align 8
  %6 = load ptr, ptr %zColAff, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %7)
  br label %if.end30

if.end:                                           ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %pTab.addr, align 8
  %nCol5 = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 11
  %10 = load i16, ptr %nCol5, align 2
  %conv6 = sext i16 %10 to i32
  %cmp7 = icmp slt i32 %8, %conv6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %aCol, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %12, i64 %idxprom
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 4
  %14 = load i8, ptr %affinity, align 1
  %15 = load ptr, ptr %zColAff, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 %idxprom9
  store i8 %14, ptr %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %land.end, %for.end
  %18 = load ptr, ptr %zColAff, align 8
  %19 = load i32, ptr %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, ptr %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %18, i64 %idxprom11
  store i8 0, ptr %arrayidx12, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i32, ptr %i, align 4
  %cmp13 = icmp sge i32 %20, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %21 = load ptr, ptr %zColAff, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %21, i64 %idxprom15
  %23 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %23 to i32
  %cmp18 = icmp sle i32 %conv17, 65
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %24 = phi i1 [ false, %do.cond ], [ %cmp18, %land.rhs ]
  br i1 %24, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %land.end
  %25 = load ptr, ptr %zColAff, align 8
  %26 = load ptr, ptr %pTab.addr, align 8
  %zColAff20 = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 5
  store ptr %25, ptr %zColAff20, align 8
  br label %if.end21

if.end21:                                         ; preds = %do.end, %entry
  %27 = load ptr, ptr %zColAff, align 8
  %call22 = call i64 @strlen(ptr noundef %27) #2
  %and = and i64 %call22, 1073741823
  %conv23 = trunc i64 %and to i32
  store i32 %conv23, ptr %i, align 4
  %28 = load i32, ptr %i, align 4
  %tobool24 = icmp ne i32 %28, 0
  br i1 %tobool24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end21
  %29 = load i32, ptr %iReg.addr, align 4
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then25
  %30 = load ptr, ptr %v.addr, align 8
  %31 = load i32, ptr %iReg.addr, align 4
  %32 = load i32, ptr %i, align 4
  %33 = load ptr, ptr %zColAff, align 8
  %34 = load i32, ptr %i, align 4
  %call28 = call i32 @sqlite3VdbeAddOp4(ptr noundef %30, i32 noundef 91, i32 noundef %31, i32 noundef %32, i32 noundef 0, ptr noundef %33, i32 noundef %34)
  br label %if.end29

if.else:                                          ; preds = %if.then25
  %35 = load ptr, ptr %v.addr, align 8
  %36 = load ptr, ptr %zColAff, align 8
  %37 = load i32, ptr %i, align 4
  call void @sqlite3VdbeChangeP4(ptr noundef %35, i32 noundef -1, ptr noundef %36, i32 noundef %37)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then27
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end21, %if.then4
  ret void
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
