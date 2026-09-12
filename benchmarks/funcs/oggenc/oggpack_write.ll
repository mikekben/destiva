; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

@mask = external hidden global [33 x i64], align 16

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_write(ptr noundef %b, i64 noundef %value, i32 noundef %bits) #1 {
entry:
  %b.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store i64 %value, ptr %value.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  %0 = load ptr, ptr %b.addr, align 8
  %endbyte = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %endbyte, align 8
  %add = add nsw i64 %1, 4
  %2 = load ptr, ptr %b.addr, align 8
  %storage = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %2, i32 0, i32 4
  %3 = load i64, ptr %storage, align 8
  %cmp = icmp sge i64 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %b.addr, align 8
  %buffer = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %buffer, align 8
  %6 = load ptr, ptr %b.addr, align 8
  %storage1 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %6, i32 0, i32 4
  %7 = load i64, ptr %storage1, align 8
  %add2 = add nsw i64 %7, 256
  %call = call ptr @realloc(ptr noundef %5, i64 noundef %add2) #2
  %8 = load ptr, ptr %b.addr, align 8
  %buffer3 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %8, i32 0, i32 2
  store ptr %call, ptr %buffer3, align 8
  %9 = load ptr, ptr %b.addr, align 8
  %storage4 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %9, i32 0, i32 4
  %10 = load i64, ptr %storage4, align 8
  %add5 = add nsw i64 %10, 256
  store i64 %add5, ptr %storage4, align 8
  %11 = load ptr, ptr %b.addr, align 8
  %buffer6 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %buffer6, align 8
  %13 = load ptr, ptr %b.addr, align 8
  %endbyte7 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %endbyte7, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %14
  %15 = load ptr, ptr %b.addr, align 8
  %ptr = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %15, i32 0, i32 3
  store ptr %add.ptr, ptr %ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, ptr %bits.addr, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom
  %17 = load i64, ptr %arrayidx, align 8
  %18 = load i64, ptr %value.addr, align 8
  %and = and i64 %18, %17
  store i64 %and, ptr %value.addr, align 8
  %19 = load ptr, ptr %b.addr, align 8
  %endbit = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %endbit, align 8
  %21 = load i32, ptr %bits.addr, align 4
  %add8 = add nsw i32 %21, %20
  store i32 %add8, ptr %bits.addr, align 4
  %22 = load i64, ptr %value.addr, align 8
  %23 = load ptr, ptr %b.addr, align 8
  %endbit9 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %endbit9, align 8
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 %22, %sh_prom
  %25 = load ptr, ptr %b.addr, align 8
  %ptr10 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %ptr10, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx11, align 1
  %conv = zext i8 %27 to i64
  %or = or i64 %conv, %shl
  %conv12 = trunc i64 %or to i8
  store i8 %conv12, ptr %arrayidx11, align 1
  %28 = load i32, ptr %bits.addr, align 4
  %cmp13 = icmp sge i32 %28, 8
  br i1 %cmp13, label %if.then15, label %if.end59

if.then15:                                        ; preds = %if.end
  %29 = load i64, ptr %value.addr, align 8
  %30 = load ptr, ptr %b.addr, align 8
  %endbit16 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %endbit16, align 8
  %sub = sub nsw i32 8, %31
  %sh_prom17 = zext i32 %sub to i64
  %shr = lshr i64 %29, %sh_prom17
  %conv18 = trunc i64 %shr to i8
  %32 = load ptr, ptr %b.addr, align 8
  %ptr19 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %ptr19, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %conv18, ptr %arrayidx20, align 1
  %34 = load i32, ptr %bits.addr, align 4
  %cmp21 = icmp sge i32 %34, 16
  br i1 %cmp21, label %if.then23, label %if.end58

if.then23:                                        ; preds = %if.then15
  %35 = load i64, ptr %value.addr, align 8
  %36 = load ptr, ptr %b.addr, align 8
  %endbit24 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %endbit24, align 8
  %sub25 = sub nsw i32 16, %37
  %sh_prom26 = zext i32 %sub25 to i64
  %shr27 = lshr i64 %35, %sh_prom26
  %conv28 = trunc i64 %shr27 to i8
  %38 = load ptr, ptr %b.addr, align 8
  %ptr29 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %ptr29, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %39, i64 2
  store i8 %conv28, ptr %arrayidx30, align 1
  %40 = load i32, ptr %bits.addr, align 4
  %cmp31 = icmp sge i32 %40, 24
  br i1 %cmp31, label %if.then33, label %if.end57

if.then33:                                        ; preds = %if.then23
  %41 = load i64, ptr %value.addr, align 8
  %42 = load ptr, ptr %b.addr, align 8
  %endbit34 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %endbit34, align 8
  %sub35 = sub nsw i32 24, %43
  %sh_prom36 = zext i32 %sub35 to i64
  %shr37 = lshr i64 %41, %sh_prom36
  %conv38 = trunc i64 %shr37 to i8
  %44 = load ptr, ptr %b.addr, align 8
  %ptr39 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %44, i32 0, i32 3
  %45 = load ptr, ptr %ptr39, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %45, i64 3
  store i8 %conv38, ptr %arrayidx40, align 1
  %46 = load i32, ptr %bits.addr, align 4
  %cmp41 = icmp sge i32 %46, 32
  br i1 %cmp41, label %if.then43, label %if.end56

if.then43:                                        ; preds = %if.then33
  %47 = load ptr, ptr %b.addr, align 8
  %endbit44 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %endbit44, align 8
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.then43
  %49 = load i64, ptr %value.addr, align 8
  %50 = load ptr, ptr %b.addr, align 8
  %endbit46 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %endbit46, align 8
  %sub47 = sub nsw i32 32, %51
  %sh_prom48 = zext i32 %sub47 to i64
  %shr49 = lshr i64 %49, %sh_prom48
  %conv50 = trunc i64 %shr49 to i8
  %52 = load ptr, ptr %b.addr, align 8
  %ptr51 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %ptr51, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %53, i64 4
  store i8 %conv50, ptr %arrayidx52, align 1
  br label %if.end55

if.else:                                          ; preds = %if.then43
  %54 = load ptr, ptr %b.addr, align 8
  %ptr53 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %ptr53, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %55, i64 4
  store i8 0, ptr %arrayidx54, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then45
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then33
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then23
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then15
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end
  %56 = load i32, ptr %bits.addr, align 4
  %div = sdiv i32 %56, 8
  %conv60 = sext i32 %div to i64
  %57 = load ptr, ptr %b.addr, align 8
  %endbyte61 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %57, i32 0, i32 0
  %58 = load i64, ptr %endbyte61, align 8
  %add62 = add nsw i64 %58, %conv60
  store i64 %add62, ptr %endbyte61, align 8
  %59 = load i32, ptr %bits.addr, align 4
  %div63 = sdiv i32 %59, 8
  %60 = load ptr, ptr %b.addr, align 8
  %ptr64 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %60, i32 0, i32 3
  %61 = load ptr, ptr %ptr64, align 8
  %idx.ext = sext i32 %div63 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %61, i64 %idx.ext
  store ptr %add.ptr65, ptr %ptr64, align 8
  %62 = load i32, ptr %bits.addr, align 4
  %and66 = and i32 %62, 7
  %63 = load ptr, ptr %b.addr, align 8
  %endbit67 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %63, i32 0, i32 1
  store i32 %and66, ptr %endbit67, align 8
  ret void
}

attributes #0 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
