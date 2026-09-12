; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemExpandBlob(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %pMem) #0 {
entry:
  %retval = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 18
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pMem.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %flags2, align 8
  %conv3 = zext i16 %3 to i32
  %and4 = and i32 %conv3, 16384
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load ptr, ptr %pMem.addr, align 8
  %call = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %4)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then6, label %if.end

cond.false:                                       ; preds = %if.then
  br i1 false, label %if.then6, label %if.end

if.then6:                                         ; preds = %cond.false, %cond.true
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %5 = load ptr, ptr %pMem.addr, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 7
  %6 = load i32, ptr %szMalloc, align 8
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %z, align 8
  %9 = load ptr, ptr %pMem.addr, align 8
  %zMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %zMalloc, align 8
  %cmp9 = icmp ne ptr %8, %10
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load ptr, ptr %pMem.addr, align 8
  %call12 = call i32 @vdbeMemAddTerminator(ptr noundef %11)
  store i32 %call12, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %tobool13 = icmp ne i32 %12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  %13 = load i32, ptr %rc, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %lor.lhs.false
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  %14 = load ptr, ptr %pMem.addr, align 8
  %flags18 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %14, i32 0, i32 1
  %15 = load i16, ptr %flags18, align 8
  %conv19 = zext i16 %15 to i32
  %and20 = and i32 %conv19, -4097
  %conv21 = trunc i32 %and20 to i16
  store i16 %conv21, ptr %flags18, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then14, %if.then6
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeMemAddTerminator(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
