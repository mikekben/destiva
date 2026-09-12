; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3NameFromToken(ptr noundef %db, ptr noundef %pName) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  %0 = load ptr, ptr %pName.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %pName.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %z, align 8
  %4 = load ptr, ptr %pName.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %n, align 8
  %conv = zext i32 %5 to i64
  %call = call ptr @sqlite3DbStrNDup(ptr noundef %1, ptr noundef %3, i64 noundef %conv)
  store ptr %call, ptr %zName, align 8
  %6 = load ptr, ptr %zName, align 8
  call void @sqlite3Dequote(ptr noundef %6)
  br label %if.end

if.else:                                          ; preds = %entry
  store ptr null, ptr %zName, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %zName, align 8
  ret ptr %7
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Dequote(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
