; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @unixUnfetch(ptr noundef %fd, i64 noundef %iOff, ptr noundef %p) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %iOff.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %pFd = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store i64 %iOff, ptr %iOff.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  store ptr %0, ptr %pFd, align 8
  %1 = load i64, ptr %iOff.addr, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pFd, align 8
  %nFetchOut = getelementptr inbounds nuw %struct.unixFile, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %nFetchOut, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %nFetchOut, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pFd, align 8
  call void @unixUnmapfile(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden void @unixUnmapfile(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
