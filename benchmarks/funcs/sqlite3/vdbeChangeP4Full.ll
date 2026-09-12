; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @freeP4(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @vdbeChangeP4Full(ptr noundef %p, ptr noundef %pOp, ptr noundef %zP4, i32 noundef %n) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pOp.addr = alloca ptr, align 8
  %zP4.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pOp, ptr %pOp.addr, align 8
  store ptr %zP4, ptr %zP4.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %pOp.addr, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %0, i32 0, i32 1
  %1 = load i8, ptr %p4type, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %pOp.addr, align 8
  %p4type1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %p4type1, align 1
  %conv = sext i8 %5 to i32
  %6 = load ptr, ptr %pOp.addr, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %p4, align 8
  call void @freeP4(ptr noundef %3, i32 noundef %conv, ptr noundef %7)
  %8 = load ptr, ptr %pOp.addr, align 8
  %p4type2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %8, i32 0, i32 1
  store i8 0, ptr %p4type2, align 1
  %9 = load ptr, ptr %pOp.addr, align 8
  %p43 = getelementptr inbounds nuw %struct.VdbeOp, ptr %9, i32 0, i32 6
  store ptr null, ptr %p43, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %p.addr, align 8
  %12 = load ptr, ptr %pOp.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %13, i32 0, i32 23
  %14 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %conv6 = trunc i64 %sub.ptr.div to i32
  %15 = load ptr, ptr %zP4.addr, align 8
  %16 = load i32, ptr %n.addr, align 4
  call void @sqlite3VdbeChangeP4(ptr noundef %11, i32 noundef %conv6, ptr noundef %15, i32 noundef %16)
  br label %if.end16

if.else:                                          ; preds = %if.end
  %17 = load i32, ptr %n.addr, align 4
  %cmp7 = icmp eq i32 %17, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  %18 = load ptr, ptr %zP4.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %18)
  store i32 %call, ptr %n.addr, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else
  %19 = load ptr, ptr %p.addr, align 8
  %db11 = getelementptr inbounds nuw %struct.Vdbe, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %db11, align 8
  %21 = load ptr, ptr %zP4.addr, align 8
  %22 = load i32, ptr %n.addr, align 4
  %conv12 = sext i32 %22 to i64
  %call13 = call ptr @sqlite3DbStrNDup(ptr noundef %20, ptr noundef %21, i64 noundef %conv12)
  %23 = load ptr, ptr %pOp.addr, align 8
  %p414 = getelementptr inbounds nuw %struct.VdbeOp, ptr %23, i32 0, i32 6
  store ptr %call13, ptr %p414, align 8
  %24 = load ptr, ptr %pOp.addr, align 8
  %p4type15 = getelementptr inbounds nuw %struct.VdbeOp, ptr %24, i32 0, i32 1
  store i8 -7, ptr %p4type15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %if.then5
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
