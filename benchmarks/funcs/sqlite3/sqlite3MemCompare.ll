; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3MemCompare(ptr noundef %pMem1, ptr noundef %pMem2, ptr noundef %pColl) #0 {
entry:
  %retval = alloca i32, align 4
  %pMem1.addr = alloca ptr, align 8
  %pMem2.addr = alloca ptr, align 8
  %pColl.addr = alloca ptr, align 8
  %f1 = alloca i32, align 4
  %f2 = alloca i32, align 4
  %combined_flags = alloca i32, align 4
  store ptr %pMem1, ptr %pMem1.addr, align 8
  store ptr %pMem2, ptr %pMem2.addr, align 8
  store ptr %pColl, ptr %pColl.addr, align 8
  %0 = load ptr, ptr %pMem1.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %f1, align 4
  %2 = load ptr, ptr %pMem2.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %flags1, align 8
  %conv2 = zext i16 %3 to i32
  store i32 %conv2, ptr %f2, align 4
  %4 = load i32, ptr %f1, align 4
  %5 = load i32, ptr %f2, align 4
  %or = or i32 %4, %5
  store i32 %or, ptr %combined_flags, align 4
  %6 = load i32, ptr %combined_flags, align 4
  %and = and i32 %6, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %f2, align 4
  %and3 = and i32 %7, 1
  %8 = load i32, ptr %f1, align 4
  %and4 = and i32 %8, 1
  %sub = sub nsw i32 %and3, %and4
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %combined_flags, align 4
  %and5 = and i32 %9, 44
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end84

if.then7:                                         ; preds = %if.end
  %10 = load i32, ptr %f1, align 4
  %11 = load i32, ptr %f2, align 4
  %and8 = and i32 %10, %11
  %and9 = and i32 %and8, 36
  %cmp = icmp ne i32 %and9, 0
  br i1 %cmp, label %if.then11, label %if.end23

if.then11:                                        ; preds = %if.then7
  %12 = load ptr, ptr %pMem1.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %u, align 8
  %14 = load ptr, ptr %pMem2.addr, align 8
  %u12 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %u12, align 8
  %cmp13 = icmp slt i64 %13, %15
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  store i32 -1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then11
  %16 = load ptr, ptr %pMem1.addr, align 8
  %u17 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %u17, align 8
  %18 = load ptr, ptr %pMem2.addr, align 8
  %u18 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %u18, align 8
  %cmp19 = icmp sgt i64 %17, %19
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end16
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then7
  %20 = load i32, ptr %f1, align 4
  %21 = load i32, ptr %f2, align 4
  %and24 = and i32 %20, %21
  %and25 = and i32 %and24, 8
  %cmp26 = icmp ne i32 %and25, 0
  br i1 %cmp26, label %if.then28, label %if.end41

if.then28:                                        ; preds = %if.end23
  %22 = load ptr, ptr %pMem1.addr, align 8
  %u29 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %22, i32 0, i32 0
  %23 = load double, ptr %u29, align 8
  %24 = load ptr, ptr %pMem2.addr, align 8
  %u30 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %24, i32 0, i32 0
  %25 = load double, ptr %u30, align 8
  %cmp31 = fcmp olt double %23, %25
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then28
  store i32 -1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then28
  %26 = load ptr, ptr %pMem1.addr, align 8
  %u35 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %26, i32 0, i32 0
  %27 = load double, ptr %u35, align 8
  %28 = load ptr, ptr %pMem2.addr, align 8
  %u36 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %28, i32 0, i32 0
  %29 = load double, ptr %u36, align 8
  %cmp37 = fcmp ogt double %27, %29
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end34
  store i32 1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end34
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end23
  %30 = load i32, ptr %f1, align 4
  %and42 = and i32 %30, 36
  %cmp43 = icmp ne i32 %and42, 0
  br i1 %cmp43, label %if.then45, label %if.end69

if.then45:                                        ; preds = %if.end41
  %31 = load i32, ptr %f2, align 4
  %and46 = and i32 %31, 8
  %cmp47 = icmp ne i32 %and46, 0
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.then45
  %32 = load ptr, ptr %pMem1.addr, align 8
  %u50 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %32, i32 0, i32 0
  %33 = load i64, ptr %u50, align 8
  %34 = load ptr, ptr %pMem2.addr, align 8
  %u51 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %34, i32 0, i32 0
  %35 = load double, ptr %u51, align 8
  %call = call i32 @sqlite3IntFloatCompare(i64 noundef %33, double noundef %35)
  store i32 %call, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then45
  %36 = load i32, ptr %f2, align 4
  %and52 = and i32 %36, 36
  %cmp53 = icmp ne i32 %and52, 0
  br i1 %cmp53, label %if.then55, label %if.else68

