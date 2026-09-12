; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzCompressInit(ptr noundef %strm, i32 noundef %blockSize100k, i32 noundef %verbosity, i32 noundef %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %blockSize100k, ptr %blockSize100k.addr, align 4
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %workFactor, ptr %workFactor.addr, align 4
  %call = call i32 @bz_config_ok()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, ptr %blockSize100k.addr, align 4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %if.then8, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %blockSize100k.addr, align 4
  %cmp3 = icmp sgt i32 %2, 9
  br i1 %cmp3, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %workFactor.addr, align 4
  %cmp5 = icmp slt i32 %3, 0
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, ptr %workFactor.addr, align 4
  %cmp7 = icmp sgt i32 %4, 250
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false6
  %5 = load i32, ptr %workFactor.addr, align 4
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i32 30, ptr %workFactor.addr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %6 = load ptr, ptr %strm.addr, align 8
  %bzalloc = getelementptr inbounds nuw %struct.bz_stream, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %bzalloc, align 8
  %cmp13 = icmp eq ptr %7, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %8 = load ptr, ptr %strm.addr, align 8
  %bzalloc15 = getelementptr inbounds nuw %struct.bz_stream, ptr %8, i32 0, i32 9
  store ptr @default_bzalloc, ptr %bzalloc15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %9 = load ptr, ptr %strm.addr, align 8
  %bzfree = getelementptr inbounds nuw %struct.bz_stream, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %bzfree, align 8
  %cmp17 = icmp eq ptr %10, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %11 = load ptr, ptr %strm.addr, align 8
  %bzfree19 = getelementptr inbounds nuw %struct.bz_stream, ptr %11, i32 0, i32 10
  store ptr @default_bzfree, ptr %bzfree19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %12 = load ptr, ptr %strm.addr, align 8
  %bzalloc21 = getelementptr inbounds nuw %struct.bz_stream, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %bzalloc21, align 8
  %14 = load ptr, ptr %strm.addr, align 8
  %opaque = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 11
  %15 = load ptr, ptr %opaque, align 8
  %call22 = call ptr %13(ptr noundef %15, i32 noundef 55768, i32 noundef 1)
  store ptr %call22, ptr %s, align 8
  %16 = load ptr, ptr %s, align 8
  %cmp23 = icmp eq ptr %16, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  store i32 -3, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end20
  %17 = load ptr, ptr %strm.addr, align 8
  %18 = load ptr, ptr %s, align 8
  %strm26 = getelementptr inbounds nuw %struct.EState, ptr %18, i32 0, i32 0
  store ptr %17, ptr %strm26, align 8
  %19 = load ptr, ptr %s, align 8
  %arr1 = getelementptr inbounds nuw %struct.EState, ptr %19, i32 0, i32 4
  store ptr null, ptr %arr1, align 8
  %20 = load ptr, ptr %s, align 8
  %arr2 = getelementptr inbounds nuw %struct.EState, ptr %20, i32 0, i32 5
  store ptr null, ptr %arr2, align 8
  %21 = load ptr, ptr %s, align 8
  %ftab = getelementptr inbounds nuw %struct.EState, ptr %21, i32 0, i32 6
  store ptr null, ptr %ftab, align 8
  %22 = load i32, ptr %blockSize100k.addr, align 4
  %mul = mul nsw i32 100000, %22
  store i32 %mul, ptr %n, align 4
  %23 = load ptr, ptr %strm.addr, align 8
  %bzalloc27 = getelementptr inbounds nuw %struct.bz_stream, ptr %23, i32 0, i32 9
  %24 = load ptr, ptr %bzalloc27, align 8
  %25 = load ptr, ptr %strm.addr, align 8
  %opaque28 = getelementptr inbounds nuw %struct.bz_stream, ptr %25, i32 0, i32 11
  %26 = load ptr, ptr %opaque28, align 8
  %27 = load i32, ptr %n, align 4
  %conv = sext i32 %27 to i64
  %mul29 = mul i64 %conv, 4
  %conv30 = trunc i64 %mul29 to i32
  %call31 = call ptr %24(ptr noundef %26, i32 noundef %conv30, i32 noundef 1)
  %28 = load ptr, ptr %s, align 8
  %arr132 = getelementptr inbounds nuw %struct.EState, ptr %28, i32 0, i32 4
  store ptr %call31, ptr %arr132, align 8
  %29 = load ptr, ptr %strm.addr, align 8
  %bzalloc33 = getelementptr inbounds nuw %struct.bz_stream, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %bzalloc33, align 8
  %31 = load ptr, ptr %strm.addr, align 8
  %opaque34 = getelementptr inbounds nuw %struct.bz_stream, ptr %31, i32 0, i32 11
  %32 = load ptr, ptr %opaque34, align 8
  %33 = load i32, ptr %n, align 4
  %add = add nsw i32 %33, 34
  %conv35 = sext i32 %add to i64
  %mul36 = mul i64 %conv35, 4
  %conv37 = trunc i64 %mul36 to i32
  %call38 = call ptr %30(ptr noundef %32, i32 noundef %conv37, i32 noundef 1)
  %34 = load ptr, ptr %s, align 8
  %arr239 = getelementptr inbounds nuw %struct.EState, ptr %34, i32 0, i32 5
  store ptr %call38, ptr %arr239, align 8
  %35 = load ptr, ptr %strm.addr, align 8
  %bzalloc40 = getelementptr inbounds nuw %struct.bz_stream, ptr %35, i32 0, i32 9
  %36 = load ptr, ptr %bzalloc40, align 8
  %37 = load ptr, ptr %strm.addr, align 8
  %opaque41 = getelementptr inbounds nuw %struct.bz_stream, ptr %37, i32 0, i32 11
  %38 = load ptr, ptr %opaque41, align 8
  %call42 = call ptr %36(ptr noundef %38, i32 noundef 262148, i32 noundef 1)
  %39 = load ptr, ptr %s, align 8
  %ftab43 = getelementptr inbounds nuw %struct.EState, ptr %39, i32 0, i32 6
  store ptr %call42, ptr %ftab43, align 8
  %40 = load ptr, ptr %s, align 8
  %arr144 = getelementptr inbounds nuw %struct.EState, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %arr144, align 8
  %cmp45 = icmp eq ptr %41, null
  br i1 %cmp45, label %if.then55, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end25
  %42 = load ptr, ptr %s, align 8
  %arr248 = getelementptr inbounds nuw %struct.EState, ptr %42, i32 0, i32 5
  %43 = load ptr, ptr %arr248, align 8
  %cmp49 = icmp eq ptr %43, null
  br i1 %cmp49, label %if.then55, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %44 = load ptr, ptr %s, align 8
  %ftab52 = getelementptr inbounds nuw %struct.EState, ptr %44, i32 0, i32 6
  %45 = load ptr, ptr %ftab52, align 8
  %cmp53 = icmp eq ptr %45, null
  br i1 %cmp53, label %if.then55, label %if.end86

if.then55:                                        ; preds = %lor.lhs.false51, %lor.lhs.false47, %if.end25
  %46 = load ptr, ptr %s, align 8
  %arr156 = getelementptr inbounds nuw %struct.EState, ptr %46, i32 0, i32 4
  %47 = load ptr, ptr %arr156, align 8
  %cmp57 = icmp ne ptr %47, null
  br i1 %cmp57, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.then55
  %48 = load ptr, ptr %strm.addr, align 8
  %bzfree60 = getelementptr inbounds nuw %struct.bz_stream, ptr %48, i32 0, i32 10
  %49 = load ptr, ptr %bzfree60, align 8
  %50 = load ptr, ptr %strm.addr, align 8
  %opaque61 = getelementptr inbounds nuw %struct.bz_stream, ptr %50, i32 0, i32 11
  %51 = load ptr, ptr %opaque61, align 8
  %52 = load ptr, ptr %s, align 8
  %arr162 = getelementptr inbounds nuw %struct.EState, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %arr162, align 8
  call void %49(ptr noundef %51, ptr noundef %53)
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.then55
  %54 = load ptr, ptr %s, align 8
  %arr264 = getelementptr inbounds nuw %struct.EState, ptr %54, i32 0, i32 5
  %55 = load ptr, ptr %arr264, align 8
  %cmp65 = icmp ne ptr %55, null
  br i1 %cmp65, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.end63
  %56 = load ptr, ptr %strm.addr, align 8
  %bzfree68 = getelementptr inbounds nuw %struct.bz_stream, ptr %56, i32 0, i32 10
  %57 = load ptr, ptr %bzfree68, align 8
  %58 = load ptr, ptr %strm.addr, align 8
  %opaque69 = getelementptr inbounds nuw %struct.bz_stream, ptr %58, i32 0, i32 11
  %59 = load ptr, ptr %opaque69, align 8
  %60 = load ptr, ptr %s, align 8
  %arr270 = getelementptr inbounds nuw %struct.EState, ptr %60, i32 0, i32 5
  %61 = load ptr, ptr %arr270, align 8
  call void %57(ptr noundef %59, ptr noundef %61)
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end63
  %62 = load ptr, ptr %s, align 8
  %ftab72 = getelementptr inbounds nuw %struct.EState, ptr %62, i32 0, i32 6
  %63 = load ptr, ptr %ftab72, align 8
  %cmp73 = icmp ne ptr %63, null
  br i1 %cmp73, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.end71
  %64 = load ptr, ptr %strm.addr, align 8
  %bzfree76 = getelementptr inbounds nuw %struct.bz_stream, ptr %64, i32 0, i32 10
  %65 = load ptr, ptr %bzfree76, align 8
  %66 = load ptr, ptr %strm.addr, align 8
  %opaque77 = getelementptr inbounds nuw %struct.bz_stream, ptr %66, i32 0, i32 11
  %67 = load ptr, ptr %opaque77, align 8
  %68 = load ptr, ptr %s, align 8
  %ftab78 = getelementptr inbounds nuw %struct.EState, ptr %68, i32 0, i32 6
  %69 = load ptr, ptr %ftab78, align 8
  call void %65(ptr noundef %67, ptr noundef %69)
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.end71
  %70 = load ptr, ptr %s, align 8
  %cmp80 = icmp ne ptr %70, null
  br i1 %cmp80, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.end79
  %71 = load ptr, ptr %strm.addr, align 8
  %bzfree83 = getelementptr inbounds nuw %struct.bz_stream, ptr %71, i32 0, i32 10
  %72 = load ptr, ptr %bzfree83, align 8
  %73 = load ptr, ptr %strm.addr, align 8
  %opaque84 = getelementptr inbounds nuw %struct.bz_stream, ptr %73, i32 0, i32 11
  %74 = load ptr, ptr %opaque84, align 8
  %75 = load ptr, ptr %s, align 8
  call void %72(ptr noundef %74, ptr noundef %75)
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end79
  store i32 -3, ptr %retval, align 4
  br label %return

if.end86:                                         ; preds = %lor.lhs.false51
  %76 = load ptr, ptr %s, align 8
  %blockNo = getelementptr inbounds nuw %struct.EState, ptr %76, i32 0, i32 29
  store i32 0, ptr %blockNo, align 4
  %77 = load ptr, ptr %s, align 8
  %state = getelementptr inbounds nuw %struct.EState, ptr %77, i32 0, i32 2
  store i32 2, ptr %state, align 4
  %78 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds nuw %struct.EState, ptr %78, i32 0, i32 1
  store i32 2, ptr %mode, align 8
  %79 = load ptr, ptr %s, align 8
  %combinedCRC = getelementptr inbounds nuw %struct.EState, ptr %79, i32 0, i32 27
  store i32 0, ptr %combinedCRC, align 4
  %80 = load i32, ptr %blockSize100k.addr, align 4
  %81 = load ptr, ptr %s, align 8
  %blockSize100k87 = getelementptr inbounds nuw %struct.EState, ptr %81, i32 0, i32 30
  store i32 %80, ptr %blockSize100k87, align 8
  %82 = load i32, ptr %blockSize100k.addr, align 4
  %mul88 = mul nsw i32 100000, %82
  %sub = sub nsw i32 %mul88, 19
  %83 = load ptr, ptr %s, align 8
  %nblockMAX = getelementptr inbounds nuw %struct.EState, ptr %83, i32 0, i32 18
  store i32 %sub, ptr %nblockMAX, align 8
  %84 = load i32, ptr %verbosity.addr, align 4
  %85 = load ptr, ptr %s, align 8
  %verbosity89 = getelementptr inbounds nuw %struct.EState, ptr %85, i32 0, i32 28
  store i32 %84, ptr %verbosity89, align 8
  %86 = load i32, ptr %workFactor.addr, align 4
  %87 = load ptr, ptr %s, align 8
  %workFactor90 = getelementptr inbounds nuw %struct.EState, ptr %87, i32 0, i32 12
  store i32 %86, ptr %workFactor90, align 8
  %88 = load ptr, ptr %s, align 8
  %arr291 = getelementptr inbounds nuw %struct.EState, ptr %88, i32 0, i32 5
  %89 = load ptr, ptr %arr291, align 8
  %90 = load ptr, ptr %s, align 8
  %block = getelementptr inbounds nuw %struct.EState, ptr %90, i32 0, i32 9
  store ptr %89, ptr %block, align 8
  %91 = load ptr, ptr %s, align 8
  %arr192 = getelementptr inbounds nuw %struct.EState, ptr %91, i32 0, i32 4
  %92 = load ptr, ptr %arr192, align 8
  %93 = load ptr, ptr %s, align 8
  %mtfv = getelementptr inbounds nuw %struct.EState, ptr %93, i32 0, i32 10
  store ptr %92, ptr %mtfv, align 8
  %94 = load ptr, ptr %s, align 8
  %zbits = getelementptr inbounds nuw %struct.EState, ptr %94, i32 0, i32 11
  store ptr null, ptr %zbits, align 8
  %95 = load ptr, ptr %s, align 8
  %arr193 = getelementptr inbounds nuw %struct.EState, ptr %95, i32 0, i32 4
  %96 = load ptr, ptr %arr193, align 8
  %97 = load ptr, ptr %s, align 8
  %ptr = getelementptr inbounds nuw %struct.EState, ptr %97, i32 0, i32 8
  store ptr %96, ptr %ptr, align 8
  %98 = load ptr, ptr %s, align 8
  %99 = load ptr, ptr %strm.addr, align 8
  %state94 = getelementptr inbounds nuw %struct.bz_stream, ptr %99, i32 0, i32 8
  store ptr %98, ptr %state94, align 8
  %100 = load ptr, ptr %strm.addr, align 8
  %total_in_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %100, i32 0, i32 2
  store i32 0, ptr %total_in_lo32, align 4
  %101 = load ptr, ptr %strm.addr, align 8
  %total_in_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %101, i32 0, i32 3
  store i32 0, ptr %total_in_hi32, align 8
  %102 = load ptr, ptr %strm.addr, align 8
  %total_out_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %102, i32 0, i32 6
  store i32 0, ptr %total_out_lo32, align 4
  %103 = load ptr, ptr %strm.addr, align 8
  %total_out_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %103, i32 0, i32 7
  store i32 0, ptr %total_out_hi32, align 8
  %104 = load ptr, ptr %s, align 8
  call void @init_RL(ptr noundef %104)
  %105 = load ptr, ptr %s, align 8
  call void @prepare_new_block(ptr noundef %105)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end86, %if.end85, %if.then24, %if.then8, %if.then
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
declare hidden i32 @bz_config_ok() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @default_bzalloc(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @default_bzfree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @init_RL(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @prepare_new_block(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
