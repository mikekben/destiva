; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
declare dso_local float @_float32_unpack(i64 noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i64 @_book_maptype1_quantvals(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_book_unquantize(ptr noundef %b, i32 noundef %n, ptr noundef %sparsemap) #2 {
entry:
  %retval = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %sparsemap.addr = alloca ptr, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %count = alloca i64, align 8
  %quantvals = alloca i32, align 4
  %mindel = alloca float, align 4
  %delta = alloca float, align 4
  %r = alloca ptr, align 8
  %last = alloca float, align 4
  %indexdiv = alloca i32, align 4
  %index = alloca i32, align 4
  %val = alloca float, align 4
  %last65 = alloca float, align 4
  %val71 = alloca float, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %sparsemap, ptr %sparsemap.addr, align 8
  store i64 0, ptr %count, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %maptype = getelementptr inbounds nuw %struct.static_codebook, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %maptype, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8
  %maptype1 = getelementptr inbounds nuw %struct.static_codebook, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %maptype1, align 8
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.end111

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %b.addr, align 8
  %q_min = getelementptr inbounds nuw %struct.static_codebook, ptr %4, i32 0, i32 4
  %5 = load i64, ptr %q_min, align 8
  %call = call float @_float32_unpack(i64 noundef %5)
  store float %call, ptr %mindel, align 4
  %6 = load ptr, ptr %b.addr, align 8
  %q_delta = getelementptr inbounds nuw %struct.static_codebook, ptr %6, i32 0, i32 5
  %7 = load i64, ptr %q_delta, align 8
  %call3 = call float @_float32_unpack(i64 noundef %7)
  store float %call3, ptr %delta, align 4
  %8 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %8 to i64
  %9 = load ptr, ptr %b.addr, align 8
  %dim = getelementptr inbounds nuw %struct.static_codebook, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %dim, align 8
  %mul = mul nsw i64 %conv, %10
  %call4 = call noalias ptr @calloc(i64 noundef %mul, i64 noundef 4) #3
  store ptr %call4, ptr %r, align 8
  %11 = load ptr, ptr %b.addr, align 8
  %maptype5 = getelementptr inbounds nuw %struct.static_codebook, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %maptype5, align 8
  switch i32 %12, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.then
  %13 = load ptr, ptr %b.addr, align 8
  %call6 = call i64 @_book_maptype1_quantvals(ptr noundef %13)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %quantvals, align 4
  store i64 0, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %sw.bb
  %14 = load i64, ptr %j, align 8
  %15 = load ptr, ptr %b.addr, align 8
  %entries = getelementptr inbounds nuw %struct.static_codebook, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %entries, align 8
  %cmp8 = icmp slt i64 %14, %16
  br i1 %cmp8, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %sparsemap.addr, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false11

land.lhs.true:                                    ; preds = %for.body
  %18 = load ptr, ptr %b.addr, align 8
  %lengthlist = getelementptr inbounds nuw %struct.static_codebook, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %lengthlist, align 8
  %20 = load i64, ptr %j, align 8
  %arrayidx = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx, align 8
  %tobool10 = icmp ne i64 %21, 0
  br i1 %tobool10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %land.lhs.true, %for.body
  %22 = load ptr, ptr %sparsemap.addr, align 8
  %tobool12 = icmp ne ptr %22, null
  br i1 %tobool12, label %if.end47, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false11, %land.lhs.true
  store float 0.000000e+00, ptr %last, align 4
  store i32 1, ptr %indexdiv, align 4
  store i64 0, ptr %k, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.then13
  %23 = load i64, ptr %k, align 8
  %24 = load ptr, ptr %b.addr, align 8
  %dim15 = getelementptr inbounds nuw %struct.static_codebook, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %dim15, align 8
  %cmp16 = icmp slt i64 %23, %25
  br i1 %cmp16, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond14
  %26 = load i64, ptr %j, align 8
  %27 = load i32, ptr %indexdiv, align 4
  %conv19 = sext i32 %27 to i64
  %div = sdiv i64 %26, %conv19
  %28 = load i32, ptr %quantvals, align 4
  %conv20 = sext i32 %28 to i64
  %rem = srem i64 %div, %conv20
  %conv21 = trunc i64 %rem to i32
  store i32 %conv21, ptr %index, align 4
  %29 = load ptr, ptr %b.addr, align 8
  %quantlist = getelementptr inbounds nuw %struct.static_codebook, ptr %29, i32 0, i32 8
  %30 = load ptr, ptr %quantlist, align 8
  %31 = load i32, ptr %index, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %30, i64 %idxprom
  %32 = load i64, ptr %arrayidx22, align 8
  %conv23 = sitofp i64 %32 to float
  store float %conv23, ptr %val, align 4
  %33 = load float, ptr %val, align 4
  %conv24 = fpext float %33 to double
  %34 = call double @llvm.fabs.f64(double %conv24)
  %35 = load float, ptr %delta, align 4
  %conv25 = fpext float %35 to double
  %36 = load float, ptr %mindel, align 4
  %conv27 = fpext float %36 to double
  %37 = call double @llvm.fmuladd.f64(double %34, double %conv25, double %conv27)
  %38 = load float, ptr %last, align 4
  %conv28 = fpext float %38 to double
  %add = fadd double %37, %conv28
  %conv29 = fptrunc double %add to float
  store float %conv29, ptr %val, align 4
  %39 = load ptr, ptr %b.addr, align 8
  %q_sequencep = getelementptr inbounds nuw %struct.static_codebook, ptr %39, i32 0, i32 7
  %40 = load i32, ptr %q_sequencep, align 4
  %tobool30 = icmp ne i32 %40, 0
  br i1 %tobool30, label %if.then31, label %if.end

if.then31:                                        ; preds = %for.body18
  %41 = load float, ptr %val, align 4
  store float %41, ptr %last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then31, %for.body18
  %42 = load ptr, ptr %sparsemap.addr, align 8
  %tobool32 = icmp ne ptr %42, null
  br i1 %tobool32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end
  %43 = load float, ptr %val, align 4
  %44 = load ptr, ptr %r, align 8
  %45 = load ptr, ptr %sparsemap.addr, align 8
  %46 = load i64, ptr %count, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %45, i64 %46
  %47 = load i32, ptr %arrayidx34, align 4
  %conv35 = sext i32 %47 to i64
  %48 = load ptr, ptr %b.addr, align 8
  %dim36 = getelementptr inbounds nuw %struct.static_codebook, ptr %48, i32 0, i32 0
  %49 = load i64, ptr %dim36, align 8
  %mul37 = mul nsw i64 %conv35, %49
  %50 = load i64, ptr %k, align 8
  %add38 = add nsw i64 %mul37, %50
  %arrayidx39 = getelementptr inbounds float, ptr %44, i64 %add38
  store float %43, ptr %arrayidx39, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end
  %51 = load float, ptr %val, align 4
  %52 = load ptr, ptr %r, align 8
  %53 = load i64, ptr %count, align 8
  %54 = load ptr, ptr %b.addr, align 8
  %dim40 = getelementptr inbounds nuw %struct.static_codebook, ptr %54, i32 0, i32 0
  %55 = load i64, ptr %dim40, align 8
  %mul41 = mul nsw i64 %53, %55
  %56 = load i64, ptr %k, align 8
  %add42 = add nsw i64 %mul41, %56
  %arrayidx43 = getelementptr inbounds float, ptr %52, i64 %add42
  store float %51, ptr %arrayidx43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then33
  %57 = load i32, ptr %quantvals, align 4
  %58 = load i32, ptr %indexdiv, align 4
  %mul45 = mul nsw i32 %58, %57
  store i32 %mul45, ptr %indexdiv, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end44
  %59 = load i64, ptr %k, align 8
  %inc = add nsw i64 %59, 1
  store i64 %inc, ptr %k, align 8
  br label %for.cond14, !llvm.loop !6

for.end:                                          ; preds = %for.cond14
  %60 = load i64, ptr %count, align 8
  %inc46 = add nsw i64 %60, 1
  store i64 %inc46, ptr %count, align 8
  br label %if.end47

if.end47:                                         ; preds = %for.end, %lor.lhs.false11
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %61 = load i64, ptr %j, align 8
  %inc49 = add nsw i64 %61, 1
  store i64 %inc49, ptr %j, align 8
  br label %for.cond, !llvm.loop !8

for.end50:                                        ; preds = %for.cond
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.then
  store i64 0, ptr %j, align 8
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc108, %sw.bb51
  %62 = load i64, ptr %j, align 8
  %63 = load ptr, ptr %b.addr, align 8
  %entries53 = getelementptr inbounds nuw %struct.static_codebook, ptr %63, i32 0, i32 1
  %64 = load i64, ptr %entries53, align 8
  %cmp54 = icmp slt i64 %62, %64
  br i1 %cmp54, label %for.body56, label %for.end110

for.body56:                                       ; preds = %for.cond52
  %65 = load ptr, ptr %sparsemap.addr, align 8
  %tobool57 = icmp ne ptr %65, null
  br i1 %tobool57, label %land.lhs.true58, label %lor.lhs.false62

land.lhs.true58:                                  ; preds = %for.body56
  %66 = load ptr, ptr %b.addr, align 8
  %lengthlist59 = getelementptr inbounds nuw %struct.static_codebook, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %lengthlist59, align 8
  %68 = load i64, ptr %j, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %67, i64 %68
  %69 = load i64, ptr %arrayidx60, align 8
  %tobool61 = icmp ne i64 %69, 0
  br i1 %tobool61, label %if.then64, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %land.lhs.true58, %for.body56
  %70 = load ptr, ptr %sparsemap.addr, align 8
  %tobool63 = icmp ne ptr %70, null
  br i1 %tobool63, label %if.end107, label %if.then64

if.then64:                                        ; preds = %lor.lhs.false62, %land.lhs.true58
  store float 0.000000e+00, ptr %last65, align 4
  store i64 0, ptr %k, align 8
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc103, %if.then64
  %71 = load i64, ptr %k, align 8
  %72 = load ptr, ptr %b.addr, align 8
  %dim67 = getelementptr inbounds nuw %struct.static_codebook, ptr %72, i32 0, i32 0
  %73 = load i64, ptr %dim67, align 8
  %cmp68 = icmp slt i64 %71, %73
  br i1 %cmp68, label %for.body70, label %for.end105

for.body70:                                       ; preds = %for.cond66
  %74 = load ptr, ptr %b.addr, align 8
  %quantlist72 = getelementptr inbounds nuw %struct.static_codebook, ptr %74, i32 0, i32 8
  %75 = load ptr, ptr %quantlist72, align 8
  %76 = load i64, ptr %j, align 8
  %77 = load ptr, ptr %b.addr, align 8
  %dim73 = getelementptr inbounds nuw %struct.static_codebook, ptr %77, i32 0, i32 0
  %78 = load i64, ptr %dim73, align 8
  %mul74 = mul nsw i64 %76, %78
  %79 = load i64, ptr %k, align 8
  %add75 = add nsw i64 %mul74, %79
  %arrayidx76 = getelementptr inbounds i64, ptr %75, i64 %add75
  %80 = load i64, ptr %arrayidx76, align 8
  %conv77 = sitofp i64 %80 to float
  store float %conv77, ptr %val71, align 4
  %81 = load float, ptr %val71, align 4
  %conv78 = fpext float %81 to double
  %82 = call double @llvm.fabs.f64(double %conv78)
  %83 = load float, ptr %delta, align 4
  %conv79 = fpext float %83 to double
  %84 = load float, ptr %mindel, align 4
  %conv81 = fpext float %84 to double
  %85 = call double @llvm.fmuladd.f64(double %82, double %conv79, double %conv81)
  %86 = load float, ptr %last65, align 4
  %conv82 = fpext float %86 to double
  %add83 = fadd double %85, %conv82
  %conv84 = fptrunc double %add83 to float
  store float %conv84, ptr %val71, align 4
  %87 = load ptr, ptr %b.addr, align 8
  %q_sequencep85 = getelementptr inbounds nuw %struct.static_codebook, ptr %87, i32 0, i32 7
  %88 = load i32, ptr %q_sequencep85, align 4
  %tobool86 = icmp ne i32 %88, 0
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %for.body70
  %89 = load float, ptr %val71, align 4
  store float %89, ptr %last65, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %for.body70
  %90 = load ptr, ptr %sparsemap.addr, align 8
  %tobool89 = icmp ne ptr %90, null
  br i1 %tobool89, label %if.then90, label %if.else97

if.then90:                                        ; preds = %if.end88
  %91 = load float, ptr %val71, align 4
  %92 = load ptr, ptr %r, align 8
  %93 = load ptr, ptr %sparsemap.addr, align 8
  %94 = load i64, ptr %count, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %93, i64 %94
  %95 = load i32, ptr %arrayidx91, align 4
  %conv92 = sext i32 %95 to i64
  %96 = load ptr, ptr %b.addr, align 8
  %dim93 = getelementptr inbounds nuw %struct.static_codebook, ptr %96, i32 0, i32 0
  %97 = load i64, ptr %dim93, align 8
  %mul94 = mul nsw i64 %conv92, %97
  %98 = load i64, ptr %k, align 8
  %add95 = add nsw i64 %mul94, %98
  %arrayidx96 = getelementptr inbounds float, ptr %92, i64 %add95
  store float %91, ptr %arrayidx96, align 4
  br label %if.end102

if.else97:                                        ; preds = %if.end88
  %99 = load float, ptr %val71, align 4
  %100 = load ptr, ptr %r, align 8
  %101 = load i64, ptr %count, align 8
  %102 = load ptr, ptr %b.addr, align 8
  %dim98 = getelementptr inbounds nuw %struct.static_codebook, ptr %102, i32 0, i32 0
  %103 = load i64, ptr %dim98, align 8
  %mul99 = mul nsw i64 %101, %103
  %104 = load i64, ptr %k, align 8
  %add100 = add nsw i64 %mul99, %104
  %arrayidx101 = getelementptr inbounds float, ptr %100, i64 %add100
  store float %99, ptr %arrayidx101, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.else97, %if.then90
  br label %for.inc103

for.inc103:                                       ; preds = %if.end102
  %105 = load i64, ptr %k, align 8
  %inc104 = add nsw i64 %105, 1
  store i64 %inc104, ptr %k, align 8
  br label %for.cond66, !llvm.loop !9

for.end105:                                       ; preds = %for.cond66
  %106 = load i64, ptr %count, align 8
  %inc106 = add nsw i64 %106, 1
  store i64 %inc106, ptr %count, align 8
  br label %if.end107

if.end107:                                        ; preds = %for.end105, %lor.lhs.false62
  br label %for.inc108

for.inc108:                                       ; preds = %if.end107
  %107 = load i64, ptr %j, align 8
  %inc109 = add nsw i64 %107, 1
  store i64 %inc109, ptr %j, align 8
  br label %for.cond52, !llvm.loop !10

for.end110:                                       ; preds = %for.cond52
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end110, %for.end50, %if.then
  %108 = load ptr, ptr %r, align 8
  store ptr %108, ptr %retval, align 8
  br label %return

if.end111:                                        ; preds = %lor.lhs.false
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end111, %sw.epilog
  %109 = load ptr, ptr %retval, align 8
  ret ptr %109
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) }

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
!10 = distinct !{!10, !7}
