; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WhereClauseClear(ptr noundef %pWC) #0 {
entry:
  %pWC.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %a = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  %0 = load ptr, ptr %pWC.addr, align 8
  %pWInfo = getelementptr inbounds nuw %struct.WhereClause, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pWInfo, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereInfo, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pParse, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pWC.addr, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %nTerm, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, ptr %i, align 4
  %6 = load ptr, ptr %pWC.addr, align 8
  %a2 = getelementptr inbounds nuw %struct.WhereClause, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %a2, align 8
  store ptr %7, ptr %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %a, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %9, i32 0, i32 3
  %10 = load i16, ptr %wtFlags, align 2
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %db, align 8
  %12 = load ptr, ptr %a, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pExpr, align 8
  call void @sqlite3ExprDelete(ptr noundef %11, ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load ptr, ptr %a, align 8
  %wtFlags3 = getelementptr inbounds nuw %struct.WhereTerm, ptr %14, i32 0, i32 3
  %15 = load i16, ptr %wtFlags3, align 2
  %conv4 = zext i16 %15 to i32
  %and5 = and i32 %conv4, 16
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %16 = load ptr, ptr %db, align 8
  %17 = load ptr, ptr %a, align 8
  %u = getelementptr inbounds nuw %struct.WhereTerm, ptr %17, i32 0, i32 10
  %18 = load ptr, ptr %u, align 8
  call void @whereOrInfoDelete(ptr noundef %16, ptr noundef %18)
  br label %if.end15

if.else:                                          ; preds = %if.end
  %19 = load ptr, ptr %a, align 8
  %wtFlags8 = getelementptr inbounds nuw %struct.WhereTerm, ptr %19, i32 0, i32 3
  %20 = load i16, ptr %wtFlags8, align 2
  %conv9 = zext i16 %20 to i32
  %and10 = and i32 %conv9, 32
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %a, align 8
  %u13 = getelementptr inbounds nuw %struct.WhereTerm, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %u13, align 8
  call void @whereAndInfoDelete(ptr noundef %21, ptr noundef %23)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %24 = load i32, ptr %i, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, ptr %i, align 4
  %25 = load ptr, ptr %a, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %a, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %pWC.addr, align 8
  %a16 = getelementptr inbounds nuw %struct.WhereClause, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %a16, align 8
  %28 = load ptr, ptr %pWC.addr, align 8
  %aStatic = getelementptr inbounds nuw %struct.WhereClause, ptr %28, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.WhereTerm], ptr %aStatic, i64 0, i64 0
  %cmp17 = icmp ne ptr %27, %arraydecay
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.end
  %29 = load ptr, ptr %db, align 8
  %30 = load ptr, ptr %pWC.addr, align 8
  %a20 = getelementptr inbounds nuw %struct.WhereClause, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %a20, align 8
  call void @sqlite3DbFree(ptr noundef %29, ptr noundef %31)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @whereOrInfoDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereAndInfoDelete(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
