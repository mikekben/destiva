; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_blob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_dup(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_value_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @instrFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zHaystack = alloca ptr, align 8
  %zNeedle = alloca ptr, align 8
  %nHaystack = alloca i32, align 4
  %nNeedle = alloca i32, align 4
  %typeHaystack = alloca i32, align 4
  %typeNeedle = alloca i32, align 4
  %N = alloca i32, align 4
  %isText = alloca i32, align 4
  %firstChar = alloca i8, align 1
  %pC1 = alloca ptr, align 8
  %pC2 = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %N, align 4
  store ptr null, ptr %pC1, align 8
  store ptr null, ptr %pC2, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  store i32 %call, ptr %typeHaystack, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_type(ptr noundef %4)
  store i32 %call2, ptr %typeNeedle, align 4
  %5 = load i32, ptr %typeHaystack, align 4
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, ptr %typeNeedle, align 4
  %cmp3 = icmp eq i32 %6, 5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @sqlite3_value_bytes(ptr noundef %8)
  store i32 %call5, ptr %nHaystack, align 4
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @sqlite3_value_bytes(ptr noundef %10)
  store i32 %call7, ptr %nNeedle, align 4
  %11 = load i32, ptr %nNeedle, align 4
  %cmp8 = icmp sgt i32 %11, 0
  br i1 %cmp8, label %if.then9, label %if.end69

if.then9:                                         ; preds = %if.end
  %12 = load i32, ptr %typeHaystack, align 4
  %cmp10 = icmp eq i32 %12, 4
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then9
  %13 = load i32, ptr %typeNeedle, align 4
  %cmp11 = icmp eq i32 %13, 4
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx13, align 8
  %call14 = call ptr @sqlite3_value_blob(ptr noundef %15)
  store ptr %call14, ptr %zHaystack, align 8
  %16 = load ptr, ptr %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %16, i64 1
  %17 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr @sqlite3_value_blob(ptr noundef %17)
  store ptr %call16, ptr %zNeedle, align 8
  store i32 0, ptr %isText, align 4
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true, %if.then9
  %18 = load i32, ptr %typeHaystack, align 4
  %cmp17 = icmp ne i32 %18, 4
  br i1 %cmp17, label %land.lhs.true18, label %if.else25

land.lhs.true18:                                  ; preds = %if.else
  %19 = load i32, ptr %typeNeedle, align 4
  %cmp19 = icmp ne i32 %19, 4
  br i1 %cmp19, label %if.then20, label %if.else25

if.then20:                                        ; preds = %land.lhs.true18
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %20, i64 0
  %21 = load ptr, ptr %arrayidx21, align 8
  %call22 = call ptr @sqlite3_value_text(ptr noundef %21)
  store ptr %call22, ptr %zHaystack, align 8
  %22 = load ptr, ptr %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %22, i64 1
  %23 = load ptr, ptr %arrayidx23, align 8
  %call24 = call ptr @sqlite3_value_text(ptr noundef %23)
  store ptr %call24, ptr %zNeedle, align 8
  store i32 1, ptr %isText, align 4
  br label %if.end40

if.else25:                                        ; preds = %land.lhs.true18, %if.else
  %24 = load ptr, ptr %argv.addr, align 8
  %arrayidx26 = getelementptr inbounds ptr, ptr %24, i64 0
  %25 = load ptr, ptr %arrayidx26, align 8
  %call27 = call ptr @sqlite3_value_dup(ptr noundef %25)
  store ptr %call27, ptr %pC1, align 8
  %26 = load ptr, ptr %pC1, align 8
  %call28 = call ptr @sqlite3_value_text(ptr noundef %26)
  store ptr %call28, ptr %zHaystack, align 8
  %27 = load ptr, ptr %zHaystack, align 8
  %cmp29 = icmp eq ptr %27, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else25
  br label %endInstrOOM

if.end31:                                         ; preds = %if.else25
  %28 = load ptr, ptr %pC1, align 8
  %call32 = call i32 @sqlite3_value_bytes(ptr noundef %28)
  store i32 %call32, ptr %nHaystack, align 4
  %29 = load ptr, ptr %argv.addr, align 8
  %arrayidx33 = getelementptr inbounds ptr, ptr %29, i64 1
  %30 = load ptr, ptr %arrayidx33, align 8
  %call34 = call ptr @sqlite3_value_dup(ptr noundef %30)
  store ptr %call34, ptr %pC2, align 8
  %31 = load ptr, ptr %pC2, align 8
  %call35 = call ptr @sqlite3_value_text(ptr noundef %31)
  store ptr %call35, ptr %zNeedle, align 8
  %32 = load ptr, ptr %zNeedle, align 8
  %cmp36 = icmp eq ptr %32, null
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end31
  br label %endInstrOOM

if.end38:                                         ; preds = %if.end31
  %33 = load ptr, ptr %pC2, align 8
  %call39 = call i32 @sqlite3_value_bytes(ptr noundef %33)
  store i32 %call39, ptr %nNeedle, align 4
  store i32 1, ptr %isText, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %if.then20
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then12
  %34 = load ptr, ptr %zNeedle, align 8
  %cmp42 = icmp eq ptr %34, null
  br i1 %cmp42, label %if.then46, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end41
  %35 = load i32, ptr %nHaystack, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %land.lhs.true44, label %if.end47

land.lhs.true44:                                  ; preds = %lor.lhs.false43
  %36 = load ptr, ptr %zHaystack, align 8
  %cmp45 = icmp eq ptr %36, null
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true44, %if.end41
  br label %endInstrOOM

if.end47:                                         ; preds = %land.lhs.true44, %lor.lhs.false43
  %37 = load ptr, ptr %zNeedle, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %37, i64 0
  %38 = load i8, ptr %arrayidx48, align 1
  store i8 %38, ptr %firstChar, align 1
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end47
  %39 = load i32, ptr %nNeedle, align 4
  %40 = load i32, ptr %nHaystack, align 4
  %cmp49 = icmp sle i32 %39, %40
  br i1 %cmp49, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %41 = load ptr, ptr %zHaystack, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx50, align 1
  %conv = zext i8 %42 to i32
  %43 = load i8, ptr %firstChar, align 1
  %conv51 = zext i8 %43 to i32
  %cmp52 = icmp ne i32 %conv, %conv51
  br i1 %cmp52, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %44 = load ptr, ptr %zHaystack, align 8
  %45 = load ptr, ptr %zNeedle, align 8
  %46 = load i32, ptr %nNeedle, align 4
  %conv54 = sext i32 %46 to i64
  %call55 = call i32 @memcmp(ptr noundef %44, ptr noundef %45, i64 noundef %conv54) #2
  %cmp56 = icmp ne i32 %call55, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %47 = phi i1 [ true, %land.rhs ], [ %cmp56, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %48 = phi i1 [ false, %while.cond ], [ %47, %lor.end ]
  br i1 %48, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %49 = load i32, ptr %N, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %N, align 4
  br label %do.body

do.body:                                          ; preds = %land.end64, %while.body
  %50 = load i32, ptr %nHaystack, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, ptr %nHaystack, align 4
  %51 = load ptr, ptr %zHaystack, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr, ptr %zHaystack, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %52 = load i32, ptr %isText, align 4
  %tobool58 = icmp ne i32 %52, 0
  br i1 %tobool58, label %land.rhs59, label %land.end64

land.rhs59:                                       ; preds = %do.cond
  %53 = load ptr, ptr %zHaystack, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %54 to i32
  %and = and i32 %conv61, 192
  %cmp62 = icmp eq i32 %and, 128
  br label %land.end64

land.end64:                                       ; preds = %land.rhs59, %do.cond
  %55 = phi i1 [ false, %do.cond ], [ %cmp62, %land.rhs59 ]
  br i1 %55, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end64
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %56 = load i32, ptr %nNeedle, align 4
  %57 = load i32, ptr %nHaystack, align 4
  %cmp65 = icmp sgt i32 %56, %57
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %while.end
  store i32 0, ptr %N, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %while.end
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end
  %58 = load ptr, ptr %context.addr, align 8
  %59 = load i32, ptr %N, align 4
  call void @sqlite3_result_int(ptr noundef %58, i32 noundef %59)
  br label %endInstr

endInstr:                                         ; preds = %endInstrOOM, %if.end69
  %60 = load ptr, ptr %pC1, align 8
  call void @sqlite3_value_free(ptr noundef %60)
  %61 = load ptr, ptr %pC2, align 8
  call void @sqlite3_value_free(ptr noundef %61)
  br label %return

endInstrOOM:                                      ; preds = %if.then46, %if.then37, %if.then30
  %62 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %62)
  br label %endInstr

return:                                           ; preds = %endInstr, %if.then
  ret void
}

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
