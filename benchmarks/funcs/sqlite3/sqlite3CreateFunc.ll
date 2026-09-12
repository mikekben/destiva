; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.FuncDestructor = type { i32, ptr, ptr }

@.str.1069 = external hidden unnamed_addr constant [63 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExpirePreparedStatements(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3CreateFunc(ptr noundef %db, ptr noundef %zFunctionName, i32 noundef %nArg, i32 noundef %enc, ptr noundef %pUserData, ptr noundef %xSFunc, ptr noundef %xStep, ptr noundef %xFinal, ptr noundef %xValue, ptr noundef %xInverse, ptr noundef %pDestructor) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zFunctionName.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %enc.addr = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %xSFunc.addr = alloca ptr, align 8
  %xStep.addr = alloca ptr, align 8
  %xFinal.addr = alloca ptr, align 8
  %xValue.addr = alloca ptr, align 8
  %xInverse.addr = alloca ptr, align 8
  %pDestructor.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nName = alloca i32, align 4
  %extraFlags = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zFunctionName, ptr %zFunctionName.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store i32 %enc, ptr %enc.addr, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %xSFunc, ptr %xSFunc.addr, align 8
  store ptr %xStep, ptr %xStep.addr, align 8
  store ptr %xFinal, ptr %xFinal.addr, align 8
  store ptr %xValue, ptr %xValue.addr, align 8
  store ptr %xInverse, ptr %xInverse.addr, align 8
  store ptr %pDestructor, ptr %pDestructor.addr, align 8
  %0 = load ptr, ptr %zFunctionName.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %xSFunc.addr, align 8
  %cmp1 = icmp ne ptr %1, null
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false3

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load ptr, ptr %xFinal.addr, align 8
  %cmp2 = icmp ne ptr %2, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load ptr, ptr %xFinal.addr, align 8
  %cmp4 = icmp eq ptr %3, null
  %conv = zext i1 %cmp4 to i32
  %4 = load ptr, ptr %xStep.addr, align 8
  %cmp5 = icmp eq ptr %4, null
  %conv6 = zext i1 %cmp5 to i32
  %cmp7 = icmp ne i32 %conv, %conv6
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %xValue.addr, align 8
  %cmp10 = icmp eq ptr %5, null
  %conv11 = zext i1 %cmp10 to i32
  %6 = load ptr, ptr %xInverse.addr, align 8
  %cmp12 = icmp eq ptr %6, null
  %conv13 = zext i1 %cmp12 to i32
  %cmp14 = icmp ne i32 %conv11, %conv13
  br i1 %cmp14, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false9
  %7 = load i32, ptr %nArg.addr, align 4
  %cmp17 = icmp slt i32 %7, -1
  br i1 %cmp17, label %if.then, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %8 = load i32, ptr %nArg.addr, align 4
  %cmp20 = icmp sgt i32 %8, 127
  br i1 %cmp20, label %if.then, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %9 = load ptr, ptr %zFunctionName.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %9)
  store i32 %call, ptr %nName, align 4
  %cmp23 = icmp slt i32 255, %call
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false22, %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false9, %lor.lhs.false3, %land.lhs.true, %entry
  %call25 = call i32 @sqlite3MisuseError(i32 noundef 157955)
  store i32 %call25, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false22
  %10 = load i32, ptr %enc.addr, align 4
  %and = and i32 %10, 1574912
  store i32 %and, ptr %extraFlags, align 4
  %11 = load i32, ptr %enc.addr, align 4
  %and26 = and i32 %11, 7
  store i32 %and26, ptr %enc.addr, align 4
  %12 = load i32, ptr %enc.addr, align 4
  %cmp27 = icmp eq i32 %12, 4
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end
  store i32 2, ptr %enc.addr, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end
  %13 = load i32, ptr %enc.addr, align 4
  %cmp30 = icmp eq i32 %13, 5
  br i1 %cmp30, label %if.then32, label %if.end44

if.then32:                                        ; preds = %if.else
  %14 = load ptr, ptr %db.addr, align 8
  %15 = load ptr, ptr %zFunctionName.addr, align 8
  %16 = load i32, ptr %nArg.addr, align 4
  %17 = load i32, ptr %extraFlags, align 4
  %or = or i32 1, %17
  %18 = load ptr, ptr %pUserData.addr, align 8
  %19 = load ptr, ptr %xSFunc.addr, align 8
  %20 = load ptr, ptr %xStep.addr, align 8
  %21 = load ptr, ptr %xFinal.addr, align 8
  %22 = load ptr, ptr %xValue.addr, align 8
  %23 = load ptr, ptr %xInverse.addr, align 8
  %24 = load ptr, ptr %pDestructor.addr, align 8
  %call33 = call i32 @sqlite3CreateFunc(ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %or, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24)
  store i32 %call33, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp34 = icmp eq i32 %25, 0
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %26 = load ptr, ptr %db.addr, align 8
  %27 = load ptr, ptr %zFunctionName.addr, align 8
  %28 = load i32, ptr %nArg.addr, align 4
  %29 = load i32, ptr %extraFlags, align 4
  %or37 = or i32 2, %29
  %30 = load ptr, ptr %pUserData.addr, align 8
  %31 = load ptr, ptr %xSFunc.addr, align 8
  %32 = load ptr, ptr %xStep.addr, align 8
  %33 = load ptr, ptr %xFinal.addr, align 8
  %34 = load ptr, ptr %xValue.addr, align 8
  %35 = load ptr, ptr %xInverse.addr, align 8
  %36 = load ptr, ptr %pDestructor.addr, align 8
  %call38 = call i32 @sqlite3CreateFunc(ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %or37, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36)
  store i32 %call38, ptr %rc, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  %37 = load i32, ptr %rc, align 4
  %cmp40 = icmp ne i32 %37, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  %38 = load i32, ptr %rc, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end39
  store i32 3, ptr %enc.addr, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then29
  %39 = load ptr, ptr %db.addr, align 8
  %40 = load ptr, ptr %zFunctionName.addr, align 8
  %41 = load i32, ptr %nArg.addr, align 4
  %42 = load i32, ptr %enc.addr, align 4
  %conv46 = trunc i32 %42 to i8
  %call47 = call ptr @sqlite3FindFunction(ptr noundef %39, ptr noundef %40, i32 noundef %41, i8 noundef zeroext %conv46, i8 noundef zeroext 0)
  store ptr %call47, ptr %p, align 8
  %43 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %43, null
  br i1 %tobool, label %land.lhs.true48, label %if.end62

land.lhs.true48:                                  ; preds = %if.end45
  %44 = load ptr, ptr %p, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %funcFlags, align 4
  %and49 = and i32 %45, 3
  %46 = load i32, ptr %enc.addr, align 4
  %cmp50 = icmp eq i32 %and49, %46
  br i1 %cmp50, label %land.lhs.true52, label %if.end62

land.lhs.true52:                                  ; preds = %land.lhs.true48
  %47 = load ptr, ptr %p, align 8
  %nArg53 = getelementptr inbounds nuw %struct.FuncDef, ptr %47, i32 0, i32 0
  %48 = load i8, ptr %nArg53, align 8
  %conv54 = sext i8 %48 to i32
  %49 = load i32, ptr %nArg.addr, align 4
  %cmp55 = icmp eq i32 %conv54, %49
  br i1 %cmp55, label %if.then57, label %if.end62

if.then57:                                        ; preds = %land.lhs.true52
  %50 = load ptr, ptr %db.addr, align 8
  %nVdbeActive = getelementptr inbounds nuw %struct.sqlite3, ptr %50, i32 0, i32 36
  %51 = load i32, ptr %nVdbeActive, align 8
  %tobool58 = icmp ne i32 %51, 0
  br i1 %tobool58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.then57
  %52 = load ptr, ptr %db.addr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %52, i32 noundef 5, ptr noundef @.str.1069)
  store i32 5, ptr %retval, align 4
  br label %return

