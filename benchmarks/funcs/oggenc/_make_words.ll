; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_make_words(ptr noundef %l, i64 noundef %n, i64 noundef %sparsecount) #3 {
entry:
  %retval = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %sparsecount.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %marker = alloca [33 x i32], align 16
  %r = alloca ptr, align 8
  %length = alloca i64, align 8
  %entry2 = alloca i32, align 4
  %temp = alloca i32, align 4
  store ptr %l, ptr %l.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store i64 %sparsecount, ptr %sparsecount.addr, align 8
  store i64 0, ptr %count, align 8
  %0 = load i64, ptr %sparsecount.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %sparsecount.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %n.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ %2, %cond.false ]
  %mul = mul i64 %cond, 4
  %call = call noalias ptr @malloc(i64 noundef %mul) #4
  store ptr %call, ptr %r, align 8
  %arraydecay = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 132, i1 false)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %cond.end
  %3 = load i64, ptr %i, align 8
  %4 = load i64, ptr %n.addr, align 8
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %l.addr, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %6
  %7 = load i64, ptr %arrayidx, align 8
  store i64 %7, ptr %length, align 8
  %8 = load i64, ptr %length, align 8
  %cmp1 = icmp sgt i64 %8, 0
  br i1 %cmp1, label %if.then, label %if.else41

if.then:                                          ; preds = %for.body
  %9 = load i64, ptr %length, align 8
  %arrayidx3 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 %9
  %10 = load i32, ptr %arrayidx3, align 4
  store i32 %10, ptr %entry2, align 4
  %11 = load i64, ptr %length, align 8
  %cmp4 = icmp slt i64 %11, 32
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, ptr %entry2, align 4
  %13 = load i64, ptr %length, align 8
  %sh_prom = trunc i64 %13 to i32
  %shr = lshr i32 %12, %sh_prom
  %tobool5 = icmp ne i32 %shr, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %r, align 8
  call void @free(ptr noundef %14) #5
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %15 = load i32, ptr %entry2, align 4
  %16 = load ptr, ptr %r, align 8
  %17 = load i64, ptr %count, align 8
  %inc = add nsw i64 %17, 1
  store i64 %inc, ptr %count, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %16, i64 %17
  store i32 %15, ptr %arrayidx7, align 4
  %18 = load i64, ptr %length, align 8
  store i64 %18, ptr %j, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.end
  %19 = load i64, ptr %j, align 8
  %cmp9 = icmp sgt i64 %19, 0
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %20 = load i64, ptr %j, align 8
  %arrayidx11 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 %20
  %21 = load i32, ptr %arrayidx11, align 4
  %and = and i32 %21, 1
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %for.body10
  %22 = load i64, ptr %j, align 8
  %cmp14 = icmp eq i64 %22, 1
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then13
  %arrayidx16 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 1
  %23 = load i32, ptr %arrayidx16, align 4
  %inc17 = add i32 %23, 1
  store i32 %inc17, ptr %arrayidx16, align 4
  br label %if.end20

if.else:                                          ; preds = %if.then13
  %24 = load i64, ptr %j, align 8
  %sub = sub nsw i64 %24, 1
  %arrayidx18 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 %sub
  %25 = load i32, ptr %arrayidx18, align 4
  %shl = shl i32 %25, 1
  %26 = load i64, ptr %j, align 8
  %arrayidx19 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 %26
  store i32 %shl, ptr %arrayidx19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  br label %for.end

if.end21:                                         ; preds = %for.body10
  %27 = load i64, ptr %j, align 8
  %arrayidx22 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 %27
  %28 = load i32, ptr %arrayidx22, align 4
  %inc23 = add i32 %28, 1
  store i32 %inc23, ptr %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %29 = load i64, ptr %j, align 8
  %dec = add nsw i64 %29, -1
  store i64 %dec, ptr %j, align 8
  br label %for.cond8, !llvm.loop !6

for.end:                                          ; preds = %if.end20, %for.cond8
  %30 = load i64, ptr %length, align 8
  %add = add nsw i64 %30, 1
  store i64 %add, ptr %j, align 8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc38, %for.end
  %31 = load i64, ptr %j, align 8
  %cmp25 = icmp slt i64 %31, 33
  br i1 %cmp25, label %for.body26, label %for.end40

for.body26:                                       ; preds = %for.cond24
  %32 = load i64, ptr %j, align 8
  %arrayidx27 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 %32
  %33 = load i32, ptr %arrayidx27, align 4
  %shr28 = lshr i32 %33, 1
  %34 = load i32, ptr %entry2, align 4
  %cmp29 = icmp eq i32 %shr28, %34
  br i1 %cmp29, label %if.then30, label %if.else36

