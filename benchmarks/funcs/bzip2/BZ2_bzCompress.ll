; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzCompress(ptr noundef %strm, i32 noundef %action) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %action.addr = alloca i32, align 4
  %progress = alloca i8, align 1
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %action, ptr %action.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds nuw %struct.bz_stream, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %state, align 8
  store ptr %2, ptr %s, align 8
  %3 = load ptr, ptr %s, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %s, align 8
  %strm4 = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %strm4, align 8
  %6 = load ptr, ptr %strm.addr, align 8
  %cmp5 = icmp ne ptr %5, %6
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  br label %preswitch

preswitch:                                        ; preds = %if.then18, %if.then13, %if.end7
  %7 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds nuw %struct.EState, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %mode, align 8
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb23
    i32 4, label %sw.bb47
  ]

sw.bb:                                            ; preds = %preswitch
  store i32 -1, ptr %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %preswitch
  %9 = load i32, ptr %action.addr, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb8
  %10 = load ptr, ptr %strm.addr, align 8
  %call = call zeroext i8 @handle_compress(ptr noundef %10)
  store i8 %call, ptr %progress, align 1
  %11 = load i8, ptr %progress, align 1
  %conv = zext i8 %11 to i32
  %tobool = icmp ne i32 %conv, 0
  %12 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 -2
  store i32 %cond, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.bb8
  %13 = load i32, ptr %action.addr, align 4
  %cmp11 = icmp eq i32 %13, 1
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  %14 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %avail_in, align 8
  %16 = load ptr, ptr %s, align 8
  %avail_in_expect = getelementptr inbounds nuw %struct.EState, ptr %16, i32 0, i32 3
  store i32 %15, ptr %avail_in_expect, align 8
  %17 = load ptr, ptr %s, align 8
  %mode14 = getelementptr inbounds nuw %struct.EState, ptr %17, i32 0, i32 1
  store i32 3, ptr %mode14, align 8
  br label %preswitch

if.else15:                                        ; preds = %if.else
  %18 = load i32, ptr %action.addr, align 4
  %cmp16 = icmp eq i32 %18, 2
  br i1 %cmp16, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.else15
  %19 = load ptr, ptr %strm.addr, align 8
  %avail_in19 = getelementptr inbounds nuw %struct.bz_stream, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %avail_in19, align 8
  %21 = load ptr, ptr %s, align 8
  %avail_in_expect20 = getelementptr inbounds nuw %struct.EState, ptr %21, i32 0, i32 3
  store i32 %20, ptr %avail_in_expect20, align 8
  %22 = load ptr, ptr %s, align 8
  %mode21 = getelementptr inbounds nuw %struct.EState, ptr %22, i32 0, i32 1
  store i32 4, ptr %mode21, align 8
  br label %preswitch

if.else22:                                        ; preds = %if.else15
  store i32 -2, ptr %retval, align 4
  br label %return

