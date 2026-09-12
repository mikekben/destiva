; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @windowRemoveExprFromSelect(ptr noundef %pSelect, ptr noundef %pExpr) #1 {
entry:
  %pSelect.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %sWalker = alloca %struct.Walker, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pSelect.addr, align 8
  %pWin = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %pWin, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %sWalker, i8 0, i64 48, i1 false)
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 1
  store ptr @resolveRemoveWindowsCb, ptr %xExprCallback, align 8
  %2 = load ptr, ptr %pSelect.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 6
  store ptr %2, ptr %u, align 8
  %3 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3WalkExpr(ptr noundef %sWalker, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @resolveRemoveWindowsCb(ptr noundef, ptr noundef) #1

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
