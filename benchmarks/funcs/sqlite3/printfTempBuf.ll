; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden ptr @printfTempBuf(ptr noundef %pAccum, i64 noundef %n) #0 {
entry:
  %retval = alloca ptr, align 8
  %pAccum.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %z = alloca ptr, align 8
  store ptr %pAccum, ptr %pAccum.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %pAccum.addr, align 8
  %accError = getelementptr inbounds nuw %struct.sqlite3_str, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %accError, align 4
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %n.addr, align 8
  %3 = load ptr, ptr %pAccum.addr, align 8
  %nAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nAlloc, align 8
  %conv = zext i32 %4 to i64
  %cmp = icmp sgt i64 %2, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, ptr %n.addr, align 8
  %6 = load ptr, ptr %pAccum.addr, align 8
  %mxAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %mxAlloc, align 4
  %conv2 = zext i32 %7 to i64
  %cmp3 = icmp sgt i64 %5, %conv2
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %pAccum.addr, align 8
  call void @setStrAccumError(ptr noundef %8, i8 noundef zeroext 18)
  store ptr null, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %pAccum.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_str, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %db, align 8
  %11 = load i64, ptr %n.addr, align 8
  %call = call ptr @sqlite3DbMallocRaw(ptr noundef %10, i64 noundef %11)
  store ptr %call, ptr %z, align 8
  %12 = load ptr, ptr %z, align 8
  %cmp7 = icmp eq ptr %12, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %13 = load ptr, ptr %pAccum.addr, align 8
  call void @setStrAccumError(ptr noundef %13, i8 noundef zeroext 7)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %14 = load ptr, ptr %z, align 8
  store ptr %14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then5, %if.then
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setStrAccumError(ptr noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
