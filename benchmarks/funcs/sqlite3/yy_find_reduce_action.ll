; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yy_action = external hidden constant [1913 x i16], align 16
@yy_reduce_ofst = external hidden constant [386 x i16], align 16

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @yy_find_reduce_action(i16 noundef zeroext %stateno, i16 noundef zeroext %iLookAhead) #0 {
entry:
  %stateno.addr = alloca i16, align 2
  %iLookAhead.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store i16 %stateno, ptr %stateno.addr, align 2
  store i16 %iLookAhead, ptr %iLookAhead.addr, align 2
  %0 = load i16, ptr %stateno.addr, align 2
  %idxprom = zext i16 %0 to i64
  %arrayidx = getelementptr inbounds nuw [386 x i16], ptr @yy_reduce_ofst, i64 0, i64 %idxprom
  %1 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %1 to i32
  store i32 %conv, ptr %i, align 4
  %2 = load i16, ptr %iLookAhead.addr, align 2
  %conv1 = zext i16 %2 to i32
  %3 = load i32, ptr %i, align 4
  %add = add nsw i32 %3, %conv1
  store i32 %add, ptr %i, align 4
  %4 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [1913 x i16], ptr @yy_action, i64 0, i64 %idxprom2
  %5 = load i16, ptr %arrayidx3, align 2
  ret i16 %5
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
