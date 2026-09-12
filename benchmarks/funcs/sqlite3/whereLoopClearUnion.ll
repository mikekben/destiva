; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.anon.20 = type { i32, i8, i8, i16, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @whereLoopClearUnion(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %wsFlags, align 8
  %and = and i32 %1, 17408
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %wsFlags1 = getelementptr inbounds nuw %struct.WhereLoop, ptr %2, i32 0, i32 8
  %3 = load i32, ptr %wsFlags1, align 8
  %and2 = and i32 %3, 1024
  %cmp = icmp ne i32 %and2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %4, i32 0, i32 7
  %needFree = getelementptr inbounds nuw %struct.anon.20, ptr %u, i32 0, i32 1
  %5 = load i8, ptr %needFree, align 4
  %conv = zext i8 %5 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %p.addr, align 8
  %u5 = getelementptr inbounds nuw %struct.WhereLoop, ptr %6, i32 0, i32 7
  %idxStr = getelementptr inbounds nuw %struct.anon.20, ptr %u5, i32 0, i32 4
  %7 = load ptr, ptr %idxStr, align 8
  call void @sqlite3_free(ptr noundef %7)
  %8 = load ptr, ptr %p.addr, align 8
  %u6 = getelementptr inbounds nuw %struct.WhereLoop, ptr %8, i32 0, i32 7
  %needFree7 = getelementptr inbounds nuw %struct.anon.20, ptr %u6, i32 0, i32 1
  store i8 0, ptr %needFree7, align 4
  %9 = load ptr, ptr %p.addr, align 8
  %u8 = getelementptr inbounds nuw %struct.WhereLoop, ptr %9, i32 0, i32 7
  %idxStr9 = getelementptr inbounds nuw %struct.anon.20, ptr %u8, i32 0, i32 4
  store ptr null, ptr %idxStr9, align 8
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true, %if.then
  %10 = load ptr, ptr %p.addr, align 8
  %wsFlags10 = getelementptr inbounds nuw %struct.WhereLoop, ptr %10, i32 0, i32 8
  %11 = load i32, ptr %wsFlags10, align 8
  %and11 = and i32 %11, 16384
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %if.else
  %12 = load ptr, ptr %p.addr, align 8
  %u15 = getelementptr inbounds nuw %struct.WhereLoop, ptr %12, i32 0, i32 7
  %pIndex = getelementptr inbounds nuw %struct.anon.19, ptr %u15, i32 0, i32 4
  %13 = load ptr, ptr %pIndex, align 8
  %cmp16 = icmp ne ptr %13, null
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %land.lhs.true14
  %14 = load ptr, ptr %db.addr, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %u19 = getelementptr inbounds nuw %struct.WhereLoop, ptr %15, i32 0, i32 7
  %pIndex20 = getelementptr inbounds nuw %struct.anon.19, ptr %u19, i32 0, i32 4
  %16 = load ptr, ptr %pIndex20, align 8
  %zColAff = getelementptr inbounds nuw %struct.Index, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %zColAff, align 8
  call void @sqlite3DbFree(ptr noundef %14, ptr noundef %17)
  %18 = load ptr, ptr %db.addr, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %u21 = getelementptr inbounds nuw %struct.WhereLoop, ptr %19, i32 0, i32 7
  %pIndex22 = getelementptr inbounds nuw %struct.anon.19, ptr %u21, i32 0, i32 4
  %20 = load ptr, ptr %pIndex22, align 8
  call void @sqlite3DbFreeNN(ptr noundef %18, ptr noundef %20)
  %21 = load ptr, ptr %p.addr, align 8
  %u23 = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 7
  %pIndex24 = getelementptr inbounds nuw %struct.anon.19, ptr %u23, i32 0, i32 4
  store ptr null, ptr %pIndex24, align 8
  br label %if.end

if.end:                                           ; preds = %if.then18, %land.lhs.true14, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then4
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry
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
