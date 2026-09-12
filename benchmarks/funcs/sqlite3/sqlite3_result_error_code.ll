; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemSetStr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @sqlite3_result_error_code(ptr noundef %pCtx, i32 noundef %errCode) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %errCode.addr = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %errCode, ptr %errCode.addr, align 4
  %0 = load i32, ptr %errCode.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %errCode.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ -1, %cond.false ]
  %2 = load ptr, ptr %pCtx.addr, align 8
  %isError = getelementptr inbounds nuw %struct.sqlite3_context, ptr %2, i32 0, i32 5
  store i32 %cond, ptr %isError, align 4
  %3 = load ptr, ptr %pCtx.addr, align 8
  %pOut = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pOut, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %flags, align 8
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %pOut2 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pOut2, align 8
  %8 = load i32, ptr %errCode.addr, align 4
  %call = call ptr @sqlite3ErrStr(i32 noundef %8)
  %call3 = call i32 @sqlite3VdbeMemSetStr(ptr noundef %7, ptr noundef %call, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ErrStr(i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
