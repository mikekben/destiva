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

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @UnixFile_Stat(ptr noundef %pUserData, ptr noundef %pArray, ptr noundef %pWorker) #0 {
entry:
  %retval = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %pArray.addr = alloca ptr, align 8
  %pWorker.addr = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %rc = alloca i32, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %pArray, ptr %pArray.addr, align 8
  store ptr %pWorker, ptr %pWorker.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  %1 = ptrtoint ptr %0 to i64
  %conv = trunc i64 %1 to i32
  %call = call i32 @fstat(i32 noundef %conv, ptr noundef %st) #2
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pWorker.addr, align 8
  %st_dev = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 0
  %4 = load i64, ptr %st_dev, align 8
  %call2 = call i32 @ph7_value_int64(ptr noundef %3, i64 noundef %4)
  %5 = load ptr, ptr %pArray.addr, align 8
  %6 = load ptr, ptr %pWorker.addr, align 8
  %call3 = call i32 @ph7_array_add_strkey_elem(ptr noundef %5, ptr noundef @.str.8, ptr noundef %6)
  %7 = load ptr, ptr %pWorker.addr, align 8
  %st_ino = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 1
  %8 = load i64, ptr %st_ino, align 8
  %call4 = call i32 @ph7_value_int64(ptr noundef %7, i64 noundef %8)
  %9 = load ptr, ptr %pArray.addr, align 8
  %10 = load ptr, ptr %pWorker.addr, align 8
  %call5 = call i32 @ph7_array_add_strkey_elem(ptr noundef %9, ptr noundef @.str.9, ptr noundef %10)
  %11 = load ptr, ptr %pWorker.addr, align 8
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 3
  %12 = load i32, ptr %st_mode, align 8
  %call6 = call i32 @ph7_value_int(ptr noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %pArray.addr, align 8
  %14 = load ptr, ptr %pWorker.addr, align 8
  %call7 = call i32 @ph7_array_add_strkey_elem(ptr noundef %13, ptr noundef @.str.10, ptr noundef %14)
  %15 = load ptr, ptr %pWorker.addr, align 8
  %st_nlink = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 2
  %16 = load i64, ptr %st_nlink, align 8
  %conv8 = trunc i64 %16 to i32
  %call9 = call i32 @ph7_value_int(ptr noundef %15, i32 noundef %conv8)
  %17 = load ptr, ptr %pArray.addr, align 8
  %18 = load ptr, ptr %pWorker.addr, align 8
  %call10 = call i32 @ph7_array_add_strkey_elem(ptr noundef %17, ptr noundef @.str.11, ptr noundef %18)
  %19 = load ptr, ptr %pWorker.addr, align 8
  %st_uid = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 4
  %20 = load i32, ptr %st_uid, align 4
  %call11 = call i32 @ph7_value_int(ptr noundef %19, i32 noundef %20)
  %21 = load ptr, ptr %pArray.addr, align 8
  %22 = load ptr, ptr %pWorker.addr, align 8
  %call12 = call i32 @ph7_array_add_strkey_elem(ptr noundef %21, ptr noundef @.str.12, ptr noundef %22)
  %23 = load ptr, ptr %pWorker.addr, align 8
  %st_gid = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 5
  %24 = load i32, ptr %st_gid, align 8
  %call13 = call i32 @ph7_value_int(ptr noundef %23, i32 noundef %24)
  %25 = load ptr, ptr %pArray.addr, align 8
  %26 = load ptr, ptr %pWorker.addr, align 8
  %call14 = call i32 @ph7_array_add_strkey_elem(ptr noundef %25, ptr noundef @.str.13, ptr noundef %26)
  %27 = load ptr, ptr %pWorker.addr, align 8
  %st_rdev = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 7
  %28 = load i64, ptr %st_rdev, align 8
  %conv15 = trunc i64 %28 to i32
  %call16 = call i32 @ph7_value_int(ptr noundef %27, i32 noundef %conv15)
  %29 = load ptr, ptr %pArray.addr, align 8
  %30 = load ptr, ptr %pWorker.addr, align 8
  %call17 = call i32 @ph7_array_add_strkey_elem(ptr noundef %29, ptr noundef @.str.14, ptr noundef %30)
  %31 = load ptr, ptr %pWorker.addr, align 8
  %st_size = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 8
  %32 = load i64, ptr %st_size, align 8
  %call18 = call i32 @ph7_value_int64(ptr noundef %31, i64 noundef %32)
  %33 = load ptr, ptr %pArray.addr, align 8
  %34 = load ptr, ptr %pWorker.addr, align 8
  %call19 = call i32 @ph7_array_add_strkey_elem(ptr noundef %33, ptr noundef @.str.15, ptr noundef %34)
  %35 = load ptr, ptr %pWorker.addr, align 8
  %st_atim = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 11
  %tv_sec = getelementptr inbounds nuw %struct.timespec, ptr %st_atim, i32 0, i32 0
  %36 = load i64, ptr %tv_sec, align 8
  %call20 = call i32 @ph7_value_int64(ptr noundef %35, i64 noundef %36)
  %37 = load ptr, ptr %pArray.addr, align 8
  %38 = load ptr, ptr %pWorker.addr, align 8
  %call21 = call i32 @ph7_array_add_strkey_elem(ptr noundef %37, ptr noundef @.str.16, ptr noundef %38)
  %39 = load ptr, ptr %pWorker.addr, align 8
  %st_mtim = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 12
  %tv_sec22 = getelementptr inbounds nuw %struct.timespec, ptr %st_mtim, i32 0, i32 0
  %40 = load i64, ptr %tv_sec22, align 8
  %call23 = call i32 @ph7_value_int64(ptr noundef %39, i64 noundef %40)
  %41 = load ptr, ptr %pArray.addr, align 8
  %42 = load ptr, ptr %pWorker.addr, align 8
  %call24 = call i32 @ph7_array_add_strkey_elem(ptr noundef %41, ptr noundef @.str.17, ptr noundef %42)
  %43 = load ptr, ptr %pWorker.addr, align 8
  %st_ctim = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 13
  %tv_sec25 = getelementptr inbounds nuw %struct.timespec, ptr %st_ctim, i32 0, i32 0
  %44 = load i64, ptr %tv_sec25, align 8
  %call26 = call i32 @ph7_value_int64(ptr noundef %43, i64 noundef %44)
  %45 = load ptr, ptr %pArray.addr, align 8
  %46 = load ptr, ptr %pWorker.addr, align 8
  %call27 = call i32 @ph7_array_add_strkey_elem(ptr noundef %45, ptr noundef @.str.18, ptr noundef %46)
  %47 = load ptr, ptr %pWorker.addr, align 8
  %st_blksize = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 9
  %48 = load i64, ptr %st_blksize, align 8
  %conv28 = trunc i64 %48 to i32
  %call29 = call i32 @ph7_value_int(ptr noundef %47, i32 noundef %conv28)
  %49 = load ptr, ptr %pArray.addr, align 8
  %50 = load ptr, ptr %pWorker.addr, align 8
  %call30 = call i32 @ph7_array_add_strkey_elem(ptr noundef %49, ptr noundef @.str.19, ptr noundef %50)
  %51 = load ptr, ptr %pWorker.addr, align 8
  %st_blocks = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 10
  %52 = load i64, ptr %st_blocks, align 8
  %conv31 = trunc i64 %52 to i32
  %call32 = call i32 @ph7_value_int(ptr noundef %51, i32 noundef %conv31)
  %53 = load ptr, ptr %pArray.addr, align 8
  %54 = load ptr, ptr %pWorker.addr, align 8
  %call33 = call i32 @ph7_array_add_strkey_elem(ptr noundef %53, ptr noundef @.str.20, ptr noundef %54)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

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
