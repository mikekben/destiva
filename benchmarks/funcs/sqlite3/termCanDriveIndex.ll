; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IndexAffinityOk(ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @termCanDriveIndex(ptr noundef %pTerm, ptr noundef %pSrc, i64 noundef %notReady) #0 {
entry:
  %retval = alloca i32, align 4
  %pTerm.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %notReady.addr = alloca i64, align 8
  %aff = alloca i8, align 1
  store ptr %pTerm, ptr %pTerm.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i64 %notReady, ptr %notReady.addr, align 8
  %0 = load ptr, ptr %pTerm.addr, align 8
  %leftCursor = getelementptr inbounds nuw %struct.WhereTerm, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %leftCursor, align 4
  %2 = load ptr, ptr %pSrc.addr, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %2, i32 0, i32 10
  %3 = load i32, ptr %iCursor, align 8
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pTerm.addr, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %4, i32 0, i32 4
  %5 = load i16, ptr %eOperator, align 4
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 130
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %pSrc.addr, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %6, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %7 = load i8, ptr %jointype, align 4
  %conv5 = zext i8 %7 to i32
  %and6 = and i32 %conv5, 8
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end4
  %8 = load ptr, ptr %pTerm.addr, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pExpr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %flags, align 4
  %and7 = and i32 %10, 1
  %cmp8 = icmp ne i32 %and7, 0
  br i1 %cmp8, label %if.end16, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %11 = load ptr, ptr %pTerm.addr, align 8
  %eOperator11 = getelementptr inbounds nuw %struct.WhereTerm, ptr %11, i32 0, i32 4
  %12 = load i16, ptr %eOperator11, align 4
  %conv12 = zext i16 %12 to i32
  %and13 = and i32 %conv12, 128
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true10
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true10, %land.lhs.true, %if.end4
  %13 = load ptr, ptr %pTerm.addr, align 8
  %prereqRight = getelementptr inbounds nuw %struct.WhereTerm, ptr %13, i32 0, i32 11
  %14 = load i64, ptr %prereqRight, align 8
  %15 = load i64, ptr %notReady.addr, align 8
  %and17 = and i64 %14, %15
  %cmp18 = icmp ne i64 %and17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  %16 = load ptr, ptr %pTerm.addr, align 8
  %u = getelementptr inbounds nuw %struct.WhereTerm, ptr %16, i32 0, i32 10
  %17 = load i32, ptr %u, align 8
  %cmp22 = icmp slt i32 %17, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end21
  %18 = load ptr, ptr %pSrc.addr, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %aCol, align 8
  %21 = load ptr, ptr %pTerm.addr, align 8
  %u26 = getelementptr inbounds nuw %struct.WhereTerm, ptr %21, i32 0, i32 10
  %22 = load i32, ptr %u26, align 8
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %20, i64 %idxprom
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 4
  %23 = load i8, ptr %affinity, align 1
  store i8 %23, ptr %aff, align 1
  %24 = load ptr, ptr %pTerm.addr, align 8
  %pExpr27 = getelementptr inbounds nuw %struct.WhereTerm, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pExpr27, align 8
  %26 = load i8, ptr %aff, align 1
  %call = call i32 @sqlite3IndexAffinityOk(ptr noundef %25, i8 noundef signext %26)
  %tobool28 = icmp ne i32 %call, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end25
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then29, %if.then24, %if.then20, %if.then15, %if.then3, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
