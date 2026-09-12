; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1014 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AtoF(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @setDateTimeToCurrent(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setRawDateNumber(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @parseDateOrTime(ptr noundef %context, ptr noundef %zDate, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %zDate.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %r = alloca double, align 8
  store ptr %context, ptr %context.addr, align 8
  store ptr %zDate, ptr %zDate.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %zDate.addr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %call = call i32 @parseYyyyMmDd(ptr noundef %0, ptr noundef %1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %zDate.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %call1 = call i32 @parseHhMmSs(ptr noundef %2, ptr noundef %3)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.else4:                                         ; preds = %if.else
  %4 = load ptr, ptr %zDate.addr, align 8
  %call5 = call i32 @sqlite3StrICmp(ptr noundef %4, ptr noundef @.str.1014)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else10

land.lhs.true:                                    ; preds = %if.else4
  %5 = load ptr, ptr %context.addr, align 8
  %call7 = call i32 @sqlite3NotPureFunc(ptr noundef %5)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.else10

if.then8:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %context.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %call9 = call i32 @setDateTimeToCurrent(ptr noundef %6, ptr noundef %7)
  store i32 %call9, ptr %retval, align 4
  br label %return

if.else10:                                        ; preds = %land.lhs.true, %if.else4
  %8 = load ptr, ptr %zDate.addr, align 8
  %9 = load ptr, ptr %zDate.addr, align 8
  %call11 = call i32 @sqlite3Strlen30(ptr noundef %9)
  %call12 = call i32 @sqlite3AtoF(ptr noundef %8, ptr noundef %r, i32 noundef %call11, i8 noundef zeroext 1)
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else10
  %10 = load ptr, ptr %p.addr, align 8
  %11 = load double, ptr %r, align 8
  call void @setRawDateNumber(ptr noundef %10, double noundef %11)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else10
  br label %if.end15

if.end15:                                         ; preds = %if.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then14, %if.then8, %if.then3, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
declare hidden i32 @parseYyyyMmDd(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @parseHhMmSs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3NotPureFunc(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
