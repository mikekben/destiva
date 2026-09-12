; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

@sqlite3SmallTypeSizes = external hidden constant [128 x i8], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeSerialPut(ptr noundef %buf, ptr noundef %pMem, i32 noundef %serial_type) #1 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %pMem.addr = alloca ptr, align 8
  %serial_type.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %v = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  store i32 %serial_type, ptr %serial_type.addr, align 4
  %0 = load i32, ptr %serial_type.addr, align 4
  %cmp = icmp ule i32 %0, 7
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %serial_type.addr, align 4
  %cmp1 = icmp ugt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %serial_type.addr, align 4
  %cmp2 = icmp eq i32 %2, 7
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %u, i64 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %pMem.addr, align 8
  %u4 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %u4, align 8
  store i64 %5, ptr %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %6 = load i32, ptr %serial_type.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw [128 x i8], ptr @sqlite3SmallTypeSizes, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, ptr %i, align 4
  store i32 %conv, ptr %len, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %8 = load i64, ptr %v, align 8
  %and = and i64 %8, 255
  %conv5 = trunc i64 %and to i8
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load i32, ptr %i, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %i, align 4
  %idxprom6 = zext i32 %dec to i64
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %9, i64 %idxprom6
  store i8 %conv5, ptr %arrayidx7, align 1
  %11 = load i64, ptr %v, align 8
  %shr = lshr i64 %11, 8
  store i64 %shr, ptr %v, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load i32, ptr %i, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %13 = load i32, ptr %len, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %entry
  %14 = load i32, ptr %serial_type.addr, align 4
  %cmp9 = icmp uge i32 %14, 12
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end8
  %15 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %n, align 4
  store i32 %16, ptr %len, align 4
  %17 = load i32, ptr %len, align 4
  %cmp12 = icmp ugt i32 %17, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  %18 = load ptr, ptr %buf.addr, align 8
  %19 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %z, align 8
  %21 = load i32, ptr %len, align 4
  %conv15 = zext i32 %21 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %20, i64 %conv15, i1 false)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then11
  %22 = load i32, ptr %len, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.end16, %do.end
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

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
