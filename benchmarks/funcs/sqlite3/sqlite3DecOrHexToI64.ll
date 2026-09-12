; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3DecOrHexToI64(ptr noundef %z, ptr noundef %pOut) #1 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  %u = alloca i64, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %z.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 120
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %z.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 88
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i64 0, ptr %u, align 8
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load ptr, ptr %z.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 48
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %i, align 4
  store i32 %10, ptr %k, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %11 = load ptr, ptr %z.addr, align 8
  %12 = load i32, ptr %k, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %11, i64 %idxprom15
  %13 = load i8, ptr %arrayidx16, align 1
  %idxprom17 = zext i8 %13 to i64
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom17
  %14 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  %and = and i32 %conv19, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond14
  %15 = load i64, ptr %u, align 8
  %mul = mul i64 %15, 16
  %16 = load ptr, ptr %z.addr, align 8
  %17 = load i32, ptr %k, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %16, i64 %idxprom21
  %18 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %18 to i32
  %call = call zeroext i8 @sqlite3HexToInt(i32 noundef %conv23)
  %conv24 = zext i8 %call to i64
  %add = add i64 %mul, %conv24
  store i64 %add, ptr %u, align 8
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %19 = load i32, ptr %k, align 4
  %inc26 = add nsw i32 %19, 1
  store i32 %inc26, ptr %k, align 4
  br label %for.cond14, !llvm.loop !8

for.end27:                                        ; preds = %for.cond14
  %20 = load ptr, ptr %pOut.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %u, i64 8, i1 false)
  %21 = load ptr, ptr %z.addr, align 8
  %22 = load i32, ptr %k, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %21, i64 %idxprom28
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %23 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end27
  %24 = load i32, ptr %k, align 4
  %25 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %24, %25
  %cmp33 = icmp sle i32 %sub, 16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end27
  %26 = phi i1 [ false, %for.end27 ], [ %cmp33, %land.rhs ]
  %27 = zext i1 %26 to i64
  %cond = select i1 %26, i32 0, i32 2
  store i32 %cond, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false, %entry
  %28 = load ptr, ptr %z.addr, align 8
  %29 = load ptr, ptr %pOut.addr, align 8
  %30 = load ptr, ptr %z.addr, align 8
  %call35 = call i32 @sqlite3Strlen30(ptr noundef %30)
  %call36 = call i32 @sqlite3Atoi64(ptr noundef %28, ptr noundef %29, i32 noundef %call35, i8 noundef zeroext 1)
  store i32 %call36, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %land.end
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi64(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3HexToInt(i32 noundef) #1

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
!8 = distinct !{!8, !7}
