; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemMakeWriteable(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemHandleBom(ptr noundef %pMem) #0 {
entry:
  %pMem.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %bom = alloca i8, align 1
  %b1 = alloca i8, align 1
  %b2 = alloca i8, align 1
  store ptr %pMem, ptr %pMem.addr, align 8
  store i32 0, ptr %rc, align 4
  store i8 0, ptr %bom, align 1
  %0 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %n, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr %b1, align 1
  %5 = load ptr, ptr %pMem.addr, align 8
  %z1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %z1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %add.ptr, align 1
  store i8 %7, ptr %b2, align 1
  %8 = load i8, ptr %b1, align 1
  %conv = zext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 254
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load i8, ptr %b2, align 1
  %conv4 = zext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 255
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  store i8 3, ptr %bom, align 1
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  %10 = load i8, ptr %b1, align 1
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv8, 255
  br i1 %cmp9, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %if.end
  %11 = load i8, ptr %b2, align 1
  %conv12 = zext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 254
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true11
  store i8 2, ptr %bom, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true11, %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  %12 = load i8, ptr %bom, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then18, label %if.end37

if.then18:                                        ; preds = %if.end17
  %13 = load ptr, ptr %pMem.addr, align 8
  %call = call i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %13)
  store i32 %call, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp19 = icmp eq i32 %14, 0
  br i1 %cmp19, label %if.then21, label %if.end36

if.then21:                                        ; preds = %if.then18
  %15 = load ptr, ptr %pMem.addr, align 8
  %n22 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %n22, align 4
  %sub = sub nsw i32 %16, 2
  store i32 %sub, ptr %n22, align 4
  %17 = load ptr, ptr %pMem.addr, align 8
  %z23 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %z23, align 8
  %19 = load ptr, ptr %pMem.addr, align 8
  %z24 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %z24, align 8
  %arrayidx = getelementptr inbounds i8, ptr %20, i64 2
  %21 = load ptr, ptr %pMem.addr, align 8
  %n25 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %21, i32 0, i32 4
  %22 = load i32, ptr %n25, align 4
  %conv26 = sext i32 %22 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %18, ptr align 1 %arrayidx, i64 %conv26, i1 false)
  %23 = load ptr, ptr %pMem.addr, align 8
  %z27 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %z27, align 8
  %25 = load ptr, ptr %pMem.addr, align 8
  %n28 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %n28, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %24, i64 %idxprom
  store i8 0, ptr %arrayidx29, align 1
  %27 = load ptr, ptr %pMem.addr, align 8
  %z30 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %z30, align 8
  %29 = load ptr, ptr %pMem.addr, align 8
  %n31 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %n31, align 4
  %add = add nsw i32 %30, 1
  %idxprom32 = sext i32 %add to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %28, i64 %idxprom32
  store i8 0, ptr %arrayidx33, align 1
  %31 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %31, i32 0, i32 1
  %32 = load i16, ptr %flags, align 8
  %conv34 = zext i16 %32 to i32
  %or = or i32 %conv34, 512
  %conv35 = trunc i32 %or to i16
  store i16 %conv35, ptr %flags, align 8
  %33 = load i8, ptr %bom, align 1
  %34 = load ptr, ptr %pMem.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %34, i32 0, i32 2
  store i8 %33, ptr %enc, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then21, %if.then18
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end17
  %35 = load i32, ptr %rc, align 4
  ret i32 %35
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
