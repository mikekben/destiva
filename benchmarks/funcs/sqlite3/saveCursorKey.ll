; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @saveCursorKey(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pKey = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pCur.addr, align 8
  %curIntKey = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 14
  %1 = load i8, ptr %curIntKey, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %call = call i64 @sqlite3BtreeIntegerKey(ptr noundef %2)
  %3 = load ptr, ptr %pCur.addr, align 8
  %nKey = getelementptr inbounds nuw %struct.BtCursor, ptr %3, i32 0, i32 11
  store i64 %call, ptr %nKey, align 8
  br label %if.end18

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pCur.addr, align 8
  %call1 = call i32 @sqlite3BtreePayloadSize(ptr noundef %4)
  %conv = zext i32 %call1 to i64
  %5 = load ptr, ptr %pCur.addr, align 8
  %nKey2 = getelementptr inbounds nuw %struct.BtCursor, ptr %5, i32 0, i32 11
  store i64 %conv, ptr %nKey2, align 8
  %6 = load ptr, ptr %pCur.addr, align 8
  %nKey3 = getelementptr inbounds nuw %struct.BtCursor, ptr %6, i32 0, i32 11
  %7 = load i64, ptr %nKey3, align 8
  %add = add nsw i64 %7, 9
  %add4 = add nsw i64 %add, 8
  %call5 = call ptr @sqlite3Malloc(i64 noundef %add4)
  store ptr %call5, ptr %pKey, align 8
  %8 = load ptr, ptr %pKey, align 8
  %tobool6 = icmp ne ptr %8, null
  br i1 %tobool6, label %if.then7, label %if.else16

if.then7:                                         ; preds = %if.else
  %9 = load ptr, ptr %pCur.addr, align 8
  %10 = load ptr, ptr %pCur.addr, align 8
  %nKey8 = getelementptr inbounds nuw %struct.BtCursor, ptr %10, i32 0, i32 11
  %11 = load i64, ptr %nKey8, align 8
  %conv9 = trunc i64 %11 to i32
  %12 = load ptr, ptr %pKey, align 8
  %call10 = call i32 @sqlite3BtreePayload(ptr noundef %9, i32 noundef 0, i32 noundef %conv9, ptr noundef %12)
  store i32 %call10, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.then7
  %14 = load ptr, ptr %pKey, align 8
  %15 = load ptr, ptr %pCur.addr, align 8
  %nKey13 = getelementptr inbounds nuw %struct.BtCursor, ptr %15, i32 0, i32 11
  %16 = load i64, ptr %nKey13, align 8
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %16
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 17, i1 false)
  %17 = load ptr, ptr %pKey, align 8
  %18 = load ptr, ptr %pCur.addr, align 8
  %pKey14 = getelementptr inbounds nuw %struct.BtCursor, ptr %18, i32 0, i32 7
  store ptr %17, ptr %pKey14, align 8
  br label %if.end

if.else15:                                        ; preds = %if.then7
  %19 = load ptr, ptr %pKey, align 8
  call void @sqlite3_free(ptr noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then12
  br label %if.end17

if.else16:                                        ; preds = %if.else
  store i32 7, ptr %rc, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  %20 = load i32, ptr %rc, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3BtreeIntegerKey(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreePayloadSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreePayload(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
