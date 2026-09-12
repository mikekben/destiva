; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.343 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeGetColumnOfTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FkRequired(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3GenerateRowDelete(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %pTrigger, i32 noundef %iDataCur, i32 noundef %iIdxCur, i32 noundef %iPk, i16 noundef signext %nPk, i8 noundef zeroext %count, i8 noundef zeroext %onconf, i8 noundef zeroext %eMode, i32 noundef %iIdxNoSeek) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pTrigger.addr = alloca ptr, align 8
  %iDataCur.addr = alloca i32, align 4
  %iIdxCur.addr = alloca i32, align 4
  %iPk.addr = alloca i32, align 4
  %nPk.addr = alloca i16, align 2
  %count.addr = alloca i8, align 1
  %onconf.addr = alloca i8, align 1
  %eMode.addr = alloca i8, align 1
  %iIdxNoSeek.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %iOld = alloca i32, align 4
  %iLabel = alloca i32, align 4
  %opSeek = alloca i8, align 1
  %mask = alloca i32, align 4
  %iCol = alloca i32, align 4
  %addrStart = alloca i32, align 4
  %p5 = alloca i8, align 1
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pTrigger, ptr %pTrigger.addr, align 8
  store i32 %iDataCur, ptr %iDataCur.addr, align 4
  store i32 %iIdxCur, ptr %iIdxCur.addr, align 4
  store i32 %iPk, ptr %iPk.addr, align 4
  store i16 %nPk, ptr %nPk.addr, align 2
  store i8 %count, ptr %count.addr, align 1
  store i8 %onconf, ptr %onconf.addr, align 1
  store i8 %eMode, ptr %eMode.addr, align 1
  store i32 %iIdxNoSeek, ptr %iIdxNoSeek.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  store i32 0, ptr %iOld, align 4
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3VdbeMakeLabel(ptr noundef %2)
  store i32 %call, ptr %iLabel, align 4
  %3 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %tabFlags, align 8
  %and = and i32 %4, 32
  %cmp = icmp eq i32 %and, 0
  %5 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 31, i32 28
  %conv = trunc i32 %cond to i8
  store i8 %conv, ptr %opSeek, align 1
  %6 = load i8, ptr %eMode.addr, align 1
  %conv1 = zext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %v, align 8
  %8 = load i8, ptr %opSeek, align 1
  %conv4 = zext i8 %8 to i32
  %9 = load i32, ptr %iDataCur.addr, align 4
  %10 = load i32, ptr %iLabel, align 4
  %11 = load i32, ptr %iPk.addr, align 4
  %12 = load i16, ptr %nPk.addr, align 2
  %conv5 = sext i16 %12 to i32
  %call6 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %7, i32 noundef %conv4, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %pTab.addr, align 8
  %call7 = call i32 @sqlite3FkRequired(ptr noundef %13, ptr noundef %14, ptr noundef null, i32 noundef 0)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load ptr, ptr %pTrigger.addr, align 8
  %tobool8 = icmp ne ptr %15, null
  br i1 %tobool8, label %if.then9, label %if.end44

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pTrigger.addr, align 8
  %18 = load ptr, ptr %pTab.addr, align 8
  %19 = load i8, ptr %onconf.addr, align 1
  %conv10 = zext i8 %19 to i32
  %call11 = call i32 @sqlite3TriggerColmask(ptr noundef %16, ptr noundef %17, ptr noundef null, i32 noundef 0, i32 noundef 3, ptr noundef %18, i32 noundef %conv10)
  store i32 %call11, ptr %mask, align 4
  %20 = load ptr, ptr %pParse.addr, align 8
  %21 = load ptr, ptr %pTab.addr, align 8
  %call12 = call i32 @sqlite3FkOldmask(ptr noundef %20, ptr noundef %21)
  %22 = load i32, ptr %mask, align 4
  %or = or i32 %22, %call12
  store i32 %or, ptr %mask, align 4
  %23 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 18
  %24 = load i32, ptr %nMem, align 8
  %add = add nsw i32 %24, 1
  store i32 %add, ptr %iOld, align 4
  %25 = load ptr, ptr %pTab.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %25, i32 0, i32 11
  %26 = load i16, ptr %nCol, align 2
  %conv13 = sext i16 %26 to i32
  %add14 = add nsw i32 1, %conv13
  %27 = load ptr, ptr %pParse.addr, align 8
  %nMem15 = getelementptr inbounds nuw %struct.Parse, ptr %27, i32 0, i32 18
  %28 = load i32, ptr %nMem15, align 8
  %add16 = add nsw i32 %28, %add14
  store i32 %add16, ptr %nMem15, align 8
  %29 = load ptr, ptr %v, align 8
  %30 = load i32, ptr %iPk.addr, align 4
  %31 = load i32, ptr %iOld, align 4
  %call17 = call i32 @sqlite3VdbeAddOp2(ptr noundef %29, i32 noundef 78, i32 noundef %30, i32 noundef %31)
  store i32 0, ptr %iCol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %32 = load i32, ptr %iCol, align 4
  %33 = load ptr, ptr %pTab.addr, align 8
  %nCol18 = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 11
  %34 = load i16, ptr %nCol18, align 2
  %conv19 = sext i16 %34 to i32
  %cmp20 = icmp slt i32 %32, %conv19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, ptr %mask, align 4
  %cmp22 = icmp eq i32 %35, -1
  br i1 %cmp22, label %if.then30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %for.body
  %36 = load i32, ptr %iCol, align 4
  %cmp25 = icmp sle i32 %36, 31
  br i1 %cmp25, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %lor.lhs.false24
  %37 = load i32, ptr %mask, align 4
  %38 = load i32, ptr %iCol, align 4
  %shl = shl i32 1, %38
  %and27 = and i32 %37, %shl
  %cmp28 = icmp ne i32 %and27, 0
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %land.lhs.true, %for.body
  %39 = load ptr, ptr %v, align 8
  %40 = load ptr, ptr %pTab.addr, align 8
  %41 = load i32, ptr %iDataCur.addr, align 4
  %42 = load i32, ptr %iCol, align 4
  %43 = load i32, ptr %iOld, align 4
  %44 = load i32, ptr %iCol, align 4
  %add31 = add nsw i32 %43, %44
  %add32 = add nsw i32 %add31, 1
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %39, ptr noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %add32)
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true, %lor.lhs.false24
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %45 = load i32, ptr %iCol, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %iCol, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %46 = load ptr, ptr %v, align 8
  %call34 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %46)
  store i32 %call34, ptr %addrStart, align 4
  %47 = load ptr, ptr %pParse.addr, align 8
  %48 = load ptr, ptr %pTrigger.addr, align 8
  %49 = load ptr, ptr %pTab.addr, align 8
  %50 = load i32, ptr %iOld, align 4
  %51 = load i8, ptr %onconf.addr, align 1
  %conv35 = zext i8 %51 to i32
  %52 = load i32, ptr %iLabel, align 4
  call void @sqlite3CodeRowTrigger(ptr noundef %47, ptr noundef %48, i32 noundef 124, ptr noundef null, i32 noundef 1, ptr noundef %49, i32 noundef %50, i32 noundef %conv35, i32 noundef %52)
  %53 = load i32, ptr %addrStart, align 4
  %54 = load ptr, ptr %v, align 8
  %call36 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %54)
  %cmp37 = icmp slt i32 %53, %call36
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %for.end
  %55 = load ptr, ptr %v, align 8
  %56 = load i8, ptr %opSeek, align 1
  %conv40 = zext i8 %56 to i32
  %57 = load i32, ptr %iDataCur.addr, align 4
  %58 = load i32, ptr %iLabel, align 4
  %59 = load i32, ptr %iPk.addr, align 4
  %60 = load i16, ptr %nPk.addr, align 2
  %conv41 = sext i16 %60 to i32
  %call42 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %55, i32 noundef %conv40, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %conv41)
  store i32 -1, ptr %iIdxNoSeek.addr, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %for.end
  %61 = load ptr, ptr %pParse.addr, align 8
  %62 = load ptr, ptr %pTab.addr, align 8
  %63 = load i32, ptr %iOld, align 4
  call void @sqlite3FkCheck(ptr noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %lor.lhs.false
  %64 = load ptr, ptr %pTab.addr, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %64, i32 0, i32 3
  %65 = load ptr, ptr %pSelect, align 8
  %cmp45 = icmp eq ptr %65, null
  br i1 %cmp45, label %if.then47, label %if.end83

if.then47:                                        ; preds = %if.end44
  store i8 0, ptr %p5, align 1
  %66 = load ptr, ptr %pParse.addr, align 8
  %67 = load ptr, ptr %pTab.addr, align 8
  %68 = load i32, ptr %iDataCur.addr, align 4
  %69 = load i32, ptr %iIdxCur.addr, align 4
  %70 = load i32, ptr %iIdxNoSeek.addr, align 4
  call void @sqlite3GenerateRowIndexDelete(ptr noundef %66, ptr noundef %67, i32 noundef %68, i32 noundef %69, ptr noundef null, i32 noundef %70)
  %71 = load ptr, ptr %v, align 8
  %72 = load i32, ptr %iDataCur.addr, align 4
  %73 = load i8, ptr %count.addr, align 1
  %conv48 = zext i8 %73 to i32
  %tobool49 = icmp ne i32 %conv48, 0
  %74 = zext i1 %tobool49 to i64
  %cond50 = select i1 %tobool49, i32 1, i32 0
  %call51 = call i32 @sqlite3VdbeAddOp2(ptr noundef %71, i32 noundef 123, i32 noundef %72, i32 noundef %cond50)
  %75 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %75, i32 0, i32 6
  %76 = load i8, ptr %nested, align 2
  %conv52 = zext i8 %76 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  br i1 %cmp53, label %if.then59, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.then47
  %77 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %zName, align 8
  %call56 = call i32 @sqlite3_stricmp(ptr noundef %78, ptr noundef @.str.343)
  %cmp57 = icmp eq i32 0, %call56
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %lor.lhs.false55, %if.then47
  %79 = load ptr, ptr %v, align 8
  %80 = load ptr, ptr %pTab.addr, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %79, ptr noundef %80, i32 noundef -6)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %lor.lhs.false55
  %81 = load i8, ptr %eMode.addr, align 1
  %conv61 = zext i8 %81 to i32
  %cmp62 = icmp ne i32 %conv61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end60
  %82 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %82, i16 noundef zeroext 4)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end60
  %83 = load i32, ptr %iIdxNoSeek.addr, align 4
  %cmp66 = icmp sge i32 %83, 0
  br i1 %cmp66, label %land.lhs.true68, label %if.end73

