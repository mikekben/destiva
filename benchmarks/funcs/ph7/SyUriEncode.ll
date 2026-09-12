; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.51 = external hidden unnamed_addr constant [17 x i8], align 1
@__const.SyUriEncode.zHex = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @SyUriEncode(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %xConsumer, ptr noundef %pUserData) #2 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %xConsumer.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zHex = alloca [3 x i8], align 1
  %zOut = alloca [2 x i8], align 1
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %c = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %xConsumer, ptr %xConsumer.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %zSrc.addr, align 8
  store ptr %0, ptr %zIn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %zHex, ptr align 1 @__const.SyUriEncode.zHex, i64 3, i1 false)
  store i32 0, ptr %rc, align 4
  %1 = load ptr, ptr %zIn, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %3 = load ptr, ptr %zIn, align 8
  store ptr %3, ptr %zCur, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end53, %if.then21, %entry
  %4 = load ptr, ptr %zCur, align 8
  %5 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %4, %5
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %for.cond
  %6 = load ptr, ptr %zCur, align 8
  %7 = load ptr, ptr %zIn, align 8
  %cmp1 = icmp ne ptr %6, %7
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %xConsumer.addr, align 8
  %9 = load ptr, ptr %zIn, align 8
  %10 = load ptr, ptr %zCur, align 8
  %11 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %12 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 %8(ptr noundef %9, i32 noundef %conv, ptr noundef %12)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %for.end

if.end3:                                          ; preds = %for.cond
  %13 = load ptr, ptr %zCur, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %14 to i32
  store i32 %conv5, ptr %c, align 4
  %call6 = call ptr @__ctype_b_loc() #3
  %15 = load ptr, ptr %call6, align 8
  %16 = load i32, ptr %c, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %15, i64 %idxprom7
  %17 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %17 to i32
  %and = and i32 %conv9, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %18 = load i32, ptr %c, align 4
  %cmp10 = icmp eq i32 %18, 95
  br i1 %cmp10, label %if.then21, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %19 = load i32, ptr %c, align 4
  %cmp13 = icmp eq i32 %19, 45
  br i1 %cmp13, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %20 = load i32, ptr %c, align 4
  %cmp16 = icmp eq i32 %20, 36
  br i1 %cmp16, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %21 = load i32, ptr %c, align 4
  %cmp19 = icmp eq i32 %21, 46
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false, %if.end3
  %22 = load ptr, ptr %zCur, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %zCur, align 8
  br label %for.cond

if.end22:                                         ; preds = %lor.lhs.false18
  %23 = load ptr, ptr %zCur, align 8
  %24 = load ptr, ptr %zIn, align 8
  %cmp23 = icmp ne ptr %23, %24
  br i1 %cmp23, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end22
  %25 = load ptr, ptr %xConsumer.addr, align 8
  %26 = load ptr, ptr %zIn, align 8
  %27 = load ptr, ptr %zCur, align 8
  %28 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast25 = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast26 = ptrtoint ptr %28 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %conv28 = trunc i64 %sub.ptr.sub27 to i32
  %29 = load ptr, ptr %pUserData.addr, align 8
  %call29 = call i32 %25(ptr noundef %26, i32 noundef %conv28, ptr noundef %29)
  store i32 %call29, ptr %rc, align 4
  %cmp30 = icmp ne i32 0, %call29
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  br label %for.end

if.end33:                                         ; preds = %land.lhs.true, %if.end22
  %30 = load i32, ptr %c, align 4
  %cmp34 = icmp eq i32 %30, 32
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end33
  %arrayidx37 = getelementptr inbounds [2 x i8], ptr %zOut, i64 0, i64 0
  store i8 43, ptr %arrayidx37, align 1
  %31 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], ptr %zOut, i64 0, i64 0
  %32 = load ptr, ptr %pUserData.addr, align 8
  %call38 = call i32 %31(ptr noundef %arraydecay, i32 noundef 1, ptr noundef %32)
  store i32 %call38, ptr %rc, align 4
  br label %if.end49

if.else:                                          ; preds = %if.end33
  %33 = load i32, ptr %c, align 4
  %shr = ashr i32 %33, 4
  %and39 = and i32 %shr, 15
  %idxprom40 = sext i32 %and39 to i64
  %arrayidx41 = getelementptr inbounds [17 x i8], ptr @.str.51, i64 0, i64 %idxprom40
  %34 = load i8, ptr %arrayidx41, align 1
  %arrayidx42 = getelementptr inbounds [3 x i8], ptr %zHex, i64 0, i64 1
  store i8 %34, ptr %arrayidx42, align 1
  %35 = load i32, ptr %c, align 4
  %and43 = and i32 %35, 15
  %idxprom44 = sext i32 %and43 to i64
  %arrayidx45 = getelementptr inbounds [17 x i8], ptr @.str.51, i64 0, i64 %idxprom44
  %36 = load i8, ptr %arrayidx45, align 1
  %arrayidx46 = getelementptr inbounds [3 x i8], ptr %zHex, i64 0, i64 2
  store i8 %36, ptr %arrayidx46, align 1
  %37 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay47 = getelementptr inbounds [3 x i8], ptr %zHex, i64 0, i64 0
  %38 = load ptr, ptr %pUserData.addr, align 8
  %call48 = call i32 %37(ptr noundef %arraydecay47, i32 noundef 3, ptr noundef %38)
  store i32 %call48, ptr %rc, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then36
  %39 = load i32, ptr %rc, align 4
  %cmp50 = icmp ne i32 0, %39
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  br label %for.end

if.end53:                                         ; preds = %if.end49
  %40 = load ptr, ptr %zCur, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %arrayidx54, ptr %zIn, align 8
  %41 = load ptr, ptr %zIn, align 8
  store ptr %41, ptr %zCur, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then52, %if.then32, %if.end
  %42 = load i32, ptr %rc, align 4
  %cmp55 = icmp eq i32 %42, 0
  %43 = zext i1 %cmp55 to i64
  %cond = select i1 %cmp55, i32 0, i32 -10
  ret i32 %cond
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
