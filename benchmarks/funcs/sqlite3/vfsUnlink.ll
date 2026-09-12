; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@vfsList = external hidden global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden void @vfsUnlink(ptr noundef %pVfs) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end17

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr @vfsList, align 8
  %2 = load ptr, ptr %pVfs.addr, align 8
  %cmp1 = icmp eq ptr %1, %2
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %pVfs.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %pNext, align 8
  store ptr %4, ptr @vfsList, align 8
  br label %if.end16

if.else3:                                         ; preds = %if.else
  %5 = load ptr, ptr @vfsList, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.else3
  %6 = load ptr, ptr @vfsList, align 8
  store ptr %6, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then4
  %7 = load ptr, ptr %p, align 8
  %pNext5 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %pNext5, align 8
  %tobool6 = icmp ne ptr %8, null
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %p, align 8
  %pNext7 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %pNext7, align 8
  %11 = load ptr, ptr %pVfs.addr, align 8
  %cmp8 = icmp ne ptr %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %p, align 8
  %pNext9 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pNext9, align 8
  store ptr %14, ptr %p, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %15 = load ptr, ptr %p, align 8
  %pNext10 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %pNext10, align 8
  %17 = load ptr, ptr %pVfs.addr, align 8
  %cmp11 = icmp eq ptr %16, %17
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %while.end
  %18 = load ptr, ptr %pVfs.addr, align 8
  %pNext13 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %pNext13, align 8
  %20 = load ptr, ptr %p, align 8
  %pNext14 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %20, i32 0, i32 3
  store ptr %19, ptr %pNext14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then12, %while.end
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.else3
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then2
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
