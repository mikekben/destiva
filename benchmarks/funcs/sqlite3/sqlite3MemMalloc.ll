; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1040 = external hidden unnamed_addr constant [38 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3MemMalloc(i32 noundef %nByte) #0 {
entry:
  %nByte.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load i32, ptr %nByte.addr, align 4
  %add = add nsw i32 %0, 8
  %conv = sext i32 %add to i64
  %call = call noalias ptr @malloc(i64 noundef %conv) #2
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %nByte.addr, align 4
  %conv1 = sext i32 %2 to i64
  %3 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 0
  store i64 %conv1, ptr %arrayidx, align 8
  %4 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw i64, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %nByte.addr, align 4
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 7, ptr noundef @.str.1040, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %p, align 8
  ret ptr %6
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
