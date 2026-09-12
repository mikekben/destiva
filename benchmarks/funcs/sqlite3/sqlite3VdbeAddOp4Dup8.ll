; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeDb(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeAddOp4Dup8(ptr noundef %p, i32 noundef %op, i32 noundef %p1, i32 noundef %p2, i32 noundef %p3, ptr noundef %zP4, i32 noundef %p4type) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %p3.addr = alloca i32, align 4
  %zP4.addr = alloca ptr, align 8
  %p4type.addr = alloca i32, align 4
  %p4copy = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %p1, ptr %p1.addr, align 4
  store i32 %p2, ptr %p2.addr, align 4
  store i32 %p3, ptr %p3.addr, align 4
  store ptr %zP4, ptr %zP4.addr, align 8
  store i32 %p4type, ptr %p4type.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %call = call ptr @sqlite3VdbeDb(ptr noundef %0)
  %call1 = call ptr @sqlite3DbMallocRawNN(ptr noundef %call, i64 noundef 8)
  store ptr %call1, ptr %p4copy, align 8
  %1 = load ptr, ptr %p4copy, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p4copy, align 8
  %3 = load ptr, ptr %zP4.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %p.addr, align 8
  %5 = load i32, ptr %op.addr, align 4
  %6 = load i32, ptr %p1.addr, align 4
  %7 = load i32, ptr %p2.addr, align 4
  %8 = load i32, ptr %p3.addr, align 4
  %9 = load ptr, ptr %p4copy, align 8
  %10 = load i32, ptr %p4type.addr, align 4
  %call2 = call i32 @sqlite3VdbeAddOp4(ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10)
  ret i32 %call2
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
