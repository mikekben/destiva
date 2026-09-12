; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @drftb1(i32 noundef %n, ptr noundef %c, ptr noundef %ch, ptr noundef %wa, ptr noundef %ifac) #0 {
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
  %nf = alloca i32, align 4
  %ip = alloca i32, align 4
  %iw = alloca i32, align 4
  %ix2 = alloca i32, align 4
  %ix3 = alloca i32, align 4
  %ido = alloca i32, align 4
  %idl1 = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %c, ptr %c.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  store ptr %wa, ptr %wa.addr, align 8
  store ptr %ifac, ptr %ifac.addr, align 8
  %0 = load ptr, ptr %ifac.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %nf, align 4
  store i32 0, ptr %na, align 4
  store i32 1, ptr %l1, align 4
  store i32 1, ptr %iw, align 4
  store i32 0, ptr %k1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %k1, align 4
  %3 = load i32, ptr %nf, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %ifac.addr, align 8
  %5 = load i32, ptr %k1, align 4
  %add = add nsw i32 %5, 2
  %idxprom = sext i32 %add to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx1, align 4
  store i32 %6, ptr %ip, align 4
  %7 = load i32, ptr %ip, align 4
  %8 = load i32, ptr %l1, align 4
  %mul = mul nsw i32 %7, %8
  store i32 %mul, ptr %l2, align 4
  %9 = load i32, ptr %n.addr, align 4
  %10 = load i32, ptr %l2, align 4
  %div = sdiv i32 %9, %10
  store i32 %div, ptr %ido, align 4
  %11 = load i32, ptr %ido, align 4
  %12 = load i32, ptr %l1, align 4
  %mul2 = mul nsw i32 %11, %12
  store i32 %mul2, ptr %idl1, align 4
  %13 = load i32, ptr %ip, align 4
  %cmp3 = icmp ne i32 %13, 4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %L103

if.end:                                           ; preds = %for.body
  %14 = load i32, ptr %iw, align 4
  %15 = load i32, ptr %ido, align 4
  %add4 = add nsw i32 %14, %15
  store i32 %add4, ptr %ix2, align 4
  %16 = load i32, ptr %ix2, align 4
  %17 = load i32, ptr %ido, align 4
  %add5 = add nsw i32 %16, %17
  store i32 %add5, ptr %ix3, align 4
  %18 = load i32, ptr %na, align 4
  %cmp6 = icmp ne i32 %18, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %19 = load i32, ptr %ido, align 4
  %20 = load i32, ptr %l1, align 4
  %21 = load ptr, ptr %ch.addr, align 8
  %22 = load ptr, ptr %c.addr, align 8
  %23 = load ptr, ptr %wa.addr, align 8
  %24 = load i32, ptr %iw, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds float, ptr %23, i64 %idx.ext
  %add.ptr8 = getelementptr inbounds float, ptr %add.ptr, i64 -1
  %25 = load ptr, ptr %wa.addr, align 8
  %26 = load i32, ptr %ix2, align 4
  %idx.ext9 = sext i32 %26 to i64
  %add.ptr10 = getelementptr inbounds float, ptr %25, i64 %idx.ext9
  %add.ptr11 = getelementptr inbounds float, ptr %add.ptr10, i64 -1
  %27 = load ptr, ptr %wa.addr, align 8
  %28 = load i32, ptr %ix3, align 4
  %idx.ext12 = sext i32 %28 to i64
  %add.ptr13 = getelementptr inbounds float, ptr %27, i64 %idx.ext12
  %add.ptr14 = getelementptr inbounds float, ptr %add.ptr13, i64 -1
  call void @dradb4(i32 noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %add.ptr8, ptr noundef %add.ptr11, ptr noundef %add.ptr14)
  br label %if.end24

if.else:                                          ; preds = %if.end
  %29 = load i32, ptr %ido, align 4
  %30 = load i32, ptr %l1, align 4
  %31 = load ptr, ptr %c.addr, align 8
  %32 = load ptr, ptr %ch.addr, align 8
  %33 = load ptr, ptr %wa.addr, align 8
  %34 = load i32, ptr %iw, align 4
  %idx.ext15 = sext i32 %34 to i64
  %add.ptr16 = getelementptr inbounds float, ptr %33, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr16, i64 -1
  %35 = load ptr, ptr %wa.addr, align 8
  %36 = load i32, ptr %ix2, align 4
  %idx.ext18 = sext i32 %36 to i64
  %add.ptr19 = getelementptr inbounds float, ptr %35, i64 %idx.ext18
  %add.ptr20 = getelementptr inbounds float, ptr %add.ptr19, i64 -1
  %37 = load ptr, ptr %wa.addr, align 8
  %38 = load i32, ptr %ix3, align 4
  %idx.ext21 = sext i32 %38 to i64
  %add.ptr22 = getelementptr inbounds float, ptr %37, i64 %idx.ext21
  %add.ptr23 = getelementptr inbounds float, ptr %add.ptr22, i64 -1
  call void @dradb4(i32 noundef %29, i32 noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %add.ptr17, ptr noundef %add.ptr20, ptr noundef %add.ptr23)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then7
  %39 = load i32, ptr %na, align 4
  %sub = sub nsw i32 1, %39
  store i32 %sub, ptr %na, align 4
  br label %L115

