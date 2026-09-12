; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i32 @_ilog(i32 noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i64 @_book_maptype1_quantvals(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_staticbook_clear(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_staticbook_unpack(ptr noundef %opb, ptr noundef %s) #2 {
entry:
  %retval = alloca i32, align 4
  %opb.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %num = alloca i64, align 8
  %num33 = alloca i64, align 8
  %length = alloca i64, align 8
  %num58 = alloca i64, align 8
  %quantvals = alloca i32, align 4
  store ptr %opb, ptr %opb.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 96, i1 false)
  %1 = load ptr, ptr %s.addr, align 8
  %allocedp = getelementptr inbounds nuw %struct.static_codebook, ptr %1, i32 0, i32 12
  store i32 1, ptr %allocedp, align 8
  %2 = load ptr, ptr %opb.addr, align 8
  %call = call i64 @oggpack_read(ptr noundef %2, i32 noundef 24)
  %cmp = icmp ne i64 %call, 5653314
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %_eofout

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %opb.addr, align 8
  %call1 = call i64 @oggpack_read(ptr noundef %3, i32 noundef 16)
  %4 = load ptr, ptr %s.addr, align 8
  %dim = getelementptr inbounds nuw %struct.static_codebook, ptr %4, i32 0, i32 0
  store i64 %call1, ptr %dim, align 8
  %5 = load ptr, ptr %opb.addr, align 8
  %call2 = call i64 @oggpack_read(ptr noundef %5, i32 noundef 24)
  %6 = load ptr, ptr %s.addr, align 8
  %entries = getelementptr inbounds nuw %struct.static_codebook, ptr %6, i32 0, i32 1
  store i64 %call2, ptr %entries, align 8
  %7 = load ptr, ptr %s.addr, align 8
  %entries3 = getelementptr inbounds nuw %struct.static_codebook, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %entries3, align 8
  %cmp4 = icmp eq i64 %8, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %_eofout

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %opb.addr, align 8
  %call7 = call i64 @oggpack_read(ptr noundef %9, i32 noundef 1)
  %conv = trunc i64 %call7 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb46
  ]

sw.bb:                                            ; preds = %if.end6
  %10 = load ptr, ptr %s.addr, align 8
  %entries8 = getelementptr inbounds nuw %struct.static_codebook, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %entries8, align 8
  %mul = mul i64 8, %11
  %call9 = call noalias ptr @malloc(i64 noundef %mul) #3
  %12 = load ptr, ptr %s.addr, align 8
  %lengthlist = getelementptr inbounds nuw %struct.static_codebook, ptr %12, i32 0, i32 2
  store ptr %call9, ptr %lengthlist, align 8
  %13 = load ptr, ptr %opb.addr, align 8
  %call10 = call i64 @oggpack_read(ptr noundef %13, i32 noundef 1)
  %tobool = icmp ne i64 %call10, 0
  br i1 %tobool, label %if.then11, label %if.else27

if.then11:                                        ; preds = %sw.bb
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then11
  %14 = load i64, ptr %i, align 8
  %15 = load ptr, ptr %s.addr, align 8
  %entries12 = getelementptr inbounds nuw %struct.static_codebook, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %entries12, align 8
  %cmp13 = icmp slt i64 %14, %16
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %opb.addr, align 8
  %call15 = call i64 @oggpack_read(ptr noundef %17, i32 noundef 1)
  %tobool16 = icmp ne i64 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body
  %18 = load ptr, ptr %opb.addr, align 8
  %call18 = call i64 @oggpack_read(ptr noundef %18, i32 noundef 5)
  store i64 %call18, ptr %num, align 8
  %19 = load i64, ptr %num, align 8
  %cmp19 = icmp eq i64 %19, -1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then17
  br label %_eofout

if.end22:                                         ; preds = %if.then17
  %20 = load i64, ptr %num, align 8
  %add = add nsw i64 %20, 1
  %21 = load ptr, ptr %s.addr, align 8
  %lengthlist23 = getelementptr inbounds nuw %struct.static_codebook, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %lengthlist23, align 8
  %23 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i64, ptr %22, i64 %23
  store i64 %add, ptr %arrayidx, align 8
  br label %if.end26

if.else:                                          ; preds = %for.body
  %24 = load ptr, ptr %s.addr, align 8
  %lengthlist24 = getelementptr inbounds nuw %struct.static_codebook, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %lengthlist24, align 8
  %26 = load i64, ptr %i, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %25, i64 %26
  store i64 0, ptr %arrayidx25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end22
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %27 = load i64, ptr %i, align 8
  %inc = add nsw i64 %27, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end45

if.else27:                                        ; preds = %sw.bb
  store i64 0, ptr %i, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc42, %if.else27
  %28 = load i64, ptr %i, align 8
  %29 = load ptr, ptr %s.addr, align 8
  %entries29 = getelementptr inbounds nuw %struct.static_codebook, ptr %29, i32 0, i32 1
  %30 = load i64, ptr %entries29, align 8
  %cmp30 = icmp slt i64 %28, %30
  br i1 %cmp30, label %for.body32, label %for.end44

for.body32:                                       ; preds = %for.cond28
  %31 = load ptr, ptr %opb.addr, align 8
  %call34 = call i64 @oggpack_read(ptr noundef %31, i32 noundef 5)
  store i64 %call34, ptr %num33, align 8
  %32 = load i64, ptr %num33, align 8
  %cmp35 = icmp eq i64 %32, -1
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body32
  br label %_eofout

if.end38:                                         ; preds = %for.body32
  %33 = load i64, ptr %num33, align 8
  %add39 = add nsw i64 %33, 1
  %34 = load ptr, ptr %s.addr, align 8
  %lengthlist40 = getelementptr inbounds nuw %struct.static_codebook, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %lengthlist40, align 8
  %36 = load i64, ptr %i, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %35, i64 %36
  store i64 %add39, ptr %arrayidx41, align 8
  br label %for.inc42

for.inc42:                                        ; preds = %if.end38
  %37 = load i64, ptr %i, align 8
  %inc43 = add nsw i64 %37, 1
  store i64 %inc43, ptr %i, align 8
  br label %for.cond28, !llvm.loop !8

for.end44:                                        ; preds = %for.cond28
  br label %if.end45

if.end45:                                         ; preds = %for.end44, %for.end
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end6
  %38 = load ptr, ptr %opb.addr, align 8
  %call47 = call i64 @oggpack_read(ptr noundef %38, i32 noundef 5)
  %add48 = add nsw i64 %call47, 1
  store i64 %add48, ptr %length, align 8
  %39 = load ptr, ptr %s.addr, align 8
  %entries49 = getelementptr inbounds nuw %struct.static_codebook, ptr %39, i32 0, i32 1
  %40 = load i64, ptr %entries49, align 8
  %mul50 = mul i64 8, %40
  %call51 = call noalias ptr @malloc(i64 noundef %mul50) #3
  %41 = load ptr, ptr %s.addr, align 8
  %lengthlist52 = getelementptr inbounds nuw %struct.static_codebook, ptr %41, i32 0, i32 2
  store ptr %call51, ptr %lengthlist52, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond53

for.cond53:                                       ; preds = %for.end79, %sw.bb46
  %42 = load i64, ptr %i, align 8
  %43 = load ptr, ptr %s.addr, align 8
  %entries54 = getelementptr inbounds nuw %struct.static_codebook, ptr %43, i32 0, i32 1
  %44 = load i64, ptr %entries54, align 8
  %cmp55 = icmp slt i64 %42, %44
  br i1 %cmp55, label %for.body57, label %for.end81

for.body57:                                       ; preds = %for.cond53
  %45 = load ptr, ptr %opb.addr, align 8
  %46 = load ptr, ptr %s.addr, align 8
  %entries59 = getelementptr inbounds nuw %struct.static_codebook, ptr %46, i32 0, i32 1
  %47 = load i64, ptr %entries59, align 8
  %48 = load i64, ptr %i, align 8
  %sub = sub nsw i64 %47, %48
  %conv60 = trunc i64 %sub to i32
  %call61 = call i32 @_ilog(i32 noundef %conv60)
  %call62 = call i64 @oggpack_read(ptr noundef %45, i32 noundef %call61)
  store i64 %call62, ptr %num58, align 8
  %49 = load i64, ptr %num58, align 8
  %cmp63 = icmp eq i64 %49, -1
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %for.body57
  br label %_eofout

if.end66:                                         ; preds = %for.body57
  store i64 0, ptr %j, align 8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc76, %if.end66
  %50 = load i64, ptr %j, align 8
  %51 = load i64, ptr %num58, align 8
  %cmp68 = icmp slt i64 %50, %51
  br i1 %cmp68, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond67
  %52 = load i64, ptr %i, align 8
  %53 = load ptr, ptr %s.addr, align 8
  %entries70 = getelementptr inbounds nuw %struct.static_codebook, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %entries70, align 8
  %cmp71 = icmp slt i64 %52, %54
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond67
  %55 = phi i1 [ false, %for.cond67 ], [ %cmp71, %land.rhs ]
  br i1 %55, label %for.body73, label %for.end79

for.body73:                                       ; preds = %land.end
  %56 = load i64, ptr %length, align 8
  %57 = load ptr, ptr %s.addr, align 8
  %lengthlist74 = getelementptr inbounds nuw %struct.static_codebook, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %lengthlist74, align 8
  %59 = load i64, ptr %i, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %58, i64 %59
  store i64 %56, ptr %arrayidx75, align 8
  br label %for.inc76

for.inc76:                                        ; preds = %for.body73
  %60 = load i64, ptr %j, align 8
  %inc77 = add nsw i64 %60, 1
  store i64 %inc77, ptr %j, align 8
  %61 = load i64, ptr %i, align 8
  %inc78 = add nsw i64 %61, 1
  store i64 %inc78, ptr %i, align 8
  br label %for.cond67, !llvm.loop !9

for.end79:                                        ; preds = %land.end
  %62 = load i64, ptr %length, align 8
  %inc80 = add nsw i64 %62, 1
  store i64 %inc80, ptr %length, align 8
  br label %for.cond53, !llvm.loop !10

for.end81:                                        ; preds = %for.cond53
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  store i32 -1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %for.end81, %if.end45
  %63 = load ptr, ptr %opb.addr, align 8
  %call82 = call i64 @oggpack_read(ptr noundef %63, i32 noundef 4)
  %conv83 = trunc i64 %call82 to i32
  %64 = load ptr, ptr %s.addr, align 8
  %maptype = getelementptr inbounds nuw %struct.static_codebook, ptr %64, i32 0, i32 3
  store i32 %conv83, ptr %maptype, align 8
  switch i32 %conv83, label %sw.default126 [
    i32 0, label %sw.bb84
    i32 1, label %sw.bb85
    i32 2, label %sw.bb85
  ]

sw.bb84:                                          ; preds = %sw.epilog
  br label %sw.epilog127

sw.bb85:                                          ; preds = %sw.epilog, %sw.epilog
  %65 = load ptr, ptr %opb.addr, align 8
  %call86 = call i64 @oggpack_read(ptr noundef %65, i32 noundef 32)
  %66 = load ptr, ptr %s.addr, align 8
  %q_min = getelementptr inbounds nuw %struct.static_codebook, ptr %66, i32 0, i32 4
  store i64 %call86, ptr %q_min, align 8
  %67 = load ptr, ptr %opb.addr, align 8
  %call87 = call i64 @oggpack_read(ptr noundef %67, i32 noundef 32)
  %68 = load ptr, ptr %s.addr, align 8
  %q_delta = getelementptr inbounds nuw %struct.static_codebook, ptr %68, i32 0, i32 5
  store i64 %call87, ptr %q_delta, align 8
  %69 = load ptr, ptr %opb.addr, align 8
  %call88 = call i64 @oggpack_read(ptr noundef %69, i32 noundef 4)
  %add89 = add nsw i64 %call88, 1
  %conv90 = trunc i64 %add89 to i32
  %70 = load ptr, ptr %s.addr, align 8
  %q_quant = getelementptr inbounds nuw %struct.static_codebook, ptr %70, i32 0, i32 6
  store i32 %conv90, ptr %q_quant, align 8
  %71 = load ptr, ptr %opb.addr, align 8
  %call91 = call i64 @oggpack_read(ptr noundef %71, i32 noundef 1)
  %conv92 = trunc i64 %call91 to i32
  %72 = load ptr, ptr %s.addr, align 8
  %q_sequencep = getelementptr inbounds nuw %struct.static_codebook, ptr %72, i32 0, i32 7
  store i32 %conv92, ptr %q_sequencep, align 4
  store i32 0, ptr %quantvals, align 4
  %73 = load ptr, ptr %s.addr, align 8
  %maptype93 = getelementptr inbounds nuw %struct.static_codebook, ptr %73, i32 0, i32 3
  %74 = load i32, ptr %maptype93, align 8
  switch i32 %74, label %sw.epilog102 [
    i32 1, label %sw.bb94
    i32 2, label %sw.bb97
  ]

sw.bb94:                                          ; preds = %sw.bb85
  %75 = load ptr, ptr %s.addr, align 8
  %call95 = call i64 @_book_maptype1_quantvals(ptr noundef %75)
  %conv96 = trunc i64 %call95 to i32
  store i32 %conv96, ptr %quantvals, align 4
  br label %sw.epilog102

sw.bb97:                                          ; preds = %sw.bb85
  %76 = load ptr, ptr %s.addr, align 8
  %entries98 = getelementptr inbounds nuw %struct.static_codebook, ptr %76, i32 0, i32 1
  %77 = load i64, ptr %entries98, align 8
  %78 = load ptr, ptr %s.addr, align 8
  %dim99 = getelementptr inbounds nuw %struct.static_codebook, ptr %78, i32 0, i32 0
  %79 = load i64, ptr %dim99, align 8
  %mul100 = mul nsw i64 %77, %79
  %conv101 = trunc i64 %mul100 to i32
  store i32 %conv101, ptr %quantvals, align 4
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %sw.bb97, %sw.bb94, %sw.bb85
  %80 = load i32, ptr %quantvals, align 4
  %conv103 = sext i32 %80 to i64
  %mul104 = mul i64 8, %conv103
  %call105 = call noalias ptr @malloc(i64 noundef %mul104) #3
  %81 = load ptr, ptr %s.addr, align 8
  %quantlist = getelementptr inbounds nuw %struct.static_codebook, ptr %81, i32 0, i32 8
  store ptr %call105, ptr %quantlist, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc115, %sw.epilog102
  %82 = load i64, ptr %i, align 8
  %83 = load i32, ptr %quantvals, align 4
  %conv107 = sext i32 %83 to i64
  %cmp108 = icmp slt i64 %82, %conv107
  br i1 %cmp108, label %for.body110, label %for.end117

for.body110:                                      ; preds = %for.cond106
  %84 = load ptr, ptr %opb.addr, align 8
  %85 = load ptr, ptr %s.addr, align 8
  %q_quant111 = getelementptr inbounds nuw %struct.static_codebook, ptr %85, i32 0, i32 6
  %86 = load i32, ptr %q_quant111, align 8
  %call112 = call i64 @oggpack_read(ptr noundef %84, i32 noundef %86)
  %87 = load ptr, ptr %s.addr, align 8
  %quantlist113 = getelementptr inbounds nuw %struct.static_codebook, ptr %87, i32 0, i32 8
  %88 = load ptr, ptr %quantlist113, align 8
  %89 = load i64, ptr %i, align 8
  %arrayidx114 = getelementptr inbounds i64, ptr %88, i64 %89
  store i64 %call112, ptr %arrayidx114, align 8
  br label %for.inc115

for.inc115:                                       ; preds = %for.body110
  %90 = load i64, ptr %i, align 8
  %inc116 = add nsw i64 %90, 1
  store i64 %inc116, ptr %i, align 8
  br label %for.cond106, !llvm.loop !11

for.end117:                                       ; preds = %for.cond106
  %91 = load i32, ptr %quantvals, align 4
  %tobool118 = icmp ne i32 %91, 0
  br i1 %tobool118, label %land.lhs.true, label %if.end125

land.lhs.true:                                    ; preds = %for.end117
  %92 = load ptr, ptr %s.addr, align 8
  %quantlist119 = getelementptr inbounds nuw %struct.static_codebook, ptr %92, i32 0, i32 8
  %93 = load ptr, ptr %quantlist119, align 8
  %94 = load i32, ptr %quantvals, align 4
  %sub120 = sub nsw i32 %94, 1
  %idxprom = sext i32 %sub120 to i64
  %arrayidx121 = getelementptr inbounds i64, ptr %93, i64 %idxprom
  %95 = load i64, ptr %arrayidx121, align 8
  %cmp122 = icmp eq i64 %95, -1
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %land.lhs.true
  br label %_eofout

if.end125:                                        ; preds = %land.lhs.true, %for.end117
  br label %sw.epilog127

sw.default126:                                    ; preds = %sw.epilog
  br label %_errout

sw.epilog127:                                     ; preds = %if.end125, %sw.bb84
  store i32 0, ptr %retval, align 4
  br label %return

_errout:                                          ; preds = %sw.default126
  br label %_eofout

_eofout:                                          ; preds = %_errout, %if.then124, %if.then65, %if.then37, %if.then21, %if.then5, %if.then
  %96 = load ptr, ptr %s.addr, align 8
  call void @vorbis_staticbook_clear(ptr noundef %96)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %_eofout, %sw.epilog127, %sw.default
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) }

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
!11 = distinct !{!11, !7}
