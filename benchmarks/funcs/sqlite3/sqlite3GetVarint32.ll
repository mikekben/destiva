; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @sqlite3GetVarint32(ptr noundef %p, ptr noundef %v) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %v64 = alloca i64, align 8
  %n = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %a, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv1 = zext i8 %4 to i32
  store i32 %conv1, ptr %b, align 4
  %5 = load i32, ptr %b, align 4
  %and = and i32 %5, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %a, align 4
  %and2 = and i32 %6, 127
  store i32 %and2, ptr %a, align 4
  %7 = load i32, ptr %a, align 4
  %shl = shl i32 %7, 7
  store i32 %shl, ptr %a, align 4
  %8 = load i32, ptr %a, align 4
  %9 = load i32, ptr %b, align 4
  %or = or i32 %8, %9
  %10 = load ptr, ptr %v.addr, align 8
  store i32 %or, ptr %10, align 4
  store i8 2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %p.addr, align 8
  %incdec.ptr3 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr3, ptr %p.addr, align 8
  %12 = load i32, ptr %a, align 4
  %shl4 = shl i32 %12, 14
  store i32 %shl4, ptr %a, align 4
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv5 = zext i8 %14 to i32
  %15 = load i32, ptr %a, align 4
  %or6 = or i32 %15, %conv5
  store i32 %or6, ptr %a, align 4
  %16 = load i32, ptr %a, align 4
  %and7 = and i32 %16, 128
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end
  %17 = load i32, ptr %a, align 4
  %and10 = and i32 %17, 2080895
  store i32 %and10, ptr %a, align 4
  %18 = load i32, ptr %b, align 4
  %and11 = and i32 %18, 127
  store i32 %and11, ptr %b, align 4
  %19 = load i32, ptr %b, align 4
  %shl12 = shl i32 %19, 7
  store i32 %shl12, ptr %b, align 4
  %20 = load i32, ptr %a, align 4
  %21 = load i32, ptr %b, align 4
  %or13 = or i32 %20, %21
  %22 = load ptr, ptr %v.addr, align 8
  store i32 %or13, ptr %22, align 4
  store i8 3, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %if.end
  %23 = load ptr, ptr %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 -2
  store ptr %add.ptr, ptr %p.addr, align 8
  %24 = load ptr, ptr %p.addr, align 8
  %call = call zeroext i8 @sqlite3GetVarint(ptr noundef %24, ptr noundef %v64)
  store i8 %call, ptr %n, align 1
  %25 = load i64, ptr %v64, align 8
  %and15 = and i64 %25, 4294967295
  %26 = load i64, ptr %v64, align 8
  %cmp = icmp ne i64 %and15, %26
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %27 = load ptr, ptr %v.addr, align 8
  store i32 -1, ptr %27, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end14
  %28 = load i64, ptr %v64, align 8
  %conv18 = trunc i64 %28 to i32
  %29 = load ptr, ptr %v.addr, align 8
  store i32 %conv18, ptr %29, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  %30 = load i8, ptr %n, align 1
  store i8 %30, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end19, %if.then9, %if.then
  %31 = load i8, ptr %retval, align 1
  ret i8 %31
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
