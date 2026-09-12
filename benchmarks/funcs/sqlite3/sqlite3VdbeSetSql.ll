; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeSetSql(ptr noundef %p, ptr noundef %z, i32 noundef %n, i8 noundef zeroext %prepFlags) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %prepFlags.addr = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i8 %prepFlags, ptr %prepFlags.addr, align 1
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %prepFlags.addr, align 1
  %2 = load ptr, ptr %p.addr, align 8
  %prepFlags1 = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 34
  store i8 %1, ptr %prepFlags1, align 4
  %3 = load i8, ptr %prepFlags.addr, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 128
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8
  %expmask = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 46
  store i32 0, ptr %expmask, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %5 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db, align 8
  %7 = load ptr, ptr %z.addr, align 8
  %8 = load i32, ptr %n.addr, align 4
  %conv6 = sext i32 %8 to i64
  %call = call ptr @sqlite3DbStrNDup(ptr noundef %6, ptr noundef %7, i64 noundef %conv6)
  %9 = load ptr, ptr %p.addr, align 8
  %zSql = getelementptr inbounds nuw %struct.Vdbe, ptr %9, i32 0, i32 41
  store ptr %call, ptr %zSql, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
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
