; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5Context = type { [4 x i32], [2 x i32], [64 x i8] }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @MD5Final(ptr noundef %digest, ptr noundef %ctx) #0 {
entry:
  %digest.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %digest, ptr %digest.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %bits = getelementptr inbounds nuw %struct.MD5Context, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32], ptr %bits, i64 0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %1, 3
  %and = and i32 %shr, 63
  store i32 %and, ptr %count, align 4
  %2 = load ptr, ptr %ctx.addr, align 8
  %in = getelementptr inbounds nuw %struct.MD5Context, ptr %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0
  %3 = load i32, ptr %count, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %arraydecay, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i8 -128, ptr %4, align 1
  %5 = load i32, ptr %count, align 4
  %sub = sub i32 63, %5
  store i32 %sub, ptr %count, align 4
  %6 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %6, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p, align 8
  %8 = load i32, ptr %count, align 4
  call void @SyZero(ptr noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %ctx.addr, align 8
  %in1 = getelementptr inbounds nuw %struct.MD5Context, ptr %9, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %in1, i64 0, i64 0
  call void @byteReverse(ptr noundef %arraydecay2, i32 noundef 16)
  %10 = load ptr, ptr %ctx.addr, align 8
  %buf = getelementptr inbounds nuw %struct.MD5Context, ptr %10, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [4 x i32], ptr %buf, i64 0, i64 0
  %11 = load ptr, ptr %ctx.addr, align 8
  %in4 = getelementptr inbounds nuw %struct.MD5Context, ptr %11, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [64 x i8], ptr %in4, i64 0, i64 0
  call void @MD5Transform(ptr noundef %arraydecay3, ptr noundef %arraydecay5)
  %12 = load ptr, ptr %ctx.addr, align 8
  %in6 = getelementptr inbounds nuw %struct.MD5Context, ptr %12, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [64 x i8], ptr %in6, i64 0, i64 0
  call void @SyZero(ptr noundef %arraydecay7, i32 noundef 56)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %p, align 8
  %14 = load i32, ptr %count, align 4
  %sub8 = sub i32 %14, 8
  call void @SyZero(ptr noundef %13, i32 noundef %sub8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %ctx.addr, align 8
  %in9 = getelementptr inbounds nuw %struct.MD5Context, ptr %15, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [64 x i8], ptr %in9, i64 0, i64 0
  call void @byteReverse(ptr noundef %arraydecay10, i32 noundef 14)
  %16 = load ptr, ptr %ctx.addr, align 8
  %bits11 = getelementptr inbounds nuw %struct.MD5Context, ptr %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [2 x i32], ptr %bits11, i64 0, i64 0
  %17 = load i32, ptr %arrayidx12, align 4
  %18 = load ptr, ptr %ctx.addr, align 8
  %in13 = getelementptr inbounds nuw %struct.MD5Context, ptr %18, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [64 x i8], ptr %in13, i64 0, i64 0
  %arrayidx15 = getelementptr inbounds i32, ptr %arraydecay14, i64 14
  store i32 %17, ptr %arrayidx15, align 4
  %19 = load ptr, ptr %ctx.addr, align 8
  %bits16 = getelementptr inbounds nuw %struct.MD5Context, ptr %19, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [2 x i32], ptr %bits16, i64 0, i64 1
  %20 = load i32, ptr %arrayidx17, align 4
  %21 = load ptr, ptr %ctx.addr, align 8
  %in18 = getelementptr inbounds nuw %struct.MD5Context, ptr %21, i32 0, i32 2
  %arraydecay19 = getelementptr inbounds [64 x i8], ptr %in18, i64 0, i64 0
  %arrayidx20 = getelementptr inbounds i32, ptr %arraydecay19, i64 15
  store i32 %20, ptr %arrayidx20, align 4
  %22 = load ptr, ptr %ctx.addr, align 8
  %buf21 = getelementptr inbounds nuw %struct.MD5Context, ptr %22, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [4 x i32], ptr %buf21, i64 0, i64 0
  %23 = load ptr, ptr %ctx.addr, align 8
  %in23 = getelementptr inbounds nuw %struct.MD5Context, ptr %23, i32 0, i32 2
  %arraydecay24 = getelementptr inbounds [64 x i8], ptr %in23, i64 0, i64 0
  call void @MD5Transform(ptr noundef %arraydecay22, ptr noundef %arraydecay24)
  %24 = load ptr, ptr %ctx.addr, align 8
  %buf25 = getelementptr inbounds nuw %struct.MD5Context, ptr %24, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [4 x i32], ptr %buf25, i64 0, i64 0
  call void @byteReverse(ptr noundef %arraydecay26, i32 noundef 4)
  %25 = load ptr, ptr %ctx.addr, align 8
  %buf27 = getelementptr inbounds nuw %struct.MD5Context, ptr %25, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [4 x i32], ptr %buf27, i64 0, i64 0
  %26 = load ptr, ptr %digest.addr, align 8
  %call = call i32 @SyMemcpy(ptr noundef %arraydecay28, ptr noundef %26, i32 noundef 16)
  %27 = load ptr, ptr %ctx.addr, align 8
  call void @SyZero(ptr noundef %27, i32 noundef 8)
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
