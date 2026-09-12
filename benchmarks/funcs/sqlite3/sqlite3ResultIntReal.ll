; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ResultIntReal(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pOut = getelementptr inbounds nuw %struct.sqlite3_context, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pOut, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 1
  %2 = load i16, ptr %flags, align 8
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %pOut1 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pOut1, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %flags2, align 8
  %conv3 = zext i16 %5 to i32
  %and4 = and i32 %conv3, -5
  %conv5 = trunc i32 %and4 to i16
  store i16 %conv5, ptr %flags2, align 8
  %6 = load ptr, ptr %pCtx.addr, align 8
  %pOut6 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pOut6, align 8
  %flags7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 1
  %8 = load i16, ptr %flags7, align 8
  %conv8 = zext i16 %8 to i32
  %or = or i32 %conv8, 32
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, ptr %flags7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