land.lhs.true68:                                  ; preds = %if.end65
  %84 = load i32, ptr %iIdxNoSeek.addr, align 4
  %85 = load i32, ptr %iDataCur.addr, align 4
  %cmp69 = icmp ne i32 %84, %85
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %land.lhs.true68
  %86 = load ptr, ptr %v, align 8
  %87 = load i32, ptr %iIdxNoSeek.addr, align 4
  %call72 = call i32 @sqlite3VdbeAddOp1(ptr noundef %86, i32 noundef 123, i32 noundef %87)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %land.lhs.true68, %if.end65
  %88 = load i8, ptr %eMode.addr, align 1
  %conv74 = zext i8 %88 to i32
  %cmp75 = icmp eq i32 %conv74, 2
  br i1 %cmp75, label %if.then77, label %if.end81

if.then77:                                        ; preds = %if.end73
  %89 = load i8, ptr %p5, align 1
  %conv78 = zext i8 %89 to i32
  %or79 = or i32 %conv78, 2
  %conv80 = trunc i32 %or79 to i8
  store i8 %conv80, ptr %p5, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end73
  %90 = load ptr, ptr %v, align 8
  %91 = load i8, ptr %p5, align 1
  %conv82 = zext i8 %91 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %90, i16 noundef zeroext %conv82)
  br label %if.end83

