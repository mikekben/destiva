; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyFmtConsumer = type { i32, i32, i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @FormatMount(i32 noundef %nType, ptr noundef %pConsumer, ptr noundef %xUserCons, ptr noundef %pUserData, ptr noundef %pOutLen, ptr noundef %zFormat, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %nType.addr = alloca i32, align 4
  %pConsumer.addr = alloca ptr, align 8
  %xUserCons.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pOutLen.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %sCons = alloca %struct.SyFmtConsumer, align 8
  store i32 %nType, ptr %nType.addr, align 4
  store ptr %pConsumer, ptr %pConsumer.addr, align 8
  store ptr %xUserCons, ptr %xUserCons.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %pOutLen, ptr %pOutLen.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load i32, ptr %nType.addr, align 4
  %nType1 = getelementptr inbounds nuw %struct.SyFmtConsumer, ptr %sCons, i32 0, i32 1
  store i32 %0, ptr %nType1, align 4
  %rc = getelementptr inbounds nuw %struct.SyFmtConsumer, ptr %sCons, i32 0, i32 2
  store i32 0, ptr %rc, align 8
  %nLen = getelementptr inbounds nuw %struct.SyFmtConsumer, ptr %sCons, i32 0, i32 0
  store i32 0, ptr %nLen, align 8
  %1 = load ptr, ptr %pOutLen.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pOutLen.addr, align 8
  store i32 0, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %nType.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %xUserCons.addr, align 8
  %uConsumer = getelementptr inbounds nuw %struct.SyFmtConsumer, ptr %sCons, i32 0, i32 3
  %xUserConsumer = getelementptr inbounds nuw %struct.anon, ptr %uConsumer, i32 0, i32 0
  store ptr %4, ptr %xUserConsumer, align 8
  %5 = load ptr, ptr %pUserData.addr, align 8
  %uConsumer2 = getelementptr inbounds nuw %struct.SyFmtConsumer, ptr %sCons, i32 0, i32 3
  %pUserData3 = getelementptr inbounds nuw %struct.anon, ptr %uConsumer2, i32 0, i32 1
  store ptr %5, ptr %pUserData3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %6 = load ptr, ptr %pConsumer.addr, align 8
  %uConsumer5 = getelementptr inbounds nuw %struct.SyFmtConsumer, ptr %sCons, i32 0, i32 3
  store ptr %6, ptr %uConsumer5, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -13, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %7 = load ptr, ptr %zFormat.addr, align 8
  %8 = load ptr, ptr %ap.addr, align 8
  %call = call i32 @InternFormat(ptr noundef @FormatConsumer, ptr noundef %sCons, ptr noundef %7, ptr noundef %8)
  %9 = load ptr, ptr %pOutLen.addr, align 8
  %tobool6 = icmp ne ptr %9, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %sw.epilog
  %nLen8 = getelementptr inbounds nuw %struct.SyFmtConsumer, ptr %sCons, i32 0, i32 0
  %10 = load i32, ptr %nLen8, align 8
  %11 = load ptr, ptr %pOutLen.addr, align 8
  store i32 %10, ptr %11, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %sw.epilog
  %rc10 = getelementptr inbounds nuw %struct.SyFmtConsumer, ptr %sCons, i32 0, i32 2
  %12 = load i32, ptr %rc10, align 8
  store i32 %12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %sw.default
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden i32 @InternFormat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @FormatConsumer(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
