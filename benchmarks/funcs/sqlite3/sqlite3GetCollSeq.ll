; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

@.str.551 = external hidden unnamed_addr constant [31 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindCollSeq(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3GetCollSeq(ptr noundef %pParse, i8 noundef zeroext %enc, ptr noundef %pColl, ptr noundef %zName) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  %pColl.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  store ptr %pColl, ptr %pColl.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pColl.addr, align 8
  store ptr %2, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %5 = load i8, ptr %enc.addr, align 1
  %6 = load ptr, ptr %zName.addr, align 8
  %call = call ptr @sqlite3FindCollSeq(ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, i32 noundef 0)
  store ptr %call, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %p, align 8
  %tobool2 = icmp ne ptr %7, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %p, align 8
  %xCmp = getelementptr inbounds nuw %struct.CollSeq, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %xCmp, align 8
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr %db, align 8
  %11 = load i8, ptr %enc.addr, align 1
  %conv = zext i8 %11 to i32
  %12 = load ptr, ptr %zName.addr, align 8
  call void @callCollNeeded(ptr noundef %10, i32 noundef %conv, ptr noundef %12)
  %13 = load ptr, ptr %db, align 8
  %14 = load i8, ptr %enc.addr, align 1
  %15 = load ptr, ptr %zName.addr, align 8
  %call5 = call ptr @sqlite3FindCollSeq(ptr noundef %13, i8 noundef zeroext %14, ptr noundef %15, i32 noundef 0)
  store ptr %call5, ptr %p, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %lor.lhs.false
  %16 = load ptr, ptr %p, align 8
  %tobool7 = icmp ne ptr %16, null
  br i1 %tobool7, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %17 = load ptr, ptr %p, align 8
  %xCmp8 = getelementptr inbounds nuw %struct.CollSeq, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %xCmp8, align 8
  %tobool9 = icmp ne ptr %18, null
  br i1 %tobool9, label %if.end14, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %p, align 8
  %call11 = call i32 @synthCollSeq(ptr noundef %19, ptr noundef %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true10
  store ptr null, ptr %p, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true10, %land.lhs.true, %if.end6
  %21 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %21, null
  br i1 %cmp, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %22 = load ptr, ptr %pParse.addr, align 8
  %23 = load ptr, ptr %zName.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %22, ptr noundef @.str.551, ptr noundef %23)
  %24 = load ptr, ptr %pParse.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Parse, ptr %24, i32 0, i32 3
  store i32 257, ptr %rc, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %25 = load ptr, ptr %p, align 8
  ret ptr %25
}

; Function Attrs: nounwind uwtable
declare hidden void @callCollNeeded(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @synthCollSeq(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
