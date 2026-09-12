; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @isShadowTableName(ptr noundef %db, ptr noundef %zName) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %zTail = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %zName.addr, align 8
  %call = call ptr @strrchr(ptr noundef %0, i32 noundef 95) #2
  store ptr %call, ptr %zTail, align 8
  %1 = load ptr, ptr %zTail, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %zTail, align 8
  store i8 0, ptr %2, align 1
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %zName.addr, align 8
  %call1 = call ptr @sqlite3FindTable(ptr noundef %3, ptr noundef %4, ptr noundef null)
  store ptr %call1, ptr %pTab, align 8
  %5 = load ptr, ptr %zTail, align 8
  store i8 95, ptr %5, align 1
  %6 = load ptr, ptr %pTab, align 8
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 16
  %8 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end4
  %9 = load ptr, ptr %db.addr, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 68
  %10 = load ptr, ptr %pTab, align 8
  %azModuleArg = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 17
  %11 = load ptr, ptr %azModuleArg, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx, align 8
  %call7 = call ptr @sqlite3HashFind(ptr noundef %aModule, ptr noundef %12)
  store ptr %call7, ptr %pMod, align 8
  %13 = load ptr, ptr %pMod, align 8
  %cmp8 = icmp eq ptr %13, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  %14 = load ptr, ptr %pMod, align 8
  %pModule = getelementptr inbounds nuw %struct.Module, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pModule, align 8
  %iVersion = getelementptr inbounds nuw %struct.sqlite3_module, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %iVersion, align 8
  %cmp11 = icmp slt i32 %16, 3
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end10
  %17 = load ptr, ptr %pMod, align 8
  %pModule14 = getelementptr inbounds nuw %struct.Module, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pModule14, align 8
  %xShadowName = getelementptr inbounds nuw %struct.sqlite3_module, ptr %18, i32 0, i32 23
  %19 = load ptr, ptr %xShadowName, align 8
  %cmp15 = icmp eq ptr %19, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end13
  %20 = load ptr, ptr %pMod, align 8
  %pModule18 = getelementptr inbounds nuw %struct.Module, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pModule18, align 8
  %xShadowName19 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %xShadowName19, align 8
  %23 = load ptr, ptr %zTail, align 8
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 1
  %call20 = call i32 %22(ptr noundef %add.ptr)
  store i32 %call20, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then12, %if.then9, %if.then5, %if.then3, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
