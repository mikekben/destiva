; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.84 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_uri_parameter(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @findCreateFileMode(ptr noundef %zPath, i32 noundef %flags, ptr noundef %pMode, ptr noundef %pUid, ptr noundef %pGid) #1 {
entry:
  %retval = alloca i32, align 4
  %zPath.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pMode.addr = alloca ptr, align 8
  %pUid.addr = alloca ptr, align 8
  %pGid.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zDb = alloca [513 x i8], align 16
  %nDb = alloca i32, align 4
  %z = alloca ptr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %pMode, ptr %pMode.addr, align 8
  store ptr %pUid, ptr %pUid.addr, align 8
  store ptr %pGid, ptr %pGid.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pMode.addr, align 8
  store i32 0, ptr %0, align 4
  %1 = load ptr, ptr %pUid.addr, align 8
  store i32 0, ptr %1, align 4
  %2 = load ptr, ptr %pGid.addr, align 8
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr %flags.addr, align 4
  %and = and i32 %3, 526336
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %zPath.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %4)
  %sub = sub nsw i32 %call, 1
  store i32 %sub, ptr %nDb, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load ptr, ptr %zPath.addr, align 8
  %6 = load i32, ptr %nDb, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp ne i32 %conv, 45
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %nDb, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %9 = load ptr, ptr %zPath.addr, align 8
  %10 = load i32, ptr %nDb, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 %idxprom4
  %11 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 46
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.lhs.false, %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i32, ptr %nDb, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %nDb, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [513 x i8], ptr %zDb, i64 0, i64 0
  %13 = load ptr, ptr %zPath.addr, align 8
  %14 = load i32, ptr %nDb, align 4
  %conv10 = sext i32 %14 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %13, i64 %conv10, i1 false)
  %15 = load i32, ptr %nDb, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [513 x i8], ptr %zDb, i64 0, i64 %idxprom11
  store i8 0, ptr %arrayidx12, align 1
  %arraydecay13 = getelementptr inbounds [513 x i8], ptr %zDb, i64 0, i64 0
  %16 = load ptr, ptr %pMode.addr, align 8
  %17 = load ptr, ptr %pUid.addr, align 8
  %18 = load ptr, ptr %pGid.addr, align 8
  %call14 = call i32 @getFileMode(ptr noundef %arraydecay13, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  store i32 %call14, ptr %rc, align 4
  br label %if.end29

if.else:                                          ; preds = %entry
  %19 = load i32, ptr %flags.addr, align 4
  %and15 = and i32 %19, 8
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  %20 = load ptr, ptr %pMode.addr, align 8
  store i32 384, ptr %20, align 4
  br label %if.end28

if.else18:                                        ; preds = %if.else
  %21 = load i32, ptr %flags.addr, align 4
  %and19 = and i32 %21, 64
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.else18
  %22 = load ptr, ptr %zPath.addr, align 8
  %call22 = call ptr @sqlite3_uri_parameter(ptr noundef %22, ptr noundef @.str.84)
  store ptr %call22, ptr %z, align 8
  %23 = load ptr, ptr %z, align 8
  %tobool23 = icmp ne ptr %23, null
  br i1 %tobool23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then21
  %24 = load ptr, ptr %z, align 8
  %25 = load ptr, ptr %pMode.addr, align 8
  %26 = load ptr, ptr %pUid.addr, align 8
  %27 = load ptr, ptr %pGid.addr, align 8
  %call25 = call i32 @getFileMode(ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27)
  store i32 %call25, ptr %rc, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then21
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.else18
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then17
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %while.end
  %28 = load i32, ptr %rc, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then9
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden i32 @getFileMode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
