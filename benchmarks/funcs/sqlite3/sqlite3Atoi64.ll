; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Atoi64(ptr noundef %zNum, ptr noundef %pNum, i32 noundef %length, i8 noundef zeroext %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %zNum.addr = alloca ptr, align 8
  %pNum.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %enc.addr = alloca i8, align 1
  %incr = alloca i32, align 4
  %u = alloca i64, align 8
  %neg = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %nonNum = alloca i32, align 4
  %rc = alloca i32, align 4
  %zStart = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %jj = alloca i32, align 4
  store ptr %zNum, ptr %zNum.addr, align 8
  store ptr %pNum, ptr %pNum.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i8 %enc, ptr %enc.addr, align 1
  store i64 0, ptr %u, align 8
  store i32 0, ptr %neg, align 4
  store i32 0, ptr %c, align 4
  store i32 0, ptr %nonNum, align 4
  %0 = load ptr, ptr %zNum.addr, align 8
  %1 = load i32, ptr %length.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %zEnd, align 8
  %2 = load i8, ptr %enc.addr, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %incr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 2, ptr %incr, align 4
  %3 = load i8, ptr %enc.addr, align 1
  %conv2 = zext i8 %3 to i32
  %sub = sub nsw i32 3, %conv2
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %length.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load ptr, ptr %zNum.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %add = add nsw i32 %10, 2
  store i32 %add, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %length.addr, align 4
  %cmp8 = icmp slt i32 %11, %12
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, ptr %nonNum, align 4
  %13 = load ptr, ptr %zNum.addr, align 8
  %14 = load i32, ptr %i, align 4
  %xor = xor i32 %14, 1
  %idxprom10 = sext i32 %xor to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 %idxprom10
  store ptr %arrayidx11, ptr %zEnd, align 8
  %15 = load i8, ptr %enc.addr, align 1
  %conv12 = zext i8 %15 to i32
  %and = and i32 %conv12, 1
  %16 = load ptr, ptr %zNum.addr, align 8
  %idx.ext13 = sext i32 %and to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %16, i64 %idx.ext13
  store ptr %add.ptr14, ptr %zNum.addr, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %17 = load ptr, ptr %zNum.addr, align 8
  %18 = load ptr, ptr %zEnd, align 8
  %cmp15 = icmp ult ptr %17, %18
  br i1 %cmp15, label %land.rhs17, label %land.end22

land.rhs17:                                       ; preds = %while.cond
  %19 = load ptr, ptr %zNum.addr, align 8
  %20 = load i8, ptr %19, align 1
  %idxprom18 = zext i8 %20 to i64
  %arrayidx19 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom18
  %21 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %21 to i32
  %and21 = and i32 %conv20, 1
  %tobool = icmp ne i32 %and21, 0
  br label %land.end22

land.end22:                                       ; preds = %land.rhs17, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs17 ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end22
  %23 = load i32, ptr %incr, align 4
  %24 = load ptr, ptr %zNum.addr, align 8
  %idx.ext23 = sext i32 %23 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %24, i64 %idx.ext23
  store ptr %add.ptr24, ptr %zNum.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end22
  %25 = load ptr, ptr %zNum.addr, align 8
  %26 = load ptr, ptr %zEnd, align 8
  %cmp25 = icmp ult ptr %25, %26
  br i1 %cmp25, label %if.then27, label %if.end43

if.then27:                                        ; preds = %while.end
  %27 = load ptr, ptr %zNum.addr, align 8
  %28 = load i8, ptr %27, align 1
  %conv28 = sext i8 %28 to i32
  %cmp29 = icmp eq i32 %conv28, 45
  br i1 %cmp29, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.then27
  store i32 1, ptr %neg, align 4
  %29 = load i32, ptr %incr, align 4
  %30 = load ptr, ptr %zNum.addr, align 8
  %idx.ext32 = sext i32 %29 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %30, i64 %idx.ext32
  store ptr %add.ptr33, ptr %zNum.addr, align 8
  br label %if.end42

if.else34:                                        ; preds = %if.then27
  %31 = load ptr, ptr %zNum.addr, align 8
  %32 = load i8, ptr %31, align 1
  %conv35 = sext i8 %32 to i32
  %cmp36 = icmp eq i32 %conv35, 43
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.else34
  %33 = load i32, ptr %incr, align 4
  %34 = load ptr, ptr %zNum.addr, align 8
  %idx.ext39 = sext i32 %33 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %34, i64 %idx.ext39
  store ptr %add.ptr40, ptr %zNum.addr, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.else34
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then31
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %while.end
  %35 = load ptr, ptr %zNum.addr, align 8
  store ptr %35, ptr %zStart, align 8
  br label %while.cond44

while.cond44:                                     ; preds = %while.body53, %if.end43
  %36 = load ptr, ptr %zNum.addr, align 8
  %37 = load ptr, ptr %zEnd, align 8
  %cmp45 = icmp ult ptr %36, %37
  br i1 %cmp45, label %land.rhs47, label %land.end52

land.rhs47:                                       ; preds = %while.cond44
  %38 = load ptr, ptr %zNum.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %39 to i32
  %cmp50 = icmp eq i32 %conv49, 48
  br label %land.end52

land.end52:                                       ; preds = %land.rhs47, %while.cond44
  %40 = phi i1 [ false, %while.cond44 ], [ %cmp50, %land.rhs47 ]
  br i1 %40, label %while.body53, label %while.end56

while.body53:                                     ; preds = %land.end52
  %41 = load i32, ptr %incr, align 4
  %42 = load ptr, ptr %zNum.addr, align 8
  %idx.ext54 = sext i32 %41 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %42, i64 %idx.ext54
  store ptr %add.ptr55, ptr %zNum.addr, align 8
  br label %while.cond44, !llvm.loop !9

while.end56:                                      ; preds = %land.end52
  store i32 0, ptr %i, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc75, %while.end56
  %43 = load ptr, ptr %zNum.addr, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %43, i64 %idxprom58
  %45 = load ptr, ptr %zEnd, align 8
  %cmp60 = icmp ult ptr %arrayidx59, %45
  br i1 %cmp60, label %land.lhs.true, label %land.end70

land.lhs.true:                                    ; preds = %for.cond57
  %46 = load ptr, ptr %zNum.addr, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %47 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %46, i64 %idxprom62
  %48 = load i8, ptr %arrayidx63, align 1
  %conv64 = sext i8 %48 to i32
  store i32 %conv64, ptr %c, align 4
  %cmp65 = icmp sge i32 %conv64, 48
  br i1 %cmp65, label %land.rhs67, label %land.end70

land.rhs67:                                       ; preds = %land.lhs.true
  %49 = load i32, ptr %c, align 4
  %cmp68 = icmp sle i32 %49, 57
  br label %land.end70

land.end70:                                       ; preds = %land.rhs67, %land.lhs.true, %for.cond57
  %50 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond57 ], [ %cmp68, %land.rhs67 ]
  br i1 %50, label %for.body71, label %for.end77

