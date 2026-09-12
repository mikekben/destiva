; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trimFunc.lenOne = external hidden constant [1 x i8], align 1
@trimFunc.azOne = external hidden constant [1 x ptr], align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_user_data(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @trimFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zCharSet = alloca ptr, align 8
  %nIn = alloca i32, align 4
  %flags = alloca i32, align 4
  %i = alloca i32, align 4
  %aLen = alloca ptr, align 8
  %azChar = alloca ptr, align 8
  %nChar = alloca i32, align 4
  %z = alloca ptr, align 8
  %len = alloca i32, align 4
  %len108 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %aLen, align 8
  store ptr null, ptr %azChar, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %1)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @sqlite3_value_text(ptr noundef %3)
  store ptr %call2, ptr %zIn, align 8
  %4 = load ptr, ptr %zIn, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @sqlite3_value_bytes(ptr noundef %6)
  store i32 %call7, ptr %nIn, align 4
  %7 = load i32, ptr %argc.addr, align 4
  %cmp8 = icmp eq i32 %7, 1
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  store i32 1, ptr %nChar, align 4
  store ptr @trimFunc.lenOne, ptr %aLen, align 8
  store ptr @trimFunc.azOne, ptr %azChar, align 8
  store ptr null, ptr %zCharSet, align 8
  br label %if.end62

if.else:                                          ; preds = %if.end5
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx10, align 8
  %call11 = call ptr @sqlite3_value_text(ptr noundef %9)
  store ptr %call11, ptr %zCharSet, align 8
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else
  br label %return

if.else14:                                        ; preds = %if.else
  %10 = load ptr, ptr %zCharSet, align 8
  store ptr %10, ptr %z, align 8
  store i32 0, ptr %nChar, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else14
  %11 = load ptr, ptr %z, align 8
  %12 = load i8, ptr %11, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %14 = load i8, ptr %13, align 1
  %conv = zext i8 %14 to i32
  %cmp15 = icmp sge i32 %conv, 192
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then17
  %15 = load ptr, ptr %z, align 8
  %16 = load i8, ptr %15, align 1
  %conv18 = zext i8 %16 to i32
  %and = and i32 %conv18, 192
  %cmp19 = icmp eq i32 %and, 128
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %z, align 8
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr21, ptr %z, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end22

if.end22:                                         ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %18 = load i32, ptr %nChar, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %nChar, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %nChar, align 4
  %cmp23 = icmp sgt i32 %19, 0
  br i1 %cmp23, label %if.then25, label %if.end60

if.then25:                                        ; preds = %for.end
  %20 = load ptr, ptr %context.addr, align 8
  %21 = load i32, ptr %nChar, align 4
  %conv26 = sext i32 %21 to i64
  %mul = mul i64 %conv26, 9
  %call27 = call ptr @contextMalloc(ptr noundef %20, i64 noundef %mul)
  store ptr %call27, ptr %azChar, align 8
  %22 = load ptr, ptr %azChar, align 8
  %cmp28 = icmp eq ptr %22, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then25
  br label %return

if.end31:                                         ; preds = %if.then25
  %23 = load ptr, ptr %azChar, align 8
  %24 = load i32, ptr %nChar, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %23, i64 %idxprom
  store ptr %arrayidx32, ptr %aLen, align 8
  %25 = load ptr, ptr %zCharSet, align 8
  store ptr %25, ptr %z, align 8
  store i32 0, ptr %nChar, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc57, %if.end31
  %26 = load ptr, ptr %z, align 8
  %27 = load i8, ptr %26, align 1
  %tobool34 = icmp ne i8 %27, 0
  br i1 %tobool34, label %for.body35, label %for.end59

for.body35:                                       ; preds = %for.cond33
  %28 = load ptr, ptr %z, align 8
  %29 = load ptr, ptr %azChar, align 8
  %30 = load i32, ptr %nChar, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %29, i64 %idxprom36
  store ptr %28, ptr %arrayidx37, align 8
  %31 = load ptr, ptr %z, align 8
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr38, ptr %z, align 8
  %32 = load i8, ptr %31, align 1
  %conv39 = zext i8 %32 to i32
  %cmp40 = icmp sge i32 %conv39, 192
  br i1 %cmp40, label %if.then42, label %if.end51

if.then42:                                        ; preds = %for.body35
  br label %while.cond43

while.cond43:                                     ; preds = %while.body48, %if.then42
  %33 = load ptr, ptr %z, align 8
  %34 = load i8, ptr %33, align 1
  %conv44 = zext i8 %34 to i32
  %and45 = and i32 %conv44, 192
  %cmp46 = icmp eq i32 %and45, 128
  br i1 %cmp46, label %while.body48, label %while.end50

