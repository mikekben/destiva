; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeMemShallowCopy(ptr noundef %pTo, ptr noundef %pFrom, i32 noundef %srcType) #1 {
entry:
  %pTo.addr = alloca ptr, align 8
  %pFrom.addr = alloca ptr, align 8
  %srcType.addr = alloca i32, align 4
  store ptr %pTo, ptr %pTo.addr, align 8
  store ptr %pFrom, ptr %pFrom.addr, align 8
  store i32 %srcType, ptr %srcType.addr, align 4
  %0 = load ptr, ptr %pTo.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 9216
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pTo.addr, align 8
  %3 = load ptr, ptr %pFrom.addr, align 8
  %4 = load i32, ptr %srcType.addr, align 4
  call void @vdbeClrCopy(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %if.end15

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pTo.addr, align 8
  %6 = load ptr, ptr %pFrom.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %6, i64 24, i1 false)
  %7 = load ptr, ptr %pFrom.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 1
  %8 = load i16, ptr %flags2, align 8
  %conv3 = zext i16 %8 to i32
  %and4 = and i32 %conv3, 2048
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %pTo.addr, align 8
  %flags8 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 1
  %10 = load i16, ptr %flags8, align 8
  %conv9 = zext i16 %10 to i32
  %and10 = and i32 %conv9, -7169
  %conv11 = trunc i32 %and10 to i16
  store i16 %conv11, ptr %flags8, align 8
  %11 = load i32, ptr %srcType.addr, align 4
  %12 = load ptr, ptr %pTo.addr, align 8
  %flags12 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 1
  %13 = load i16, ptr %flags12, align 8
  %conv13 = zext i16 %13 to i32
  %or = or i32 %conv13, %11
  %conv14 = trunc i32 %or to i16
  store i16 %conv14, ptr %flags12, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @vdbeClrCopy(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
