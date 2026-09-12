; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@.str.816 = external hidden unnamed_addr constant [47 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WindowAttach(ptr noundef %pParse, ptr noundef %p, ptr noundef %pWin) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pWin.addr = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pWin, ptr %pWin.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pWin.addr, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 14
  store ptr %1, ptr %y, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 16777216
  store i32 %or, ptr %flags, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %6 = load ptr, ptr %pWin.addr, align 8
  %pOwner = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 21
  store ptr %5, ptr %pOwner, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %flags1, align 4
  %and = and i32 %8, 2
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load ptr, ptr %pWin.addr, align 8
  %eFrmType = getelementptr inbounds nuw %struct.Window, ptr %9, i32 0, i32 4
  %10 = load i8, ptr %eFrmType, align 8
  %conv = zext i8 %10 to i32
  %cmp = icmp ne i32 %conv, 161
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %11, ptr noundef @.str.816)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  br label %if.end5

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %db, align 8
  %14 = load ptr, ptr %pWin.addr, align 8
  call void @sqlite3WindowDelete(ptr noundef %13, ptr noundef %14)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
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
