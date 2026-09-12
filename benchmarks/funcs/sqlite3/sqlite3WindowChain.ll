; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@.str.948 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.949 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.950 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.951 = external hidden unnamed_addr constant [33 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WindowChain(ptr noundef %pParse, ptr noundef %pWin, ptr noundef %pList) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pWin.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pExist = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pWin, ptr %pWin.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pWin.addr, align 8
  %zBase = getelementptr inbounds nuw %struct.Window, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %zBase, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end34

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %5 = load ptr, ptr %pList.addr, align 8
  %6 = load ptr, ptr %pWin.addr, align 8
  %zBase2 = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %zBase2, align 8
  %call = call ptr @windowFind(ptr noundef %4, ptr noundef %5, ptr noundef %7)
  store ptr %call, ptr %pExist, align 8
  %8 = load ptr, ptr %pExist, align 8
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then4, label %if.end33

if.then4:                                         ; preds = %if.then
  store ptr null, ptr %zErr, align 8
  %9 = load ptr, ptr %pWin.addr, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pPartition, align 8
  %tobool5 = icmp ne ptr %10, null
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  store ptr @.str.948, ptr %zErr, align 8
  br label %if.end15

if.else:                                          ; preds = %if.then4
  %11 = load ptr, ptr %pExist, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %pOrderBy, align 8
  %tobool7 = icmp ne ptr %12, null
  br i1 %tobool7, label %land.lhs.true, label %if.else11

land.lhs.true:                                    ; preds = %if.else
  %13 = load ptr, ptr %pWin.addr, align 8
  %pOrderBy8 = getelementptr inbounds nuw %struct.Window, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pOrderBy8, align 8
  %tobool9 = icmp ne ptr %14, null
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %land.lhs.true
  store ptr @.str.949, ptr %zErr, align 8
  br label %if.end14

if.else11:                                        ; preds = %land.lhs.true, %if.else
  %15 = load ptr, ptr %pExist, align 8
  %bImplicitFrame = getelementptr inbounds nuw %struct.Window, ptr %15, i32 0, i32 7
  %16 = load i8, ptr %bImplicitFrame, align 1
  %conv = zext i8 %16 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else11
  store ptr @.str.950, ptr %zErr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.else11
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then6
  %17 = load ptr, ptr %zErr, align 8
  %tobool16 = icmp ne ptr %17, null
  br i1 %tobool16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end15
  %18 = load ptr, ptr %pParse.addr, align 8
  %19 = load ptr, ptr %zErr, align 8
  %20 = load ptr, ptr %pWin.addr, align 8
  %zBase18 = getelementptr inbounds nuw %struct.Window, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %zBase18, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %18, ptr noundef @.str.951, ptr noundef %19, ptr noundef %21)
  br label %if.end32

if.else19:                                        ; preds = %if.end15
  %22 = load ptr, ptr %db, align 8
  %23 = load ptr, ptr %pExist, align 8
  %pPartition20 = getelementptr inbounds nuw %struct.Window, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %pPartition20, align 8
  %call21 = call ptr @sqlite3ExprListDup(ptr noundef %22, ptr noundef %24, i32 noundef 0)
  %25 = load ptr, ptr %pWin.addr, align 8
  %pPartition22 = getelementptr inbounds nuw %struct.Window, ptr %25, i32 0, i32 2
  store ptr %call21, ptr %pPartition22, align 8
  %26 = load ptr, ptr %pExist, align 8
  %pOrderBy23 = getelementptr inbounds nuw %struct.Window, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pOrderBy23, align 8
  %tobool24 = icmp ne ptr %27, null
  br i1 %tobool24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.else19
  %28 = load ptr, ptr %db, align 8
  %29 = load ptr, ptr %pExist, align 8
  %pOrderBy26 = getelementptr inbounds nuw %struct.Window, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %pOrderBy26, align 8
  %call27 = call ptr @sqlite3ExprListDup(ptr noundef %28, ptr noundef %30, i32 noundef 0)
  %31 = load ptr, ptr %pWin.addr, align 8
  %pOrderBy28 = getelementptr inbounds nuw %struct.Window, ptr %31, i32 0, i32 3
  store ptr %call27, ptr %pOrderBy28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.else19
  %32 = load ptr, ptr %db, align 8
  %33 = load ptr, ptr %pWin.addr, align 8
  %zBase30 = getelementptr inbounds nuw %struct.Window, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %zBase30, align 8
  call void @sqlite3DbFree(ptr noundef %32, ptr noundef %34)
  %35 = load ptr, ptr %pWin.addr, align 8
  %zBase31 = getelementptr inbounds nuw %struct.Window, ptr %35, i32 0, i32 1
  store ptr null, ptr %zBase31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.then17
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @windowFind(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
