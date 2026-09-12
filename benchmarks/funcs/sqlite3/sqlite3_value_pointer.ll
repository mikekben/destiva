; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_value_pointer(ptr noundef %pVal, ptr noundef %zPType) #1 {
entry:
  %retval = alloca ptr, align 8
  %pVal.addr = alloca ptr, align 8
  %zPType.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pVal, ptr %pVal.addr, align 8
  store ptr %zPType, ptr %zPType.addr, align 8
  %0 = load ptr, ptr %pVal.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 1
  %2 = load i16, ptr %flags, align 8
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 50111
  %cmp = icmp eq i32 %and, 33281
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %zPType.addr, align 8
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %p, align 8
  %eSubtype = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 3
  %5 = load i8, ptr %eSubtype, align 1
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 112
  br i1 %cmp6, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %6 = load ptr, ptr %p, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %u, align 8
  %8 = load ptr, ptr %zPType.addr, align 8
  %call = call i32 @strcmp(ptr noundef %7, ptr noundef %8) #2
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true8
  %9 = load ptr, ptr %p, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %z, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true8, %land.lhs.true4, %land.lhs.true, %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
