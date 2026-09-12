; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereOrSet = type { i16, [3 x %struct.WhereOrCost] }
%struct.WhereOrCost = type { i64, i16, i16 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden void @whereOrMove(ptr noundef %pDest, ptr noundef %pSrc) #1 {
entry:
  %pDest.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  %0 = load ptr, ptr %pSrc.addr, align 8
  %n = getelementptr inbounds nuw %struct.WhereOrSet, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %n, align 8
  %2 = load ptr, ptr %pDest.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %2, i32 0, i32 0
  store i16 %1, ptr %n1, align 8
  %3 = load ptr, ptr %pDest.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereOrSet, ptr %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a, i64 0, i64 0
  %4 = load ptr, ptr %pSrc.addr, align 8
  %a2 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %4, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a2, i64 0, i64 0
  %5 = load ptr, ptr %pDest.addr, align 8
  %n4 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %5, i32 0, i32 0
  %6 = load i16, ptr %n4, align 8
  %conv = zext i16 %6 to i64
  %mul = mul i64 %conv, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %arraydecay3, i64 %mul, i1 false)
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
