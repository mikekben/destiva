; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }

@__const.ov_open.callbacks = external hidden unnamed_addr constant %struct.ov_callbacks, align 8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ov_open_callbacks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef byval(%struct.ov_callbacks) align 8) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_open(ptr noundef %f, ptr noundef %vf, ptr noundef %initial, i64 noundef %ibytes) #1 {
entry:
  %f.addr = alloca ptr, align 8
  %vf.addr = alloca ptr, align 8
  %initial.addr = alloca ptr, align 8
  %ibytes.addr = alloca i64, align 8
  %callbacks = alloca %struct.ov_callbacks, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %initial, ptr %initial.addr, align 8
  store i64 %ibytes, ptr %ibytes.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %callbacks, ptr align 8 @__const.ov_open.callbacks, i64 32, i1 false)
  %0 = load ptr, ptr %f.addr, align 8
  %1 = load ptr, ptr %vf.addr, align 8
  %2 = load ptr, ptr %initial.addr, align 8
  %3 = load i64, ptr %ibytes.addr, align 8
  %call = call i32 @ov_open_callbacks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef byval(%struct.ov_callbacks) align 8 %callbacks)
  ret i32 %call
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
