; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@outputHandleJustInCase = external dso_local global ptr, align 8
@smallMode = external dso_local global i8, align 1
@forceOverwrite = external dso_local global i8, align 1
@noisy = external dso_local global i8, align 1
@verbosity = external dso_local global i32, align 4
@inName = external dso_local global [1034 x i8], align 16
@progName = external dso_local global ptr, align 8
@.str.129 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.130 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.131 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.132 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #0

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @BZ2_bzReadOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bzReadClose(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzRead(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @myfeof(ptr noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bzReadGetUnused(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noreturn nounwind uwtable
declare hidden void @outOfMemory() #3

; Function Attrs: noreturn nounwind uwtable
declare hidden void @panic(ptr noundef) #3

; Function Attrs: noreturn nounwind uwtable
declare hidden void @ioError() #3

; Function Attrs: noreturn nounwind uwtable
declare hidden void @configError() #3

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @uncompressStream(ptr noundef %zStream, ptr noundef %stream) #2 {
entry:
  %retval = alloca i8, align 1
  %zStream.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %ret = alloca i32, align 4
  %nread = alloca i32, align 4
  %streamNo = alloca i32, align 4
  %i = alloca i32, align 4
  %obuf = alloca [5000 x i8], align 16
  %unused = alloca [5000 x i8], align 16
  %nUnused = alloca i32, align 4
  %unusedTmp = alloca ptr, align 8
  store ptr %zStream, ptr %zStream.addr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr null, ptr %bzf, align 8
  store i32 0, ptr %nUnused, align 4
  store i32 0, ptr %streamNo, align 4
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
  br label %while.body

while.body:                                       ; preds = %if.end61, %if.end4
  %2 = load ptr, ptr %zStream.addr, align 8
  %3 = load i32, ptr @verbosity, align 4
  %4 = load i8, ptr @smallMode, align 1
  %conv = zext i8 %4 to i32
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 0
  %5 = load i32, ptr %nUnused, align 4
  %call5 = call ptr @BZ2_bzReadOpen(ptr noundef %bzerr, ptr noundef %2, i32 noundef %3, i32 noundef %conv, ptr noundef %arraydecay, i32 noundef %5)
  store ptr %call5, ptr %bzf, align 8
  %6 = load ptr, ptr %bzf, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i32, ptr %bzerr, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %while.body
  br label %errhandler

if.end10:                                         ; preds = %lor.lhs.false
  %8 = load i32, ptr %streamNo, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %streamNo, align 4
  br label %while.cond11

while.cond11:                                     ; preds = %if.end36, %if.end10
  %9 = load i32, ptr %bzerr, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %while.body14, label %while.end

while.body14:                                     ; preds = %while.cond11
  %10 = load ptr, ptr %bzf, align 8
  %arraydecay15 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %call16 = call i32 @BZ2_bzRead(ptr noundef %bzerr, ptr noundef %10, ptr noundef %arraydecay15, i32 noundef 5000)
  store i32 %call16, ptr %nread, align 4
  %11 = load i32, ptr %bzerr, align 4
  %cmp17 = icmp eq i32 %11, -5
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.body14
  br label %trycat

if.end20:                                         ; preds = %while.body14
  %12 = load i32, ptr %bzerr, align 4
  %cmp21 = icmp eq i32 %12, 0
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end20
  %13 = load i32, ptr %bzerr, align 4
  %cmp24 = icmp eq i32 %13, 4
  br i1 %cmp24, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %lor.lhs.false23, %if.end20
  %14 = load i32, ptr %nread, align 4
  %cmp26 = icmp sgt i32 %14, 0
  br i1 %cmp26, label %if.then28, label %if.end32

if.then28:                                        ; preds = %land.lhs.true
  %arraydecay29 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %15 = load i32, ptr %nread, align 4
  %conv30 = sext i32 %15 to i64
  %16 = load ptr, ptr %stream.addr, align 8
  %call31 = call i64 @fwrite(ptr noundef %arraydecay29, i64 noundef 1, i64 noundef %conv30, ptr noundef %16)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %land.lhs.true, %lor.lhs.false23
  %17 = load ptr, ptr %stream.addr, align 8
  %call33 = call i32 @ferror(ptr noundef %17) #4
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  br label %errhandler_io

if.end36:                                         ; preds = %if.end32
  br label %while.cond11, !llvm.loop !6

while.end:                                        ; preds = %while.cond11
  %18 = load i32, ptr %bzerr, align 4
  %cmp37 = icmp ne i32 %18, 4
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %while.end
  br label %errhandler

if.end40:                                         ; preds = %while.end
  %19 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadGetUnused(ptr noundef %bzerr, ptr noundef %19, ptr noundef %unusedTmp, ptr noundef %nUnused)
  %20 = load i32, ptr %bzerr, align 4
  %cmp41 = icmp ne i32 %20, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @panic(ptr noundef @.str.129) #5
  unreachable

if.end44:                                         ; preds = %if.end40
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end44
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %nUnused, align 4
  %cmp45 = icmp slt i32 %21, %22
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %unusedTmp, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 %idxprom
  %25 = load i8, ptr %arrayidx, align 1
  %26 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %26 to i64
  %arrayidx48 = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 %idxprom47
  store i8 %25, ptr %arrayidx48, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %27, 1
  store i32 %inc49, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef %bzerr, ptr noundef %28)
  %29 = load i32, ptr %bzerr, align 4
  %cmp50 = icmp ne i32 %29, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %for.end
  call void @panic(ptr noundef @.str.129) #5
  unreachable

if.end53:                                         ; preds = %for.end
  %30 = load i32, ptr %nUnused, align 4
  %cmp54 = icmp eq i32 %30, 0
  br i1 %cmp54, label %land.lhs.true56, label %if.end61

land.lhs.true56:                                  ; preds = %if.end53
  %31 = load ptr, ptr %zStream.addr, align 8
  %call57 = call zeroext i8 @myfeof(ptr noundef %31)
  %conv58 = zext i8 %call57 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %land.lhs.true56
  br label %while.end62

if.end61:                                         ; preds = %land.lhs.true56, %if.end53
  br label %while.body

while.end62:                                      ; preds = %if.then60
  br label %closeok

closeok:                                          ; preds = %while.end120, %while.end62
  %32 = load ptr, ptr %zStream.addr, align 8
  %call63 = call i32 @ferror(ptr noundef %32) #4
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %closeok
  br label %errhandler_io

if.end66:                                         ; preds = %closeok
  %33 = load ptr, ptr %zStream.addr, align 8
  %call67 = call i32 @fclose(ptr noundef %33)
  store i32 %call67, ptr %ret, align 4
  %34 = load i32, ptr %ret, align 4
  %cmp68 = icmp eq i32 %34, -1
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end66
  br label %errhandler_io

if.end71:                                         ; preds = %if.end66
  %35 = load ptr, ptr %stream.addr, align 8
  %call72 = call i32 @ferror(ptr noundef %35) #4
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end71
  br label %errhandler_io

if.end75:                                         ; preds = %if.end71
  %36 = load ptr, ptr %stream.addr, align 8
  %call76 = call i32 @fflush(ptr noundef %36)
  store i32 %call76, ptr %ret, align 4
  %37 = load i32, ptr %ret, align 4
  %cmp77 = icmp ne i32 %37, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end75
  br label %errhandler_io

if.end80:                                         ; preds = %if.end75
  %38 = load ptr, ptr %stream.addr, align 8
  %39 = load ptr, ptr @stdout, align 8
  %cmp81 = icmp ne ptr %38, %39
  br i1 %cmp81, label %if.then83, label %if.end89

if.then83:                                        ; preds = %if.end80
  %40 = load ptr, ptr %stream.addr, align 8
  %call84 = call i32 @fclose(ptr noundef %40)
  store i32 %call84, ptr %ret, align 4
  store ptr null, ptr @outputHandleJustInCase, align 8
  %41 = load i32, ptr %ret, align 4
  %cmp85 = icmp eq i32 %41, -1
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then83
  br label %errhandler_io

if.end88:                                         ; preds = %if.then83
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end80
  store ptr null, ptr @outputHandleJustInCase, align 8
  %42 = load i32, ptr @verbosity, align 4
  %cmp90 = icmp sge i32 %42, 2
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end89
  %43 = load ptr, ptr @stderr, align 8
  %call93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.130) #4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end89
  store i8 1, ptr %retval, align 1
  br label %return

trycat:                                           ; preds = %if.then19
  %44 = load i8, ptr @forceOverwrite, align 1
  %tobool95 = icmp ne i8 %44, 0
  br i1 %tobool95, label %if.then96, label %if.end121

if.then96:                                        ; preds = %trycat
  %45 = load ptr, ptr %zStream.addr, align 8
  call void @rewind(ptr noundef %45)
  br label %while.body97

while.body97:                                     ; preds = %if.end119, %if.then96
  %46 = load ptr, ptr %zStream.addr, align 8
  %call98 = call zeroext i8 @myfeof(ptr noundef %46)
  %tobool99 = icmp ne i8 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.end101

if.then100:                                       ; preds = %while.body97
  br label %while.end120

if.end101:                                        ; preds = %while.body97
  %arraydecay102 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %47 = load ptr, ptr %zStream.addr, align 8
  %call103 = call i64 @fread(ptr noundef %arraydecay102, i64 noundef 1, i64 noundef 5000, ptr noundef %47)
  %conv104 = trunc i64 %call103 to i32
  store i32 %conv104, ptr %nread, align 4
  %48 = load ptr, ptr %zStream.addr, align 8
  %call105 = call i32 @ferror(ptr noundef %48) #4
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end101
  br label %errhandler_io

if.end108:                                        ; preds = %if.end101
  %49 = load i32, ptr %nread, align 4
  %cmp109 = icmp sgt i32 %49, 0
  br i1 %cmp109, label %if.then111, label %if.end115

if.then111:                                       ; preds = %if.end108
  %arraydecay112 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %50 = load i32, ptr %nread, align 4
  %conv113 = sext i32 %50 to i64
  %51 = load ptr, ptr %stream.addr, align 8
  %call114 = call i64 @fwrite(ptr noundef %arraydecay112, i64 noundef 1, i64 noundef %conv113, ptr noundef %51)
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.end108
  %52 = load ptr, ptr %stream.addr, align 8
  %call116 = call i32 @ferror(ptr noundef %52) #4
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end115
  br label %errhandler_io

if.end119:                                        ; preds = %if.end115
  br label %while.body97

while.end120:                                     ; preds = %if.then100
  br label %closeok

if.end121:                                        ; preds = %trycat
  br label %errhandler

errhandler:                                       ; preds = %if.end121, %if.then39, %if.then9
  %53 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef %bzerr_dummy, ptr noundef %53)
  %54 = load i32, ptr %bzerr, align 4
  switch i32 %54, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %sw.bb122
    i32 -4, label %sw.bb123
    i32 -3, label %sw.bb124
    i32 -7, label %sw.bb125
    i32 -5, label %sw.bb126
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError() #5
  unreachable

sw.bb122:                                         ; preds = %errhandler
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb122, %if.then118, %if.then107, %if.then87, %if.then79, %if.then74, %if.then70, %if.then65, %if.then35, %if.then3, %if.then
  call void @ioError() #5
  unreachable

sw.bb123:                                         ; preds = %errhandler
  call void @crcError() #5
  unreachable

sw.bb124:                                         ; preds = %errhandler
  call void @outOfMemory() #5
  unreachable

sw.bb125:                                         ; preds = %errhandler
  call void @compressedStreamEOF() #5
  unreachable

sw.bb126:                                         ; preds = %errhandler
  %55 = load ptr, ptr %zStream.addr, align 8
  %56 = load ptr, ptr @stdin, align 8
  %cmp127 = icmp ne ptr %55, %56
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %sw.bb126
  %57 = load ptr, ptr %zStream.addr, align 8
  %call130 = call i32 @fclose(ptr noundef %57)
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %sw.bb126
  %58 = load ptr, ptr %stream.addr, align 8
  %59 = load ptr, ptr @stdout, align 8
  %cmp132 = icmp ne ptr %58, %59
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.end131
  %60 = load ptr, ptr %stream.addr, align 8
  %call135 = call i32 @fclose(ptr noundef %60)
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end131
  %61 = load i32, ptr %streamNo, align 4
  %cmp137 = icmp eq i32 %61, 1
  br i1 %cmp137, label %if.then139, label %if.else

if.then139:                                       ; preds = %if.end136
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end136
  %62 = load i8, ptr @noisy, align 1
  %tobool140 = icmp ne i8 %62, 0
  br i1 %tobool140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.else
  %63 = load ptr, ptr @stderr, align 8
  %64 = load ptr, ptr @progName, align 8
  %call142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.131, ptr noundef %64, ptr noundef @inName) #4
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %if.else
  store i8 1, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %errhandler
  call void @panic(ptr noundef @.str.132) #5
  unreachable

return:                                           ; preds = %if.end143, %if.then139, %if.end94
  %65 = load i8, ptr %retval, align 1
  ret i8 %65
}

declare void @rewind(ptr noundef) #1

; Function Attrs: noreturn nounwind uwtable
declare hidden void @crcError() #3

; Function Attrs: noreturn nounwind uwtable
declare hidden void @compressedStreamEOF() #3

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
