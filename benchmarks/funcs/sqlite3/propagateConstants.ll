; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereConst = type { ptr, i32, i32, ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SelectWalkNoop(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @propagateConstants(ptr noundef %pParse, ptr noundef %p) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %x = alloca %struct.WhereConst, align 8
  %w = alloca %struct.Walker, align 8
  %nChng = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %nChng, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WhereConst, ptr %x, i32 0, i32 0
  store ptr %0, ptr %pParse1, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %nConst = getelementptr inbounds nuw %struct.WhereConst, ptr %x, i32 0, i32 1
  store i32 0, ptr %nConst, align 8
  %nChng2 = getelementptr inbounds nuw %struct.WhereConst, ptr %x, i32 0, i32 2
  store i32 0, ptr %nChng2, align 4
  %apExpr = getelementptr inbounds nuw %struct.WhereConst, ptr %x, i32 0, i32 3
  store ptr null, ptr %apExpr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %1, i32 0, i32 9
  %2 = load ptr, ptr %pWhere, align 8
  call void @findConstInWhere(ptr noundef %x, ptr noundef %2)
  %nConst3 = getelementptr inbounds nuw %struct.WhereConst, ptr %x, i32 0, i32 1
  %3 = load i32, ptr %nConst3, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @llvm.memset.p0.i64(ptr align 8 %w, i8 0, i64 48, i1 false)
  %4 = load ptr, ptr %pParse.addr, align 8
  %pParse4 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 0
  store ptr %4, ptr %pParse4, align 8
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 1
  store ptr @propagateConstantExprRewrite, ptr %xExprCallback, align 8
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 2
  store ptr @sqlite3SelectWalkNoop, ptr %xSelectCallback, align 8
  %xSelectCallback2 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 3
  store ptr null, ptr %xSelectCallback2, align 8
  %walkerDepth = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 4
  store i32 0, ptr %walkerDepth, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 6
  store ptr %x, ptr %u, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %pWhere5 = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %pWhere5, align 8
  %call = call i32 @sqlite3WalkExpr(ptr noundef %w, ptr noundef %6)
  %pParse6 = getelementptr inbounds nuw %struct.WhereConst, ptr %x, i32 0, i32 0
  %7 = load ptr, ptr %pParse6, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db, align 8
  %apExpr7 = getelementptr inbounds nuw %struct.WhereConst, ptr %x, i32 0, i32 3
  %9 = load ptr, ptr %apExpr7, align 8
  call void @sqlite3DbFree(ptr noundef %8, ptr noundef %9)
  %nChng8 = getelementptr inbounds nuw %struct.WhereConst, ptr %x, i32 0, i32 2
  %10 = load i32, ptr %nChng8, align 4
  %11 = load i32, ptr %nChng, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, ptr %nChng, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %nChng9 = getelementptr inbounds nuw %struct.WhereConst, ptr %x, i32 0, i32 2
  %12 = load i32, ptr %nChng9, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %13 = load i32, ptr %nChng, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden void @findConstInWhere(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @propagateConstantExprRewrite(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
