; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_value_blob(ptr noundef %pVal) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVal.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pVal, ptr %pVal.addr, align 8
  %0 = load ptr, ptr %pVal.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 1
  %2 = load i16, ptr %flags, align 8
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 18
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %flags1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 1
  %4 = load i16, ptr %flags1, align 8
  %conv2 = zext i16 %4 to i32
  %and3 = and i32 %conv2, 16384
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load ptr, ptr %p, align 8
  %call = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %5)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  %cmp = icmp ne i32 %cond, 0
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %cond.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load ptr, ptr %p, align 8
  %flags7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 1
  %7 = load i16, ptr %flags7, align 8
  %conv8 = zext i16 %7 to i32
  %or = or i32 %conv8, 16
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, ptr %flags7, align 8
  %8 = load ptr, ptr %p, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %n, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %if.end
  %10 = load ptr, ptr %p, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %z, align 8
  br label %cond.end13

cond.false12:                                     ; preds = %if.end
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi ptr [ %11, %cond.true11 ], [ null, %cond.false12 ]
  store ptr %cond14, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %pVal.addr, align 8
  %call15 = call ptr @sqlite3_value_text(ptr noundef %12)
  store ptr %call15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %cond.end13, %if.then6
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemExpandBlob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
