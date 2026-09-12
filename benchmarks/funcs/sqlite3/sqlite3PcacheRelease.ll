; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @pcacheManageDirtyList(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @pcacheUnpin(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PcacheRelease(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pCache = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pCache, align 8
  %nRefSum = getelementptr inbounds nuw %struct.PCache, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %nRefSum, align 8
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %nRefSum, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %nRef = getelementptr inbounds nuw %struct.PgHdr, ptr %3, i32 0, i32 8
  %4 = load i16, ptr %nRef, align 2
  %dec1 = add i16 %4, -1
  store i16 %dec1, ptr %nRef, align 2
  %conv = sext i16 %dec1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 7
  %6 = load i16, ptr %flags, align 4
  %conv3 = zext i16 %6 to i32
  %and = and i32 %conv3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %p.addr, align 8
  call void @pcacheUnpin(ptr noundef %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %p.addr, align 8
  call void @pcacheManageDirtyList(ptr noundef %8, i8 noundef zeroext 3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
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
