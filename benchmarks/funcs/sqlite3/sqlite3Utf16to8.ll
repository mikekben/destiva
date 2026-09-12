; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemSetStr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3Utf16to8(ptr noundef %db, ptr noundef %z, i32 noundef %nByte, i8 noundef zeroext %enc) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %enc.addr = alloca i8, align 1
  %m = alloca %struct.sqlite3_value, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store i8 %enc, ptr %enc.addr, align 1
  call void @llvm.memset.p0.i64(ptr align 8 %m, i8 0, i64 56, i1 false)
  %0 = load ptr, ptr %db.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 9
  store ptr %0, ptr %db1, align 8
  %1 = load ptr, ptr %z.addr, align 8
  %2 = load i32, ptr %nByte.addr, align 4
  %3 = load i8, ptr %enc.addr, align 1
  %call = call i32 @sqlite3VdbeMemSetStr(ptr noundef %m, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef null)
  %call2 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %m, i32 noundef 1)
  %4 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @sqlite3VdbeMemRelease(ptr noundef %m)
  %z3 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  store ptr null, ptr %z3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %z4 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  %6 = load ptr, ptr %z4, align 8
  ret ptr %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeEncoding(ptr noundef, i32 noundef) #0

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
