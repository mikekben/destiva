; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @sqlite3_value_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text64(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @charFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  %c = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %mul = mul nsw i32 %0, 4
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call ptr @sqlite3_malloc64(i64 noundef %conv)
  store ptr %call, ptr %z, align 8
  store ptr %call, ptr %zOut, align 8
  %1 = load ptr, ptr %z, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %2)
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %argv.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %call4 = call i64 @sqlite3_value_int64(ptr noundef %7)
  store i64 %call4, ptr %x, align 8
  %8 = load i64, ptr %x, align 8
  %cmp5 = icmp slt i64 %8, 0
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i64, ptr %x, align 8
  %cmp7 = icmp sgt i64 %9, 1114111
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %for.body
  store i64 65533, ptr %x, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  %10 = load i64, ptr %x, align 8
  %and = and i64 %10, 2097151
  %conv11 = trunc i64 %and to i32
  store i32 %conv11, ptr %c, align 4
  %11 = load i32, ptr %c, align 4
  %cmp12 = icmp ult i32 %11, 128
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  %12 = load i32, ptr %c, align 4
  %and15 = and i32 %12, 255
  %conv16 = trunc i32 %and15 to i8
  %13 = load ptr, ptr %zOut, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %zOut, align 8
  store i8 %conv16, ptr %13, align 1
  br label %if.end86

if.else:                                          ; preds = %if.end10
  %14 = load i32, ptr %c, align 4
  %cmp17 = icmp ult i32 %14, 2048
  br i1 %cmp17, label %if.then19, label %if.else32

if.then19:                                        ; preds = %if.else
  %15 = load i32, ptr %c, align 4
  %shr = lshr i32 %15, 6
  %and20 = and i32 %shr, 31
  %conv21 = trunc i32 %and20 to i8
  %conv22 = zext i8 %conv21 to i32
  %add23 = add nsw i32 192, %conv22
  %conv24 = trunc i32 %add23 to i8
  %16 = load ptr, ptr %zOut, align 8
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr25, ptr %zOut, align 8
  store i8 %conv24, ptr %16, align 1
  %17 = load i32, ptr %c, align 4
  %and26 = and i32 %17, 63
  %conv27 = trunc i32 %and26 to i8
  %conv28 = zext i8 %conv27 to i32
  %add29 = add nsw i32 128, %conv28
  %conv30 = trunc i32 %add29 to i8
  %18 = load ptr, ptr %zOut, align 8
  %incdec.ptr31 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr31, ptr %zOut, align 8
  store i8 %conv30, ptr %18, align 1
  br label %if.end85

if.else32:                                        ; preds = %if.else
  %19 = load i32, ptr %c, align 4
  %cmp33 = icmp ult i32 %19, 65536
  br i1 %cmp33, label %if.then35, label %if.else56

if.then35:                                        ; preds = %if.else32
  %20 = load i32, ptr %c, align 4
  %shr36 = lshr i32 %20, 12
  %and37 = and i32 %shr36, 15
  %conv38 = trunc i32 %and37 to i8
  %conv39 = zext i8 %conv38 to i32
  %add40 = add nsw i32 224, %conv39
  %conv41 = trunc i32 %add40 to i8
  %21 = load ptr, ptr %zOut, align 8
  %incdec.ptr42 = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr42, ptr %zOut, align 8
  store i8 %conv41, ptr %21, align 1
  %22 = load i32, ptr %c, align 4
  %shr43 = lshr i32 %22, 6
  %and44 = and i32 %shr43, 63
  %conv45 = trunc i32 %and44 to i8
  %conv46 = zext i8 %conv45 to i32
  %add47 = add nsw i32 128, %conv46
  %conv48 = trunc i32 %add47 to i8
  %23 = load ptr, ptr %zOut, align 8
  %incdec.ptr49 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr49, ptr %zOut, align 8
  store i8 %conv48, ptr %23, align 1
  %24 = load i32, ptr %c, align 4
  %and50 = and i32 %24, 63
  %conv51 = trunc i32 %and50 to i8
  %conv52 = zext i8 %conv51 to i32
  %add53 = add nsw i32 128, %conv52
  %conv54 = trunc i32 %add53 to i8
  %25 = load ptr, ptr %zOut, align 8
  %incdec.ptr55 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr55, ptr %zOut, align 8
  store i8 %conv54, ptr %25, align 1
  br label %if.end84

if.else56:                                        ; preds = %if.else32
  %26 = load i32, ptr %c, align 4
  %shr57 = lshr i32 %26, 18
  %and58 = and i32 %shr57, 7
  %conv59 = trunc i32 %and58 to i8
  %conv60 = zext i8 %conv59 to i32
  %add61 = add nsw i32 240, %conv60
  %conv62 = trunc i32 %add61 to i8
  %27 = load ptr, ptr %zOut, align 8
  %incdec.ptr63 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %incdec.ptr63, ptr %zOut, align 8
  store i8 %conv62, ptr %27, align 1
  %28 = load i32, ptr %c, align 4
  %shr64 = lshr i32 %28, 12
  %and65 = and i32 %shr64, 63
  %conv66 = trunc i32 %and65 to i8
  %conv67 = zext i8 %conv66 to i32
  %add68 = add nsw i32 128, %conv67
  %conv69 = trunc i32 %add68 to i8
  %29 = load ptr, ptr %zOut, align 8
  %incdec.ptr70 = getelementptr inbounds nuw i8, ptr %29, i32 1
  store ptr %incdec.ptr70, ptr %zOut, align 8
  store i8 %conv69, ptr %29, align 1
  %30 = load i32, ptr %c, align 4
  %shr71 = lshr i32 %30, 6
  %and72 = and i32 %shr71, 63
  %conv73 = trunc i32 %and72 to i8
  %conv74 = zext i8 %conv73 to i32
  %add75 = add nsw i32 128, %conv74
  %conv76 = trunc i32 %add75 to i8
  %31 = load ptr, ptr %zOut, align 8
  %incdec.ptr77 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr77, ptr %zOut, align 8
  store i8 %conv76, ptr %31, align 1
  %32 = load i32, ptr %c, align 4
  %and78 = and i32 %32, 63
  %conv79 = trunc i32 %and78 to i8
  %conv80 = zext i8 %conv79 to i32
  %add81 = add nsw i32 128, %conv80
  %conv82 = trunc i32 %add81 to i8
  %33 = load ptr, ptr %zOut, align 8
  %incdec.ptr83 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %incdec.ptr83, ptr %zOut, align 8
  store i8 %conv82, ptr %33, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.else56, %if.then35
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then19
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then14
  br label %for.inc

for.inc:                                          ; preds = %if.end86
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %context.addr, align 8
  %36 = load ptr, ptr %z, align 8
  %37 = load ptr, ptr %zOut, align 8
  %38 = load ptr, ptr %z, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %37 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %38 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @sqlite3_result_text64(ptr noundef %35, ptr noundef %36, i64 noundef %sub.ptr.sub, ptr noundef @sqlite3_free, i8 noundef zeroext 1)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
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
