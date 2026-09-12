; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local double @sqlite3_value_double(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @isDate(ptr noundef %context, i32 noundef %argc, ptr noundef %argv, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %z = alloca ptr, align 8
  %eType = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false)
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %call = call i32 @setDateTimeToCurrent(ptr noundef %2, ptr noundef %3)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @sqlite3_value_type(ptr noundef %5)
  store i32 %call1, ptr %eType, align 4
  %cmp2 = icmp eq i32 %call1, 2
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %eType, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx5, align 8
  %call6 = call double @sqlite3_value_double(ptr noundef %9)
  call void @setRawDateNumber(ptr noundef %7, double noundef %call6)
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %10, i64 0
  %11 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @sqlite3_value_text(ptr noundef %11)
  store ptr %call8, ptr %z, align 8
  %12 = load ptr, ptr %z, align 8
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %lor.lhs.false9, label %if.then12

lor.lhs.false9:                                   ; preds = %if.else
  %13 = load ptr, ptr %context.addr, align 8
  %14 = load ptr, ptr %z, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %call10 = call i32 @parseDateOrTime(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false9, %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %lor.lhs.false9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %argc.addr, align 4
  %cmp15 = icmp slt i32 %16, %17
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %arrayidx16, align 8
  %call17 = call ptr @sqlite3_value_text(ptr noundef %20)
  store ptr %call17, ptr %z, align 8
  %21 = load ptr, ptr %argv.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %21, i64 %idxprom18
  %23 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 @sqlite3_value_bytes(ptr noundef %23)
  store i32 %call20, ptr %n, align 4
  %24 = load ptr, ptr %z, align 8
  %cmp21 = icmp eq ptr %24, null
  br i1 %cmp21, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %for.body
  %25 = load ptr, ptr %context.addr, align 8
  %26 = load ptr, ptr %z, align 8
  %27 = load i32, ptr %n, align 4
  %28 = load ptr, ptr %p.addr, align 8
  %call23 = call i32 @parseModifier(ptr noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %28)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false22, %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false22
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %p.addr, align 8
  call void @computeJD(ptr noundef %30)
  %31 = load ptr, ptr %p.addr, align 8
  %isError = getelementptr inbounds nuw %struct.DateTime, ptr %31, i32 0, i32 14
  %32 = load i8, ptr %isError, align 2
  %conv = sext i8 %32 to i32
  %tobool27 = icmp ne i32 %conv, 0
  br i1 %tobool27, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %for.end
  %33 = load ptr, ptr %p.addr, align 8
  %iJD = getelementptr inbounds nuw %struct.DateTime, ptr %33, i32 0, i32 0
  %34 = load i64, ptr %iJD, align 8
  %call29 = call i32 @validJulianDay(i64 noundef %34)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %lor.lhs.false28, %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %lor.lhs.false28
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then31, %if.then25, %if.then12, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
declare hidden void @computeJD(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @setDateTimeToCurrent(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setRawDateNumber(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @parseDateOrTime(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @parseModifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @validJulianDay(i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
