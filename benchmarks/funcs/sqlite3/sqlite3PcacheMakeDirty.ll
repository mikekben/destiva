; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @pcacheManageDirtyList(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PcacheMakeDirty(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 7
  %1 = load i16, ptr %flags, align 4
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 17
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.PgHdr, ptr %2, i32 0, i32 7
  %3 = load i16, ptr %flags1, align 4
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, -17
  %conv4 = trunc i32 %and3 to i16
  store i16 %conv4, ptr %flags1, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %flags5 = getelementptr inbounds nuw %struct.PgHdr, ptr %4, i32 0, i32 7
  %5 = load i16, ptr %flags5, align 4
  %conv6 = zext i16 %5 to i32
  %and7 = and i32 %conv6, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %6 = load ptr, ptr %p.addr, align 8
  %flags10 = getelementptr inbounds nuw %struct.PgHdr, ptr %6, i32 0, i32 7
  %7 = load i16, ptr %flags10, align 4
  %conv11 = zext i16 %7 to i32
  %xor = xor i32 %conv11, 3
  %conv12 = trunc i32 %xor to i16
  store i16 %conv12, ptr %flags10, align 4
  %8 = load ptr, ptr %p.addr, align 8
  call void @pcacheManageDirtyList(ptr noundef %8, i8 noundef zeroext 2)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
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
