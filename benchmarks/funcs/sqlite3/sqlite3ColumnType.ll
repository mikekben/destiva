; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ColumnType(ptr noundef %pCol, ptr noundef %zDflt) #1 {
entry:
  %retval = alloca ptr, align 8
  %pCol.addr = alloca ptr, align 8
  %zDflt.addr = alloca ptr, align 8
  store ptr %pCol, ptr %pCol.addr, align 8
  store ptr %zDflt, ptr %zDflt.addr, align 8
  %0 = load ptr, ptr %pCol.addr, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %0, i32 0, i32 6
  %1 = load i8, ptr %colFlags, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 4
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %zDflt.addr, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pCol.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Column, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %zName, align 8
  %5 = load ptr, ptr %pCol.addr, align 8
  %zName2 = getelementptr inbounds nuw %struct.Column, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %zName2, align 8
  %call = call i64 @strlen(ptr noundef %6) #2
  %add.ptr = getelementptr inbounds nuw i8, ptr %4, i64 %call
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  store ptr %add.ptr3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
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
