; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3DbStrNDup(ptr noundef %db, ptr noundef %z, i64 noundef %n) #1 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %zNew = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %add = add i64 %2, 1
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %1, i64 noundef %add)
  store ptr %call, ptr %zNew, align 8
  %3 = load ptr, ptr %zNew, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %zNew, align 8
  %5 = load ptr, ptr %z.addr, align 8
  %6 = load i64, ptr %n.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %5, i64 %6, i1 false)
  %7 = load ptr, ptr %zNew, align 8
  %8 = load i64, ptr %n.addr, align 8
  %arrayidx = getelementptr inbounds nuw i8, ptr %7, i64 %8
  store i8 0, ptr %arrayidx, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %9 = load ptr, ptr %zNew, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end2, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

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
