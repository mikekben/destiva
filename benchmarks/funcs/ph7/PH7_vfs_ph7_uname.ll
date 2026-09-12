; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@.str.815 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1220 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.1221 = external hidden unnamed_addr constant [15 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @uname(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_vfs_ph7_uname(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %sName = alloca %struct.utsname, align 1
  %zMode = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr @.str.1220, ptr %zMode, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @ph7_value_to_string(ptr noundef %4, ptr noundef null)
  store ptr %call2, ptr %zMode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call3 = call i32 @uname(ptr noundef %sName) #2
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_string(ptr noundef %5, ptr noundef @.str.815, i32 noundef 4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %zMode, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx8, align 1
  %conv = sext i8 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 115, label %sw.bb
    i32 110, label %sw.bb10
    i32 114, label %sw.bb13
    i32 118, label %sw.bb16
    i32 109, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end7
  %8 = load ptr, ptr %pCtx.addr, align 8
  %sysname = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 0
  %arraydecay = getelementptr inbounds [65 x i8], ptr %sysname, i64 0, i64 0
  %call9 = call i32 @ph7_result_string(ptr noundef %8, ptr noundef %arraydecay, i32 noundef -1)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  %9 = load ptr, ptr %pCtx.addr, align 8
  %nodename = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 1
  %arraydecay11 = getelementptr inbounds [65 x i8], ptr %nodename, i64 0, i64 0
  %call12 = call i32 @ph7_result_string(ptr noundef %9, ptr noundef %arraydecay11, i32 noundef -1)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end7
  %10 = load ptr, ptr %pCtx.addr, align 8
  %release = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [65 x i8], ptr %release, i64 0, i64 0
  %call15 = call i32 @ph7_result_string(ptr noundef %10, ptr noundef %arraydecay14, i32 noundef -1)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end7
  %11 = load ptr, ptr %pCtx.addr, align 8
  %version = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 3
  %arraydecay17 = getelementptr inbounds [65 x i8], ptr %version, i64 0, i64 0
  %call18 = call i32 @ph7_result_string(ptr noundef %11, ptr noundef %arraydecay17, i32 noundef -1)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end7
  %12 = load ptr, ptr %pCtx.addr, align 8
  %machine = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 4
  %arraydecay20 = getelementptr inbounds [65 x i8], ptr %machine, i64 0, i64 0
  %call21 = call i32 @ph7_result_string(ptr noundef %12, ptr noundef %arraydecay20, i32 noundef -1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  %13 = load ptr, ptr %pCtx.addr, align 8
  %sysname22 = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [65 x i8], ptr %sysname22, i64 0, i64 0
  %release24 = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 2
  %arraydecay25 = getelementptr inbounds [65 x i8], ptr %release24, i64 0, i64 0
  %version26 = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 3
  %arraydecay27 = getelementptr inbounds [65 x i8], ptr %version26, i64 0, i64 0
  %nodename28 = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 1
  %arraydecay29 = getelementptr inbounds [65 x i8], ptr %nodename28, i64 0, i64 0
  %machine30 = getelementptr inbounds nuw %struct.utsname, ptr %sName, i32 0, i32 4
  %arraydecay31 = getelementptr inbounds [65 x i8], ptr %machine30, i64 0, i64 0
  %call32 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %13, ptr noundef @.str.1221, ptr noundef %arraydecay23, ptr noundef %arraydecay25, ptr noundef %arraydecay27, ptr noundef %arraydecay29, ptr noundef %arraydecay31)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then5
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
