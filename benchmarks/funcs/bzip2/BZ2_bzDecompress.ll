; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str.8 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.9 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.10 = external hidden unnamed_addr constant [51 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_decompress(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzDecompress(ptr noundef %strm) #1 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %r = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds nuw %struct.bz_stream, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %s, align 8
  %3 = load ptr, ptr %s, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %s, align 8
  %strm4 = getelementptr inbounds nuw %struct.DState, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %strm4, align 8
  %6 = load ptr, ptr %strm.addr, align 8
  %cmp5 = icmp ne ptr %5, %6
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  br label %while.body

while.body:                                       ; preds = %if.end65, %if.end7
  %7 = load ptr, ptr %s, align 8
  %state8 = getelementptr inbounds nuw %struct.DState, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %state8, align 8
  %cmp9 = icmp eq i32 %8, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %9 = load ptr, ptr %s, align 8
  %state12 = getelementptr inbounds nuw %struct.DState, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %state12, align 8
  %cmp13 = icmp eq i32 %10, 2
  br i1 %cmp13, label %if.then14, label %if.end42

if.then14:                                        ; preds = %if.end11
  %11 = load ptr, ptr %s, align 8
  %smallDecompress = getelementptr inbounds nuw %struct.DState, ptr %11, i32 0, i32 10
  %12 = load i8, ptr %smallDecompress, align 4
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then14
  %13 = load ptr, ptr %s, align 8
  call void @unRLE_obuf_to_output_SMALL(ptr noundef %13)
  br label %if.end16

if.else:                                          ; preds = %if.then14
  %14 = load ptr, ptr %s, align 8
  call void @unRLE_obuf_to_output_FAST(ptr noundef %14)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %15 = load ptr, ptr %s, align 8
  %nblock_used = getelementptr inbounds nuw %struct.DState, ptr %15, i32 0, i32 17
  %16 = load i32, ptr %nblock_used, align 4
  %17 = load ptr, ptr %s, align 8
  %save_nblock = getelementptr inbounds nuw %struct.DState, ptr %17, i32 0, i32 51
  %18 = load i32, ptr %save_nblock, align 8
  %add = add nsw i32 %18, 1
  %cmp17 = icmp eq i32 %16, %add
  br i1 %cmp17, label %land.lhs.true, label %if.else40

land.lhs.true:                                    ; preds = %if.end16
  %19 = load ptr, ptr %s, align 8
  %state_out_len = getelementptr inbounds nuw %struct.DState, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %state_out_len, align 8
  %cmp18 = icmp eq i32 %20, 0
  br i1 %cmp18, label %if.then19, label %if.else40

if.then19:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %s, align 8
  %calculatedBlockCRC = getelementptr inbounds nuw %struct.DState, ptr %21, i32 0, i32 25
  %22 = load i32, ptr %calculatedBlockCRC, align 8
  %not = xor i32 %22, -1
  %23 = load ptr, ptr %s, align 8
  %calculatedBlockCRC20 = getelementptr inbounds nuw %struct.DState, ptr %23, i32 0, i32 25
  store i32 %not, ptr %calculatedBlockCRC20, align 8
  %24 = load ptr, ptr %s, align 8
  %verbosity = getelementptr inbounds nuw %struct.DState, ptr %24, i32 0, i32 12
  %25 = load i32, ptr %verbosity, align 4
  %cmp21 = icmp sge i32 %25, 3
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then19
  %26 = load ptr, ptr @stderr, align 8
  %27 = load ptr, ptr %s, align 8
  %storedBlockCRC = getelementptr inbounds nuw %struct.DState, ptr %27, i32 0, i32 23
  %28 = load i32, ptr %storedBlockCRC, align 8
  %29 = load ptr, ptr %s, align 8
  %calculatedBlockCRC23 = getelementptr inbounds nuw %struct.DState, ptr %29, i32 0, i32 25
  %30 = load i32, ptr %calculatedBlockCRC23, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.8, i32 noundef %28, i32 noundef %30) #2
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then19
  %31 = load ptr, ptr %s, align 8
  %verbosity25 = getelementptr inbounds nuw %struct.DState, ptr %31, i32 0, i32 12
  %32 = load i32, ptr %verbosity25, align 4
  %cmp26 = icmp sge i32 %32, 2
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %33 = load ptr, ptr @stderr, align 8
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.9) #2
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %34 = load ptr, ptr %s, align 8
  %calculatedBlockCRC30 = getelementptr inbounds nuw %struct.DState, ptr %34, i32 0, i32 25
  %35 = load i32, ptr %calculatedBlockCRC30, align 8
  %36 = load ptr, ptr %s, align 8
  %storedBlockCRC31 = getelementptr inbounds nuw %struct.DState, ptr %36, i32 0, i32 23
  %37 = load i32, ptr %storedBlockCRC31, align 8
  %cmp32 = icmp ne i32 %35, %37
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  store i32 -4, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end29
  %38 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC = getelementptr inbounds nuw %struct.DState, ptr %38, i32 0, i32 26
  %39 = load i32, ptr %calculatedCombinedCRC, align 4
  %shl = shl i32 %39, 1
  %40 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC35 = getelementptr inbounds nuw %struct.DState, ptr %40, i32 0, i32 26
  %41 = load i32, ptr %calculatedCombinedCRC35, align 4
  %shr = lshr i32 %41, 31
  %or = or i32 %shl, %shr
  %42 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC36 = getelementptr inbounds nuw %struct.DState, ptr %42, i32 0, i32 26
  store i32 %or, ptr %calculatedCombinedCRC36, align 4
  %43 = load ptr, ptr %s, align 8
  %calculatedBlockCRC37 = getelementptr inbounds nuw %struct.DState, ptr %43, i32 0, i32 25
  %44 = load i32, ptr %calculatedBlockCRC37, align 8
  %45 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC38 = getelementptr inbounds nuw %struct.DState, ptr %45, i32 0, i32 26
  %46 = load i32, ptr %calculatedCombinedCRC38, align 4
  %xor = xor i32 %46, %44
  store i32 %xor, ptr %calculatedCombinedCRC38, align 4
  %47 = load ptr, ptr %s, align 8
  %state39 = getelementptr inbounds nuw %struct.DState, ptr %47, i32 0, i32 1
  store i32 14, ptr %state39, align 8
  br label %if.end41

