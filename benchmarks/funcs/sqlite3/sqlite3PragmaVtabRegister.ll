; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PragmaName = type { ptr, i8, i8, i8, i8, i64 }

@pragmaVtabModule = external hidden constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3PragmaVtabRegister(ptr noundef %db, ptr noundef %zName) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %pName = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %zName.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 7
  %call = call ptr @pragmaLocate(ptr noundef %add.ptr)
  store ptr %call, ptr %pName, align 8
  %1 = load ptr, ptr %pName, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pName, align 8
  %mPragFlg = getelementptr inbounds nuw %struct.PragmaName, ptr %2, i32 0, i32 2
  %3 = load i8, ptr %mPragFlg, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 48
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load ptr, ptr %zName.addr, align 8
  %6 = load ptr, ptr %pName, align 8
  %call5 = call ptr @sqlite3VtabCreateModule(ptr noundef %4, ptr noundef %5, ptr noundef @pragmaVtabModule, ptr noundef %6, ptr noundef null)
  store ptr %call5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind uwtable
declare hidden ptr @pragmaLocate(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VtabCreateModule(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
