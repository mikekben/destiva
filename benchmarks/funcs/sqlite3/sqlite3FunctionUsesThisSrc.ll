; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.SrcCount = type { ptr, i32, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3FunctionUsesThisSrc(ptr noundef %pExpr, ptr noundef %pSrcList) #1 {
entry:
  %pExpr.addr = alloca ptr, align 8
  %pSrcList.addr = alloca ptr, align 8
  %w = alloca %struct.Walker, align 8
  %cnt = alloca %struct.SrcCount, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %pSrcList, ptr %pSrcList.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %w, i8 0, i64 48, i1 false)
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 1
  store ptr @exprSrcCount, ptr %xExprCallback, align 8
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 2
  store ptr @sqlite3SelectWalkNoop, ptr %xSelectCallback, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 6
  store ptr %cnt, ptr %u, align 8
  %0 = load ptr, ptr %pSrcList.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.SrcCount, ptr %cnt, i32 0, i32 0
  store ptr %0, ptr %pSrc, align 8
  %nThis = getelementptr inbounds nuw %struct.SrcCount, ptr %cnt, i32 0, i32 1
  store i32 0, ptr %nThis, align 8
  %nOther = getelementptr inbounds nuw %struct.SrcCount, ptr %cnt, i32 0, i32 2
  store i32 0, ptr %nOther, align 4
  %1 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %x, align 8
  %call = call i32 @sqlite3WalkExprList(ptr noundef %w, ptr noundef %2)
  %nThis1 = getelementptr inbounds nuw %struct.SrcCount, ptr %cnt, i32 0, i32 1
  %3 = load i32, ptr %nThis1, align 8
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %nOther2 = getelementptr inbounds nuw %struct.SrcCount, ptr %cnt, i32 0, i32 2
  %4 = load i32, ptr %nOther2, align 4
  %cmp3 = icmp eq i32 %4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
declare hidden i32 @exprSrcCount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SelectWalkNoop(ptr noundef, ptr noundef) #1

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