if.then55:                                        ; preds = %if.else
  %37 = load ptr, ptr %pMem1.addr, align 8
  %u56 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %37, i32 0, i32 0
  %38 = load i64, ptr %u56, align 8
  %39 = load ptr, ptr %pMem2.addr, align 8
  %u57 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %39, i32 0, i32 0
  %40 = load i64, ptr %u57, align 8
  %cmp58 = icmp slt i64 %38, %40
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then55
  store i32 -1, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then55
  %41 = load ptr, ptr %pMem1.addr, align 8
  %u62 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %41, i32 0, i32 0
  %42 = load i64, ptr %u62, align 8
  %43 = load ptr, ptr %pMem2.addr, align 8
  %u63 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %43, i32 0, i32 0
  %44 = load i64, ptr %u63, align 8
  %cmp64 = icmp sgt i64 %42, %44
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end61
  store i32 1, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.end61
  store i32 0, ptr %retval, align 4
  br label %return

if.else68:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end41
  %45 = load i32, ptr %f1, align 4
  %and70 = and i32 %45, 8
  %cmp71 = icmp ne i32 %and70, 0
  br i1 %cmp71, label %if.then73, label %if.end83

if.then73:                                        ; preds = %if.end69
  %46 = load i32, ptr %f2, align 4
  %and74 = and i32 %46, 36
  %cmp75 = icmp ne i32 %and74, 0
  br i1 %cmp75, label %if.then77, label %if.else82

if.then77:                                        ; preds = %if.then73
  %47 = load ptr, ptr %pMem2.addr, align 8
  %u78 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %47, i32 0, i32 0
  %48 = load i64, ptr %u78, align 8
  %49 = load ptr, ptr %pMem1.addr, align 8
  %u79 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %49, i32 0, i32 0
  %50 = load double, ptr %u79, align 8
  %call80 = call i32 @sqlite3IntFloatCompare(i64 noundef %48, double noundef %50)
  %sub81 = sub nsw i32 0, %call80
  store i32 %sub81, ptr %retval, align 4
  br label %return

if.else82:                                        ; preds = %if.then73
  store i32 -1, ptr %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.end69
  store i32 1, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end
  %51 = load i32, ptr %combined_flags, align 4
  %and85 = and i32 %51, 2
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.end102

if.then87:                                        ; preds = %if.end84
  %52 = load i32, ptr %f1, align 4
  %and88 = and i32 %52, 2
  %cmp89 = icmp eq i32 %and88, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then87
  store i32 1, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.then87
  %53 = load i32, ptr %f2, align 4
  %and93 = and i32 %53, 2
  %cmp94 = icmp eq i32 %and93, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end92
  store i32 -1, ptr %retval, align 4
  br label %return

if.end97:                                         ; preds = %if.end92
  %54 = load ptr, ptr %pColl.addr, align 8
  %tobool98 = icmp ne ptr %54, null
  br i1 %tobool98, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end97
  %55 = load ptr, ptr %pMem1.addr, align 8
  %56 = load ptr, ptr %pMem2.addr, align 8
  %57 = load ptr, ptr %pColl.addr, align 8
  %call100 = call i32 @vdbeCompareMemString(ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef null)
  store i32 %call100, ptr %retval, align 4
  br label %return

if.end101:                                        ; preds = %if.end97
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end84
  %58 = load ptr, ptr %pMem1.addr, align 8
  %59 = load ptr, ptr %pMem2.addr, align 8
  %call103 = call i32 @sqlite3BlobCompare(ptr noundef %58, ptr noundef %59)
  store i32 %call103, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end102, %if.then99, %if.then96, %if.then91, %if.end83, %if.else82, %if.then77, %if.else68, %if.end67, %if.then66, %if.then60, %if.then49, %if.end40, %if.then39, %if.then33, %if.end22, %if.then21, %if.then15, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IntFloatCompare(i64 noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeCompareMemString(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BlobCompare(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
