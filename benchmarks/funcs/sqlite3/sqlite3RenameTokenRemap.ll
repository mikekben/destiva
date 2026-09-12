; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.RenameToken = type { ptr, %struct.Token, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3RenameTokenRemap(ptr noundef %pParse, ptr noundef %pTo, ptr noundef %pFrom) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTo.addr = alloca ptr, align 8
  %pFrom.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTo, ptr %pTo.addr, align 8
  store ptr %pFrom, ptr %pFrom.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pRename = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 68
  %1 = load ptr, ptr %pRename, align 8
  store ptr %1, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8
  %p1 = getelementptr inbounds nuw %struct.RenameToken, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %p1, align 8
  %5 = load ptr, ptr %pFrom.addr, align 8
  %cmp = icmp eq ptr %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %pTo.addr, align 8
  %7 = load ptr, ptr %p, align 8
  %p2 = getelementptr inbounds nuw %struct.RenameToken, ptr %7, i32 0, i32 0
  store ptr %6, ptr %p2, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.RenameToken, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pNext, align 8
  store ptr %9, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
