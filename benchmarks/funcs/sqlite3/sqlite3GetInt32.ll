; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3GetInt32(ptr noundef %zNum, ptr noundef %pValue) #1 {
entry:
  %retval = alloca i32, align 4
  %zNum.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %v = alloca i64, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %neg = alloca i32, align 4
  %u = alloca i32, align 4
  store ptr %zNum, ptr %zNum.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store i64 0, ptr %v, align 8
  store i32 0, ptr %neg, align 4
  %0 = load ptr, ptr %zNum.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %neg, align 4
  %2 = load ptr, ptr %zNum.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %zNum.addr, align 8
  br label %if.end59

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %zNum.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  %5 = load ptr, ptr %zNum.addr, align 8
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %incdec.ptr7, ptr %zNum.addr, align 8
  br label %if.end58

if.else8:                                         ; preds = %if.else
  %6 = load ptr, ptr %zNum.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 48
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else8
  %8 = load ptr, ptr %zNum.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 120
  br i1 %cmp15, label %land.lhs.true21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load ptr, ptr %zNum.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %11 to i32
  %cmp19 = icmp eq i32 %conv18, 88
  br i1 %cmp19, label %land.lhs.true21, label %if.end

land.lhs.true21:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load ptr, ptr %zNum.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %12, i64 2
  %13 = load i8, ptr %arrayidx22, align 1
  %idxprom = zext i8 %13 to i64
  %arrayidx23 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom
  %14 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %14 to i32
  %and = and i32 %conv24, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then25, label %if.end

if.then25:                                        ; preds = %land.lhs.true21
  store i32 0, ptr %u, align 4
  %15 = load ptr, ptr %zNum.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 2
  store ptr %add.ptr, ptr %zNum.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then25
  %16 = load ptr, ptr %zNum.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %17 to i32
  %cmp28 = icmp eq i32 %conv27, 48
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %zNum.addr, align 8
  %incdec.ptr30 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr30, ptr %zNum.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %19 = load ptr, ptr %zNum.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %20 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %19, i64 %idxprom31
  %21 = load i8, ptr %arrayidx32, align 1
  %idxprom33 = zext i8 %21 to i64
  %arrayidx34 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom33
  %22 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %22 to i32
  %and36 = and i32 %conv35, 8
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %23 = load i32, ptr %i, align 4
  %cmp38 = icmp slt i32 %23, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %cmp38, %land.rhs ]
  br i1 %24, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %25 = load i32, ptr %u, align 4
  %mul = mul i32 %25, 16
  %26 = load ptr, ptr %zNum.addr, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %26, i64 %idxprom40
  %28 = load i8, ptr %arrayidx41, align 1
  %conv42 = sext i8 %28 to i32
  %call = call zeroext i8 @sqlite3HexToInt(i32 noundef %conv42)
  %conv43 = zext i8 %call to i32
  %add = add i32 %mul, %conv43
  store i32 %add, ptr %u, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %land.end
  %30 = load i32, ptr %u, align 4
  %and44 = and i32 %30, -2147483648
  %cmp45 = icmp eq i32 %and44, 0
  br i1 %cmp45, label %land.lhs.true47, label %if.else57

land.lhs.true47:                                  ; preds = %for.end
  %31 = load ptr, ptr %zNum.addr, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %31, i64 %idxprom48
  %33 = load i8, ptr %arrayidx49, align 1
  %idxprom50 = zext i8 %33 to i64
  %arrayidx51 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom50
  %34 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %34 to i32
  %and53 = and i32 %conv52, 8
  %cmp54 = icmp eq i32 %and53, 0
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %land.lhs.true47
  %35 = load ptr, ptr %pValue.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %u, i64 4, i1 false)
  store i32 1, ptr %retval, align 4
  br label %return

if.else57:                                        ; preds = %land.lhs.true47, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true21, %lor.lhs.false, %if.else8
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then6
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then
  %36 = load ptr, ptr %zNum.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx60, align 1
  %idxprom61 = zext i8 %37 to i64
  %arrayidx62 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom61
  %38 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %38 to i32
  %and64 = and i32 %conv63, 4
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end59
  store i32 0, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.end59
  br label %while.cond68

while.cond68:                                     ; preds = %while.body73, %if.end67
  %39 = load ptr, ptr %zNum.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx69, align 1
  %conv70 = sext i8 %40 to i32
  %cmp71 = icmp eq i32 %conv70, 48
  br i1 %cmp71, label %while.body73, label %while.end75

while.body73:                                     ; preds = %while.cond68
  %41 = load ptr, ptr %zNum.addr, align 8
  %incdec.ptr74 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %incdec.ptr74, ptr %zNum.addr, align 8
  br label %while.cond68, !llvm.loop !9

while.end75:                                      ; preds = %while.cond68
  store i32 0, ptr %i, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc93, %while.end75
  %42 = load i32, ptr %i, align 4
  %cmp77 = icmp slt i32 %42, 11
  br i1 %cmp77, label %land.lhs.true79, label %land.end88

land.lhs.true79:                                  ; preds = %for.cond76
  %43 = load ptr, ptr %zNum.addr, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom80 = sext i32 %44 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %43, i64 %idxprom80
  %45 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %45 to i32
  %sub = sub nsw i32 %conv82, 48
  store i32 %sub, ptr %c, align 4
  %cmp83 = icmp sge i32 %sub, 0
  br i1 %cmp83, label %land.rhs85, label %land.end88

land.rhs85:                                       ; preds = %land.lhs.true79
  %46 = load i32, ptr %c, align 4
  %cmp86 = icmp sle i32 %46, 9
  br label %land.end88

land.end88:                                       ; preds = %land.rhs85, %land.lhs.true79, %for.cond76
  %47 = phi i1 [ false, %land.lhs.true79 ], [ false, %for.cond76 ], [ %cmp86, %land.rhs85 ]
  br i1 %47, label %for.body89, label %for.end95

for.body89:                                       ; preds = %land.end88
  %48 = load i64, ptr %v, align 8
  %mul90 = mul nsw i64 %48, 10
  %49 = load i32, ptr %c, align 4
  %conv91 = sext i32 %49 to i64
  %add92 = add nsw i64 %mul90, %conv91
  store i64 %add92, ptr %v, align 8
  br label %for.inc93

for.inc93:                                        ; preds = %for.body89
  %50 = load i32, ptr %i, align 4
  %inc94 = add nsw i32 %50, 1
  store i32 %inc94, ptr %i, align 4
  br label %for.cond76, !llvm.loop !10

for.end95:                                        ; preds = %land.end88
  %51 = load i32, ptr %i, align 4
  %cmp96 = icmp sgt i32 %51, 10
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %for.end95
  store i32 0, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %for.end95
  %52 = load i64, ptr %v, align 8
  %53 = load i32, ptr %neg, align 4
  %conv100 = sext i32 %53 to i64
  %sub101 = sub nsw i64 %52, %conv100
  %cmp102 = icmp sgt i64 %sub101, 2147483647
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end99
  store i32 0, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %if.end99
  %54 = load i32, ptr %neg, align 4
  %tobool106 = icmp ne i32 %54, 0
  br i1 %tobool106, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.end105
  %55 = load i64, ptr %v, align 8
  %sub108 = sub nsw i64 0, %55
  store i64 %sub108, ptr %v, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end105
  %56 = load i64, ptr %v, align 8
  %conv110 = trunc i64 %56 to i32
  %57 = load ptr, ptr %pValue.addr, align 8
  store i32 %conv110, ptr %57, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end109, %if.then104, %if.then98, %if.then66, %if.else57, %if.then56
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3HexToInt(i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
