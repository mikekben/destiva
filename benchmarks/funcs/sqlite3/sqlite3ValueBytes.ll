; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ValueBytes(ptr noundef %pVal, i8 noundef zeroext %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %pVal.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  %p = alloca ptr, align 8
  store ptr %pVal, ptr %pVal.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  %0 = load ptr, ptr %pVal.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 1
  %2 = load i16, ptr %flags, align 8
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pVal.addr, align 8
  %enc2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 2
  %4 = load i8, ptr %enc2, align 2
  %conv3 = zext i8 %4 to i32
  %5 = load i8, ptr %enc.addr, align 1
  %conv4 = zext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %p, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %n, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %p, align 8
  %flags7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 1
  %9 = load i16, ptr %flags7, align 8
  %conv8 = zext i16 %9 to i32
  %and9 = and i32 %conv8, 16
  %cmp10 = icmp ne i32 %and9, 0
  br i1 %cmp10, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end
  %10 = load ptr, ptr %p, align 8
  %flags13 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 1
  %11 = load i16, ptr %flags13, align 8
  %conv14 = zext i16 %11 to i32
  %and15 = and i32 %conv14, 16384
  %tobool = icmp ne i32 %and15, 0
  br i1 %tobool, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then12
  %12 = load ptr, ptr %p, align 8
  %n17 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %n17, align 4
  %14 = load ptr, ptr %p, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %u, align 8
  %add = add nsw i32 %13, %15
  store i32 %add, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then12
  %16 = load ptr, ptr %p, align 8
  %n18 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %n18, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end
  %18 = load ptr, ptr %p, align 8
  %flags20 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %18, i32 0, i32 1
  %19 = load i16, ptr %flags20, align 8
  %conv21 = zext i16 %19 to i32
  %and22 = and i32 %conv21, 1
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end19
  %20 = load ptr, ptr %pVal.addr, align 8
  %21 = load i8, ptr %enc.addr, align 1
  %call = call i32 @valueBytes(ptr noundef %20, i8 noundef zeroext %21)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then24, %if.else, %if.then16, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
declare hidden i32 @valueBytes(ptr noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
