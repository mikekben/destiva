; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @drftf1(i32 noundef %n, ptr noundef %c, ptr noundef %ch, ptr noundef %wa, ptr noundef %ifac) #0 {
entry:
  %n.addr = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  %wa.addr = alloca ptr, align 8
  %ifac.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k1 = alloca i32, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %na = alloca i32, align 4
  %kh = alloca i32, align 4
  %nf = alloca i32, align 4
  %ip = alloca i32, align 4
  %iw = alloca i32, align 4
  %ido = alloca i32, align 4
  %idl1 = alloca i32, align 4
  %ix2 = alloca i32, align 4
  %ix3 = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %c, ptr %c.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  store ptr %wa, ptr %wa.addr, align 8
  store ptr %ifac, ptr %ifac.addr, align 8
  %0 = load ptr, ptr %ifac.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %nf, align 4
  store i32 1, ptr %na, align 4
  %2 = load i32, ptr %n.addr, align 4
  store i32 %2, ptr %l2, align 4
  %3 = load i32, ptr %n.addr, align 4
  store i32 %3, ptr %iw, align 4
  store i32 0, ptr %k1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %k1, align 4
  %5 = load i32, ptr %nf, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %nf, align 4
  %7 = load i32, ptr %k1, align 4
  %sub = sub nsw i32 %6, %7
  store i32 %sub, ptr %kh, align 4
  %8 = load ptr, ptr %ifac.addr, align 8
  %9 = load i32, ptr %kh, align 4
  %add = add nsw i32 %9, 1
  %idxprom = sext i32 %add to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx1, align 4
  store i32 %10, ptr %ip, align 4
  %11 = load i32, ptr %l2, align 4
  %12 = load i32, ptr %ip, align 4
  %div = sdiv i32 %11, %12
  store i32 %div, ptr %l1, align 4
  %13 = load i32, ptr %n.addr, align 4
  %14 = load i32, ptr %l2, align 4
  %div2 = sdiv i32 %13, %14
  store i32 %div2, ptr %ido, align 4
  %15 = load i32, ptr %ido, align 4
  %16 = load i32, ptr %l1, align 4
  %mul = mul nsw i32 %15, %16
  store i32 %mul, ptr %idl1, align 4
  %17 = load i32, ptr %ip, align 4
  %sub3 = sub nsw i32 %17, 1
  %18 = load i32, ptr %ido, align 4
  %mul4 = mul nsw i32 %sub3, %18
  %19 = load i32, ptr %iw, align 4
  %sub5 = sub nsw i32 %19, %mul4
  store i32 %sub5, ptr %iw, align 4
  %20 = load i32, ptr %na, align 4
  %sub6 = sub nsw i32 1, %20
  store i32 %sub6, ptr %na, align 4
  %21 = load i32, ptr %ip, align 4
  %cmp7 = icmp ne i32 %21, 4
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %L102

if.end:                                           ; preds = %for.body
  %22 = load i32, ptr %iw, align 4
  %23 = load i32, ptr %ido, align 4
  %add8 = add nsw i32 %22, %23
  store i32 %add8, ptr %ix2, align 4
  %24 = load i32, ptr %ix2, align 4
  %25 = load i32, ptr %ido, align 4
  %add9 = add nsw i32 %24, %25
  store i32 %add9, ptr %ix3, align 4
  %26 = load i32, ptr %na, align 4
  %cmp10 = icmp ne i32 %26, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %27 = load i32, ptr %ido, align 4
  %28 = load i32, ptr %l1, align 4
  %29 = load ptr, ptr %ch.addr, align 8
  %30 = load ptr, ptr %c.addr, align 8
  %31 = load ptr, ptr %wa.addr, align 8
  %32 = load i32, ptr %iw, align 4
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds float, ptr %31, i64 %idx.ext
  %add.ptr12 = getelementptr inbounds float, ptr %add.ptr, i64 -1
  %33 = load ptr, ptr %wa.addr, align 8
  %34 = load i32, ptr %ix2, align 4
  %idx.ext13 = sext i32 %34 to i64
  %add.ptr14 = getelementptr inbounds float, ptr %33, i64 %idx.ext13
  %add.ptr15 = getelementptr inbounds float, ptr %add.ptr14, i64 -1
  %35 = load ptr, ptr %wa.addr, align 8
  %36 = load i32, ptr %ix3, align 4
  %idx.ext16 = sext i32 %36 to i64
  %add.ptr17 = getelementptr inbounds float, ptr %35, i64 %idx.ext16
  %add.ptr18 = getelementptr inbounds float, ptr %add.ptr17, i64 -1
  call void @dradf4(i32 noundef %27, i32 noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %add.ptr12, ptr noundef %add.ptr15, ptr noundef %add.ptr18)
  br label %if.end28

