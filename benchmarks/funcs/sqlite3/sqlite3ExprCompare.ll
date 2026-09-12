; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprCompare(ptr noundef %pParse, ptr noundef %pA, ptr noundef %pB, i32 noundef %iTab) #1 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %iTab.addr = alloca i32, align 4
  %combinedFlags = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  %0 = load ptr, ptr %pA.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pB.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %pB.addr, align 8
  %3 = load ptr, ptr %pA.addr, align 8
  %cmp2 = icmp eq ptr %2, %3
  %4 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 0, i32 2
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %pParse.addr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %pA.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op, align 8
  %conv = zext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 151
  br i1 %cmp3, label %land.lhs.true5, label %if.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %pA.addr, align 8
  %10 = load ptr, ptr %pB.addr, align 8
  %call = call i32 @exprCompareVariable(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true5
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %11 = load ptr, ptr %pA.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %flags, align 4
  %13 = load ptr, ptr %pB.addr, align 8
  %flags9 = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %flags9, align 4
  %or = or i32 %12, %14
  store i32 %or, ptr %combinedFlags, align 4
  %15 = load i32, ptr %combinedFlags, align 4
  %and = and i32 %15, 1024
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then11, label %if.end24

if.then11:                                        ; preds = %if.end8
  %16 = load ptr, ptr %pA.addr, align 8
  %flags12 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %flags12, align 4
  %18 = load ptr, ptr %pB.addr, align 8
  %flags13 = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %flags13, align 4
  %and14 = and i32 %17, %19
  %and15 = and i32 %and14, 1024
  %cmp16 = icmp ne i32 %and15, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end23

land.lhs.true18:                                  ; preds = %if.then11
  %20 = load ptr, ptr %pA.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %u, align 8
  %22 = load ptr, ptr %pB.addr, align 8
  %u19 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %u19, align 8
  %cmp20 = icmp eq i32 %21, %23
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true18
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %land.lhs.true18, %if.then11
  store i32 2, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end8
  %24 = load ptr, ptr %pA.addr, align 8
  %op25 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 0
  %25 = load i8, ptr %op25, align 8
  %conv26 = zext i8 %25 to i32
  %26 = load ptr, ptr %pB.addr, align 8
  %op27 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 0
  %27 = load i8, ptr %op27, align 8
  %conv28 = zext i8 %27 to i32
  %cmp29 = icmp ne i32 %conv26, %conv28
  br i1 %cmp29, label %if.then36, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end24
  %28 = load ptr, ptr %pA.addr, align 8
  %op32 = getelementptr inbounds nuw %struct.Expr, ptr %28, i32 0, i32 0
  %29 = load i8, ptr %op32, align 8
  %conv33 = zext i8 %29 to i32
  %cmp34 = icmp eq i32 %conv33, 71
  br i1 %cmp34, label %if.then36, label %if.end58

if.then36:                                        ; preds = %lor.lhs.false31, %if.end24
  %30 = load ptr, ptr %pA.addr, align 8
  %op37 = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 0
  %31 = load i8, ptr %op37, align 8
  %conv38 = zext i8 %31 to i32
  %cmp39 = icmp eq i32 %conv38, 109
  br i1 %cmp39, label %land.lhs.true41, label %if.end46

land.lhs.true41:                                  ; preds = %if.then36
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %pA.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %pLeft, align 8
  %35 = load ptr, ptr %pB.addr, align 8
  %36 = load i32, ptr %iTab.addr, align 4
  %call42 = call i32 @sqlite3ExprCompare(ptr noundef %32, ptr noundef %34, ptr noundef %35, i32 noundef %36)
  %cmp43 = icmp slt i32 %call42, 2
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %land.lhs.true41
  store i32 1, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %land.lhs.true41, %if.then36
  %37 = load ptr, ptr %pB.addr, align 8
  %op47 = getelementptr inbounds nuw %struct.Expr, ptr %37, i32 0, i32 0
  %38 = load i8, ptr %op47, align 8
  %conv48 = zext i8 %38 to i32
  %cmp49 = icmp eq i32 %conv48, 109
  br i1 %cmp49, label %land.lhs.true51, label %if.end57

land.lhs.true51:                                  ; preds = %if.end46
  %39 = load ptr, ptr %pParse.addr, align 8
  %40 = load ptr, ptr %pA.addr, align 8
  %41 = load ptr, ptr %pB.addr, align 8
  %pLeft52 = getelementptr inbounds nuw %struct.Expr, ptr %41, i32 0, i32 4
  %42 = load ptr, ptr %pLeft52, align 8
  %43 = load i32, ptr %iTab.addr, align 4
  %call53 = call i32 @sqlite3ExprCompare(ptr noundef %39, ptr noundef %40, ptr noundef %42, i32 noundef %43)
  %cmp54 = icmp slt i32 %call53, 2
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true51
  store i32 1, ptr %retval, align 4
  br label %return

if.end57:                                         ; preds = %land.lhs.true51, %if.end46
  store i32 2, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %lor.lhs.false31
  %44 = load ptr, ptr %pA.addr, align 8
  %op59 = getelementptr inbounds nuw %struct.Expr, ptr %44, i32 0, i32 0
  %45 = load i8, ptr %op59, align 8
  %conv60 = zext i8 %45 to i32
  %cmp61 = icmp ne i32 %conv60, 162
  br i1 %cmp61, label %land.lhs.true63, label %if.end146

land.lhs.true63:                                  ; preds = %if.end58
  %46 = load ptr, ptr %pA.addr, align 8
  %op64 = getelementptr inbounds nuw %struct.Expr, ptr %46, i32 0, i32 0
  %47 = load i8, ptr %op64, align 8
  %conv65 = zext i8 %47 to i32
  %cmp66 = icmp ne i32 %conv65, 164
  br i1 %cmp66, label %land.lhs.true68, label %if.end146

land.lhs.true68:                                  ; preds = %land.lhs.true63
  %48 = load ptr, ptr %pA.addr, align 8
  %u69 = getelementptr inbounds nuw %struct.Expr, ptr %48, i32 0, i32 3
  %49 = load ptr, ptr %u69, align 8
  %tobool70 = icmp ne ptr %49, null
  br i1 %tobool70, label %if.then71, label %if.end146

if.then71:                                        ; preds = %land.lhs.true68
  %50 = load ptr, ptr %pA.addr, align 8
  %op72 = getelementptr inbounds nuw %struct.Expr, ptr %50, i32 0, i32 0
  %51 = load i8, ptr %op72, align 8
  %conv73 = zext i8 %51 to i32
  %cmp74 = icmp eq i32 %conv73, 167
  br i1 %cmp74, label %if.then81, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.then71
  %52 = load ptr, ptr %pA.addr, align 8
  %op77 = getelementptr inbounds nuw %struct.Expr, ptr %52, i32 0, i32 0
  %53 = load i8, ptr %op77, align 8
  %conv78 = zext i8 %53 to i32
  %cmp79 = icmp eq i32 %conv78, 163
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %lor.lhs.false76, %if.then71
  %54 = load ptr, ptr %pA.addr, align 8
  %u82 = getelementptr inbounds nuw %struct.Expr, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %u82, align 8
  %56 = load ptr, ptr %pB.addr, align 8
  %u83 = getelementptr inbounds nuw %struct.Expr, ptr %56, i32 0, i32 3
  %57 = load ptr, ptr %u83, align 8
  %call84 = call i32 @sqlite3StrICmp(ptr noundef %55, ptr noundef %57)
  %cmp85 = icmp ne i32 %call84, 0
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then81
  store i32 2, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.then81
  %58 = load ptr, ptr %pA.addr, align 8
  %flags89 = getelementptr inbounds nuw %struct.Expr, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %flags89, align 4
  %and90 = and i32 %59, 16777216
  %cmp91 = icmp ne i32 %and90, 0
  %conv92 = zext i1 %cmp91 to i32
  %60 = load ptr, ptr %pB.addr, align 8
  %flags93 = getelementptr inbounds nuw %struct.Expr, ptr %60, i32 0, i32 2
  %61 = load i32, ptr %flags93, align 4
  %and94 = and i32 %61, 16777216
  %cmp95 = icmp ne i32 %and94, 0
  %conv96 = zext i1 %cmp95 to i32
  %cmp97 = icmp ne i32 %conv92, %conv96
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end88
  store i32 2, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end88
  %62 = load ptr, ptr %pA.addr, align 8
  %flags101 = getelementptr inbounds nuw %struct.Expr, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %flags101, align 4
  %and102 = and i32 %63, 16777216
  %cmp103 = icmp ne i32 %and102, 0
  br i1 %cmp103, label %if.then105, label %if.end112

if.then105:                                       ; preds = %if.end100
  %64 = load ptr, ptr %pParse.addr, align 8
  %65 = load ptr, ptr %pA.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %65, i32 0, i32 14
  %66 = load ptr, ptr %y, align 8
  %67 = load ptr, ptr %pB.addr, align 8
  %y106 = getelementptr inbounds nuw %struct.Expr, ptr %67, i32 0, i32 14
  %68 = load ptr, ptr %y106, align 8
  %call107 = call i32 @sqlite3WindowCompare(ptr noundef %64, ptr noundef %66, ptr noundef %68, i32 noundef 1)
  %cmp108 = icmp ne i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.then105
  store i32 2, ptr %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.then105
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end100
  br label %if.end145

if.else:                                          ; preds = %lor.lhs.false76
  %69 = load ptr, ptr %pA.addr, align 8
  %op113 = getelementptr inbounds nuw %struct.Expr, ptr %69, i32 0, i32 0
  %70 = load i8, ptr %op113, align 8
  %conv114 = zext i8 %70 to i32
  %cmp115 = icmp eq i32 %conv114, 117
  br i1 %cmp115, label %if.then117, label %if.else118

if.then117:                                       ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.else118:                                       ; preds = %if.else
  %71 = load ptr, ptr %pA.addr, align 8
  %op119 = getelementptr inbounds nuw %struct.Expr, ptr %71, i32 0, i32 0
  %72 = load i8, ptr %op119, align 8
  %conv120 = zext i8 %72 to i32
  %cmp121 = icmp eq i32 %conv120, 109
  br i1 %cmp121, label %if.then123, label %if.else131

if.then123:                                       ; preds = %if.else118
  %73 = load ptr, ptr %pA.addr, align 8
  %u124 = getelementptr inbounds nuw %struct.Expr, ptr %73, i32 0, i32 3
  %74 = load ptr, ptr %u124, align 8
  %75 = load ptr, ptr %pB.addr, align 8
  %u125 = getelementptr inbounds nuw %struct.Expr, ptr %75, i32 0, i32 3
  %76 = load ptr, ptr %u125, align 8
  %call126 = call i32 @sqlite3_stricmp(ptr noundef %74, ptr noundef %76)
  %cmp127 = icmp ne i32 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.then123
  store i32 2, ptr %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.then123
  br label %if.end143

if.else131:                                       ; preds = %if.else118
  %77 = load ptr, ptr %pB.addr, align 8
  %u132 = getelementptr inbounds nuw %struct.Expr, ptr %77, i32 0, i32 3
  %78 = load ptr, ptr %u132, align 8
  %cmp133 = icmp ne ptr %78, null
  br i1 %cmp133, label %land.lhs.true135, label %if.end142

land.lhs.true135:                                 ; preds = %if.else131
  %79 = load ptr, ptr %pA.addr, align 8
  %u136 = getelementptr inbounds nuw %struct.Expr, ptr %79, i32 0, i32 3
  %80 = load ptr, ptr %u136, align 8
  %81 = load ptr, ptr %pB.addr, align 8
  %u137 = getelementptr inbounds nuw %struct.Expr, ptr %81, i32 0, i32 3
  %82 = load ptr, ptr %u137, align 8
  %call138 = call i32 @strcmp(ptr noundef %80, ptr noundef %82) #2
  %cmp139 = icmp ne i32 %call138, 0
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %land.lhs.true135
  store i32 2, ptr %retval, align 4
  br label %return

if.end142:                                        ; preds = %land.lhs.true135, %if.else131
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end130
  br label %if.end144

if.end144:                                        ; preds = %if.end143
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end112
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %land.lhs.true68, %land.lhs.true63, %if.end58
  %83 = load ptr, ptr %pA.addr, align 8
  %flags147 = getelementptr inbounds nuw %struct.Expr, ptr %83, i32 0, i32 2
  %84 = load i32, ptr %flags147, align 4
  %and148 = and i32 %84, 2
  %85 = load ptr, ptr %pB.addr, align 8
  %flags149 = getelementptr inbounds nuw %struct.Expr, ptr %85, i32 0, i32 2
  %86 = load i32, ptr %flags149, align 4
  %and150 = and i32 %86, 2
  %cmp151 = icmp ne i32 %and148, %and150
  br i1 %cmp151, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.end146
  store i32 2, ptr %retval, align 4
  br label %return

if.end154:                                        ; preds = %if.end146
  %87 = load i32, ptr %combinedFlags, align 4
  %and155 = and i32 %87, 16384
  %cmp156 = icmp eq i32 %and155, 0
  br i1 %cmp156, label %if.then158, label %if.end230

if.then158:                                       ; preds = %if.end154
  %88 = load i32, ptr %combinedFlags, align 4
  %and159 = and i32 %88, 2048
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.then158
  store i32 2, ptr %retval, align 4
  br label %return

if.end162:                                        ; preds = %if.then158
  %89 = load i32, ptr %combinedFlags, align 4
  %and163 = and i32 %89, 8
  %cmp164 = icmp eq i32 %and163, 0
  br i1 %cmp164, label %land.lhs.true166, label %if.end172

land.lhs.true166:                                 ; preds = %if.end162
  %90 = load ptr, ptr %pParse.addr, align 8
  %91 = load ptr, ptr %pA.addr, align 8
  %pLeft167 = getelementptr inbounds nuw %struct.Expr, ptr %91, i32 0, i32 4
  %92 = load ptr, ptr %pLeft167, align 8
  %93 = load ptr, ptr %pB.addr, align 8
  %pLeft168 = getelementptr inbounds nuw %struct.Expr, ptr %93, i32 0, i32 4
  %94 = load ptr, ptr %pLeft168, align 8
  %95 = load i32, ptr %iTab.addr, align 4
  %call169 = call i32 @sqlite3ExprCompare(ptr noundef %90, ptr noundef %92, ptr noundef %94, i32 noundef %95)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %land.lhs.true166
  store i32 2, ptr %retval, align 4
  br label %return

if.end172:                                        ; preds = %land.lhs.true166, %if.end162
  %96 = load ptr, ptr %pParse.addr, align 8
  %97 = load ptr, ptr %pA.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %97, i32 0, i32 5
  %98 = load ptr, ptr %pRight, align 8
  %99 = load ptr, ptr %pB.addr, align 8
  %pRight173 = getelementptr inbounds nuw %struct.Expr, ptr %99, i32 0, i32 5
  %100 = load ptr, ptr %pRight173, align 8
  %101 = load i32, ptr %iTab.addr, align 4
  %call174 = call i32 @sqlite3ExprCompare(ptr noundef %96, ptr noundef %98, ptr noundef %100, i32 noundef %101)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end172
  store i32 2, ptr %retval, align 4
  br label %return

if.end177:                                        ; preds = %if.end172
  %102 = load ptr, ptr %pA.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %102, i32 0, i32 6
  %103 = load ptr, ptr %x, align 8
  %104 = load ptr, ptr %pB.addr, align 8
  %x178 = getelementptr inbounds nuw %struct.Expr, ptr %104, i32 0, i32 6
  %105 = load ptr, ptr %x178, align 8
  %106 = load i32, ptr %iTab.addr, align 4
  %call179 = call i32 @sqlite3ExprListCompare(ptr noundef %103, ptr noundef %105, i32 noundef %106)
  %tobool180 = icmp ne i32 %call179, 0
  br i1 %tobool180, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end177
  store i32 2, ptr %retval, align 4
  br label %return

if.end182:                                        ; preds = %if.end177
  %107 = load ptr, ptr %pA.addr, align 8
  %op183 = getelementptr inbounds nuw %struct.Expr, ptr %107, i32 0, i32 0
  %108 = load i8, ptr %op183, align 8
  %conv184 = zext i8 %108 to i32
  %cmp185 = icmp ne i32 %conv184, 113
  br i1 %cmp185, label %land.lhs.true187, label %if.end229

land.lhs.true187:                                 ; preds = %if.end182
  %109 = load ptr, ptr %pA.addr, align 8
  %op188 = getelementptr inbounds nuw %struct.Expr, ptr %109, i32 0, i32 0
  %110 = load i8, ptr %op188, align 8
  %conv189 = zext i8 %110 to i32
  %cmp190 = icmp ne i32 %conv189, 165
  br i1 %cmp190, label %land.lhs.true192, label %if.end229

land.lhs.true192:                                 ; preds = %land.lhs.true187
  %111 = load i32, ptr %combinedFlags, align 4
  %and193 = and i32 %111, 8192
  %cmp194 = icmp eq i32 %and193, 0
  br i1 %cmp194, label %if.then196, label %if.end229

if.then196:                                       ; preds = %land.lhs.true192
  %112 = load ptr, ptr %pA.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %112, i32 0, i32 9
  %113 = load i16, ptr %iColumn, align 8
  %conv197 = sext i16 %113 to i32
  %114 = load ptr, ptr %pB.addr, align 8
  %iColumn198 = getelementptr inbounds nuw %struct.Expr, ptr %114, i32 0, i32 9
  %115 = load i16, ptr %iColumn198, align 8
  %conv199 = sext i16 %115 to i32
  %cmp200 = icmp ne i32 %conv197, %conv199
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.then196
  store i32 2, ptr %retval, align 4
  br label %return

if.end203:                                        ; preds = %if.then196
  %116 = load ptr, ptr %pA.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %116, i32 0, i32 12
  %117 = load i8, ptr %op2, align 2
  %conv204 = zext i8 %117 to i32
  %118 = load ptr, ptr %pB.addr, align 8
  %op2205 = getelementptr inbounds nuw %struct.Expr, ptr %118, i32 0, i32 12
  %119 = load i8, ptr %op2205, align 2
  %conv206 = zext i8 %119 to i32
  %cmp207 = icmp ne i32 %conv204, %conv206
  br i1 %cmp207, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.end203
  store i32 2, ptr %retval, align 4
  br label %return

if.end210:                                        ; preds = %if.end203
  %120 = load ptr, ptr %pA.addr, align 8
  %op211 = getelementptr inbounds nuw %struct.Expr, ptr %120, i32 0, i32 0
  %121 = load i8, ptr %op211, align 8
  %conv212 = zext i8 %121 to i32
  %cmp213 = icmp ne i32 %conv212, 49
  br i1 %cmp213, label %land.lhs.true215, label %if.end228

land.lhs.true215:                                 ; preds = %if.end210
  %122 = load ptr, ptr %pA.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %122, i32 0, i32 8
  %123 = load i32, ptr %iTable, align 4
  %124 = load ptr, ptr %pB.addr, align 8
  %iTable216 = getelementptr inbounds nuw %struct.Expr, ptr %124, i32 0, i32 8
  %125 = load i32, ptr %iTable216, align 4
  %cmp217 = icmp ne i32 %123, %125
  br i1 %cmp217, label %land.lhs.true219, label %if.end228

land.lhs.true219:                                 ; preds = %land.lhs.true215
  %126 = load ptr, ptr %pA.addr, align 8
  %iTable220 = getelementptr inbounds nuw %struct.Expr, ptr %126, i32 0, i32 8
  %127 = load i32, ptr %iTable220, align 4
  %128 = load i32, ptr %iTab.addr, align 4
  %cmp221 = icmp ne i32 %127, %128
  br i1 %cmp221, label %if.then227, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %land.lhs.true219
  %129 = load ptr, ptr %pB.addr, align 8
  %iTable224 = getelementptr inbounds nuw %struct.Expr, ptr %129, i32 0, i32 8
  %130 = load i32, ptr %iTable224, align 4
  %cmp225 = icmp sge i32 %130, 0
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %lor.lhs.false223, %land.lhs.true219
  store i32 2, ptr %retval, align 4
  br label %return

if.end228:                                        ; preds = %lor.lhs.false223, %land.lhs.true215, %if.end210
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %land.lhs.true192, %land.lhs.true187, %if.end182
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.end154
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end230, %if.then227, %if.then209, %if.then202, %if.then181, %if.then176, %if.then171, %if.then161, %if.then153, %if.then141, %if.then129, %if.then117, %if.then110, %if.then99, %if.then87, %if.end57, %if.then56, %if.then45, %if.end23, %if.then22, %if.then7, %if.then
  %131 = load i32, ptr %retval, align 4
  ret i32 %131
}

; Function Attrs: nounwind uwtable
declare hidden i32 @exprCompareVariable(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WindowCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprListCompare(ptr noundef, ptr noundef, i32 noundef) #1

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
