; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PagerSetFlags(ptr noundef %pPager, i32 noundef %pgFlags) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %pgFlags.addr = alloca i32, align 4
  %level = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %pgFlags, ptr %pgFlags.addr, align 4
  %0 = load i32, ptr %pgFlags.addr, align 4
  %and = and i32 %0, 7
  store i32 %and, ptr %level, align 4
  %1 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 9
  %2 = load i8, ptr %tempFile, align 8
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pPager.addr, align 8
  %noSync = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 4
  store i8 1, ptr %noSync, align 1
  %4 = load ptr, ptr %pPager.addr, align 8
  %fullSync = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 5
  store i8 0, ptr %fullSync, align 4
  %5 = load ptr, ptr %pPager.addr, align 8
  %extraSync = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 6
  store i8 0, ptr %extraSync, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %level, align 4
  %cmp = icmp eq i32 %6, 1
  %7 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %8 = load ptr, ptr %pPager.addr, align 8
  %noSync1 = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 4
  store i8 %conv, ptr %noSync1, align 1
  %9 = load i32, ptr %level, align 4
  %cmp2 = icmp uge i32 %9, 3
  %10 = zext i1 %cmp2 to i64
  %cond4 = select i1 %cmp2, i32 1, i32 0
  %conv5 = trunc i32 %cond4 to i8
  %11 = load ptr, ptr %pPager.addr, align 8
  %fullSync6 = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 5
  store i8 %conv5, ptr %fullSync6, align 4
  %12 = load i32, ptr %level, align 4
  %cmp7 = icmp eq i32 %12, 4
  %13 = zext i1 %cmp7 to i64
  %cond9 = select i1 %cmp7, i32 1, i32 0
  %conv10 = trunc i32 %cond9 to i8
  %14 = load ptr, ptr %pPager.addr, align 8
  %extraSync11 = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 6
  store i8 %conv10, ptr %extraSync11, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %pPager.addr, align 8
  %noSync12 = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 4
  %16 = load i8, ptr %noSync12, align 1
  %tobool13 = icmp ne i8 %16, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end
  %17 = load ptr, ptr %pPager.addr, align 8
  %syncFlags = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 7
  store i8 0, ptr %syncFlags, align 2
  br label %if.end23

if.else15:                                        ; preds = %if.end
  %18 = load i32, ptr %pgFlags.addr, align 4
  %and16 = and i32 %18, 8
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  %19 = load ptr, ptr %pPager.addr, align 8
  %syncFlags19 = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 7
  store i8 3, ptr %syncFlags19, align 2
  br label %if.end22

if.else20:                                        ; preds = %if.else15
  %20 = load ptr, ptr %pPager.addr, align 8
  %syncFlags21 = getelementptr inbounds nuw %struct.Pager, ptr %20, i32 0, i32 7
  store i8 2, ptr %syncFlags21, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then14
  %21 = load ptr, ptr %pPager.addr, align 8
  %syncFlags24 = getelementptr inbounds nuw %struct.Pager, ptr %21, i32 0, i32 7
  %22 = load i8, ptr %syncFlags24, align 2
  %conv25 = zext i8 %22 to i32
  %shl = shl i32 %conv25, 2
  %conv26 = trunc i32 %shl to i8
  %23 = load ptr, ptr %pPager.addr, align 8
  %walSyncFlags = getelementptr inbounds nuw %struct.Pager, ptr %23, i32 0, i32 8
  store i8 %conv26, ptr %walSyncFlags, align 1
  %24 = load ptr, ptr %pPager.addr, align 8
  %fullSync27 = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 5
  %25 = load i8, ptr %fullSync27, align 4
  %tobool28 = icmp ne i8 %25, 0
  br i1 %tobool28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end23
  %26 = load ptr, ptr %pPager.addr, align 8
  %syncFlags30 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 7
  %27 = load i8, ptr %syncFlags30, align 2
  %conv31 = zext i8 %27 to i32
  %28 = load ptr, ptr %pPager.addr, align 8
  %walSyncFlags32 = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 8
  %29 = load i8, ptr %walSyncFlags32, align 1
  %conv33 = zext i8 %29 to i32
  %or = or i32 %conv33, %conv31
  %conv34 = trunc i32 %or to i8
  store i8 %conv34, ptr %walSyncFlags32, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end23
  %30 = load i32, ptr %pgFlags.addr, align 4
  %and36 = and i32 %30, 16
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %if.end35
  %31 = load ptr, ptr %pPager.addr, align 8
  %noSync38 = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 4
  %32 = load i8, ptr %noSync38, align 1
  %tobool39 = icmp ne i8 %32, 0
  br i1 %tobool39, label %if.end45, label %if.then40

if.then40:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %pPager.addr, align 8
  %walSyncFlags41 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 8
  %34 = load i8, ptr %walSyncFlags41, align 1
  %conv42 = zext i8 %34 to i32
  %or43 = or i32 %conv42, 12
  %conv44 = trunc i32 %or43 to i8
  store i8 %conv44, ptr %walSyncFlags41, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %land.lhs.true, %if.end35
  %35 = load i32, ptr %pgFlags.addr, align 4
  %and46 = and i32 %35, 32
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.else52

if.then48:                                        ; preds = %if.end45
  %36 = load ptr, ptr %pPager.addr, align 8
  %doNotSpill = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 17
  %37 = load i8, ptr %doNotSpill, align 8
  %conv49 = zext i8 %37 to i32
  %and50 = and i32 %conv49, -2
  %conv51 = trunc i32 %and50 to i8
  store i8 %conv51, ptr %doNotSpill, align 8
  br label %if.end57

if.else52:                                        ; preds = %if.end45
  %38 = load ptr, ptr %pPager.addr, align 8
  %doNotSpill53 = getelementptr inbounds nuw %struct.Pager, ptr %38, i32 0, i32 17
  %39 = load i8, ptr %doNotSpill53, align 8
  %conv54 = zext i8 %39 to i32
  %or55 = or i32 %conv54, 1
  %conv56 = trunc i32 %or55 to i8
  store i8 %conv56, ptr %doNotSpill53, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else52, %if.then48
  ret void
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
