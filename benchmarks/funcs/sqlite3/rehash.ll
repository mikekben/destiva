; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash = type { i32, i32, ptr, ptr }
%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct._ht = type { i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @strHash(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @rehash(ptr noundef %pH, i32 noundef %new_size) #0 {
entry:
  %retval = alloca i32, align 4
  %pH.addr = alloca ptr, align 8
  %new_size.addr = alloca i32, align 4
  %new_ht = alloca ptr, align 8
  %elem = alloca ptr, align 8
  %next_elem = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %pH, ptr %pH.addr, align 8
  store i32 %new_size, ptr %new_size.addr, align 4
  %0 = load i32, ptr %new_size.addr, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 16
  %cmp = icmp ugt i64 %mul, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 64, ptr %new_size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %new_size.addr, align 4
  %2 = load ptr, ptr %pH.addr, align 8
  %htsize = getelementptr inbounds nuw %struct.Hash, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %htsize, align 8
  %cmp2 = icmp eq i32 %1, %3
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  call void @sqlite3BeginBenignMalloc()
  %4 = load i32, ptr %new_size.addr, align 4
  %conv6 = zext i32 %4 to i64
  %mul7 = mul i64 %conv6, 16
  %call = call ptr @sqlite3Malloc(i64 noundef %mul7)
  store ptr %call, ptr %new_ht, align 8
  call void @sqlite3EndBenignMalloc()
  %5 = load ptr, ptr %new_ht, align 8
  %cmp8 = icmp eq ptr %5, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end5
  %6 = load ptr, ptr %pH.addr, align 8
  %ht = getelementptr inbounds nuw %struct.Hash, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %ht, align 8
  call void @sqlite3_free(ptr noundef %7)
  %8 = load ptr, ptr %new_ht, align 8
  %9 = load ptr, ptr %pH.addr, align 8
  %ht12 = getelementptr inbounds nuw %struct.Hash, ptr %9, i32 0, i32 3
  store ptr %8, ptr %ht12, align 8
  %10 = load ptr, ptr %new_ht, align 8
  %call13 = call i32 @sqlite3MallocSize(ptr noundef %10)
  %conv14 = sext i32 %call13 to i64
  %div = udiv i64 %conv14, 16
  %conv15 = trunc i64 %div to i32
  store i32 %conv15, ptr %new_size.addr, align 4
  %11 = load ptr, ptr %pH.addr, align 8
  %htsize16 = getelementptr inbounds nuw %struct.Hash, ptr %11, i32 0, i32 0
  store i32 %conv15, ptr %htsize16, align 8
  %12 = load ptr, ptr %new_ht, align 8
  %13 = load i32, ptr %new_size.addr, align 4
  %conv17 = zext i32 %13 to i64
  %mul18 = mul i64 %conv17, 16
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %mul18, i1 false)
  %14 = load ptr, ptr %pH.addr, align 8
  %first = getelementptr inbounds nuw %struct.Hash, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %first, align 8
  store ptr %15, ptr %elem, align 8
  %16 = load ptr, ptr %pH.addr, align 8
  %first19 = getelementptr inbounds nuw %struct.Hash, ptr %16, i32 0, i32 2
  store ptr null, ptr %first19, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %17 = load ptr, ptr %elem, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %elem, align 8
  %pKey = getelementptr inbounds nuw %struct.HashElem, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %pKey, align 8
  %call20 = call i32 @strHash(ptr noundef %19)
  %20 = load i32, ptr %new_size.addr, align 4
  %rem = urem i32 %call20, %20
  store i32 %rem, ptr %h, align 4
  %21 = load ptr, ptr %elem, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next, align 8
  store ptr %22, ptr %next_elem, align 8
  %23 = load ptr, ptr %pH.addr, align 8
  %24 = load ptr, ptr %new_ht, align 8
  %25 = load i32, ptr %h, align 4
  %idxprom = zext i32 %25 to i64
  %arrayidx = getelementptr inbounds nuw %struct._ht, ptr %24, i64 %idxprom
  %26 = load ptr, ptr %elem, align 8
  call void @insertElement(ptr noundef %23, ptr noundef %arrayidx, ptr noundef %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load ptr, ptr %next_elem, align 8
  store ptr %27, ptr %elem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then4
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
declare hidden void @insertElement(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
