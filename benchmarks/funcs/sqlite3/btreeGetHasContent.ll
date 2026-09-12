; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecTest(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeGetHasContent(ptr noundef %pBt, i32 noundef %pgno) #0 {
entry:
  %pBt.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %pHasContent = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 22
  %1 = load ptr, ptr %pHasContent, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %pgno.addr, align 4
  %4 = load ptr, ptr %p, align 8
  %call = call i32 @sqlite3BitvecSize(ptr noundef %4)
  %cmp = icmp ugt i32 %3, %call
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load ptr, ptr %p, align 8
  %6 = load i32, ptr %pgno.addr, align 4
  %call1 = call i32 @sqlite3BitvecTest(ptr noundef %5, i32 noundef %6)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %7 = phi i1 [ true, %land.rhs ], [ %tobool2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %8 = phi i1 [ false, %entry ], [ %7, %lor.end ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecSize(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
