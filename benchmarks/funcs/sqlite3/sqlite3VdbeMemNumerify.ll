; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AtoF(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi64(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemNumerify(ptr noundef %pMem) #0 {
entry:
  %pMem.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %ix = alloca i64, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 45
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %z, align 8
  %4 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %n, align 4
  %7 = load ptr, ptr %pMem.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %enc, align 2
  %call = call i32 @sqlite3AtoF(ptr noundef %3, ptr noundef %u, i32 noundef %6, i8 noundef zeroext %8)
  store i32 %call, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %10, 1
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false12

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %11 = load ptr, ptr %pMem.addr, align 8
  %z6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %z6, align 8
  %13 = load ptr, ptr %pMem.addr, align 8
  %n7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %n7, align 4
  %15 = load ptr, ptr %pMem.addr, align 8
  %enc8 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %15, i32 0, i32 2
  %16 = load i8, ptr %enc8, align 2
  %call9 = call i32 @sqlite3Atoi64(ptr noundef %12, ptr noundef %ix, i32 noundef %14, i8 noundef zeroext %16)
  %cmp10 = icmp sle i32 %call9, 1
  br i1 %cmp10, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %17 = load ptr, ptr %pMem.addr, align 8
  %u13 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %17, i32 0, i32 0
  %18 = load double, ptr %u13, align 8
  %19 = load ptr, ptr %pMem.addr, align 8
  %u14 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %19, i32 0, i32 0
  %20 = load double, ptr %u14, align 8
  %conv15 = fptosi double %20 to i64
  store i64 %conv15, ptr %ix, align 8
  %call16 = call i32 @sqlite3RealSameAsInt(double noundef %18, i64 noundef %conv15)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then17, label %if.else

if.then17:                                        ; preds = %lor.lhs.false12, %land.lhs.true
  %21 = load i64, ptr %ix, align 8
  %22 = load ptr, ptr %pMem.addr, align 8
  %u18 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %22, i32 0, i32 0
  store i64 %21, ptr %u18, align 8
  %23 = load ptr, ptr %pMem.addr, align 8
  %flags19 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %23, i32 0, i32 1
  %24 = load i16, ptr %flags19, align 8
  %conv20 = zext i16 %24 to i32
  %and21 = and i32 %conv20, -49600
  %or = or i32 %and21, 4
  %conv22 = trunc i32 %or to i16
  %25 = load ptr, ptr %pMem.addr, align 8
  %flags23 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %25, i32 0, i32 1
  store i16 %conv22, ptr %flags23, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false12
  %26 = load ptr, ptr %pMem.addr, align 8
  %flags24 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %26, i32 0, i32 1
  %27 = load i16, ptr %flags24, align 8
  %conv25 = zext i16 %27 to i32
  %and26 = and i32 %conv25, -49600
  %or27 = or i32 %and26, 8
  %conv28 = trunc i32 %or27 to i16
  %28 = load ptr, ptr %pMem.addr, align 8
  %flags29 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %28, i32 0, i32 1
  store i16 %conv28, ptr %flags29, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then17
  br label %if.end30

if.end30:                                         ; preds = %if.end, %entry
  %29 = load ptr, ptr %pMem.addr, align 8
  %flags31 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %29, i32 0, i32 1
  %30 = load i16, ptr %flags31, align 8
  %conv32 = zext i16 %30 to i32
  %and33 = and i32 %conv32, -16403
  %conv34 = trunc i32 %and33 to i16
  store i16 %conv34, ptr %flags31, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3RealSameAsInt(double noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
