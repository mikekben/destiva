; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.RenameToken = type { ptr, %struct.Token, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3RenameTokenMap(ptr noundef %pParse, ptr noundef %pPtr, ptr noundef %pToken) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pPtr.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pPtr, ptr %pPtr.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %1, i64 noundef 32)
  store ptr %call, ptr %pNew, align 8
  %2 = load ptr, ptr %pNew, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pPtr.addr, align 8
  %4 = load ptr, ptr %pNew, align 8
  %p = getelementptr inbounds nuw %struct.RenameToken, ptr %4, i32 0, i32 0
  store ptr %3, ptr %p, align 8
  %5 = load ptr, ptr %pNew, align 8
  %t = getelementptr inbounds nuw %struct.RenameToken, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pToken.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t, ptr align 8 %6, i64 16, i1 false)
  %7 = load ptr, ptr %pParse.addr, align 8
  %pRename = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 68
  %8 = load ptr, ptr %pRename, align 8
  %9 = load ptr, ptr %pNew, align 8
  %pNext = getelementptr inbounds nuw %struct.RenameToken, ptr %9, i32 0, i32 2
  store ptr %8, ptr %pNext, align 8
  %10 = load ptr, ptr %pNew, align 8
  %11 = load ptr, ptr %pParse.addr, align 8
  %pRename1 = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 68
  store ptr %10, ptr %pRename1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %pPtr.addr, align 8
  ret ptr %12
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
