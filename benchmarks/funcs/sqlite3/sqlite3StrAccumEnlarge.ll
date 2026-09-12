; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DbMallocSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3StrAccumEnlarge(ptr noundef %p, i32 noundef %N) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %zNew = alloca ptr, align 8
  %zOld = alloca ptr, align 8
  %szNew = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %accError = getelementptr inbounds nuw %struct.sqlite3_str, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %accError, align 4
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %mxAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %mxAlloc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8
  call void @setStrAccumError(ptr noundef %4, i8 noundef zeroext 18)
  %5 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %nAlloc, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %nChar, align 8
  %sub = sub i32 %6, %8
  %sub2 = sub i32 %sub, 1
  store i32 %sub2, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %p.addr, align 8
  %printfFlags = getelementptr inbounds nuw %struct.sqlite3_str, ptr %9, i32 0, i32 6
  %10 = load i8, ptr %printfFlags, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 4
  %cmp3 = icmp ne i32 %and, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %11 = load ptr, ptr %p.addr, align 8
  %zText = getelementptr inbounds nuw %struct.sqlite3_str, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %zText, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %zOld, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %nChar5 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %nChar5, align 8
  %conv6 = zext i32 %14 to i64
  store i64 %conv6, ptr %szNew, align 8
  %15 = load i32, ptr %N.addr, align 4
  %add = add nsw i32 %15, 1
  %conv7 = sext i32 %add to i64
  %16 = load i64, ptr %szNew, align 8
  %add8 = add nsw i64 %16, %conv7
  store i64 %add8, ptr %szNew, align 8
  %17 = load i64, ptr %szNew, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %nChar9 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %nChar9, align 8
  %conv10 = zext i32 %19 to i64
  %add11 = add nsw i64 %17, %conv10
  %20 = load ptr, ptr %p.addr, align 8
  %mxAlloc12 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %mxAlloc12, align 4
  %conv13 = zext i32 %21 to i64
  %cmp14 = icmp sle i64 %add11, %conv13
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %cond.end
  %22 = load ptr, ptr %p.addr, align 8
  %nChar17 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %nChar17, align 8
  %conv18 = zext i32 %23 to i64
  %24 = load i64, ptr %szNew, align 8
  %add19 = add nsw i64 %24, %conv18
  store i64 %add19, ptr %szNew, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %cond.end
  %25 = load i64, ptr %szNew, align 8
  %26 = load ptr, ptr %p.addr, align 8
  %mxAlloc21 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %mxAlloc21, align 4
  %conv22 = zext i32 %27 to i64
  %cmp23 = icmp sgt i64 %25, %conv22
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end20
  %28 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_str_reset(ptr noundef %28)
  %29 = load ptr, ptr %p.addr, align 8
  call void @setStrAccumError(ptr noundef %29, i8 noundef zeroext 18)
  store i32 0, ptr %retval, align 4
  br label %return

if.else26:                                        ; preds = %if.end20
  %30 = load i64, ptr %szNew, align 8
  %conv27 = trunc i64 %30 to i32
  %31 = load ptr, ptr %p.addr, align 8
  %nAlloc28 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %31, i32 0, i32 2
  store i32 %conv27, ptr %nAlloc28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else26
  %32 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_str, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %db, align 8
  %tobool30 = icmp ne ptr %33, null
  br i1 %tobool30, label %if.then31, label %if.else35

if.then31:                                        ; preds = %if.end29
  %34 = load ptr, ptr %p.addr, align 8
  %db32 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %db32, align 8
  %36 = load ptr, ptr %zOld, align 8
  %37 = load ptr, ptr %p.addr, align 8
  %nAlloc33 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %nAlloc33, align 8
  %conv34 = zext i32 %38 to i64
  %call = call ptr @sqlite3DbRealloc(ptr noundef %35, ptr noundef %36, i64 noundef %conv34)
  store ptr %call, ptr %zNew, align 8
  br label %if.end39

if.else35:                                        ; preds = %if.end29
  %39 = load ptr, ptr %zOld, align 8
  %40 = load ptr, ptr %p.addr, align 8
  %nAlloc36 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %nAlloc36, align 8
  %conv37 = zext i32 %41 to i64
  %call38 = call ptr @sqlite3_realloc64(ptr noundef %39, i64 noundef %conv37)
  store ptr %call38, ptr %zNew, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.then31
  %42 = load ptr, ptr %zNew, align 8
  %tobool40 = icmp ne ptr %42, null
  br i1 %tobool40, label %if.then41, label %if.else62

if.then41:                                        ; preds = %if.end39
  %43 = load ptr, ptr %p.addr, align 8
  %printfFlags42 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %43, i32 0, i32 6
  %44 = load i8, ptr %printfFlags42, align 1
  %conv43 = zext i8 %44 to i32
  %and44 = and i32 %conv43, 4
  %cmp45 = icmp ne i32 %and44, 0
  br i1 %cmp45, label %if.end54, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then41
  %45 = load ptr, ptr %p.addr, align 8
  %nChar47 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %45, i32 0, i32 4
  %46 = load i32, ptr %nChar47, align 8
  %cmp48 = icmp ugt i32 %46, 0
  br i1 %cmp48, label %if.then50, label %if.end54

if.then50:                                        ; preds = %land.lhs.true
  %47 = load ptr, ptr %zNew, align 8
  %48 = load ptr, ptr %p.addr, align 8
  %zText51 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %zText51, align 8
  %50 = load ptr, ptr %p.addr, align 8
  %nChar52 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %50, i32 0, i32 4
  %51 = load i32, ptr %nChar52, align 8
  %conv53 = zext i32 %51 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 %49, i64 %conv53, i1 false)
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %land.lhs.true, %if.then41
  %52 = load ptr, ptr %zNew, align 8
  %53 = load ptr, ptr %p.addr, align 8
  %zText55 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %53, i32 0, i32 1
  store ptr %52, ptr %zText55, align 8
  %54 = load ptr, ptr %p.addr, align 8
  %db56 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %db56, align 8
  %56 = load ptr, ptr %zNew, align 8
  %call57 = call i32 @sqlite3DbMallocSize(ptr noundef %55, ptr noundef %56)
  %57 = load ptr, ptr %p.addr, align 8
  %nAlloc58 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %57, i32 0, i32 2
  store i32 %call57, ptr %nAlloc58, align 8
  %58 = load ptr, ptr %p.addr, align 8
  %printfFlags59 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %58, i32 0, i32 6
  %59 = load i8, ptr %printfFlags59, align 1
  %conv60 = zext i8 %59 to i32
  %or = or i32 %conv60, 4
  %conv61 = trunc i32 %or to i8
  store i8 %conv61, ptr %printfFlags59, align 1
  br label %if.end63

if.else62:                                        ; preds = %if.end39
  %60 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_str_reset(ptr noundef %60)
  %61 = load ptr, ptr %p.addr, align 8
  call void @setStrAccumError(ptr noundef %61, i8 noundef zeroext 7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end54
  br label %if.end64

if.end64:                                         ; preds = %if.end63
  %62 = load i32, ptr %N.addr, align 4
  store i32 %62, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.else62, %if.then25, %if.then1, %if.then
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setStrAccumError(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
