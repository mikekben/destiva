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

@.str.528 = external hidden unnamed_addr constant [15 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3AuthCheck(ptr noundef %pParse, i32 noundef %code, ptr noundef %zArg1, ptr noundef %zArg2, ptr noundef %zArg3) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %zArg1.addr = alloca ptr, align 8
  %zArg2.addr = alloca ptr, align 8
  %zArg3.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %code, ptr %code.addr, align 4
  store ptr %zArg1, ptr %zArg1.addr, align 8
  store ptr %zArg2, ptr %zArg2.addr, align 8
  store ptr %zArg3, ptr %zArg3.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %3 = load i8, ptr %busy, align 1
  %conv = zext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 51
  %5 = load i8, ptr %eParseMode, align 4
  %conv2 = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %db, align 8
  %xAuth = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 62
  %7 = load ptr, ptr %xAuth, align 8
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %db, align 8
  %xAuth8 = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 62
  %9 = load ptr, ptr %xAuth8, align 8
  %10 = load ptr, ptr %db, align 8
  %pAuthArg = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 63
  %11 = load ptr, ptr %pAuthArg, align 8
  %12 = load i32, ptr %code.addr, align 4
  %13 = load ptr, ptr %zArg1.addr, align 8
  %14 = load ptr, ptr %zArg2.addr, align 8
  %15 = load ptr, ptr %zArg3.addr, align 8
  %16 = load ptr, ptr %pParse.addr, align 8
  %zAuthContext = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 61
  %17 = load ptr, ptr %zAuthContext, align 8
  %call = call i32 %9(ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %17)
  store i32 %call, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %18, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %19 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %19, ptr noundef @.str.528)
  %20 = load ptr, ptr %pParse.addr, align 8
  %rc12 = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 3
  store i32 23, ptr %rc12, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end7
  %21 = load i32, ptr %rc, align 4
  %cmp13 = icmp ne i32 %21, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.else
  %22 = load i32, ptr %rc, align 4
  %cmp15 = icmp ne i32 %22, 2
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  store i32 1, ptr %rc, align 4
  %23 = load ptr, ptr %pParse.addr, align 8
  call void @sqliteAuthBadReturnCode(ptr noundef %23)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then11
  %24 = load i32, ptr %rc, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then6, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
declare hidden void @sqliteAuthBadReturnCode(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
