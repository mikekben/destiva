; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyStrncmp(ptr noundef %zLeft, ptr noundef %zRight, i32 noundef %nLen) #0 {
entry:
  %retval = alloca i32, align 4
  %zLeft.addr = alloca ptr, align 8
  %zRight.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zP = alloca ptr, align 8
  %zQ = alloca ptr, align 8
  store ptr %zLeft, ptr %zLeft.addr, align 8
  store ptr %zRight, ptr %zRight.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load ptr, ptr %zLeft.addr, align 8
  store ptr %0, ptr %zP, align 8
  %1 = load ptr, ptr %zRight.addr, align 8
  store ptr %1, ptr %zQ, align 8
  %2 = load ptr, ptr %zP, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %zP, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %zQ, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %6 = load ptr, ptr %zQ, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %8 = load ptr, ptr %zP, align 8
  %cmp11 = icmp eq ptr %8, null
  br i1 %cmp11, label %cond.true, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.then
  %9 = load ptr, ptr %zP, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false13, %if.then
  %11 = load ptr, ptr %zQ, align 8
  %cmp18 = icmp eq ptr %11, null
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %12 = load ptr, ptr %zQ, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %14 = phi i1 [ true, %cond.true ], [ %cmp22, %lor.rhs ]
  %15 = zext i1 %14 to i64
  %cond = select i1 %14, i32 0, i32 -1
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.end
  %cond24 = phi i32 [ %cond, %lor.end ], [ 1, %cond.false ]
  store i32 %cond24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false6
  %16 = load i32, ptr %nLen.addr, align 4
  %cmp25 = icmp ule i32 %16, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end123, %if.end28
  %17 = load i32, ptr %nLen.addr, align 4
  %cmp29 = icmp ule i32 %17, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %for.cond
  %18 = load ptr, ptr %zP, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %19 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then49, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end32
  %20 = load ptr, ptr %zQ, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %21 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then49, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %22 = load ptr, ptr %zP, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %23 to i32
  %24 = load ptr, ptr %zQ, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %25 to i32
  %cmp47 = icmp ne i32 %conv44, %conv46
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false42, %lor.lhs.false37, %if.end32
  br label %for.end

if.end50:                                         ; preds = %lor.lhs.false42
  %26 = load ptr, ptr %zP, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %incdec.ptr, ptr %zP, align 8
  %27 = load ptr, ptr %zQ, align 8
  %incdec.ptr51 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %incdec.ptr51, ptr %zQ, align 8
  %28 = load i32, ptr %nLen.addr, align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr %nLen.addr, align 4
  %29 = load i32, ptr %nLen.addr, align 4
  %cmp52 = icmp ule i32 %29, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end50
  store i32 0, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end50
  %30 = load ptr, ptr %zP, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %31 to i32
  %cmp58 = icmp eq i32 %conv57, 0
  br i1 %cmp58, label %if.then72, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end55
  %32 = load ptr, ptr %zQ, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %33 to i32
  %cmp63 = icmp eq i32 %conv62, 0
  br i1 %cmp63, label %if.then72, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false60
  %34 = load ptr, ptr %zP, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %35 to i32
  %36 = load ptr, ptr %zQ, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %37 to i32
  %cmp70 = icmp ne i32 %conv67, %conv69
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %lor.lhs.false65, %lor.lhs.false60, %if.end55
  br label %for.end

if.end73:                                         ; preds = %lor.lhs.false65
  %38 = load ptr, ptr %zP, align 8
  %incdec.ptr74 = getelementptr inbounds nuw i8, ptr %38, i32 1
  store ptr %incdec.ptr74, ptr %zP, align 8
  %39 = load ptr, ptr %zQ, align 8
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr75, ptr %zQ, align 8
  %40 = load i32, ptr %nLen.addr, align 4
  %dec76 = add i32 %40, -1
  store i32 %dec76, ptr %nLen.addr, align 4
  %41 = load i32, ptr %nLen.addr, align 4
  %cmp77 = icmp ule i32 %41, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end73
  store i32 0, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end73
  %42 = load ptr, ptr %zP, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %43 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %if.then97, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.end80
  %44 = load ptr, ptr %zQ, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %45 to i32
  %cmp88 = icmp eq i32 %conv87, 0
  br i1 %cmp88, label %if.then97, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false85
  %46 = load ptr, ptr %zP, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %47 to i32
  %48 = load ptr, ptr %zQ, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %48, i64 0
  %49 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %49 to i32
  %cmp95 = icmp ne i32 %conv92, %conv94
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %lor.lhs.false90, %lor.lhs.false85, %if.end80
  br label %for.end

if.end98:                                         ; preds = %lor.lhs.false90
  %50 = load ptr, ptr %zP, align 8
  %incdec.ptr99 = getelementptr inbounds nuw i8, ptr %50, i32 1
  store ptr %incdec.ptr99, ptr %zP, align 8
  %51 = load ptr, ptr %zQ, align 8
  %incdec.ptr100 = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr100, ptr %zQ, align 8
  %52 = load i32, ptr %nLen.addr, align 4
  %dec101 = add i32 %52, -1
  store i32 %dec101, ptr %nLen.addr, align 4
  %53 = load i32, ptr %nLen.addr, align 4
  %cmp102 = icmp ule i32 %53, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end98
  store i32 0, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %if.end98
  %54 = load ptr, ptr %zP, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %55 to i32
  %cmp108 = icmp eq i32 %conv107, 0
  br i1 %cmp108, label %if.then122, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %if.end105
  %56 = load ptr, ptr %zQ, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %56, i64 0
  %57 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %57 to i32
  %cmp113 = icmp eq i32 %conv112, 0
  br i1 %cmp113, label %if.then122, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false110
  %58 = load ptr, ptr %zP, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %58, i64 0
  %59 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %59 to i32
  %60 = load ptr, ptr %zQ, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %60, i64 0
  %61 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %61 to i32
  %cmp120 = icmp ne i32 %conv117, %conv119
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %lor.lhs.false115, %lor.lhs.false110, %if.end105
  br label %for.end

if.end123:                                        ; preds = %lor.lhs.false115
  %62 = load ptr, ptr %zP, align 8
  %incdec.ptr124 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %incdec.ptr124, ptr %zP, align 8
  %63 = load ptr, ptr %zQ, align 8
  %incdec.ptr125 = getelementptr inbounds nuw i8, ptr %63, i32 1
  store ptr %incdec.ptr125, ptr %zQ, align 8
  %64 = load i32, ptr %nLen.addr, align 4
  %dec126 = add i32 %64, -1
  store i32 %dec126, ptr %nLen.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then122, %if.then97, %if.then72, %if.then49
  %65 = load ptr, ptr %zP, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %65, i64 0
  %66 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %66 to i32
  %67 = load ptr, ptr %zQ, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %67, i64 0
  %68 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %68 to i32
  %sub = sub nsw i32 %conv128, %conv130
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then104, %if.then79, %if.then54, %if.then31, %if.then27, %cond.end
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
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
