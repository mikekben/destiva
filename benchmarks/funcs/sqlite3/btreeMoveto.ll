; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeMovetoUnpacked(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeAllocUnpackedRecord(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeRecordUnpack(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeMoveto(ptr noundef %pCur, ptr noundef %pKey, i64 noundef %nKey, i32 noundef %bias, ptr noundef %pRes) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %nKey.addr = alloca i64, align 8
  %bias.addr = alloca i32, align 4
  %pRes.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pIdxKey = alloca ptr, align 8
  %pKeyInfo = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store i64 %nKey, ptr %nKey.addr, align 8
  store i32 %bias, ptr %bias.addr, align 4
  store ptr %pRes, ptr %pRes.addr, align 8
  %0 = load ptr, ptr %pKey.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCur.addr, align 8
  %pKeyInfo1 = getelementptr inbounds nuw %struct.BtCursor, ptr %1, i32 0, i32 17
  %2 = load ptr, ptr %pKeyInfo1, align 8
  store ptr %2, ptr %pKeyInfo, align 8
  %3 = load ptr, ptr %pKeyInfo, align 8
  %call = call ptr @sqlite3VdbeAllocUnpackedRecord(ptr noundef %3)
  store ptr %call, ptr %pIdxKey, align 8
  %4 = load ptr, ptr %pIdxKey, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %pKeyInfo, align 8
  %6 = load i64, ptr %nKey.addr, align 8
  %conv = trunc i64 %6 to i32
  %7 = load ptr, ptr %pKey.addr, align 8
  %8 = load ptr, ptr %pIdxKey, align 8
  call void @sqlite3VdbeRecordUnpack(ptr noundef %5, i32 noundef %conv, ptr noundef %7, ptr noundef %8)
  %9 = load ptr, ptr %pIdxKey, align 8
  %nField = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %9, i32 0, i32 2
  %10 = load i16, ptr %nField, align 8
  %conv3 = zext i16 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load ptr, ptr %pIdxKey, align 8
  %nField6 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %11, i32 0, i32 2
  %12 = load i16, ptr %nField6, align 8
  %conv7 = zext i16 %12 to i32
  %13 = load ptr, ptr %pKeyInfo, align 8
  %nAllField = getelementptr inbounds nuw %struct.KeyInfo, ptr %13, i32 0, i32 3
  %14 = load i16, ptr %nAllField, align 8
  %conv8 = zext i16 %14 to i32
  %cmp9 = icmp sgt i32 %conv7, %conv8
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  %call12 = call i32 @sqlite3CorruptError(i32 noundef 64213)
  store i32 %call12, ptr %rc, align 4
  br label %moveto_done

if.end13:                                         ; preds = %lor.lhs.false
  br label %if.end14

if.else:                                          ; preds = %entry
  store ptr null, ptr %pIdxKey, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end13
  %15 = load ptr, ptr %pCur.addr, align 8
  %16 = load ptr, ptr %pIdxKey, align 8
  %17 = load i64, ptr %nKey.addr, align 8
  %18 = load i32, ptr %bias.addr, align 4
  %19 = load ptr, ptr %pRes.addr, align 8
  %call15 = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %15, ptr noundef %16, i64 noundef %17, i32 noundef %18, ptr noundef %19)
  store i32 %call15, ptr %rc, align 4
  br label %moveto_done

moveto_done:                                      ; preds = %if.end14, %if.then11
  %20 = load ptr, ptr %pIdxKey, align 8
  %tobool16 = icmp ne ptr %20, null
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %moveto_done
  %21 = load ptr, ptr %pCur.addr, align 8
  %pKeyInfo18 = getelementptr inbounds nuw %struct.BtCursor, ptr %21, i32 0, i32 17
  %22 = load ptr, ptr %pKeyInfo18, align 8
  %db = getelementptr inbounds nuw %struct.KeyInfo, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %db, align 8
  %24 = load ptr, ptr %pIdxKey, align 8
  call void @sqlite3DbFree(ptr noundef %23, ptr noundef %24)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %moveto_done
  %25 = load i32, ptr %rc, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then2
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
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
