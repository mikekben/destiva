; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.799 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.800 = external hidden unnamed_addr constant [38 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3IsReadOnly(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %viewOk) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %viewOk.addr = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %viewOk, ptr %viewOk.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %pTab.addr, align 8
  %call = call i32 @tabIsReadOnly(ptr noundef %0, ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %2, ptr noundef @.str.799, ptr noundef %4)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %viewOk.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %pTab.addr, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pSelect, align 8
  %tobool2 = icmp ne ptr %7, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %pTab.addr, align 8
  %zName4 = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zName4, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %8, ptr noundef @.str.800, ptr noundef %10)
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
declare hidden i32 @tabIsReadOnly(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
