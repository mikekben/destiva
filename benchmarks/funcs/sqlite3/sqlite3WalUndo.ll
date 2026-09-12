; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @walIndexHdr(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walCleanupHash(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalUndo(ptr noundef %pWal, ptr noundef %xUndo, ptr noundef %pUndoCtx) #1 {
entry:
  %pWal.addr = alloca ptr, align 8
  %xUndo.addr = alloca ptr, align 8
  %pUndoCtx.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iMax = alloca i32, align 4
  %iFrame = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %xUndo, ptr %xUndo.addr, align 8
  store ptr %pUndoCtx, ptr %pUndoCtx.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %writeLock = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 12
  %1 = load i8, ptr %writeLock, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %2, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 6
  %3 = load i32, ptr %mxFrame, align 8
  store i32 %3, ptr %iMax, align 4
  %4 = load ptr, ptr %pWal.addr, align 8
  %hdr1 = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %pWal.addr, align 8
  %call = call ptr @walIndexHdr(ptr noundef %5)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hdr1, ptr align 1 %call, i64 48, i1 false)
  %6 = load ptr, ptr %pWal.addr, align 8
  %hdr2 = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 19
  %mxFrame3 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr2, i32 0, i32 6
  %7 = load i32, ptr %mxFrame3, align 8
  %add = add i32 %7, 1
  store i32 %add, ptr %iFrame, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, ptr %iFrame, align 4
  %10 = load i32, ptr %iMax, align 4
  %cmp4 = icmp ule i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %12 = load ptr, ptr %xUndo.addr, align 8
  %13 = load ptr, ptr %pUndoCtx.addr, align 8
  %14 = load ptr, ptr %pWal.addr, align 8
  %15 = load i32, ptr %iFrame, align 4
  %call5 = call i32 @walFramePgno(ptr noundef %14, i32 noundef %15)
  %call6 = call i32 %12(ptr noundef %13, i32 noundef %call5)
  store i32 %call6, ptr %rc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %iFrame, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %iFrame, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %17 = load i32, ptr %iMax, align 4
  %18 = load ptr, ptr %pWal.addr, align 8
  %hdr7 = getelementptr inbounds nuw %struct.Wal, ptr %18, i32 0, i32 19
  %mxFrame8 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr7, i32 0, i32 6
  %19 = load i32, ptr %mxFrame8, align 8
  %cmp9 = icmp ne i32 %17, %19
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %for.end
  %20 = load ptr, ptr %pWal.addr, align 8
  call void @walCleanupHash(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then10, %for.end
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %21 = load i32, ptr %rc, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
declare hidden i32 @walFramePgno(ptr noundef, i32 noundef) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
