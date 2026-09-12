; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @dupedExprStructSize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @dupedExprNodeSize(ptr noundef %p, i32 noundef %flags) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %nByte = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %flags.addr, align 4
  %call = call i32 @dupedExprStructSize(ptr noundef %0, i32 noundef %1)
  %and = and i32 %call, 4095
  store i32 %and, ptr %nByte, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags1, align 4
  %and2 = and i32 %3, 1024
  %cmp = icmp ne i32 %and2, 0
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %u, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %p.addr, align 8
  %u3 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %u3, align 8
  %call4 = call i64 @strlen(ptr noundef %7) #2
  %and5 = and i64 %call4, 1073741823
  %add = add i64 %and5, 1
  %8 = load i32, ptr %nByte, align 4
  %conv = sext i32 %8 to i64
  %add6 = add i64 %conv, %add
  %conv7 = trunc i64 %add6 to i32
  store i32 %conv7, ptr %nByte, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, ptr %nByte, align 4
  %add8 = add nsw i32 %9, 7
  %and9 = and i32 %add8, -8
  ret i32 %and9
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
