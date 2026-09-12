; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @write32bits(ptr noundef %fd, i64 noundef %offset, i32 noundef %val) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %val.addr = alloca i32, align 4
  %ac = alloca [4 x i8], align 1
  store ptr %fd, ptr %fd.addr, align 8
  store i64 %offset, ptr %offset.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], ptr %ac, i64 0, i64 0
  %0 = load i32, ptr %val.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arraydecay, i32 noundef %0)
  %1 = load ptr, ptr %fd.addr, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %ac, i64 0, i64 0
  %2 = load i64, ptr %offset.addr, align 8
  %call = call i32 @sqlite3OsWrite(ptr noundef %1, ptr noundef %arraydecay1, i32 noundef 4, i64 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
