; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ErrStr(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vtabBestIndex(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %p) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pVtab = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %2 = load ptr, ptr %pTab.addr, align 8
  %call = call ptr @sqlite3GetVTable(ptr noundef %1, ptr noundef %2)
  %pVtab1 = getelementptr inbounds nuw %struct.VTable, ptr %call, i32 0, i32 2
  %3 = load ptr, ptr %pVtab1, align 8
  store ptr %3, ptr %pVtab, align 8
  %4 = load ptr, ptr %pVtab, align 8
  %pModule = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pModule, align 8
  %xBestIndex = getelementptr inbounds nuw %struct.sqlite3_module, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %xBestIndex, align 8
  %7 = load ptr, ptr %pVtab, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %call2 = call i32 %6(ptr noundef %7, ptr noundef %8)
  store i32 %call2, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %10, 19
  br i1 %cmp3, label %if.then, label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %11, 7
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %12 = load ptr, ptr %pParse.addr, align 8
  %db6 = getelementptr inbounds nuw %struct.Parse, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %db6, align 8
  call void @sqlite3OomFault(ptr noundef %13)
  br label %if.end11

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %pVtab, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %zErrMsg, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load i32, ptr %rc, align 4
  %call8 = call ptr @sqlite3ErrStr(i32 noundef %17)
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %16, ptr noundef @.str.20, ptr noundef %call8)
  br label %if.end

if.else9:                                         ; preds = %if.else
  %18 = load ptr, ptr %pParse.addr, align 8
  %19 = load ptr, ptr %pVtab, align 8
  %zErrMsg10 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %zErrMsg10, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %18, ptr noundef @.str.20, ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %land.lhs.true, %entry
  %21 = load ptr, ptr %pVtab, align 8
  %zErrMsg13 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %zErrMsg13, align 8
  call void @sqlite3_free(ptr noundef %22)
  %23 = load ptr, ptr %pVtab, align 8
  %zErrMsg14 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %23, i32 0, i32 2
  store ptr null, ptr %zErrMsg14, align 8
  %24 = load i32, ptr %rc, align 4
  ret i32 %24
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
