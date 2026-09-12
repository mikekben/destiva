; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PutVarint(ptr noundef %p, i64 noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %cmp = icmp ule i64 %0, 127
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %v.addr, align 8
  %and = and i64 %1, 127
  %conv = trunc i64 %and to i8
  %2 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %v.addr, align 8
  %cmp1 = icmp ule i64 %3, 16383
  br i1 %cmp1, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %4 = load i64, ptr %v.addr, align 8
  %shr = lshr i64 %4, 7
  %and4 = and i64 %shr, 127
  %or = or i64 %and4, 128
  %conv5 = trunc i64 %or to i8
  %5 = load ptr, ptr %p.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 0
  store i8 %conv5, ptr %arrayidx6, align 1
  %6 = load i64, ptr %v.addr, align 8
  %and7 = and i64 %6, 127
  %conv8 = trunc i64 %and7 to i8
  %7 = load ptr, ptr %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %conv8, ptr %arrayidx9, align 1
  store i32 2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load i64, ptr %v.addr, align 8
  %call = call i32 @putVarint64(ptr noundef %8, i64 noundef %9)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then3, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
declare hidden i32 @putVarint64(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
