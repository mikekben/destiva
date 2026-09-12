; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3SelectPrep(ptr noundef %pParse, ptr noundef %p, ptr noundef %pOuterNC) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pOuterNC.addr = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pOuterNC, ptr %pOuterNC.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 19
  %2 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %selFlags, align 4
  %and = and i32 %4, 128
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pParse.addr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  call void @sqlite3SelectExpand(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 16
  %8 = load i32, ptr %nErr, align 8
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %9 = load ptr, ptr %pParse.addr, align 8
  %db5 = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %db5, align 8
  %mallocFailed6 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 19
  %11 = load i8, ptr %mallocFailed6, align 1
  %conv = zext i8 %11 to i32
  %tobool7 = icmp ne i32 %conv, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end3
  br label %return

if.end9:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load ptr, ptr %pOuterNC.addr, align 8
  call void @sqlite3ResolveSelectNames(ptr noundef %12, ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %pParse.addr, align 8
  %nErr10 = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 16
  %16 = load i32, ptr %nErr10, align 8
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end9
  %17 = load ptr, ptr %pParse.addr, align 8
  %db13 = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %db13, align 8
  %mallocFailed14 = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 19
  %19 = load i8, ptr %mallocFailed14, align 1
  %conv15 = zext i8 %19 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false12, %if.end9
  br label %return

if.end18:                                         ; preds = %lor.lhs.false12
  %20 = load ptr, ptr %pParse.addr, align 8
  %21 = load ptr, ptr %p.addr, align 8
  call void @sqlite3SelectAddTypeInfo(ptr noundef %20, ptr noundef %21)
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.then8, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResolveSelectNames(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectExpand(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectAddTypeInfo(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
