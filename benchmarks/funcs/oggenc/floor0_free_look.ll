; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_floor0 = type { i32, i32, ptr, [2 x i32], ptr, i64, i64 }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @floor0_free_look(ptr noundef %i) #2 {
entry:
  %i.addr = alloca ptr, align 8
  %look = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  %0 = load ptr, ptr %i.addr, align 8
  store ptr %0, ptr %look, align 8
  %1 = load ptr, ptr %look, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %look, align 8
  %linearmap = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %linearmap, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then2, label %if.end16

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %look, align 8
  %linearmap3 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %linearmap3, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx, align 8
  %tobool4 = icmp ne ptr %6, null
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  %7 = load ptr, ptr %look, align 8
  %linearmap6 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %linearmap6, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx7, align 8
  call void @free(ptr noundef %9) #3
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then2
  %10 = load ptr, ptr %look, align 8
  %linearmap8 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %linearmap8, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %11, i64 1
  %12 = load ptr, ptr %arrayidx9, align 8
  %tobool10 = icmp ne ptr %12, null
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %13 = load ptr, ptr %look, align 8
  %linearmap12 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %linearmap12, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx13, align 8
  call void @free(ptr noundef %15) #3
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  %16 = load ptr, ptr %look, align 8
  %linearmap15 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %linearmap15, align 8
  call void @free(ptr noundef %17) #3
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.then
  %18 = load ptr, ptr %look, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 48, i1 false)
  %19 = load ptr, ptr %look, align 8
  call void @free(ptr noundef %19) #3
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
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
