; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DbMallocSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @growOpArray(ptr noundef %v, i32 noundef %nOp) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %nOp.addr = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nNew = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 %nOp, ptr %nOp.addr, align 4
  %0 = load ptr, ptr %v.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pParse, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %nOpAlloc = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %nOpAlloc, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %v.addr, align 8
  %nOpAlloc1 = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 25
  %5 = load i32, ptr %nOpAlloc1, align 4
  %conv = sext i32 %5 to i64
  %mul = mul nsw i64 2, %conv
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 42, %cond.false ]
  store i64 %cond, ptr %nNew, align 8
  %6 = load i32, ptr %nOp.addr, align 4
  %7 = load i64, ptr %nNew, align 8
  %8 = load ptr, ptr %p, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 5
  %10 = load i32, ptr %arrayidx, align 4
  %conv2 = sext i32 %10 to i64
  %cmp = icmp sgt i64 %7, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load ptr, ptr %p, align 8
  %db4 = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %db4, align 8
  call void @sqlite3OomFault(ptr noundef %12)
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %13 = load ptr, ptr %p, align 8
  %db5 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %db5, align 8
  %15 = load ptr, ptr %v.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %15, i32 0, i32 23
  %16 = load ptr, ptr %aOp, align 8
  %17 = load i64, ptr %nNew, align 8
  %mul6 = mul i64 %17, 24
  %call = call ptr @sqlite3DbRealloc(ptr noundef %14, ptr noundef %16, i64 noundef %mul6)
  store ptr %call, ptr %pNew, align 8
  %18 = load ptr, ptr %pNew, align 8
  %tobool7 = icmp ne ptr %18, null
  br i1 %tobool7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end
  %19 = load ptr, ptr %p, align 8
  %db9 = getelementptr inbounds nuw %struct.Parse, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %db9, align 8
  %21 = load ptr, ptr %pNew, align 8
  %call10 = call i32 @sqlite3DbMallocSize(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %p, align 8
  %szOpAlloc = getelementptr inbounds nuw %struct.Parse, ptr %22, i32 0, i32 19
  store i32 %call10, ptr %szOpAlloc, align 4
  %23 = load ptr, ptr %p, align 8
  %szOpAlloc11 = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 19
  %24 = load i32, ptr %szOpAlloc11, align 4
  %conv12 = sext i32 %24 to i64
  %div = udiv i64 %conv12, 24
  %conv13 = trunc i64 %div to i32
  %25 = load ptr, ptr %v.addr, align 8
  %nOpAlloc14 = getelementptr inbounds nuw %struct.Vdbe, ptr %25, i32 0, i32 25
  store i32 %conv13, ptr %nOpAlloc14, align 4
  %26 = load ptr, ptr %pNew, align 8
  %27 = load ptr, ptr %v.addr, align 8
  %aOp15 = getelementptr inbounds nuw %struct.Vdbe, ptr %27, i32 0, i32 23
  store ptr %26, ptr %aOp15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.end
  %28 = load ptr, ptr %pNew, align 8
  %tobool17 = icmp ne ptr %28, null
  %29 = zext i1 %tobool17 to i64
  %cond18 = select i1 %tobool17, i32 0, i32 7
  store i32 %cond18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
