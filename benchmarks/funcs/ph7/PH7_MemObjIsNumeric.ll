; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjIsNumeric(ptr noundef %pObj) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj.addr = alloca ptr, align 8
  %sStr = alloca %struct.SyString, align 8
  %rc = alloca i32, align 4
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 14
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %pObj.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %3, 480
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.else5:                                         ; preds = %if.else
  %4 = load ptr, ptr %pObj.addr, align 8
  %iFlags6 = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iFlags6, align 8
  %and7 = and i32 %5, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.else5
  %6 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 1
  %7 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  store ptr %7, ptr %zString, align 8
  %8 = load ptr, ptr %pObj.addr, align 8
  %sBlob10 = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob10, i32 0, i32 2
  %9 = load i32, ptr %nByte, align 8
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  store i32 %9, ptr %nByte11, align 8
  %nByte12 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %10 = load i32, ptr %nByte12, align 8
  %cmp = icmp ule i32 %10, 0
  br i1 %cmp, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then9
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then9
  %zString14 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %11 = load ptr, ptr %zString14, align 8
  %nByte15 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %12 = load i32, ptr %nByte15, align 8
  %call = call i32 @SyStrIsNumeric(ptr noundef %11, i32 noundef %12, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp16 = icmp eq i32 %13, 0
  %14 = zext i1 %cmp16 to i64
  %cond = select i1 %cmp16, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.else5
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.end, %if.then13, %if.then4, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrIsNumeric(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
