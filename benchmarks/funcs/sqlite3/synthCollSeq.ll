; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

@synthCollSeq.aEnc = external hidden constant [3 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindCollSeq(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @synthCollSeq(ptr noundef %db, ptr noundef %pColl) #1 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pColl.addr = alloca ptr, align 8
  %pColl2 = alloca ptr, align 8
  %z = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pColl, ptr %pColl.addr, align 8
  %0 = load ptr, ptr %pColl.addr, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %zName, align 8
  store ptr %1, ptr %z, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @synthCollSeq.aEnc, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %6 = load ptr, ptr %z, align 8
  %call = call ptr @sqlite3FindCollSeq(ptr noundef %3, i8 noundef zeroext %5, ptr noundef %6, i32 noundef 0)
  store ptr %call, ptr %pColl2, align 8
  %7 = load ptr, ptr %pColl2, align 8
  %xCmp = getelementptr inbounds nuw %struct.CollSeq, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %xCmp, align 8
  %cmp1 = icmp ne ptr %8, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %pColl.addr, align 8
  %10 = load ptr, ptr %pColl2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %10, i64 40, i1 false)
  %11 = load ptr, ptr %pColl.addr, align 8
  %xDel = getelementptr inbounds nuw %struct.CollSeq, ptr %11, i32 0, i32 4
  store ptr null, ptr %xDel, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

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
