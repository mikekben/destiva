; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_VmGetStreamDevice(ptr noundef %pVm, ptr noundef %pzDevice, i32 noundef %nByte) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %pzDevice.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zNext = alloca ptr, align 8
  %apStream = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %sDev = alloca %struct.SyString, align 8
  %sCur = alloca %struct.SyString, align 8
  %n = alloca i32, align 4
  %nEntry = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pzDevice, ptr %pzDevice.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %pzDevice.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %zIn, align 8
  store ptr %1, ptr %zCur, align 8
  store ptr %1, ptr %zNext, align 8
  %2 = load ptr, ptr %zIn, align 8
  %3 = load i32, ptr %nByte.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load ptr, ptr %zIn, align 8
  %5 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %zIn, align 8
  %7 = load ptr, ptr %zEnd, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 -3
  %cmp2 = icmp ult ptr %6, %arrayidx1
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %8 = load ptr, ptr %zIn, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx3, align 1
  %conv = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv, 58
  br i1 %cmp4, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %zIn, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 47
  br i1 %cmp9, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %12 = load ptr, ptr %zIn, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %12, i64 2
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 47
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true11
  %14 = load ptr, ptr %zIn, align 8
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %14, i64 3
  store ptr %arrayidx16, ptr %zNext, align 8
  br label %while.end

if.end:                                           ; preds = %land.lhs.true11, %land.lhs.true6, %land.lhs.true, %while.body
  %15 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %16 = load ptr, ptr %zIn, align 8
  %17 = load ptr, ptr %zEnd, align 8
  %cmp17 = icmp uge ptr %16, %17
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.end
  %18 = load ptr, ptr %pVm.addr, align 8
  %pDefStream = getelementptr inbounds nuw %struct.ph7_vm, ptr %18, i32 0, i32 26
  %19 = load ptr, ptr %pDefStream, align 8
  store ptr %19, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %while.end
  %20 = load ptr, ptr %zCur, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 0
  store ptr %20, ptr %zString, align 8
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv21 = trunc i64 %sub.ptr.sub to i32
  %nByte22 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 1
  store i32 %conv21, ptr %nByte22, align 8
  br label %while.cond23

while.cond23:                                     ; preds = %while.body39, %if.end20
  %nByte24 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 1
  %23 = load i32, ptr %nByte24, align 8
  %cmp25 = icmp ugt i32 %23, 0
  br i1 %cmp25, label %land.lhs.true27, label %land.end

land.lhs.true27:                                  ; preds = %while.cond23
  %zString28 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 0
  %24 = load ptr, ptr %zString28, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %25 to i32
  %cmp31 = icmp slt i32 %conv30, 192
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true27
  %call = call ptr @__ctype_b_loc() #2
  %26 = load ptr, ptr %call, align 8
  %zString33 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 0
  %27 = load ptr, ptr %zString33, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %28 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %arrayidx37 = getelementptr inbounds i16, ptr %26, i64 %idxprom36
  %29 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %29 to i32
  %and = and i32 %conv38, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true27, %while.cond23
  %30 = phi i1 [ false, %land.lhs.true27 ], [ false, %while.cond23 ], [ %tobool, %land.rhs ]
  br i1 %30, label %while.body39, label %while.end43

while.body39:                                     ; preds = %land.end
  %nByte40 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 1
  %31 = load i32, ptr %nByte40, align 8
  %dec = add i32 %31, -1
  store i32 %dec, ptr %nByte40, align 8
  %zString41 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 0
  %32 = load ptr, ptr %zString41, align 8
  %incdec.ptr42 = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %incdec.ptr42, ptr %zString41, align 8
  br label %while.cond23, !llvm.loop !8

while.end43:                                      ; preds = %land.end
  br label %while.cond44

while.cond44:                                     ; preds = %while.body70, %while.end43
  %nByte45 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 1
  %33 = load i32, ptr %nByte45, align 8
  %cmp46 = icmp ugt i32 %33, 0
  br i1 %cmp46, label %land.lhs.true48, label %land.end69

land.lhs.true48:                                  ; preds = %while.cond44
  %zString49 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 0
  %34 = load ptr, ptr %zString49, align 8
  %nByte50 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 1
  %35 = load i32, ptr %nByte50, align 8
  %sub = sub i32 %35, 1
  %idxprom51 = zext i32 %sub to i64
  %arrayidx52 = getelementptr inbounds nuw i8, ptr %34, i64 %idxprom51
  %36 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %36 to i32
  %cmp54 = icmp slt i32 %conv53, 192
  br i1 %cmp54, label %land.rhs56, label %land.end69

