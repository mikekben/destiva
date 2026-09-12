; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vfs = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @ProcessScript(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_compile_file(ptr noundef %pEngine, ptr noundef %zFilePath, ptr noundef %ppOutVm, i32 noundef %iFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pEngine.addr = alloca ptr, align 8
  %zFilePath.addr = alloca ptr, align 8
  %ppOutVm.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %pVfs = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pMapView = alloca ptr, align 8
  %nSize = alloca i64, align 8
  %sScript = alloca %struct.SyString, align 8
  store ptr %pEngine, ptr %pEngine.addr, align 8
  store ptr %zFilePath, ptr %zFilePath.addr, align 8
  store ptr %ppOutVm, ptr %ppOutVm.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  %0 = load ptr, ptr %ppOutVm.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ppOutVm.addr, align 8
  store ptr null, ptr %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %pEngine.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %pEngine.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %nMagic, align 8
  %cmp1 = icmp ne i32 %4, -126567209
  br i1 %cmp1, label %if.then7, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %zFilePath.addr, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %zFilePath.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  store i32 -24, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %pEngine.addr, align 8
  %pVfs9 = getelementptr inbounds nuw %struct.ph7, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pVfs9, align 8
  store ptr %9, ptr %pVfs, align 8
  %10 = load ptr, ptr %pVfs, align 8
  %cmp10 = icmp eq ptr %10, null
  br i1 %cmp10, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end8
  %11 = load ptr, ptr %pVfs, align 8
  %xMmap = getelementptr inbounds nuw %struct.ph7_vfs, ptr %11, i32 0, i32 33
  %12 = load ptr, ptr %xMmap, align 8
  %cmp13 = icmp eq ptr %12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %lor.lhs.false12, %if.end8
  store i32 -2, ptr %rc, align 4
  br label %if.end28

if.else:                                          ; preds = %lor.lhs.false12
  store ptr null, ptr %pMapView, align 8
  store i64 0, ptr %nSize, align 8
  %13 = load ptr, ptr %pVfs, align 8
  %xMmap16 = getelementptr inbounds nuw %struct.ph7_vfs, ptr %13, i32 0, i32 33
  %14 = load ptr, ptr %xMmap16, align 8
  %15 = load ptr, ptr %zFilePath.addr, align 8
  %call = call i32 %14(ptr noundef %15, ptr noundef %pMapView, ptr noundef %nSize)
  store i32 %call, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp17 = icmp ne i32 %16, 0
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else
  store i32 -2, ptr %rc, align 4
  br label %if.end27

if.else20:                                        ; preds = %if.else
  %17 = load ptr, ptr %pMapView, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sScript, i32 0, i32 0
  store ptr %17, ptr %zString, align 8
  %18 = load i64, ptr %nSize, align 8
  %conv21 = trunc i64 %18 to i32
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sScript, i32 0, i32 1
  store i32 %conv21, ptr %nByte, align 8
  %19 = load ptr, ptr %pEngine.addr, align 8
  %20 = load ptr, ptr %ppOutVm.addr, align 8
  %21 = load i32, ptr %iFlags.addr, align 4
  %22 = load ptr, ptr %zFilePath.addr, align 8
  %call22 = call i32 @ProcessScript(ptr noundef %19, ptr noundef %20, ptr noundef %sScript, i32 noundef %21, ptr noundef %22)
  store i32 %call22, ptr %rc, align 4
  %23 = load ptr, ptr %pVfs, align 8
  %xUnmap = getelementptr inbounds nuw %struct.ph7_vfs, ptr %23, i32 0, i32 34
  %24 = load ptr, ptr %xUnmap, align 8
  %tobool23 = icmp ne ptr %24, null
  br i1 %tobool23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.else20
  %25 = load ptr, ptr %pVfs, align 8
  %xUnmap25 = getelementptr inbounds nuw %struct.ph7_vfs, ptr %25, i32 0, i32 34
  %26 = load ptr, ptr %xUnmap25, align 8
  %27 = load ptr, ptr %pMapView, align 8
  %28 = load i64, ptr %nSize, align 8
  call void %26(ptr noundef %27, i64 noundef %28)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.else20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then19
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then15
  %29 = load i32, ptr %rc, align 4
  store i32 %29, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then7
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
