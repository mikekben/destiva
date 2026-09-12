; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @bitreverse(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @decode_packed_entry_number(ptr noundef %book, ptr noundef %b) #0 {
entry:
  %retval = alloca i64, align 8
  %book.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %read = alloca i32, align 4
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %lok = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %testword = alloca i32, align 4
  %p = alloca i64, align 8
  %test = alloca i64, align 8
  store ptr %book, ptr %book.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %book.addr, align 8
  %dec_maxlength = getelementptr inbounds nuw %struct.codebook, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %dec_maxlength, align 4
  store i32 %1, ptr %read, align 4
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load ptr, ptr %book.addr, align 8
  %dec_firsttablen = getelementptr inbounds nuw %struct.codebook, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %dec_firsttablen, align 8
  %call = call i64 @oggpack_look(ptr noundef %2, i32 noundef %4)
  store i64 %call, ptr %lok, align 8
  %5 = load i64, ptr %lok, align 8
  %cmp = icmp sge i64 %5, 0
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %book.addr, align 8
  %dec_firsttable = getelementptr inbounds nuw %struct.codebook, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %dec_firsttable, align 8
  %8 = load i64, ptr %lok, align 8
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %8
  %9 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %9 to i64
  store i64 %conv, ptr %entry1, align 8
  %10 = load i64, ptr %entry1, align 8
  %and = and i64 %10, 2147483648
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %11 = load i64, ptr %entry1, align 8
  %shr = ashr i64 %11, 15
  %and3 = and i64 %shr, 32767
  store i64 %and3, ptr %lo, align 8
  %12 = load ptr, ptr %book.addr, align 8
  %used_entries = getelementptr inbounds nuw %struct.codebook, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %used_entries, align 8
  %14 = load i64, ptr %entry1, align 8
  %and4 = and i64 %14, 32767
  %sub = sub nsw i64 %13, %and4
  store i64 %sub, ptr %hi, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %b.addr, align 8
  %16 = load ptr, ptr %book.addr, align 8
  %dec_codelengths = getelementptr inbounds nuw %struct.codebook, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %dec_codelengths, align 8
  %18 = load i64, ptr %entry1, align 8
  %sub5 = sub nsw i64 %18, 1
  %arrayidx6 = getelementptr inbounds i8, ptr %17, i64 %sub5
  %19 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %19 to i32
  call void @oggpack_adv(ptr noundef %15, i32 noundef %conv7)
  %20 = load i64, ptr %entry1, align 8
  %sub8 = sub nsw i64 %20, 1
  store i64 %sub8, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end11

if.else9:                                         ; preds = %entry
  store i64 0, ptr %lo, align 8
  %21 = load ptr, ptr %book.addr, align 8
  %used_entries10 = getelementptr inbounds nuw %struct.codebook, ptr %21, i32 0, i32 2
  %22 = load i64, ptr %used_entries10, align 8
  store i64 %22, ptr %hi, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.end
  %23 = load ptr, ptr %b.addr, align 8
  %24 = load i32, ptr %read, align 4
  %call12 = call i64 @oggpack_look(ptr noundef %23, i32 noundef %24)
  store i64 %call12, ptr %lok, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end11
  %25 = load i64, ptr %lok, align 8
  %cmp13 = icmp slt i64 %25, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load i32, ptr %read, align 4
  %cmp15 = icmp sgt i32 %26, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load ptr, ptr %b.addr, align 8
  %29 = load i32, ptr %read, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %read, align 4
  %call17 = call i64 @oggpack_look(ptr noundef %28, i32 noundef %dec)
  store i64 %call17, ptr %lok, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %30 = load i64, ptr %lok, align 8
  %cmp18 = icmp slt i64 %30, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.end
  store i64 -1, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %while.end
  %31 = load i64, ptr %lok, align 8
  %conv22 = trunc i64 %31 to i32
  %call23 = call i32 @bitreverse(i32 noundef %conv22)
  store i32 %call23, ptr %testword, align 4
  br label %while.cond24

while.cond24:                                     ; preds = %while.body28, %if.end21
  %32 = load i64, ptr %hi, align 8
  %33 = load i64, ptr %lo, align 8
  %sub25 = sub nsw i64 %32, %33
  %cmp26 = icmp sgt i64 %sub25, 1
  br i1 %cmp26, label %while.body28, label %while.end41

while.body28:                                     ; preds = %while.cond24
  %34 = load i64, ptr %hi, align 8
  %35 = load i64, ptr %lo, align 8
  %sub29 = sub nsw i64 %34, %35
  %shr30 = ashr i64 %sub29, 1
  store i64 %shr30, ptr %p, align 8
  %36 = load ptr, ptr %book.addr, align 8
  %codelist = getelementptr inbounds nuw %struct.codebook, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %codelist, align 8
  %38 = load i64, ptr %lo, align 8
  %39 = load i64, ptr %p, align 8
  %add = add nsw i64 %38, %39
  %arrayidx31 = getelementptr inbounds i32, ptr %37, i64 %add
  %40 = load i32, ptr %arrayidx31, align 4
  %41 = load i32, ptr %testword, align 4
  %cmp32 = icmp ugt i32 %40, %41
  %conv33 = zext i1 %cmp32 to i32
  %conv34 = sext i32 %conv33 to i64
  store i64 %conv34, ptr %test, align 8
  %42 = load i64, ptr %p, align 8
  %43 = load i64, ptr %test, align 8
  %sub35 = sub nsw i64 %43, 1
  %and36 = and i64 %42, %sub35
  %44 = load i64, ptr %lo, align 8
  %add37 = add nsw i64 %44, %and36
  store i64 %add37, ptr %lo, align 8
  %45 = load i64, ptr %p, align 8
  %46 = load i64, ptr %test, align 8
  %sub38 = sub nsw i64 0, %46
  %and39 = and i64 %45, %sub38
  %47 = load i64, ptr %hi, align 8
  %sub40 = sub nsw i64 %47, %and39
  store i64 %sub40, ptr %hi, align 8
  br label %while.cond24, !llvm.loop !8

while.end41:                                      ; preds = %while.cond24
  %48 = load ptr, ptr %book.addr, align 8
  %dec_codelengths42 = getelementptr inbounds nuw %struct.codebook, ptr %48, i32 0, i32 7
  %49 = load ptr, ptr %dec_codelengths42, align 8
  %50 = load i64, ptr %lo, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %49, i64 %50
  %51 = load i8, ptr %arrayidx43, align 1
  %conv44 = sext i8 %51 to i32
  %52 = load i32, ptr %read, align 4
  %cmp45 = icmp sle i32 %conv44, %52
  br i1 %cmp45, label %if.then47, label %if.end51

if.then47:                                        ; preds = %while.end41
  %53 = load ptr, ptr %b.addr, align 8
  %54 = load ptr, ptr %book.addr, align 8
  %dec_codelengths48 = getelementptr inbounds nuw %struct.codebook, ptr %54, i32 0, i32 7
  %55 = load ptr, ptr %dec_codelengths48, align 8
  %56 = load i64, ptr %lo, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %55, i64 %56
  %57 = load i8, ptr %arrayidx49, align 1
  %conv50 = sext i8 %57 to i32
  call void @oggpack_adv(ptr noundef %53, i32 noundef %conv50)
  %58 = load i64, ptr %lo, align 8
  store i64 %58, ptr %retval, align 8
  br label %return

if.end51:                                         ; preds = %while.end41
  %59 = load ptr, ptr %b.addr, align 8
  %60 = load i32, ptr %read, align 4
  call void @oggpack_adv(ptr noundef %59, i32 noundef %60)
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end51, %if.then47, %if.then20, %if.else
  %61 = load i64, ptr %retval, align 8
  ret i64 %61
}

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_look(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_adv(ptr noundef, i32 noundef) #0

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
