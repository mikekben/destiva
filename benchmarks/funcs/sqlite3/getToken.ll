; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @getToken(ptr noundef %pz) #0 {
entry:
  %pz.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %t = alloca i32, align 4
  store ptr %pz, ptr %pz.addr, align 8
  %0 = load ptr, ptr %pz.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %z, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load ptr, ptr %z, align 8
  %call = call i32 @sqlite3GetToken(ptr noundef %2, ptr noundef %t)
  %3 = load ptr, ptr %z, align 8
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %z, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i32, ptr %t, align 4
  %cmp = icmp eq i32 %4, 177
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %t, align 4
  %cmp1 = icmp eq i32 %5, 59
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %6 = load i32, ptr %t, align 4
  %cmp2 = icmp eq i32 %6, 113
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = load i32, ptr %t, align 4
  %cmp4 = icmp eq i32 %7, 114
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %8 = load i32, ptr %t, align 4
  %cmp6 = icmp eq i32 %8, 159
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %9 = load i32, ptr %t, align 4
  %cmp8 = icmp eq i32 %9, 160
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %10 = load i32, ptr %t, align 4
  %call10 = call i32 @sqlite3ParserFallback(i32 noundef %10)
  %cmp11 = icmp eq i32 %call10, 59
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %do.end
  store i32 59, ptr %t, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false9
  %11 = load ptr, ptr %z, align 8
  %12 = load ptr, ptr %pz.addr, align 8
  store ptr %11, ptr %12, align 8
  %13 = load i32, ptr %t, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ParserFallback(i32 noundef) #0

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
