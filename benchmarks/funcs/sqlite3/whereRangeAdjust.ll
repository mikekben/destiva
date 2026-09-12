; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden signext i16 @whereRangeAdjust(ptr noundef %pTerm, i16 noundef signext %nNew) #0 {
entry:
  %pTerm.addr = alloca ptr, align 8
  %nNew.addr = alloca i16, align 2
  %nRet = alloca i16, align 2
  store ptr %pTerm, ptr %pTerm.addr, align 8
  store i16 %nNew, ptr %nNew.addr, align 2
  %0 = load i16, ptr %nNew.addr, align 2
  store i16 %0, ptr %nRet, align 2
  %1 = load ptr, ptr %pTerm.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pTerm.addr, align 8
  %truthProb = getelementptr inbounds nuw %struct.WhereTerm, ptr %2, i32 0, i32 2
  %3 = load i16, ptr %truthProb, align 8
  %conv = sext i16 %3 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %pTerm.addr, align 8
  %truthProb3 = getelementptr inbounds nuw %struct.WhereTerm, ptr %4, i32 0, i32 2
  %5 = load i16, ptr %truthProb3, align 8
  %conv4 = sext i16 %5 to i32
  %6 = load i16, ptr %nRet, align 2
  %conv5 = sext i16 %6 to i32
  %add = add nsw i32 %conv5, %conv4
  %conv6 = trunc i32 %add to i16
  store i16 %conv6, ptr %nRet, align 2
  br label %if.end13

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr %pTerm.addr, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %7, i32 0, i32 3
  %8 = load i16, ptr %wtFlags, align 2
  %conv7 = zext i16 %8 to i32
  %and = and i32 %conv7, 0
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %9 = load i16, ptr %nRet, align 2
  %conv11 = sext i16 %9 to i32
  %sub = sub nsw i32 %conv11, 20
  %conv12 = trunc i32 %sub to i16
  store i16 %conv12, ptr %nRet, align 2
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then2
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  %10 = load i16, ptr %nRet, align 2
  ret i16 %10
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
