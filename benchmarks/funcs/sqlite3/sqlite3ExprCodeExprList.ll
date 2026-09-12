; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.anon.12 = type { i16, i16 }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetOp(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTarget(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstantNotJoin(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeAtInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprCodeExprList(ptr noundef %pParse, ptr noundef %pList, i32 noundef %target, i32 noundef %srcReg, i8 noundef zeroext %flags) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %target.addr = alloca i32, align 4
  %srcReg.addr = alloca i32, align 4
  %flags.addr = alloca i8, align 1
  %pItem = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %copyOp = alloca i8, align 1
  %v = alloca ptr, align 8
  %pExpr = alloca ptr, align 8
  %inReg = alloca i32, align 4
  %pOp = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store i32 %target, ptr %target.addr, align 4
  store i32 %srcReg, ptr %srcReg.addr, align 4
  store i8 %flags, ptr %flags.addr, align 1
  %0 = load i8, ptr %flags.addr, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 78, i32 79
  %conv1 = trunc i32 %cond to i8
  store i8 %conv1, ptr %copyOp, align 1
  %2 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  store ptr %3, ptr %v, align 8
  %4 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nExpr, align 8
  store i32 %5, ptr %n, align 4
  %6 = load ptr, ptr %pParse.addr, align 8
  %okConstFactor = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 11
  %7 = load i8, ptr %okConstFactor, align 1
  %tobool2 = icmp ne i8 %7, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i8, ptr %flags.addr, align 1
  %conv3 = zext i8 %8 to i32
  %and4 = and i32 %conv3, -3
  %conv5 = trunc i32 %and4 to i8
  store i8 %conv5, ptr %flags.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %pItem, align 8
  %pExpr7 = getelementptr inbounds nuw %struct.ExprList_item, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pExpr7, align 8
  store ptr %13, ptr %pExpr, align 8
  %14 = load i8, ptr %flags.addr, align 1
  %conv8 = zext i8 %14 to i32
  %and9 = and i32 %conv8, 4
  %cmp10 = icmp ne i32 %and9, 0
  br i1 %cmp10, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %for.body
  %15 = load ptr, ptr %pItem, align 8
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %15, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 0
  %16 = load i16, ptr %iOrderByCol, align 4
  %conv12 = zext i16 %16 to i32
  store i32 %conv12, ptr %j, align 4
  %cmp13 = icmp sgt i32 %conv12, 0
  br i1 %cmp13, label %if.then15, label %if.else24

if.then15:                                        ; preds = %land.lhs.true
  %17 = load i8, ptr %flags.addr, align 1
  %conv16 = zext i8 %17 to i32
  %and17 = and i32 %conv16, 8
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then15
  %18 = load i32, ptr %i, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %i, align 4
  %19 = load i32, ptr %n, align 4
  %dec20 = add nsw i32 %19, -1
  store i32 %dec20, ptr %n, align 4
  br label %if.end23

if.else:                                          ; preds = %if.then15
  %20 = load ptr, ptr %v, align 8
  %21 = load i8, ptr %copyOp, align 1
  %conv21 = zext i8 %21 to i32
  %22 = load i32, ptr %j, align 4
  %23 = load i32, ptr %srcReg.addr, align 4
  %add = add nsw i32 %22, %23
  %sub = sub nsw i32 %add, 1
  %24 = load i32, ptr %target.addr, align 4
  %25 = load i32, ptr %i, align 4
  %add22 = add nsw i32 %24, %25
  %call = call i32 @sqlite3VdbeAddOp2(ptr noundef %20, i32 noundef %conv21, i32 noundef %sub, i32 noundef %add22)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  br label %if.end71

if.else24:                                        ; preds = %land.lhs.true, %for.body
  %26 = load i8, ptr %flags.addr, align 1
  %conv25 = zext i8 %26 to i32
  %and26 = and i32 %conv25, 2
  %cmp27 = icmp ne i32 %and26, 0
  br i1 %cmp27, label %land.lhs.true29, label %if.else35

land.lhs.true29:                                  ; preds = %if.else24
  %27 = load ptr, ptr %pExpr, align 8
  %call30 = call i32 @sqlite3ExprIsConstantNotJoin(ptr noundef %27)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else35

if.then32:                                        ; preds = %land.lhs.true29
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %pExpr, align 8
  %30 = load i32, ptr %target.addr, align 4
  %31 = load i32, ptr %i, align 4
  %add33 = add nsw i32 %30, %31
  %call34 = call i32 @sqlite3ExprCodeAtInit(ptr noundef %28, ptr noundef %29, i32 noundef %add33)
  br label %if.end70

if.else35:                                        ; preds = %land.lhs.true29, %if.else24
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %pExpr, align 8
  %34 = load i32, ptr %target.addr, align 4
  %35 = load i32, ptr %i, align 4
  %add36 = add nsw i32 %34, %35
  %call37 = call i32 @sqlite3ExprCodeTarget(ptr noundef %32, ptr noundef %33, i32 noundef %add36)
  store i32 %call37, ptr %inReg, align 4
  %36 = load i32, ptr %inReg, align 4
  %37 = load i32, ptr %target.addr, align 4
  %38 = load i32, ptr %i, align 4
  %add38 = add nsw i32 %37, %38
  %cmp39 = icmp ne i32 %36, %add38
  br i1 %cmp39, label %if.then41, label %if.end69

if.then41:                                        ; preds = %if.else35
  %39 = load i8, ptr %copyOp, align 1
  %conv42 = zext i8 %39 to i32
  %cmp43 = icmp eq i32 %conv42, 78
  br i1 %cmp43, label %land.lhs.true45, label %if.else64

land.lhs.true45:                                  ; preds = %if.then41
  %40 = load ptr, ptr %v, align 8
  %call46 = call ptr @sqlite3VdbeGetOp(ptr noundef %40, i32 noundef -1)
  store ptr %call46, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %call46, i32 0, i32 0
  %41 = load i8, ptr %opcode, align 8
  %conv47 = zext i8 %41 to i32
  %cmp48 = icmp eq i32 %conv47, 78
  br i1 %cmp48, label %land.lhs.true50, label %if.else64

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %42 = load ptr, ptr %pOp, align 8
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %p1, align 4
  %44 = load ptr, ptr %pOp, align 8
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %44, i32 0, i32 5
  %45 = load i32, ptr %p3, align 4
  %add51 = add nsw i32 %43, %45
  %add52 = add nsw i32 %add51, 1
  %46 = load i32, ptr %inReg, align 4
  %cmp53 = icmp eq i32 %add52, %46
  br i1 %cmp53, label %land.lhs.true55, label %if.else64

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %47 = load ptr, ptr %pOp, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %47, i32 0, i32 4
  %48 = load i32, ptr %p2, align 8
  %49 = load ptr, ptr %pOp, align 8
  %p356 = getelementptr inbounds nuw %struct.VdbeOp, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %p356, align 4
  %add57 = add nsw i32 %48, %50
  %add58 = add nsw i32 %add57, 1
  %51 = load i32, ptr %target.addr, align 4
  %52 = load i32, ptr %i, align 4
  %add59 = add nsw i32 %51, %52
  %cmp60 = icmp eq i32 %add58, %add59
  br i1 %cmp60, label %if.then62, label %if.else64

if.then62:                                        ; preds = %land.lhs.true55
  %53 = load ptr, ptr %pOp, align 8
  %p363 = getelementptr inbounds nuw %struct.VdbeOp, ptr %53, i32 0, i32 5
  %54 = load i32, ptr %p363, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %p363, align 4
  br label %if.end68

if.else64:                                        ; preds = %land.lhs.true55, %land.lhs.true50, %land.lhs.true45, %if.then41
  %55 = load ptr, ptr %v, align 8
  %56 = load i8, ptr %copyOp, align 1
  %conv65 = zext i8 %56 to i32
  %57 = load i32, ptr %inReg, align 4
  %58 = load i32, ptr %target.addr, align 4
  %59 = load i32, ptr %i, align 4
  %add66 = add nsw i32 %58, %59
  %call67 = call i32 @sqlite3VdbeAddOp2(ptr noundef %55, i32 noundef %conv65, i32 noundef %57, i32 noundef %add66)
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.then62
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.else35
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then32
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end23
  br label %for.inc

for.inc:                                          ; preds = %if.end71
  %60 = load i32, ptr %i, align 4
  %inc72 = add nsw i32 %60, 1
  store i32 %inc72, ptr %i, align 4
  %61 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %61, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %62 = load i32, ptr %n, align 4
  ret i32 %62
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