L103:                                             ; preds = %if.then
  %40 = load i32, ptr %ip, align 4
  %cmp25 = icmp ne i32 %40, 2
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %L103
  br label %L106

if.end27:                                         ; preds = %L103
  %41 = load i32, ptr %na, align 4
  %cmp28 = icmp ne i32 %41, 0
  br i1 %cmp28, label %if.then29, label %if.else33

if.then29:                                        ; preds = %if.end27
  %42 = load i32, ptr %ido, align 4
  %43 = load i32, ptr %l1, align 4
  %44 = load ptr, ptr %ch.addr, align 8
  %45 = load ptr, ptr %c.addr, align 8
  %46 = load ptr, ptr %wa.addr, align 8
  %47 = load i32, ptr %iw, align 4
  %idx.ext30 = sext i32 %47 to i64
  %add.ptr31 = getelementptr inbounds float, ptr %46, i64 %idx.ext30
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr31, i64 -1
  call void @dradb2(i32 noundef %42, i32 noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %add.ptr32)
  br label %if.end37

if.else33:                                        ; preds = %if.end27
  %48 = load i32, ptr %ido, align 4
  %49 = load i32, ptr %l1, align 4
  %50 = load ptr, ptr %c.addr, align 8
  %51 = load ptr, ptr %ch.addr, align 8
  %52 = load ptr, ptr %wa.addr, align 8
  %53 = load i32, ptr %iw, align 4
  %idx.ext34 = sext i32 %53 to i64
  %add.ptr35 = getelementptr inbounds float, ptr %52, i64 %idx.ext34
  %add.ptr36 = getelementptr inbounds float, ptr %add.ptr35, i64 -1
  call void @dradb2(i32 noundef %48, i32 noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %add.ptr36)
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %if.then29
  %54 = load i32, ptr %na, align 4
  %sub38 = sub nsw i32 1, %54
  store i32 %sub38, ptr %na, align 4
  br label %L115

L106:                                             ; preds = %if.then26
  %55 = load i32, ptr %ip, align 4
  %cmp39 = icmp ne i32 %55, 3
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %L106
  br label %L109

if.end41:                                         ; preds = %L106
  %56 = load i32, ptr %iw, align 4
  %57 = load i32, ptr %ido, align 4
  %add42 = add nsw i32 %56, %57
  store i32 %add42, ptr %ix2, align 4
  %58 = load i32, ptr %na, align 4
  %cmp43 = icmp ne i32 %58, 0
  br i1 %cmp43, label %if.then44, label %if.else51

if.then44:                                        ; preds = %if.end41
  %59 = load i32, ptr %ido, align 4
  %60 = load i32, ptr %l1, align 4
  %61 = load ptr, ptr %ch.addr, align 8
  %62 = load ptr, ptr %c.addr, align 8
  %63 = load ptr, ptr %wa.addr, align 8
  %64 = load i32, ptr %iw, align 4
  %idx.ext45 = sext i32 %64 to i64
  %add.ptr46 = getelementptr inbounds float, ptr %63, i64 %idx.ext45
  %add.ptr47 = getelementptr inbounds float, ptr %add.ptr46, i64 -1
  %65 = load ptr, ptr %wa.addr, align 8
  %66 = load i32, ptr %ix2, align 4
  %idx.ext48 = sext i32 %66 to i64
  %add.ptr49 = getelementptr inbounds float, ptr %65, i64 %idx.ext48
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr49, i64 -1
  call void @dradb3(i32 noundef %59, i32 noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %add.ptr47, ptr noundef %add.ptr50)
  br label %if.end58

if.else51:                                        ; preds = %if.end41
  %67 = load i32, ptr %ido, align 4
  %68 = load i32, ptr %l1, align 4
  %69 = load ptr, ptr %c.addr, align 8
  %70 = load ptr, ptr %ch.addr, align 8
  %71 = load ptr, ptr %wa.addr, align 8
  %72 = load i32, ptr %iw, align 4
  %idx.ext52 = sext i32 %72 to i64
  %add.ptr53 = getelementptr inbounds float, ptr %71, i64 %idx.ext52
  %add.ptr54 = getelementptr inbounds float, ptr %add.ptr53, i64 -1
  %73 = load ptr, ptr %wa.addr, align 8
  %74 = load i32, ptr %ix2, align 4
  %idx.ext55 = sext i32 %74 to i64
  %add.ptr56 = getelementptr inbounds float, ptr %73, i64 %idx.ext55
  %add.ptr57 = getelementptr inbounds float, ptr %add.ptr56, i64 -1
  call void @dradb3(i32 noundef %67, i32 noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %add.ptr54, ptr noundef %add.ptr57)
  br label %if.end58

