; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc(i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_value_dup(ptr noundef %pOrig) #0 {
entry:
  %retval = alloca ptr, align 8
  %pOrig.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %pOrig, ptr %pOrig.addr, align 8
  %0 = load ptr, ptr %pOrig.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call ptr @sqlite3_malloc(i32 noundef 56)
  store ptr %call, ptr %pNew, align 8
  %1 = load ptr, ptr %pNew, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %pNew, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 56, i1 false)
  %3 = load ptr, ptr %pNew, align 8
  %4 = load ptr, ptr %pOrig.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %4, i64 24, i1 false)
  %5 = load ptr, ptr %pNew, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 1
  %6 = load i16, ptr %flags, align 8
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, -1025
  %conv4 = trunc i32 %and to i16
  store i16 %conv4, ptr %flags, align 8
  %7 = load ptr, ptr %pNew, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 9
  store ptr null, ptr %db, align 8
  %8 = load ptr, ptr %pNew, align 8
  %flags5 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 1
  %9 = load i16, ptr %flags5, align 8
  %conv6 = zext i16 %9 to i32
  %and7 = and i32 %conv6, 18
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then8, label %if.end21

if.then8:                                         ; preds = %if.end3
  %10 = load ptr, ptr %pNew, align 8
  %flags9 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %10, i32 0, i32 1
  %11 = load i16, ptr %flags9, align 8
  %conv10 = zext i16 %11 to i32
  %and11 = and i32 %conv10, -3073
  %conv12 = trunc i32 %and11 to i16
  store i16 %conv12, ptr %flags9, align 8
  %12 = load ptr, ptr %pNew, align 8
  %flags13 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 1
  %13 = load i16, ptr %flags13, align 8
  %conv14 = zext i16 %13 to i32
  %or = or i32 %conv14, 4096
  %conv15 = trunc i32 %or to i16
  store i16 %conv15, ptr %flags13, align 8
  %14 = load ptr, ptr %pNew, align 8
  %call16 = call i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %14)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then8
  %15 = load ptr, ptr %pNew, align 8
  call void @sqlite3ValueFree(ptr noundef %15)
  store ptr null, ptr %pNew, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then8
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end3
  %16 = load ptr, ptr %pNew, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end21, %if.then2, %if.then
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemMakeWriteable(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
