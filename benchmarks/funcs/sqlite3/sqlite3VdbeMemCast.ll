; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemIntegerify(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemRealify(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeMemCast(ptr noundef %pMem, i8 noundef zeroext %aff, i8 noundef zeroext %encoding) #0 {
entry:
  %pMem.addr = alloca ptr, align 8
  %aff.addr = alloca i8, align 1
  %encoding.addr = alloca i8, align 1
  store ptr %pMem, ptr %pMem.addr, align 8
  store i8 %aff, ptr %aff.addr, align 1
  store i8 %encoding, ptr %encoding.addr, align 1
  %0 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = load i8, ptr %aff.addr, align 1
  %conv1 = zext i8 %2 to i32
  switch i32 %conv1, label %sw.default [
    i32 65, label %sw.bb
    i32 67, label %sw.bb23
    i32 68, label %sw.bb24
    i32 69, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %pMem.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 1
  %4 = load i16, ptr %flags2, align 8
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 16
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb
  %5 = load ptr, ptr %pMem.addr, align 8
  %6 = load i8, ptr %encoding.addr, align 1
  call void @sqlite3ValueApplyAffinity(ptr noundef %5, i8 noundef zeroext 66, i8 noundef zeroext %6)
  %7 = load ptr, ptr %pMem.addr, align 8
  %flags7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 1
  %8 = load i16, ptr %flags7, align 8
  %conv8 = zext i16 %8 to i32
  %and9 = and i32 %conv8, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.then6
  %9 = load ptr, ptr %pMem.addr, align 8
  %flags12 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 1
  %10 = load i16, ptr %flags12, align 8
  %conv13 = zext i16 %10 to i32
  %and14 = and i32 %conv13, -49600
  %or = or i32 %and14, 16
  %conv15 = trunc i32 %or to i16
  %11 = load ptr, ptr %pMem.addr, align 8
  %flags16 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 1
  store i16 %conv15, ptr %flags16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.then6
  br label %if.end22

if.else:                                          ; preds = %sw.bb
  %12 = load ptr, ptr %pMem.addr, align 8
  %flags18 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 1
  %13 = load i16, ptr %flags18, align 8
  %conv19 = zext i16 %13 to i32
  %and20 = and i32 %conv19, -49584
  %conv21 = trunc i32 %and20 to i16
  store i16 %conv21, ptr %flags18, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end17
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %14 = load ptr, ptr %pMem.addr, align 8
  %call = call i32 @sqlite3VdbeMemNumerify(ptr noundef %14)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %15 = load ptr, ptr %pMem.addr, align 8
  %call25 = call i32 @sqlite3VdbeMemIntegerify(ptr noundef %15)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %16 = load ptr, ptr %pMem.addr, align 8
  %call27 = call i32 @sqlite3VdbeMemRealify(ptr noundef %16)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %17 = load ptr, ptr %pMem.addr, align 8
  %flags28 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %17, i32 0, i32 1
  %18 = load i16, ptr %flags28, align 8
  %conv29 = zext i16 %18 to i32
  %and30 = and i32 %conv29, 16
  %shr = ashr i32 %and30, 3
  %19 = load ptr, ptr %pMem.addr, align 8
  %flags31 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %19, i32 0, i32 1
  %20 = load i16, ptr %flags31, align 8
  %conv32 = zext i16 %20 to i32
  %or33 = or i32 %conv32, %shr
  %conv34 = trunc i32 %or33 to i16
  store i16 %conv34, ptr %flags31, align 8
  %21 = load ptr, ptr %pMem.addr, align 8
  %22 = load i8, ptr %encoding.addr, align 1
  call void @sqlite3ValueApplyAffinity(ptr noundef %21, i8 noundef zeroext 66, i8 noundef zeroext %22)
  %23 = load ptr, ptr %pMem.addr, align 8
  %flags35 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %23, i32 0, i32 1
  %24 = load i16, ptr %flags35, align 8
  %conv36 = zext i16 %24 to i32
  %and37 = and i32 %conv36, -16445
  %conv38 = trunc i32 %and37 to i16
  store i16 %conv38, ptr %flags35, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb26, %sw.bb24, %sw.bb23, %if.end22, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueApplyAffinity(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemNumerify(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
