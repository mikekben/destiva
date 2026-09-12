; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @bindText(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_bind_double(ptr noundef, i32 noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_bind_null(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_bind_value(ptr noundef %pStmt, i32 noundef %i, ptr noundef %pValue) #0 {
entry:
  %pStmt.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pValue.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %pValue, ptr %pValue.addr, align 8
  %0 = load ptr, ptr %pValue.addr, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %0)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb5
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %pStmt.addr, align 8
  %2 = load i32, ptr %i.addr, align 4
  %3 = load ptr, ptr %pValue.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %u, align 8
  %call1 = call i32 @sqlite3_bind_int64(ptr noundef %1, i32 noundef %2, i64 noundef %4)
  store i32 %call1, ptr %rc, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %pStmt.addr, align 8
  %6 = load i32, ptr %i.addr, align 4
  %7 = load ptr, ptr %pValue.addr, align 8
  %u3 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 0
  %8 = load double, ptr %u3, align 8
  %call4 = call i32 @sqlite3_bind_double(ptr noundef %5, i32 noundef %6, double noundef %8)
  store i32 %call4, ptr %rc, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %9 = load ptr, ptr %pValue.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 1
  %10 = load i16, ptr %flags, align 8
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb5
  %11 = load ptr, ptr %pStmt.addr, align 8
  %12 = load i32, ptr %i.addr, align 4
  %13 = load ptr, ptr %pValue.addr, align 8
  %u6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %u6, align 8
  %call7 = call i32 @sqlite3_bind_zeroblob(ptr noundef %11, i32 noundef %12, i32 noundef %14)
  store i32 %call7, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb5
  %15 = load ptr, ptr %pStmt.addr, align 8
  %16 = load i32, ptr %i.addr, align 4
  %17 = load ptr, ptr %pValue.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %z, align 8
  %19 = load ptr, ptr %pValue.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %19, i32 0, i32 4
  %20 = load i32, ptr %n, align 4
  %call8 = call i32 @sqlite3_bind_blob(ptr noundef %15, i32 noundef %16, ptr noundef %18, i32 noundef %20, ptr noundef inttoptr (i64 -1 to ptr))
  store i32 %call8, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %21 = load ptr, ptr %pStmt.addr, align 8
  %22 = load i32, ptr %i.addr, align 4
  %23 = load ptr, ptr %pValue.addr, align 8
  %z10 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %z10, align 8
  %25 = load ptr, ptr %pValue.addr, align 8
  %n11 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %n11, align 4
  %27 = load ptr, ptr %pValue.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %27, i32 0, i32 2
  %28 = load i8, ptr %enc, align 2
  %call12 = call i32 @bindText(ptr noundef %21, i32 noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef inttoptr (i64 -1 to ptr), i8 noundef zeroext %28)
  store i32 %call12, ptr %rc, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %29 = load ptr, ptr %pStmt.addr, align 8
  %30 = load i32, ptr %i.addr, align 4
  %call13 = call i32 @sqlite3_bind_null(ptr noundef %29, i32 noundef %30)
  store i32 %call13, ptr %rc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %if.end, %sw.bb2, %sw.bb
  %31 = load i32, ptr %rc, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_bind_zeroblob(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
