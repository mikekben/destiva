; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_StripTagsFromString(ptr noundef %pCtx, ptr noundef %zIn, i32 noundef %nByte, ptr noundef %zTaglist, i32 noundef %nTaglen) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %zIn.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %zTaglist.addr = alloca ptr, align 8
  %nTaglen.addr = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %zTag = alloca ptr, align 8
  %sSet = alloca %struct.SySet, align 8
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zIn, ptr %zIn.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %zTaglist, ptr %zTaglist.addr, align 8
  store i32 %nTaglen, ptr %nTaglen.addr, align 4
  %0 = load ptr, ptr %zIn.addr, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %2 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %sSet, ptr noundef %sAllocator, i32 noundef 16)
  %4 = load i32, ptr %nTaglen.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %zTaglist.addr, align 8
  %6 = load i32, ptr %nTaglen.addr, align 4
  %call1 = call i32 @AddTag(ptr noundef %sSet, ptr noundef %5, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_string(ptr noundef %7, ptr noundef @.str.4, i32 noundef 0)
  br label %for.cond

for.cond:                                         ; preds = %if.end73, %if.end
  %8 = load ptr, ptr %zIn.addr, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp3 = icmp uge ptr %8, %9
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.cond
  br label %for.end

if.end5:                                          ; preds = %for.cond
  %10 = load ptr, ptr %zIn.addr, align 8
  store ptr %10, ptr %zPtr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %11 = load ptr, ptr %zIn.addr, align 8
  %12 = load ptr, ptr %zEnd, align 8
  %cmp6 = icmp ult ptr %11, %12
  br i1 %cmp6, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %13 = load ptr, ptr %zIn.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx7, align 1
  %conv = sext i8 %14 to i32
  %cmp8 = icmp ne i32 %conv, 60
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %zIn.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %16 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %zIn.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %19 = load ptr, ptr %zIn.addr, align 8
  %20 = load ptr, ptr %zPtr, align 8
  %cmp14 = icmp ugt ptr %19, %20
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %while.end
  %21 = load ptr, ptr %pCtx.addr, align 8
  %22 = load ptr, ptr %zPtr, align 8
  %23 = load ptr, ptr %zIn.addr, align 8
  %24 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv17 = trunc i64 %sub.ptr.sub to i32
  %call18 = call i32 @ph7_result_string(ptr noundef %21, ptr noundef %22, i32 noundef %conv17)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %while.end
  br label %while.cond20

while.cond20:                                     ; preds = %while.body29, %if.end19
  %25 = load ptr, ptr %zIn.addr, align 8
  %26 = load ptr, ptr %zEnd, align 8
  %cmp21 = icmp ult ptr %25, %26
  br i1 %cmp21, label %land.rhs23, label %land.end28

land.rhs23:                                       ; preds = %while.cond20
  %27 = load ptr, ptr %zIn.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %28 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br label %land.end28

land.end28:                                       ; preds = %land.rhs23, %while.cond20
  %29 = phi i1 [ false, %while.cond20 ], [ %cmp26, %land.rhs23 ]
  br i1 %29, label %while.body29, label %while.end31

while.body29:                                     ; preds = %land.end28
  %30 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr30 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr30, ptr %zIn.addr, align 8
  br label %while.cond20, !llvm.loop !8

while.end31:                                      ; preds = %land.end28
  %31 = load ptr, ptr %zIn.addr, align 8
  %32 = load ptr, ptr %zEnd, align 8
  %cmp32 = icmp uge ptr %31, %32
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %while.end31
  br label %for.end

if.end35:                                         ; preds = %while.end31
  %33 = load ptr, ptr %zIn.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %34 to i32
  %cmp38 = icmp eq i32 %conv37, 60
  br i1 %cmp38, label %if.then40, label %if.end73

if.then40:                                        ; preds = %if.end35
  %35 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr41 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr41, ptr %zIn.addr, align 8
  store ptr %35, ptr %zTag, align 8
  br label %while.cond42

while.cond42:                                     ; preds = %while.body51, %if.then40
  %36 = load ptr, ptr %zIn.addr, align 8
  %37 = load ptr, ptr %zEnd, align 8
  %cmp43 = icmp ult ptr %36, %37
  br i1 %cmp43, label %land.rhs45, label %land.end50

land.rhs45:                                       ; preds = %while.cond42
  %38 = load ptr, ptr %zIn.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx46, align 1
  %conv47 = sext i8 %39 to i32
  %cmp48 = icmp ne i32 %conv47, 62
  br label %land.end50

land.end50:                                       ; preds = %land.rhs45, %while.cond42
  %40 = phi i1 [ false, %while.cond42 ], [ %cmp48, %land.rhs45 ]
  br i1 %40, label %while.body51, label %while.end53

while.body51:                                     ; preds = %land.end50
  %41 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %incdec.ptr52, ptr %zIn.addr, align 8
  br label %while.cond42, !llvm.loop !9

while.end53:                                      ; preds = %land.end50
  %42 = load ptr, ptr %zIn.addr, align 8
  %43 = load ptr, ptr %zEnd, align 8
  %cmp54 = icmp ult ptr %42, %43
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %while.end53
  %44 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr57 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr57, ptr %zIn.addr, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %while.end53
  %45 = load ptr, ptr %zTag, align 8
  %46 = load ptr, ptr %zIn.addr, align 8
  %47 = load ptr, ptr %zTag, align 8
  %sub.ptr.lhs.cast59 = ptrtoint ptr %46 to i64
  %sub.ptr.rhs.cast60 = ptrtoint ptr %47 to i64
  %sub.ptr.sub61 = sub i64 %sub.ptr.lhs.cast59, %sub.ptr.rhs.cast60
  %conv62 = trunc i64 %sub.ptr.sub61 to i32
  %call63 = call i32 @FindTag(ptr noundef %sSet, ptr noundef %45, i32 noundef %conv62)
  store i32 %call63, ptr %rc, align 4
  %48 = load i32, ptr %rc, align 4
  %cmp64 = icmp eq i32 %48, 0
  br i1 %cmp64, label %if.then66, label %if.end72

if.then66:                                        ; preds = %if.end58
  %49 = load ptr, ptr %pCtx.addr, align 8
  %50 = load ptr, ptr %zTag, align 8
  %51 = load ptr, ptr %zIn.addr, align 8
  %52 = load ptr, ptr %zTag, align 8
  %sub.ptr.lhs.cast67 = ptrtoint ptr %51 to i64
  %sub.ptr.rhs.cast68 = ptrtoint ptr %52 to i64
  %sub.ptr.sub69 = sub i64 %sub.ptr.lhs.cast67, %sub.ptr.rhs.cast68
  %conv70 = trunc i64 %sub.ptr.sub69 to i32
  %call71 = call i32 @ph7_result_string(ptr noundef %49, ptr noundef %50, i32 noundef %conv70)
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %if.end58
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end35
  br label %for.cond

for.end:                                          ; preds = %if.then34, %if.then4
  %call74 = call i32 @SySetRelease(ptr noundef %sSet)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @AddTag(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @FindTag(ptr noundef, ptr noundef, i32 noundef) #0

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
