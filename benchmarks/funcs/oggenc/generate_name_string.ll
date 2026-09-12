; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str.158 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.159 = external hidden unnamed_addr constant [64 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden ptr @generate_name_string(ptr noundef %format, ptr noundef %remove_list, ptr noundef %replace_list, ptr noundef %artist, ptr noundef %title, ptr noundef %album, ptr noundef %track, ptr noundef %date, ptr noundef %genre) #1 {
entry:
  %format.addr = alloca ptr, align 8
  %remove_list.addr = alloca ptr, align 8
  %replace_list.addr = alloca ptr, align 8
  %artist.addr = alloca ptr, align 8
  %title.addr = alloca ptr, align 8
  %album.addr = alloca ptr, align 8
  %track.addr = alloca ptr, align 8
  %date.addr = alloca ptr, align 8
  %genre.addr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %next = alloca i8, align 1
  %string = alloca ptr, align 8
  %used = alloca i32, align 4
  %buflen = alloca i32, align 4
  store ptr %format, ptr %format.addr, align 8
  store ptr %remove_list, ptr %remove_list.addr, align 8
  store ptr %replace_list, ptr %replace_list.addr, align 8
  store ptr %artist, ptr %artist.addr, align 8
  store ptr %title, ptr %title.addr, align 8
  store ptr %album, ptr %album.addr, align 8
  store ptr %track, ptr %track.addr, align 8
  store ptr %date, ptr %date.addr, align 8
  store ptr %genre, ptr %genre.addr, align 8
  store i32 0, ptr %used, align 4
  %call = call noalias ptr @calloc(i64 noundef 4097, i64 noundef 1) #3
  store ptr %call, ptr %buffer, align 8
  store i32 4096, ptr %buflen, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %format.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %used, align 4
  %3 = load i32, ptr %buflen, align 4
  %cmp = icmp slt i32 %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %format.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %format.addr, align 8
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %next, align 1
  %7 = load i8, ptr %next, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 37
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %format.addr, align 8
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %8, i32 1
  store ptr %incdec.ptr5, ptr %format.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv6 = sext i8 %9 to i32
  switch i32 %conv6, label %sw.default [
    i32 37, label %sw.bb
    i32 97, label %sw.bb7
    i32 100, label %sw.bb12
    i32 103, label %sw.bb23
    i32 116, label %sw.bb34
    i32 108, label %sw.bb45
    i32 110, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.then
  %10 = load ptr, ptr %buffer, align 8
  %11 = load i32, ptr %used, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %used, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %idx.ext
  store i8 37, ptr %add.ptr, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  %12 = load ptr, ptr %artist.addr, align 8
  %tobool8 = icmp ne ptr %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb7
  %13 = load ptr, ptr %artist.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ @.str.158, %cond.false ]
  store ptr %cond, ptr %string, align 8
  %14 = load ptr, ptr %buffer, align 8
  %15 = load i32, ptr %used, align 4
  %idx.ext9 = sext i32 %15 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %14, i64 %idx.ext9
  %16 = load ptr, ptr %string, align 8
  %17 = load i32, ptr %buflen, align 4
  %18 = load i32, ptr %used, align 4
  %sub = sub nsw i32 %17, %18
  %19 = load ptr, ptr %remove_list.addr, align 8
  %20 = load ptr, ptr %replace_list.addr, align 8
  %call11 = call i32 @strncpy_filtered(ptr noundef %add.ptr10, ptr noundef %16, i32 noundef %sub, ptr noundef %19, ptr noundef %20)
  %21 = load i32, ptr %used, align 4
  %add = add nsw i32 %21, %call11
  store i32 %add, ptr %used, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then
  %22 = load ptr, ptr %date.addr, align 8
  %tobool13 = icmp ne ptr %22, null
  br i1 %tobool13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %sw.bb12
  %23 = load ptr, ptr %date.addr, align 8
  br label %cond.end16

cond.false15:                                     ; preds = %sw.bb12
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi ptr [ %23, %cond.true14 ], [ @.str.158, %cond.false15 ]
  store ptr %cond17, ptr %string, align 8
  %24 = load ptr, ptr %buffer, align 8
  %25 = load i32, ptr %used, align 4
  %idx.ext18 = sext i32 %25 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %24, i64 %idx.ext18
  %26 = load ptr, ptr %string, align 8
  %27 = load i32, ptr %buflen, align 4
  %28 = load i32, ptr %used, align 4
  %sub20 = sub nsw i32 %27, %28
  %29 = load ptr, ptr %remove_list.addr, align 8
  %30 = load ptr, ptr %replace_list.addr, align 8
  %call21 = call i32 @strncpy_filtered(ptr noundef %add.ptr19, ptr noundef %26, i32 noundef %sub20, ptr noundef %29, ptr noundef %30)
  %31 = load i32, ptr %used, align 4
  %add22 = add nsw i32 %31, %call21
  store i32 %add22, ptr %used, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then
  %32 = load ptr, ptr %genre.addr, align 8
  %tobool24 = icmp ne ptr %32, null
  br i1 %tobool24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %sw.bb23
  %33 = load ptr, ptr %genre.addr, align 8
  br label %cond.end27

cond.false26:                                     ; preds = %sw.bb23
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.true25
  %cond28 = phi ptr [ %33, %cond.true25 ], [ @.str.158, %cond.false26 ]
  store ptr %cond28, ptr %string, align 8
  %34 = load ptr, ptr %buffer, align 8
  %35 = load i32, ptr %used, align 4
  %idx.ext29 = sext i32 %35 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %34, i64 %idx.ext29
  %36 = load ptr, ptr %string, align 8
  %37 = load i32, ptr %buflen, align 4
  %38 = load i32, ptr %used, align 4
  %sub31 = sub nsw i32 %37, %38
  %39 = load ptr, ptr %remove_list.addr, align 8
  %40 = load ptr, ptr %replace_list.addr, align 8
  %call32 = call i32 @strncpy_filtered(ptr noundef %add.ptr30, ptr noundef %36, i32 noundef %sub31, ptr noundef %39, ptr noundef %40)
  %41 = load i32, ptr %used, align 4
  %add33 = add nsw i32 %41, %call32
  store i32 %add33, ptr %used, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.then
  %42 = load ptr, ptr %title.addr, align 8
  %tobool35 = icmp ne ptr %42, null
  br i1 %tobool35, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %sw.bb34
  %43 = load ptr, ptr %title.addr, align 8
  br label %cond.end38

cond.false37:                                     ; preds = %sw.bb34
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi ptr [ %43, %cond.true36 ], [ @.str.158, %cond.false37 ]
  store ptr %cond39, ptr %string, align 8
  %44 = load ptr, ptr %buffer, align 8
  %45 = load i32, ptr %used, align 4
  %idx.ext40 = sext i32 %45 to i64
  %add.ptr41 = getelementptr inbounds i8, ptr %44, i64 %idx.ext40
  %46 = load ptr, ptr %string, align 8
  %47 = load i32, ptr %buflen, align 4
  %48 = load i32, ptr %used, align 4
  %sub42 = sub nsw i32 %47, %48
  %49 = load ptr, ptr %remove_list.addr, align 8
  %50 = load ptr, ptr %replace_list.addr, align 8
  %call43 = call i32 @strncpy_filtered(ptr noundef %add.ptr41, ptr noundef %46, i32 noundef %sub42, ptr noundef %49, ptr noundef %50)
  %51 = load i32, ptr %used, align 4
  %add44 = add nsw i32 %51, %call43
  store i32 %add44, ptr %used, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.then
  %52 = load ptr, ptr %album.addr, align 8
  %tobool46 = icmp ne ptr %52, null
  br i1 %tobool46, label %cond.true47, label %cond.false48

cond.true47:                                      ; preds = %sw.bb45
  %53 = load ptr, ptr %album.addr, align 8
  br label %cond.end49

cond.false48:                                     ; preds = %sw.bb45
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false48, %cond.true47
  %cond50 = phi ptr [ %53, %cond.true47 ], [ @.str.158, %cond.false48 ]
  store ptr %cond50, ptr %string, align 8
  %54 = load ptr, ptr %buffer, align 8
  %55 = load i32, ptr %used, align 4
  %idx.ext51 = sext i32 %55 to i64
  %add.ptr52 = getelementptr inbounds i8, ptr %54, i64 %idx.ext51
  %56 = load ptr, ptr %string, align 8
  %57 = load i32, ptr %buflen, align 4
  %58 = load i32, ptr %used, align 4
  %sub53 = sub nsw i32 %57, %58
  %59 = load ptr, ptr %remove_list.addr, align 8
  %60 = load ptr, ptr %replace_list.addr, align 8
  %call54 = call i32 @strncpy_filtered(ptr noundef %add.ptr52, ptr noundef %56, i32 noundef %sub53, ptr noundef %59, ptr noundef %60)
  %61 = load i32, ptr %used, align 4
  %add55 = add nsw i32 %61, %call54
  store i32 %add55, ptr %used, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.then
  %62 = load ptr, ptr %track.addr, align 8
  %tobool57 = icmp ne ptr %62, null
  br i1 %tobool57, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %sw.bb56
  %63 = load ptr, ptr %track.addr, align 8
  br label %cond.end60

cond.false59:                                     ; preds = %sw.bb56
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.true58
  %cond61 = phi ptr [ %63, %cond.true58 ], [ @.str.158, %cond.false59 ]
  store ptr %cond61, ptr %string, align 8
  %64 = load ptr, ptr %buffer, align 8
  %65 = load i32, ptr %used, align 4
  %idx.ext62 = sext i32 %65 to i64
  %add.ptr63 = getelementptr inbounds i8, ptr %64, i64 %idx.ext62
  %66 = load ptr, ptr %string, align 8
  %67 = load i32, ptr %buflen, align 4
  %68 = load i32, ptr %used, align 4
  %sub64 = sub nsw i32 %67, %68
  %69 = load ptr, ptr %remove_list.addr, align 8
  %70 = load ptr, ptr %replace_list.addr, align 8
  %call65 = call i32 @strncpy_filtered(ptr noundef %add.ptr63, ptr noundef %66, i32 noundef %sub64, ptr noundef %69, ptr noundef %70)
  %71 = load i32, ptr %used, align 4
  %add66 = add nsw i32 %71, %call65
  store i32 %add66, ptr %used, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %72 = load ptr, ptr @stderr, align 8
  %73 = load ptr, ptr %format.addr, align 8
  %add.ptr67 = getelementptr inbounds i8, ptr %73, i64 -1
  %74 = load i8, ptr %add.ptr67, align 1
  %conv68 = sext i8 %74 to i32
  %call69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.159, i32 noundef %conv68) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end60, %cond.end49, %cond.end38, %cond.end27, %cond.end16, %cond.end, %sw.bb
  br label %if.end

if.else:                                          ; preds = %while.body
  %75 = load i8, ptr %next, align 1
  %76 = load ptr, ptr %buffer, align 8
  %77 = load i32, ptr %used, align 4
  %inc70 = add nsw i32 %77, 1
  store i32 %inc70, ptr %used, align 4
  %idx.ext71 = sext i32 %77 to i64
  %add.ptr72 = getelementptr inbounds i8, ptr %76, i64 %idx.ext71
  store i8 %75, ptr %add.ptr72, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %78 = load ptr, ptr %buffer, align 8
  ret ptr %78
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @strncpy_filtered(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) }
attributes #4 = { nounwind }

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
