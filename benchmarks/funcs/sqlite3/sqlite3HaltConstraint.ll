; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3HaltConstraint(ptr noundef %pParse, i32 noundef %errCode, i32 noundef %onError, ptr noundef %p4, i8 noundef signext %p4type, i8 noundef zeroext %p5Errmsg) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %errCode.addr = alloca i32, align 4
  %onError.addr = alloca i32, align 4
  %p4.addr = alloca ptr, align 8
  %p4type.addr = alloca i8, align 1
  %p5Errmsg.addr = alloca i8, align 1
  %v = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %errCode, ptr %errCode.addr, align 4
  store i32 %onError, ptr %onError.addr, align 4
  store ptr %p4, ptr %p4.addr, align 8
  store i8 %p4type, ptr %p4type.addr, align 1
  store i8 %p5Errmsg, ptr %p5Errmsg.addr, align 1
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  %1 = load i32, ptr %onError.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %v, align 8
  %4 = load i32, ptr %errCode.addr, align 4
  %5 = load i32, ptr %onError.addr, align 4
  %6 = load ptr, ptr %p4.addr, align 8
  %7 = load i8, ptr %p4type.addr, align 1
  %conv = sext i8 %7 to i32
  %call1 = call i32 @sqlite3VdbeAddOp4(ptr noundef %3, i32 noundef 69, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %6, i32 noundef %conv)
  %8 = load ptr, ptr %v, align 8
  %9 = load i8, ptr %p5Errmsg.addr, align 1
  %conv2 = zext i8 %9 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %8, i16 noundef zeroext %conv2)
  ret void
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
