; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

@.str.553 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.554 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.626 = external hidden unnamed_addr constant [9 x i8], align 1

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
define hidden i32 @VmHttpSplitEncodedQuery(ptr noundef %pVm, ptr noundef %pQuery, ptr noundef %pWorker, i32 noundef %is_post) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pQuery.addr = alloca ptr, align 8
  %pWorker.addr = alloca ptr, align 8
  %is_post.addr = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %pGet = alloca ptr, align 8
  %pRequest = alloca ptr, align 8
  %sName = alloca %struct.SyString, align 8
  %sValue = alloca %struct.SyString, align 8
  %zPtr = alloca ptr, align 8
  %nBlobOfft = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pQuery, ptr %pQuery.addr, align 8
  store ptr %pWorker, ptr %pWorker.addr, align 8
  store i32 %is_post, ptr %is_post.addr, align 4
  %0 = load ptr, ptr %pQuery.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %zString, align 8
  %2 = load ptr, ptr %pQuery.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nByte, align 8
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %4 = load ptr, ptr %pQuery.addr, align 8
  %zString1 = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zString1, align 8
  store ptr %5, ptr %zIn, align 8
  %6 = load i32, ptr %is_post.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pVm.addr, align 8
  %call = call ptr @VmExtractSuper(ptr noundef %7, ptr noundef @.str.554, i32 noundef 5)
  store ptr %call, ptr %pGet, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pVm.addr, align 8
  %call2 = call ptr @VmExtractSuper(ptr noundef %8, ptr noundef @.str.553, i32 noundef 4)
  store ptr %call2, ptr %pGet, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %pVm.addr, align 8
  %call3 = call ptr @VmExtractSuper(ptr noundef %9, ptr noundef @.str.626, i32 noundef 8)
  store ptr %call3, ptr %pRequest, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end109, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %10 = load ptr, ptr %zIn, align 8
  %11 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %10, %11
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call4 = call ptr @__ctype_b_loc() #2
  %12 = load ptr, ptr %call4, align 8
  %13 = load ptr, ptr %zIn, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx5, align 1
  %conv = sext i8 %14 to i32
  %idxprom6 = sext i32 %conv to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %12, i64 %idxprom6
  %15 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %15 to i32
  %and = and i32 %conv8, 8192
  %tobool9 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %tobool9, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %18 = load ptr, ptr %zIn, align 8
  %19 = load ptr, ptr %zEnd, align 8
  %cmp10 = icmp uge ptr %18, %19
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.end
  br label %for.end

if.end13:                                         ; preds = %while.end
  %20 = load ptr, ptr %zIn, align 8
  store ptr %20, ptr %zPtr, align 8
  br label %while.cond14

while.cond14:                                     ; preds = %while.body32, %if.end13
  %21 = load ptr, ptr %zPtr, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %cmp15 = icmp ult ptr %21, %22
  br i1 %cmp15, label %land.lhs.true, label %land.end31

land.lhs.true:                                    ; preds = %while.cond14
  %23 = load ptr, ptr %zPtr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %24 to i32
  %cmp19 = icmp ne i32 %conv18, 61
  br i1 %cmp19, label %land.lhs.true21, label %land.end31

land.lhs.true21:                                  ; preds = %land.lhs.true
  %25 = load ptr, ptr %zPtr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %26 to i32
  %cmp24 = icmp ne i32 %conv23, 38
  br i1 %cmp24, label %land.rhs26, label %land.end31

land.rhs26:                                       ; preds = %land.lhs.true21
  %27 = load ptr, ptr %zPtr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %28 to i32
  %cmp29 = icmp ne i32 %conv28, 59
  br label %land.end31

land.end31:                                       ; preds = %land.rhs26, %land.lhs.true21, %land.lhs.true, %while.cond14
  %29 = phi i1 [ false, %land.lhs.true21 ], [ false, %land.lhs.true ], [ false, %while.cond14 ], [ %cmp29, %land.rhs26 ]
  br i1 %29, label %while.body32, label %while.end34

while.body32:                                     ; preds = %land.end31
  %30 = load ptr, ptr %zPtr, align 8
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr33, ptr %zPtr, align 8
  br label %while.cond14, !llvm.loop !8

