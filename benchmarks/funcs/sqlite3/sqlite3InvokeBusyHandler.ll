; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BusyHandler = type { ptr, ptr, i32, i8 }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3InvokeBusyHandler(ptr noundef %p, ptr noundef %pFile) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pFile.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %xTra = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %xBusyHandler = getelementptr inbounds nuw %struct.BusyHandler, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %xBusyHandler, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %nBusy = getelementptr inbounds nuw %struct.BusyHandler, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %nBusy, align 8
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %p.addr, align 8
  %bExtraFileArg = getelementptr inbounds nuw %struct.BusyHandler, ptr %4, i32 0, i32 3
  %5 = load i8, ptr %bExtraFileArg, align 4
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8
  %xBusyHandler3 = getelementptr inbounds nuw %struct.BusyHandler, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %xBusyHandler3, align 8
  store ptr %7, ptr %xTra, align 8
  %8 = load ptr, ptr %xTra, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %pBusyArg = getelementptr inbounds nuw %struct.BusyHandler, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pBusyArg, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %nBusy4 = getelementptr inbounds nuw %struct.BusyHandler, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nBusy4, align 8
  %13 = load ptr, ptr %pFile.addr, align 8
  %call = call i32 %8(ptr noundef %10, i32 noundef %12, ptr noundef %13)
  store i32 %call, ptr %rc, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %p.addr, align 8
  %xBusyHandler5 = getelementptr inbounds nuw %struct.BusyHandler, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %xBusyHandler5, align 8
  %16 = load ptr, ptr %p.addr, align 8
  %pBusyArg6 = getelementptr inbounds nuw %struct.BusyHandler, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %pBusyArg6, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %nBusy7 = getelementptr inbounds nuw %struct.BusyHandler, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %nBusy7, align 8
  %call8 = call i32 %15(ptr noundef %17, i32 noundef %19)
  store i32 %call8, ptr %rc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  %20 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %20, 0
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.end9
  %21 = load ptr, ptr %p.addr, align 8
  %nBusy12 = getelementptr inbounds nuw %struct.BusyHandler, ptr %21, i32 0, i32 2
  store i32 -1, ptr %nBusy12, align 8
  br label %if.end15

if.else13:                                        ; preds = %if.end9
  %22 = load ptr, ptr %p.addr, align 8
  %nBusy14 = getelementptr inbounds nuw %struct.BusyHandler, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %nBusy14, align 8
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %nBusy14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11
  %24 = load i32, ptr %rc, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
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