if.then30:                                        ; preds = %for.body26
  %35 = load i64, ptr %j, align 8
  %arrayidx31 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 %35
  %36 = load i32, ptr %arrayidx31, align 4
  store i32 %36, ptr %entry2, align 4
  %37 = load i64, ptr %j, align 8
  %sub32 = sub nsw i64 %37, 1
  %arrayidx33 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 %sub32
  %38 = load i32, ptr %arrayidx33, align 4
  %shl34 = shl i32 %38, 1
  %39 = load i64, ptr %j, align 8
  %arrayidx35 = getelementptr inbounds [33 x i32], ptr %marker, i64 0, i64 %39
  store i32 %shl34, ptr %arrayidx35, align 4
  br label %if.end37

if.else36:                                        ; preds = %for.body26
  br label %for.end40

if.end37:                                         ; preds = %if.then30
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %40 = load i64, ptr %j, align 8
  %inc39 = add nsw i64 %40, 1
  store i64 %inc39, ptr %j, align 8
  br label %for.cond24, !llvm.loop !8

for.end40:                                        ; preds = %if.else36, %for.cond24
  br label %if.end46

if.else41:                                        ; preds = %for.body
  %41 = load i64, ptr %sparsecount.addr, align 8
  %cmp42 = icmp eq i64 %41, 0
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.else41
  %42 = load i64, ptr %count, align 8
  %inc44 = add nsw i64 %42, 1
  store i64 %inc44, ptr %count, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.else41
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end40
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %43 = load i64, ptr %i, align 8
  %inc48 = add nsw i64 %43, 1
  store i64 %inc48, ptr %i, align 8
  br label %for.cond, !llvm.loop !9

for.end49:                                        ; preds = %for.cond
  store i64 0, ptr %i, align 8
  store i64 0, ptr %count, align 8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc77, %for.end49
  %44 = load i64, ptr %i, align 8
  %45 = load i64, ptr %n.addr, align 8
  %cmp51 = icmp slt i64 %44, %45
  br i1 %cmp51, label %for.body52, label %for.end79

for.body52:                                       ; preds = %for.cond50
  store i32 0, ptr %temp, align 4
  store i64 0, ptr %j, align 8
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc62, %for.body52
  %46 = load i64, ptr %j, align 8
  %47 = load ptr, ptr %l.addr, align 8
  %48 = load i64, ptr %i, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %47, i64 %48
  %49 = load i64, ptr %arrayidx54, align 8
  %cmp55 = icmp slt i64 %46, %49
  br i1 %cmp55, label %for.body56, label %for.end64

for.body56:                                       ; preds = %for.cond53
  %50 = load i32, ptr %temp, align 4
  %shl57 = shl i32 %50, 1
  store i32 %shl57, ptr %temp, align 4
  %51 = load ptr, ptr %r, align 8
  %52 = load i64, ptr %count, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %51, i64 %52
  %53 = load i32, ptr %arrayidx58, align 4
  %54 = load i64, ptr %j, align 8
  %sh_prom59 = trunc i64 %54 to i32
  %shr60 = lshr i32 %53, %sh_prom59
  %and61 = and i32 %shr60, 1
  %55 = load i32, ptr %temp, align 4
  %or = or i32 %55, %and61
  store i32 %or, ptr %temp, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %for.body56
  %56 = load i64, ptr %j, align 8
  %inc63 = add nsw i64 %56, 1
  store i64 %inc63, ptr %j, align 8
  br label %for.cond53, !llvm.loop !10

for.end64:                                        ; preds = %for.cond53
  %57 = load i64, ptr %sparsecount.addr, align 8
  %tobool65 = icmp ne i64 %57, 0
  br i1 %tobool65, label %if.then66, label %if.else73

if.then66:                                        ; preds = %for.end64
  %58 = load ptr, ptr %l.addr, align 8
  %59 = load i64, ptr %i, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %58, i64 %59
  %60 = load i64, ptr %arrayidx67, align 8
  %tobool68 = icmp ne i64 %60, 0
  br i1 %tobool68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.then66
  %61 = load i32, ptr %temp, align 4
  %62 = load ptr, ptr %r, align 8
  %63 = load i64, ptr %count, align 8
  %inc70 = add nsw i64 %63, 1
  store i64 %inc70, ptr %count, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %62, i64 %63
  store i32 %61, ptr %arrayidx71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then66
  br label %if.end76

if.else73:                                        ; preds = %for.end64
  %64 = load i32, ptr %temp, align 4
  %65 = load ptr, ptr %r, align 8
  %66 = load i64, ptr %count, align 8
  %inc74 = add nsw i64 %66, 1
  store i64 %inc74, ptr %count, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %65, i64 %66
  store i32 %64, ptr %arrayidx75, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.end72
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %67 = load i64, ptr %i, align 8
  %inc78 = add nsw i64 %67, 1
  store i64 %inc78, ptr %i, align 8
  br label %for.cond50, !llvm.loop !11

for.end79:                                        ; preds = %for.cond50
  %68 = load ptr, ptr %r, align 8
  store ptr %68, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end79, %if.then6
  %69 = load ptr, ptr %retval, align 8
  ret ptr %69
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

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
