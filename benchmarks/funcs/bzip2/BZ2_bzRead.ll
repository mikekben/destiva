; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzDecompress(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzRead(ptr noundef %bzerror, ptr noundef %b, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %bzerror.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
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
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %lor.lhs.false6
  %12 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds nuw %struct.bzFile, ptr %12, i32 0, i32 3
  %13 = load i8, ptr %writing, align 4
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then17, label %if.end25

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
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end16
  %18 = load i32, ptr %len.addr, align 4
  %cmp26 = icmp eq i32 %18, 0
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  %19 = load ptr, ptr %bzerror.addr, align 8
  %cmp28 = icmp ne ptr %19, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  %20 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %20, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  %21 = load ptr, ptr %bzf, align 8
  %cmp31 = icmp ne ptr %21, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  %22 = load ptr, ptr %bzf, align 8
  %lastErr33 = getelementptr inbounds nuw %struct.bzFile, ptr %22, i32 0, i32 5
  store i32 0, ptr %lastErr33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end25
  %23 = load i32, ptr %len.addr, align 4
  %24 = load ptr, ptr %bzf, align 8
  %strm = getelementptr inbounds nuw %struct.bzFile, ptr %24, i32 0, i32 4
  %avail_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 5
  store i32 %23, ptr %avail_out, align 8
  %25 = load ptr, ptr %buf.addr, align 8
  %26 = load ptr, ptr %bzf, align 8
  %strm36 = getelementptr inbounds nuw %struct.bzFile, ptr %26, i32 0, i32 4
  %next_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm36, i32 0, i32 4
  store ptr %25, ptr %next_out, align 8
  br label %while.body

while.body:                                       ; preds = %if.end152, %if.end35
  %27 = load ptr, ptr %bzf, align 8
  %handle = getelementptr inbounds nuw %struct.bzFile, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %handle, align 8
  %call = call i32 @ferror(ptr noundef %28) #3
  %tobool37 = icmp ne i32 %call, 0
  br i1 %tobool37, label %if.then38, label %if.end46

if.then38:                                        ; preds = %while.body
  %29 = load ptr, ptr %bzerror.addr, align 8
  %cmp39 = icmp ne ptr %29, null
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then38
  %30 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %30, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then38
  %31 = load ptr, ptr %bzf, align 8
  %cmp42 = icmp ne ptr %31, null
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %32 = load ptr, ptr %bzf, align 8
  %lastErr44 = getelementptr inbounds nuw %struct.bzFile, ptr %32, i32 0, i32 5
  store i32 -6, ptr %lastErr44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %while.body
  %33 = load ptr, ptr %bzf, align 8
  %strm47 = getelementptr inbounds nuw %struct.bzFile, ptr %33, i32 0, i32 4
  %avail_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm47, i32 0, i32 1
  %34 = load i32, ptr %avail_in, align 8
  %cmp48 = icmp eq i32 %34, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end76

land.lhs.true:                                    ; preds = %if.end46
  %35 = load ptr, ptr %bzf, align 8
  %handle49 = getelementptr inbounds nuw %struct.bzFile, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %handle49, align 8
  %call50 = call zeroext i8 @myfeof(ptr noundef %36)
  %tobool51 = icmp ne i8 %call50, 0
  br i1 %tobool51, label %if.end76, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  %37 = load ptr, ptr %bzf, align 8
  %buf53 = getelementptr inbounds nuw %struct.bzFile, ptr %37, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %buf53, i64 0, i64 0
  %38 = load ptr, ptr %bzf, align 8
  %handle54 = getelementptr inbounds nuw %struct.bzFile, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %handle54, align 8
  %call55 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 5000, ptr noundef %39)
  %conv = trunc i64 %call55 to i32
  store i32 %conv, ptr %n, align 4
  %40 = load ptr, ptr %bzf, align 8
  %handle56 = getelementptr inbounds nuw %struct.bzFile, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %handle56, align 8
  %call57 = call i32 @ferror(ptr noundef %41) #3
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end69

if.then59:                                        ; preds = %if.then52
  %42 = load ptr, ptr %bzerror.addr, align 8
  %cmp60 = icmp ne ptr %42, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then59
  %43 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %43, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then59
  %44 = load ptr, ptr %bzf, align 8
  %cmp64 = icmp ne ptr %44, null
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  %45 = load ptr, ptr %bzf, align 8
  %lastErr67 = getelementptr inbounds nuw %struct.bzFile, ptr %45, i32 0, i32 5
  store i32 -6, ptr %lastErr67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63
  store i32 0, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.then52
  %46 = load i32, ptr %n, align 4
  %47 = load ptr, ptr %bzf, align 8
  %bufN = getelementptr inbounds nuw %struct.bzFile, ptr %47, i32 0, i32 2
  store i32 %46, ptr %bufN, align 8
  %48 = load ptr, ptr %bzf, align 8
  %bufN70 = getelementptr inbounds nuw %struct.bzFile, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %bufN70, align 8
  %50 = load ptr, ptr %bzf, align 8
  %strm71 = getelementptr inbounds nuw %struct.bzFile, ptr %50, i32 0, i32 4
  %avail_in72 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm71, i32 0, i32 1
  store i32 %49, ptr %avail_in72, align 8
  %51 = load ptr, ptr %bzf, align 8
  %buf73 = getelementptr inbounds nuw %struct.bzFile, ptr %51, i32 0, i32 1
  %arraydecay74 = getelementptr inbounds [5000 x i8], ptr %buf73, i64 0, i64 0
  %52 = load ptr, ptr %bzf, align 8
  %strm75 = getelementptr inbounds nuw %struct.bzFile, ptr %52, i32 0, i32 4
  %next_in = getelementptr inbounds nuw %struct.bz_stream, ptr %strm75, i32 0, i32 0
  store ptr %arraydecay74, ptr %next_in, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end69, %land.lhs.true, %if.end46
  %53 = load ptr, ptr %bzf, align 8
  %strm77 = getelementptr inbounds nuw %struct.bzFile, ptr %53, i32 0, i32 4
  %call78 = call i32 @BZ2_bzDecompress(ptr noundef %strm77)
  store i32 %call78, ptr %ret, align 4
  %54 = load i32, ptr %ret, align 4
  %cmp79 = icmp ne i32 %54, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end94

land.lhs.true81:                                  ; preds = %if.end76
  %55 = load i32, ptr %ret, align 4
  %cmp82 = icmp ne i32 %55, 4
  br i1 %cmp82, label %if.then84, label %if.end94

if.then84:                                        ; preds = %land.lhs.true81
  %56 = load ptr, ptr %bzerror.addr, align 8
  %cmp85 = icmp ne ptr %56, null
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then84
  %57 = load i32, ptr %ret, align 4
  %58 = load ptr, ptr %bzerror.addr, align 8
  store i32 %57, ptr %58, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then84
  %59 = load ptr, ptr %bzf, align 8
  %cmp89 = icmp ne ptr %59, null
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end88
  %60 = load i32, ptr %ret, align 4
  %61 = load ptr, ptr %bzf, align 8
  %lastErr92 = getelementptr inbounds nuw %struct.bzFile, ptr %61, i32 0, i32 5
  store i32 %60, ptr %lastErr92, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end88
  store i32 0, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %land.lhs.true81, %if.end76
  %62 = load i32, ptr %ret, align 4
  %cmp95 = icmp eq i32 %62, 0
  br i1 %cmp95, label %land.lhs.true97, label %if.end122

land.lhs.true97:                                  ; preds = %if.end94
  %63 = load ptr, ptr %bzf, align 8
  %handle98 = getelementptr inbounds nuw %struct.bzFile, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %handle98, align 8
  %call99 = call zeroext i8 @myfeof(ptr noundef %64)
  %conv100 = zext i8 %call99 to i32
  %tobool101 = icmp ne i32 %conv100, 0
  br i1 %tobool101, label %land.lhs.true102, label %if.end122

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %65 = load ptr, ptr %bzf, align 8
  %strm103 = getelementptr inbounds nuw %struct.bzFile, ptr %65, i32 0, i32 4
  %avail_in104 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm103, i32 0, i32 1
  %66 = load i32, ptr %avail_in104, align 8
  %cmp105 = icmp eq i32 %66, 0
  br i1 %cmp105, label %land.lhs.true107, label %if.end122

land.lhs.true107:                                 ; preds = %land.lhs.true102
  %67 = load ptr, ptr %bzf, align 8
  %strm108 = getelementptr inbounds nuw %struct.bzFile, ptr %67, i32 0, i32 4
  %avail_out109 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm108, i32 0, i32 5
  %68 = load i32, ptr %avail_out109, align 8
  %cmp110 = icmp ugt i32 %68, 0
  br i1 %cmp110, label %if.then112, label %if.end122

if.then112:                                       ; preds = %land.lhs.true107
  %69 = load ptr, ptr %bzerror.addr, align 8
  %cmp113 = icmp ne ptr %69, null
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.then112
  %70 = load ptr, ptr %bzerror.addr, align 8
  store i32 -7, ptr %70, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.then112
  %71 = load ptr, ptr %bzf, align 8
  %cmp117 = icmp ne ptr %71, null
  br i1 %cmp117, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end116
  %72 = load ptr, ptr %bzf, align 8
  %lastErr120 = getelementptr inbounds nuw %struct.bzFile, ptr %72, i32 0, i32 5
  store i32 -7, ptr %lastErr120, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end116
  store i32 0, ptr %retval, align 4
  br label %return

if.end122:                                        ; preds = %land.lhs.true107, %land.lhs.true102, %land.lhs.true97, %if.end94
  %73 = load i32, ptr %ret, align 4
  %cmp123 = icmp eq i32 %73, 4
  br i1 %cmp123, label %if.then125, label %if.end137

if.then125:                                       ; preds = %if.end122
  %74 = load ptr, ptr %bzerror.addr, align 8
  %cmp126 = icmp ne ptr %74, null
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.then125
  %75 = load ptr, ptr %bzerror.addr, align 8
  store i32 4, ptr %75, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.then125
  %76 = load ptr, ptr %bzf, align 8
  %cmp130 = icmp ne ptr %76, null
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end129
  %77 = load ptr, ptr %bzf, align 8
  %lastErr133 = getelementptr inbounds nuw %struct.bzFile, ptr %77, i32 0, i32 5
  store i32 4, ptr %lastErr133, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end129
  %78 = load i32, ptr %len.addr, align 4
  %79 = load ptr, ptr %bzf, align 8
  %strm135 = getelementptr inbounds nuw %struct.bzFile, ptr %79, i32 0, i32 4
  %avail_out136 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm135, i32 0, i32 5
  %80 = load i32, ptr %avail_out136, align 8
  %sub = sub i32 %78, %80
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.end122
  %81 = load ptr, ptr %bzf, align 8
  %strm138 = getelementptr inbounds nuw %struct.bzFile, ptr %81, i32 0, i32 4
  %avail_out139 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm138, i32 0, i32 5
  %82 = load i32, ptr %avail_out139, align 8
  %cmp140 = icmp eq i32 %82, 0
  br i1 %cmp140, label %if.then142, label %if.end152

if.then142:                                       ; preds = %if.end137
  %83 = load ptr, ptr %bzerror.addr, align 8
  %cmp143 = icmp ne ptr %83, null
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.then142
  %84 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %84, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.then142
  %85 = load ptr, ptr %bzf, align 8
  %cmp147 = icmp ne ptr %85, null
  br i1 %cmp147, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.end146
  %86 = load ptr, ptr %bzf, align 8
  %lastErr150 = getelementptr inbounds nuw %struct.bzFile, ptr %86, i32 0, i32 5
  store i32 0, ptr %lastErr150, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end146
  %87 = load i32, ptr %len.addr, align 4
  store i32 %87, ptr %retval, align 4
  br label %return

if.end152:                                        ; preds = %if.end137
  br label %while.body

return:                                           ; preds = %if.end151, %if.end134, %if.end121, %if.end93, %if.end68, %if.end45, %if.end34, %if.end24, %if.end15
  %88 = load i32, ptr %retval, align 4
  ret i32 %88
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @myfeof(ptr noundef) #0

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

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
