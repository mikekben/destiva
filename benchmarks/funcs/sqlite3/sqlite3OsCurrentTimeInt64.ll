; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3OsCurrentTimeInt64(ptr noundef %pVfs, ptr noundef %pTimeOut) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %pTimeOut.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %r = alloca double, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %pTimeOut, ptr %pTimeOut.addr, align 8
  %0 = load ptr, ptr %pVfs.addr, align 8
  %iVersion = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %iVersion, align 8
  %cmp = icmp sge i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pVfs.addr, align 8
  %xCurrentTimeInt64 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %2, i32 0, i32 18
  %3 = load ptr, ptr %xCurrentTimeInt64, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pVfs.addr, align 8
  %xCurrentTimeInt641 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %xCurrentTimeInt641, align 8
  %6 = load ptr, ptr %pVfs.addr, align 8
  %7 = load ptr, ptr %pTimeOut.addr, align 8
  %call = call i32 %5(ptr noundef %6, ptr noundef %7)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %pVfs.addr, align 8
  %xCurrentTime = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %8, i32 0, i32 16
  %9 = load ptr, ptr %xCurrentTime, align 8
  %10 = load ptr, ptr %pVfs.addr, align 8
  %call2 = call i32 %9(ptr noundef %10, ptr noundef %r)
  store i32 %call2, ptr %rc, align 4
  %11 = load double, ptr %r, align 8
  %mul = fmul double %11, 8.640000e+07
  %conv = fptosi double %mul to i64
  %12 = load ptr, ptr %pTimeOut.addr, align 8
  store i64 %conv, ptr %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, ptr %rc, align 4
  ret i32 %13
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
