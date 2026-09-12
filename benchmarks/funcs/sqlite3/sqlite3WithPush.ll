; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.With = type { i32, ptr, [1 x %struct.Cte] }
%struct.Cte = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WithPush(ptr noundef %pParse, ptr noundef %pWith, i8 noundef zeroext %bFree) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pWith.addr = alloca ptr, align 8
  %bFree.addr = alloca i8, align 1
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pWith, ptr %pWith.addr, align 8
  store i8 %bFree, ptr %bFree.addr, align 1
  %0 = load ptr, ptr %pWith.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pParse.addr, align 8
  %pWith1 = getelementptr inbounds nuw %struct.Parse, ptr %1, i32 0, i32 66
  %2 = load ptr, ptr %pWith1, align 8
  %3 = load ptr, ptr %pWith.addr, align 8
  %pOuter = getelementptr inbounds nuw %struct.With, ptr %3, i32 0, i32 1
  store ptr %2, ptr %pOuter, align 8
  %4 = load ptr, ptr %pWith.addr, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %pWith2 = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 66
  store ptr %4, ptr %pWith2, align 8
  %6 = load i8, ptr %bFree.addr, align 1
  %tobool3 = icmp ne i8 %6, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %pWith.addr, align 8
  %8 = load ptr, ptr %pParse.addr, align 8
  %pWithToFree = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 67
  store ptr %7, ptr %pWithToFree, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
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