if.else60:                                        ; preds = %if.then57
  %53 = load ptr, ptr %db.addr, align 8
  call void @sqlite3ExpirePreparedStatements(ptr noundef %53, i32 noundef 0)
  br label %if.end61

if.end61:                                         ; preds = %if.else60
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %land.lhs.true52, %land.lhs.true48, %if.end45
  %54 = load ptr, ptr %db.addr, align 8
  %55 = load ptr, ptr %zFunctionName.addr, align 8
  %56 = load i32, ptr %nArg.addr, align 4
  %57 = load i32, ptr %enc.addr, align 4
  %conv63 = trunc i32 %57 to i8
  %call64 = call ptr @sqlite3FindFunction(ptr noundef %54, ptr noundef %55, i32 noundef %56, i8 noundef zeroext %conv63, i8 noundef zeroext 1)
  store ptr %call64, ptr %p, align 8
  %58 = load ptr, ptr %p, align 8
  %tobool65 = icmp ne ptr %58, null
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end62
  store i32 7, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.end62
  %59 = load ptr, ptr %db.addr, align 8
  %60 = load ptr, ptr %p, align 8
  call void @functionDestroy(ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %pDestructor.addr, align 8
  %tobool68 = icmp ne ptr %61, null
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end67
  %62 = load ptr, ptr %pDestructor.addr, align 8
  %nRef = getelementptr inbounds nuw %struct.FuncDestructor, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %nRef, align 8
  %inc = add nsw i32 %63, 1
  store i32 %inc, ptr %nRef, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67
  %64 = load ptr, ptr %pDestructor.addr, align 8
  %65 = load ptr, ptr %p, align 8
  %u = getelementptr inbounds nuw %struct.FuncDef, ptr %65, i32 0, i32 9
  store ptr %64, ptr %u, align 8
  %66 = load ptr, ptr %p, align 8
  %funcFlags71 = getelementptr inbounds nuw %struct.FuncDef, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %funcFlags71, align 4
  %and72 = and i32 %67, 3
  %68 = load i32, ptr %extraFlags, align 4
  %or73 = or i32 %and72, %68
  %69 = load ptr, ptr %p, align 8
  %funcFlags74 = getelementptr inbounds nuw %struct.FuncDef, ptr %69, i32 0, i32 1
  store i32 %or73, ptr %funcFlags74, align 4
  %70 = load ptr, ptr %xSFunc.addr, align 8
  %tobool75 = icmp ne ptr %70, null
  br i1 %tobool75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end70
  %71 = load ptr, ptr %xSFunc.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end70
  %72 = load ptr, ptr %xStep.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %71, %cond.true ], [ %72, %cond.false ]
  %73 = load ptr, ptr %p, align 8
  %xSFunc76 = getelementptr inbounds nuw %struct.FuncDef, ptr %73, i32 0, i32 4
  store ptr %cond, ptr %xSFunc76, align 8
  %74 = load ptr, ptr %xFinal.addr, align 8
  %75 = load ptr, ptr %p, align 8
  %xFinalize = getelementptr inbounds nuw %struct.FuncDef, ptr %75, i32 0, i32 5
  store ptr %74, ptr %xFinalize, align 8
  %76 = load ptr, ptr %xValue.addr, align 8
  %77 = load ptr, ptr %p, align 8
  %xValue77 = getelementptr inbounds nuw %struct.FuncDef, ptr %77, i32 0, i32 6
  store ptr %76, ptr %xValue77, align 8
  %78 = load ptr, ptr %xInverse.addr, align 8
  %79 = load ptr, ptr %p, align 8
  %xInverse78 = getelementptr inbounds nuw %struct.FuncDef, ptr %79, i32 0, i32 7
  store ptr %78, ptr %xInverse78, align 8
  %80 = load ptr, ptr %pUserData.addr, align 8
  %81 = load ptr, ptr %p, align 8
  %pUserData79 = getelementptr inbounds nuw %struct.FuncDef, ptr %81, i32 0, i32 2
  store ptr %80, ptr %pUserData79, align 8
  %82 = load i32, ptr %nArg.addr, align 4
  %conv80 = trunc i32 %82 to i16
  %conv81 = trunc i16 %conv80 to i8
  %83 = load ptr, ptr %p, align 8
  %nArg82 = getelementptr inbounds nuw %struct.FuncDef, ptr %83, i32 0, i32 0
  store i8 %conv81, ptr %nArg82, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then66, %if.then59, %if.then42, %if.then
  %84 = load i32, ptr %retval, align 4
  ret i32 %84
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindFunction(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @functionDestroy(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
