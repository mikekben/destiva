; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoFromExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @windowIfNewPeer(ptr noundef %pParse, ptr noundef %pOrderBy, i32 noundef %regNew, i32 noundef %regOld, i32 noundef %addr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %regNew.addr = alloca i32, align 4
  %regOld.addr = alloca i32, align 4
  %addr.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %nVal = alloca i32, align 4
  %pKeyInfo = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store i32 %regNew, ptr %regNew.addr, align 4
  store i32 %regOld, ptr %regOld.addr, align 4
  store i32 %addr, ptr %addr.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  %1 = load ptr, ptr %pOrderBy.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pOrderBy.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nExpr, align 8
  store i32 %3, ptr %nVal, align 4
  %4 = load ptr, ptr %pParse.addr, align 8
  %5 = load ptr, ptr %pOrderBy.addr, align 8
  %call1 = call ptr @sqlite3KeyInfoFromExprList(ptr noundef %4, ptr noundef %5, i32 noundef 0, i32 noundef 0)
  store ptr %call1, ptr %pKeyInfo, align 8
  %6 = load ptr, ptr %v, align 8
  %7 = load i32, ptr %regOld.addr, align 4
  %8 = load i32, ptr %regNew.addr, align 4
  %9 = load i32, ptr %nVal, align 4
  %call2 = call i32 @sqlite3VdbeAddOp3(ptr noundef %6, i32 noundef 87, i32 noundef %7, i32 noundef %8, i32 noundef %9)
  %10 = load ptr, ptr %v, align 8
  %11 = load ptr, ptr %pKeyInfo, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %10, ptr noundef %11, i32 noundef -9)
  %12 = load ptr, ptr %v, align 8
  %13 = load ptr, ptr %v, align 8
  %call3 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %13)
  %add = add nsw i32 %call3, 1
  %14 = load i32, ptr %addr.addr, align 4
  %15 = load ptr, ptr %v, align 8
  %call4 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %15)
  %add5 = add nsw i32 %call4, 1
  %call6 = call i32 @sqlite3VdbeAddOp3(ptr noundef %12, i32 noundef 16, i32 noundef %add, i32 noundef %14, i32 noundef %add5)
  %16 = load ptr, ptr %v, align 8
  %17 = load i32, ptr %regNew.addr, align 4
  %18 = load i32, ptr %regOld.addr, align 4
  %19 = load i32, ptr %nVal, align 4
  %sub = sub nsw i32 %19, 1
  %call7 = call i32 @sqlite3VdbeAddOp3(ptr noundef %16, i32 noundef 78, i32 noundef %17, i32 noundef %18, i32 noundef %sub)
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load ptr, ptr %v, align 8
  %21 = load i32, ptr %addr.addr, align 4
  %call8 = call i32 @sqlite3VdbeAddOp2(ptr noundef %20, i32 noundef 11, i32 noundef 0, i32 noundef %21)
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
