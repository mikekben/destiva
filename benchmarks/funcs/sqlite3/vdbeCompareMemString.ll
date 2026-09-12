; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ValueText(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemShallowCopy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemInit(ptr noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeCompareMemString(ptr noundef %pMem1, ptr noundef %pMem2, ptr noundef %pColl, ptr noundef %prcErr) #0 {
entry:
  %retval = alloca i32, align 4
  %pMem1.addr = alloca ptr, align 8
  %pMem2.addr = alloca ptr, align 8
  %pColl.addr = alloca ptr, align 8
  %prcErr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %v1 = alloca ptr, align 8
  %v2 = alloca ptr, align 8
  %c1 = alloca %struct.sqlite3_value, align 8
  %c2 = alloca %struct.sqlite3_value, align 8
  store ptr %pMem1, ptr %pMem1.addr, align 8
  store ptr %pMem2, ptr %pMem2.addr, align 8
  store ptr %pColl, ptr %pColl.addr, align 8
  store ptr %prcErr, ptr %prcErr.addr, align 8
  %0 = load ptr, ptr %pMem1.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %enc, align 2
  %conv = zext i8 %1 to i32
  %2 = load ptr, ptr %pColl.addr, align 8
  %enc1 = getelementptr inbounds nuw %struct.CollSeq, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %enc1, align 8
  %conv2 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pColl.addr, align 8
  %xCmp = getelementptr inbounds nuw %struct.CollSeq, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %xCmp, align 8
  %6 = load ptr, ptr %pColl.addr, align 8
  %pUser = getelementptr inbounds nuw %struct.CollSeq, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pUser, align 8
  %8 = load ptr, ptr %pMem1.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %n, align 4
  %10 = load ptr, ptr %pMem1.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %z, align 8
  %12 = load ptr, ptr %pMem2.addr, align 8
  %n4 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %n4, align 4
  %14 = load ptr, ptr %pMem2.addr, align 8
  %z5 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %z5, align 8
  %call = call i32 %5(ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13, ptr noundef %15)
  store i32 %call, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %pMem1.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_value, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %db, align 8
  call void @sqlite3VdbeMemInit(ptr noundef %c1, ptr noundef %17, i16 noundef zeroext 1)
  %18 = load ptr, ptr %pMem1.addr, align 8
  %db6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %db6, align 8
  call void @sqlite3VdbeMemInit(ptr noundef %c2, ptr noundef %19, i16 noundef zeroext 1)
  %20 = load ptr, ptr %pMem1.addr, align 8
  call void @sqlite3VdbeMemShallowCopy(ptr noundef %c1, ptr noundef %20, i32 noundef 4096)
  %21 = load ptr, ptr %pMem2.addr, align 8
  call void @sqlite3VdbeMemShallowCopy(ptr noundef %c2, ptr noundef %21, i32 noundef 4096)
  %22 = load ptr, ptr %pColl.addr, align 8
  %enc7 = getelementptr inbounds nuw %struct.CollSeq, ptr %22, i32 0, i32 1
  %23 = load i8, ptr %enc7, align 8
  %call8 = call ptr @sqlite3ValueText(ptr noundef %c1, i8 noundef zeroext %23)
  store ptr %call8, ptr %v1, align 8
  %24 = load ptr, ptr %pColl.addr, align 8
  %enc9 = getelementptr inbounds nuw %struct.CollSeq, ptr %24, i32 0, i32 1
  %25 = load i8, ptr %enc9, align 8
  %call10 = call ptr @sqlite3ValueText(ptr noundef %c2, i8 noundef zeroext %25)
  store ptr %call10, ptr %v2, align 8
  %26 = load ptr, ptr %v1, align 8
  %cmp11 = icmp eq ptr %26, null
  br i1 %cmp11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %27 = load ptr, ptr %v2, align 8
  %cmp13 = icmp eq ptr %27, null
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %lor.lhs.false, %if.else
  %28 = load ptr, ptr %prcErr.addr, align 8
  %tobool = icmp ne ptr %28, null
  br i1 %tobool, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then15
  %29 = load ptr, ptr %prcErr.addr, align 8
  store i8 7, ptr %29, align 1
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then15
  store i32 0, ptr %rc, align 4
  br label %if.end23

if.else17:                                        ; preds = %lor.lhs.false
  %30 = load ptr, ptr %pColl.addr, align 8
  %xCmp18 = getelementptr inbounds nuw %struct.CollSeq, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %xCmp18, align 8
  %32 = load ptr, ptr %pColl.addr, align 8
  %pUser19 = getelementptr inbounds nuw %struct.CollSeq, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %pUser19, align 8
  %n20 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %c1, i32 0, i32 4
  %34 = load i32, ptr %n20, align 4
  %35 = load ptr, ptr %v1, align 8
  %n21 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %c2, i32 0, i32 4
  %36 = load i32, ptr %n21, align 4
  %37 = load ptr, ptr %v2, align 8
  %call22 = call i32 %31(ptr noundef %33, i32 noundef %34, ptr noundef %35, i32 noundef %36, ptr noundef %37)
  store i32 %call22, ptr %rc, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else17, %if.end
  call void @sqlite3VdbeMemRelease(ptr noundef %c1)
  call void @sqlite3VdbeMemRelease(ptr noundef %c2)
  %38 = load i32, ptr %rc, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
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
