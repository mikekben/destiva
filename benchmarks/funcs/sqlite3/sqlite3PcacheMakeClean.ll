; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PcacheMakeClean(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  call void @pcacheManageDirtyList(ptr noundef %0, i8 noundef zeroext 1)
  %1 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %1, i32 0, i32 7
  %2 = load i16, ptr %flags, align 4
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, -15
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, ptr %flags, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.PgHdr, ptr %3, i32 0, i32 7
  %4 = load i16, ptr %flags2, align 4
  %conv3 = zext i16 %4 to i32
  %or = or i32 %conv3, 1
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, ptr %flags2, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %nRef = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 8
  %6 = load i16, ptr %nRef, align 2
  %conv5 = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p.addr, align 8
  call void @pcacheUnpin(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @pcacheManageDirtyList(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @pcacheUnpin(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
