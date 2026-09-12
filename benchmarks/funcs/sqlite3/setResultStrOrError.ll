; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }

; Function Attrs: nounwind uwtable
define hidden void @setResultStrOrError(ptr noundef %pCtx, ptr noundef %z, i32 noundef %n, i8 noundef zeroext %enc, ptr noundef %xDel) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %enc.addr = alloca i8, align 1
  %xDel.addr = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i8 %enc, ptr %enc.addr, align 1
  store ptr %xDel, ptr %xDel.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pOut = getelementptr inbounds nuw %struct.sqlite3_context, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pOut, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %3 = load i32, ptr %n.addr, align 4
  %4 = load i8, ptr %enc.addr, align 1
  %5 = load ptr, ptr %xDel.addr, align 8
  %call = call i32 @sqlite3VdbeMemSetStr(ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef %5)
  %cmp = icmp eq i32 %call, 18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_toobig(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemSetStr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_toobig(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
