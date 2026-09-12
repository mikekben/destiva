; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_initialize() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ValueText(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_complete(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_complete16(ptr noundef %zSql) #0 {
entry:
  %retval = alloca i32, align 4
  %zSql.addr = alloca ptr, align 8
  %pVal = alloca ptr, align 8
  %zSql8 = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %zSql, ptr %zSql.addr, align 8
  %call = call i32 @sqlite3_initialize()
  store i32 %call, ptr %rc, align 4
  %0 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %rc, align 4
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @sqlite3ValueNew(ptr noundef null)
  store ptr %call1, ptr %pVal, align 8
  %2 = load ptr, ptr %pVal, align 8
  %3 = load ptr, ptr %zSql.addr, align 8
  call void @sqlite3ValueSetStr(ptr noundef %2, i32 noundef -1, ptr noundef %3, i8 noundef zeroext 2, ptr noundef null)
  %4 = load ptr, ptr %pVal, align 8
  %call2 = call ptr @sqlite3ValueText(ptr noundef %4, i8 noundef zeroext 1)
  store ptr %call2, ptr %zSql8, align 8
  %5 = load ptr, ptr %zSql8, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %zSql8, align 8
  %call5 = call i32 @sqlite3_complete(ptr noundef %6)
  store i32 %call5, ptr %rc, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  store i32 7, ptr %rc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %7 = load ptr, ptr %pVal, align 8
  call void @sqlite3ValueFree(ptr noundef %7)
  %8 = load i32, ptr %rc, align 4
  %and = and i32 %8, 255
  store i32 %and, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ValueNew(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueSetStr(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
