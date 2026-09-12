; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbReallocOrFree(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @resizeResolveLabel(ptr noundef %p, ptr noundef %v, i32 noundef %j) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %j.addr = alloca i32, align 4
  %nNewSize = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 %j, ptr %j.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %nLabel = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 21
  %1 = load i32, ptr %nLabel, align 4
  %sub = sub nsw i32 10, %1
  store i32 %sub, ptr %nNewSize, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %aLabel = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 23
  %5 = load ptr, ptr %aLabel, align 8
  %6 = load i32, ptr %nNewSize, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @sqlite3DbReallocOrFree(ptr noundef %3, ptr noundef %5, i64 noundef %mul)
  %7 = load ptr, ptr %p.addr, align 8
  %aLabel1 = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 23
  store ptr %call, ptr %aLabel1, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %aLabel2 = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 23
  %9 = load ptr, ptr %aLabel2, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %p.addr, align 8
  %nLabelAlloc = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 22
  store i32 0, ptr %nLabelAlloc, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, ptr %nNewSize, align 4
  %12 = load ptr, ptr %p.addr, align 8
  %nLabelAlloc4 = getelementptr inbounds nuw %struct.Parse, ptr %12, i32 0, i32 22
  store i32 %11, ptr %nLabelAlloc4, align 8
  %13 = load ptr, ptr %v.addr, align 8
  %nOp = getelementptr inbounds nuw %struct.Vdbe, ptr %13, i32 0, i32 24
  %14 = load i32, ptr %nOp, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %aLabel5 = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 23
  %16 = load ptr, ptr %aLabel5, align 8
  %17 = load i32, ptr %j.addr, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 %idxprom
  store i32 %14, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
