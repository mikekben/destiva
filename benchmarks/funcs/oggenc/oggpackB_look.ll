; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpackB_look(ptr noundef %b, i32 noundef %bits) #0 {
entry:
  %retval = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %m = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  %0 = load i32, ptr %bits.addr, align 4
  %sub = sub nsw i32 32, %0
  store i32 %sub, ptr %m, align 4
  %1 = load ptr, ptr %b.addr, align 8
  %endbit = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %endbit, align 8
  %3 = load i32, ptr %bits.addr, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %bits.addr, align 4
  %4 = load ptr, ptr %b.addr, align 8
  %endbyte = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %endbyte, align 8
  %add1 = add nsw i64 %5, 4
  %6 = load ptr, ptr %b.addr, align 8
  %storage = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %6, i32 0, i32 4
  %7 = load i64, ptr %storage, align 8
  %cmp = icmp sge i64 %add1, %7
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %b.addr, align 8
  %endbyte2 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %endbyte2, align 8
  %mul = mul nsw i64 %9, 8
  %10 = load i32, ptr %bits.addr, align 4
  %conv = sext i32 %10 to i64
  %add3 = add nsw i64 %mul, %conv
  %11 = load ptr, ptr %b.addr, align 8
  %storage4 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %storage4, align 8
  %mul5 = mul nsw i64 %12, 8
  %cmp6 = icmp sgt i64 %add3, %mul5
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %b.addr, align 8
  %ptr = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %15 to i32
  %16 = load ptr, ptr %b.addr, align 8
  %endbit11 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %endbit11, align 8
  %add12 = add nsw i32 24, %17
  %shl = shl i32 %conv10, %add12
  %conv13 = sext i32 %shl to i64
  store i64 %conv13, ptr %ret, align 8
  %18 = load i32, ptr %bits.addr, align 4
  %cmp14 = icmp sgt i32 %18, 8
  br i1 %cmp14, label %if.then16, label %if.end59

if.then16:                                        ; preds = %if.end9
  %19 = load ptr, ptr %b.addr, align 8
  %ptr17 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %ptr17, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %21 to i32
  %22 = load ptr, ptr %b.addr, align 8
  %endbit20 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %endbit20, align 8
  %add21 = add nsw i32 16, %23
  %shl22 = shl i32 %conv19, %add21
  %conv23 = sext i32 %shl22 to i64
  %24 = load i64, ptr %ret, align 8
  %or = or i64 %24, %conv23
  store i64 %or, ptr %ret, align 8
  %25 = load i32, ptr %bits.addr, align 4
  %cmp24 = icmp sgt i32 %25, 16
  br i1 %cmp24, label %if.then26, label %if.end58

if.then26:                                        ; preds = %if.then16
  %26 = load ptr, ptr %b.addr, align 8
  %ptr27 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %ptr27, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %27, i64 2
  %28 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %28 to i32
  %29 = load ptr, ptr %b.addr, align 8
  %endbit30 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %endbit30, align 8
  %add31 = add nsw i32 8, %30
  %shl32 = shl i32 %conv29, %add31
  %conv33 = sext i32 %shl32 to i64
  %31 = load i64, ptr %ret, align 8
  %or34 = or i64 %31, %conv33
  store i64 %or34, ptr %ret, align 8
  %32 = load i32, ptr %bits.addr, align 4
  %cmp35 = icmp sgt i32 %32, 24
  br i1 %cmp35, label %if.then37, label %if.end57

if.then37:                                        ; preds = %if.then26
  %33 = load ptr, ptr %b.addr, align 8
  %ptr38 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %ptr38, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %34, i64 3
  %35 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %35 to i32
  %36 = load ptr, ptr %b.addr, align 8
  %endbit41 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %endbit41, align 8
  %shl42 = shl i32 %conv40, %37
  %conv43 = sext i32 %shl42 to i64
  %38 = load i64, ptr %ret, align 8
  %or44 = or i64 %38, %conv43
  store i64 %or44, ptr %ret, align 8
  %39 = load i32, ptr %bits.addr, align 4
  %cmp45 = icmp sgt i32 %39, 32
  br i1 %cmp45, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.then37
  %40 = load ptr, ptr %b.addr, align 8
  %endbit47 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %endbit47, align 8
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then48, label %if.end56

if.then48:                                        ; preds = %land.lhs.true
  %42 = load ptr, ptr %b.addr, align 8
  %ptr49 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %ptr49, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %43, i64 4
  %44 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %44 to i32
  %45 = load ptr, ptr %b.addr, align 8
  %endbit52 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %endbit52, align 8
  %sub53 = sub nsw i32 8, %46
  %shr = ashr i32 %conv51, %sub53
  %conv54 = sext i32 %shr to i64
  %47 = load i64, ptr %ret, align 8
  %or55 = or i64 %47, %conv54
  store i64 %or55, ptr %ret, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %land.lhs.true, %if.then37
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then26
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then16
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end9
  %48 = load i64, ptr %ret, align 8
  %49 = load i32, ptr %m, align 4
  %shr60 = ashr i32 %49, 1
  %sh_prom = zext i32 %shr60 to i64
  %shr61 = lshr i64 %48, %sh_prom
  %50 = load i32, ptr %m, align 4
  %add62 = add nsw i32 %50, 1
  %shr63 = ashr i32 %add62, 1
  %sh_prom64 = zext i32 %shr63 to i64
  %shr65 = lshr i64 %shr61, %sh_prom64
  store i64 %shr65, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end59, %if.then8
  %51 = load i64, ptr %retval, align 8
  ret i64 %51
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