if.else:                                          ; preds = %if.end
  %37 = load i32, ptr %ido, align 4
  %38 = load i32, ptr %l1, align 4
  %39 = load ptr, ptr %c.addr, align 8
  %40 = load ptr, ptr %ch.addr, align 8
  %41 = load ptr, ptr %wa.addr, align 8
  %42 = load i32, ptr %iw, align 4
  %idx.ext19 = sext i32 %42 to i64
  %add.ptr20 = getelementptr inbounds float, ptr %41, i64 %idx.ext19
  %add.ptr21 = getelementptr inbounds float, ptr %add.ptr20, i64 -1
  %43 = load ptr, ptr %wa.addr, align 8
  %44 = load i32, ptr %ix2, align 4
  %idx.ext22 = sext i32 %44 to i64
  %add.ptr23 = getelementptr inbounds float, ptr %43, i64 %idx.ext22
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr23, i64 -1
  %45 = load ptr, ptr %wa.addr, align 8
  %46 = load i32, ptr %ix3, align 4
  %idx.ext25 = sext i32 %46 to i64
  %add.ptr26 = getelementptr inbounds float, ptr %45, i64 %idx.ext25
  %add.ptr27 = getelementptr inbounds float, ptr %add.ptr26, i64 -1
  call void @dradf4(i32 noundef %37, i32 noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %add.ptr21, ptr noundef %add.ptr24, ptr noundef %add.ptr27)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then11
  br label %L110

L102:                                             ; preds = %if.then
  %47 = load i32, ptr %ip, align 4
  %cmp29 = icmp ne i32 %47, 2
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %L102
  br label %L104

if.end31:                                         ; preds = %L102
  %48 = load i32, ptr %na, align 4
  %cmp32 = icmp ne i32 %48, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  br label %L103

if.end34:                                         ; preds = %if.end31
  %49 = load i32, ptr %ido, align 4
  %50 = load i32, ptr %l1, align 4
  %51 = load ptr, ptr %c.addr, align 8
  %52 = load ptr, ptr %ch.addr, align 8
  %53 = load ptr, ptr %wa.addr, align 8
  %54 = load i32, ptr %iw, align 4
  %idx.ext35 = sext i32 %54 to i64
  %add.ptr36 = getelementptr inbounds float, ptr %53, i64 %idx.ext35
  %add.ptr37 = getelementptr inbounds float, ptr %add.ptr36, i64 -1
  call void @dradf2(i32 noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %add.ptr37)
  br label %L110

L103:                                             ; preds = %if.then33
  %55 = load i32, ptr %ido, align 4
  %56 = load i32, ptr %l1, align 4
  %57 = load ptr, ptr %ch.addr, align 8
  %58 = load ptr, ptr %c.addr, align 8
  %59 = load ptr, ptr %wa.addr, align 8
  %60 = load i32, ptr %iw, align 4
  %idx.ext38 = sext i32 %60 to i64
  %add.ptr39 = getelementptr inbounds float, ptr %59, i64 %idx.ext38
  %add.ptr40 = getelementptr inbounds float, ptr %add.ptr39, i64 -1
  call void @dradf2(i32 noundef %55, i32 noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %add.ptr40)
  br label %L110

