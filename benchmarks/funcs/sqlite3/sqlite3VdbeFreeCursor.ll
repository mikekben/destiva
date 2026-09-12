; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3_vtab_cursor = type { ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeFreeCursor(ptr noundef %p, ptr noundef %pCx) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pCx.addr = alloca ptr, align 8
  %pVCur = alloca ptr, align 8
  %pModule = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pCx, ptr %pCx.addr, align 8
  %0 = load ptr, ptr %pCx.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pCx.addr, align 8
  %eCurType = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %eCurType, align 8
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db, align 8
  %5 = load ptr, ptr %pCx.addr, align 8
  call void @sqlite3VdbeSorterClose(ptr noundef %4, ptr noundef %5)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %6 = load ptr, ptr %pCx.addr, align 8
  %isEphemeral = getelementptr inbounds nuw %struct.VdbeCursor, ptr %6, i32 0, i32 5
  %bf.load = load i8, ptr %isEphemeral, align 1
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.bb1
  %7 = load ptr, ptr %pCx.addr, align 8
  %pBtx = getelementptr inbounds nuw %struct.VdbeCursor, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %pBtx, align 8
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  %9 = load ptr, ptr %pCx.addr, align 8
  %pBtx5 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %pBtx5, align 8
  %call = call i32 @sqlite3BtreeClose(ptr noundef %10)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2
  br label %if.end8

if.else:                                          ; preds = %sw.bb1
  %11 = load ptr, ptr %pCx.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %11, i32 0, i32 12
  %12 = load ptr, ptr %uc, align 8
  %call7 = call i32 @sqlite3BtreeCloseCursor(ptr noundef %12)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end6
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %13 = load ptr, ptr %pCx.addr, align 8
  %uc10 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %uc10, align 8
  store ptr %14, ptr %pVCur, align 8
  %15 = load ptr, ptr %pVCur, align 8
  %pVtab = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pVtab, align 8
  %pModule11 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pModule11, align 8
  store ptr %17, ptr %pModule, align 8
  %18 = load ptr, ptr %pVCur, align 8
  %pVtab12 = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pVtab12, align 8
  %nRef = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nRef, align 8
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %nRef, align 8
  %21 = load ptr, ptr %pModule, align 8
  %xClose = getelementptr inbounds nuw %struct.sqlite3_module, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %xClose, align 8
  %23 = load ptr, ptr %pVCur, align 8
  %call13 = call i32 %22(ptr noundef %23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %if.end8, %sw.bb, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSorterClose(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCloseCursor(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
