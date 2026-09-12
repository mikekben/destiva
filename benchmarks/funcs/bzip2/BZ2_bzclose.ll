; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

@stdin = external global ptr, align 8
@stdout = external global ptr, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bzWriteClose(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bzReadClose(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzclose(ptr noundef %b) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %bzerr = alloca i32, align 4
  %fp = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %handle = getelementptr inbounds nuw %struct.bzFile, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %handle, align 8
  store ptr %1, ptr %fp, align 8
  %2 = load ptr, ptr %b.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end9

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %b.addr, align 8
  %writing = getelementptr inbounds nuw %struct.bzFile, ptr %3, i32 0, i32 3
  %4 = load i8, ptr %writing, align 4
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %b.addr, align 8
  call void @BZ2_bzWriteClose(ptr noundef %bzerr, ptr noundef %5, i32 noundef 0, ptr noundef null, ptr noundef null)
  %6 = load i32, ptr %bzerr, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then1
  %7 = load ptr, ptr %b.addr, align 8
  call void @BZ2_bzWriteClose(ptr noundef null, ptr noundef %7, i32 noundef 1, ptr noundef null, ptr noundef null)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1
  br label %if.end5

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %b.addr, align 8
  call void @BZ2_bzReadClose(ptr noundef %bzerr, ptr noundef %8)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end4
  %9 = load ptr, ptr %fp, align 8
  %10 = load ptr, ptr @stdin, align 8
  %cmp6 = icmp ne ptr %9, %10
  br i1 %cmp6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %11 = load ptr, ptr %fp, align 8
  %12 = load ptr, ptr @stdout, align 8
  %cmp7 = icmp ne ptr %11, %12
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %fp, align 8
  %call = call i32 @fclose(ptr noundef %13)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end5, %if.then
  ret void
}

declare i32 @fclose(ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
