; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.1003 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.1004 = external hidden unnamed_addr constant [14 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @renameColumnParseError(ptr noundef %pCtx, i32 noundef %bPost, ptr noundef %pType, ptr noundef %pObject, ptr noundef %pParse) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %bPost.addr = alloca i32, align 4
  %pType.addr = alloca ptr, align 8
  %pObject.addr = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %zT = alloca ptr, align 8
  %zN = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %bPost, ptr %bPost.addr, align 4
  store ptr %pType, ptr %pType.addr, align 8
  store ptr %pObject, ptr %pObject.addr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pType.addr, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %0)
  store ptr %call, ptr %zT, align 8
  %1 = load ptr, ptr %pObject.addr, align 8
  %call1 = call ptr @sqlite3_value_text(ptr noundef %1)
  store ptr %call1, ptr %zN, align 8
  %2 = load ptr, ptr %zT, align 8
  %3 = load ptr, ptr %zN, align 8
  %4 = load i32, ptr %bPost.addr, align 4
  %tobool = icmp ne i32 %4, 0
  %5 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.1004, ptr @.str.3
  %6 = load ptr, ptr %pParse.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %zErrMsg, align 8
  %call2 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1003, ptr noundef %2, ptr noundef %3, ptr noundef %cond, ptr noundef %7)
  store ptr %call2, ptr %zErr, align 8
  %8 = load ptr, ptr %pCtx.addr, align 8
  %9 = load ptr, ptr %zErr, align 8
  call void @sqlite3_result_error(ptr noundef %8, ptr noundef %9, i32 noundef -1)
  %10 = load ptr, ptr %zErr, align 8
  call void @sqlite3_free(ptr noundef %10)
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