while.end34:                                      ; preds = %land.end31
  %31 = load ptr, ptr %pWorker.addr, align 8
  %call35 = call i32 @SyBlobReset(ptr noundef %31)
  %32 = load ptr, ptr %zIn, align 8
  %33 = load ptr, ptr %zPtr, align 8
  %34 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv36 = trunc i64 %sub.ptr.sub to i32
  %35 = load ptr, ptr %pWorker.addr, align 8
  %call37 = call i32 @SyUriDecode(ptr noundef %32, i32 noundef %conv36, ptr noundef @PH7_VmBlobConsumer, ptr noundef %35, i32 noundef 1)
  %36 = load ptr, ptr %pWorker.addr, align 8
  %nByte38 = getelementptr inbounds nuw %struct.SyBlob, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %nByte38, align 8
  %nByte39 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  store i32 %37, ptr %nByte39, align 8
  %zString40 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 0
  store ptr null, ptr %zString40, align 8
  %nByte41 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 1
  store i32 0, ptr %nByte41, align 8
  %38 = load ptr, ptr %zPtr, align 8
  %39 = load ptr, ptr %zEnd, align 8
  %cmp42 = icmp ult ptr %38, %39
  br i1 %cmp42, label %land.lhs.true44, label %if.end83

land.lhs.true44:                                  ; preds = %while.end34
  %40 = load ptr, ptr %zPtr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %40, i64 0
  %41 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %41 to i32
  %cmp47 = icmp eq i32 %conv46, 61
  br i1 %cmp47, label %if.then49, label %if.end83

if.then49:                                        ; preds = %land.lhs.true44
  %42 = load ptr, ptr %zPtr, align 8
  %incdec.ptr50 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %incdec.ptr50, ptr %zPtr, align 8
  %43 = load ptr, ptr %zPtr, align 8
  store ptr %43, ptr %zIn, align 8
  br label %while.cond51

while.cond51:                                     ; preds = %while.body65, %if.then49
  %44 = load ptr, ptr %zPtr, align 8
  %45 = load ptr, ptr %zEnd, align 8
  %cmp52 = icmp ult ptr %44, %45
  br i1 %cmp52, label %land.lhs.true54, label %land.end64

land.lhs.true54:                                  ; preds = %while.cond51
  %46 = load ptr, ptr %zPtr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %47 to i32
  %cmp57 = icmp ne i32 %conv56, 38
  br i1 %cmp57, label %land.rhs59, label %land.end64

land.rhs59:                                       ; preds = %land.lhs.true54
  %48 = load ptr, ptr %zPtr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %48, i64 0
  %49 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %49 to i32
  %cmp62 = icmp ne i32 %conv61, 59
  br label %land.end64

land.end64:                                       ; preds = %land.rhs59, %land.lhs.true54, %while.cond51
  %50 = phi i1 [ false, %land.lhs.true54 ], [ false, %while.cond51 ], [ %cmp62, %land.rhs59 ]
  br i1 %50, label %while.body65, label %while.end67

while.body65:                                     ; preds = %land.end64
  %51 = load ptr, ptr %zPtr, align 8
  %incdec.ptr66 = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr66, ptr %zPtr, align 8
  br label %while.cond51, !llvm.loop !9

while.end67:                                      ; preds = %land.end64
  %52 = load ptr, ptr %zPtr, align 8
  %53 = load ptr, ptr %zIn, align 8
  %cmp68 = icmp ugt ptr %52, %53
  br i1 %cmp68, label %if.then70, label %if.end82

