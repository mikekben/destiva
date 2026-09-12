; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemFinalize(ptr noundef %pMem, ptr noundef %pFunc) #2 {
entry:
  %pMem.addr = alloca ptr, align 8
  %pFunc.addr = alloca ptr, align 8
  %ctx = alloca %struct.sqlite3_context, align 8
  %t = alloca %struct.sqlite3_value, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  store ptr %pFunc, ptr %pFunc.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %ctx, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %t, i8 0, i64 56, i1 false)
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %t, i32 0, i32 1
  store i16 1, ptr %flags, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %db, align 8
  %db1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %t, i32 0, i32 9
  store ptr %1, ptr %db1, align 8
  %pOut = getelementptr inbounds nuw %struct.sqlite3_context, ptr %ctx, i32 0, i32 0
  store ptr %t, ptr %pOut, align 8
  %2 = load ptr, ptr %pMem.addr, align 8
  %pMem2 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %ctx, i32 0, i32 2
  store ptr %2, ptr %pMem2, align 8
  %3 = load ptr, ptr %pFunc.addr, align 8
  %pFunc3 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %ctx, i32 0, i32 1
  store ptr %3, ptr %pFunc3, align 8
  %4 = load ptr, ptr %pFunc.addr, align 8
  %xFinalize = getelementptr inbounds nuw %struct.FuncDef, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %xFinalize, align 8
  call void %5(ptr noundef %ctx)
  %6 = load ptr, ptr %pMem.addr, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %szMalloc, align 8
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pMem.addr, align 8
  %db4 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %db4, align 8
  %10 = load ptr, ptr %pMem.addr, align 8
  %zMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %zMalloc, align 8
  call void @sqlite3DbFreeNN(ptr noundef %9, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %pMem.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %t, i64 56, i1 false)
  %isError = getelementptr inbounds nuw %struct.sqlite3_context, ptr %ctx, i32 0, i32 5
  %13 = load i32, ptr %isError, align 4
  ret i32 %13
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
