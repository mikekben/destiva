; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.WindowRewrite = type { ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @selectWindowRewriteEList(ptr noundef %pParse, ptr noundef %pWin, ptr noundef %pSrc, ptr noundef %pEList, ptr noundef %pTab, ptr noundef %ppSub) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pWin.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pEList.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %ppSub.addr = alloca ptr, align 8
  %sWalker = alloca %struct.Walker, align 8
  %sRewrite = alloca %struct.WindowRewrite, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pWin, ptr %pWin.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pEList, ptr %pEList.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %ppSub, ptr %ppSub.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sWalker, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %sRewrite, i8 0, i64 40, i1 false)
  %0 = load ptr, ptr %ppSub.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %pSub = getelementptr inbounds nuw %struct.WindowRewrite, ptr %sRewrite, i32 0, i32 2
  store ptr %1, ptr %pSub, align 8
  %2 = load ptr, ptr %pWin.addr, align 8
  %pWin1 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %sRewrite, i32 0, i32 0
  store ptr %2, ptr %pWin1, align 8
  %3 = load ptr, ptr %pSrc.addr, align 8
  %pSrc2 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %sRewrite, i32 0, i32 1
  store ptr %3, ptr %pSrc2, align 8
  %4 = load ptr, ptr %pTab.addr, align 8
  %pTab3 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %sRewrite, i32 0, i32 3
  store ptr %4, ptr %pTab3, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %pParse4 = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 0
  store ptr %5, ptr %pParse4, align 8
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 1
  store ptr @selectWindowRewriteExprCb, ptr %xExprCallback, align 8
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 2
  store ptr @selectWindowRewriteSelectCb, ptr %xSelectCallback, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 6
  store ptr %sRewrite, ptr %u, align 8
  %6 = load ptr, ptr %pEList.addr, align 8
  %call = call i32 @sqlite3WalkExprList(ptr noundef %sWalker, ptr noundef %6)
  %pSub5 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %sRewrite, i32 0, i32 2
  %7 = load ptr, ptr %pSub5, align 8
  %8 = load ptr, ptr %ppSub.addr, align 8
  store ptr %7, ptr %8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @selectWindowRewriteExprCb(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @selectWindowRewriteSelectCb(ptr noundef, ptr noundef) #1

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