land.rhs56:                                       ; preds = %land.lhs.true48
  %call57 = call ptr @__ctype_b_loc() #2
  %37 = load ptr, ptr %call57, align 8
  %zString58 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 0
  %38 = load ptr, ptr %zString58, align 8
  %nByte59 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 1
  %39 = load i32, ptr %nByte59, align 8
  %sub60 = sub i32 %39, 1
  %idxprom61 = zext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %38, i64 %idxprom61
  %40 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %40 to i32
  %idxprom64 = sext i32 %conv63 to i64
  %arrayidx65 = getelementptr inbounds i16, ptr %37, i64 %idxprom64
  %41 = load i16, ptr %arrayidx65, align 2
  %conv66 = zext i16 %41 to i32
  %and67 = and i32 %conv66, 8192
  %tobool68 = icmp ne i32 %and67, 0
  br label %land.end69

land.end69:                                       ; preds = %land.rhs56, %land.lhs.true48, %while.cond44
  %42 = phi i1 [ false, %land.lhs.true48 ], [ false, %while.cond44 ], [ %tobool68, %land.rhs56 ]
  br i1 %42, label %while.body70, label %while.end73

while.body70:                                     ; preds = %land.end69
  %nByte71 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 1
  %43 = load i32, ptr %nByte71, align 8
  %dec72 = add i32 %43, -1
  store i32 %dec72, ptr %nByte71, align 8
  br label %while.cond44, !llvm.loop !9

while.end73:                                      ; preds = %land.end69
  %44 = load ptr, ptr %pVm.addr, align 8
  %aIOstream = getelementptr inbounds nuw %struct.ph7_vm, ptr %44, i32 0, i32 25
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aIOstream, i32 0, i32 1
  %45 = load ptr, ptr %pBase, align 8
  store ptr %45, ptr %apStream, align 8
  %46 = load ptr, ptr %pVm.addr, align 8
  %aIOstream74 = getelementptr inbounds nuw %struct.ph7_vm, ptr %46, i32 0, i32 25
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aIOstream74, i32 0, i32 2
  %47 = load i32, ptr %nUsed, align 8
  store i32 %47, ptr %nEntry, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end73
  %48 = load i32, ptr %n, align 4
  %49 = load i32, ptr %nEntry, align 4
  %cmp75 = icmp ult i32 %48, %49
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load ptr, ptr %apStream, align 8
  %51 = load i32, ptr %n, align 4
  %idxprom77 = zext i32 %51 to i64
  %arrayidx78 = getelementptr inbounds nuw ptr, ptr %50, i64 %idxprom77
  %52 = load ptr, ptr %arrayidx78, align 8
  store ptr %52, ptr %pStream, align 8
  %53 = load ptr, ptr %pStream, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %zName, align 8
  %zString79 = getelementptr inbounds nuw %struct.SyString, ptr %sCur, i32 0, i32 0
  store ptr %54, ptr %zString79, align 8
  %55 = load ptr, ptr %pStream, align 8
  %zName80 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %zName80, align 8
  %call81 = call i32 @SyStrlen(ptr noundef %56)
  %nByte82 = getelementptr inbounds nuw %struct.SyString, ptr %sCur, i32 0, i32 1
  store i32 %call81, ptr %nByte82, align 8
  %nByte83 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 1
  %57 = load i32, ptr %nByte83, align 8
  %nByte84 = getelementptr inbounds nuw %struct.SyString, ptr %sCur, i32 0, i32 1
  %58 = load i32, ptr %nByte84, align 8
  %cmp85 = icmp eq i32 %57, %58
  br i1 %cmp85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %zString87 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 0
  %59 = load ptr, ptr %zString87, align 8
  %zString88 = getelementptr inbounds nuw %struct.SyString, ptr %sCur, i32 0, i32 0
  %60 = load ptr, ptr %zString88, align 8
  %nByte89 = getelementptr inbounds nuw %struct.SyString, ptr %sCur, i32 0, i32 1
  %61 = load i32, ptr %nByte89, align 8
  %call90 = call i32 @SyStrnicmp(ptr noundef %59, ptr noundef %60, i32 noundef %61)
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %nByte91 = getelementptr inbounds nuw %struct.SyString, ptr %sDev, i32 0, i32 1
  %62 = load i32, ptr %nByte91, align 8
  %nByte92 = getelementptr inbounds nuw %struct.SyString, ptr %sCur, i32 0, i32 1
  %63 = load i32, ptr %nByte92, align 8
  %sub93 = sub i32 %62, %63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call90, %cond.true ], [ %sub93, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %64 = load i32, ptr %rc, align 4
  %cmp94 = icmp eq i32 %64, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %cond.end
  %65 = load ptr, ptr %zNext, align 8
  %66 = load ptr, ptr %pzDevice.addr, align 8
  store ptr %65, ptr %66, align 8
  %67 = load ptr, ptr %pStream, align 8
  store ptr %67, ptr %retval, align 8
  br label %return

if.end97:                                         ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end97
  %68 = load i32, ptr %n, align 4
  %inc = add i32 %68, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then96, %if.then19
  %69 = load ptr, ptr %retval, align 8
  ret ptr %69
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
!10 = distinct !{!10, !7}
