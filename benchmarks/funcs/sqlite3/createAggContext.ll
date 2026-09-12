; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemSetNull(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @createAggContext(ptr noundef %p, i32 noundef %nByte) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pMem = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pMem1 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pMem1, align 8
  store ptr %1, ptr %pMem, align 8
  %2 = load i32, ptr %nByte.addr, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pMem, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %3)
  %4 = load ptr, ptr %pMem, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 5
  store ptr null, ptr %z, align 8
  br label %if.end5

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pMem, align 8
  %6 = load i32, ptr %nByte.addr, align 4
  %call = call i32 @sqlite3VdbeMemClearAndResize(ptr noundef %5, i32 noundef %6)
  %7 = load ptr, ptr %pMem, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 1
  store i16 8192, ptr %flags, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %pFunc = getelementptr inbounds nuw %struct.sqlite3_context, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pFunc, align 8
  %10 = load ptr, ptr %pMem, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 0
  store ptr %9, ptr %u, align 8
  %11 = load ptr, ptr %pMem, align 8
  %z2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %z2, align 8
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %13 = load ptr, ptr %pMem, align 8
  %z4 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %z4, align 8
  %15 = load i32, ptr %nByte.addr, align 4
  %conv = sext i32 %15 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %conv, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %16 = load ptr, ptr %pMem, align 8
  %z6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %z6, align 8
  ret ptr %17
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemClearAndResize(ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