while.body48:                                     ; preds = %while.cond43
  %35 = load ptr, ptr %z, align 8
  %incdec.ptr49 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr49, ptr %z, align 8
  br label %while.cond43, !llvm.loop !9

while.end50:                                      ; preds = %while.cond43
  br label %if.end51

if.end51:                                         ; preds = %while.end50, %for.body35
  %36 = load ptr, ptr %z, align 8
  %37 = load ptr, ptr %azChar, align 8
  %38 = load i32, ptr %nChar, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %37, i64 %idxprom52
  %39 = load ptr, ptr %arrayidx53, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %36 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv54 = trunc i64 %sub.ptr.sub to i8
  %40 = load ptr, ptr %aLen, align 8
  %41 = load i32, ptr %nChar, align 4
  %idxprom55 = sext i32 %41 to i64
  %arrayidx56 = getelementptr inbounds i8, ptr %40, i64 %idxprom55
  store i8 %conv54, ptr %arrayidx56, align 1
  br label %for.inc57

for.inc57:                                        ; preds = %if.end51
  %42 = load i32, ptr %nChar, align 4
  %inc58 = add nsw i32 %42, 1
  store i32 %inc58, ptr %nChar, align 4
  br label %for.cond33, !llvm.loop !10

for.end59:                                        ; preds = %for.cond33
  br label %if.end60

if.end60:                                         ; preds = %for.end59, %for.end
  br label %if.end61

if.end61:                                         ; preds = %if.end60
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then9
  %43 = load i32, ptr %nChar, align 4
  %cmp63 = icmp sgt i32 %43, 0
  br i1 %cmp63, label %if.then65, label %if.end143

if.then65:                                        ; preds = %if.end62
  %44 = load ptr, ptr %context.addr, align 8
  %call66 = call ptr @sqlite3_user_data(ptr noundef %44)
  %45 = ptrtoint ptr %call66 to i64
  %conv67 = trunc i64 %45 to i32
  store i32 %conv67, ptr %flags, align 4
  %46 = load i32, ptr %flags, align 4
  %and68 = and i32 %46, 1
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then70, label %if.end100

if.then70:                                        ; preds = %if.then65
  br label %while.cond71

while.cond71:                                     ; preds = %if.end98, %if.then70
  %47 = load i32, ptr %nIn, align 4
  %cmp72 = icmp sgt i32 %47, 0
  br i1 %cmp72, label %while.body74, label %while.end99

while.body74:                                     ; preds = %while.cond71
  store i32 0, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc92, %while.body74
  %48 = load i32, ptr %i, align 4
  %49 = load i32, ptr %nChar, align 4
  %cmp76 = icmp slt i32 %48, %49
  br i1 %cmp76, label %for.body78, label %for.end94

for.body78:                                       ; preds = %for.cond75
  %50 = load ptr, ptr %aLen, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %51 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %50, i64 %idxprom79
  %52 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %52 to i32
  store i32 %conv81, ptr %len, align 4
  %53 = load i32, ptr %len, align 4
  %54 = load i32, ptr %nIn, align 4
  %cmp82 = icmp sle i32 %53, %54
  br i1 %cmp82, label %land.lhs.true, label %if.end91

land.lhs.true:                                    ; preds = %for.body78
  %55 = load ptr, ptr %zIn, align 8
  %56 = load ptr, ptr %azChar, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %57 to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %56, i64 %idxprom84
  %58 = load ptr, ptr %arrayidx85, align 8
  %59 = load i32, ptr %len, align 4
  %conv86 = sext i32 %59 to i64
  %call87 = call i32 @memcmp(ptr noundef %55, ptr noundef %58, i64 noundef %conv86) #2
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %land.lhs.true
  br label %for.end94

if.end91:                                         ; preds = %land.lhs.true, %for.body78
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %60 = load i32, ptr %i, align 4
  %inc93 = add nsw i32 %60, 1
  store i32 %inc93, ptr %i, align 4
  br label %for.cond75, !llvm.loop !11

for.end94:                                        ; preds = %if.then90, %for.cond75
  %61 = load i32, ptr %i, align 4
  %62 = load i32, ptr %nChar, align 4
  %cmp95 = icmp sge i32 %61, %62
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %for.end94
  br label %while.end99