sw.bb23:                                          ; preds = %preswitch
  %23 = load i32, ptr %action.addr, align 4
  %cmp24 = icmp ne i32 %23, 1
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.bb23
  store i32 -1, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %sw.bb23
  %24 = load ptr, ptr %s, align 8
  %avail_in_expect28 = getelementptr inbounds nuw %struct.EState, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %avail_in_expect28, align 8
  %26 = load ptr, ptr %s, align 8
  %strm29 = getelementptr inbounds nuw %struct.EState, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %strm29, align 8
  %avail_in30 = getelementptr inbounds nuw %struct.bz_stream, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %avail_in30, align 8
  %cmp31 = icmp ne i32 %25, %28
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27
  store i32 -1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end27
  %29 = load ptr, ptr %strm.addr, align 8
  %call35 = call zeroext i8 @handle_compress(ptr noundef %29)
  store i8 %call35, ptr %progress, align 1
  %30 = load ptr, ptr %s, align 8
  %avail_in_expect36 = getelementptr inbounds nuw %struct.EState, ptr %30, i32 0, i32 3
  %31 = load i32, ptr %avail_in_expect36, align 8
  %cmp37 = icmp ugt i32 %31, 0
  br i1 %cmp37, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %32 = load ptr, ptr %s, align 8
  %call39 = call zeroext i8 @isempty_RL(ptr noundef %32)
  %tobool40 = icmp ne i8 %call39, 0
  br i1 %tobool40, label %lor.lhs.false41, label %if.then44

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %33 = load ptr, ptr %s, align 8
  %state_out_pos = getelementptr inbounds nuw %struct.EState, ptr %33, i32 0, i32 20
  %34 = load i32, ptr %state_out_pos, align 8
  %35 = load ptr, ptr %s, align 8
  %numZ = getelementptr inbounds nuw %struct.EState, ptr %35, i32 0, i32 19
  %36 = load i32, ptr %numZ, align 4
  %cmp42 = icmp slt i32 %34, %36
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.lhs.false41, %lor.lhs.false, %if.end34
  store i32 2, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %lor.lhs.false41
  %37 = load ptr, ptr %s, align 8
  %mode46 = getelementptr inbounds nuw %struct.EState, ptr %37, i32 0, i32 1
  store i32 2, ptr %mode46, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb47:                                          ; preds = %preswitch
  %38 = load i32, ptr %action.addr, align 4
  %cmp48 = icmp ne i32 %38, 2
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %sw.bb47
  store i32 -1, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %sw.bb47
  %39 = load ptr, ptr %s, align 8
  %avail_in_expect52 = getelementptr inbounds nuw %struct.EState, ptr %39, i32 0, i32 3
  %40 = load i32, ptr %avail_in_expect52, align 8
  %41 = load ptr, ptr %s, align 8
  %strm53 = getelementptr inbounds nuw %struct.EState, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %strm53, align 8
  %avail_in54 = getelementptr inbounds nuw %struct.bz_stream, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %avail_in54, align 8
  %cmp55 = icmp ne i32 %40, %43
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end51
  store i32 -1, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end51
  %44 = load ptr, ptr %strm.addr, align 8
  %call59 = call zeroext i8 @handle_compress(ptr noundef %44)
  store i8 %call59, ptr %progress, align 1
  %45 = load i8, ptr %progress, align 1
  %tobool60 = icmp ne i8 %45, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end58
  store i32 -1, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.end58
  %46 = load ptr, ptr %s, align 8
  %avail_in_expect63 = getelementptr inbounds nuw %struct.EState, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %avail_in_expect63, align 8
  %cmp64 = icmp ugt i32 %47, 0
  br i1 %cmp64, label %if.then74, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end62
  %48 = load ptr, ptr %s, align 8
  %call67 = call zeroext i8 @isempty_RL(ptr noundef %48)
  %tobool68 = icmp ne i8 %call67, 0
  br i1 %tobool68, label %lor.lhs.false69, label %if.then74

lor.lhs.false69:                                  ; preds = %lor.lhs.false66
  %49 = load ptr, ptr %s, align 8
  %state_out_pos70 = getelementptr inbounds nuw %struct.EState, ptr %49, i32 0, i32 20
  %50 = load i32, ptr %state_out_pos70, align 8
  %51 = load ptr, ptr %s, align 8
  %numZ71 = getelementptr inbounds nuw %struct.EState, ptr %51, i32 0, i32 19
  %52 = load i32, ptr %numZ71, align 4
  %cmp72 = icmp slt i32 %50, %52
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false69, %lor.lhs.false66, %if.end62
  store i32 3, ptr %retval, align 4
  br label %return

if.end75:                                         ; preds = %lor.lhs.false69
  %53 = load ptr, ptr %s, align 8
  %mode76 = getelementptr inbounds nuw %struct.EState, ptr %53, i32 0, i32 1
  store i32 1, ptr %mode76, align 8
  store i32 4, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %preswitch
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end75, %if.then74, %if.then61, %if.then57, %if.then50, %if.end45, %if.then44, %if.then33, %if.then26, %if.else22, %if.then10, %sw.bb, %if.then6, %if.then2, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @handle_compress(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @isempty_RL(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
