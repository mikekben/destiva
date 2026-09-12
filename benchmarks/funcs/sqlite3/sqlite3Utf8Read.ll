; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3Utf8Trans1 = external hidden constant [64 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Utf8Read(ptr noundef %pz) #0 {
entry:
  %pz.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %0, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, ptr %c, align 4
  %3 = load i32, ptr %c, align 4
  %cmp = icmp uge i32 %3, 192
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %c, align 4
  %sub = sub i32 %4, 192
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw [64 x i8], ptr @sqlite3Utf8Trans1, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, ptr %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load ptr, ptr %pz.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i8, ptr %7, align 1
  %conv3 = zext i8 %8 to i32
  %and = and i32 %conv3, 192
  %cmp4 = icmp eq i32 %and, 128
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %c, align 4
  %shl = shl i32 %9, 6
  %10 = load ptr, ptr %pz.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %incdec.ptr6 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr6, ptr %10, align 8
  %12 = load i8, ptr %11, align 1
  %conv7 = zext i8 %12 to i32
  %and8 = and i32 63, %conv7
  %add = add i32 %shl, %and8
  store i32 %add, ptr %c, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %13 = load i32, ptr %c, align 4
  %cmp9 = icmp ult i32 %13, 128
  br i1 %cmp9, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %14 = load i32, ptr %c, align 4
  %and11 = and i32 %14, -2048
  %cmp12 = icmp eq i32 %and11, 55296
  br i1 %cmp12, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %15 = load i32, ptr %c, align 4
  %and15 = and i32 %15, -2
  %cmp16 = icmp eq i32 %and15, 65534
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %while.end
  store i32 65533, ptr %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then18, %lor.lhs.false14
  br label %if.end19

if.end19:                                         ; preds = %if.end, %entry
  %16 = load i32, ptr %c, align 4
  ret i32 %16
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