if.then70:                                        ; preds = %while.end67
  %54 = load ptr, ptr %pWorker.addr, align 8
  %nByte71 = getelementptr inbounds nuw %struct.SyBlob, ptr %54, i32 0, i32 2
  %55 = load i32, ptr %nByte71, align 8
  store i32 %55, ptr %nBlobOfft, align 4
  %56 = load ptr, ptr %zIn, align 8
  %57 = load ptr, ptr %zPtr, align 8
  %58 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast72 = ptrtoint ptr %57 to i64
  %sub.ptr.rhs.cast73 = ptrtoint ptr %58 to i64
  %sub.ptr.sub74 = sub i64 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast73
  %conv75 = trunc i64 %sub.ptr.sub74 to i32
  %59 = load ptr, ptr %pWorker.addr, align 8
  %call76 = call i32 @SyUriDecode(ptr noundef %56, i32 noundef %conv75, ptr noundef @PH7_VmBlobConsumer, ptr noundef %59, i32 noundef 1)
  %60 = load ptr, ptr %pWorker.addr, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %pBlob, align 8
  %62 = load i32, ptr %nBlobOfft, align 4
  %idxprom77 = zext i32 %62 to i64
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %61, i64 %idxprom77
  %zString79 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 0
  store ptr %arrayidx78, ptr %zString79, align 8
  %63 = load ptr, ptr %pWorker.addr, align 8
  %nByte80 = getelementptr inbounds nuw %struct.SyBlob, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %nByte80, align 8
  %65 = load i32, ptr %nBlobOfft, align 4
  %sub = sub i32 %64, %65
  %nByte81 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 1
  store i32 %sub, ptr %nByte81, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then70, %while.end67
  %66 = load ptr, ptr %zPtr, align 8
  store ptr %66, ptr %zIn, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %land.lhs.true44, %while.end34
  %67 = load ptr, ptr %pWorker.addr, align 8
  %pBlob84 = getelementptr inbounds nuw %struct.SyBlob, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %pBlob84, align 8
  %zString85 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %68, ptr %zString85, align 8
  %69 = load ptr, ptr %pGet, align 8
  %tobool86 = icmp ne ptr %69, null
  br i1 %tobool86, label %land.lhs.true87, label %if.end96

land.lhs.true87:                                  ; preds = %if.end83
  %70 = load ptr, ptr %pGet, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %iFlags, align 8
  %and88 = and i32 %71, 64
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then90, label %if.end96

if.then90:                                        ; preds = %land.lhs.true87
  %72 = load ptr, ptr %pGet, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %72, i32 0, i32 1
  %73 = load ptr, ptr %x, align 8
  %zString91 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %74 = load ptr, ptr %zString91, align 8
  %nByte92 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %75 = load i32, ptr %nByte92, align 8
  %zString93 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 0
  %76 = load ptr, ptr %zString93, align 8
  %nByte94 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 1
  %77 = load i32, ptr %nByte94, align 8
  %call95 = call i32 @VmHashmapInsert(ptr noundef %73, ptr noundef %74, i32 noundef %75, ptr noundef %76, i32 noundef %77)
  br label %if.end96

if.end96:                                         ; preds = %if.then90, %land.lhs.true87, %if.end83
  %78 = load ptr, ptr %pRequest, align 8
  %tobool97 = icmp ne ptr %78, null
  br i1 %tobool97, label %land.lhs.true98, label %if.end109

land.lhs.true98:                                  ; preds = %if.end96
  %79 = load ptr, ptr %pRequest, align 8
  %iFlags99 = getelementptr inbounds nuw %struct.ph7_value, ptr %79, i32 0, i32 2
  %80 = load i32, ptr %iFlags99, align 8
  %and100 = and i32 %80, 64
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then102, label %if.end109

if.then102:                                       ; preds = %land.lhs.true98
  %81 = load ptr, ptr %pRequest, align 8
  %x103 = getelementptr inbounds nuw %struct.ph7_value, ptr %81, i32 0, i32 1
  %82 = load ptr, ptr %x103, align 8
  %zString104 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %83 = load ptr, ptr %zString104, align 8
  %nByte105 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %84 = load i32, ptr %nByte105, align 8
  %zString106 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 0
  %85 = load ptr, ptr %zString106, align 8
  %nByte107 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 1
  %86 = load i32, ptr %nByte107, align 8
  %call108 = call i32 @VmHashmapInsert(ptr noundef %82, ptr noundef %83, i32 noundef %84, ptr noundef %85, i32 noundef %86)
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %land.lhs.true98, %if.end96
  %87 = load ptr, ptr %zPtr, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %arrayidx110, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then12
  ret i32 0
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
