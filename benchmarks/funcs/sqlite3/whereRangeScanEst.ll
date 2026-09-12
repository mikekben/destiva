; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @whereRangeScanEst(ptr noundef %pParse, ptr noundef %pBuilder, ptr noundef %pLower, ptr noundef %pUpper, ptr noundef %pLoop) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pBuilder.addr = alloca ptr, align 8
  %pLower.addr = alloca ptr, align 8
  %pUpper.addr = alloca ptr, align 8
  %pLoop.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nOut = alloca i32, align 4
  %nNew = alloca i16, align 2
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  store ptr %pLower, ptr %pLower.addr, align 8
  store ptr %pUpper, ptr %pUpper.addr, align 8
  store ptr %pLoop, ptr %pLoop.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pLoop.addr, align 8
  %nOut1 = getelementptr inbounds nuw %struct.WhereLoop, ptr %0, i32 0, i32 6
  %1 = load i16, ptr %nOut1, align 2
  %conv = sext i16 %1 to i32
  store i32 %conv, ptr %nOut, align 4
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %pBuilder.addr, align 8
  %4 = load ptr, ptr %pLower.addr, align 8
  %5 = load i32, ptr %nOut, align 4
  %conv2 = trunc i32 %5 to i16
  %call = call signext i16 @whereRangeAdjust(ptr noundef %4, i16 noundef signext %conv2)
  store i16 %call, ptr %nNew, align 2
  %6 = load ptr, ptr %pUpper.addr, align 8
  %7 = load i16, ptr %nNew, align 2
  %call3 = call signext i16 @whereRangeAdjust(ptr noundef %6, i16 noundef signext %7)
  store i16 %call3, ptr %nNew, align 2
  %8 = load ptr, ptr %pLower.addr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %pLower.addr, align 8
  %truthProb = getelementptr inbounds nuw %struct.WhereTerm, ptr %9, i32 0, i32 2
  %10 = load i16, ptr %truthProb, align 8
  %conv4 = sext i16 %10 to i32
  %cmp = icmp sgt i32 %conv4, 0
  br i1 %cmp, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %pUpper.addr, align 8
  %tobool7 = icmp ne ptr %11, null
  br i1 %tobool7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %12 = load ptr, ptr %pUpper.addr, align 8
  %truthProb9 = getelementptr inbounds nuw %struct.WhereTerm, ptr %12, i32 0, i32 2
  %13 = load i16, ptr %truthProb9, align 8
  %conv10 = sext i16 %13 to i32
  %cmp11 = icmp sgt i32 %conv10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true8
  %14 = load i16, ptr %nNew, align 2
  %conv13 = sext i16 %14 to i32
  %sub = sub nsw i32 %conv13, 20
  %conv14 = trunc i32 %sub to i16
  store i16 %conv14, ptr %nNew, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true8, %land.lhs.true6, %land.lhs.true, %entry
  %15 = load ptr, ptr %pLower.addr, align 8
  %cmp15 = icmp ne ptr %15, null
  %conv16 = zext i1 %cmp15 to i32
  %16 = load ptr, ptr %pUpper.addr, align 8
  %cmp17 = icmp ne ptr %16, null
  %conv18 = zext i1 %cmp17 to i32
  %add = add nsw i32 %conv16, %conv18
  %17 = load i32, ptr %nOut, align 4
  %sub19 = sub nsw i32 %17, %add
  store i32 %sub19, ptr %nOut, align 4
  %18 = load i16, ptr %nNew, align 2
  %conv20 = sext i16 %18 to i32
  %cmp21 = icmp slt i32 %conv20, 10
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end
  store i16 10, ptr %nNew, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end
  %19 = load i16, ptr %nNew, align 2
  %conv25 = sext i16 %19 to i32
  %20 = load i32, ptr %nOut, align 4
  %cmp26 = icmp slt i32 %conv25, %20
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  %21 = load i16, ptr %nNew, align 2
  %conv29 = sext i16 %21 to i32
  store i32 %conv29, ptr %nOut, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24
  %22 = load i32, ptr %nOut, align 4
  %conv31 = trunc i32 %22 to i16
  %23 = load ptr, ptr %pLoop.addr, align 8
  %nOut32 = getelementptr inbounds nuw %struct.WhereLoop, ptr %23, i32 0, i32 6
  store i16 %conv31, ptr %nOut32, align 2
  %24 = load i32, ptr %rc, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
declare hidden signext i16 @whereRangeAdjust(ptr noundef, i16 noundef signext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
