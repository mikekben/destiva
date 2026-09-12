; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon.1 = type { ptr }

@sqlite3Detach.detach_func = external hidden constant { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }, align 8

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Detach(ptr noundef %pParse, ptr noundef %pDbname) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pDbname.addr = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pDbname, ptr %pDbname.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %pDbname.addr, align 8
  %2 = load ptr, ptr %pDbname.addr, align 8
  call void @codeAttach(ptr noundef %0, i32 noundef 25, ptr noundef @sqlite3Detach.detach_func, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @codeAttach(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
