; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden void @vdbeMemClearExternAndSetNull(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %u, align 8
  %call = call i32 @sqlite3VdbeMemFinalize(ptr noundef %2, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %p.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %flags1, align 8
  %conv2 = zext i16 %6 to i32
  %and3 = and i32 %conv2, 1024
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %xDel = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %xDel, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %z, align 8
  call void %8(ptr noundef %10)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %11 = load ptr, ptr %p.addr, align 8
  %flags7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 1
  store i16 1, ptr %flags7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemFinalize(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
