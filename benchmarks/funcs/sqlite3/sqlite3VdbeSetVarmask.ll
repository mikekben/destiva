; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeSetVarmask(ptr noundef %v, i32 noundef %iVar) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %iVar.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %iVar, ptr %iVar.addr, align 4
  %0 = load i32, ptr %iVar.addr, align 4
  %cmp = icmp sge i32 %0, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8
  %expmask = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 46
  %2 = load i32, ptr %expmask, align 4
  %or = or i32 %2, -2147483648
  store i32 %or, ptr %expmask, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %iVar.addr, align 4
  %sub = sub nsw i32 %3, 1
  %shl = shl i32 1, %sub
  %4 = load ptr, ptr %v.addr, align 8
  %expmask1 = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 46
  %5 = load i32, ptr %expmask1, align 4
  %or2 = or i32 %5, %shl
  store i32 %or2, ptr %expmask1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
