; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str.21 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.22 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.23 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.24 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.25 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.26 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.27 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @UnixVfs_Filetype(ptr noundef %zPath, ptr noundef %pCtx) #0 {
entry:
  %retval = alloca i32, align 4
  %zPath.addr = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %rc = alloca i32, align 4
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %call = call i32 @stat(ptr noundef %0, ptr noundef %st) #2
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_string(ptr noundef %2, ptr noundef @.str.21, i32 noundef 7)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 3
  %3 = load i32, ptr %st_mode, align 8
  %and = and i32 %3, 61440
  %cmp2 = icmp eq i32 %and, 32768
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_string(ptr noundef %4, ptr noundef @.str.22, i32 noundef 4)
  br label %if.end41

if.else:                                          ; preds = %if.end
  %st_mode5 = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 3
  %5 = load i32, ptr %st_mode5, align 8
  %and6 = and i32 %5, 61440
  %cmp7 = icmp eq i32 %and6, 16384
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_string(ptr noundef %6, ptr noundef @.str.23, i32 noundef 3)
  br label %if.end40

if.else10:                                        ; preds = %if.else
  %st_mode11 = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 3
  %7 = load i32, ptr %st_mode11, align 8
  %and12 = and i32 %7, 61440
  %cmp13 = icmp eq i32 %and12, 40960
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else10
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call i32 @ph7_result_string(ptr noundef %8, ptr noundef @.str.24, i32 noundef 4)
  br label %if.end39

if.else16:                                        ; preds = %if.else10
  %st_mode17 = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 3
  %9 = load i32, ptr %st_mode17, align 8
  %and18 = and i32 %9, 61440
  %cmp19 = icmp eq i32 %and18, 24576
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else16
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call21 = call i32 @ph7_result_string(ptr noundef %10, ptr noundef @.str.25, i32 noundef 5)
  br label %if.end38

if.else22:                                        ; preds = %if.else16
  %st_mode23 = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 3
  %11 = load i32, ptr %st_mode23, align 8
  %and24 = and i32 %11, 61440
  %cmp25 = icmp eq i32 %and24, 49152
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else22
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call27 = call i32 @ph7_result_string(ptr noundef %12, ptr noundef @.str.26, i32 noundef 6)
  br label %if.end37

if.else28:                                        ; preds = %if.else22
  %st_mode29 = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 3
  %13 = load i32, ptr %st_mode29, align 8
  %and30 = and i32 %13, 61440
  %cmp31 = icmp eq i32 %and30, 4096
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else28
  %14 = load ptr, ptr %pCtx.addr, align 8
  %call33 = call i32 @ph7_result_string(ptr noundef %14, ptr noundef @.str.27, i32 noundef 4)
  br label %if.end36

if.else34:                                        ; preds = %if.else28
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call35 = call i32 @ph7_result_string(ptr noundef %15, ptr noundef @.str.21, i32 noundef 7)
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then26
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then20
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then14
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then8
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then3
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
