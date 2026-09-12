; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VtabSync(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %aVTrans = alloca ptr, align 8
  %x = alloca ptr, align 8
  %pVtab = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %aVTrans1 = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 70
  %1 = load ptr, ptr %aVTrans1, align 8
  store ptr %1, ptr %aVTrans, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %aVTrans2 = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 70
  store ptr null, ptr %aVTrans2, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %db.addr, align 8
  %nVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 67
  %6 = load i32, ptr %nVTrans, align 4
  %cmp3 = icmp slt i32 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load ptr, ptr %aVTrans, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %pVtab4 = getelementptr inbounds nuw %struct.VTable, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pVtab4, align 8
  store ptr %11, ptr %pVtab, align 8
  %12 = load ptr, ptr %pVtab, align 8
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %pVtab, align 8
  %pModule = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pModule, align 8
  %xSync = getelementptr inbounds nuw %struct.sqlite3_module, ptr %14, i32 0, i32 15
  %15 = load ptr, ptr %xSync, align 8
  store ptr %15, ptr %x, align 8
  %cmp5 = icmp ne ptr %15, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load ptr, ptr %x, align 8
  %17 = load ptr, ptr %pVtab, align 8
  %call = call i32 %16(ptr noundef %17)
  store i32 %call, ptr %rc, align 4
  %18 = load ptr, ptr %p.addr, align 8
  %19 = load ptr, ptr %pVtab, align 8
  call void @sqlite3VtabImportErrmsg(ptr noundef %18, ptr noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %21 = load ptr, ptr %aVTrans, align 8
  %22 = load ptr, ptr %db.addr, align 8
  %aVTrans6 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 70
  store ptr %21, ptr %aVTrans6, align 8
  %23 = load i32, ptr %rc, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabImportErrmsg(ptr noundef, ptr noundef) #0

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
