; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemExpandBlob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AtoF(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi64(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @computeNumericType(ptr noundef %pMem) #0 {
entry:
  %retval = alloca i16, align 2
  %pMem.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %ix = alloca i64, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pMem.addr, align 8
  %call = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  %3 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %z, align 8
  %5 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %n, align 4
  %8 = load ptr, ptr %pMem.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %enc, align 2
  %call1 = call i32 @sqlite3AtoF(ptr noundef %4, ptr noundef %u, i32 noundef %7, i8 noundef zeroext %9)
  store i32 %call1, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp = icmp sle i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %cond.end
  %11 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = load ptr, ptr %pMem.addr, align 8
  %z5 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %z5, align 8
  %14 = load ptr, ptr %pMem.addr, align 8
  %n6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %n6, align 4
  %16 = load ptr, ptr %pMem.addr, align 8
  %enc7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %16, i32 0, i32 2
  %17 = load i8, ptr %enc7, align 2
  %call8 = call i32 @sqlite3Atoi64(ptr noundef %13, ptr noundef %ix, i32 noundef %15, i8 noundef zeroext %17)
  %cmp9 = icmp sle i32 %call8, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %18 = load i64, ptr %ix, align 8
  %19 = load ptr, ptr %pMem.addr, align 8
  %u12 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %19, i32 0, i32 0
  store i64 %18, ptr %u12, align 8
  store i16 4, ptr %retval, align 2
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i16 8, ptr %retval, align 2
  br label %return

if.else13:                                        ; preds = %cond.end
  %20 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %20, 1
  br i1 %cmp14, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %if.else13
  %21 = load ptr, ptr %pMem.addr, align 8
  %z17 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %z17, align 8
  %23 = load ptr, ptr %pMem.addr, align 8
  %n18 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %23, i32 0, i32 4
  %24 = load i32, ptr %n18, align 4
  %25 = load ptr, ptr %pMem.addr, align 8
  %enc19 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %25, i32 0, i32 2
  %26 = load i8, ptr %enc19, align 2
  %call20 = call i32 @sqlite3Atoi64(ptr noundef %22, ptr noundef %ix, i32 noundef %24, i8 noundef zeroext %26)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %land.lhs.true16
  %27 = load i64, ptr %ix, align 8
  %28 = load ptr, ptr %pMem.addr, align 8
  %u24 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %28, i32 0, i32 0
  store i64 %27, ptr %u24, align 8
  store i16 4, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %land.lhs.true16, %if.else13
  br label %if.end25

if.end25:                                         ; preds = %if.end
  store i16 8, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.end25, %if.then23, %if.else, %if.then11
  %29 = load i16, ptr %retval, align 2
  ret i16 %29
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
