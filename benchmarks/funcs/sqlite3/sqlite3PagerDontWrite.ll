; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PagerDontWrite(ptr noundef %pPg) #0 {
entry:
  %pPg.addr = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  %2 = load ptr, ptr %pPager, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 9
  %3 = load i8, ptr %tempFile, align 8
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pPg.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %4, i32 0, i32 7
  %5 = load i16, ptr %flags, align 4
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 2
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %pPager, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 37
  %7 = load i32, ptr %nSavepoint, align 8
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %8 = load ptr, ptr %pPg.addr, align 8
  %flags5 = getelementptr inbounds nuw %struct.PgHdr, ptr %8, i32 0, i32 7
  %9 = load i16, ptr %flags5, align 4
  %conv6 = zext i16 %9 to i32
  %or = or i32 %conv6, 16
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, ptr %flags5, align 4
  %10 = load ptr, ptr %pPg.addr, align 8
  %flags8 = getelementptr inbounds nuw %struct.PgHdr, ptr %10, i32 0, i32 7
  %11 = load i16, ptr %flags8, align 4
  %conv9 = zext i16 %11 to i32
  %and10 = and i32 %conv9, -5
  %conv11 = trunc i32 %and10 to i16
  store i16 %conv11, ptr %flags8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
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
