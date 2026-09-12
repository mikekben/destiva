; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemExpandBlob(ptr noundef %pMem) #0 {
entry:
  %retval = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %nByte = alloca i32, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %n, align 4
  %2 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %u, align 8
  %add = add nsw i32 %1, %3
  store i32 %add, ptr %nByte, align 4
  %4 = load i32, ptr %nByte, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %flags, align 8
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 1, ptr %nByte, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %pMem.addr, align 8
  %8 = load i32, ptr %nByte, align 4
  %call = call i32 @sqlite3VdbeMemGrow(ptr noundef %7, i32 noundef %8, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  store i32 7, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end4
  %9 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %z, align 8
  %11 = load ptr, ptr %pMem.addr, align 8
  %n7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %n7, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %13 = load ptr, ptr %pMem.addr, align 8
  %u8 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %u8, align 8
  %conv9 = sext i32 %14 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx, i8 0, i64 %conv9, i1 false)
  %15 = load ptr, ptr %pMem.addr, align 8
  %u10 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %u10, align 8
  %17 = load ptr, ptr %pMem.addr, align 8
  %n11 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %n11, align 4
  %add12 = add nsw i32 %18, %16
  store i32 %add12, ptr %n11, align 4
  %19 = load ptr, ptr %pMem.addr, align 8
  %flags13 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %19, i32 0, i32 1
  %20 = load i16, ptr %flags13, align 8
  %conv14 = zext i16 %20 to i32
  %and15 = and i32 %conv14, -16897
  %conv16 = trunc i32 %and15 to i16
  store i16 %conv16, ptr %flags13, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then3
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemGrow(ptr noundef, i32 noundef, i32 noundef) #0

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
