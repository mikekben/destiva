; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3BtreeSchema(ptr noundef %p, i32 noundef %nBytes, ptr noundef %xFree) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %nBytes.addr = alloca i32, align 4
  %xFree.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nBytes, ptr %nBytes.addr, align 4
  store ptr %xFree, ptr %xFree.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load ptr, ptr %pBt, align 8
  %pSchema = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %pSchema, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %nBytes.addr, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %nBytes.addr, align 4
  %conv = sext i32 %6 to i64
  %call = call ptr @sqlite3DbMallocZero(ptr noundef null, i64 noundef %conv)
  %7 = load ptr, ptr %pBt, align 8
  %pSchema3 = getelementptr inbounds nuw %struct.BtShared, ptr %7, i32 0, i32 19
  store ptr %call, ptr %pSchema3, align 8
  %8 = load ptr, ptr %xFree.addr, align 8
  %9 = load ptr, ptr %pBt, align 8
  %xFreeSchema = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 20
  store ptr %8, ptr %xFreeSchema, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %10)
  %11 = load ptr, ptr %pBt, align 8
  %pSchema4 = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 19
  %12 = load ptr, ptr %pSchema4, align 8
  ret ptr %12
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