for.body71:                                       ; preds = %land.end70
  %51 = load i64, ptr %u, align 8
  %mul = mul i64 %51, 10
  %52 = load i32, ptr %c, align 4
  %conv72 = sext i32 %52 to i64
  %add73 = add i64 %mul, %conv72
  %sub74 = sub i64 %add73, 48
  store i64 %sub74, ptr %u, align 8
  br label %for.inc75

for.inc75:                                        ; preds = %for.body71
  %53 = load i32, ptr %incr, align 4
  %54 = load i32, ptr %i, align 4
  %add76 = add nsw i32 %54, %53
  store i32 %add76, ptr %i, align 4
  br label %for.cond57, !llvm.loop !10

for.end77:                                        ; preds = %land.end70
  %55 = load i64, ptr %u, align 8
  %cmp78 = icmp ugt i64 %55, 9223372036854775807
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %for.end77
  %56 = load i32, ptr %neg, align 4
  %tobool81 = icmp ne i32 %56, 0
  %57 = zext i1 %tobool81 to i64
  %cond = select i1 %tobool81, i64 -9223372036854775808, i64 9223372036854775807
  %58 = load ptr, ptr %pNum.addr, align 8
  store i64 %cond, ptr %58, align 8
  br label %if.end88

if.else82:                                        ; preds = %for.end77
  %59 = load i32, ptr %neg, align 4
  %tobool83 = icmp ne i32 %59, 0
  br i1 %tobool83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %if.else82
  %60 = load i64, ptr %u, align 8
  %sub85 = sub nsw i64 0, %60
  %61 = load ptr, ptr %pNum.addr, align 8
  store i64 %sub85, ptr %61, align 8
  br label %if.end87

if.else86:                                        ; preds = %if.else82
  %62 = load i64, ptr %u, align 8
  %63 = load ptr, ptr %pNum.addr, align 8
  store i64 %62, ptr %63, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then84
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then80
  store i32 0, ptr %rc, align 4
  %64 = load i32, ptr %i, align 4
  %cmp89 = icmp eq i32 %64, 0
  br i1 %cmp89, label %land.lhs.true91, label %if.else95

land.lhs.true91:                                  ; preds = %if.end88
  %65 = load ptr, ptr %zStart, align 8
  %66 = load ptr, ptr %zNum.addr, align 8
  %cmp92 = icmp eq ptr %65, %66
  br i1 %cmp92, label %if.then94, label %if.else95

if.then94:                                        ; preds = %land.lhs.true91
  store i32 -1, ptr %rc, align 4
  br label %if.end120

if.else95:                                        ; preds = %land.lhs.true91, %if.end88
  %67 = load i32, ptr %nonNum, align 4
  %tobool96 = icmp ne i32 %67, 0
  br i1 %tobool96, label %if.then97, label %if.else98

