; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendRealloc(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @BlobPrepareGrow(ptr noundef %pBlob, ptr noundef %pByte) #0 {
entry:
  %retval = alloca i32, align 4
  %pBlob.addr = alloca ptr, align 8
  %pByte.addr = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %pNew = alloca ptr, align 8
  store ptr %pBlob, ptr %pBlob.addr, align 8
  store ptr %pByte, ptr %pByte.addr, align 8
  %0 = load ptr, ptr %pByte.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %nByte, align 4
  %2 = load ptr, ptr %pBlob.addr, align 8
  %nFlags = getelementptr inbounds nuw %struct.SyBlob, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %nFlags, align 8
  %and = and i32 %3, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pBlob.addr, align 8
  %mByte = getelementptr inbounds nuw %struct.SyBlob, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %mByte, align 4
  %6 = load ptr, ptr %pBlob.addr, align 8
  %nByte1 = getelementptr inbounds nuw %struct.SyBlob, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %nByte1, align 8
  %sub = sub i32 %5, %7
  %8 = load i32, ptr %nByte, align 4
  %cmp = icmp ult i32 %sub, %8
  br i1 %cmp, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %pBlob.addr, align 8
  %mByte3 = getelementptr inbounds nuw %struct.SyBlob, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %mByte3, align 4
  %11 = load ptr, ptr %pBlob.addr, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyBlob, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nByte4, align 8
  %sub5 = sub i32 %10, %12
  %13 = load ptr, ptr %pByte.addr, align 8
  store i32 %sub5, ptr %13, align 4
  %14 = load ptr, ptr %pByte.addr, align 8
  %15 = load i32, ptr %14, align 4
  %cmp6 = icmp eq i32 %15, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then2
  store i32 -29, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %entry
  %16 = load ptr, ptr %pBlob.addr, align 8
  %nFlags10 = getelementptr inbounds nuw %struct.SyBlob, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %nFlags10, align 8
  %and11 = and i32 %17, 4
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end30

if.then13:                                        ; preds = %if.end9
  %18 = load ptr, ptr %pBlob.addr, align 8
  %nByte14 = getelementptr inbounds nuw %struct.SyBlob, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %nByte14, align 8
  %cmp15 = icmp ugt i32 %19, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then13
  %20 = load ptr, ptr %pBlob.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyBlob, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pAllocator, align 8
  %22 = load ptr, ptr %pBlob.addr, align 8
  %pBlob17 = getelementptr inbounds nuw %struct.SyBlob, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %pBlob17, align 8
  %24 = load ptr, ptr %pBlob.addr, align 8
  %nByte18 = getelementptr inbounds nuw %struct.SyBlob, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %nByte18, align 8
  %call = call ptr @SyMemBackendDup(ptr noundef %21, ptr noundef %23, i32 noundef %25)
  store ptr %call, ptr %pNew, align 8
  %26 = load ptr, ptr %pNew, align 8
  %cmp19 = icmp eq ptr %26, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then16
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then16
  %27 = load ptr, ptr %pNew, align 8
  %28 = load ptr, ptr %pBlob.addr, align 8
  %pBlob22 = getelementptr inbounds nuw %struct.SyBlob, ptr %28, i32 0, i32 1
  store ptr %27, ptr %pBlob22, align 8
  %29 = load ptr, ptr %pBlob.addr, align 8
  %nByte23 = getelementptr inbounds nuw %struct.SyBlob, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %nByte23, align 8
  %31 = load ptr, ptr %pBlob.addr, align 8
  %mByte24 = getelementptr inbounds nuw %struct.SyBlob, ptr %31, i32 0, i32 3
  store i32 %30, ptr %mByte24, align 4
  br label %if.end27

if.else:                                          ; preds = %if.then13
  %32 = load ptr, ptr %pBlob.addr, align 8
  %pBlob25 = getelementptr inbounds nuw %struct.SyBlob, ptr %32, i32 0, i32 1
  store ptr null, ptr %pBlob25, align 8
  %33 = load ptr, ptr %pBlob.addr, align 8
  %mByte26 = getelementptr inbounds nuw %struct.SyBlob, ptr %33, i32 0, i32 3
  store i32 0, ptr %mByte26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end21
  %34 = load ptr, ptr %pBlob.addr, align 8
  %nFlags28 = getelementptr inbounds nuw %struct.SyBlob, ptr %34, i32 0, i32 4
  %35 = load i32, ptr %nFlags28, align 8
  %and29 = and i32 %35, -5
  store i32 %and29, ptr %nFlags28, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %if.end9
  %36 = load ptr, ptr %pBlob.addr, align 8
  %mByte31 = getelementptr inbounds nuw %struct.SyBlob, ptr %36, i32 0, i32 3
  %37 = load i32, ptr %mByte31, align 4
  %38 = load ptr, ptr %pBlob.addr, align 8
  %nByte32 = getelementptr inbounds nuw %struct.SyBlob, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %nByte32, align 8
  %sub33 = sub i32 %37, %39
  %40 = load i32, ptr %nByte, align 4
  %cmp34 = icmp uge i32 %sub33, %40
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end30
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end30
  %41 = load ptr, ptr %pBlob.addr, align 8
  %mByte37 = getelementptr inbounds nuw %struct.SyBlob, ptr %41, i32 0, i32 3
  %42 = load i32, ptr %mByte37, align 4
  %cmp38 = icmp ugt i32 %42, 0
  br i1 %cmp38, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.end36
  %43 = load i32, ptr %nByte, align 4
  %44 = load ptr, ptr %pBlob.addr, align 8
  %mByte40 = getelementptr inbounds nuw %struct.SyBlob, ptr %44, i32 0, i32 3
  %45 = load i32, ptr %mByte40, align 4
  %mul = mul i32 %45, 2
  %add = add i32 %43, %mul
  %add41 = add i32 %add, 16
  store i32 %add41, ptr %nByte, align 4
  br label %if.end46

if.else42:                                        ; preds = %if.end36
  %46 = load i32, ptr %nByte, align 4
  %cmp43 = icmp ult i32 %46, 16
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.else42
  store i32 16, ptr %nByte, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.else42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then39
  %47 = load ptr, ptr %pBlob.addr, align 8
  %pAllocator47 = getelementptr inbounds nuw %struct.SyBlob, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pAllocator47, align 8
  %49 = load ptr, ptr %pBlob.addr, align 8
  %pBlob48 = getelementptr inbounds nuw %struct.SyBlob, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %pBlob48, align 8
  %51 = load i32, ptr %nByte, align 4
  %call49 = call ptr @SyMemBackendRealloc(ptr noundef %48, ptr noundef %50, i32 noundef %51)
  store ptr %call49, ptr %pNew, align 8
  %52 = load ptr, ptr %pNew, align 8
  %cmp50 = icmp eq ptr %52, null
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end46
  store i32 -1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end46
  %53 = load ptr, ptr %pNew, align 8
  %54 = load ptr, ptr %pBlob.addr, align 8
  %pBlob53 = getelementptr inbounds nuw %struct.SyBlob, ptr %54, i32 0, i32 1
  store ptr %53, ptr %pBlob53, align 8
  %55 = load i32, ptr %nByte, align 4
  %56 = load ptr, ptr %pBlob.addr, align 8
  %mByte54 = getelementptr inbounds nuw %struct.SyBlob, ptr %56, i32 0, i32 3
  store i32 %55, ptr %mByte54, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end52, %if.then51, %if.then35, %if.then20, %if.end8, %if.then7
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
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