if.end58:                                         ; preds = %if.else51, %if.then44
  %75 = load i32, ptr %na, align 4
  %sub59 = sub nsw i32 1, %75
  store i32 %sub59, ptr %na, align 4
  br label %L115

L109:                                             ; preds = %if.then40
  %76 = load i32, ptr %na, align 4
  %cmp60 = icmp ne i32 %76, 0
  br i1 %cmp60, label %if.then61, label %if.else65

if.then61:                                        ; preds = %L109
  %77 = load i32, ptr %ido, align 4
  %78 = load i32, ptr %ip, align 4
  %79 = load i32, ptr %l1, align 4
  %80 = load i32, ptr %idl1, align 4
  %81 = load ptr, ptr %ch.addr, align 8
  %82 = load ptr, ptr %ch.addr, align 8
  %83 = load ptr, ptr %ch.addr, align 8
  %84 = load ptr, ptr %c.addr, align 8
  %85 = load ptr, ptr %c.addr, align 8
  %86 = load ptr, ptr %wa.addr, align 8
  %87 = load i32, ptr %iw, align 4
  %idx.ext62 = sext i32 %87 to i64
  %add.ptr63 = getelementptr inbounds float, ptr %86, i64 %idx.ext62
  %add.ptr64 = getelementptr inbounds float, ptr %add.ptr63, i64 -1
  call void @dradbg(i32 noundef %77, i32 noundef %78, i32 noundef %79, i32 noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef %add.ptr64)
  br label %if.end69

if.else65:                                        ; preds = %L109
  %88 = load i32, ptr %ido, align 4
  %89 = load i32, ptr %ip, align 4
  %90 = load i32, ptr %l1, align 4
  %91 = load i32, ptr %idl1, align 4
  %92 = load ptr, ptr %c.addr, align 8
  %93 = load ptr, ptr %c.addr, align 8
  %94 = load ptr, ptr %c.addr, align 8
  %95 = load ptr, ptr %ch.addr, align 8
  %96 = load ptr, ptr %ch.addr, align 8
  %97 = load ptr, ptr %wa.addr, align 8
  %98 = load i32, ptr %iw, align 4
  %idx.ext66 = sext i32 %98 to i64
  %add.ptr67 = getelementptr inbounds float, ptr %97, i64 %idx.ext66
  %add.ptr68 = getelementptr inbounds float, ptr %add.ptr67, i64 -1
  call void @dradbg(i32 noundef %88, i32 noundef %89, i32 noundef %90, i32 noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %add.ptr68)
  br label %if.end69

if.end69:                                         ; preds = %if.else65, %if.then61
  %99 = load i32, ptr %ido, align 4
  %cmp70 = icmp eq i32 %99, 1
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end69
  %100 = load i32, ptr %na, align 4
  %sub72 = sub nsw i32 1, %100
  store i32 %sub72, ptr %na, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end69
  br label %L115

L115:                                             ; preds = %if.end73, %if.end58, %if.end37, %if.end24
  %101 = load i32, ptr %l2, align 4
  store i32 %101, ptr %l1, align 4
  %102 = load i32, ptr %ip, align 4
  %sub74 = sub nsw i32 %102, 1
  %103 = load i32, ptr %ido, align 4
  %mul75 = mul nsw i32 %sub74, %103
  %104 = load i32, ptr %iw, align 4
  %add76 = add nsw i32 %104, %mul75
  store i32 %add76, ptr %iw, align 4
  br label %for.inc

for.inc:                                          ; preds = %L115
  %105 = load i32, ptr %k1, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, ptr %k1, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %106 = load i32, ptr %na, align 4
  %cmp77 = icmp eq i32 %106, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %for.end
  br label %for.end89

if.end79:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc87, %if.end79
  %107 = load i32, ptr %i, align 4
  %108 = load i32, ptr %n.addr, align 4
  %cmp81 = icmp slt i32 %107, %108
  br i1 %cmp81, label %for.body82, label %for.end89

for.body82:                                       ; preds = %for.cond80
  %109 = load ptr, ptr %ch.addr, align 8
  %110 = load i32, ptr %i, align 4
  %idxprom83 = sext i32 %110 to i64
  %arrayidx84 = getelementptr inbounds float, ptr %109, i64 %idxprom83
  %111 = load float, ptr %arrayidx84, align 4
  %112 = load ptr, ptr %c.addr, align 8
  %113 = load i32, ptr %i, align 4
  %idxprom85 = sext i32 %113 to i64
  %arrayidx86 = getelementptr inbounds float, ptr %112, i64 %idxprom85
  store float %111, ptr %arrayidx86, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %for.body82
  %114 = load i32, ptr %i, align 4
  %inc88 = add nsw i32 %114, 1
  store i32 %inc88, ptr %i, align 4
  br label %for.cond80, !llvm.loop !8

for.end89:                                        ; preds = %for.cond80, %if.then78
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @dradb4(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @dradb2(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @dradb3(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @dradbg(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