if.then97:                                        ; preds = %if.else95
  store i32 1, ptr %rc, align 4
  br label %if.end119

if.else98:                                        ; preds = %if.else95
  %68 = load ptr, ptr %zNum.addr, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom99 = sext i32 %69 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %68, i64 %idxprom99
  %70 = load ptr, ptr %zEnd, align 8
  %cmp101 = icmp ult ptr %arrayidx100, %70
  br i1 %cmp101, label %if.then103, label %if.end118

if.then103:                                       ; preds = %if.else98
  %71 = load i32, ptr %i, align 4
  store i32 %71, ptr %jj, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then103
  %72 = load ptr, ptr %zNum.addr, align 8
  %73 = load i32, ptr %jj, align 4
  %idxprom104 = sext i32 %73 to i64
  %arrayidx105 = getelementptr inbounds i8, ptr %72, i64 %idxprom104
  %74 = load i8, ptr %arrayidx105, align 1
  %idxprom106 = zext i8 %74 to i64
  %arrayidx107 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom106
  %75 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %75 to i32
  %and109 = and i32 %conv108, 1
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %do.body
  store i32 1, ptr %rc, align 4
  br label %do.end

if.end112:                                        ; preds = %do.body
  %76 = load i32, ptr %incr, align 4
  %77 = load i32, ptr %jj, align 4
  %add113 = add nsw i32 %77, %76
  store i32 %add113, ptr %jj, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end112
  %78 = load ptr, ptr %zNum.addr, align 8
  %79 = load i32, ptr %jj, align 4
  %idxprom114 = sext i32 %79 to i64
  %arrayidx115 = getelementptr inbounds i8, ptr %78, i64 %idxprom114
  %80 = load ptr, ptr %zEnd, align 8
  %cmp116 = icmp ult ptr %arrayidx115, %80
  br i1 %cmp116, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond, %if.then111
  br label %if.end118

if.end118:                                        ; preds = %do.end, %if.else98
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.then97
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then94
  %81 = load i32, ptr %i, align 4
  %82 = load i32, ptr %incr, align 4
  %mul121 = mul nsw i32 19, %82
  %cmp122 = icmp slt i32 %81, %mul121
  br i1 %cmp122, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.end120
  %83 = load i32, ptr %rc, align 4
  store i32 %83, ptr %retval, align 4
  br label %return

if.else125:                                       ; preds = %if.end120
  %84 = load i32, ptr %i, align 4
  %85 = load i32, ptr %incr, align 4
  %mul126 = mul nsw i32 19, %85
  %cmp127 = icmp sgt i32 %84, %mul126
  br i1 %cmp127, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else125
  br label %cond.end

cond.false:                                       ; preds = %if.else125
  %86 = load ptr, ptr %zNum.addr, align 8
  %87 = load i32, ptr %incr, align 4
  %call = call i32 @compare2pow63(ptr noundef %86, i32 noundef %87)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond129 = phi i32 [ 1, %cond.true ], [ %call, %cond.false ]
  store i32 %cond129, ptr %c, align 4
  %88 = load i32, ptr %c, align 4
  %cmp130 = icmp slt i32 %88, 0
  br i1 %cmp130, label %if.then132, label %if.else133

if.then132:                                       ; preds = %cond.end
  %89 = load i32, ptr %rc, align 4
  store i32 %89, ptr %retval, align 4
  br label %return

if.else133:                                       ; preds = %cond.end
  %90 = load i32, ptr %neg, align 4
  %tobool134 = icmp ne i32 %90, 0
  %91 = zext i1 %tobool134 to i64
  %cond135 = select i1 %tobool134, i64 -9223372036854775808, i64 9223372036854775807
  %92 = load ptr, ptr %pNum.addr, align 8
  store i64 %cond135, ptr %92, align 8
  %93 = load i32, ptr %c, align 4
  %cmp136 = icmp sgt i32 %93, 0
  br i1 %cmp136, label %if.then138, label %if.else139

if.then138:                                       ; preds = %if.else133
  store i32 2, ptr %retval, align 4
  br label %return

if.else139:                                       ; preds = %if.else133
  %94 = load i32, ptr %neg, align 4
  %tobool140 = icmp ne i32 %94, 0
  br i1 %tobool140, label %cond.true141, label %cond.false142

cond.true141:                                     ; preds = %if.else139
  %95 = load i32, ptr %rc, align 4
  br label %cond.end143

cond.false142:                                    ; preds = %if.else139
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false142, %cond.true141
  %cond144 = phi i32 [ %95, %cond.true141 ], [ 3, %cond.false142 ]
  store i32 %cond144, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end143, %if.then138, %if.then132, %if.then124
  %96 = load i32, ptr %retval, align 4
  ret i32 %96
}

; Function Attrs: nounwind uwtable
declare hidden i32 @compare2pow63(ptr noundef, i32 noundef) #0

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
