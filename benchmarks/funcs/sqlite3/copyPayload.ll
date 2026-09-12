; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @copyPayload(ptr noundef %pPayload, ptr noundef %pBuf, i32 noundef %nByte, i32 noundef %eOp, ptr noundef %pDbPage) #1 {
entry:
  %retval = alloca i32, align 4
  %pPayload.addr = alloca ptr, align 8
  %pBuf.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %eOp.addr = alloca i32, align 4
  %pDbPage.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pPayload, ptr %pPayload.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store i32 %eOp, ptr %eOp.addr, align 4
  store ptr %pDbPage, ptr %pDbPage.addr, align 8
  %0 = load i32, ptr %eOp.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pDbPage.addr, align 8
  %call = call i32 @sqlite3PagerWrite(ptr noundef %1)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load i32, ptr %rc, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %pPayload.addr, align 8
  %5 = load ptr, ptr %pBuf.addr, align 8
  %6 = load i32, ptr %nByte.addr, align 4
  %conv = sext i32 %6 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %5, i64 %conv, i1 false)
  br label %if.end3

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pBuf.addr, align 8
  %8 = load ptr, ptr %pPayload.addr, align 8
  %9 = load i32, ptr %nByte.addr, align 4
  %conv2 = sext i32 %9 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %conv2, i1 false)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then1
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
