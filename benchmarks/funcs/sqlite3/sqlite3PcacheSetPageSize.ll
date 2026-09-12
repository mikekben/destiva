; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PcacheSetPageSize(ptr noundef %pCache, i32 noundef %szPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pCache.addr = alloca ptr, align 8
  %szPage.addr = alloca i32, align 4
  %pNew = alloca ptr, align 8
  store ptr %pCache, ptr %pCache.addr, align 8
  store i32 %szPage, ptr %szPage.addr, align 4
  %0 = load ptr, ptr %pCache.addr, align 8
  %szPage1 = getelementptr inbounds nuw %struct.PCache, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %szPage1, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_pcache_methods2, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), i32 0, i32 4), align 8
  %3 = load i32, ptr %szPage.addr, align 4
  %4 = load ptr, ptr %pCache.addr, align 8
  %szExtra = getelementptr inbounds nuw %struct.PCache, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %szExtra, align 8
  %conv = sext i32 %5 to i64
  %add = add i64 %conv, 72
  %conv2 = trunc i64 %add to i32
  %6 = load ptr, ptr %pCache.addr, align 8
  %bPurgeable = getelementptr inbounds nuw %struct.PCache, ptr %6, i32 0, i32 8
  %7 = load i8, ptr %bPurgeable, align 4
  %conv3 = zext i8 %7 to i32
  %call = call ptr %2(i32 noundef %3, i32 noundef %conv2, i32 noundef %conv3)
  store ptr %call, ptr %pNew, align 8
  %8 = load ptr, ptr %pNew, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_pcache_methods2, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), i32 0, i32 5), align 8
  %10 = load ptr, ptr %pNew, align 8
  %11 = load ptr, ptr %pCache.addr, align 8
  %call6 = call i32 @numberOfCachePages(ptr noundef %11)
  call void %9(ptr noundef %10, i32 noundef %call6)
  %12 = load ptr, ptr %pCache.addr, align 8
  %pCache7 = getelementptr inbounds nuw %struct.PCache, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pCache7, align 8
  %tobool8 = icmp ne ptr %13, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %14 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_pcache_methods2, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), i32 0, i32 11), align 8
  %15 = load ptr, ptr %pCache.addr, align 8
  %pCache10 = getelementptr inbounds nuw %struct.PCache, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pCache10, align 8
  call void %14(ptr noundef %16)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %17 = load ptr, ptr %pNew, align 8
  %18 = load ptr, ptr %pCache.addr, align 8
  %pCache12 = getelementptr inbounds nuw %struct.PCache, ptr %18, i32 0, i32 12
  store ptr %17, ptr %pCache12, align 8
  %19 = load i32, ptr %szPage.addr, align 4
  %20 = load ptr, ptr %pCache.addr, align 8
  %szPage13 = getelementptr inbounds nuw %struct.PCache, ptr %20, i32 0, i32 6
  store i32 %19, ptr %szPage13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then5
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
declare hidden i32 @numberOfCachePages(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
