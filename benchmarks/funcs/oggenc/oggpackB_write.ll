; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

@mask = external hidden global [33 x i64], align 16

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_write(ptr noundef %b, i64 noundef %value, i32 noundef %bits) #1 {
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
  %16 = load i64, ptr %value.addr, align 8
  %17 = load i32, ptr %bits.addr, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [33 x i64], ptr @mask, i64 0, i64 %idxprom
  %18 = load i64, ptr %arrayidx, align 8
  %and = and i64 %16, %18
  %19 = load i32, ptr %bits.addr, align 4
  %sub = sub nsw i32 32, %19
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %and, %sh_prom
  store i64 %shl, ptr %value.addr, align 8
  %20 = load ptr, ptr %b.addr, align 8
  %endbit = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %endbit, align 8
  %22 = load i32, ptr %bits.addr, align 4
  %add8 = add nsw i32 %22, %21
  store i32 %add8, ptr %bits.addr, align 4
  %23 = load i64, ptr %value.addr, align 8
  %24 = load ptr, ptr %b.addr, align 8
  %endbit9 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %endbit9, align 8
  %add10 = add nsw i32 24, %25
  %sh_prom11 = zext i32 %add10 to i64
  %shr = lshr i64 %23, %sh_prom11
  %26 = load ptr, ptr %b.addr, align 8
  %ptr12 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %ptr12, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx13, align 1
  %conv = zext i8 %28 to i64
  %or = or i64 %conv, %shr
  %conv14 = trunc i64 %or to i8
  store i8 %conv14, ptr %arrayidx13, align 1
  %29 = load i32, ptr %bits.addr, align 4
  %cmp15 = icmp sge i32 %29, 8
  br i1 %cmp15, label %if.then17, label %if.end62

if.then17:                                        ; preds = %if.end
  %30 = load i64, ptr %value.addr, align 8
  %31 = load ptr, ptr %b.addr, align 8
  %endbit18 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %endbit18, align 8
  %add19 = add nsw i32 16, %32
  %sh_prom20 = zext i32 %add19 to i64
  %shr21 = lshr i64 %30, %sh_prom20
  %conv22 = trunc i64 %shr21 to i8
  %33 = load ptr, ptr %b.addr, align 8
  %ptr23 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %ptr23, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 %conv22, ptr %arrayidx24, align 1
  %35 = load i32, ptr %bits.addr, align 4
  %cmp25 = icmp sge i32 %35, 16
  br i1 %cmp25, label %if.then27, label %if.end61

if.then27:                                        ; preds = %if.then17
  %36 = load i64, ptr %value.addr, align 8
  %37 = load ptr, ptr %b.addr, align 8
  %endbit28 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %endbit28, align 8
  %add29 = add nsw i32 8, %38
  %sh_prom30 = zext i32 %add29 to i64
  %shr31 = lshr i64 %36, %sh_prom30
  %conv32 = trunc i64 %shr31 to i8
  %39 = load ptr, ptr %b.addr, align 8
  %ptr33 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %ptr33, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %40, i64 2
  store i8 %conv32, ptr %arrayidx34, align 1
  %41 = load i32, ptr %bits.addr, align 4
  %cmp35 = icmp sge i32 %41, 24
  br i1 %cmp35, label %if.then37, label %if.end60

if.then37:                                        ; preds = %if.then27
  %42 = load i64, ptr %value.addr, align 8
  %43 = load ptr, ptr %b.addr, align 8
  %endbit38 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %endbit38, align 8
  %sh_prom39 = zext i32 %44 to i64
  %shr40 = lshr i64 %42, %sh_prom39
  %conv41 = trunc i64 %shr40 to i8
  %45 = load ptr, ptr %b.addr, align 8
  %ptr42 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %45, i32 0, i32 3
  %46 = load ptr, ptr %ptr42, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %46, i64 3
  store i8 %conv41, ptr %arrayidx43, align 1
  %47 = load i32, ptr %bits.addr, align 4
  %cmp44 = icmp sge i32 %47, 32
  br i1 %cmp44, label %if.then46, label %if.end59

if.then46:                                        ; preds = %if.then37
  %48 = load ptr, ptr %b.addr, align 8
  %endbit47 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %endbit47, align 8
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then46
  %50 = load i64, ptr %value.addr, align 8
  %51 = load ptr, ptr %b.addr, align 8
  %endbit49 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %endbit49, align 8
  %sub50 = sub nsw i32 8, %52
  %sh_prom51 = zext i32 %sub50 to i64
  %shl52 = shl i64 %50, %sh_prom51
  %conv53 = trunc i64 %shl52 to i8
  %53 = load ptr, ptr %b.addr, align 8
  %ptr54 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %53, i32 0, i32 3
  %54 = load ptr, ptr %ptr54, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %54, i64 4
  store i8 %conv53, ptr %arrayidx55, align 1
  br label %if.end58

if.else:                                          ; preds = %if.then46
  %55 = load ptr, ptr %b.addr, align 8
  %ptr56 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %55, i32 0, i32 3
  %56 = load ptr, ptr %ptr56, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %56, i64 4
  store i8 0, ptr %arrayidx57, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then48
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then37
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then27
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then17
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end
  %57 = load i32, ptr %bits.addr, align 4
  %div = sdiv i32 %57, 8
  %conv63 = sext i32 %div to i64
  %58 = load ptr, ptr %b.addr, align 8
  %endbyte64 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %58, i32 0, i32 0
  %59 = load i64, ptr %endbyte64, align 8
  %add65 = add nsw i64 %59, %conv63
  store i64 %add65, ptr %endbyte64, align 8
  %60 = load i32, ptr %bits.addr, align 4
  %div66 = sdiv i32 %60, 8
  %61 = load ptr, ptr %b.addr, align 8
  %ptr67 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %61, i32 0, i32 3
  %62 = load ptr, ptr %ptr67, align 8
  %idx.ext = sext i32 %div66 to i64
  %add.ptr68 = getelementptr inbounds i8, ptr %62, i64 %idx.ext
  store ptr %add.ptr68, ptr %ptr67, align 8
  %63 = load i32, ptr %bits.addr, align 4
  %and69 = and i32 %63, 7
  %64 = load ptr, ptr %b.addr, align 8
  %endbit70 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %64, i32 0, i32 1
  store i32 %and69, ptr %endbit70, align 8
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
