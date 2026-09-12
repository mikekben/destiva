; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @matchQuality(ptr noundef %p, i32 noundef %nArg, i8 noundef zeroext %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %enc.addr = alloca i8, align 1
  %match = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store i8 %enc, ptr %enc.addr, align 1
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %xSFunc = getelementptr inbounds nuw %struct.FuncDef, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %xSFunc, align 8
  %cmp1 = icmp eq ptr %2, null
  %3 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 0, i32 6
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %nArg2 = getelementptr inbounds nuw %struct.FuncDef, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %nArg2, align 8
  %conv = sext i8 %5 to i32
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp3 = icmp ne i32 %conv, %6
  br i1 %cmp3, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %nArg5 = getelementptr inbounds nuw %struct.FuncDef, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %nArg5, align 8
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp sge i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %p.addr, align 8
  %nArg11 = getelementptr inbounds nuw %struct.FuncDef, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %nArg11, align 8
  %conv12 = sext i8 %10 to i32
  %11 = load i32, ptr %nArg.addr, align 4
  %cmp13 = icmp eq i32 %conv12, %11
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end10
  store i32 4, ptr %match, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end10
  store i32 1, ptr %match, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %12 = load i8, ptr %enc.addr, align 1
  %conv17 = zext i8 %12 to i32
  %13 = load ptr, ptr %p.addr, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %funcFlags, align 4
  %and = and i32 %14, 3
  %cmp18 = icmp eq i32 %conv17, %and
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end16
  %15 = load i32, ptr %match, align 4
  %add = add nsw i32 %15, 2
  store i32 %add, ptr %match, align 4
  br label %if.end31

if.else21:                                        ; preds = %if.end16
  %16 = load i8, ptr %enc.addr, align 1
  %conv22 = zext i8 %16 to i32
  %17 = load ptr, ptr %p.addr, align 8
  %funcFlags23 = getelementptr inbounds nuw %struct.FuncDef, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %funcFlags23, align 4
  %and24 = and i32 %conv22, %18
  %and25 = and i32 %and24, 2
  %cmp26 = icmp ne i32 %and25, 0
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.else21
  %19 = load i32, ptr %match, align 4
  %add29 = add nsw i32 %19, 1
  store i32 %add29, ptr %match, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.else21
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then20
  %20 = load i32, ptr %match, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then9, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
