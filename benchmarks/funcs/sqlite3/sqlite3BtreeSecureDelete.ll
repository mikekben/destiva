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
define hidden i32 @sqlite3BtreeSecureDelete(ptr noundef %p, i32 noundef %newFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %newFlag.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %newFlag, ptr %newFlag.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %1)
  %2 = load i32, ptr %newFlag.addr, align 4
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %p.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.Btree, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 10
  %5 = load i16, ptr %btsFlags, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, -13
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, ptr %btsFlags, align 2
  %6 = load i32, ptr %newFlag.addr, align 4
  %mul = mul nsw i32 4, %6
  %7 = load ptr, ptr %p.addr, align 8
  %pBt4 = getelementptr inbounds nuw %struct.Btree, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pBt4, align 8
  %btsFlags5 = getelementptr inbounds nuw %struct.BtShared, ptr %8, i32 0, i32 10
  %9 = load i16, ptr %btsFlags5, align 2
  %conv6 = zext i16 %9 to i32
  %or = or i32 %conv6, %mul
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, ptr %btsFlags5, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end
  %10 = load ptr, ptr %p.addr, align 8
  %pBt9 = getelementptr inbounds nuw %struct.Btree, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pBt9, align 8
  %btsFlags10 = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 10
  %12 = load i16, ptr %btsFlags10, align 2
  %conv11 = zext i16 %12 to i32
  %and12 = and i32 %conv11, 12
  %div = sdiv i32 %and12, 4
  store i32 %div, ptr %b, align 4
  %13 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %13)
  %14 = load i32, ptr %b, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
