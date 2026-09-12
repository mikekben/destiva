; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5Context = type { [4 x i32], [2 x i32], [64 x i8] }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @MD5Update(ptr noundef %ctx, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %t = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %ctx.addr, align 8
  %bits = getelementptr inbounds nuw %struct.MD5Context, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32], ptr %bits, i64 0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %t, align 4
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %len.addr, align 4
  %shl = shl i32 %3, 3
  %add = add i32 %2, %shl
  %4 = load ptr, ptr %ctx.addr, align 8
  %bits1 = getelementptr inbounds nuw %struct.MD5Context, ptr %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %bits1, i64 0, i64 0
  store i32 %add, ptr %arrayidx2, align 4
  %5 = load i32, ptr %t, align 4
  %cmp = icmp ult i32 %add, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ctx.addr, align 8
  %bits3 = getelementptr inbounds nuw %struct.MD5Context, ptr %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x i32], ptr %bits3, i64 0, i64 1
  %7 = load i32, ptr %arrayidx4, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %len.addr, align 4
  %shr = lshr i32 %8, 29
  %9 = load ptr, ptr %ctx.addr, align 8
  %bits5 = getelementptr inbounds nuw %struct.MD5Context, ptr %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr %bits5, i64 0, i64 1
  %10 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %10, %shr
  store i32 %add7, ptr %arrayidx6, align 4
  %11 = load i32, ptr %t, align 4
  %shr8 = lshr i32 %11, 3
  %and = and i32 %shr8, 63
  store i32 %and, ptr %t, align 4
  %12 = load i32, ptr %t, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then9, label %if.end23

if.then9:                                         ; preds = %if.end
  %13 = load ptr, ptr %ctx.addr, align 8
  %in = getelementptr inbounds nuw %struct.MD5Context, ptr %13, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  %14 = load i32, ptr %t, align 4
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %arraydecay, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  %15 = load i32, ptr %t, align 4
  %sub = sub i32 64, %15
  store i32 %sub, ptr %t, align 4
  %16 = load i32, ptr %len.addr, align 4
  %17 = load i32, ptr %t, align 4
  %cmp10 = icmp ult i32 %16, %17
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %18 = load ptr, ptr %buf.addr, align 8
  %19 = load ptr, ptr %p, align 8
  %20 = load i32, ptr %len.addr, align 4
  %call = call i32 @SyMemcpy(ptr noundef %18, ptr noundef %19, i32 noundef %20)
  br label %return

if.end12:                                         ; preds = %if.then9
  %21 = load ptr, ptr %buf.addr, align 8
  %22 = load ptr, ptr %p, align 8
  %23 = load i32, ptr %t, align 4
  %call13 = call i32 @SyMemcpy(ptr noundef %21, ptr noundef %22, i32 noundef %23)
  %24 = load ptr, ptr %ctx.addr, align 8
  %in14 = getelementptr inbounds nuw %struct.MD5Context, ptr %24, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [64 x i8], ptr %in14, i64 0, i64 0
  call void @byteReverse(ptr noundef %arraydecay15, i32 noundef 16)
  %25 = load ptr, ptr %ctx.addr, align 8
  %buf16 = getelementptr inbounds nuw %struct.MD5Context, ptr %25, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [4 x i32], ptr %buf16, i64 0, i64 0
  %26 = load ptr, ptr %ctx.addr, align 8
  %in18 = getelementptr inbounds nuw %struct.MD5Context, ptr %26, i32 0, i32 2
  %arraydecay19 = getelementptr inbounds [64 x i8], ptr %in18, i64 0, i64 0
  call void @MD5Transform(ptr noundef %arraydecay17, ptr noundef %arraydecay19)
  %27 = load i32, ptr %t, align 4
  %28 = load ptr, ptr %buf.addr, align 8
  %idx.ext20 = zext i32 %27 to i64
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %28, i64 %idx.ext20
  store ptr %add.ptr21, ptr %buf.addr, align 8
  %29 = load i32, ptr %t, align 4
  %30 = load i32, ptr %len.addr, align 4
  %sub22 = sub i32 %30, %29
  store i32 %sub22, ptr %len.addr, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end12, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end23
  %31 = load i32, ptr %len.addr, align 4
  %cmp24 = icmp uge i32 %31, 64
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load ptr, ptr %buf.addr, align 8
  %33 = load ptr, ptr %ctx.addr, align 8
  %in25 = getelementptr inbounds nuw %struct.MD5Context, ptr %33, i32 0, i32 2
  %arraydecay26 = getelementptr inbounds [64 x i8], ptr %in25, i64 0, i64 0
  %call27 = call i32 @SyMemcpy(ptr noundef %32, ptr noundef %arraydecay26, i32 noundef 64)
  %34 = load ptr, ptr %ctx.addr, align 8
  %in28 = getelementptr inbounds nuw %struct.MD5Context, ptr %34, i32 0, i32 2
  %arraydecay29 = getelementptr inbounds [64 x i8], ptr %in28, i64 0, i64 0
  call void @byteReverse(ptr noundef %arraydecay29, i32 noundef 16)
  %35 = load ptr, ptr %ctx.addr, align 8
  %buf30 = getelementptr inbounds nuw %struct.MD5Context, ptr %35, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [4 x i32], ptr %buf30, i64 0, i64 0
  %36 = load ptr, ptr %ctx.addr, align 8
  %in32 = getelementptr inbounds nuw %struct.MD5Context, ptr %36, i32 0, i32 2
  %arraydecay33 = getelementptr inbounds [64 x i8], ptr %in32, i64 0, i64 0
  call void @MD5Transform(ptr noundef %arraydecay31, ptr noundef %arraydecay33)
  %37 = load ptr, ptr %buf.addr, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %37, i64 64
  store ptr %add.ptr34, ptr %buf.addr, align 8
  %38 = load i32, ptr %len.addr, align 4
  %sub35 = sub i32 %38, 64
  store i32 %sub35, ptr %len.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %39 = load ptr, ptr %buf.addr, align 8
  %40 = load ptr, ptr %ctx.addr, align 8
  %in36 = getelementptr inbounds nuw %struct.MD5Context, ptr %40, i32 0, i32 2
  %arraydecay37 = getelementptr inbounds [64 x i8], ptr %in36, i64 0, i64 0
  %41 = load i32, ptr %len.addr, align 4
  %call38 = call i32 @SyMemcpy(ptr noundef %39, ptr noundef %arraydecay37, i32 noundef %41)
  br label %return

return:                                           ; preds = %while.end, %if.then11
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @byteReverse(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @MD5Transform(ptr noundef, ptr noundef) #0

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
