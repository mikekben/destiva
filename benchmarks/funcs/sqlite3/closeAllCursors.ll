; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.VdbeFrame = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @releaseMemArray(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @closeAllCursors(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pFrame1 = alloca ptr, align 8
  %pDel = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pFrame = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 43
  %1 = load ptr, ptr %pFrame, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pFrame2 = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 43
  %3 = load ptr, ptr %pFrame2, align 8
  store ptr %3, ptr %pFrame1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %pFrame1, align 8
  %pParent = getelementptr inbounds nuw %struct.VdbeFrame, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pParent, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %pFrame1, align 8
  %pParent4 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pParent4, align 8
  store ptr %7, ptr %pFrame1, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %pFrame1, align 8
  %call = call i32 @sqlite3VdbeFrameRestore(ptr noundef %8)
  %9 = load ptr, ptr %p.addr, align 8
  %pFrame5 = getelementptr inbounds nuw %struct.Vdbe, ptr %9, i32 0, i32 43
  store ptr null, ptr %pFrame5, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %nFrame = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 45
  store i32 0, ptr %nFrame, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %11 = load ptr, ptr %p.addr, align 8
  call void @closeCursorsInFrame(ptr noundef %11)
  %12 = load ptr, ptr %p.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.Vdbe, ptr %12, i32 0, i32 19
  %13 = load ptr, ptr %aMem, align 8
  %tobool6 = icmp ne ptr %13, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %14 = load ptr, ptr %p.addr, align 8
  %aMem8 = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %aMem8, align 8
  %16 = load ptr, ptr %p.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Vdbe, ptr %16, i32 0, i32 7
  %17 = load i32, ptr %nMem, align 8
  call void @releaseMemArray(ptr noundef %15, i32 noundef %17)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end9
  %18 = load ptr, ptr %p.addr, align 8
  %pDelFrame = getelementptr inbounds nuw %struct.Vdbe, ptr %18, i32 0, i32 44
  %19 = load ptr, ptr %pDelFrame, align 8
  %tobool10 = icmp ne ptr %19, null
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %p.addr, align 8
  %pDelFrame11 = getelementptr inbounds nuw %struct.Vdbe, ptr %20, i32 0, i32 44
  %21 = load ptr, ptr %pDelFrame11, align 8
  store ptr %21, ptr %pDel, align 8
  %22 = load ptr, ptr %pDel, align 8
  %pParent12 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %pParent12, align 8
  %24 = load ptr, ptr %p.addr, align 8
  %pDelFrame13 = getelementptr inbounds nuw %struct.Vdbe, ptr %24, i32 0, i32 44
  store ptr %23, ptr %pDelFrame13, align 8
  %25 = load ptr, ptr %pDel, align 8
  call void @sqlite3VdbeFrameDelete(ptr noundef %25)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %p.addr, align 8
  %pAuxData = getelementptr inbounds nuw %struct.Vdbe, ptr %26, i32 0, i32 48
  %27 = load ptr, ptr %pAuxData, align 8
  %tobool14 = icmp ne ptr %27, null
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %while.end
  %28 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %db, align 8
  %30 = load ptr, ptr %p.addr, align 8
  %pAuxData16 = getelementptr inbounds nuw %struct.Vdbe, ptr %30, i32 0, i32 48
  call void @sqlite3VdbeDeleteAuxData(ptr noundef %29, ptr noundef %pAuxData16, i32 noundef -1, i32 noundef 0)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeFrameRestore(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @closeCursorsInFrame(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeFrameDelete(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeDeleteAuxData(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