if.end83:                                         ; preds = %if.end81, %if.end44
  %92 = load ptr, ptr %pParse.addr, align 8
  %93 = load ptr, ptr %pTab.addr, align 8
  %94 = load i32, ptr %iOld, align 4
  call void @sqlite3FkActions(ptr noundef %92, ptr noundef %93, ptr noundef null, i32 noundef %94, ptr noundef null, i32 noundef 0)
  %95 = load ptr, ptr %pParse.addr, align 8
  %96 = load ptr, ptr %pTrigger.addr, align 8
  %97 = load ptr, ptr %pTab.addr, align 8
  %98 = load i32, ptr %iOld, align 4
  %99 = load i8, ptr %onconf.addr, align 1
  %conv84 = zext i8 %99 to i32
  %100 = load i32, ptr %iLabel, align 4
  call void @sqlite3CodeRowTrigger(ptr noundef %95, ptr noundef %96, i32 noundef 124, ptr noundef null, i32 noundef 2, ptr noundef %97, i32 noundef %98, i32 noundef %conv84, i32 noundef %100)
  %101 = load ptr, ptr %v, align 8
  %102 = load i32, ptr %iLabel, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %101, i32 noundef %102)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TriggerColmask(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FkOldmask(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeRowTrigger(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FkCheck(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3GenerateRowIndexDelete(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FkActions(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

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
