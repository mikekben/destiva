; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.encode_aux_nearestmatch = type { ptr, ptr, ptr, ptr, i64, i64 }
%struct.encode_aux_threshmatch = type { ptr, ptr, i32, i32 }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_staticbook_clear(ptr noundef %b) #2 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %allocedp = getelementptr inbounds nuw %struct.static_codebook, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %allocedp, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8
  %quantlist = getelementptr inbounds nuw %struct.static_codebook, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %quantlist, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %b.addr, align 8
  %quantlist3 = getelementptr inbounds nuw %struct.static_codebook, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %quantlist3, align 8
  call void @free(ptr noundef %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %b.addr, align 8
  %lengthlist = getelementptr inbounds nuw %struct.static_codebook, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %lengthlist, align 8
  %tobool4 = icmp ne ptr %7, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %b.addr, align 8
  %lengthlist6 = getelementptr inbounds nuw %struct.static_codebook, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %lengthlist6, align 8
  call void @free(ptr noundef %9) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %10 = load ptr, ptr %b.addr, align 8
  %nearest_tree = getelementptr inbounds nuw %struct.static_codebook, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %nearest_tree, align 8
  %tobool8 = icmp ne ptr %11, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end7
  %12 = load ptr, ptr %b.addr, align 8
  %nearest_tree10 = getelementptr inbounds nuw %struct.static_codebook, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %nearest_tree10, align 8
  %ptr0 = getelementptr inbounds nuw %struct.encode_aux_nearestmatch, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %ptr0, align 8
  call void @free(ptr noundef %14) #3
  %15 = load ptr, ptr %b.addr, align 8
  %nearest_tree11 = getelementptr inbounds nuw %struct.static_codebook, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %nearest_tree11, align 8
  %ptr1 = getelementptr inbounds nuw %struct.encode_aux_nearestmatch, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %ptr1, align 8
  call void @free(ptr noundef %17) #3
  %18 = load ptr, ptr %b.addr, align 8
  %nearest_tree12 = getelementptr inbounds nuw %struct.static_codebook, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %nearest_tree12, align 8
  %p = getelementptr inbounds nuw %struct.encode_aux_nearestmatch, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %20) #3
  %21 = load ptr, ptr %b.addr, align 8
  %nearest_tree13 = getelementptr inbounds nuw %struct.static_codebook, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %nearest_tree13, align 8
  %q = getelementptr inbounds nuw %struct.encode_aux_nearestmatch, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %q, align 8
  call void @free(ptr noundef %23) #3
  %24 = load ptr, ptr %b.addr, align 8
  %nearest_tree14 = getelementptr inbounds nuw %struct.static_codebook, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %nearest_tree14, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %25, i8 0, i64 48, i1 false)
  %26 = load ptr, ptr %b.addr, align 8
  %nearest_tree15 = getelementptr inbounds nuw %struct.static_codebook, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %nearest_tree15, align 8
  call void @free(ptr noundef %27) #3
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end7
  %28 = load ptr, ptr %b.addr, align 8
  %thresh_tree = getelementptr inbounds nuw %struct.static_codebook, ptr %28, i32 0, i32 10
  %29 = load ptr, ptr %thresh_tree, align 8
  %tobool17 = icmp ne ptr %29, null
  br i1 %tobool17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end16
  %30 = load ptr, ptr %b.addr, align 8
  %thresh_tree19 = getelementptr inbounds nuw %struct.static_codebook, ptr %30, i32 0, i32 10
  %31 = load ptr, ptr %thresh_tree19, align 8
  %quantthresh = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %quantthresh, align 8
  call void @free(ptr noundef %32) #3
  %33 = load ptr, ptr %b.addr, align 8
  %thresh_tree20 = getelementptr inbounds nuw %struct.static_codebook, ptr %33, i32 0, i32 10
  %34 = load ptr, ptr %thresh_tree20, align 8
  %quantmap = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %quantmap, align 8
  call void @free(ptr noundef %35) #3
  %36 = load ptr, ptr %b.addr, align 8
  %thresh_tree21 = getelementptr inbounds nuw %struct.static_codebook, ptr %36, i32 0, i32 10
  %37 = load ptr, ptr %thresh_tree21, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %37, i8 0, i64 24, i1 false)
  %38 = load ptr, ptr %b.addr, align 8
  %thresh_tree22 = getelementptr inbounds nuw %struct.static_codebook, ptr %38, i32 0, i32 10
  %39 = load ptr, ptr %thresh_tree22, align 8
  call void @free(ptr noundef %39) #3
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end16
  %40 = load ptr, ptr %b.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %40, i8 0, i64 96, i1 false)
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %entry
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
