; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzCompress(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzCompressEnd(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzWriteClose64(ptr noundef %bzerror, ptr noundef %b, i32 noundef %abandon, ptr noundef %nbytes_in_lo32, ptr noundef %nbytes_in_hi32, ptr noundef %nbytes_out_lo32, ptr noundef %nbytes_out_hi32) #0 {
entry:
  %bzerror.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %abandon.addr = alloca i32, align 4
  %nbytes_in_lo32.addr = alloca ptr, align 8
  %nbytes_in_hi32.addr = alloca ptr, align 8
  %nbytes_out_lo32.addr = alloca ptr, align 8
  %nbytes_out_hi32.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %abandon, ptr %abandon.addr, align 4
  store ptr %nbytes_in_lo32, ptr %nbytes_in_lo32.addr, align 8
  store ptr %nbytes_in_hi32, ptr %nbytes_in_hi32.addr, align 8
  store ptr %nbytes_out_lo32, ptr %nbytes_out_lo32.addr, align 8
  store ptr %nbytes_out_hi32, ptr %nbytes_out_hi32.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  store ptr %0, ptr %bzf, align 8
  %1 = load ptr, ptr %bzf, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bzerror.addr, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load ptr, ptr %bzf, align 8
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds nuw %struct.bzFile, ptr %5, i32 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  br label %return

if.end6:                                          ; preds = %entry
  %6 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds nuw %struct.bzFile, ptr %6, i32 0, i32 3
  %7 = load i8, ptr %writing, align 4
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end6
  %8 = load ptr, ptr %bzerror.addr, align 8
  %cmp8 = icmp ne ptr %8, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  %9 = load ptr, ptr %bzerror.addr, align 8
  store i32 -1, ptr %9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  %10 = load ptr, ptr %bzf, align 8
  %cmp11 = icmp ne ptr %10, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %11 = load ptr, ptr %bzf, align 8
  %lastErr13 = getelementptr inbounds nuw %struct.bzFile, ptr %11, i32 0, i32 5
  store i32 -1, ptr %lastErr13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  br label %return

if.end15:                                         ; preds = %if.end6
  %12 = load ptr, ptr %bzf, align 8
  %handle = getelementptr inbounds nuw %struct.bzFile, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %handle, align 8
  %call = call i32 @ferror(ptr noundef %13) #3
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end15
  %14 = load ptr, ptr %bzerror.addr, align 8
  %cmp18 = icmp ne ptr %14, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %15 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %15, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %16 = load ptr, ptr %bzf, align 8
  %cmp21 = icmp ne ptr %16, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %17 = load ptr, ptr %bzf, align 8
  %lastErr23 = getelementptr inbounds nuw %struct.bzFile, ptr %17, i32 0, i32 5
  store i32 -6, ptr %lastErr23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  br label %return

if.end25:                                         ; preds = %if.end15
  %18 = load ptr, ptr %nbytes_in_lo32.addr, align 8
  %cmp26 = icmp ne ptr %18, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  %19 = load ptr, ptr %nbytes_in_lo32.addr, align 8
  store i32 0, ptr %19, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %20 = load ptr, ptr %nbytes_in_hi32.addr, align 8
  %cmp29 = icmp ne ptr %20, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  %21 = load ptr, ptr %nbytes_in_hi32.addr, align 8
  store i32 0, ptr %21, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %22 = load ptr, ptr %nbytes_out_lo32.addr, align 8
  %cmp32 = icmp ne ptr %22, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  %23 = load ptr, ptr %nbytes_out_lo32.addr, align 8
  store i32 0, ptr %23, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31
  %24 = load ptr, ptr %nbytes_out_hi32.addr, align 8
  %cmp35 = icmp ne ptr %24, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  %25 = load ptr, ptr %nbytes_out_hi32.addr, align 8
  store i32 0, ptr %25, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  %26 = load i32, ptr %abandon.addr, align 4
  %tobool38 = icmp ne i32 %26, 0
  br i1 %tobool38, label %if.end89, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end37
  %27 = load ptr, ptr %bzf, align 8
  %lastErr39 = getelementptr inbounds nuw %struct.bzFile, ptr %27, i32 0, i32 5
  %28 = load i32, ptr %lastErr39, align 8
  %cmp40 = icmp eq i32 %28, 0
  br i1 %cmp40, label %if.then41, label %if.end89

if.then41:                                        ; preds = %land.lhs.true
  br label %while.body

while.body:                                       ; preds = %if.end88, %if.then41
  %29 = load ptr, ptr %bzf, align 8
  %strm = getelementptr inbounds nuw %struct.bzFile, ptr %29, i32 0, i32 4
  %avail_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm, i32 0, i32 5
  store i32 5000, ptr %avail_out, align 8
  %30 = load ptr, ptr %bzf, align 8
  %buf = getelementptr inbounds nuw %struct.bzFile, ptr %30, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %buf, i64 0, i64 0
  %31 = load ptr, ptr %bzf, align 8
  %strm42 = getelementptr inbounds nuw %struct.bzFile, ptr %31, i32 0, i32 4
  %next_out = getelementptr inbounds nuw %struct.bz_stream, ptr %strm42, i32 0, i32 4
  store ptr %arraydecay, ptr %next_out, align 8
  %32 = load ptr, ptr %bzf, align 8
  %strm43 = getelementptr inbounds nuw %struct.bzFile, ptr %32, i32 0, i32 4
  %call44 = call i32 @BZ2_bzCompress(ptr noundef %strm43, i32 noundef 2)
  store i32 %call44, ptr %ret, align 4
  %33 = load i32, ptr %ret, align 4
  %cmp45 = icmp ne i32 %33, 3
  br i1 %cmp45, label %land.lhs.true46, label %if.end56

land.lhs.true46:                                  ; preds = %while.body
  %34 = load i32, ptr %ret, align 4
  %cmp47 = icmp ne i32 %34, 4
  br i1 %cmp47, label %if.then48, label %if.end56

if.then48:                                        ; preds = %land.lhs.true46
  %35 = load ptr, ptr %bzerror.addr, align 8
  %cmp49 = icmp ne ptr %35, null
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then48
  %36 = load i32, ptr %ret, align 4
  %37 = load ptr, ptr %bzerror.addr, align 8
  store i32 %36, ptr %37, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48
  %38 = load ptr, ptr %bzf, align 8
  %cmp52 = icmp ne ptr %38, null
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  %39 = load i32, ptr %ret, align 4
  %40 = load ptr, ptr %bzf, align 8
  %lastErr54 = getelementptr inbounds nuw %struct.bzFile, ptr %40, i32 0, i32 5
  store i32 %39, ptr %lastErr54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51
  br label %return

if.end56:                                         ; preds = %land.lhs.true46, %while.body
  %41 = load ptr, ptr %bzf, align 8
  %strm57 = getelementptr inbounds nuw %struct.bzFile, ptr %41, i32 0, i32 4
  %avail_out58 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm57, i32 0, i32 5
  %42 = load i32, ptr %avail_out58, align 8
  %cmp59 = icmp ult i32 %42, 5000
  br i1 %cmp59, label %if.then60, label %if.end84

if.then60:                                        ; preds = %if.end56
  %43 = load ptr, ptr %bzf, align 8
  %strm61 = getelementptr inbounds nuw %struct.bzFile, ptr %43, i32 0, i32 4
  %avail_out62 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm61, i32 0, i32 5
  %44 = load i32, ptr %avail_out62, align 8
  %sub = sub i32 5000, %44
  store i32 %sub, ptr %n, align 4
  %45 = load ptr, ptr %bzf, align 8
  %buf63 = getelementptr inbounds nuw %struct.bzFile, ptr %45, i32 0, i32 1
  %arraydecay64 = getelementptr inbounds [5000 x i8], ptr %buf63, i64 0, i64 0
  %46 = load i32, ptr %n, align 4
  %conv = sext i32 %46 to i64
  %47 = load ptr, ptr %bzf, align 8
  %handle65 = getelementptr inbounds nuw %struct.bzFile, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %handle65, align 8
  %call66 = call i64 @fwrite(ptr noundef %arraydecay64, i64 noundef 1, i64 noundef %conv, ptr noundef %48)
  %conv67 = trunc i64 %call66 to i32
  store i32 %conv67, ptr %n2, align 4
  %49 = load i32, ptr %n, align 4
  %50 = load i32, ptr %n2, align 4
  %cmp68 = icmp ne i32 %49, %50
  br i1 %cmp68, label %if.then73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then60
  %51 = load ptr, ptr %bzf, align 8
  %handle70 = getelementptr inbounds nuw %struct.bzFile, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %handle70, align 8
  %call71 = call i32 @ferror(ptr noundef %52) #3
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end83

if.then73:                                        ; preds = %lor.lhs.false, %if.then60
  %53 = load ptr, ptr %bzerror.addr, align 8
  %cmp74 = icmp ne ptr %53, null
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then73
  %54 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %54, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.then73
  %55 = load ptr, ptr %bzf, align 8
  %cmp78 = icmp ne ptr %55, null
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end77
  %56 = load ptr, ptr %bzf, align 8
  %lastErr81 = getelementptr inbounds nuw %struct.bzFile, ptr %56, i32 0, i32 5
  store i32 -6, ptr %lastErr81, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77
  br label %return

if.end83:                                         ; preds = %lor.lhs.false
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end56
  %57 = load i32, ptr %ret, align 4
  %cmp85 = icmp eq i32 %57, 4
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  br label %while.end

if.end88:                                         ; preds = %if.end84
  br label %while.body

while.end:                                        ; preds = %if.then87
  br label %if.end89

if.end89:                                         ; preds = %while.end, %land.lhs.true, %if.end37
  %58 = load i32, ptr %abandon.addr, align 4
  %tobool90 = icmp ne i32 %58, 0
  br i1 %tobool90, label %if.end112, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.end89
  %59 = load ptr, ptr %bzf, align 8
  %handle92 = getelementptr inbounds nuw %struct.bzFile, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %handle92, align 8
  %call93 = call i32 @ferror(ptr noundef %60) #3
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end112, label %if.then95

if.then95:                                        ; preds = %land.lhs.true91
  %61 = load ptr, ptr %bzf, align 8
  %handle96 = getelementptr inbounds nuw %struct.bzFile, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %handle96, align 8
  %call97 = call i32 @fflush(ptr noundef %62)
  %63 = load ptr, ptr %bzf, align 8
  %handle98 = getelementptr inbounds nuw %struct.bzFile, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %handle98, align 8
  %call99 = call i32 @ferror(ptr noundef %64) #3
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then101, label %if.end111

if.then101:                                       ; preds = %if.then95
  %65 = load ptr, ptr %bzerror.addr, align 8
  %cmp102 = icmp ne ptr %65, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then101
  %66 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %66, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.then101
  %67 = load ptr, ptr %bzf, align 8
  %cmp106 = icmp ne ptr %67, null
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end105
  %68 = load ptr, ptr %bzf, align 8
  %lastErr109 = getelementptr inbounds nuw %struct.bzFile, ptr %68, i32 0, i32 5
  store i32 -6, ptr %lastErr109, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end105
  br label %return

if.end111:                                        ; preds = %if.then95
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %land.lhs.true91, %if.end89
  %69 = load ptr, ptr %nbytes_in_lo32.addr, align 8
  %cmp113 = icmp ne ptr %69, null
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.end112
  %70 = load ptr, ptr %bzf, align 8
  %strm116 = getelementptr inbounds nuw %struct.bzFile, ptr %70, i32 0, i32 4
  %total_in_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm116, i32 0, i32 2
  %71 = load i32, ptr %total_in_lo32, align 4
  %72 = load ptr, ptr %nbytes_in_lo32.addr, align 8
  store i32 %71, ptr %72, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end112
  %73 = load ptr, ptr %nbytes_in_hi32.addr, align 8
  %cmp118 = icmp ne ptr %73, null
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end117
  %74 = load ptr, ptr %bzf, align 8
  %strm121 = getelementptr inbounds nuw %struct.bzFile, ptr %74, i32 0, i32 4
  %total_in_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm121, i32 0, i32 3
  %75 = load i32, ptr %total_in_hi32, align 8
  %76 = load ptr, ptr %nbytes_in_hi32.addr, align 8
  store i32 %75, ptr %76, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117
  %77 = load ptr, ptr %nbytes_out_lo32.addr, align 8
  %cmp123 = icmp ne ptr %77, null
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end122
  %78 = load ptr, ptr %bzf, align 8
  %strm126 = getelementptr inbounds nuw %struct.bzFile, ptr %78, i32 0, i32 4
  %total_out_lo32 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm126, i32 0, i32 6
  %79 = load i32, ptr %total_out_lo32, align 4
  %80 = load ptr, ptr %nbytes_out_lo32.addr, align 8
  store i32 %79, ptr %80, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end122
  %81 = load ptr, ptr %nbytes_out_hi32.addr, align 8
  %cmp128 = icmp ne ptr %81, null
  br i1 %cmp128, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.end127
  %82 = load ptr, ptr %bzf, align 8
  %strm131 = getelementptr inbounds nuw %struct.bzFile, ptr %82, i32 0, i32 4
  %total_out_hi32 = getelementptr inbounds nuw %struct.bz_stream, ptr %strm131, i32 0, i32 7
  %83 = load i32, ptr %total_out_hi32, align 8
  %84 = load ptr, ptr %nbytes_out_hi32.addr, align 8
  store i32 %83, ptr %84, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end127
  %85 = load ptr, ptr %bzerror.addr, align 8
  %cmp133 = icmp ne ptr %85, null
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end132
  %86 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %86, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end132
  %87 = load ptr, ptr %bzf, align 8
  %cmp137 = icmp ne ptr %87, null
  br i1 %cmp137, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.end136
  %88 = load ptr, ptr %bzf, align 8
  %lastErr140 = getelementptr inbounds nuw %struct.bzFile, ptr %88, i32 0, i32 5
  store i32 0, ptr %lastErr140, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end136
  %89 = load ptr, ptr %bzf, align 8
  %strm142 = getelementptr inbounds nuw %struct.bzFile, ptr %89, i32 0, i32 4
  %call143 = call i32 @BZ2_bzCompressEnd(ptr noundef %strm142)
  %90 = load ptr, ptr %bzf, align 8
  call void @free(ptr noundef %90) #3
  br label %return

return:                                           ; preds = %if.end141, %if.end110, %if.end82, %if.end55, %if.end24, %if.end14, %if.end5
  ret void
}

declare i32 @fflush(ptr noundef) #2

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
