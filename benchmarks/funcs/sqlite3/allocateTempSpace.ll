; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PageMalloc(i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @allocateTempSpace(ptr noundef %pBt) #1 {
entry:
  %pBt.addr = alloca ptr, align 8
  store ptr %pBt, ptr %pBt.addr, align 8
  %0 = load ptr, ptr %pBt.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 27
  %1 = load ptr, ptr %pTmpSpace, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pBt.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 15
  %3 = load i32, ptr %pageSize, align 8
  %call = call ptr @sqlite3PageMalloc(i32 noundef %3)
  %4 = load ptr, ptr %pBt.addr, align 8
  %pTmpSpace1 = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 27
  store ptr %call, ptr %pTmpSpace1, align 8
  %5 = load ptr, ptr %pBt.addr, align 8
  %pTmpSpace2 = getelementptr inbounds nuw %struct.BtShared, ptr %5, i32 0, i32 27
  %6 = load ptr, ptr %pTmpSpace2, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %pBt.addr, align 8
  %pTmpSpace5 = getelementptr inbounds nuw %struct.BtShared, ptr %7, i32 0, i32 27
  %8 = load ptr, ptr %pTmpSpace5, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 8, i1 false)
  %9 = load ptr, ptr %pBt.addr, align 8
  %pTmpSpace6 = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 27
  %10 = load ptr, ptr %pTmpSpace6, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 4
  store ptr %add.ptr, ptr %pTmpSpace6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
