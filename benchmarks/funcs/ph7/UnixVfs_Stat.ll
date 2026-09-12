; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str.8 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.9 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.10 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.11 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.12 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.13 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.14 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.15 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.16 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.17 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.18 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.19 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.20 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_strkey_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @UnixVfs_Stat(ptr noundef %zPath, ptr noundef %pArray, ptr noundef %pWorker) #0 {
entry:
  %retval = alloca i32, align 4
  %zPath.addr = alloca ptr, align 8
  %pArray.addr = alloca ptr, align 8
  %pWorker.addr = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %rc = alloca i32, align 4
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %pArray, ptr %pArray.addr, align 8
  store ptr %pWorker, ptr %pWorker.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %call = call i32 @stat(ptr noundef %0, ptr noundef %st) #2
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pWorker.addr, align 8
  %st_dev = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 0
  %3 = load i64, ptr %st_dev, align 8
  %call1 = call i32 @ph7_value_int64(ptr noundef %2, i64 noundef %3)
  %4 = load ptr, ptr %pArray.addr, align 8
  %5 = load ptr, ptr %pWorker.addr, align 8
  %call2 = call i32 @ph7_array_add_strkey_elem(ptr noundef %4, ptr noundef @.str.8, ptr noundef %5)
  %6 = load ptr, ptr %pWorker.addr, align 8
  %st_ino = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 1
  %7 = load i64, ptr %st_ino, align 8
  %call3 = call i32 @ph7_value_int64(ptr noundef %6, i64 noundef %7)
  %8 = load ptr, ptr %pArray.addr, align 8
  %9 = load ptr, ptr %pWorker.addr, align 8
  %call4 = call i32 @ph7_array_add_strkey_elem(ptr noundef %8, ptr noundef @.str.9, ptr noundef %9)
  %10 = load ptr, ptr %pWorker.addr, align 8
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 3
  %11 = load i32, ptr %st_mode, align 8
  %call5 = call i32 @ph7_value_int(ptr noundef %10, i32 noundef %11)
  %12 = load ptr, ptr %pArray.addr, align 8
  %13 = load ptr, ptr %pWorker.addr, align 8
  %call6 = call i32 @ph7_array_add_strkey_elem(ptr noundef %12, ptr noundef @.str.10, ptr noundef %13)
  %14 = load ptr, ptr %pWorker.addr, align 8
  %st_nlink = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 2
  %15 = load i64, ptr %st_nlink, align 8
  %conv = trunc i64 %15 to i32
  %call7 = call i32 @ph7_value_int(ptr noundef %14, i32 noundef %conv)
  %16 = load ptr, ptr %pArray.addr, align 8
  %17 = load ptr, ptr %pWorker.addr, align 8
  %call8 = call i32 @ph7_array_add_strkey_elem(ptr noundef %16, ptr noundef @.str.11, ptr noundef %17)
  %18 = load ptr, ptr %pWorker.addr, align 8
  %st_uid = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 4
  %19 = load i32, ptr %st_uid, align 4
  %call9 = call i32 @ph7_value_int(ptr noundef %18, i32 noundef %19)
  %20 = load ptr, ptr %pArray.addr, align 8
  %21 = load ptr, ptr %pWorker.addr, align 8
  %call10 = call i32 @ph7_array_add_strkey_elem(ptr noundef %20, ptr noundef @.str.12, ptr noundef %21)
  %22 = load ptr, ptr %pWorker.addr, align 8
  %st_gid = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 5
  %23 = load i32, ptr %st_gid, align 8
  %call11 = call i32 @ph7_value_int(ptr noundef %22, i32 noundef %23)
  %24 = load ptr, ptr %pArray.addr, align 8
  %25 = load ptr, ptr %pWorker.addr, align 8
  %call12 = call i32 @ph7_array_add_strkey_elem(ptr noundef %24, ptr noundef @.str.13, ptr noundef %25)
  %26 = load ptr, ptr %pWorker.addr, align 8
  %st_rdev = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 7
  %27 = load i64, ptr %st_rdev, align 8
  %conv13 = trunc i64 %27 to i32
  %call14 = call i32 @ph7_value_int(ptr noundef %26, i32 noundef %conv13)
  %28 = load ptr, ptr %pArray.addr, align 8
  %29 = load ptr, ptr %pWorker.addr, align 8
  %call15 = call i32 @ph7_array_add_strkey_elem(ptr noundef %28, ptr noundef @.str.14, ptr noundef %29)
  %30 = load ptr, ptr %pWorker.addr, align 8
  %st_size = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 8
  %31 = load i64, ptr %st_size, align 8
  %call16 = call i32 @ph7_value_int64(ptr noundef %30, i64 noundef %31)
  %32 = load ptr, ptr %pArray.addr, align 8
  %33 = load ptr, ptr %pWorker.addr, align 8
  %call17 = call i32 @ph7_array_add_strkey_elem(ptr noundef %32, ptr noundef @.str.15, ptr noundef %33)
  %34 = load ptr, ptr %pWorker.addr, align 8
  %st_atim = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 11
  %tv_sec = getelementptr inbounds nuw %struct.timespec, ptr %st_atim, i32 0, i32 0
  %35 = load i64, ptr %tv_sec, align 8
  %call18 = call i32 @ph7_value_int64(ptr noundef %34, i64 noundef %35)
  %36 = load ptr, ptr %pArray.addr, align 8
  %37 = load ptr, ptr %pWorker.addr, align 8
  %call19 = call i32 @ph7_array_add_strkey_elem(ptr noundef %36, ptr noundef @.str.16, ptr noundef %37)
  %38 = load ptr, ptr %pWorker.addr, align 8
  %st_mtim = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 12
  %tv_sec20 = getelementptr inbounds nuw %struct.timespec, ptr %st_mtim, i32 0, i32 0
  %39 = load i64, ptr %tv_sec20, align 8
  %call21 = call i32 @ph7_value_int64(ptr noundef %38, i64 noundef %39)
  %40 = load ptr, ptr %pArray.addr, align 8
  %41 = load ptr, ptr %pWorker.addr, align 8
  %call22 = call i32 @ph7_array_add_strkey_elem(ptr noundef %40, ptr noundef @.str.17, ptr noundef %41)
  %42 = load ptr, ptr %pWorker.addr, align 8
  %st_ctim = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 13
  %tv_sec23 = getelementptr inbounds nuw %struct.timespec, ptr %st_ctim, i32 0, i32 0
  %43 = load i64, ptr %tv_sec23, align 8
  %call24 = call i32 @ph7_value_int64(ptr noundef %42, i64 noundef %43)
  %44 = load ptr, ptr %pArray.addr, align 8
  %45 = load ptr, ptr %pWorker.addr, align 8
  %call25 = call i32 @ph7_array_add_strkey_elem(ptr noundef %44, ptr noundef @.str.18, ptr noundef %45)
  %46 = load ptr, ptr %pWorker.addr, align 8
  %st_blksize = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 9
  %47 = load i64, ptr %st_blksize, align 8
  %conv26 = trunc i64 %47 to i32
  %call27 = call i32 @ph7_value_int(ptr noundef %46, i32 noundef %conv26)
  %48 = load ptr, ptr %pArray.addr, align 8
  %49 = load ptr, ptr %pWorker.addr, align 8
  %call28 = call i32 @ph7_array_add_strkey_elem(ptr noundef %48, ptr noundef @.str.19, ptr noundef %49)
  %50 = load ptr, ptr %pWorker.addr, align 8
  %st_blocks = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 10
  %51 = load i64, ptr %st_blocks, align 8
  %conv29 = trunc i64 %51 to i32
  %call30 = call i32 @ph7_value_int(ptr noundef %50, i32 noundef %conv29)
  %52 = load ptr, ptr %pArray.addr, align 8
  %53 = load ptr, ptr %pWorker.addr, align 8
  %call31 = call i32 @ph7_array_add_strkey_elem(ptr noundef %52, ptr noundef @.str.20, ptr noundef %53)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
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
