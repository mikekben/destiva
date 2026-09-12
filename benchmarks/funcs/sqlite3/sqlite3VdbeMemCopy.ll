; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemMakeWriteable(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemCopy(ptr noundef %pTo, ptr noundef %pFrom) #1 {
entry:
  %pTo.addr = alloca ptr, align 8
  %pFrom.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pTo, ptr %pTo.addr, align 8
  store ptr %pFrom, ptr %pFrom.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pTo.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 9216
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pTo.addr, align 8
  call void @vdbeMemClearExternAndSetNull(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %pTo.addr, align 8
  %4 = load ptr, ptr %pFrom.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %4, i64 24, i1 false)
  %5 = load ptr, ptr %pTo.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %flags2, align 8
  %conv3 = zext i16 %6 to i32
  %and4 = and i32 %conv3, -1025
  %conv5 = trunc i32 %and4 to i16
  store i16 %conv5, ptr %flags2, align 8
  %7 = load ptr, ptr %pTo.addr, align 8
  %flags6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 1
  %8 = load i16, ptr %flags6, align 8
  %conv7 = zext i16 %8 to i32
  %and8 = and i32 %conv7, 18
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.then9, label %if.end20

if.then9:                                         ; preds = %if.end
  %9 = load ptr, ptr %pFrom.addr, align 8
  %flags10 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 1
  %10 = load i16, ptr %flags10, align 8
  %conv11 = zext i16 %10 to i32
  %and12 = and i32 %conv11, 2048
  %cmp13 = icmp eq i32 0, %and12
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.then9
  %11 = load ptr, ptr %pTo.addr, align 8
  %flags16 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 1
  %12 = load i16, ptr %flags16, align 8
  %conv17 = zext i16 %12 to i32
  %or = or i32 %conv17, 4096
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, ptr %flags16, align 8
  %13 = load ptr, ptr %pTo.addr, align 8
  %call = call i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %13)
  store i32 %call, ptr %rc, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then9
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden void @vdbeMemClearExternAndSetNull(ptr noundef) #1

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
