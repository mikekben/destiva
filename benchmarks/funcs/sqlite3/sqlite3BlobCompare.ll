; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BlobCompare(ptr noundef %pB1, ptr noundef %pB2) #1 {
entry:
  %retval = alloca i32, align 4
  %pB1.addr = alloca ptr, align 8
  %pB2.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  store ptr %pB1, ptr %pB1.addr, align 8
  store ptr %pB2, ptr %pB2.addr, align 8
  %0 = load ptr, ptr %pB1.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %n, align 4
  store i32 %1, ptr %n1, align 4
  %2 = load ptr, ptr %pB2.addr, align 8
  %n3 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %n3, align 4
  store i32 %3, ptr %n2, align 4
  %4 = load ptr, ptr %pB1.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %flags, align 8
  %conv = zext i16 %5 to i32
  %6 = load ptr, ptr %pB2.addr, align 8
  %flags4 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 1
  %7 = load i16, ptr %flags4, align 8
  %conv5 = zext i16 %7 to i32
  %or = or i32 %conv, %conv5
  %and = and i32 %or, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end34

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pB1.addr, align 8
  %flags6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 1
  %9 = load i16, ptr %flags6, align 8
  %conv7 = zext i16 %9 to i32
  %10 = load ptr, ptr %pB2.addr, align 8
  %flags8 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 1
  %11 = load i16, ptr %flags8, align 8
  %conv9 = zext i16 %11 to i32
  %and10 = and i32 %conv7, %conv9
  %and11 = and i32 %and10, 16384
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  %12 = load ptr, ptr %pB1.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %u, align 8
  %14 = load ptr, ptr %pB2.addr, align 8
  %u14 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %u14, align 8
  %sub = sub nsw i32 %13, %15
  store i32 %sub, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %16 = load ptr, ptr %pB1.addr, align 8
  %flags15 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %16, i32 0, i32 1
  %17 = load i16, ptr %flags15, align 8
  %conv16 = zext i16 %17 to i32
  %and17 = and i32 %conv16, 16384
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.else
  %18 = load ptr, ptr %pB2.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %z, align 8
  %20 = load ptr, ptr %pB2.addr, align 8
  %n20 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %n20, align 4
  %call = call i32 @isAllZero(ptr noundef %19, i32 noundef %21)
  %tobool21 = icmp ne i32 %call, 0
  br i1 %tobool21, label %if.end, label %if.then22

if.then22:                                        ; preds = %if.then19
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then19
  %22 = load ptr, ptr %pB1.addr, align 8
  %u23 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %u23, align 8
  %24 = load i32, ptr %n2, align 4
  %sub24 = sub nsw i32 %23, %24
  store i32 %sub24, ptr %retval, align 4
  br label %return

if.else25:                                        ; preds = %if.else
  %25 = load ptr, ptr %pB1.addr, align 8
  %z26 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %z26, align 8
  %27 = load ptr, ptr %pB1.addr, align 8
  %n27 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %27, i32 0, i32 4
  %28 = load i32, ptr %n27, align 4
  %call28 = call i32 @isAllZero(ptr noundef %26, i32 noundef %28)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.else25
  store i32 1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.else25
  %29 = load i32, ptr %n1, align 4
  %30 = load ptr, ptr %pB2.addr, align 8
  %u32 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %u32, align 8
  %sub33 = sub nsw i32 %29, %31
  store i32 %sub33, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %entry
  %32 = load ptr, ptr %pB1.addr, align 8
  %z35 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %32, i32 0, i32 5
  %33 = load ptr, ptr %z35, align 8
  %34 = load ptr, ptr %pB2.addr, align 8
  %z36 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %z36, align 8
  %36 = load i32, ptr %n1, align 4
  %37 = load i32, ptr %n2, align 4
  %cmp = icmp sgt i32 %36, %37
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end34
  %38 = load i32, ptr %n2, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end34
  %39 = load i32, ptr %n1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %39, %cond.false ]
  %conv38 = sext i32 %cond to i64
  %call39 = call i32 @memcmp(ptr noundef %33, ptr noundef %35, i64 noundef %conv38) #2
  store i32 %call39, ptr %c, align 4
  %40 = load i32, ptr %c, align 4
  %tobool40 = icmp ne i32 %40, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %cond.end
  %41 = load i32, ptr %c, align 4
  store i32 %41, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %cond.end
  %42 = load i32, ptr %n1, align 4
  %43 = load i32, ptr %n2, align 4
  %sub43 = sub nsw i32 %42, %43
  store i32 %sub43, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then41, %if.end31, %if.then30, %if.end, %if.then22, %if.then13
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
declare hidden i32 @isAllZero(ptr noundef, i32 noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
