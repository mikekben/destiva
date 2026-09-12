; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden i32 @validJulianDay(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @computeYMD(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %Z = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
  %E = alloca i32, align 4
  %X1 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %validYMD = getelementptr inbounds nuw %struct.DateTime, ptr %0, i32 0, i32 10
  %1 = load i8, ptr %validYMD, align 2
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %validJD = getelementptr inbounds nuw %struct.DateTime, ptr %2, i32 0, i32 8
  %3 = load i8, ptr %validJD, align 8
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8
  %Y = getelementptr inbounds nuw %struct.DateTime, ptr %4, i32 0, i32 1
  store i32 2000, ptr %Y, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %M = getelementptr inbounds nuw %struct.DateTime, ptr %5, i32 0, i32 2
  store i32 1, ptr %M, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %D3 = getelementptr inbounds nuw %struct.DateTime, ptr %6, i32 0, i32 3
  store i32 1, ptr %D3, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %iJD = getelementptr inbounds nuw %struct.DateTime, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %iJD, align 8
  %call = call i32 @validJulianDay(i64 noundef %8)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  %9 = load ptr, ptr %p.addr, align 8
  call void @datetimeError(ptr noundef %9)
  br label %return

if.else6:                                         ; preds = %if.else
  %10 = load ptr, ptr %p.addr, align 8
  %iJD7 = getelementptr inbounds nuw %struct.DateTime, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %iJD7, align 8
  %add = add nsw i64 %11, 43200000
  %div = sdiv i64 %add, 86400000
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %Z, align 4
  %12 = load i32, ptr %Z, align 4
  %conv8 = sitofp i32 %12 to double
  %sub = fsub double %conv8, 0x413C7DD040000000
  %div9 = fdiv double %sub, 0x40E1D58800000000
  %conv10 = fptosi double %div9 to i32
  store i32 %conv10, ptr %A, align 4
  %13 = load i32, ptr %Z, align 4
  %add11 = add nsw i32 %13, 1
  %14 = load i32, ptr %A, align 4
  %add12 = add nsw i32 %add11, %14
  %15 = load i32, ptr %A, align 4
  %div13 = sdiv i32 %15, 4
  %sub14 = sub nsw i32 %add12, %div13
  store i32 %sub14, ptr %A, align 4
  %16 = load i32, ptr %A, align 4
  %add15 = add nsw i32 %16, 1524
  store i32 %add15, ptr %B, align 4
  %17 = load i32, ptr %B, align 4
  %conv16 = sitofp i32 %17 to double
  %sub17 = fsub double %conv16, 1.221000e+02
  %div18 = fdiv double %sub17, 3.652500e+02
  %conv19 = fptosi double %div18 to i32
  store i32 %conv19, ptr %C, align 4
  %18 = load i32, ptr %C, align 4
  %and = and i32 %18, 32767
  %mul = mul nsw i32 36525, %and
  %div20 = sdiv i32 %mul, 100
  store i32 %div20, ptr %D, align 4
  %19 = load i32, ptr %B, align 4
  %20 = load i32, ptr %D, align 4
  %sub21 = sub nsw i32 %19, %20
  %conv22 = sitofp i32 %sub21 to double
  %div23 = fdiv double %conv22, 3.060010e+01
  %conv24 = fptosi double %div23 to i32
  store i32 %conv24, ptr %E, align 4
  %21 = load i32, ptr %E, align 4
  %conv25 = sitofp i32 %21 to double
  %mul26 = fmul double 3.060010e+01, %conv25
  %conv27 = fptosi double %mul26 to i32
  store i32 %conv27, ptr %X1, align 4
  %22 = load i32, ptr %B, align 4
  %23 = load i32, ptr %D, align 4
  %sub28 = sub nsw i32 %22, %23
  %24 = load i32, ptr %X1, align 4
  %sub29 = sub nsw i32 %sub28, %24
  %25 = load ptr, ptr %p.addr, align 8
  %D30 = getelementptr inbounds nuw %struct.DateTime, ptr %25, i32 0, i32 3
  store i32 %sub29, ptr %D30, align 8
  %26 = load i32, ptr %E, align 4
  %cmp = icmp slt i32 %26, 14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else6
  %27 = load i32, ptr %E, align 4
  %sub32 = sub nsw i32 %27, 1
  br label %cond.end

cond.false:                                       ; preds = %if.else6
  %28 = load i32, ptr %E, align 4
  %sub33 = sub nsw i32 %28, 13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub32, %cond.true ], [ %sub33, %cond.false ]
  %29 = load ptr, ptr %p.addr, align 8
  %M34 = getelementptr inbounds nuw %struct.DateTime, ptr %29, i32 0, i32 2
  store i32 %cond, ptr %M34, align 4
  %30 = load ptr, ptr %p.addr, align 8
  %M35 = getelementptr inbounds nuw %struct.DateTime, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %M35, align 4
  %cmp36 = icmp sgt i32 %31, 2
  br i1 %cmp36, label %cond.true38, label %cond.false40

cond.true38:                                      ; preds = %cond.end
  %32 = load i32, ptr %C, align 4
  %sub39 = sub nsw i32 %32, 4716
  br label %cond.end42

cond.false40:                                     ; preds = %cond.end
  %33 = load i32, ptr %C, align 4
  %sub41 = sub nsw i32 %33, 4715
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false40, %cond.true38
  %cond43 = phi i32 [ %sub39, %cond.true38 ], [ %sub41, %cond.false40 ]
  %34 = load ptr, ptr %p.addr, align 8
  %Y44 = getelementptr inbounds nuw %struct.DateTime, ptr %34, i32 0, i32 1
  store i32 %cond43, ptr %Y44, align 8
  br label %if.end45

if.end45:                                         ; preds = %cond.end42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then2
  %35 = load ptr, ptr %p.addr, align 8
  %validYMD47 = getelementptr inbounds nuw %struct.DateTime, ptr %35, i32 0, i32 10
  store i8 1, ptr %validYMD47, align 2
  br label %return

return:                                           ; preds = %if.end46, %if.then5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @datetimeError(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
