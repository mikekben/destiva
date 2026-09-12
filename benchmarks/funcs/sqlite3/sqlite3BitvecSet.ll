; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Bitvec = type { i32, i32, i32, %union.anon.8 }
%union.anon.8 = type { [62 x ptr] }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BitvecSet(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %h = alloca i32, align 4
  %bin = alloca i32, align 4
  %j = alloca i32, align 4
  %rc = alloca i32, align 4
  %aiValues = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %i.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end
  %2 = load ptr, ptr %p.addr, align 8
  %iSize = getelementptr inbounds nuw %struct.Bitvec, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %iSize, align 8
  %conv = zext i32 %3 to i64
  %cmp1 = icmp ugt i64 %conv, 3968
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %p.addr, align 8
  %iDivisor = getelementptr inbounds nuw %struct.Bitvec, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iDivisor, align 8
  %tobool = icmp ne i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, ptr %i.addr, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %iDivisor3 = getelementptr inbounds nuw %struct.Bitvec, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %iDivisor3, align 8
  %div = udiv i32 %7, %9
  store i32 %div, ptr %bin, align 4
  %10 = load i32, ptr %i.addr, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %iDivisor4 = getelementptr inbounds nuw %struct.Bitvec, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %iDivisor4, align 8
  %rem = urem i32 %10, %12
  store i32 %rem, ptr %i.addr, align 4
  %13 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.Bitvec, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %bin, align 4
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds nuw [62 x ptr], ptr %u, i64 0, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8
  %cmp5 = icmp eq ptr %15, null
  br i1 %cmp5, label %if.then7, label %if.end19

if.then7:                                         ; preds = %while.body
  %16 = load ptr, ptr %p.addr, align 8
  %iDivisor8 = getelementptr inbounds nuw %struct.Bitvec, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %iDivisor8, align 8
  %call = call ptr @sqlite3BitvecCreate(i32 noundef %17)
  %18 = load ptr, ptr %p.addr, align 8
  %u9 = getelementptr inbounds nuw %struct.Bitvec, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %bin, align 4
  %idxprom10 = zext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds nuw [62 x ptr], ptr %u9, i64 0, i64 %idxprom10
  store ptr %call, ptr %arrayidx11, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %u12 = getelementptr inbounds nuw %struct.Bitvec, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %bin, align 4
  %idxprom13 = zext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds nuw [62 x ptr], ptr %u12, i64 0, i64 %idxprom13
  %22 = load ptr, ptr %arrayidx14, align 8
  %cmp15 = icmp eq ptr %22, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then7
  store i32 7, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then7
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %while.body
  %23 = load ptr, ptr %p.addr, align 8
  %u20 = getelementptr inbounds nuw %struct.Bitvec, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %bin, align 4
  %idxprom21 = zext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds nuw [62 x ptr], ptr %u20, i64 0, i64 %idxprom21
  %25 = load ptr, ptr %arrayidx22, align 8
  store ptr %25, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %26 = load ptr, ptr %p.addr, align 8
  %iSize23 = getelementptr inbounds nuw %struct.Bitvec, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %iSize23, align 8
  %conv24 = zext i32 %27 to i64
  %cmp25 = icmp ule i64 %conv24, 3968
  br i1 %cmp25, label %if.then27, label %if.end34

if.then27:                                        ; preds = %while.end
  %28 = load i32, ptr %i.addr, align 4
  %and = and i32 %28, 7
  %shl = shl i32 1, %and
  %29 = load ptr, ptr %p.addr, align 8
  %u28 = getelementptr inbounds nuw %struct.Bitvec, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %i.addr, align 4
  %div29 = udiv i32 %30, 8
  %idxprom30 = zext i32 %div29 to i64
  %arrayidx31 = getelementptr inbounds nuw [496 x i8], ptr %u28, i64 0, i64 %idxprom30
  %31 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %31 to i32
  %or = or i32 %conv32, %shl
  %conv33 = trunc i32 %or to i8
  store i8 %conv33, ptr %arrayidx31, align 1
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %while.end
  %32 = load i32, ptr %i.addr, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %i.addr, align 4
  %mul = mul i32 %32, 1
  %conv35 = zext i32 %mul to i64
  %rem36 = urem i64 %conv35, 124
  %conv37 = trunc i64 %rem36 to i32
  store i32 %conv37, ptr %h, align 4
  %33 = load ptr, ptr %p.addr, align 8
  %u38 = getelementptr inbounds nuw %struct.Bitvec, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %h, align 4
  %idxprom39 = zext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds nuw [124 x i32], ptr %u38, i64 0, i64 %idxprom39
  %35 = load i32, ptr %arrayidx40, align 4
  %tobool41 = icmp ne i32 %35, 0
  br i1 %tobool41, label %if.end47, label %if.then42

if.then42:                                        ; preds = %if.end34
  %36 = load ptr, ptr %p.addr, align 8
  %nSet = getelementptr inbounds nuw %struct.Bitvec, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %nSet, align 4
  %conv43 = zext i32 %37 to i64
  %cmp44 = icmp ult i64 %conv43, 123
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then42
  br label %bitvec_set_end

if.else:                                          ; preds = %if.then42
  br label %bitvec_set_rehash

if.end47:                                         ; preds = %if.end34
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end47
  %38 = load ptr, ptr %p.addr, align 8
  %u48 = getelementptr inbounds nuw %struct.Bitvec, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %h, align 4
  %idxprom49 = zext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds nuw [124 x i32], ptr %u48, i64 0, i64 %idxprom49
  %40 = load i32, ptr %arrayidx50, align 4
  %41 = load i32, ptr %i.addr, align 4
  %cmp51 = icmp eq i32 %40, %41
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %do.body
  %42 = load i32, ptr %h, align 4
  %inc55 = add i32 %42, 1
  store i32 %inc55, ptr %h, align 4
  %43 = load i32, ptr %h, align 4
  %conv56 = zext i32 %43 to i64
  %cmp57 = icmp uge i64 %conv56, 124
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end54
  store i32 0, ptr %h, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end54
  br label %do.cond

do.cond:                                          ; preds = %if.end60
  %44 = load ptr, ptr %p.addr, align 8
  %u61 = getelementptr inbounds nuw %struct.Bitvec, ptr %44, i32 0, i32 3
  %45 = load i32, ptr %h, align 4
  %idxprom62 = zext i32 %45 to i64
  %arrayidx63 = getelementptr inbounds nuw [124 x i32], ptr %u61, i64 0, i64 %idxprom62
  %46 = load i32, ptr %arrayidx63, align 4
  %tobool64 = icmp ne i32 %46, 0
  br i1 %tobool64, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %bitvec_set_rehash

bitvec_set_rehash:                                ; preds = %do.end, %if.else
  %47 = load ptr, ptr %p.addr, align 8
  %nSet65 = getelementptr inbounds nuw %struct.Bitvec, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %nSet65, align 4
  %conv66 = zext i32 %48 to i64
  %cmp67 = icmp uge i64 %conv66, 62
  br i1 %cmp67, label %if.then69, label %if.end97

if.then69:                                        ; preds = %bitvec_set_rehash
  %call70 = call ptr @sqlite3DbMallocRaw(ptr noundef null, i64 noundef 496)
  store ptr %call70, ptr %aiValues, align 8
  %49 = load ptr, ptr %aiValues, align 8
  %cmp71 = icmp eq ptr %49, null
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.then69
  store i32 7, ptr %retval, align 4
  br label %return

if.else74:                                        ; preds = %if.then69
  %50 = load ptr, ptr %aiValues, align 8
  %51 = load ptr, ptr %p.addr, align 8
  %u75 = getelementptr inbounds nuw %struct.Bitvec, ptr %51, i32 0, i32 3
  %arraydecay = getelementptr inbounds [124 x i32], ptr %u75, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %50, ptr align 8 %arraydecay, i64 496, i1 false)
  %52 = load ptr, ptr %p.addr, align 8
  %u76 = getelementptr inbounds nuw %struct.Bitvec, ptr %52, i32 0, i32 3
  %arraydecay77 = getelementptr inbounds [62 x ptr], ptr %u76, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay77, i8 0, i64 496, i1 false)
  %53 = load ptr, ptr %p.addr, align 8
  %iSize78 = getelementptr inbounds nuw %struct.Bitvec, ptr %53, i32 0, i32 0
  %54 = load i32, ptr %iSize78, align 8
  %conv79 = zext i32 %54 to i64
  %add = add i64 %conv79, 62
  %sub = sub i64 %add, 1
  %div80 = udiv i64 %sub, 62
  %conv81 = trunc i64 %div80 to i32
  %55 = load ptr, ptr %p.addr, align 8
  %iDivisor82 = getelementptr inbounds nuw %struct.Bitvec, ptr %55, i32 0, i32 2
  store i32 %conv81, ptr %iDivisor82, align 8
  %56 = load ptr, ptr %p.addr, align 8
  %57 = load i32, ptr %i.addr, align 4
  %call83 = call i32 @sqlite3BitvecSet(ptr noundef %56, i32 noundef %57)
  store i32 %call83, ptr %rc, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else74
  %58 = load i32, ptr %j, align 4
  %conv84 = zext i32 %58 to i64
  %cmp85 = icmp ult i64 %conv84, 124
  br i1 %cmp85, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load ptr, ptr %aiValues, align 8
  %60 = load i32, ptr %j, align 4
  %idxprom87 = zext i32 %60 to i64
  %arrayidx88 = getelementptr inbounds nuw i32, ptr %59, i64 %idxprom87
  %61 = load i32, ptr %arrayidx88, align 4
  %tobool89 = icmp ne i32 %61, 0
  br i1 %tobool89, label %if.then90, label %if.end95

