; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct._ht = type { i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @findElementWithHash(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @strHash(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3HashInsert(ptr noundef %pH, ptr noundef %pKey, ptr noundef %data) #0 {
entry:
  %retval = alloca ptr, align 8
  %pH.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %elem = alloca ptr, align 8
  %new_elem = alloca ptr, align 8
  %old_data = alloca ptr, align 8
  store ptr %pH, ptr %pH.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %pH.addr, align 8
  %1 = load ptr, ptr %pKey.addr, align 8
  %call = call ptr @findElementWithHash(ptr noundef %0, ptr noundef %1, ptr noundef %h)
  store ptr %call, ptr %elem, align 8
  %2 = load ptr, ptr %elem, align 8
  %data1 = getelementptr inbounds nuw %struct.HashElem, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %data1, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %elem, align 8
  %data2 = getelementptr inbounds nuw %struct.HashElem, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %data2, align 8
  store ptr %5, ptr %old_data, align 8
  %6 = load ptr, ptr %data.addr, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %pH.addr, align 8
  %8 = load ptr, ptr %elem, align 8
  %9 = load i32, ptr %h, align 4
  call void @removeElementGivenHash(ptr noundef %7, ptr noundef %8, i32 noundef %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %data.addr, align 8
  %11 = load ptr, ptr %elem, align 8
  %data4 = getelementptr inbounds nuw %struct.HashElem, ptr %11, i32 0, i32 2
  store ptr %10, ptr %data4, align 8
  %12 = load ptr, ptr %pKey.addr, align 8
  %13 = load ptr, ptr %elem, align 8
  %pKey5 = getelementptr inbounds nuw %struct.HashElem, ptr %13, i32 0, i32 3
  store ptr %12, ptr %pKey5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %14 = load ptr, ptr %old_data, align 8
  store ptr %14, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %entry
  %15 = load ptr, ptr %data.addr, align 8
  %cmp7 = icmp eq ptr %15, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end6
  %call10 = call ptr @sqlite3Malloc(i64 noundef 32)
  store ptr %call10, ptr %new_elem, align 8
  %16 = load ptr, ptr %new_elem, align 8
  %cmp11 = icmp eq ptr %16, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %17 = load ptr, ptr %data.addr, align 8
  store ptr %17, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end9
  %18 = load ptr, ptr %pKey.addr, align 8
  %19 = load ptr, ptr %new_elem, align 8
  %pKey14 = getelementptr inbounds nuw %struct.HashElem, ptr %19, i32 0, i32 3
  store ptr %18, ptr %pKey14, align 8
  %20 = load ptr, ptr %data.addr, align 8
  %21 = load ptr, ptr %new_elem, align 8
  %data15 = getelementptr inbounds nuw %struct.HashElem, ptr %21, i32 0, i32 2
  store ptr %20, ptr %data15, align 8
  %22 = load ptr, ptr %pH.addr, align 8
  %count = getelementptr inbounds nuw %struct.Hash, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %count, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %count, align 4
  %24 = load ptr, ptr %pH.addr, align 8
  %count16 = getelementptr inbounds nuw %struct.Hash, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %count16, align 4
  %cmp17 = icmp uge i32 %25, 10
  br i1 %cmp17, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.end13
  %26 = load ptr, ptr %pH.addr, align 8
  %count18 = getelementptr inbounds nuw %struct.Hash, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %count18, align 4
  %28 = load ptr, ptr %pH.addr, align 8
  %htsize = getelementptr inbounds nuw %struct.Hash, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %htsize, align 8
  %mul = mul i32 2, %29
  %cmp19 = icmp ugt i32 %27, %mul
  br i1 %cmp19, label %if.then20, label %if.end29

if.then20:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %pH.addr, align 8
  %31 = load ptr, ptr %pH.addr, align 8
  %count21 = getelementptr inbounds nuw %struct.Hash, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %count21, align 4
  %mul22 = mul i32 %32, 2
  %call23 = call i32 @rehash(ptr noundef %30, i32 noundef %mul22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then20
  %33 = load ptr, ptr %pKey.addr, align 8
  %call26 = call i32 @strHash(ptr noundef %33)
  %34 = load ptr, ptr %pH.addr, align 8
  %htsize27 = getelementptr inbounds nuw %struct.Hash, ptr %34, i32 0, i32 0
  %35 = load i32, ptr %htsize27, align 8
  %rem = urem i32 %call26, %35
  store i32 %rem, ptr %h, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then20
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %land.lhs.true, %if.end13
  %36 = load ptr, ptr %pH.addr, align 8
  %37 = load ptr, ptr %pH.addr, align 8
  %ht = getelementptr inbounds nuw %struct.Hash, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %ht, align 8
  %tobool30 = icmp ne ptr %38, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end29
  %39 = load ptr, ptr %pH.addr, align 8
  %ht31 = getelementptr inbounds nuw %struct.Hash, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %ht31, align 8
  %41 = load i32, ptr %h, align 4
  %idxprom = zext i32 %41 to i64
  %arrayidx = getelementptr inbounds nuw %struct._ht, ptr %40, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %if.end29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %cond.false ]
  %42 = load ptr, ptr %new_elem, align 8
  call void @insertElement(ptr noundef %36, ptr noundef %cond, ptr noundef %42)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then12, %if.then8, %if.end
  %43 = load ptr, ptr %retval, align 8
  ret ptr %43
}

; Function Attrs: nounwind uwtable
declare hidden void @removeElementGivenHash(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @rehash(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @insertElement(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
