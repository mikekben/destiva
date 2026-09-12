; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16
@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetInt32(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden signext i8 @sqlite3AffinityType(ptr noundef %zIn, ptr noundef %pCol) #0 {
entry:
  %zIn.addr = alloca ptr, align 8
  %pCol.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %aff = alloca i8, align 1
  %zChar = alloca ptr, align 8
  %v = alloca i32, align 4
  store ptr %zIn, ptr %zIn.addr, align 8
  store ptr %pCol, ptr %pCol.addr, align 8
  store i32 0, ptr %h, align 4
  store i8 67, ptr %aff, align 1
  store ptr null, ptr %zChar, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end62, %entry
  %0 = load ptr, ptr %zIn.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %h, align 4
  %shl = shl i32 %2, 8
  %3 = load ptr, ptr %zIn.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %add = add i32 %shl, %conv2
  store i32 %add, ptr %h, align 4
  %6 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %zIn.addr, align 8
  %7 = load i32, ptr %h, align 4
  %cmp = icmp eq i32 %7, 1667785074
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i8 66, ptr %aff, align 1
  %8 = load ptr, ptr %zIn.addr, align 8
  store ptr %8, ptr %zChar, align 8
  br label %if.end62

if.else:                                          ; preds = %while.body
  %9 = load i32, ptr %h, align 4
  %cmp4 = icmp eq i32 %9, 1668050786
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i8 66, ptr %aff, align 1
  br label %if.end61

if.else7:                                         ; preds = %if.else
  %10 = load i32, ptr %h, align 4
  %cmp8 = icmp eq i32 %10, 1952807028
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else7
  store i8 66, ptr %aff, align 1
  br label %if.end60

if.else11:                                        ; preds = %if.else7
  %11 = load i32, ptr %h, align 4
  %cmp12 = icmp eq i32 %11, 1651273570
  br i1 %cmp12, label %land.lhs.true, label %if.else26

land.lhs.true:                                    ; preds = %if.else11
  %12 = load i8, ptr %aff, align 1
  %conv14 = sext i8 %12 to i32
  %cmp15 = icmp eq i32 %conv14, 67
  br i1 %cmp15, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i8, ptr %aff, align 1
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp eq i32 %conv17, 69
  br i1 %cmp18, label %if.then20, label %if.else26

if.then20:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i8 65, ptr %aff, align 1
  %14 = load ptr, ptr %zIn.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %15 to i32
  %cmp23 = icmp eq i32 %conv22, 40
  br i1 %cmp23, label %if.then25, label %if.end

if.then25:                                        ; preds = %if.then20
  %16 = load ptr, ptr %zIn.addr, align 8
  store ptr %16, ptr %zChar, align 8
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.then20
  br label %if.end59

if.else26:                                        ; preds = %lor.lhs.false, %if.else11
  %17 = load i32, ptr %h, align 4
  %cmp27 = icmp eq i32 %17, 1919246700
  br i1 %cmp27, label %land.lhs.true29, label %if.else34

land.lhs.true29:                                  ; preds = %if.else26
  %18 = load i8, ptr %aff, align 1
  %conv30 = sext i8 %18 to i32
  %cmp31 = icmp eq i32 %conv30, 67
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %land.lhs.true29
  store i8 69, ptr %aff, align 1
  br label %if.end58

if.else34:                                        ; preds = %land.lhs.true29, %if.else26
  %19 = load i32, ptr %h, align 4
  %cmp35 = icmp eq i32 %19, 1718382433
  br i1 %cmp35, label %land.lhs.true37, label %if.else42

land.lhs.true37:                                  ; preds = %if.else34
  %20 = load i8, ptr %aff, align 1
  %conv38 = sext i8 %20 to i32
  %cmp39 = icmp eq i32 %conv38, 67
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %land.lhs.true37
  store i8 69, ptr %aff, align 1
  br label %if.end57

if.else42:                                        ; preds = %land.lhs.true37, %if.else34
  %21 = load i32, ptr %h, align 4
  %cmp43 = icmp eq i32 %21, 1685026146
  br i1 %cmp43, label %land.lhs.true45, label %if.else50

land.lhs.true45:                                  ; preds = %if.else42
  %22 = load i8, ptr %aff, align 1
  %conv46 = sext i8 %22 to i32
  %cmp47 = icmp eq i32 %conv46, 67
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %land.lhs.true45
  store i8 69, ptr %aff, align 1
  br label %if.end56

if.else50:                                        ; preds = %land.lhs.true45, %if.else42
  %23 = load i32, ptr %h, align 4
  %and51 = and i32 %23, 16777215
  %cmp52 = icmp eq i32 %and51, 6909556
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.else50
  store i8 68, ptr %aff, align 1
  br label %while.end

if.end55:                                         ; preds = %if.else50
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then41
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then33
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then10
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then6
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then54, %while.cond
  %24 = load ptr, ptr %pCol.addr, align 8
  %tobool63 = icmp ne ptr %24, null
  br i1 %tobool63, label %if.then64, label %if.end94

if.then64:                                        ; preds = %while.end
  store i32 0, ptr %v, align 4
  %25 = load i8, ptr %aff, align 1
  %conv65 = sext i8 %25 to i32
  %cmp66 = icmp slt i32 %conv65, 67
  br i1 %cmp66, label %if.then68, label %if.end87

if.then68:                                        ; preds = %if.then64
  %26 = load ptr, ptr %zChar, align 8
  %tobool69 = icmp ne ptr %26, null
  br i1 %tobool69, label %if.then70, label %if.else85

if.then70:                                        ; preds = %if.then68
  br label %while.cond71

while.cond71:                                     ; preds = %if.end82, %if.then70
  %27 = load ptr, ptr %zChar, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx72, align 1
  %tobool73 = icmp ne i8 %28, 0
  br i1 %tobool73, label %while.body74, label %while.end84

while.body74:                                     ; preds = %while.cond71
  %29 = load ptr, ptr %zChar, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx75, align 1
  %idxprom76 = zext i8 %30 to i64
  %arrayidx77 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom76
  %31 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %31 to i32
  %and79 = and i32 %conv78, 4
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %while.body74
  %32 = load ptr, ptr %zChar, align 8
  %call = call i32 @sqlite3GetInt32(ptr noundef %32, ptr noundef %v)
  br label %while.end84

if.end82:                                         ; preds = %while.body74
  %33 = load ptr, ptr %zChar, align 8
  %incdec.ptr83 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %incdec.ptr83, ptr %zChar, align 8
  br label %while.cond71, !llvm.loop !8

while.end84:                                      ; preds = %if.then81, %while.cond71
  br label %if.end86

if.else85:                                        ; preds = %if.then68
  store i32 16, ptr %v, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %while.end84
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then64
  %34 = load i32, ptr %v, align 4
  %div = sdiv i32 %34, 4
  %add88 = add nsw i32 %div, 1
  store i32 %add88, ptr %v, align 4
  %35 = load i32, ptr %v, align 4
  %cmp89 = icmp sgt i32 %35, 255
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end87
  store i32 255, ptr %v, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end87
  %36 = load i32, ptr %v, align 4
  %conv93 = trunc i32 %36 to i8
  %37 = load ptr, ptr %pCol.addr, align 8
  %szEst = getelementptr inbounds nuw %struct.Column, ptr %37, i32 0, i32 5
  store i8 %conv93, ptr %szEst, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.end92, %while.end
  %38 = load i8, ptr %aff, align 1
  ret i8 %38
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
!8 = distinct !{!8, !7}
