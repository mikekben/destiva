; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i64 @decode_packed_entry_number(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @vorbis_book_decodev_add(ptr noundef %book, ptr noundef %a, ptr noundef %b, i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %book.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %entry1 = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %book, ptr %book.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %book.addr, align 8
  %dim = getelementptr inbounds nuw %struct.codebook, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %dim, align 8
  %cmp = icmp sgt i64 %1, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.then
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %book.addr, align 8
  %5 = load ptr, ptr %b.addr, align 8
  %call = call i64 @decode_packed_entry_number(ptr noundef %4, ptr noundef %5)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %entry1, align 4
  %6 = load i32, ptr %entry1, align 4
  %cmp3 = icmp eq i32 %6, -1
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %book.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %valuelist, align 8
  %9 = load i32, ptr %entry1, align 4
  %conv6 = sext i32 %9 to i64
  %10 = load ptr, ptr %book.addr, align 8
  %dim7 = getelementptr inbounds nuw %struct.codebook, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %dim7, align 8
  %mul = mul nsw i64 %conv6, %11
  %add.ptr = getelementptr inbounds float, ptr %8, i64 %mul
  store ptr %add.ptr, ptr %t, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.body13, %if.end
  %12 = load i32, ptr %j, align 4
  %conv9 = sext i32 %12 to i64
  %13 = load ptr, ptr %book.addr, align 8
  %dim10 = getelementptr inbounds nuw %struct.codebook, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %dim10, align 8
  %cmp11 = icmp slt i64 %conv9, %14
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond8
  %15 = load ptr, ptr %t, align 8
  %16 = load i32, ptr %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds float, ptr %15, i64 %idxprom
  %17 = load float, ptr %arrayidx, align 4
  %18 = load ptr, ptr %a.addr, align 8
  %19 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, ptr %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds float, ptr %18, i64 %idxprom15
  %20 = load float, ptr %arrayidx16, align 4
  %add = fadd float %20, %17
  store float %add, ptr %arrayidx16, align 4
  br label %for.cond8, !llvm.loop !6

for.end:                                          ; preds = %for.cond8
  br label %for.cond, !llvm.loop !8

for.end17:                                        ; preds = %for.cond
  br label %if.end100

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %sw.epilog, %if.else
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %n.addr, align 4
  %cmp19 = icmp slt i32 %21, %22
  br i1 %cmp19, label %for.body21, label %for.end99

for.body21:                                       ; preds = %for.cond18
  %23 = load ptr, ptr %book.addr, align 8
  %24 = load ptr, ptr %b.addr, align 8
  %call22 = call i64 @decode_packed_entry_number(ptr noundef %23, ptr noundef %24)
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, ptr %entry1, align 4
  %25 = load i32, ptr %entry1, align 4
  %cmp24 = icmp eq i32 %25, -1
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body21
  store i64 -1, ptr %retval, align 8
  br label %return

if.end27:                                         ; preds = %for.body21
  %26 = load ptr, ptr %book.addr, align 8
  %valuelist28 = getelementptr inbounds nuw %struct.codebook, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %valuelist28, align 8
  %28 = load i32, ptr %entry1, align 4
  %conv29 = sext i32 %28 to i64
  %29 = load ptr, ptr %book.addr, align 8
  %dim30 = getelementptr inbounds nuw %struct.codebook, ptr %29, i32 0, i32 0
  %30 = load i64, ptr %dim30, align 8
  %mul31 = mul nsw i64 %conv29, %30
  %add.ptr32 = getelementptr inbounds float, ptr %27, i64 %mul31
  store ptr %add.ptr32, ptr %t, align 8
  store i32 0, ptr %j, align 4
  %31 = load ptr, ptr %book.addr, align 8
  %dim33 = getelementptr inbounds nuw %struct.codebook, ptr %31, i32 0, i32 0
  %32 = load i64, ptr %dim33, align 8
  %conv34 = trunc i64 %32 to i32
  switch i32 %conv34, label %sw.epilog [
    i32 8, label %sw.bb
    i32 7, label %sw.bb42
    i32 6, label %sw.bb50
    i32 5, label %sw.bb58
    i32 4, label %sw.bb66
    i32 3, label %sw.bb74
    i32 2, label %sw.bb82
    i32 1, label %sw.bb90
    i32 0, label %sw.bb98
  ]

sw.bb:                                            ; preds = %if.end27
  %33 = load ptr, ptr %t, align 8
  %34 = load i32, ptr %j, align 4
  %inc35 = add nsw i32 %34, 1
  store i32 %inc35, ptr %j, align 4
  %idxprom36 = sext i32 %34 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %33, i64 %idxprom36
  %35 = load float, ptr %arrayidx37, align 4
  %36 = load ptr, ptr %a.addr, align 8
  %37 = load i32, ptr %i, align 4
  %inc38 = add nsw i32 %37, 1
  store i32 %inc38, ptr %i, align 4
  %idxprom39 = sext i32 %37 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %36, i64 %idxprom39
  %38 = load float, ptr %arrayidx40, align 4
  %add41 = fadd float %38, %35
  store float %add41, ptr %arrayidx40, align 4
  br label %sw.bb42

sw.bb42:                                          ; preds = %sw.bb, %if.end27
  %39 = load ptr, ptr %t, align 8
  %40 = load i32, ptr %j, align 4
  %inc43 = add nsw i32 %40, 1
  store i32 %inc43, ptr %j, align 4
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds float, ptr %39, i64 %idxprom44
  %41 = load float, ptr %arrayidx45, align 4
  %42 = load ptr, ptr %a.addr, align 8
  %43 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %43, 1
  store i32 %inc46, ptr %i, align 4
  %idxprom47 = sext i32 %43 to i64
  %arrayidx48 = getelementptr inbounds float, ptr %42, i64 %idxprom47
  %44 = load float, ptr %arrayidx48, align 4
  %add49 = fadd float %44, %41
  store float %add49, ptr %arrayidx48, align 4
  br label %sw.bb50

sw.bb50:                                          ; preds = %sw.bb42, %if.end27
  %45 = load ptr, ptr %t, align 8
  %46 = load i32, ptr %j, align 4
  %inc51 = add nsw i32 %46, 1
  store i32 %inc51, ptr %j, align 4
  %idxprom52 = sext i32 %46 to i64
  %arrayidx53 = getelementptr inbounds float, ptr %45, i64 %idxprom52
  %47 = load float, ptr %arrayidx53, align 4
  %48 = load ptr, ptr %a.addr, align 8
  %49 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %49, 1
  store i32 %inc54, ptr %i, align 4
  %idxprom55 = sext i32 %49 to i64
  %arrayidx56 = getelementptr inbounds float, ptr %48, i64 %idxprom55
  %50 = load float, ptr %arrayidx56, align 4
  %add57 = fadd float %50, %47
  store float %add57, ptr %arrayidx56, align 4
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb50, %if.end27
  %51 = load ptr, ptr %t, align 8
  %52 = load i32, ptr %j, align 4
  %inc59 = add nsw i32 %52, 1
  store i32 %inc59, ptr %j, align 4
  %idxprom60 = sext i32 %52 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %51, i64 %idxprom60
  %53 = load float, ptr %arrayidx61, align 4
  %54 = load ptr, ptr %a.addr, align 8
  %55 = load i32, ptr %i, align 4
  %inc62 = add nsw i32 %55, 1
  store i32 %inc62, ptr %i, align 4
  %idxprom63 = sext i32 %55 to i64
  %arrayidx64 = getelementptr inbounds float, ptr %54, i64 %idxprom63
  %56 = load float, ptr %arrayidx64, align 4
  %add65 = fadd float %56, %53
  store float %add65, ptr %arrayidx64, align 4
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb58, %if.end27
  %57 = load ptr, ptr %t, align 8
  %58 = load i32, ptr %j, align 4
  %inc67 = add nsw i32 %58, 1
  store i32 %inc67, ptr %j, align 4
  %idxprom68 = sext i32 %58 to i64
  %arrayidx69 = getelementptr inbounds float, ptr %57, i64 %idxprom68
  %59 = load float, ptr %arrayidx69, align 4
  %60 = load ptr, ptr %a.addr, align 8
  %61 = load i32, ptr %i, align 4
  %inc70 = add nsw i32 %61, 1
  store i32 %inc70, ptr %i, align 4
  %idxprom71 = sext i32 %61 to i64
  %arrayidx72 = getelementptr inbounds float, ptr %60, i64 %idxprom71
  %62 = load float, ptr %arrayidx72, align 4
  %add73 = fadd float %62, %59
  store float %add73, ptr %arrayidx72, align 4
  br label %sw.bb74

sw.bb74:                                          ; preds = %sw.bb66, %if.end27
  %63 = load ptr, ptr %t, align 8
  %64 = load i32, ptr %j, align 4
  %inc75 = add nsw i32 %64, 1
  store i32 %inc75, ptr %j, align 4
  %idxprom76 = sext i32 %64 to i64
  %arrayidx77 = getelementptr inbounds float, ptr %63, i64 %idxprom76
  %65 = load float, ptr %arrayidx77, align 4
  %66 = load ptr, ptr %a.addr, align 8
  %67 = load i32, ptr %i, align 4
  %inc78 = add nsw i32 %67, 1
  store i32 %inc78, ptr %i, align 4
  %idxprom79 = sext i32 %67 to i64
  %arrayidx80 = getelementptr inbounds float, ptr %66, i64 %idxprom79
  %68 = load float, ptr %arrayidx80, align 4
  %add81 = fadd float %68, %65
  store float %add81, ptr %arrayidx80, align 4
  br label %sw.bb82

sw.bb82:                                          ; preds = %sw.bb74, %if.end27
  %69 = load ptr, ptr %t, align 8
  %70 = load i32, ptr %j, align 4
  %inc83 = add nsw i32 %70, 1
  store i32 %inc83, ptr %j, align 4
  %idxprom84 = sext i32 %70 to i64
  %arrayidx85 = getelementptr inbounds float, ptr %69, i64 %idxprom84
  %71 = load float, ptr %arrayidx85, align 4
  %72 = load ptr, ptr %a.addr, align 8
  %73 = load i32, ptr %i, align 4
  %inc86 = add nsw i32 %73, 1
  store i32 %inc86, ptr %i, align 4
  %idxprom87 = sext i32 %73 to i64
  %arrayidx88 = getelementptr inbounds float, ptr %72, i64 %idxprom87
  %74 = load float, ptr %arrayidx88, align 4
  %add89 = fadd float %74, %71
  store float %add89, ptr %arrayidx88, align 4
  br label %sw.bb90

sw.bb90:                                          ; preds = %sw.bb82, %if.end27
  %75 = load ptr, ptr %t, align 8
  %76 = load i32, ptr %j, align 4
  %inc91 = add nsw i32 %76, 1
  store i32 %inc91, ptr %j, align 4
  %idxprom92 = sext i32 %76 to i64
  %arrayidx93 = getelementptr inbounds float, ptr %75, i64 %idxprom92
  %77 = load float, ptr %arrayidx93, align 4
  %78 = load ptr, ptr %a.addr, align 8
  %79 = load i32, ptr %i, align 4
  %inc94 = add nsw i32 %79, 1
  store i32 %inc94, ptr %i, align 4
  %idxprom95 = sext i32 %79 to i64
  %arrayidx96 = getelementptr inbounds float, ptr %78, i64 %idxprom95
  %80 = load float, ptr %arrayidx96, align 4
  %add97 = fadd float %80, %77
  store float %add97, ptr %arrayidx96, align 4
  br label %sw.bb98

sw.bb98:                                          ; preds = %sw.bb90, %if.end27
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb98, %if.end27
  br label %for.cond18, !llvm.loop !9

for.end99:                                        ; preds = %for.cond18
  br label %if.end100

if.end100:                                        ; preds = %for.end99, %for.end17
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end100, %if.then26, %if.then5
  %81 = load i64, ptr %retval, align 8
  ret i64 %81
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
!9 = distinct !{!9, !7}
