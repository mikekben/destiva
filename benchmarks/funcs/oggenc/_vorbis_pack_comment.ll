; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_comment = type { ptr, ptr, i32, ptr }

@.str.148 = external hidden unnamed_addr constant [7 x i8], align 1
@__const._vorbis_pack_comment.temp = external hidden unnamed_addr constant [30 x i8], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_vorbis_pack_comment(ptr noundef %opb, ptr noundef %vc) #2 {
entry:
  %opb.addr = alloca ptr, align 8
  %vc.addr = alloca ptr, align 8
  %temp = alloca [30 x i8], align 16
  %bytes = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %opb, ptr %opb.addr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %temp, ptr align 16 @__const._vorbis_pack_comment.temp, i64 30, i1 false)
  %arraydecay = getelementptr inbounds [30 x i8], ptr %temp, i64 0, i64 0
  %call = call i64 @strlen(ptr noundef %arraydecay) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %bytes, align 4
  %0 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %0, i64 noundef 3, i32 noundef 8)
  %1 = load ptr, ptr %opb.addr, align 8
  call void @_v_writestring(ptr noundef %1, ptr noundef @.str.148, i32 noundef 6)
  %2 = load ptr, ptr %opb.addr, align 8
  %3 = load i32, ptr %bytes, align 4
  %conv1 = sext i32 %3 to i64
  call void @oggpack_write(ptr noundef %2, i64 noundef %conv1, i32 noundef 32)
  %4 = load ptr, ptr %opb.addr, align 8
  %arraydecay2 = getelementptr inbounds [30 x i8], ptr %temp, i64 0, i64 0
  %5 = load i32, ptr %bytes, align 4
  call void @_v_writestring(ptr noundef %4, ptr noundef %arraydecay2, i32 noundef %5)
  %6 = load ptr, ptr %opb.addr, align 8
  %7 = load ptr, ptr %vc.addr, align 8
  %comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %comments, align 8
  %conv3 = sext i32 %8 to i64
  call void @oggpack_write(ptr noundef %6, i64 noundef %conv3, i32 noundef 32)
  %9 = load ptr, ptr %vc.addr, align 8
  %comments4 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %comments4, align 8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, ptr %i, align 4
  %12 = load ptr, ptr %vc.addr, align 8
  %comments5 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %comments5, align 8
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %vc.addr, align 8
  %user_comments = getelementptr inbounds nuw %struct.vorbis_comment, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %user_comments, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  %tobool7 = icmp ne ptr %17, null
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %18 = load ptr, ptr %opb.addr, align 8
  %19 = load ptr, ptr %vc.addr, align 8
  %comment_lengths = getelementptr inbounds nuw %struct.vorbis_comment, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %comment_lengths, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %20, i64 %idxprom9
  %22 = load i32, ptr %arrayidx10, align 4
  %conv11 = sext i32 %22 to i64
  call void @oggpack_write(ptr noundef %18, i64 noundef %conv11, i32 noundef 32)
  %23 = load ptr, ptr %opb.addr, align 8
  %24 = load ptr, ptr %vc.addr, align 8
  %user_comments12 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %user_comments12, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %25, i64 %idxprom13
  %27 = load ptr, ptr %arrayidx14, align 8
  %28 = load ptr, ptr %vc.addr, align 8
  %comment_lengths15 = getelementptr inbounds nuw %struct.vorbis_comment, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %comment_lengths15, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %29, i64 %idxprom16
  %31 = load i32, ptr %arrayidx17, align 4
  call void @_v_writestring(ptr noundef %23, ptr noundef %27, i32 noundef %31)
  br label %if.end

if.else:                                          ; preds = %for.body
  %32 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %32, i64 noundef 0, i32 noundef 32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, ptr %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.end18:                                         ; preds = %for.end, %entry
  %34 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %34, i64 noundef 1, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @_v_writestring(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

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
