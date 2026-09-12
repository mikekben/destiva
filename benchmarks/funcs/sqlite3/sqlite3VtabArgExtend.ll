; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VtabArgExtend(ptr noundef %pParse, ptr noundef %p) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pArg = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %sArg = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 62
  store ptr %sArg, ptr %pArg, align 8
  %1 = load ptr, ptr %pArg, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %z, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %z1 = getelementptr inbounds nuw %struct.Token, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %z1, align 8
  %5 = load ptr, ptr %pArg, align 8
  %z2 = getelementptr inbounds nuw %struct.Token, ptr %5, i32 0, i32 0
  store ptr %4, ptr %z2, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %n, align 8
  %8 = load ptr, ptr %pArg, align 8
  %n3 = getelementptr inbounds nuw %struct.Token, ptr %8, i32 0, i32 1
  store i32 %7, ptr %n3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %p.addr, align 8
  %z4 = getelementptr inbounds nuw %struct.Token, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %z4, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %n5 = getelementptr inbounds nuw %struct.Token, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %n5, align 8
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %10, i64 %idxprom
  %13 = load ptr, ptr %pArg, align 8
  %z6 = getelementptr inbounds nuw %struct.Token, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %z6, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %15 = load ptr, ptr %pArg, align 8
  %n7 = getelementptr inbounds nuw %struct.Token, ptr %15, i32 0, i32 1
  store i32 %conv, ptr %n7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
