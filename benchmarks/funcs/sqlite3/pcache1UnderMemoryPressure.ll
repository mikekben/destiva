; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCacheGlobal = type { %struct.PGroup, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }
%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

@pcache1_g = external hidden global %struct.PCacheGlobal, align 8

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3HeapNearlyFull() #0

; Function Attrs: nounwind uwtable
define hidden i32 @pcache1UnderMemoryPressure(ptr noundef %pCache) #0 {
entry:
  %retval = alloca i32, align 4
  %pCache.addr = alloca ptr, align 8
  store ptr %pCache, ptr %pCache.addr, align 8
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 5), align 8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pCache.addr, align 8
  %szPage = getelementptr inbounds nuw %struct.PCache1, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %szPage, align 8
  %3 = load ptr, ptr %pCache.addr, align 8
  %szExtra = getelementptr inbounds nuw %struct.PCache1, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %szExtra, align 4
  %add = add nsw i32 %2, %4
  %5 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 4), align 4
  %cmp = icmp sle i32 %add, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 12), align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = call i32 @sqlite3HeapNearlyFull()
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
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
