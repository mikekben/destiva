; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }

@.str.1034 = external hidden unnamed_addr constant [15 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @timeFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %x = alloca %struct.DateTime, align 8
  %zBuf = alloca [100 x i8], align 16
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %1 = load i32, ptr %argc.addr, align 4
  %2 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @isDate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %x)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @computeHMS(ptr noundef %x)
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zBuf, i64 0, i64 0
  %h = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 4
  %3 = load i32, ptr %h, align 4
  %m = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 5
  %4 = load i32, ptr %m, align 8
  %s = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 7
  %5 = load double, ptr %s, align 8
  %conv = fptosi double %5 to i32
  %call1 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef %arraydecay, ptr noundef @.str.1034, i32 noundef %3, i32 noundef %4, i32 noundef %conv)
  %6 = load ptr, ptr %context.addr, align 8
  %arraydecay2 = getelementptr inbounds [100 x i8], ptr %zBuf, i64 0, i64 0
  call void @sqlite3_result_text(ptr noundef %6, ptr noundef %arraydecay2, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @isDate(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @computeHMS(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
