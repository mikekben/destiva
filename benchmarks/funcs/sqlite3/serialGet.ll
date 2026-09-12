; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @serialGet(ptr noundef %buf, i32 noundef %serial_type, ptr noundef %pMem) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %serial_type.addr = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %x = alloca i64, align 8
  %y = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %serial_type, ptr %serial_type.addr, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load ptr, ptr %buf.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %4 = load ptr, ptr %buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %6 = load ptr, ptr %buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  %conv11 = zext i32 %or10 to i64
  store i64 %conv11, ptr %x, align 8
  %8 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 4
  %arrayidx12 = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %9 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %shl14 = shl i32 %conv13, 24
  %10 = load ptr, ptr %buf.addr, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %10, i64 4
  %arrayidx16 = getelementptr inbounds i8, ptr %add.ptr15, i64 1
  %11 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %11 to i32
  %shl18 = shl i32 %conv17, 16
  %or19 = or i32 %shl14, %shl18
  %12 = load ptr, ptr %buf.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %12, i64 4
  %arrayidx21 = getelementptr inbounds i8, ptr %add.ptr20, i64 2
  %13 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %shl23 = shl i32 %conv22, 8
  %or24 = or i32 %or19, %shl23
  %14 = load ptr, ptr %buf.addr, align 8
  %add.ptr25 = getelementptr inbounds i8, ptr %14, i64 4
  %arrayidx26 = getelementptr inbounds i8, ptr %add.ptr25, i64 3
  %15 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %15 to i32
  %or28 = or i32 %or24, %conv27
  store i32 %or28, ptr %y, align 4
  %16 = load i64, ptr %x, align 8
  %shl29 = shl i64 %16, 32
  %17 = load i32, ptr %y, align 4
  %conv30 = zext i32 %17 to i64
  %add = add i64 %shl29, %conv30
  store i64 %add, ptr %x, align 8
  %18 = load i32, ptr %serial_type.addr, align 4
  %cmp = icmp eq i32 %18, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load i64, ptr %x, align 8
  %20 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %20, i32 0, i32 0
  store i64 %19, ptr %u, align 8
  %21 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %21, i32 0, i32 1
  store i16 4, ptr %flags, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %pMem.addr, align 8
  %u32 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %22, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %u32, ptr align 8 %x, i64 8, i1 false)
  %23 = load i64, ptr %x, align 8
  %and = and i64 %23, 9218868437227405312
  %cmp33 = icmp eq i64 %and, 9218868437227405312
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %24 = load i64, ptr %x, align 8
  %and35 = and i64 %24, 4503599627370495
  %cmp36 = icmp ne i64 %and35, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %25 = phi i1 [ false, %if.else ], [ %cmp36, %land.rhs ]
  %26 = zext i1 %25 to i64
  %cond = select i1 %25, i32 1, i32 8
  %conv38 = trunc i32 %cond to i16
  %27 = load ptr, ptr %pMem.addr, align 8
  %flags39 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %27, i32 0, i32 1
  store i16 %conv38, ptr %flags39, align 8
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then
  ret i32 8
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
