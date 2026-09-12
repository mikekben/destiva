; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @oe_write_page(ptr noundef %page, ptr noundef %fp) #0 {
entry:
  %page.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %written = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  %0 = load ptr, ptr %page.addr, align 8
  %header = getelementptr inbounds nuw %struct.ogg_page, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %header, align 8
  %2 = load ptr, ptr %page.addr, align 8
  %header_len = getelementptr inbounds nuw %struct.ogg_page, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %header_len, align 8
  %4 = load ptr, ptr %fp.addr, align 8
  %call = call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %3, ptr noundef %4)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %written, align 4
  %5 = load ptr, ptr %page.addr, align 8
  %body = getelementptr inbounds nuw %struct.ogg_page, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %body, align 8
  %7 = load ptr, ptr %page.addr, align 8
  %body_len = getelementptr inbounds nuw %struct.ogg_page, ptr %7, i32 0, i32 3
  %8 = load i64, ptr %body_len, align 8
  %9 = load ptr, ptr %fp.addr, align 8
  %call1 = call i64 @fwrite(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %9)
  %10 = load i32, ptr %written, align 4
  %conv2 = sext i32 %10 to i64
  %add = add i64 %conv2, %call1
  %conv3 = trunc i64 %add to i32
  store i32 %conv3, ptr %written, align 4
  %11 = load i32, ptr %written, align 4
  ret i32 %11
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

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
