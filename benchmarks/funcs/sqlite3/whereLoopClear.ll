; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopInit(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @whereLoopClear(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %aLTerm, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %aLTermSpace = getelementptr inbounds nuw %struct.WhereLoop, ptr %2, i32 0, i32 14
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %aLTermSpace, i64 0, i64 0
  %cmp = icmp ne ptr %1, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %aLTerm1 = getelementptr inbounds nuw %struct.WhereLoop, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %aLTerm1, align 8
  call void @sqlite3DbFreeNN(ptr noundef %3, ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  call void @whereLoopClearUnion(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %p.addr, align 8
  call void @whereLoopInit(ptr noundef %8)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopClearUnion(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
