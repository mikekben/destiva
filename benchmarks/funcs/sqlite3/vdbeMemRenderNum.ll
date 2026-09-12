; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

@.str.111 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.112 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @vdbeMemRenderNum(i32 noundef %sz, ptr noundef %zBuf, ptr noundef %p) #0 {
entry:
  %sz.addr = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %acc = alloca %struct.sqlite3_str, align 8
  store i32 %sz, ptr %sz.addr, align 4
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %zBuf.addr, align 8
  %1 = load i32, ptr %sz.addr, align 4
  call void @sqlite3StrAccumInit(ptr noundef %acc, ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %2 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %flags, align 8
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %u, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %acc, ptr noundef @.str.111, i64 noundef %5)
  br label %if.end10

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 1
  %7 = load i16, ptr %flags1, align 8
  %conv2 = zext i16 %7 to i32
  %and3 = and i32 %conv2, 32
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %8 = load ptr, ptr %p.addr, align 8
  %u6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %u6, align 8
  %conv7 = sitofp i64 %9 to double
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %acc, ptr noundef @.str.112, double noundef %conv7)
  br label %if.end

if.else8:                                         ; preds = %if.else
  %10 = load ptr, ptr %p.addr, align 8
  %u9 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 0
  %11 = load double, ptr %u9, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %acc, ptr noundef @.str.112, double noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %12 = load ptr, ptr %zBuf.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %acc, i32 0, i32 4
  %13 = load i32, ptr %nChar, align 8
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %12, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  ret void
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
