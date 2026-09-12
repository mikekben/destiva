; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden void @setResultStrOrError(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @invokeValueDestructor(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @sqlite3_result_text64(ptr noundef %pCtx, ptr noundef %z, i64 noundef %n, ptr noundef %xDel, i8 noundef zeroext %enc) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %xDel.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %xDel, ptr %xDel.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  %0 = load i8, ptr %enc.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 2, ptr %enc.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %n.addr, align 8
  %cmp2 = icmp ugt i64 %1, 2147483647
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr %z.addr, align 8
  %3 = load ptr, ptr %xDel.addr, align 8
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @invokeValueDestructor(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %if.end6

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %6 = load ptr, ptr %z.addr, align 8
  %7 = load i64, ptr %n.addr, align 8
  %conv5 = trunc i64 %7 to i32
  %8 = load i8, ptr %enc.addr, align 1
  %9 = load ptr, ptr %xDel.addr, align 8
  call void @setResultStrOrError(ptr noundef %5, ptr noundef %6, i32 noundef %conv5, i8 noundef zeroext %8, ptr noundef %9)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
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
