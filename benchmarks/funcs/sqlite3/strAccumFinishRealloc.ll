; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @setStrAccumError(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind uwtable
define hidden ptr @strAccumFinishRealloc(ptr noundef %p) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %zText = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_str, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %nChar, align 8
  %add = add i32 %3, 1
  %conv = zext i32 %add to i64
  %call = call ptr @sqlite3DbMallocRaw(ptr noundef %1, i64 noundef %conv)
  store ptr %call, ptr %zText, align 8
  %4 = load ptr, ptr %zText, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %zText, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %zText1 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %zText1, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %nChar2 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %nChar2, align 8
  %add3 = add i32 %9, 1
  %conv4 = zext i32 %add3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %7, i64 %conv4, i1 false)
  %10 = load ptr, ptr %p.addr, align 8
  %printfFlags = getelementptr inbounds nuw %struct.sqlite3_str, ptr %10, i32 0, i32 6
  %11 = load i8, ptr %printfFlags, align 1
  %conv5 = zext i8 %11 to i32
  %or = or i32 %conv5, 4
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, ptr %printfFlags, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %p.addr, align 8
  call void @setStrAccumError(ptr noundef %12, i8 noundef zeroext 7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load ptr, ptr %zText, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %zText7 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %14, i32 0, i32 1
  store ptr %13, ptr %zText7, align 8
  %15 = load ptr, ptr %zText, align 8
  ret ptr %15
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
