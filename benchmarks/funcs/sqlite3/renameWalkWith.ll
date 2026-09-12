; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.With = type { i32, ptr, [1 x %struct.Cte] }
%struct.Cte = type { ptr, ptr, ptr, ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectPrep(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @renameWalkWith(ptr noundef %pWalker, ptr noundef %pSelect) #1 {
entry:
  %pWalker.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %sNC = alloca %struct.NameContext, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  %0 = load ptr, ptr %pSelect.addr, align 8
  %pWith = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %pWith, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pSelect.addr, align 8
  %pWith1 = getelementptr inbounds nuw %struct.Select, ptr %3, i32 0, i32 16
  %4 = load ptr, ptr %pWith1, align 8
  %nCte = getelementptr inbounds nuw %struct.With, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nCte, align 8
  %cmp = icmp slt i32 %2, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pSelect.addr, align 8
  %pWith2 = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 16
  %7 = load ptr, ptr %pWith2, align 8
  %a = getelementptr inbounds nuw %struct.With, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.Cte], ptr %a, i64 0, i64 %idxprom
  %pSelect3 = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx, i32 0, i32 2
  %9 = load ptr, ptr %pSelect3, align 8
  store ptr %9, ptr %p, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %10 = load ptr, ptr %pWalker.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.Walker, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pParse, align 8
  %pParse4 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %11, ptr %pParse4, align 8
  %pParse5 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  %12 = load ptr, ptr %pParse5, align 8
  %13 = load ptr, ptr %p, align 8
  call void @sqlite3SelectPrep(ptr noundef %12, ptr noundef %13, ptr noundef %sNC)
  %14 = load ptr, ptr %pWalker.addr, align 8
  %15 = load ptr, ptr %p, align 8
  %call = call i32 @sqlite3WalkSelect(ptr noundef %14, ptr noundef %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