if.else40:                                        ; preds = %land.lhs.true, %if.end16
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end34
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end11
  %48 = load ptr, ptr %s, align 8
  %state43 = getelementptr inbounds nuw %struct.DState, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %state43, align 8
  %cmp44 = icmp sge i32 %49, 10
  br i1 %cmp44, label %if.then45, label %if.end65

if.then45:                                        ; preds = %if.end42
  %50 = load ptr, ptr %s, align 8
  %call46 = call i32 @BZ2_decompress(ptr noundef %50)
  store i32 %call46, ptr %r, align 4
  %51 = load i32, ptr %r, align 4
  %cmp47 = icmp eq i32 %51, 4
  br i1 %cmp47, label %if.then48, label %if.end60

if.then48:                                        ; preds = %if.then45
  %52 = load ptr, ptr %s, align 8
  %verbosity49 = getelementptr inbounds nuw %struct.DState, ptr %52, i32 0, i32 12
  %53 = load i32, ptr %verbosity49, align 4
  %cmp50 = icmp sge i32 %53, 3
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.then48
  %54 = load ptr, ptr @stderr, align 8
  %55 = load ptr, ptr %s, align 8
  %storedCombinedCRC = getelementptr inbounds nuw %struct.DState, ptr %55, i32 0, i32 24
  %56 = load i32, ptr %storedCombinedCRC, align 4
  %57 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC52 = getelementptr inbounds nuw %struct.DState, ptr %57, i32 0, i32 26
  %58 = load i32, ptr %calculatedCombinedCRC52, align 4
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.10, i32 noundef %56, i32 noundef %58) #2
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.then48
  %59 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC55 = getelementptr inbounds nuw %struct.DState, ptr %59, i32 0, i32 26
  %60 = load i32, ptr %calculatedCombinedCRC55, align 4
  %61 = load ptr, ptr %s, align 8
  %storedCombinedCRC56 = getelementptr inbounds nuw %struct.DState, ptr %61, i32 0, i32 24
  %62 = load i32, ptr %storedCombinedCRC56, align 4
  %cmp57 = icmp ne i32 %60, %62
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  store i32 -4, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end54
  %63 = load i32, ptr %r, align 4
  store i32 %63, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.then45
  %64 = load ptr, ptr %s, align 8
  %state61 = getelementptr inbounds nuw %struct.DState, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %state61, align 8
  %cmp62 = icmp ne i32 %65, 2
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  %66 = load i32, ptr %r, align 4
  store i32 %66, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end60
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end42
  br label %while.body

return:                                           ; preds = %if.then63, %if.end59, %if.then58, %if.else40, %if.then33, %if.then10, %if.then6, %if.then2, %if.then
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

; Function Attrs: nounwind uwtable
declare hidden void @unRLE_obuf_to_output_SMALL(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @unRLE_obuf_to_output_FAST(ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
