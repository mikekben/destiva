; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalFindFrame(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @readDbPage(ptr noundef %pPg) #2 {
entry:
  %retval = alloca i32, align 4
  %pPg.addr = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iFrame = alloca i32, align 4
  %iOffset = alloca i64, align 8
  %dbFileVers27 = alloca ptr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %iFrame, align 4
  %2 = load ptr, ptr %pPager, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 59
  %3 = load ptr, ptr %pWal, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pPager, align 8
  %pWal2 = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 59
  %5 = load ptr, ptr %pWal2, align 8
  %6 = load ptr, ptr %pPg.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %pgno, align 8
  %call = call i32 @sqlite3WalFindFrame(ptr noundef %5, i32 noundef %7, ptr noundef %iFrame)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %9 = load i32, ptr %rc, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %10 = load i32, ptr %iFrame, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %11 = load ptr, ptr %pPager, align 8
  %pWal7 = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 59
  %12 = load ptr, ptr %pWal7, align 8
  %13 = load i32, ptr %iFrame, align 4
  %14 = load ptr, ptr %pPager, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 47
  %15 = load i32, ptr %pageSize, align 4
  %16 = load ptr, ptr %pPg.addr, align 8
  %pData = getelementptr inbounds nuw %struct.PgHdr, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %pData, align 8
  %call8 = call i32 @sqlite3WalReadFrame(ptr noundef %12, i32 noundef %13, i32 noundef %15, ptr noundef %17)
  store i32 %call8, ptr %rc, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end4
  %18 = load ptr, ptr %pPg.addr, align 8
  %pgno9 = getelementptr inbounds nuw %struct.PgHdr, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %pgno9, align 8
  %sub = sub i32 %19, 1
  %conv = zext i32 %sub to i64
  %20 = load ptr, ptr %pPager, align 8
  %pageSize10 = getelementptr inbounds nuw %struct.Pager, ptr %20, i32 0, i32 47
  %21 = load i32, ptr %pageSize10, align 4
  %conv11 = sext i32 %21 to i64
  %mul = mul nsw i64 %conv, %conv11
  store i64 %mul, ptr %iOffset, align 8
  %22 = load ptr, ptr %pPager, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 30
  %23 = load ptr, ptr %fd, align 8
  %24 = load ptr, ptr %pPg.addr, align 8
  %pData12 = getelementptr inbounds nuw %struct.PgHdr, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %pData12, align 8
  %26 = load ptr, ptr %pPager, align 8
  %pageSize13 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 47
  %27 = load i32, ptr %pageSize13, align 4
  %28 = load i64, ptr %iOffset, align 8
  %call14 = call i32 @sqlite3OsRead(ptr noundef %23, ptr noundef %25, i32 noundef %27, i64 noundef %28)
  store i32 %call14, ptr %rc, align 4
  %29 = load i32, ptr %rc, align 4
  %cmp15 = icmp eq i32 %29, 522
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else
  store i32 0, ptr %rc, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then6
  %30 = load ptr, ptr %pPg.addr, align 8
  %pgno20 = getelementptr inbounds nuw %struct.PgHdr, ptr %30, i32 0, i32 6
  %31 = load i32, ptr %pgno20, align 8
  %cmp21 = icmp eq i32 %31, 1
  br i1 %cmp21, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end19
  %32 = load i32, ptr %rc, align 4
  %tobool24 = icmp ne i32 %32, 0
  br i1 %tobool24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then23
  %33 = load ptr, ptr %pPager, align 8
  %dbFileVers = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 39
  %arraydecay = getelementptr inbounds [16 x i8], ptr %dbFileVers, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 -1, i64 16, i1 false)
  br label %if.end30

if.else26:                                        ; preds = %if.then23
  %34 = load ptr, ptr %pPg.addr, align 8
  %pData28 = getelementptr inbounds nuw %struct.PgHdr, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %pData28, align 8
  %arrayidx = getelementptr inbounds i8, ptr %35, i64 24
  store ptr %arrayidx, ptr %dbFileVers27, align 8
  %36 = load ptr, ptr %pPager, align 8
  %dbFileVers29 = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 39
  %37 = load ptr, ptr %dbFileVers27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dbFileVers29, ptr align 1 %37, i64 16, i1 false)
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.then25
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end19
  %38 = load i32, ptr %rc, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then3
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalReadFrame(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
