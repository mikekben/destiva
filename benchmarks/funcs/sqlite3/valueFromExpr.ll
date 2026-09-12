; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.293 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.568 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemSetStr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemSetInt64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemSetNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueSetStr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeEncoding(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemCast(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueApplyAffinity(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemNumerify(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HexToBlob(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3AffinityType(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @valueFromExpr(ptr noundef %db, ptr noundef %pExpr, i8 noundef zeroext %enc, i8 noundef zeroext %affinity, ptr noundef %ppVal, ptr noundef %pCtx) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  %affinity.addr = alloca i8, align 1
  %ppVal.addr = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %op = alloca i32, align 4
  %zVal = alloca ptr, align 8
  %pVal = alloca ptr, align 8
  %negInt = alloca i32, align 4
  %zNeg = alloca ptr, align 8
  %rc = alloca i32, align 4
  %aff = alloca i8, align 1
  %nVal = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  store i8 %affinity, ptr %affinity.addr, align 1
  store ptr %ppVal, ptr %ppVal.addr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr null, ptr %zVal, align 8
  store ptr null, ptr %pVal, align 8
  store i32 1, ptr %negInt, align 4
  store ptr @.str.3, ptr %zNeg, align 8
  store i32 0, ptr %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op1 = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op1, align 8
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %op, align 4
  %cmp = icmp eq i32 %conv, 169
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load i32, ptr %op, align 4
  %cmp3 = icmp eq i32 %2, 176
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %3 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %4 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pLeft, align 8
  store ptr %5, ptr %pExpr.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %6 = load i32, ptr %op, align 4
  %cmp5 = icmp eq i32 %6, 171
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %7 = load ptr, ptr %pExpr.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 12
  %8 = load i8, ptr %op2, align 2
  %conv7 = zext i8 %8 to i32
  store i32 %conv7, ptr %op, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %9 = load i32, ptr %op, align 4
  %cmp8 = icmp eq i32 %9, 36
  br i1 %cmp8, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end
  %10 = load ptr, ptr %pExpr.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %u, align 8
  %call = call signext i8 @sqlite3AffinityType(ptr noundef %11, ptr noundef null)
  store i8 %call, ptr %aff, align 1
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %pExpr.addr, align 8
  %pLeft11 = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pLeft11, align 8
  %15 = load i8, ptr %enc.addr, align 1
  %16 = load i8, ptr %aff, align 1
  %17 = load ptr, ptr %ppVal.addr, align 8
  %18 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @valueFromExpr(ptr noundef %12, ptr noundef %14, i8 noundef zeroext %15, i8 noundef zeroext %16, ptr noundef %17, ptr noundef %18)
  store i32 %call12, ptr %rc, align 4
  %19 = load ptr, ptr %ppVal.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  %21 = load ptr, ptr %ppVal.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load i8, ptr %aff, align 1
  call void @sqlite3VdbeMemCast(ptr noundef %22, i8 noundef zeroext %23, i8 noundef zeroext 1)
  %24 = load ptr, ptr %ppVal.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load i8, ptr %affinity.addr, align 1
  call void @sqlite3ValueApplyAffinity(ptr noundef %25, i8 noundef zeroext %26, i8 noundef zeroext 1)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then10
  %27 = load i32, ptr %rc, align 4
  store i32 %27, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  %28 = load i32, ptr %op, align 4
  %cmp16 = icmp eq i32 %28, 168
  br i1 %cmp16, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end15
  %29 = load ptr, ptr %pExpr.addr, align 8
  %pLeft18 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %pLeft18, align 8
  %op19 = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 0
  %31 = load i8, ptr %op19, align 8
  %conv20 = zext i8 %31 to i32
  %cmp21 = icmp eq i32 %conv20, 150
  br i1 %cmp21, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %32 = load ptr, ptr %pExpr.addr, align 8
  %pLeft23 = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %pLeft23, align 8
  %op24 = getelementptr inbounds nuw %struct.Expr, ptr %33, i32 0, i32 0
  %34 = load i8, ptr %op24, align 8
  %conv25 = zext i8 %34 to i32
  %cmp26 = icmp eq i32 %conv25, 148
  br i1 %cmp26, label %if.then28, label %if.end32

if.then28:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %35 = load ptr, ptr %pExpr.addr, align 8
  %pLeft29 = getelementptr inbounds nuw %struct.Expr, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %pLeft29, align 8
  store ptr %36, ptr %pExpr.addr, align 8
  %37 = load ptr, ptr %pExpr.addr, align 8
  %op30 = getelementptr inbounds nuw %struct.Expr, ptr %37, i32 0, i32 0
  %38 = load i8, ptr %op30, align 8
  %conv31 = zext i8 %38 to i32
  store i32 %conv31, ptr %op, align 4
  store i32 -1, ptr %negInt, align 4
  store ptr @.str.293, ptr %zNeg, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %lor.lhs.false, %if.end15
  %39 = load i32, ptr %op, align 4
  %cmp33 = icmp eq i32 %39, 113
  br i1 %cmp33, label %if.then41, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end32
  %40 = load i32, ptr %op, align 4
  %cmp36 = icmp eq i32 %40, 148
  br i1 %cmp36, label %if.then41, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %41 = load i32, ptr %op, align 4
  %cmp39 = icmp eq i32 %41, 150
  br i1 %cmp39, label %if.then41, label %if.else89

if.then41:                                        ; preds = %lor.lhs.false38, %lor.lhs.false35, %if.end32
  %42 = load ptr, ptr %db.addr, align 8
  %43 = load ptr, ptr %pCtx.addr, align 8
  %call42 = call ptr @valueNew(ptr noundef %42, ptr noundef %43)
  store ptr %call42, ptr %pVal, align 8
  %44 = load ptr, ptr %pVal, align 8
  %cmp43 = icmp eq ptr %44, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then41
  br label %no_mem

if.end46:                                         ; preds = %if.then41
  %45 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %flags, align 4
  %and = and i32 %46, 1024
  %cmp47 = icmp ne i32 %and, 0
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end46
  %47 = load ptr, ptr %pVal, align 8
  %48 = load ptr, ptr %pExpr.addr, align 8
  %u50 = getelementptr inbounds nuw %struct.Expr, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %u50, align 8
  %conv51 = sext i32 %49 to i64
  %50 = load i32, ptr %negInt, align 4
  %conv52 = sext i32 %50 to i64
  %mul = mul nsw i64 %conv51, %conv52
  call void @sqlite3VdbeMemSetInt64(ptr noundef %47, i64 noundef %mul)
  br label %if.end59

if.else:                                          ; preds = %if.end46
  %51 = load ptr, ptr %db.addr, align 8
  %52 = load ptr, ptr %zNeg, align 8
  %53 = load ptr, ptr %pExpr.addr, align 8
  %u53 = getelementptr inbounds nuw %struct.Expr, ptr %53, i32 0, i32 3
  %54 = load ptr, ptr %u53, align 8
  %call54 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %51, ptr noundef @.str.568, ptr noundef %52, ptr noundef %54)
  store ptr %call54, ptr %zVal, align 8
  %55 = load ptr, ptr %zVal, align 8
  %cmp55 = icmp eq ptr %55, null
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.else
  br label %no_mem

if.end58:                                         ; preds = %if.else
  %56 = load ptr, ptr %pVal, align 8
  %57 = load ptr, ptr %zVal, align 8
  call void @sqlite3ValueSetStr(ptr noundef %56, i32 noundef -1, ptr noundef %57, i8 noundef zeroext 1, ptr noundef @sqlite3MallocSize)
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then49
  %58 = load i32, ptr %op, align 4
  %cmp60 = icmp eq i32 %58, 150
  br i1 %cmp60, label %land.lhs.true65, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.end59
  %59 = load i32, ptr %op, align 4
  %cmp63 = icmp eq i32 %59, 148
  br i1 %cmp63, label %land.lhs.true65, label %if.else70

land.lhs.true65:                                  ; preds = %lor.lhs.false62, %if.end59
  %60 = load i8, ptr %affinity.addr, align 1
  %conv66 = zext i8 %60 to i32
  %cmp67 = icmp eq i32 %conv66, 65
  br i1 %cmp67, label %if.then69, label %if.else70

if.then69:                                        ; preds = %land.lhs.true65
  %61 = load ptr, ptr %pVal, align 8
  call void @sqlite3ValueApplyAffinity(ptr noundef %61, i8 noundef zeroext 67, i8 noundef zeroext 1)
  br label %if.end71

if.else70:                                        ; preds = %land.lhs.true65, %lor.lhs.false62
  %62 = load ptr, ptr %pVal, align 8
  %63 = load i8, ptr %affinity.addr, align 1
  call void @sqlite3ValueApplyAffinity(ptr noundef %62, i8 noundef zeroext %63, i8 noundef zeroext 1)
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then69
  %64 = load ptr, ptr %pVal, align 8
  %flags72 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %64, i32 0, i32 1
  %65 = load i16, ptr %flags72, align 8
  %conv73 = zext i16 %65 to i32
  %and74 = and i32 %conv73, 44
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.end71
  %66 = load ptr, ptr %pVal, align 8
  %flags77 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %66, i32 0, i32 1
  %67 = load i16, ptr %flags77, align 8
  %conv78 = zext i16 %67 to i32
  %and79 = and i32 %conv78, -3
  %conv80 = trunc i32 %and79 to i16
  store i16 %conv80, ptr %flags77, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end71
  %68 = load i8, ptr %enc.addr, align 1
  %conv82 = zext i8 %68 to i32
  %cmp83 = icmp ne i32 %conv82, 1
  br i1 %cmp83, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end81
  %69 = load ptr, ptr %pVal, align 8
  %70 = load i8, ptr %enc.addr, align 1
  %conv86 = zext i8 %70 to i32
  %call87 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %69, i32 noundef %conv86)
  store i32 %call87, ptr %rc, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end81
  br label %if.end168

if.else89:                                        ; preds = %lor.lhs.false38
  %71 = load i32, ptr %op, align 4
  %cmp90 = icmp eq i32 %71, 168
  br i1 %cmp90, label %if.then92, label %if.else126

if.then92:                                        ; preds = %if.else89
  %72 = load ptr, ptr %db.addr, align 8
  %73 = load ptr, ptr %pExpr.addr, align 8
  %pLeft93 = getelementptr inbounds nuw %struct.Expr, ptr %73, i32 0, i32 4
  %74 = load ptr, ptr %pLeft93, align 8
  %75 = load i8, ptr %enc.addr, align 1
  %76 = load i8, ptr %affinity.addr, align 1
  %77 = load ptr, ptr %pCtx.addr, align 8
  %call94 = call i32 @valueFromExpr(ptr noundef %72, ptr noundef %74, i8 noundef zeroext %75, i8 noundef zeroext %76, ptr noundef %pVal, ptr noundef %77)
  %cmp95 = icmp eq i32 0, %call94
  br i1 %cmp95, label %land.lhs.true97, label %if.end125

land.lhs.true97:                                  ; preds = %if.then92
  %78 = load ptr, ptr %pVal, align 8
  %cmp98 = icmp ne ptr %78, null
  br i1 %cmp98, label %if.then100, label %if.end125

if.then100:                                       ; preds = %land.lhs.true97
  %79 = load ptr, ptr %pVal, align 8
  %call101 = call i32 @sqlite3VdbeMemNumerify(ptr noundef %79)
  %80 = load ptr, ptr %pVal, align 8
  %flags102 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %80, i32 0, i32 1
  %81 = load i16, ptr %flags102, align 8
  %conv103 = zext i16 %81 to i32
  %and104 = and i32 %conv103, 8
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.then100
  %82 = load ptr, ptr %pVal, align 8
  %u107 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %82, i32 0, i32 0
  %83 = load double, ptr %u107, align 8
  %fneg = fneg double %83
  %84 = load ptr, ptr %pVal, align 8
  %u108 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %84, i32 0, i32 0
  store double %fneg, ptr %u108, align 8
  br label %if.end124

if.else109:                                       ; preds = %if.then100
  %85 = load ptr, ptr %pVal, align 8
  %u110 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %85, i32 0, i32 0
  %86 = load i64, ptr %u110, align 8
  %cmp111 = icmp eq i64 %86, -9223372036854775808
  br i1 %cmp111, label %if.then113, label %if.else120

if.then113:                                       ; preds = %if.else109
  %87 = load ptr, ptr %pVal, align 8
  %u114 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %87, i32 0, i32 0
  store double 0x43E0000000000000, ptr %u114, align 8
  %88 = load ptr, ptr %pVal, align 8
  %flags115 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %88, i32 0, i32 1
  %89 = load i16, ptr %flags115, align 8
  %conv116 = zext i16 %89 to i32
  %and117 = and i32 %conv116, -49600
  %or = or i32 %and117, 8
  %conv118 = trunc i32 %or to i16
  %90 = load ptr, ptr %pVal, align 8
  %flags119 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %90, i32 0, i32 1
  store i16 %conv118, ptr %flags119, align 8
  br label %if.end123

if.else120:                                       ; preds = %if.else109
  %91 = load ptr, ptr %pVal, align 8
  %u121 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %91, i32 0, i32 0
  %92 = load i64, ptr %u121, align 8
  %sub = sub nsw i64 0, %92
  %93 = load ptr, ptr %pVal, align 8
  %u122 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %93, i32 0, i32 0
  store i64 %sub, ptr %u122, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.else120, %if.then113
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then106
  %94 = load ptr, ptr %pVal, align 8
  %95 = load i8, ptr %affinity.addr, align 1
  %96 = load i8, ptr %enc.addr, align 1
  call void @sqlite3ValueApplyAffinity(ptr noundef %94, i8 noundef zeroext %95, i8 noundef zeroext %96)
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %land.lhs.true97, %if.then92
  br label %if.end167

if.else126:                                       ; preds = %if.else89
  %97 = load i32, ptr %op, align 4
  %cmp127 = icmp eq i32 %97, 117
  br i1 %cmp127, label %if.then129, label %if.else135

if.then129:                                       ; preds = %if.else126
  %98 = load ptr, ptr %db.addr, align 8
  %99 = load ptr, ptr %pCtx.addr, align 8
  %call130 = call ptr @valueNew(ptr noundef %98, ptr noundef %99)
  store ptr %call130, ptr %pVal, align 8
  %100 = load ptr, ptr %pVal, align 8
  %cmp131 = icmp eq ptr %100, null
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.then129
  br label %no_mem

if.end134:                                        ; preds = %if.then129
  %101 = load ptr, ptr %pVal, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %101)
  br label %if.end166

if.else135:                                       ; preds = %if.else126
  %102 = load i32, ptr %op, align 4
  %cmp136 = icmp eq i32 %102, 149
  br i1 %cmp136, label %if.then138, label %if.else148

if.then138:                                       ; preds = %if.else135
  %103 = load ptr, ptr %db.addr, align 8
  %104 = load ptr, ptr %pCtx.addr, align 8
  %call139 = call ptr @valueNew(ptr noundef %103, ptr noundef %104)
  store ptr %call139, ptr %pVal, align 8
  %105 = load ptr, ptr %pVal, align 8
  %tobool140 = icmp ne ptr %105, null
  br i1 %tobool140, label %if.end142, label %if.then141

if.then141:                                       ; preds = %if.then138
  br label %no_mem

if.end142:                                        ; preds = %if.then138
  %106 = load ptr, ptr %pExpr.addr, align 8
  %u143 = getelementptr inbounds nuw %struct.Expr, ptr %106, i32 0, i32 3
  %107 = load ptr, ptr %u143, align 8
  %arrayidx = getelementptr inbounds i8, ptr %107, i64 2
  store ptr %arrayidx, ptr %zVal, align 8
  %108 = load ptr, ptr %zVal, align 8
  %call144 = call i32 @sqlite3Strlen30(ptr noundef %108)
  %sub145 = sub nsw i32 %call144, 1
  store i32 %sub145, ptr %nVal, align 4
  %109 = load ptr, ptr %pVal, align 8
  %110 = load ptr, ptr %db.addr, align 8
  %111 = load ptr, ptr %zVal, align 8
  %112 = load i32, ptr %nVal, align 4
  %call146 = call ptr @sqlite3HexToBlob(ptr noundef %110, ptr noundef %111, i32 noundef %112)
  %113 = load i32, ptr %nVal, align 4
  %div = sdiv i32 %113, 2
  %call147 = call i32 @sqlite3VdbeMemSetStr(ptr noundef %109, ptr noundef %call146, i32 noundef %div, i8 noundef zeroext 0, ptr noundef @sqlite3MallocSize)
  br label %if.end165

if.else148:                                       ; preds = %if.else135
  %114 = load i32, ptr %op, align 4
  %cmp149 = icmp eq i32 %114, 165
  br i1 %cmp149, label %if.then151, label %if.end164

if.then151:                                       ; preds = %if.else148
  %115 = load ptr, ptr %db.addr, align 8
  %116 = load ptr, ptr %pCtx.addr, align 8
  %call152 = call ptr @valueNew(ptr noundef %115, ptr noundef %116)
  store ptr %call152, ptr %pVal, align 8
  %117 = load ptr, ptr %pVal, align 8
  %tobool153 = icmp ne ptr %117, null
  br i1 %tobool153, label %if.then154, label %if.end163

if.then154:                                       ; preds = %if.then151
  %118 = load ptr, ptr %pVal, align 8
  %flags155 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %118, i32 0, i32 1
  store i16 4, ptr %flags155, align 8
  %119 = load ptr, ptr %pExpr.addr, align 8
  %u156 = getelementptr inbounds nuw %struct.Expr, ptr %119, i32 0, i32 3
  %120 = load ptr, ptr %u156, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %120, i64 4
  %121 = load i8, ptr %arrayidx157, align 1
  %conv158 = sext i8 %121 to i32
  %cmp159 = icmp eq i32 %conv158, 0
  %conv160 = zext i1 %cmp159 to i32
  %conv161 = sext i32 %conv160 to i64
  %122 = load ptr, ptr %pVal, align 8
  %u162 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %122, i32 0, i32 0
  store i64 %conv161, ptr %u162, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then154, %if.then151
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.else148
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end142
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.end134
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.end125
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.end88
  %123 = load ptr, ptr %pVal, align 8
  %124 = load ptr, ptr %ppVal.addr, align 8
  store ptr %123, ptr %124, align 8
  %125 = load i32, ptr %rc, align 4
  store i32 %125, ptr %retval, align 4
  br label %return

no_mem:                                           ; preds = %if.then141, %if.then133, %if.then57, %if.then45
  %126 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %126)
  %127 = load ptr, ptr %db.addr, align 8
  %128 = load ptr, ptr %zVal, align 8
  call void @sqlite3DbFree(ptr noundef %127, ptr noundef %128)
  %129 = load ptr, ptr %pVal, align 8
  call void @sqlite3ValueFree(ptr noundef %129)
  store i32 7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %no_mem, %if.end168, %if.end14
  %130 = load i32, ptr %retval, align 4
  ret i32 %130
}

; Function Attrs: nounwind uwtable
declare hidden ptr @valueNew(ptr noundef, ptr noundef) #0

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
