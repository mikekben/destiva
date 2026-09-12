; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @lengthFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %z0 = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  switch i32 %call, label %sw.default [
    i32 4, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %3 = load ptr, ptr %context.addr, align 8
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_bytes(ptr noundef %5)
  call void @sqlite3_result_int(ptr noundef %3, i32 noundef %call2)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx4, align 8
  %call5 = call ptr @sqlite3_value_text(ptr noundef %7)
  store ptr %call5, ptr %z, align 8
  %8 = load ptr, ptr %z, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb3
  %9 = load ptr, ptr %z, align 8
  store ptr %9, ptr %z0, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end
  %10 = load ptr, ptr %z, align 8
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr %c, align 1
  %conv = zext i8 %11 to i32
  %cmp6 = icmp ne i32 %conv, 0
  br i1 %cmp6, label %while.body, label %while.end20

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %13 = load i8, ptr %c, align 1
  %conv8 = zext i8 %13 to i32
  %cmp9 = icmp sge i32 %conv8, 192
  br i1 %cmp9, label %if.then11, label %if.end19

if.then11:                                        ; preds = %while.body
  br label %while.cond12

while.cond12:                                     ; preds = %while.body16, %if.then11
  %14 = load ptr, ptr %z, align 8
  %15 = load i8, ptr %14, align 1
  %conv13 = zext i8 %15 to i32
  %and = and i32 %conv13, 192
  %cmp14 = icmp eq i32 %and, 128
  br i1 %cmp14, label %while.body16, label %while.end

while.body16:                                     ; preds = %while.cond12
  %16 = load ptr, ptr %z, align 8
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr17, ptr %z, align 8
  %17 = load ptr, ptr %z0, align 8
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr18, ptr %z0, align 8
  br label %while.cond12, !llvm.loop !6

while.end:                                        ; preds = %while.cond12
  br label %if.end19

if.end19:                                         ; preds = %while.end, %while.body
  br label %while.cond, !llvm.loop !8

while.end20:                                      ; preds = %while.cond
  %18 = load ptr, ptr %context.addr, align 8
  %19 = load ptr, ptr %z, align 8
  %20 = load ptr, ptr %z0, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv21 = trunc i64 %sub.ptr.sub to i32
  call void @sqlite3_result_int(ptr noundef %18, i32 noundef %conv21)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %21 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_null(ptr noundef %21)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end20, %if.then, %sw.bb
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
