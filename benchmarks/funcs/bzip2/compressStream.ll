; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UInt64 = type { [8 x i8] }

@stderr = external global ptr, align 8
@stdout = external global ptr, align 8
@outputHandleJustInCase = external dso_local global ptr, align 8
@verbosity = external dso_local global i32, align 4
@blockSize100k = external dso_local global i32, align 4
@workFactor = external dso_local global i32, align 4
@.str.59 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.115 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.116 = external hidden unnamed_addr constant [57 x i8], align 1
@.str.117 = external hidden unnamed_addr constant [26 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @BZ2_bzWriteOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bzWrite(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bzWriteClose64(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @myfeof(ptr noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: noreturn nounwind uwtable
declare hidden void @outOfMemory() #3

; Function Attrs: noreturn nounwind uwtable
declare hidden void @panic(ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @compressStream(ptr noundef %stream, ptr noundef %zStream) #1 {
entry:
  %stream.addr = alloca ptr, align 8
  %zStream.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  %ibuf = alloca [5000 x i8], align 16
  %nIbuf = alloca i32, align 4
  %nbytes_in_lo32 = alloca i32, align 4
  %nbytes_in_hi32 = alloca i32, align 4
  %nbytes_out_lo32 = alloca i32, align 4
  %nbytes_out_hi32 = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf_nin = alloca [32 x i8], align 16
  %buf_nout = alloca [32 x i8], align 16
  %nbytes_in = alloca %struct.UInt64, align 1
  %nbytes_out = alloca %struct.UInt64, align 1
  %nbytes_in_d = alloca double, align 8
  %nbytes_out_d = alloca double, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %zStream, ptr %zStream.addr, align 8
  store ptr null, ptr %bzf, align 8
  %0 = load ptr, ptr %stream.addr, align 8
  %call = call i32 @ferror(ptr noundef %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %errhandler_io

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zStream.addr, align 8
  %call1 = call i32 @ferror(ptr noundef %1) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %errhandler_io

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %zStream.addr, align 8
  %3 = load i32, ptr @blockSize100k, align 4
  %4 = load i32, ptr @verbosity, align 4
  %5 = load i32, ptr @workFactor, align 4
  %call5 = call ptr @BZ2_bzWriteOpen(ptr noundef %bzerr, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  store ptr %call5, ptr %bzf, align 8
  %6 = load i32, ptr %bzerr, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  br label %errhandler

if.end7:                                          ; preds = %if.end4
  %7 = load i32, ptr @verbosity, align 4
  %cmp8 = icmp sge i32 %7, 2
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %8 = load ptr, ptr @stderr, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.59) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  br label %while.body

while.body:                                       ; preds = %if.end29, %if.end11
  %9 = load ptr, ptr %stream.addr, align 8
  %call12 = call zeroext i8 @myfeof(ptr noundef %9)
  %tobool13 = icmp ne i8 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  br label %while.end

if.end15:                                         ; preds = %while.body
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %ibuf, i64 0, i64 0
  %10 = load ptr, ptr %stream.addr, align 8
  %call16 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 5000, ptr noundef %10)
  %conv = trunc i64 %call16 to i32
  store i32 %conv, ptr %nIbuf, align 4
  %11 = load ptr, ptr %stream.addr, align 8
  %call17 = call i32 @ferror(ptr noundef %11) #4
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  br label %errhandler_io

if.end20:                                         ; preds = %if.end15
  %12 = load i32, ptr %nIbuf, align 4
  %cmp21 = icmp sgt i32 %12, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %13 = load ptr, ptr %bzf, align 8
  %arraydecay24 = getelementptr inbounds [5000 x i8], ptr %ibuf, i64 0, i64 0
  %14 = load i32, ptr %nIbuf, align 4
  call void @BZ2_bzWrite(ptr noundef %bzerr, ptr noundef %13, ptr noundef %arraydecay24, i32 noundef %14)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %15 = load i32, ptr %bzerr, align 4
  %cmp26 = icmp ne i32 %15, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  br label %errhandler

if.end29:                                         ; preds = %if.end25
  br label %while.body

while.end:                                        ; preds = %if.then14
  %16 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzWriteClose64(ptr noundef %bzerr, ptr noundef %16, i32 noundef 0, ptr noundef %nbytes_in_lo32, ptr noundef %nbytes_in_hi32, ptr noundef %nbytes_out_lo32, ptr noundef %nbytes_out_hi32)
  %17 = load i32, ptr %bzerr, align 4
  %cmp30 = icmp ne i32 %17, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.end
  br label %errhandler

if.end33:                                         ; preds = %while.end
  %18 = load ptr, ptr %zStream.addr, align 8
  %call34 = call i32 @ferror(ptr noundef %18) #4
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  br label %errhandler_io

if.end37:                                         ; preds = %if.end33
  %19 = load ptr, ptr %zStream.addr, align 8
  %call38 = call i32 @fflush(ptr noundef %19)
  store i32 %call38, ptr %ret, align 4
  %20 = load i32, ptr %ret, align 4
  %cmp39 = icmp eq i32 %20, -1
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  br label %errhandler_io

if.end42:                                         ; preds = %if.end37
  %21 = load ptr, ptr %zStream.addr, align 8
  %22 = load ptr, ptr @stdout, align 8
  %cmp43 = icmp ne ptr %21, %22
  br i1 %cmp43, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.end42
  %23 = load ptr, ptr %zStream.addr, align 8
  %call46 = call i32 @fclose(ptr noundef %23)
  store i32 %call46, ptr %ret, align 4
  store ptr null, ptr @outputHandleJustInCase, align 8
  %24 = load i32, ptr %ret, align 4
  %cmp47 = icmp eq i32 %24, -1
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then45
  br label %errhandler_io

if.end50:                                         ; preds = %if.then45
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end42
  store ptr null, ptr @outputHandleJustInCase, align 8
  %25 = load ptr, ptr %stream.addr, align 8
  %call52 = call i32 @ferror(ptr noundef %25) #4
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end51
  br label %errhandler_io

if.end55:                                         ; preds = %if.end51
  %26 = load ptr, ptr %stream.addr, align 8
  %call56 = call i32 @fclose(ptr noundef %26)
  store i32 %call56, ptr %ret, align 4
  %27 = load i32, ptr %ret, align 4
  %cmp57 = icmp eq i32 %27, -1
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end55
  br label %errhandler_io

if.end60:                                         ; preds = %if.end55
  %28 = load i32, ptr @verbosity, align 4
  %cmp61 = icmp sge i32 %28, 1
  br i1 %cmp61, label %if.then63, label %if.end81

if.then63:                                        ; preds = %if.end60
  %29 = load i32, ptr %nbytes_in_lo32, align 4
  %cmp64 = icmp eq i32 %29, 0
  br i1 %cmp64, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then63
  %30 = load i32, ptr %nbytes_in_hi32, align 4
  %cmp66 = icmp eq i32 %30, 0
  br i1 %cmp66, label %if.then68, label %if.else

if.then68:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr @stderr, align 8
  %call69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.115) #4
  br label %if.end80

if.else:                                          ; preds = %land.lhs.true, %if.then63
  %32 = load i32, ptr %nbytes_in_lo32, align 4
  %33 = load i32, ptr %nbytes_in_hi32, align 4
  call void @uInt64_from_UInt32s(ptr noundef %nbytes_in, i32 noundef %32, i32 noundef %33)
  %34 = load i32, ptr %nbytes_out_lo32, align 4
  %35 = load i32, ptr %nbytes_out_hi32, align 4
  call void @uInt64_from_UInt32s(ptr noundef %nbytes_out, i32 noundef %34, i32 noundef %35)
  %call70 = call double @uInt64_to_double(ptr noundef %nbytes_in)
  store double %call70, ptr %nbytes_in_d, align 8
  %call71 = call double @uInt64_to_double(ptr noundef %nbytes_out)
  store double %call71, ptr %nbytes_out_d, align 8
  %arraydecay72 = getelementptr inbounds [32 x i8], ptr %buf_nin, i64 0, i64 0
  call void @uInt64_toAscii(ptr noundef %arraydecay72, ptr noundef %nbytes_in)
  %arraydecay73 = getelementptr inbounds [32 x i8], ptr %buf_nout, i64 0, i64 0
  call void @uInt64_toAscii(ptr noundef %arraydecay73, ptr noundef %nbytes_out)
  %36 = load ptr, ptr @stderr, align 8
  %37 = load double, ptr %nbytes_in_d, align 8
  %38 = load double, ptr %nbytes_out_d, align 8
  %div = fdiv double %37, %38
  %39 = load double, ptr %nbytes_out_d, align 8
  %mul = fmul double 8.000000e+00, %39
  %40 = load double, ptr %nbytes_in_d, align 8
  %div74 = fdiv double %mul, %40
  %41 = load double, ptr %nbytes_out_d, align 8
  %42 = load double, ptr %nbytes_in_d, align 8
  %div75 = fdiv double %41, %42
  %sub = fsub double 1.000000e+00, %div75
  %mul76 = fmul double 1.000000e+02, %sub
  %arraydecay77 = getelementptr inbounds [32 x i8], ptr %buf_nin, i64 0, i64 0
  %arraydecay78 = getelementptr inbounds [32 x i8], ptr %buf_nout, i64 0, i64 0
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.116, double noundef %div, double noundef %div74, double noundef %mul76, ptr noundef %arraydecay77, ptr noundef %arraydecay78) #4
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then68
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end60
  ret void

errhandler:                                       ; preds = %if.then32, %if.then28, %if.then6
  %43 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzWriteClose64(ptr noundef %bzerr_dummy, ptr noundef %43, i32 noundef 1, ptr noundef %nbytes_in_lo32, ptr noundef %nbytes_in_hi32, ptr noundef %nbytes_out_lo32, ptr noundef %nbytes_out_hi32)
  %44 = load i32, ptr %bzerr, align 4
  switch i32 %44, label %sw.default [
    i32 -9, label %sw.bb
    i32 -3, label %sw.bb82
    i32 -6, label %sw.bb83
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError() #5
  unreachable

sw.bb82:                                          ; preds = %errhandler
  call void @outOfMemory() #5
  unreachable

sw.bb83:                                          ; preds = %errhandler
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb83, %if.then59, %if.then54, %if.then49, %if.then41, %if.then36, %if.then19, %if.then3, %if.then
  call void @ioError() #5
  unreachable

sw.default:                                       ; preds = %errhandler
  call void @panic(ptr noundef @.str.117) #5
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
declare hidden void @ioError() #3

; Function Attrs: nounwind uwtable
declare hidden void @uInt64_from_UInt32s(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden double @uInt64_to_double(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @uInt64_toAscii(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn nounwind uwtable
declare hidden void @configError() #3

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
