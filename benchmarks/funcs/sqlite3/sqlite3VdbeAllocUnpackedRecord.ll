; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }
%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VdbeAllocUnpackedRecord(ptr noundef %pKeyInfo) #0 {
entry:
  %retval = alloca ptr, align 8
  %pKeyInfo.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nByte = alloca i32, align 4
  store ptr %pKeyInfo, ptr %pKeyInfo.addr, align 8
  %0 = load ptr, ptr %pKeyInfo.addr, align 8
  %nKeyField = getelementptr inbounds nuw %struct.KeyInfo, ptr %0, i32 0, i32 2
  %1 = load i16, ptr %nKeyField, align 2
  %conv = zext i16 %1 to i32
  %add = add nsw i32 %conv, 1
  %conv1 = sext i32 %add to i64
  %mul = mul i64 56, %conv1
  %add2 = add i64 24, %mul
  %conv3 = trunc i64 %add2 to i32
  store i32 %conv3, ptr %nByte, align 4
  %2 = load ptr, ptr %pKeyInfo.addr, align 8
  %db = getelementptr inbounds nuw %struct.KeyInfo, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %db, align 8
  %4 = load i32, ptr %nByte, align 4
  %conv4 = sext i32 %4 to i64
  %call = call ptr @sqlite3DbMallocRaw(ptr noundef %3, i64 noundef %conv4)
  store ptr %call, ptr %p, align 8
  %5 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %7 = load ptr, ptr %p, align 8
  %aMem = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %7, i32 0, i32 1
  store ptr %arrayidx, ptr %aMem, align 8
  %8 = load ptr, ptr %pKeyInfo.addr, align 8
  %9 = load ptr, ptr %p, align 8
  %pKeyInfo5 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %9, i32 0, i32 0
  store ptr %8, ptr %pKeyInfo5, align 8
  %10 = load ptr, ptr %pKeyInfo.addr, align 8
  %nKeyField6 = getelementptr inbounds nuw %struct.KeyInfo, ptr %10, i32 0, i32 2
  %11 = load i16, ptr %nKeyField6, align 2
  %conv7 = zext i16 %11 to i32
  %add8 = add nsw i32 %conv7, 1
  %conv9 = trunc i32 %add8 to i16
  %12 = load ptr, ptr %p, align 8
  %nField = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %12, i32 0, i32 2
  store i16 %conv9, ptr %nField, align 8
  %13 = load ptr, ptr %p, align 8
  store ptr %13, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
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
