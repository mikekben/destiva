; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrAccumEnlarge(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @enlargeAndAppend(ptr noundef %p, ptr noundef %z, i32 noundef %N) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %N.addr, align 4
  %call = call i32 @sqlite3StrAccumEnlarge(ptr noundef %0, i32 noundef %1)
  store i32 %call, ptr %N.addr, align 4
  %2 = load i32, ptr %N.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %zText = getelementptr inbounds nuw %struct.sqlite3_str, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %zText, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %nChar, align 8
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %4, i64 %idxprom
  %7 = load ptr, ptr %z.addr, align 8
  %8 = load i32, ptr %N.addr, align 4
  %conv = sext i32 %8 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %7, i64 %conv, i1 false)
  %9 = load i32, ptr %N.addr, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %nChar1 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %nChar1, align 8
  %add = add i32 %11, %9
  store i32 %add, ptr %nChar1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
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
