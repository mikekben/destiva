; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

; Function Attrs: nounwind uwtable
define hidden void @HashmapRehashIntNode(ptr noundef %pEntry) #0 {
entry:
  %pEntry.addr = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %nBucket = alloca i32, align 4
  store ptr %pEntry, ptr %pEntry.addr, align 8
  %0 = load ptr, ptr %pEntry.addr, align 8
  %pMap1 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pMap1, align 8
  store ptr %1, ptr %pMap, align 8
  %2 = load ptr, ptr %pEntry.addr, align 8
  %pPrevCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %pPrevCollide, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %pNextCollide, align 8
  %6 = load ptr, ptr %pEntry.addr, align 8
  %pPrevCollide2 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %pPrevCollide2, align 8
  %pNextCollide3 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %7, i32 0, i32 8
  store ptr %5, ptr %pNextCollide3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide4 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %pNextCollide4, align 8
  %10 = load ptr, ptr %pMap, align 8
  %apBucket = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %apBucket, align 8
  %12 = load ptr, ptr %pEntry.addr, align 8
  %nHash = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %nHash, align 4
  %14 = load ptr, ptr %pMap, align 8
  %nSize = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %nSize, align 8
  %sub = sub i32 %15, 1
  %and = and i32 %13, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %11, i64 %idxprom
  store ptr %9, ptr %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide5 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %pNextCollide5, align 8
  %tobool6 = icmp ne ptr %17, null
  br i1 %tobool6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %18 = load ptr, ptr %pEntry.addr, align 8
  %pPrevCollide8 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %pPrevCollide8, align 8
  %20 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide9 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %pNextCollide9, align 8
  %pPrevCollide10 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %21, i32 0, i32 9
  store ptr %19, ptr %pPrevCollide10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end
  %22 = load ptr, ptr %pEntry.addr, align 8
  %pPrevCollide12 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %22, i32 0, i32 9
  store ptr null, ptr %pPrevCollide12, align 8
  %23 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide13 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %23, i32 0, i32 8
  store ptr null, ptr %pNextCollide13, align 8
  %24 = load ptr, ptr %pMap, align 8
  %xIntHash = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %xIntHash, align 8
  %26 = load ptr, ptr %pMap, align 8
  %iNextIdx = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %26, i32 0, i32 9
  %27 = load i64, ptr %iNextIdx, align 8
  %call = call i32 %25(i64 noundef %27)
  %28 = load ptr, ptr %pEntry.addr, align 8
  %nHash14 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %28, i32 0, i32 4
  store i32 %call, ptr %nHash14, align 4
  %29 = load ptr, ptr %pMap, align 8
  %iNextIdx15 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %29, i32 0, i32 9
  %30 = load i64, ptr %iNextIdx15, align 8
  %31 = load ptr, ptr %pEntry.addr, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 2
  store i64 %30, ptr %xKey, align 8
  %32 = load ptr, ptr %pEntry.addr, align 8
  %nHash16 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %nHash16, align 4
  %34 = load ptr, ptr %pMap, align 8
  %nSize17 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %nSize17, align 8
  %sub18 = sub i32 %35, 1
  %and19 = and i32 %33, %sub18
  store i32 %and19, ptr %nBucket, align 4
  %36 = load ptr, ptr %pMap, align 8
  %apBucket20 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %apBucket20, align 8
  %38 = load i32, ptr %nBucket, align 4
  %idxprom21 = zext i32 %38 to i64
  %arrayidx22 = getelementptr inbounds nuw ptr, ptr %37, i64 %idxprom21
  %39 = load ptr, ptr %arrayidx22, align 8
  %40 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide23 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %40, i32 0, i32 8
  store ptr %39, ptr %pNextCollide23, align 8
  %41 = load ptr, ptr %pMap, align 8
  %apBucket24 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %apBucket24, align 8
  %43 = load i32, ptr %nBucket, align 4
  %idxprom25 = zext i32 %43 to i64
  %arrayidx26 = getelementptr inbounds nuw ptr, ptr %42, i64 %idxprom25
  %44 = load ptr, ptr %arrayidx26, align 8
  %tobool27 = icmp ne ptr %44, null
  br i1 %tobool27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.end11
  %45 = load ptr, ptr %pEntry.addr, align 8
  %46 = load ptr, ptr %pMap, align 8
  %apBucket29 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %apBucket29, align 8
  %48 = load i32, ptr %nBucket, align 4
  %idxprom30 = zext i32 %48 to i64
  %arrayidx31 = getelementptr inbounds nuw ptr, ptr %47, i64 %idxprom30
  %49 = load ptr, ptr %arrayidx31, align 8
  %pPrevCollide32 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %49, i32 0, i32 9
  store ptr %45, ptr %pPrevCollide32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end11
  %50 = load ptr, ptr %pMap, align 8
  %apBucket34 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %apBucket34, align 8
  %52 = load i32, ptr %nBucket, align 4
  %idxprom35 = zext i32 %52 to i64
  %arrayidx36 = getelementptr inbounds nuw ptr, ptr %51, i64 %idxprom35
  %53 = load ptr, ptr %arrayidx36, align 8
  %54 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide37 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %54, i32 0, i32 8
  store ptr %53, ptr %pNextCollide37, align 8
  %55 = load ptr, ptr %pEntry.addr, align 8
  %56 = load ptr, ptr %pMap, align 8
  %apBucket38 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %apBucket38, align 8
  %58 = load i32, ptr %nBucket, align 4
  %idxprom39 = zext i32 %58 to i64
  %arrayidx40 = getelementptr inbounds nuw ptr, ptr %57, i64 %idxprom39
  store ptr %55, ptr %arrayidx40, align 8
  %59 = load ptr, ptr %pMap, align 8
  %iNextIdx41 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %59, i32 0, i32 9
  %60 = load i64, ptr %iNextIdx41, align 8
  %inc = add nsw i64 %60, 1
  store i64 %inc, ptr %iNextIdx41, align 8
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
