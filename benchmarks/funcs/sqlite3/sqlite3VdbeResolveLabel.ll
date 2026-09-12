; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeResolveLabel(ptr noundef %v, i32 noundef %x) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  %0 = load ptr, ptr %v.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pParse, align 8
  store ptr %1, ptr %p, align 8
  %2 = load i32, ptr %x.addr, align 4
  %not = xor i32 %2, -1
  store i32 %not, ptr %j, align 4
  %3 = load ptr, ptr %p, align 8
  %nLabelAlloc = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 22
  %4 = load i32, ptr %nLabelAlloc, align 8
  %5 = load ptr, ptr %p, align 8
  %nLabel = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 21
  %6 = load i32, ptr %nLabel, align 4
  %add = add nsw i32 %4, %6
  %cmp = icmp slt i32 %add, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr %v.addr, align 8
  %9 = load i32, ptr %j, align 4
  call void @resizeResolveLabel(ptr noundef %7, ptr noundef %8, i32 noundef %9)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %v.addr, align 8
  %nOp = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 24
  %11 = load i32, ptr %nOp, align 8
  %12 = load ptr, ptr %p, align 8
  %aLabel = getelementptr inbounds nuw %struct.Parse, ptr %12, i32 0, i32 23
  %13 = load ptr, ptr %aLabel, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, ptr %13, i64 %idxprom
  store i32 %11, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @resizeResolveLabel(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
