; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.754 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.756 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.758 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.827 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PHPStreamDataInit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PHPStreamData_Open(ptr noundef %zName, i32 noundef %iMode, ptr noundef %pResource, ptr noundef %ppHandle) #0 {
entry:
  %retval = alloca i32, align 4
  %zName.addr = alloca ptr, align 8
  %iMode.addr = alloca i32, align 4
  %pResource.addr = alloca ptr, align 8
  %ppHandle.addr = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %sStream = alloca %struct.SyString, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %iMode, ptr %iMode.addr, align 4
  store ptr %pResource, ptr %pResource.addr, align 8
  store ptr %ppHandle, ptr %ppHandle.addr, align 8
  %0 = load ptr, ptr %zName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  store ptr %0, ptr %zString, align 8
  %1 = load ptr, ptr %zName.addr, align 8
  %call = call i32 @SyStrlen(ptr noundef %1)
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 1
  store i32 %call, ptr %nByte, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %nByte1 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 1
  %2 = load i32, ptr %nByte1, align 8
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %zString2 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  %3 = load ptr, ptr %zString2, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp slt i32 %conv, 192
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call ptr @__ctype_b_loc() #2
  %5 = load ptr, ptr %call5, align 8
  %zString6 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  %6 = load ptr, ptr %zString6, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %idxprom = sext i32 %conv8 to i64
  %arrayidx9 = getelementptr inbounds i16, ptr %5, i64 %idxprom
  %8 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %8 to i32
  %and = and i32 %conv10, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 1
  %10 = load i32, ptr %nByte11, align 8
  %dec = add i32 %10, -1
  store i32 %dec, ptr %nByte11, align 8
  %zString12 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  %11 = load ptr, ptr %zString12, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %zString12, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond13

while.cond13:                                     ; preds = %while.body39, %while.end
  %nByte14 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 1
  %12 = load i32, ptr %nByte14, align 8
  %cmp15 = icmp ugt i32 %12, 0
  br i1 %cmp15, label %land.lhs.true17, label %land.end38

land.lhs.true17:                                  ; preds = %while.cond13
  %zString18 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  %13 = load ptr, ptr %zString18, align 8
  %nByte19 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 1
  %14 = load i32, ptr %nByte19, align 8
  %sub = sub i32 %14, 1
  %idxprom20 = zext i32 %sub to i64
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %13, i64 %idxprom20
  %15 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %15 to i32
  %cmp23 = icmp slt i32 %conv22, 192
  br i1 %cmp23, label %land.rhs25, label %land.end38

land.rhs25:                                       ; preds = %land.lhs.true17
  %call26 = call ptr @__ctype_b_loc() #2
  %16 = load ptr, ptr %call26, align 8
  %zString27 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  %17 = load ptr, ptr %zString27, align 8
  %nByte28 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 1
  %18 = load i32, ptr %nByte28, align 8
  %sub29 = sub i32 %18, 1
  %idxprom30 = zext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %17, i64 %idxprom30
  %19 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %19 to i32
  %idxprom33 = sext i32 %conv32 to i64
  %arrayidx34 = getelementptr inbounds i16, ptr %16, i64 %idxprom33
  %20 = load i16, ptr %arrayidx34, align 2
  %conv35 = zext i16 %20 to i32
  %and36 = and i32 %conv35, 8192
  %tobool37 = icmp ne i32 %and36, 0
  br label %land.end38

land.end38:                                       ; preds = %land.rhs25, %land.lhs.true17, %while.cond13
  %21 = phi i1 [ false, %land.lhs.true17 ], [ false, %while.cond13 ], [ %tobool37, %land.rhs25 ]
  br i1 %21, label %while.body39, label %while.end42

while.body39:                                     ; preds = %land.end38
  %nByte40 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 1
  %22 = load i32, ptr %nByte40, align 8
  %dec41 = add i32 %22, -1
  store i32 %dec41, ptr %nByte40, align 8
  br label %while.cond13, !llvm.loop !8

while.end42:                                      ; preds = %land.end38
  %zString43 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  %23 = load ptr, ptr %zString43, align 8
  %call44 = call i32 @SyStrnicmp(ptr noundef %23, ptr noundef @.str.754, i32 noundef 5)
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then, label %if.else

if.then:                                          ; preds = %while.end42
  store i32 1, ptr %iMode.addr, align 4
  br label %if.end67

if.else:                                          ; preds = %while.end42
  %zString47 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  %24 = load ptr, ptr %zString47, align 8
  %call48 = call i32 @SyStrnicmp(ptr noundef %24, ptr noundef @.str.827, i32 noundef 6)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else
  store i32 4, ptr %iMode.addr, align 4
  br label %if.end66

if.else52:                                        ; preds = %if.else
  %zString53 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  %25 = load ptr, ptr %zString53, align 8
  %call54 = call i32 @SyStrnicmp(ptr noundef %25, ptr noundef @.str.756, i32 noundef 6)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.else52
  store i32 2, ptr %iMode.addr, align 4
  br label %if.end65

if.else58:                                        ; preds = %if.else52
  %zString59 = getelementptr inbounds nuw %struct.SyString, ptr %sStream, i32 0, i32 0
  %26 = load ptr, ptr %zString59, align 8
  %call60 = call i32 @SyStrnicmp(ptr noundef %26, ptr noundef @.str.758, i32 noundef 6)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else58
  store i32 3, ptr %iMode.addr, align 4
  br label %if.end

if.else64:                                        ; preds = %if.else58
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then63
  br label %if.end65

if.end65:                                         ; preds = %if.end, %if.then57
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then51
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then
  %27 = load ptr, ptr %pResource.addr, align 8
  %tobool68 = icmp ne ptr %27, null
  br i1 %tobool68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end67
  %28 = load ptr, ptr %pResource.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %pVm, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end67
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %29, %cond.true ], [ null, %cond.false ]
  %30 = load i32, ptr %iMode.addr, align 4
  %call69 = call ptr @PHPStreamDataInit(ptr noundef %cond, i32 noundef %30)
  store ptr %call69, ptr %pData, align 8
  %31 = load ptr, ptr %pData, align 8
  %cmp70 = icmp eq ptr %31, null
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %cond.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end73:                                         ; preds = %cond.end
  %32 = load ptr, ptr %pData, align 8
  %33 = load ptr, ptr %ppHandle.addr, align 8
  store ptr %32, ptr %33, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then72, %if.else64
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