if.then90:                                        ; preds = %for.body
  %62 = load ptr, ptr %p.addr, align 8
  %63 = load ptr, ptr %aiValues, align 8
  %64 = load i32, ptr %j, align 4
  %idxprom91 = zext i32 %64 to i64
  %arrayidx92 = getelementptr inbounds nuw i32, ptr %63, i64 %idxprom91
  %65 = load i32, ptr %arrayidx92, align 4
  %call93 = call i32 @sqlite3BitvecSet(ptr noundef %62, i32 noundef %65)
  %66 = load i32, ptr %rc, align 4
  %or94 = or i32 %66, %call93
  store i32 %or94, ptr %rc, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end95
  %67 = load i32, ptr %j, align 4
  %inc96 = add i32 %67, 1
  store i32 %inc96, ptr %j, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %68 = load ptr, ptr %aiValues, align 8
  call void @sqlite3DbFree(ptr noundef null, ptr noundef %68)
  %69 = load i32, ptr %rc, align 4
  store i32 %69, ptr %retval, align 4
  br label %return

if.end97:                                         ; preds = %bitvec_set_rehash
  br label %bitvec_set_end

bitvec_set_end:                                   ; preds = %if.end97, %if.then46
  %70 = load ptr, ptr %p.addr, align 8
  %nSet98 = getelementptr inbounds nuw %struct.Bitvec, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %nSet98, align 4
  %inc99 = add i32 %71, 1
  store i32 %inc99, ptr %nSet98, align 4
  %72 = load i32, ptr %i.addr, align 4
  %73 = load ptr, ptr %p.addr, align 8
  %u100 = getelementptr inbounds nuw %struct.Bitvec, ptr %73, i32 0, i32 3
  %74 = load i32, ptr %h, align 4
  %idxprom101 = zext i32 %74 to i64
  %arrayidx102 = getelementptr inbounds nuw [124 x i32], ptr %u100, i64 0, i64 %idxprom101
  store i32 %72, ptr %arrayidx102, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bitvec_set_end, %for.end, %if.then73, %if.then53, %if.then27, %if.then17, %if.then
  %75 = load i32, ptr %retval, align 4
  ret i32 %75
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BitvecCreate(i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
