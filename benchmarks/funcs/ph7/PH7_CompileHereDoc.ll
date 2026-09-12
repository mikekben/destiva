; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileHereDoc(ptr noundef %pGen, i32 noundef %iCompileFlag) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %iCompileFlag.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iCompileFlag, ptr %iCompileFlag.addr, align 4
  %0 = load ptr, ptr %pGen.addr, align 8
  %call = call i32 @GenStateCompileString(ptr noundef %0)
  store i32 %call, ptr %rc, align 4
  store i32 0, ptr %iCompileFlag.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileString(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
