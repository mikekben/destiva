; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@.str.47 = external hidden unnamed_addr constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @unixTruncate(ptr noundef %id, i64 noundef %nByte) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %nByte.addr = alloca i64, align 8
  %pFile = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  store i64 %nByte, ptr %nByte.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  %1 = load ptr, ptr %pFile, align 8
  %szChunk = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 11
  %2 = load i32, ptr %szChunk, align 8
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %nByte.addr, align 8
  %4 = load ptr, ptr %pFile, align 8
  %szChunk1 = getelementptr inbounds nuw %struct.unixFile, ptr %4, i32 0, i32 11
  %5 = load i32, ptr %szChunk1, align 8
  %conv = sext i32 %5 to i64
  %add = add nsw i64 %3, %conv
  %sub = sub nsw i64 %add, 1
  %6 = load ptr, ptr %pFile, align 8
  %szChunk2 = getelementptr inbounds nuw %struct.unixFile, ptr %6, i32 0, i32 11
  %7 = load i32, ptr %szChunk2, align 8
  %conv3 = sext i32 %7 to i64
  %div = sdiv i64 %sub, %conv3
  %8 = load ptr, ptr %pFile, align 8
  %szChunk4 = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 11
  %9 = load i32, ptr %szChunk4, align 8
  %conv5 = sext i32 %9 to i64
  %mul = mul nsw i64 %div, %conv5
  store i64 %mul, ptr %nByte.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %pFile, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %h, align 8
  %12 = load i64, ptr %nByte.addr, align 8
  %call = call i32 @robust_ftruncate(i32 noundef %11, i64 noundef %12)
  store i32 %call, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %14 = load ptr, ptr %pFile, align 8
  %call7 = call ptr @__errno_location() #2
  %15 = load i32, ptr %call7, align 4
  call void @storeLastErrno(ptr noundef %14, i32 noundef %15)
  %16 = load ptr, ptr %pFile, align 8
  %zPath = getelementptr inbounds nuw %struct.unixFile, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %zPath, align 8
  %call8 = call i32 @unixLogErrorAtLine(i32 noundef 1546, ptr noundef @.str.47, ptr noundef %17, i32 noundef 36468)
  store i32 %call8, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %18 = load i64, ptr %nByte.addr, align 8
  %19 = load ptr, ptr %pFile, align 8
  %mmapSize = getelementptr inbounds nuw %struct.unixFile, ptr %19, i32 0, i32 13
  %20 = load i64, ptr %mmapSize, align 8
  %cmp9 = icmp slt i64 %18, %20
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %21 = load i64, ptr %nByte.addr, align 8
  %22 = load ptr, ptr %pFile, align 8
  %mmapSize12 = getelementptr inbounds nuw %struct.unixFile, ptr %22, i32 0, i32 13
  store i64 %21, ptr %mmapSize12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then6
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @robust_ftruncate(i32 noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
