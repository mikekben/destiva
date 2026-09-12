; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str.1028 = external hidden unnamed_addr constant [23 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @computeJD(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i64 @localtimeOffset(ptr noundef %p, ptr noundef %pCtx, ptr noundef %pRc) #2 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %pRc.addr = alloca ptr, align 8
  %x = alloca %struct.DateTime, align 8
  %y = alloca %struct.DateTime, align 8
  %t = alloca i64, align 8
  %sLocal = alloca %struct.tm, align 8
  %s4 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pRc, ptr %pRc.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sLocal, i8 0, i64 56, i1 false)
  %0 = load ptr, ptr %p.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %x, ptr align 8 %0, i64 48, i1 false)
  call void @computeYMD_HMS(ptr noundef %x)
  %Y = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 1
  %1 = load i32, ptr %Y, align 8
  %cmp = icmp slt i32 %1, 1971
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %Y1 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 1
  %2 = load i32, ptr %Y1, align 8
  %cmp2 = icmp sge i32 %2, 2038
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %Y3 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 1
  store i32 2000, ptr %Y3, align 8
  %M = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 2
  store i32 1, ptr %M, align 4
  %D = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 3
  store i32 1, ptr %D, align 8
  %h = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 4
  store i32 0, ptr %h, align 4
  %m = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 5
  store i32 0, ptr %m, align 8
  %s = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 7
  store double 0.000000e+00, ptr %s, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %s5 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 7
  %3 = load double, ptr %s5, align 8
  %add = fadd double %3, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, ptr %s4, align 4
  %4 = load i32, ptr %s4, align 4
  %conv6 = sitofp i32 %4 to double
  %s7 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 7
  store double %conv6, ptr %s7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tz = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 6
  store i32 0, ptr %tz, align 4
  %validJD = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 8
  store i8 0, ptr %validJD, align 8
  call void @computeJD(ptr noundef %x)
  %iJD = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 0
  %5 = load i64, ptr %iJD, align 8
  %div = sdiv i64 %5, 1000
  %sub = sub nsw i64 %div, 210866760000
  store i64 %sub, ptr %t, align 8
  %call = call i32 @osLocaltime(ptr noundef %t, ptr noundef %sLocal)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error(ptr noundef %6, ptr noundef @.str.1028, i32 noundef -1)
  %7 = load ptr, ptr %pRc.addr, align 8
  store i32 1, ptr %7, align 4
  store i64 0, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %tm_year = getelementptr inbounds nuw %struct.tm, ptr %sLocal, i32 0, i32 5
  %8 = load i32, ptr %tm_year, align 4
  %add10 = add nsw i32 %8, 1900
  %Y11 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 1
  store i32 %add10, ptr %Y11, align 8
  %tm_mon = getelementptr inbounds nuw %struct.tm, ptr %sLocal, i32 0, i32 4
  %9 = load i32, ptr %tm_mon, align 8
  %add12 = add nsw i32 %9, 1
  %M13 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 2
  store i32 %add12, ptr %M13, align 4
  %tm_mday = getelementptr inbounds nuw %struct.tm, ptr %sLocal, i32 0, i32 3
  %10 = load i32, ptr %tm_mday, align 4
  %D14 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 3
  store i32 %10, ptr %D14, align 8
  %tm_hour = getelementptr inbounds nuw %struct.tm, ptr %sLocal, i32 0, i32 2
  %11 = load i32, ptr %tm_hour, align 8
  %h15 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 4
  store i32 %11, ptr %h15, align 4
  %tm_min = getelementptr inbounds nuw %struct.tm, ptr %sLocal, i32 0, i32 1
  %12 = load i32, ptr %tm_min, align 4
  %m16 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 5
  store i32 %12, ptr %m16, align 8
  %tm_sec = getelementptr inbounds nuw %struct.tm, ptr %sLocal, i32 0, i32 0
  %13 = load i32, ptr %tm_sec, align 8
  %conv17 = sitofp i32 %13 to double
  %s18 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 7
  store double %conv17, ptr %s18, align 8
  %validYMD = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 10
  store i8 1, ptr %validYMD, align 2
  %validHMS = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 11
  store i8 1, ptr %validHMS, align 1
  %validJD19 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 8
  store i8 0, ptr %validJD19, align 8
  %rawS = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 9
  store i8 0, ptr %rawS, align 1
  %validTZ = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 12
  store i8 0, ptr %validTZ, align 4
  %isError = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 14
  store i8 0, ptr %isError, align 2
  call void @computeJD(ptr noundef %y)
  %14 = load ptr, ptr %pRc.addr, align 8
  store i32 0, ptr %14, align 4
  %iJD20 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 0
  %15 = load i64, ptr %iJD20, align 8
  %iJD21 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 0
  %16 = load i64, ptr %iJD21, align 8
  %sub22 = sub nsw i64 %15, %16
  store i64 %sub22, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8
  %17 = load i64, ptr %retval, align 8
  ret i64 %17
}

; Function Attrs: nounwind uwtable
declare hidden void @computeYMD_HMS(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @osLocaltime(ptr noundef, ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
