; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_str_value(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_toobig(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @groupConcatValue(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %pAccum = alloca ptr, align 8
  %zText = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 0)
  store ptr %call, ptr %pAccum, align 8
  %1 = load ptr, ptr %pAccum, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pAccum, align 8
  %accError = getelementptr inbounds nuw %struct.sqlite3_str, ptr %2, i32 0, i32 5
  %3 = load i8, ptr %accError, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 18
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_toobig(ptr noundef %4)
  br label %if.end10

if.else:                                          ; preds = %if.then
  %5 = load ptr, ptr %pAccum, align 8
  %accError3 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %5, i32 0, i32 5
  %6 = load i8, ptr %accError3, align 4
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 7
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %7 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %7)
  br label %if.end

if.else8:                                         ; preds = %if.else
  %8 = load ptr, ptr %pAccum, align 8
  %call9 = call ptr @sqlite3_str_value(ptr noundef %8)
  store ptr %call9, ptr %zText, align 8
  %9 = load ptr, ptr %context.addr, align 8
  %10 = load ptr, ptr %zText, align 8
  call void @sqlite3_result_text(ptr noundef %9, ptr noundef %10, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then2
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
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
