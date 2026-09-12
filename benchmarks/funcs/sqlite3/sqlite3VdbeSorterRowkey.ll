; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemClearAndResize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeSorterRowkey(ptr noundef %pCsr, ptr noundef %pOut) #1 {
entry:
  %retval = alloca i32, align 4
  %pCsr.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  %pSorter = alloca ptr, align 8
  %pKey = alloca ptr, align 8
  %nKey = alloca i32, align 4
  store ptr %pCsr, ptr %pCsr.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %pCsr.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %uc, align 8
  store ptr %1, ptr %pSorter, align 8
  %2 = load ptr, ptr %pSorter, align 8
  %call = call ptr @vdbeSorterRowkey(ptr noundef %2, ptr noundef %nKey)
  store ptr %call, ptr %pKey, align 8
  %3 = load ptr, ptr %pOut.addr, align 8
  %4 = load i32, ptr %nKey, align 4
  %call1 = call i32 @sqlite3VdbeMemClearAndResize(ptr noundef %3, i32 noundef %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %nKey, align 4
  %6 = load ptr, ptr %pOut.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 4
  store i32 %5, ptr %n, align 4
  %7 = load ptr, ptr %pOut.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 1
  %8 = load i16, ptr %flags, align 8
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, -49600
  %or = or i32 %and, 16
  %conv2 = trunc i32 %or to i16
  %9 = load ptr, ptr %pOut.addr, align 8
  %flags3 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 1
  store i16 %conv2, ptr %flags3, align 8
  %10 = load ptr, ptr %pOut.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %z, align 8
  %12 = load ptr, ptr %pKey, align 8
  %13 = load i32, ptr %nKey, align 4
  %conv4 = sext i32 %13 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %conv4, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeSorterRowkey(ptr noundef, ptr noundef) #1

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
