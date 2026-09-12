; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1249 = external hidden unnamed_addr constant [51 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @StrModeToFlags(ptr noundef %pCtx, ptr noundef %zMode, i32 noundef %nLen) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %zMode.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %iFlag = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zMode, ptr %zMode.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load ptr, ptr %zMode.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  store i32 0, ptr %iFlag, align 4
  %2 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %zMode.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  store i32 %conv, ptr %c, align 4
  %5 = load i32, ptr %c, align 4
  %cmp2 = icmp eq i32 %5, 114
  br i1 %cmp2, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %c, align 4
  %cmp4 = icmp eq i32 %6, 82
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %iFlag, align 4
  %7 = load ptr, ptr %zMode.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %zMode.addr, align 8
  %8 = load ptr, ptr %zMode.addr, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp ult ptr %8, %9
  br i1 %cmp7, label %if.then9, label %if.end22

if.then9:                                         ; preds = %if.then6
  %10 = load ptr, ptr %zMode.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  store i32 %conv11, ptr %c, align 4
  %12 = load i32, ptr %c, align 4
  %cmp12 = icmp eq i32 %12, 43
  br i1 %cmp12, label %if.then20, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.then9
  %13 = load i32, ptr %c, align 4
  %cmp15 = icmp eq i32 %13, 119
  br i1 %cmp15, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %14 = load i32, ptr %c, align 4
  %cmp18 = icmp eq i32 %14, 87
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false17, %lor.lhs.false14, %if.then9
  store i32 4, ptr %iFlag, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then6
  br label %if.end117

if.else:                                          ; preds = %lor.lhs.false
  %15 = load i32, ptr %c, align 4
  %cmp23 = icmp eq i32 %15, 119
  br i1 %cmp23, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.else
  %16 = load i32, ptr %c, align 4
  %cmp26 = icmp eq i32 %16, 87
  br i1 %cmp26, label %if.then28, label %if.else46

if.then28:                                        ; preds = %lor.lhs.false25, %if.else
  store i32 26, ptr %iFlag, align 4
  %17 = load ptr, ptr %zMode.addr, align 8
  %incdec.ptr29 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr29, ptr %zMode.addr, align 8
  %18 = load ptr, ptr %zMode.addr, align 8
  %19 = load ptr, ptr %zEnd, align 8
  %cmp30 = icmp ult ptr %18, %19
  br i1 %cmp30, label %if.then32, label %if.end45

if.then32:                                        ; preds = %if.then28
  %20 = load ptr, ptr %zMode.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %21 to i32
  store i32 %conv34, ptr %c, align 4
  %22 = load i32, ptr %c, align 4
  %cmp35 = icmp eq i32 %22, 43
  br i1 %cmp35, label %if.then43, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.then32
  %23 = load i32, ptr %c, align 4
  %cmp38 = icmp eq i32 %23, 114
  br i1 %cmp38, label %if.then43, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %24 = load i32, ptr %c, align 4
  %cmp41 = icmp eq i32 %24, 82
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false40, %lor.lhs.false37, %if.then32
  %25 = load i32, ptr %iFlag, align 4
  %and = and i32 %25, -3
  store i32 %and, ptr %iFlag, align 4
  %26 = load i32, ptr %iFlag, align 4
  %or = or i32 %26, 4
  store i32 %or, ptr %iFlag, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %lor.lhs.false40
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then28
  br label %if.end116

if.else46:                                        ; preds = %lor.lhs.false25
  %27 = load i32, ptr %c, align 4
  %cmp47 = icmp eq i32 %27, 97
  br i1 %cmp47, label %if.then52, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.else46
  %28 = load i32, ptr %c, align 4
  %cmp50 = icmp eq i32 %28, 65
  br i1 %cmp50, label %if.then52, label %if.else66

if.then52:                                        ; preds = %lor.lhs.false49, %if.else46
  store i32 42, ptr %iFlag, align 4
  %29 = load ptr, ptr %zMode.addr, align 8
  %incdec.ptr53 = getelementptr inbounds nuw i8, ptr %29, i32 1
  store ptr %incdec.ptr53, ptr %zMode.addr, align 8
  %30 = load ptr, ptr %zMode.addr, align 8
  %31 = load ptr, ptr %zEnd, align 8
  %cmp54 = icmp ult ptr %30, %31
  br i1 %cmp54, label %if.then56, label %if.end65

if.then56:                                        ; preds = %if.then52
  %32 = load ptr, ptr %zMode.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %33 to i32
  store i32 %conv58, ptr %c, align 4
  %34 = load i32, ptr %c, align 4
  %cmp59 = icmp eq i32 %34, 43
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.then56
  %35 = load i32, ptr %iFlag, align 4
  %and62 = and i32 %35, -3
  store i32 %and62, ptr %iFlag, align 4
  %36 = load i32, ptr %iFlag, align 4
  %or63 = or i32 %36, 4
  store i32 %or63, ptr %iFlag, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then56
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then52
  br label %if.end115

if.else66:                                        ; preds = %lor.lhs.false49
  %37 = load i32, ptr %c, align 4
  %cmp67 = icmp eq i32 %37, 120
  br i1 %cmp67, label %if.then72, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.else66
  %38 = load i32, ptr %c, align 4
  %cmp70 = icmp eq i32 %38, 88
  br i1 %cmp70, label %if.then72, label %if.else92

if.then72:                                        ; preds = %lor.lhs.false69, %if.else66
  store i32 66, ptr %iFlag, align 4
  %39 = load ptr, ptr %zMode.addr, align 8
  %incdec.ptr73 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr73, ptr %zMode.addr, align 8
  %40 = load ptr, ptr %zMode.addr, align 8
  %41 = load ptr, ptr %zEnd, align 8
  %cmp74 = icmp ult ptr %40, %41
  br i1 %cmp74, label %if.then76, label %if.end91

if.then76:                                        ; preds = %if.then72
  %42 = load ptr, ptr %zMode.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx77, align 1
  %conv78 = sext i8 %43 to i32
  store i32 %conv78, ptr %c, align 4
  %44 = load i32, ptr %c, align 4
  %cmp79 = icmp eq i32 %44, 43
  br i1 %cmp79, label %if.then87, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.then76
  %45 = load i32, ptr %c, align 4
  %cmp82 = icmp eq i32 %45, 114
  br i1 %cmp82, label %if.then87, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false81
  %46 = load i32, ptr %c, align 4
  %cmp85 = icmp eq i32 %46, 82
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %lor.lhs.false84, %lor.lhs.false81, %if.then76
  %47 = load i32, ptr %iFlag, align 4
  %and88 = and i32 %47, -3
  store i32 %and88, ptr %iFlag, align 4
  %48 = load i32, ptr %iFlag, align 4
  %or89 = or i32 %48, 4
  store i32 %or89, ptr %iFlag, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %lor.lhs.false84
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then72
  br label %if.end114

if.else92:                                        ; preds = %lor.lhs.false69
  %49 = load i32, ptr %c, align 4
  %cmp93 = icmp eq i32 %49, 99
  br i1 %cmp93, label %if.then98, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.else92
  %50 = load i32, ptr %c, align 4
  %cmp96 = icmp eq i32 %50, 67
  br i1 %cmp96, label %if.then98, label %if.else112

if.then98:                                        ; preds = %lor.lhs.false95, %if.else92
  store i32 10, ptr %iFlag, align 4
  %51 = load ptr, ptr %zMode.addr, align 8
  %incdec.ptr99 = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr99, ptr %zMode.addr, align 8
  %52 = load ptr, ptr %zMode.addr, align 8
  %53 = load ptr, ptr %zEnd, align 8
  %cmp100 = icmp ult ptr %52, %53
  br i1 %cmp100, label %if.then102, label %if.end111

if.then102:                                       ; preds = %if.then98
  %54 = load ptr, ptr %zMode.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx103, align 1
  %conv104 = sext i8 %55 to i32
  store i32 %conv104, ptr %c, align 4
  %56 = load i32, ptr %c, align 4
  %cmp105 = icmp eq i32 %56, 43
  br i1 %cmp105, label %if.then107, label %if.end110

if.then107:                                       ; preds = %if.then102
  %57 = load i32, ptr %iFlag, align 4
  %and108 = and i32 %57, -3
  store i32 %and108, ptr %iFlag, align 4
  %58 = load i32, ptr %iFlag, align 4
  %or109 = or i32 %58, 4
  store i32 %or109, ptr %iFlag, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.then102
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then98
  br label %if.end113

if.else112:                                       ; preds = %lor.lhs.false95
  %59 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_context_throw_error(ptr noundef %59, i32 noundef 3, ptr noundef @.str.1249)
  store i32 1, ptr %iFlag, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.else112, %if.end111
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end91
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end65
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end45
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end22
  br label %while.cond

while.cond:                                       ; preds = %if.end140, %if.end117
  %60 = load ptr, ptr %zMode.addr, align 8
  %61 = load ptr, ptr %zEnd, align 8
  %cmp118 = icmp ult ptr %60, %61
  br i1 %cmp118, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load ptr, ptr %zMode.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx120, align 1
  %conv121 = sext i8 %63 to i32
  store i32 %conv121, ptr %c, align 4
  %64 = load i32, ptr %c, align 4
  %cmp122 = icmp eq i32 %64, 98
  br i1 %cmp122, label %if.then127, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %while.body
  %65 = load i32, ptr %c, align 4
  %cmp125 = icmp eq i32 %65, 66
  br i1 %cmp125, label %if.then127, label %if.else130

if.then127:                                       ; preds = %lor.lhs.false124, %while.body
  %66 = load i32, ptr %iFlag, align 4
  %and128 = and i32 %66, -513
  store i32 %and128, ptr %iFlag, align 4
  %67 = load i32, ptr %iFlag, align 4
  %or129 = or i32 %67, 128
  store i32 %or129, ptr %iFlag, align 4
  br label %if.end140

if.else130:                                       ; preds = %lor.lhs.false124
  %68 = load i32, ptr %c, align 4
  %cmp131 = icmp eq i32 %68, 116
  br i1 %cmp131, label %if.then136, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.else130
  %69 = load i32, ptr %c, align 4
  %cmp134 = icmp eq i32 %69, 84
  br i1 %cmp134, label %if.then136, label %if.end139

if.then136:                                       ; preds = %lor.lhs.false133, %if.else130
  %70 = load i32, ptr %iFlag, align 4
  %and137 = and i32 %70, -129
  store i32 %and137, ptr %iFlag, align 4
  %71 = load i32, ptr %iFlag, align 4
  %or138 = or i32 %71, 512
  store i32 %or138, ptr %iFlag, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %lor.lhs.false133
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.then127
  %72 = load ptr, ptr %zMode.addr, align 8
  %incdec.ptr141 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %incdec.ptr141, ptr %zMode.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %73 = load i32, ptr %iFlag, align 4
  store i32 %73, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
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
