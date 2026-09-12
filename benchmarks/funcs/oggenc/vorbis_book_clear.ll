; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_book_clear(ptr noundef %b) #2 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %valuelist, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8
  %valuelist1 = getelementptr inbounds nuw %struct.codebook, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %valuelist1, align 8
  call void @free(ptr noundef %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %b.addr, align 8
  %codelist = getelementptr inbounds nuw %struct.codebook, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %codelist, align 8
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %b.addr, align 8
  %codelist4 = getelementptr inbounds nuw %struct.codebook, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %codelist4, align 8
  call void @free(ptr noundef %7) #3
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %b.addr, align 8
  %dec_index = getelementptr inbounds nuw %struct.codebook, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %dec_index, align 8
  %tobool6 = icmp ne ptr %9, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr %b.addr, align 8
  %dec_index8 = getelementptr inbounds nuw %struct.codebook, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %dec_index8, align 8
  call void @free(ptr noundef %11) #3
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %12 = load ptr, ptr %b.addr, align 8
  %dec_codelengths = getelementptr inbounds nuw %struct.codebook, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %dec_codelengths, align 8
  %tobool10 = icmp ne ptr %13, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %14 = load ptr, ptr %b.addr, align 8
  %dec_codelengths12 = getelementptr inbounds nuw %struct.codebook, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %dec_codelengths12, align 8
  call void @free(ptr noundef %15) #3
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %16 = load ptr, ptr %b.addr, align 8
  %dec_firsttable = getelementptr inbounds nuw %struct.codebook, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %dec_firsttable, align 8
  %tobool14 = icmp ne ptr %17, null
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %18 = load ptr, ptr %b.addr, align 8
  %dec_firsttable16 = getelementptr inbounds nuw %struct.codebook, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %dec_firsttable16, align 8
  call void @free(ptr noundef %19) #3
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %20 = load ptr, ptr %b.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 80, i1 false)
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
