; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Bitvec = type { i32, i32, i32, %union.anon.8 }
%union.anon.8 = type { [62 x ptr] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3BitvecClear(ptr noundef %p, i32 noundef %i, ptr noundef %pBuf) #2 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pBuf.addr = alloca ptr, align 8
  %bin = alloca i32, align 4
  %j = alloca i32, align 4
  %aiValues = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %pBuf, ptr %pBuf.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end56

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %i.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %2 = load ptr, ptr %p.addr, align 8
  %iDivisor = getelementptr inbounds nuw %struct.Bitvec, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iDivisor, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %i.addr, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %iDivisor1 = getelementptr inbounds nuw %struct.Bitvec, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %iDivisor1, align 8
  %div = udiv i32 %4, %6
  store i32 %div, ptr %bin, align 4
  %7 = load i32, ptr %i.addr, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %iDivisor2 = getelementptr inbounds nuw %struct.Bitvec, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %iDivisor2, align 8
  %rem = urem i32 %7, %9
  store i32 %rem, ptr %i.addr, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.Bitvec, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %bin, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds nuw [62 x ptr], ptr %u, i64 0, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  store ptr %12, ptr %p.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %tobool3 = icmp ne ptr %13, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %while.body
  br label %if.end56

if.end5:                                          ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %p.addr, align 8
  %iSize = getelementptr inbounds nuw %struct.Bitvec, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %iSize, align 8
  %conv = zext i32 %15 to i64
  %cmp6 = icmp ule i64 %conv, 3968
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.end
  %16 = load i32, ptr %i.addr, align 4
  %and = and i32 %16, 7
  %shl = shl i32 1, %and
  %not = xor i32 %shl, -1
  %17 = load ptr, ptr %p.addr, align 8
  %u9 = getelementptr inbounds nuw %struct.Bitvec, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %i.addr, align 4
  %div10 = udiv i32 %18, 8
  %idxprom11 = zext i32 %div10 to i64
  %arrayidx12 = getelementptr inbounds nuw [496 x i8], ptr %u9, i64 0, i64 %idxprom11
  %19 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  %and14 = and i32 %conv13, %not
  %conv15 = trunc i32 %and14 to i8
  store i8 %conv15, ptr %arrayidx12, align 1
  br label %if.end56

if.else:                                          ; preds = %while.end
  %20 = load ptr, ptr %pBuf.addr, align 8
  store ptr %20, ptr %aiValues, align 8
  %21 = load ptr, ptr %aiValues, align 8
  %22 = load ptr, ptr %p.addr, align 8
  %u16 = getelementptr inbounds nuw %struct.Bitvec, ptr %22, i32 0, i32 3
  %arraydecay = getelementptr inbounds [124 x i32], ptr %u16, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 8 %arraydecay, i64 496, i1 false)
  %23 = load ptr, ptr %p.addr, align 8
  %u17 = getelementptr inbounds nuw %struct.Bitvec, ptr %23, i32 0, i32 3
  %arraydecay18 = getelementptr inbounds [124 x i32], ptr %u17, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay18, i8 0, i64 496, i1 false)
  %24 = load ptr, ptr %p.addr, align 8
  %nSet = getelementptr inbounds nuw %struct.Bitvec, ptr %24, i32 0, i32 1
  store i32 0, ptr %nSet, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %25 = load i32, ptr %j, align 4
  %conv19 = zext i32 %25 to i64
  %cmp20 = icmp ult i64 %conv19, 124
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %aiValues, align 8
  %27 = load i32, ptr %j, align 4
  %idxprom22 = zext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %26, i64 %idxprom22
  %28 = load i32, ptr %arrayidx23, align 4
  %tobool24 = icmp ne i32 %28, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %for.body
  %29 = load ptr, ptr %aiValues, align 8
  %30 = load i32, ptr %j, align 4
  %idxprom25 = zext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds nuw i32, ptr %29, i64 %idxprom25
  %31 = load i32, ptr %arrayidx26, align 4
  %32 = load i32, ptr %i.addr, align 4
  %add = add i32 %32, 1
  %cmp27 = icmp ne i32 %31, %add
  br i1 %cmp27, label %if.then29, label %if.end54

if.then29:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %aiValues, align 8
  %34 = load i32, ptr %j, align 4
  %idxprom30 = zext i32 %34 to i64
  %arrayidx31 = getelementptr inbounds nuw i32, ptr %33, i64 %idxprom30
  %35 = load i32, ptr %arrayidx31, align 4
  %sub = sub i32 %35, 1
  %mul = mul i32 %sub, 1
  %conv32 = zext i32 %mul to i64
  %rem33 = urem i64 %conv32, 124
  %conv34 = trunc i64 %rem33 to i32
  store i32 %conv34, ptr %h, align 4
  %36 = load ptr, ptr %p.addr, align 8
  %nSet35 = getelementptr inbounds nuw %struct.Bitvec, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %nSet35, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %nSet35, align 4
  br label %while.cond36

while.cond36:                                     ; preds = %if.end47, %if.then29
  %38 = load ptr, ptr %p.addr, align 8
  %u37 = getelementptr inbounds nuw %struct.Bitvec, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %h, align 4
  %idxprom38 = zext i32 %39 to i64
  %arrayidx39 = getelementptr inbounds nuw [124 x i32], ptr %u37, i64 0, i64 %idxprom38
  %40 = load i32, ptr %arrayidx39, align 4
  %tobool40 = icmp ne i32 %40, 0
  br i1 %tobool40, label %while.body41, label %while.end48

while.body41:                                     ; preds = %while.cond36
  %41 = load i32, ptr %h, align 4
  %inc42 = add i32 %41, 1
  store i32 %inc42, ptr %h, align 4
  %42 = load i32, ptr %h, align 4
  %conv43 = zext i32 %42 to i64
  %cmp44 = icmp uge i64 %conv43, 124
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %while.body41
  store i32 0, ptr %h, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %while.body41
  br label %while.cond36, !llvm.loop !8

while.end48:                                      ; preds = %while.cond36
  %43 = load ptr, ptr %aiValues, align 8
  %44 = load i32, ptr %j, align 4
  %idxprom49 = zext i32 %44 to i64
  %arrayidx50 = getelementptr inbounds nuw i32, ptr %43, i64 %idxprom49
  %45 = load i32, ptr %arrayidx50, align 4
  %46 = load ptr, ptr %p.addr, align 8
  %u51 = getelementptr inbounds nuw %struct.Bitvec, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %h, align 4
  %idxprom52 = zext i32 %47 to i64
  %arrayidx53 = getelementptr inbounds nuw [124 x i32], ptr %u51, i64 0, i64 %idxprom52
  store i32 %45, ptr %arrayidx53, align 4
  br label %if.end54

if.end54:                                         ; preds = %while.end48, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end54
  %48 = load i32, ptr %j, align 4
  %inc55 = add i32 %48, 1
  store i32 %inc55, ptr %j, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %if.end56

if.end56:                                         ; preds = %for.end, %if.then8, %if.then4, %if.then
  ret void
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
