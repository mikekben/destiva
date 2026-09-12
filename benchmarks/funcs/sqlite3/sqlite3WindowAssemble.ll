; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3WindowAssemble(ptr noundef %pParse, ptr noundef %pWin, ptr noundef %pPartition, ptr noundef %pOrderBy, ptr noundef %pBase) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pWin.addr = alloca ptr, align 8
  %pPartition.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %pBase.addr = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pWin, ptr %pWin.addr, align 8
  store ptr %pPartition, ptr %pPartition.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store ptr %pBase, ptr %pBase.addr, align 8
  %0 = load ptr, ptr %pWin.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pPartition.addr, align 8
  %2 = load ptr, ptr %pWin.addr, align 8
  %pPartition1 = getelementptr inbounds nuw %struct.Window, ptr %2, i32 0, i32 2
  store ptr %1, ptr %pPartition1, align 8
  %3 = load ptr, ptr %pOrderBy.addr, align 8
  %4 = load ptr, ptr %pWin.addr, align 8
  %pOrderBy2 = getelementptr inbounds nuw %struct.Window, ptr %4, i32 0, i32 3
  store ptr %3, ptr %pOrderBy2, align 8
  %5 = load ptr, ptr %pBase.addr, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db, align 8
  %8 = load ptr, ptr %pBase.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %z, align 8
  %10 = load ptr, ptr %pBase.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %n, align 8
  %conv = zext i32 %11 to i64
  %call = call ptr @sqlite3DbStrNDup(ptr noundef %7, ptr noundef %9, i64 noundef %conv)
  %12 = load ptr, ptr %pWin.addr, align 8
  %zBase = getelementptr inbounds nuw %struct.Window, ptr %12, i32 0, i32 1
  store ptr %call, ptr %zBase, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end7

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %pParse.addr, align 8
  %db5 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %db5, align 8
  %15 = load ptr, ptr %pPartition.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %pParse.addr, align 8
  %db6 = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %db6, align 8
  %18 = load ptr, ptr %pOrderBy.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %17, ptr noundef %18)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %19 = load ptr, ptr %pWin.addr, align 8
  ret ptr %19
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
