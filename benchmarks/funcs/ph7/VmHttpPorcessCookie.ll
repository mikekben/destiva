; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.555 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmBlobConsumer(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractSuper(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyUriDecode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHashmapInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmHttpPorcessCookie(ptr noundef %pVm, ptr noundef %pWorker, ptr noundef %zIn, i32 noundef %nByte) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pWorker.addr = alloca ptr, align 8
  %zIn.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %zPtr = alloca ptr, align 8
  %zDelimiter = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %sName = alloca %struct.SyString, align 8
  %sValue = alloca %struct.SyString, align 8
  %pCookie = alloca ptr, align 8
  %nOfft = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pWorker, ptr %pWorker.addr, align 8
  store ptr %zIn, ptr %zIn.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %zIn.addr, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %2 = load ptr, ptr %pVm.addr, align 8
  %call = call ptr @VmExtractSuper(ptr noundef %2, ptr noundef @.str.555, i32 noundef 7)
  store ptr %call, ptr %pCookie, align 8
  %3 = load ptr, ptr %pCookie, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %pCookie, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iFlags, align 8
  %and = and i32 %5, 64
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %if.end58, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %6 = load ptr, ptr %zIn.addr, align 8
  %7 = load ptr, ptr %zEnd, align 8
  %cmp2 = icmp ult ptr %6, %7
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call3 = call ptr @__ctype_b_loc() #2
  %8 = load ptr, ptr %call3, align 8
  %9 = load ptr, ptr %zIn.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx4, align 1
  %conv = sext i8 %10 to i32
  %idxprom5 = sext i32 %conv to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %8, i64 %idxprom5
  %11 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %11 to i32
  %and8 = and i32 %conv7, 8192
  %tobool = icmp ne i32 %and8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %zIn.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %zIn.addr, align 8
  %15 = load ptr, ptr %zEnd, align 8
  %cmp9 = icmp uge ptr %14, %15
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.end
  br label %for.end

if.end12:                                         ; preds = %while.end
  %16 = load ptr, ptr %pWorker.addr, align 8
  %call13 = call i32 @SyBlobReset(ptr noundef %16)
  %17 = load ptr, ptr %zIn.addr, align 8
  store ptr %17, ptr %zDelimiter, align 8
  br label %while.cond14

while.cond14:                                     ; preds = %while.body23, %if.end12
  %18 = load ptr, ptr %zDelimiter, align 8
  %19 = load ptr, ptr %zEnd, align 8
  %cmp15 = icmp ult ptr %18, %19
  br i1 %cmp15, label %land.rhs17, label %land.end22

land.rhs17:                                       ; preds = %while.cond14
  %20 = load ptr, ptr %zDelimiter, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %21 to i32
  %cmp20 = icmp ne i32 %conv19, 59
  br label %land.end22

land.end22:                                       ; preds = %land.rhs17, %while.cond14
  %22 = phi i1 [ false, %while.cond14 ], [ %cmp20, %land.rhs17 ]
  br i1 %22, label %while.body23, label %while.end25

while.body23:                                     ; preds = %land.end22
  %23 = load ptr, ptr %zDelimiter, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr24, ptr %zDelimiter, align 8
  br label %while.cond14, !llvm.loop !8

while.end25:                                      ; preds = %land.end22
  %24 = load ptr, ptr %zIn.addr, align 8
  store ptr %24, ptr %zPtr, align 8
  br label %while.cond26

while.cond26:                                     ; preds = %while.body35, %while.end25
  %25 = load ptr, ptr %zPtr, align 8
  %26 = load ptr, ptr %zDelimiter, align 8
  %cmp27 = icmp ult ptr %25, %26
  br i1 %cmp27, label %land.rhs29, label %land.end34

land.rhs29:                                       ; preds = %while.cond26
  %27 = load ptr, ptr %zPtr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %28 to i32
  %cmp32 = icmp ne i32 %conv31, 61
  br label %land.end34

land.end34:                                       ; preds = %land.rhs29, %while.cond26
  %29 = phi i1 [ false, %while.cond26 ], [ %cmp32, %land.rhs29 ]
  br i1 %29, label %while.body35, label %while.end37

while.body35:                                     ; preds = %land.end34
  %30 = load ptr, ptr %zPtr, align 8
  %incdec.ptr36 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr36, ptr %zPtr, align 8
  br label %while.cond26, !llvm.loop !9

while.end37:                                      ; preds = %land.end34
  %31 = load ptr, ptr %zIn.addr, align 8
  %32 = load ptr, ptr %zPtr, align 8
  %33 = load ptr, ptr %zIn.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv38 = trunc i64 %sub.ptr.sub to i32
  %34 = load ptr, ptr %pWorker.addr, align 8
  %call39 = call i32 @SyUriDecode(ptr noundef %31, i32 noundef %conv38, ptr noundef @PH7_VmBlobConsumer, ptr noundef %34, i32 noundef 1)
  %35 = load ptr, ptr %pWorker.addr, align 8
  %nByte40 = getelementptr inbounds nuw %struct.SyBlob, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %nByte40, align 8
  %nByte41 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  store i32 %36, ptr %nByte41, align 8
  %37 = load ptr, ptr %zPtr, align 8
  %incdec.ptr42 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %incdec.ptr42, ptr %zPtr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 0
  store ptr null, ptr %zString, align 8
  %nByte43 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 1
  store i32 0, ptr %nByte43, align 8
  %38 = load ptr, ptr %zPtr, align 8
  %39 = load ptr, ptr %zDelimiter, align 8
  %cmp44 = icmp ult ptr %38, %39
  br i1 %cmp44, label %if.then46, label %if.end58

if.then46:                                        ; preds = %while.end37
  %40 = load ptr, ptr %pWorker.addr, align 8
  %nByte47 = getelementptr inbounds nuw %struct.SyBlob, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %nByte47, align 8
  store i32 %41, ptr %nOfft, align 4
  %42 = load ptr, ptr %zPtr, align 8
  %43 = load ptr, ptr %zDelimiter, align 8
  %44 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast48 = ptrtoint ptr %43 to i64
  %sub.ptr.rhs.cast49 = ptrtoint ptr %44 to i64
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49
  %conv51 = trunc i64 %sub.ptr.sub50 to i32
  %45 = load ptr, ptr %pWorker.addr, align 8
  %call52 = call i32 @SyUriDecode(ptr noundef %42, i32 noundef %conv51, ptr noundef @PH7_VmBlobConsumer, ptr noundef %45, i32 noundef 1)
  %46 = load ptr, ptr %pWorker.addr, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %pBlob, align 8
  %48 = load i32, ptr %nOfft, align 4
  %idxprom53 = zext i32 %48 to i64
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %47, i64 %idxprom53
  %zString55 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 0
  store ptr %arrayidx54, ptr %zString55, align 8
  %49 = load ptr, ptr %pWorker.addr, align 8
  %nByte56 = getelementptr inbounds nuw %struct.SyBlob, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %nByte56, align 8
  %51 = load i32, ptr %nOfft, align 4
  %sub = sub i32 %50, %51
  %nByte57 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 1
  store i32 %sub, ptr %nByte57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then46, %while.end37
  %52 = load ptr, ptr %zDelimiter, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %arrayidx59, ptr %zIn.addr, align 8
  %53 = load ptr, ptr %pWorker.addr, align 8
  %pBlob60 = getelementptr inbounds nuw %struct.SyBlob, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %pBlob60, align 8
  %zString61 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %54, ptr %zString61, align 8
  %55 = load ptr, ptr %pCookie, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %x, align 8
  %zString62 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %57 = load ptr, ptr %zString62, align 8
  %nByte63 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %58 = load i32, ptr %nByte63, align 8
  %zString64 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 0
  %59 = load ptr, ptr %zString64, align 8
  %nByte65 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 1
  %60 = load i32, ptr %nByte65, align 8
  %call66 = call i32 @VmHashmapInsert(ptr noundef %56, ptr noundef %57, i32 noundef %58, ptr noundef %59, i32 noundef %60)
  br label %for.cond

for.end:                                          ; preds = %if.then11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