L104:                                             ; preds = %if.then30
  %61 = load i32, ptr %ido, align 4
  %cmp41 = icmp eq i32 %61, 1
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %L104
  %62 = load i32, ptr %na, align 4
  %sub43 = sub nsw i32 1, %62
  store i32 %sub43, ptr %na, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %L104
  %63 = load i32, ptr %na, align 4
  %cmp45 = icmp ne i32 %63, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end44
  br label %L109

if.end47:                                         ; preds = %if.end44
  %64 = load i32, ptr %ido, align 4
  %65 = load i32, ptr %ip, align 4
  %66 = load i32, ptr %l1, align 4
  %67 = load i32, ptr %idl1, align 4
  %68 = load ptr, ptr %c.addr, align 8
  %69 = load ptr, ptr %c.addr, align 8
  %70 = load ptr, ptr %c.addr, align 8
  %71 = load ptr, ptr %ch.addr, align 8
  %72 = load ptr, ptr %ch.addr, align 8
  %73 = load ptr, ptr %wa.addr, align 8
  %74 = load i32, ptr %iw, align 4
  %idx.ext48 = sext i32 %74 to i64
  %add.ptr49 = getelementptr inbounds float, ptr %73, i64 %idx.ext48
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr49, i64 -1
  call void @dradfg(i32 noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %add.ptr50)
  store i32 1, ptr %na, align 4
  br label %L110

L109:                                             ; preds = %if.then46
  %75 = load i32, ptr %ido, align 4
  %76 = load i32, ptr %ip, align 4
  %77 = load i32, ptr %l1, align 4
  %78 = load i32, ptr %idl1, align 4
  %79 = load ptr, ptr %ch.addr, align 8
  %80 = load ptr, ptr %ch.addr, align 8
  %81 = load ptr, ptr %ch.addr, align 8
  %82 = load ptr, ptr %c.addr, align 8
  %83 = load ptr, ptr %c.addr, align 8
  %84 = load ptr, ptr %wa.addr, align 8
  %85 = load i32, ptr %iw, align 4
  %idx.ext51 = sext i32 %85 to i64
  %add.ptr52 = getelementptr inbounds float, ptr %84, i64 %idx.ext51
  %add.ptr53 = getelementptr inbounds float, ptr %add.ptr52, i64 -1
  call void @dradfg(i32 noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %add.ptr53)
  store i32 0, ptr %na, align 4
  br label %L110

L110:                                             ; preds = %L109, %if.end47, %L103, %if.end34, %if.end28
  %86 = load i32, ptr %l1, align 4
  store i32 %86, ptr %l2, align 4
  br label %for.inc

for.inc:                                          ; preds = %L110
  %87 = load i32, ptr %k1, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, ptr %k1, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %88 = load i32, ptr %na, align 4
  %cmp54 = icmp eq i32 %88, 1
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.end
  br label %for.end66

if.end56:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc64, %if.end56
  %89 = load i32, ptr %i, align 4
  %90 = load i32, ptr %n.addr, align 4
  %cmp58 = icmp slt i32 %89, %90
  br i1 %cmp58, label %for.body59, label %for.end66

for.body59:                                       ; preds = %for.cond57
  %91 = load ptr, ptr %ch.addr, align 8
  %92 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %92 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %91, i64 %idxprom60
  %93 = load float, ptr %arrayidx61, align 4
  %94 = load ptr, ptr %c.addr, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %95 to i64
  %arrayidx63 = getelementptr inbounds float, ptr %94, i64 %idxprom62
  store float %93, ptr %arrayidx63, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %for.body59
  %96 = load i32, ptr %i, align 4
  %inc65 = add nsw i32 %96, 1
  store i32 %inc65, ptr %i, align 4
  br label %for.cond57, !llvm.loop !8

for.end66:                                        ; preds = %for.cond57, %if.then55
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @dradf4(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @dradf2(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @dradfg(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
