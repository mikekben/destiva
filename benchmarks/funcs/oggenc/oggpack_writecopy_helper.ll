; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @oggpack_writecopy_helper(ptr noundef %b, ptr noundef %source, i64 noundef %bits, ptr noundef %w, i32 noundef %msb) #2 {
entry:
  %b.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  %w.addr = alloca ptr, align 8
  %msb.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %bytes = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  store i64 %bits, ptr %bits.addr, align 8
  store ptr %w, ptr %w.addr, align 8
  store i32 %msb, ptr %msb.addr, align 4
  %0 = load ptr, ptr %source.addr, align 8
  store ptr %0, ptr %ptr, align 8
  %1 = load i64, ptr %bits.addr, align 8
  %div = sdiv i64 %1, 8
  store i64 %div, ptr %bytes, align 8
  %2 = load i64, ptr %bytes, align 8
  %mul = mul nsw i64 %2, 8
  %3 = load i64, ptr %bits.addr, align 8
  %sub = sub nsw i64 %3, %mul
  store i64 %sub, ptr %bits.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %endbit = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %endbit, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, ptr %i, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, ptr %bytes, align 8
  %cmp = icmp slt i64 %conv, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %w.addr, align 8
  %9 = load ptr, ptr %b.addr, align 8
  %10 = load ptr, ptr %ptr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %12 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %12 to i64
  call void %8(ptr noundef %9, i64 noundef %conv2, i32 noundef 8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end22

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %b.addr, align 8
  %endbyte = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %endbyte, align 8
  %16 = load i64, ptr %bytes, align 8
  %add = add nsw i64 %15, %16
  %add3 = add nsw i64 %add, 1
  %17 = load ptr, ptr %b.addr, align 8
  %storage = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %17, i32 0, i32 4
  %18 = load i64, ptr %storage, align 8
  %cmp4 = icmp sge i64 %add3, %18
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %19 = load ptr, ptr %b.addr, align 8
  %endbyte7 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %endbyte7, align 8
  %21 = load i64, ptr %bytes, align 8
  %add8 = add nsw i64 %20, %21
  %add9 = add nsw i64 %add8, 256
  %22 = load ptr, ptr %b.addr, align 8
  %storage10 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %22, i32 0, i32 4
  store i64 %add9, ptr %storage10, align 8
  %23 = load ptr, ptr %b.addr, align 8
  %buffer = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %buffer, align 8
  %25 = load ptr, ptr %b.addr, align 8
  %storage11 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %25, i32 0, i32 4
  %26 = load i64, ptr %storage11, align 8
  %call = call ptr @realloc(ptr noundef %24, i64 noundef %26) #3
  %27 = load ptr, ptr %b.addr, align 8
  %buffer12 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %27, i32 0, i32 2
  store ptr %call, ptr %buffer12, align 8
  %28 = load ptr, ptr %b.addr, align 8
  %buffer13 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %buffer13, align 8
  %30 = load ptr, ptr %b.addr, align 8
  %endbyte14 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %30, i32 0, i32 0
  %31 = load i64, ptr %endbyte14, align 8
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 %31
  %32 = load ptr, ptr %b.addr, align 8
  %ptr15 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %32, i32 0, i32 3
  store ptr %add.ptr, ptr %ptr15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  %33 = load ptr, ptr %b.addr, align 8
  %ptr16 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %ptr16, align 8
  %35 = load ptr, ptr %source.addr, align 8
  %36 = load i64, ptr %bytes, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %34, ptr align 1 %35, i64 %36, i1 false)
  %37 = load i64, ptr %bytes, align 8
  %38 = load ptr, ptr %b.addr, align 8
  %ptr17 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %ptr17, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %39, i64 %37
  store ptr %add.ptr18, ptr %ptr17, align 8
  %40 = load i64, ptr %bytes, align 8
  %41 = load ptr, ptr %b.addr, align 8
  %buffer19 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %buffer19, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %42, i64 %40
  store ptr %add.ptr20, ptr %buffer19, align 8
  %43 = load ptr, ptr %b.addr, align 8
  %ptr21 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %43, i32 0, i32 3
  %44 = load ptr, ptr %ptr21, align 8
  store i8 0, ptr %44, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end, %for.end
  %45 = load i64, ptr %bits.addr, align 8
  %tobool23 = icmp ne i64 %45, 0
  br i1 %tobool23, label %if.then24, label %if.end37

if.then24:                                        ; preds = %if.end22
  %46 = load i32, ptr %msb.addr, align 4
  %tobool25 = icmp ne i32 %46, 0
  br i1 %tobool25, label %if.then26, label %if.else32

if.then26:                                        ; preds = %if.then24
  %47 = load ptr, ptr %w.addr, align 8
  %48 = load ptr, ptr %b.addr, align 8
  %49 = load ptr, ptr %ptr, align 8
  %50 = load i64, ptr %bytes, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %49, i64 %50
  %51 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %51 to i32
  %52 = load i64, ptr %bits.addr, align 8
  %sub29 = sub nsw i64 8, %52
  %sh_prom = trunc i64 %sub29 to i32
  %shr = ashr i32 %conv28, %sh_prom
  %conv30 = sext i32 %shr to i64
  %53 = load i64, ptr %bits.addr, align 8
  %conv31 = trunc i64 %53 to i32
  call void %47(ptr noundef %48, i64 noundef %conv30, i32 noundef %conv31)
  br label %if.end36

if.else32:                                        ; preds = %if.then24
  %54 = load ptr, ptr %w.addr, align 8
  %55 = load ptr, ptr %b.addr, align 8
  %56 = load ptr, ptr %ptr, align 8
  %57 = load i64, ptr %bytes, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %56, i64 %57
  %58 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %58 to i64
  %59 = load i64, ptr %bits.addr, align 8
  %conv35 = trunc i64 %59 to i32
  call void %54(ptr noundef %55, i64 noundef %conv34, i32 noundef %conv35)
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then26
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end22
  ret void
}

attributes #0 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(1) }

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
