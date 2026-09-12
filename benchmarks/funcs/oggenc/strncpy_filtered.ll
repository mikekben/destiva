; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @strncpy_filtered(ptr noundef %dst, ptr noundef %src, i32 noundef %len, ptr noundef %remove_list, ptr noundef %replace_list) #2 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %remove_list.addr = alloca ptr, align 8
  %replace_list.addr = alloca ptr, align 8
  %hit = alloca ptr, align 8
  %drop_margin = alloca ptr, align 8
  %used = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %remove_list, ptr %remove_list.addr, align 8
  store ptr %replace_list, ptr %replace_list.addr, align 8
  store i32 0, ptr %used, align 4
  %0 = load ptr, ptr %remove_list.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %remove_list.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %dst.addr, align 8
  %4 = load ptr, ptr %src.addr, align 8
  %5 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %5, 1
  %conv3 = sext i32 %sub to i64
  %call = call ptr @strncpy(ptr noundef %3, ptr noundef %4, i64 noundef %conv3) #3
  %6 = load ptr, ptr %dst.addr, align 8
  %7 = load i32, ptr %len.addr, align 4
  %sub4 = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %8 = load ptr, ptr %dst.addr, align 8
  %call5 = call i64 @strlen(ptr noundef %8) #4
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %remove_list.addr, align 8
  %10 = load ptr, ptr %replace_list.addr, align 8
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load ptr, ptr %replace_list.addr, align 8
  %call9 = call i64 @strlen(ptr noundef %11) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call9, %cond.false ]
  %add.ptr = getelementptr inbounds nuw i8, ptr %9, i64 %cond
  store ptr %add.ptr, ptr %drop_margin, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %cond.end
  %12 = load ptr, ptr %src.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv10 = sext i8 %13 to i32
  %tobool = icmp ne i32 %conv10, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load i32, ptr %used, align 4
  %15 = load i32, ptr %len.addr, align 4
  %sub11 = sub nsw i32 %15, 1
  %cmp12 = icmp slt i32 %14, %sub11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %remove_list.addr, align 8
  %18 = load ptr, ptr %src.addr, align 8
  %19 = load i8, ptr %18, align 1
  %conv14 = sext i8 %19 to i32
  %call15 = call ptr @strchr(ptr noundef %17, i32 noundef %conv14) #4
  store ptr %call15, ptr %hit, align 8
  %cmp16 = icmp ne ptr %call15, null
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %while.body
  %20 = load ptr, ptr %hit, align 8
  %21 = load ptr, ptr %drop_margin, align 8
  %cmp19 = icmp ult ptr %20, %21
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then18
  %22 = load ptr, ptr %replace_list.addr, align 8
  %23 = load ptr, ptr %hit, align 8
  %24 = load ptr, ptr %remove_list.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 %sub.ptr.sub
  %25 = load i8, ptr %arrayidx22, align 1
  %26 = load ptr, ptr %dst.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %incdec.ptr, ptr %dst.addr, align 8
  store i8 %25, ptr %26, align 1
  %27 = load i32, ptr %used, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %used, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  br label %if.end26

if.else:                                          ; preds = %while.body
  %28 = load ptr, ptr %src.addr, align 8
  %29 = load i8, ptr %28, align 1
  %30 = load ptr, ptr %dst.addr, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr24, ptr %dst.addr, align 8
  store i8 %29, ptr %30, align 1
  %31 = load i32, ptr %used, align 4
  %inc25 = add nsw i32 %31, 1
  store i32 %inc25, ptr %used, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end23
  %32 = load ptr, ptr %src.addr, align 8
  %incdec.ptr27 = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %incdec.ptr27, ptr %src.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %33 = load ptr, ptr %dst.addr, align 8
  store i8 0, ptr %33, align 1
  %34 = load i32, ptr %used, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind willreturn memory(read) }

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
