; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapIsIntKey(ptr noundef %pKey) #1 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  %0 = load ptr, ptr %pKey.addr, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBlob, align 8
  store ptr %1, ptr %zIn, align 8
  %2 = load ptr, ptr %zIn, align 8
  %3 = load ptr, ptr %pKey.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nByte, align 8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %5 = load ptr, ptr %zEnd, align 8
  %6 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %cmp = icmp sgt i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %zIn, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 48
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %zIn, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %land.lhs.true14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load ptr, ptr %zIn, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %12 to i32
  %cmp12 = icmp eq i32 %conv11, 43
  br i1 %cmp12, label %land.lhs.true14, label %if.end19

land.lhs.true14:                                  ; preds = %lor.lhs.false, %if.end
  %13 = load ptr, ptr %zIn, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load ptr, ptr %zEnd, align 8
  %cmp16 = icmp ult ptr %arrayidx15, %14
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true14
  %15 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true14, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %if.end35, %if.end19
  %16 = load ptr, ptr %zIn, align 8
  %17 = load ptr, ptr %zEnd, align 8
  %cmp20 = icmp uge ptr %16, %17
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %for.cond
  %18 = load ptr, ptr %zIn, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %19 to i32
  %cmp26 = icmp sge i32 %conv25, 192
  br i1 %cmp26, label %if.then34, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end23
  %call = call ptr @__ctype_b_loc() #2
  %20 = load ptr, ptr %call, align 8
  %21 = load ptr, ptr %zIn, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %22 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %20, i64 %idxprom31
  %23 = load i16, ptr %arrayidx32, align 2
  %conv33 = zext i16 %23 to i32
  %and = and i32 %conv33, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end35, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false28, %if.end23
  br label %for.end

if.end35:                                         ; preds = %lor.lhs.false28
  %24 = load ptr, ptr %zIn, align 8
  %incdec.ptr36 = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %incdec.ptr36, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then34
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then22, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
