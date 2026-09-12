; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RenameCtx = type { ptr, i32, i32, ptr, ptr }
%struct.RenameToken = type { ptr, %struct.Token, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden ptr @renameColumnTokenNext(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %pBest = alloca ptr, align 8
  %pToken = alloca ptr, align 8
  %pp = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pList = getelementptr inbounds nuw %struct.RenameCtx, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pList, align 8
  store ptr %1, ptr %pBest, align 8
  %2 = load ptr, ptr %pBest, align 8
  %pNext = getelementptr inbounds nuw %struct.RenameToken, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pNext, align 8
  store ptr %3, ptr %pToken, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %pToken, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pToken, align 8
  %t = getelementptr inbounds nuw %struct.RenameToken, ptr %5, i32 0, i32 1
  %z = getelementptr inbounds nuw %struct.Token, ptr %t, i32 0, i32 0
  %6 = load ptr, ptr %z, align 8
  %7 = load ptr, ptr %pBest, align 8
  %t1 = getelementptr inbounds nuw %struct.RenameToken, ptr %7, i32 0, i32 1
  %z2 = getelementptr inbounds nuw %struct.Token, ptr %t1, i32 0, i32 0
  %8 = load ptr, ptr %z2, align 8
  %cmp = icmp ugt ptr %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %pToken, align 8
  store ptr %9, ptr %pBest, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load ptr, ptr %pToken, align 8
  %pNext3 = getelementptr inbounds nuw %struct.RenameToken, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pNext3, align 8
  store ptr %11, ptr %pToken, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %pCtx.addr, align 8
  %pList4 = getelementptr inbounds nuw %struct.RenameCtx, ptr %12, i32 0, i32 0
  store ptr %pList4, ptr %pp, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc8, %for.end
  %13 = load ptr, ptr %pp, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %pBest, align 8
  %cmp6 = icmp ne ptr %14, %15
  br i1 %cmp6, label %for.body7, label %for.end10

for.body7:                                        ; preds = %for.cond5
  br label %for.inc8

for.inc8:                                         ; preds = %for.body7
  %16 = load ptr, ptr %pp, align 8
  %17 = load ptr, ptr %16, align 8
  %pNext9 = getelementptr inbounds nuw %struct.RenameToken, ptr %17, i32 0, i32 2
  store ptr %pNext9, ptr %pp, align 8
  br label %for.cond5, !llvm.loop !8

for.end10:                                        ; preds = %for.cond5
  %18 = load ptr, ptr %pBest, align 8
  %pNext11 = getelementptr inbounds nuw %struct.RenameToken, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pNext11, align 8
  %20 = load ptr, ptr %pp, align 8
  store ptr %19, ptr %20, align 8
  %21 = load ptr, ptr %pBest, align 8
  ret ptr %21
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
