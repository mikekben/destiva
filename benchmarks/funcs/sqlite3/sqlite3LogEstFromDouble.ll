; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden signext i16 @sqlite3LogEstFromDouble(double noundef %x) #1 {
entry:
  %retval = alloca i16, align 2
  %x.addr = alloca double, align 8
  %a = alloca i64, align 8
  %e = alloca i16, align 2
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %cmp = fcmp ole double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, ptr %x.addr, align 8
  %cmp1 = fcmp ole double %1, 2.000000e+09
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load double, ptr %x.addr, align 8
  %conv = fptoui double %2 to i64
  %call = call signext i16 @sqlite3LogEst(i64 noundef %conv)
  store i16 %call, ptr %retval, align 2
  br label %return

if.end3:                                          ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %a, ptr align 8 %x.addr, i64 8, i1 false)
  %3 = load i64, ptr %a, align 8
  %shr = lshr i64 %3, 52
  %sub = sub i64 %shr, 1022
  %conv4 = trunc i64 %sub to i16
  store i16 %conv4, ptr %e, align 2
  %4 = load i16, ptr %e, align 2
  %conv5 = sext i16 %4 to i32
  %mul = mul nsw i32 %conv5, 10
  %conv6 = trunc i32 %mul to i16
  store i16 %conv6, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i16, ptr %retval, align 2
  ret i16 %5
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
