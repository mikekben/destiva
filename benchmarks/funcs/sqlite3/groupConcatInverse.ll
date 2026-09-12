; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @groupConcatInverse(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %pAccum = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %1)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end24

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8
  %call1 = call ptr @sqlite3_aggregate_context(ptr noundef %2, i32 noundef 32)
  store ptr %call1, ptr %pAccum, align 8
  %3 = load ptr, ptr %pAccum, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then2, label %if.end24

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @sqlite3_value_bytes(ptr noundef %5)
  store i32 %call4, ptr %n, align 4
  %6 = load i32, ptr %argc.addr, align 4
  %cmp5 = icmp eq i32 %6, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then2
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @sqlite3_value_bytes(ptr noundef %8)
  %9 = load i32, ptr %n, align 4
  %add = add nsw i32 %9, %call8
  store i32 %add, ptr %n, align 4
  br label %if.end9

if.else:                                          ; preds = %if.then2
  %10 = load i32, ptr %n, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %n, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %11 = load i32, ptr %n, align 4
  %12 = load ptr, ptr %pAccum, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %nChar, align 8
  %cmp10 = icmp sge i32 %11, %13
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.end9
  %14 = load ptr, ptr %pAccum, align 8
  %nChar12 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %14, i32 0, i32 4
  store i32 0, ptr %nChar12, align 8
  br label %if.end18

if.else13:                                        ; preds = %if.end9
  %15 = load i32, ptr %n, align 4
  %16 = load ptr, ptr %pAccum, align 8
  %nChar14 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %nChar14, align 8
  %sub = sub i32 %17, %15
  store i32 %sub, ptr %nChar14, align 8
  %18 = load ptr, ptr %pAccum, align 8
  %zText = getelementptr inbounds nuw %struct.sqlite3_str, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %zText, align 8
  %20 = load ptr, ptr %pAccum, align 8
  %zText15 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %zText15, align 8
  %22 = load i32, ptr %n, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %23 = load ptr, ptr %pAccum, align 8
  %nChar17 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %23, i32 0, i32 4
  %24 = load i32, ptr %nChar17, align 8
  %conv = zext i32 %24 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %19, ptr align 1 %arrayidx16, i64 %conv, i1 false)
  br label %if.end18

if.end18:                                         ; preds = %if.else13, %if.then11
  %25 = load ptr, ptr %pAccum, align 8
  %nChar19 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %nChar19, align 8
  %cmp20 = icmp eq i32 %26, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  %27 = load ptr, ptr %pAccum, align 8
  %mxAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %27, i32 0, i32 3
  store i32 0, ptr %mxAlloc, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
