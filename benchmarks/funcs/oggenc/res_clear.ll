; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }

@.str.115 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.116 = external hidden unnamed_addr constant [9 x i8], align 1
@__PRETTY_FUNCTION__.res_clear = external hidden unnamed_addr constant [28 x i8], align 1
@.str.131 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.132 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @res_clear(ptr noundef %state) #1 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  %0 = load ptr, ptr %state.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.115, ptr noundef @.str.116, i32 noundef 3596, ptr noundef @__PRETTY_FUNCTION__.res_clear) #4
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %state.addr, align 8
  %table = getelementptr inbounds nuw %struct.res_state, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %table, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.131, ptr noundef @.str.116, i32 noundef 3597, ptr noundef @__PRETTY_FUNCTION__.res_clear) #4
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load ptr, ptr %state.addr, align 8
  %pool = getelementptr inbounds nuw %struct.res_state, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pool, align 8
  %tobool5 = icmp ne ptr %4, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(ptr noundef @.str.132, ptr noundef @.str.116, i32 noundef 3598, ptr noundef @__PRETTY_FUNCTION__.res_clear) #4
  unreachable

if.end8:                                          ; preds = %if.then6
  %5 = load ptr, ptr %state.addr, align 8
  %table9 = getelementptr inbounds nuw %struct.res_state, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %table9, align 8
  call void @free(ptr noundef %6) #5
  %7 = load ptr, ptr %state.addr, align 8
  %pool10 = getelementptr inbounds nuw %struct.res_state, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %pool10, align 8
  call void @free(ptr noundef %8) #5
  %9 = load ptr, ptr %state.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
