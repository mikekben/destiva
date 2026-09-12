; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeMemSetPointer(ptr noundef %pMem, ptr noundef %pPtr, ptr noundef %zPType, ptr noundef %xDestructor) #0 {
entry:
  %pMem.addr = alloca ptr, align 8
  %pPtr.addr = alloca ptr, align 8
  %zPType.addr = alloca ptr, align 8
  %xDestructor.addr = alloca ptr, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  store ptr %pPtr, ptr %pPtr.addr, align 8
  store ptr %zPType, ptr %zPType.addr, align 8
  store ptr %xDestructor, ptr %xDestructor.addr, align 8
  %0 = load ptr, ptr %zPType.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %zPType.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ @.str.3, %cond.false ]
  %2 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 0
  store ptr %cond, ptr %u, align 8
  %3 = load ptr, ptr %pPtr.addr, align 8
  %4 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 5
  store ptr %3, ptr %z, align 8
  %5 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 1
  store i16 -31231, ptr %flags, align 8
  %6 = load ptr, ptr %pMem.addr, align 8
  %eSubtype = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 3
  store i8 112, ptr %eSubtype, align 1
  %7 = load ptr, ptr %xDestructor.addr, align 8
  %tobool1 = icmp ne ptr %7, null
  br i1 %tobool1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  %8 = load ptr, ptr %xDestructor.addr, align 8
  br label %cond.end4

cond.false3:                                      ; preds = %cond.end
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi ptr [ %8, %cond.true2 ], [ @sqlite3NoopDestructor, %cond.false3 ]
  %9 = load ptr, ptr %pMem.addr, align 8
  %xDel = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 10
  store ptr %cond5, ptr %xDel, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NoopDestructor(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
