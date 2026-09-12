; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IntegrityCk = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.sqlite3_str, ptr }
%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

@.str.361 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.362 = external hidden unnamed_addr constant [54 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapGet(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @checkAppendMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @checkPtrmap(ptr noundef %pCheck, i32 noundef %iChild, i8 noundef zeroext %eType, i32 noundef %iParent) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %iChild.addr = alloca i32, align 4
  %eType.addr = alloca i8, align 1
  %iParent.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %ePtrmapType = alloca i8, align 1
  %iPtrmapParent = alloca i32, align 4
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store i32 %iChild, ptr %iChild.addr, align 4
  store i8 %eType, ptr %eType.addr, align 1
  store i32 %iParent, ptr %iParent.addr, align 4
  %0 = load ptr, ptr %pCheck.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.IntegrityCk, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pBt, align 8
  %2 = load i32, ptr %iChild.addr, align 4
  %call = call i32 @ptrmapGet(ptr noundef %1, i32 noundef %2, ptr noundef %ePtrmapType, ptr noundef %iPtrmapParent)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %4, 7
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %5, 3082
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load ptr, ptr %pCheck.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.IntegrityCk, ptr %6, i32 0, i32 6
  store i32 1, ptr %mallocFailed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %lor.lhs.false
  %7 = load ptr, ptr %pCheck.addr, align 8
  %8 = load i32, ptr %iChild.addr, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %7, ptr noundef @.str.361, i32 noundef %8)
  br label %if.end14

if.end4:                                          ; preds = %entry
  %9 = load i8, ptr %ePtrmapType, align 1
  %conv = zext i8 %9 to i32
  %10 = load i8, ptr %eType.addr, align 1
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp ne i32 %conv, %conv5
  br i1 %cmp6, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end4
  %11 = load i32, ptr %iPtrmapParent, align 4
  %12 = load i32, ptr %iParent.addr, align 4
  %cmp9 = icmp ne i32 %11, %12
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %lor.lhs.false8, %if.end4
  %13 = load ptr, ptr %pCheck.addr, align 8
  %14 = load i32, ptr %iChild.addr, align 4
  %15 = load i8, ptr %eType.addr, align 1
  %conv12 = zext i8 %15 to i32
  %16 = load i32, ptr %iParent.addr, align 4
  %17 = load i8, ptr %ePtrmapType, align 1
  %conv13 = zext i8 %17 to i32
  %18 = load i32, ptr %iPtrmapParent, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %13, ptr noundef @.str.362, i32 noundef %14, i32 noundef %conv12, i32 noundef %16, i32 noundef %conv13, i32 noundef %18)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %lor.lhs.false8, %if.end
  ret void
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