if.end98:                                         ; preds = %for.end94
  %63 = load i32, ptr %len, align 4
  %64 = load ptr, ptr %zIn, align 8
  %idx.ext = sext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, ptr %64, i64 %idx.ext
  store ptr %add.ptr, ptr %zIn, align 8
  %65 = load i32, ptr %len, align 4
  %66 = load i32, ptr %nIn, align 4
  %sub = sub nsw i32 %66, %65
  store i32 %sub, ptr %nIn, align 4
  br label %while.cond71, !llvm.loop !12

while.end99:                                      ; preds = %if.then97, %while.cond71
  br label %if.end100

if.end100:                                        ; preds = %while.end99, %if.then65
  %67 = load i32, ptr %flags, align 4
  %and101 = and i32 %67, 2
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.then103, label %if.end139

if.then103:                                       ; preds = %if.end100
  br label %while.cond104

while.cond104:                                    ; preds = %if.end136, %if.then103
  %68 = load i32, ptr %nIn, align 4
  %cmp105 = icmp sgt i32 %68, 0
  br i1 %cmp105, label %while.body107, label %while.end138

while.body107:                                    ; preds = %while.cond104
  store i32 0, ptr %len108, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc130, %while.body107
  %69 = load i32, ptr %i, align 4
  %70 = load i32, ptr %nChar, align 4
  %cmp110 = icmp slt i32 %69, %70
  br i1 %cmp110, label %for.body112, label %for.end132

for.body112:                                      ; preds = %for.cond109
  %71 = load ptr, ptr %aLen, align 8
  %72 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %72 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %71, i64 %idxprom113
  %73 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %73 to i32
  store i32 %conv115, ptr %len108, align 4
  %74 = load i32, ptr %len108, align 4
  %75 = load i32, ptr %nIn, align 4
  %cmp116 = icmp sle i32 %74, %75
  br i1 %cmp116, label %land.lhs.true118, label %if.end129

land.lhs.true118:                                 ; preds = %for.body112
  %76 = load ptr, ptr %zIn, align 8
  %77 = load i32, ptr %nIn, align 4
  %78 = load i32, ptr %len108, align 4
  %sub119 = sub nsw i32 %77, %78
  %idxprom120 = sext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %76, i64 %idxprom120
  %79 = load ptr, ptr %azChar, align 8
  %80 = load i32, ptr %i, align 4
  %idxprom122 = sext i32 %80 to i64
  %arrayidx123 = getelementptr inbounds ptr, ptr %79, i64 %idxprom122
  %81 = load ptr, ptr %arrayidx123, align 8
  %82 = load i32, ptr %len108, align 4
  %conv124 = sext i32 %82 to i64
  %call125 = call i32 @memcmp(ptr noundef %arrayidx121, ptr noundef %81, i64 noundef %conv124) #2
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %land.lhs.true118
  br label %for.end132

if.end129:                                        ; preds = %land.lhs.true118, %for.body112
  br label %for.inc130

for.inc130:                                       ; preds = %if.end129
  %83 = load i32, ptr %i, align 4
  %inc131 = add nsw i32 %83, 1
  store i32 %inc131, ptr %i, align 4
  br label %for.cond109, !llvm.loop !13

for.end132:                                       ; preds = %if.then128, %for.cond109
  %84 = load i32, ptr %i, align 4
  %85 = load i32, ptr %nChar, align 4
  %cmp133 = icmp sge i32 %84, %85
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %for.end132
  br label %while.end138

if.end136:                                        ; preds = %for.end132
  %86 = load i32, ptr %len108, align 4
  %87 = load i32, ptr %nIn, align 4
  %sub137 = sub nsw i32 %87, %86
  store i32 %sub137, ptr %nIn, align 4
  br label %while.cond104, !llvm.loop !14

while.end138:                                     ; preds = %if.then135, %while.cond104
  br label %if.end139

if.end139:                                        ; preds = %while.end138, %if.end100
  %88 = load ptr, ptr %zCharSet, align 8
  %tobool140 = icmp ne ptr %88, null
  br i1 %tobool140, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end139
  %89 = load ptr, ptr %azChar, align 8
  call void @sqlite3_free(ptr noundef %89)
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end139
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end62
  %90 = load ptr, ptr %context.addr, align 8
  %91 = load ptr, ptr %zIn, align 8
  %92 = load i32, ptr %nIn, align 4
  call void @sqlite3_result_text(ptr noundef %90, ptr noundef %91, i32 noundef %92, ptr noundef inttoptr (i64 -1 to ptr))
  br label %return

return:                                           ; preds = %if.end143, %if.then30, %if.then13, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @contextMalloc(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
