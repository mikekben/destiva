; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzCompress(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzWrite(ptr noundef %bzerror, ptr noundef %b, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %bzerror.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %b.addr, align 8
  store ptr %0, ptr %bzf, align 8
  %1 = load ptr, ptr %bzerror.addr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %bzf, align 8
  %cmp1 = icmp ne ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds nuw %struct.bzFile, ptr %4, i32 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %bzf, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %6 = load ptr, ptr %buf.addr, align 8
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %7 = load i32, ptr %len.addr, align 4
  %cmp7 = icmp slt i32 %7, 0
  br i1 %cmp7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end3
  %8 = load ptr, ptr %bzerror.addr, align 8
  %cmp9 = icmp ne ptr %8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  %9 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  %10 = load ptr, ptr %bzf, align 8
  %cmp12 = icmp ne ptr %10, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %11 = load ptr, ptr %bzf, align 8
  %lastErr14 = getelementptr inbounds nuw %struct.bzFile, ptr %11, i32 0, i32 5
  store i32 -2, ptr %lastErr14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  br label %return

if.end16:                                         ; preds = %lor.lhs.false6
  %12 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds nuw %struct.bzFile, ptr %12, i32 0, i32 3
  %13 = load i8, ptr %writing, align 4
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.end25, label %if.then17

if.then17:                                        ; preds = %if.end16
  %14 = load ptr, ptr %bzerror.addr, align 8
  %cmp18 = icmp ne ptr %14, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %15 = load ptr, ptr %bzerror.addr, align 8
  store i32 -1, ptr %15, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %16 = load ptr, ptr %bzf, align 8
  %cmp21 = icmp ne ptr %16, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %17 = load ptr, ptr %bzf, align 8
  %lastErr23 = getelementptr inbounds nuw %struct.bzFile, ptr %17, i32 0, i32 5
  store i32 -1, ptr %lastErr23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  br label %return

if.end25:                                         ; preds = %if.end16
  %18 = load ptr, ptr %bzf, align 8
  %handle = getelementptr inbounds nuw %struct.bzFile, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %handle, align 8
  %call = call i32 @ferror(ptr noundef %19) #3
  %tobool26 = icmp ne i32 %call, 0
  br i1 %tobool26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  %20 = load ptr, ptr %bzerror.addr, align 8
  %cmp28 = icmp ne ptr %20, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  %21 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %21, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  %22 = load ptr, ptr %bzf, align 8
  %cmp31 = icmp ne ptr %22, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  %23 = load ptr, ptr %bzf, align 8
  %lastErr33 = getelementptr inbounds nuw %struct.bzFile, ptr %23, i32 0, i32 5
  store i32 -6, ptr %lastErr33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  br label %return

if.end35:                                         ; preds = %if.end25
  %24 = load i32, ptr %len.addr, align 4
  %cmp36 = icmp eq i32 %24, 0
  br i1 %cmp36, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end35
  %25 = load ptr, ptr %bzerror.addr, align 8
  %cmp38 = icmp ne ptr %25, null
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then37
  %26 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %26, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then37
  %27 = load ptr, ptr %bzf, align 8
  %cmp41 = icmp ne ptr %27, null
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %28 = load ptr, ptr %bzf, align 8
  %lastErr43 = getelementptr inbounds nuw %struct.bzFile, ptr %28, i32 0, i32 5
  store i32 0, ptr %lastErr43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  br label %return

if.end45:                                         ; preds = %if.end35
  %29 = load i32, ptr %len.addr, align 4
  %30 = load ptr, ptr %bzf, align 8
  %strm = getelementptr inbounds nuw %struct.bzFile, ptr %30, i32 0, i32 4
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 1
  store i32 %29, ptr %avail_in, align 8
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = load ptr, ptr %bzf, align 8
  %strm46 = getelementptr inbounds nuw %struct.bzFile, ptr %32, i32 0, i32 4
  %next_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm46, i32 0, i32 0
  store ptr %31, ptr %next_in, align 8
  br label %while.body

while.body:                                       ; preds = %if.end105, %if.end45
  %33 = load ptr, ptr %bzf, align 8
  %strm47 = getelementptr inbounds nuw %struct.bzFile, ptr %33, i32 0, i32 4
  %avail_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm47, i32 0, i32 5
  store i32 5000, ptr %avail_out, align 8
  %34 = load ptr, ptr %bzf, align 8
  %buf48 = getelementptr inbounds nuw %struct.bzFile, ptr %34, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %buf48, i64 0, i64 0
  %35 = load ptr, ptr %bzf, align 8
  %strm49 = getelementptr inbounds nuw %struct.bzFile, ptr %35, i32 0, i32 4
  %next_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm49, i32 0, i32 4
  store ptr %arraydecay, ptr %next_out, align 8
  %36 = load ptr, ptr %bzf, align 8
  %strm50 = getelementptr inbounds nuw %struct.bzFile, ptr %36, i32 0, i32 4
  %call51 = call i32 @BZ2_bzCompress(ptr noundef %strm50, i32 noundef 0)
  store i32 %call51, ptr %ret, align 4
  %37 = load i32, ptr %ret, align 4
  %cmp52 = icmp ne i32 %37, 1
  br i1 %cmp52, label %if.then53, label %if.end61

if.then53:                                        ; preds = %while.body
  %38 = load ptr, ptr %bzerror.addr, align 8
  %cmp54 = icmp ne ptr %38, null
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then53
  %39 = load i32, ptr %ret, align 4
  %40 = load ptr, ptr %bzerror.addr, align 8
  store i32 %39, ptr %40, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then53
  %41 = load ptr, ptr %bzf, align 8
  %cmp57 = icmp ne ptr %41, null
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end56
  %42 = load i32, ptr %ret, align 4
  %43 = load ptr, ptr %bzf, align 8
  %lastErr59 = getelementptr inbounds nuw %struct.bzFile, ptr %43, i32 0, i32 5
  store i32 %42, ptr %lastErr59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  br label %return

if.end61:                                         ; preds = %while.body
  %44 = load ptr, ptr %bzf, align 8
  %strm62 = getelementptr inbounds nuw %struct.bzFile, ptr %44, i32 0, i32 4
  %avail_out63 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm62, i32 0, i32 5
  %45 = load i32, ptr %avail_out63, align 8
  %cmp64 = icmp ult i32 %45, 5000
  br i1 %cmp64, label %if.then65, label %if.end90

if.then65:                                        ; preds = %if.end61
  %46 = load ptr, ptr %bzf, align 8
  %strm66 = getelementptr inbounds nuw %struct.bzFile, ptr %46, i32 0, i32 4
  %avail_out67 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm66, i32 0, i32 5
  %47 = load i32, ptr %avail_out67, align 8
  %sub = sub i32 5000, %47
  store i32 %sub, ptr %n, align 4
  %48 = load ptr, ptr %bzf, align 8
  %buf68 = getelementptr inbounds nuw %struct.bzFile, ptr %48, i32 0, i32 1
  %arraydecay69 = getelementptr inbounds [5000 x i8], ptr %buf68, i64 0, i64 0
  %49 = load i32, ptr %n, align 4
  %conv = sext i32 %49 to i64
  %50 = load ptr, ptr %bzf, align 8
  %handle70 = getelementptr inbounds nuw %struct.bzFile, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %handle70, align 8
  %call71 = call i64 @fwrite(ptr noundef %arraydecay69, i64 noundef 1, i64 noundef %conv, ptr noundef %51)
  %conv72 = trunc i64 %call71 to i32
  store i32 %conv72, ptr %n2, align 4
  %52 = load i32, ptr %n, align 4
  %53 = load i32, ptr %n2, align 4
  %cmp73 = icmp ne i32 %52, %53
  br i1 %cmp73, label %if.then79, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.then65
  %54 = load ptr, ptr %bzf, align 8
  %handle76 = getelementptr inbounds nuw %struct.bzFile, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %handle76, align 8
  %call77 = call i32 @ferror(ptr noundef %55) #3
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end89

if.then79:                                        ; preds = %lor.lhs.false75, %if.then65
  %56 = load ptr, ptr %bzerror.addr, align 8
  %cmp80 = icmp ne ptr %56, null
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then79
  %57 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %57, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then79
  %58 = load ptr, ptr %bzf, align 8
  %cmp84 = icmp ne ptr %58, null
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end83
  %59 = load ptr, ptr %bzf, align 8
  %lastErr87 = getelementptr inbounds nuw %struct.bzFile, ptr %59, i32 0, i32 5
  store i32 -6, ptr %lastErr87, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end83
  br label %return

if.end89:                                         ; preds = %lor.lhs.false75
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end61
  %60 = load ptr, ptr %bzf, align 8
  %strm91 = getelementptr inbounds nuw %struct.bzFile, ptr %60, i32 0, i32 4
  %avail_in92 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm91, i32 0, i32 1
  %61 = load i32, ptr %avail_in92, align 8
  %cmp93 = icmp eq i32 %61, 0
  br i1 %cmp93, label %if.then95, label %if.end105

if.then95:                                        ; preds = %if.end90
  %62 = load ptr, ptr %bzerror.addr, align 8
  %cmp96 = icmp ne ptr %62, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then95
  %63 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %63, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.then95
  %64 = load ptr, ptr %bzf, align 8
  %cmp100 = icmp ne ptr %64, null
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end99
  %65 = load ptr, ptr %bzf, align 8
  %lastErr103 = getelementptr inbounds nuw %struct.bzFile, ptr %65, i32 0, i32 5
  store i32 0, ptr %lastErr103, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end99
  br label %return

if.end105:                                        ; preds = %if.end90
  br label %while.body

return:                                           ; preds = %if.end104, %if.end88, %if.end60, %if.end44, %if.end34, %if.end24, %if.end15
  ret void
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
