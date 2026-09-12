; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @resizeIndexObject(ptr noundef %db, ptr noundef %pIdx, i32 noundef %N) #1 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %zExtra = alloca ptr, align 8
  %nByte = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load ptr, ptr %pIdx.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 14
  %1 = load i16, ptr %nColumn, align 8
  %conv = zext i16 %1 to i32
  %2 = load i32, ptr %N.addr, align 4
  %cmp = icmp sge i32 %conv, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %N.addr, align 4
  %conv2 = sext i32 %3 to i64
  %mul = mul i64 11, %conv2
  %conv3 = trunc i64 %mul to i32
  store i32 %conv3, ptr %nByte, align 4
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load i32, ptr %nByte, align 4
  %conv4 = sext i32 %5 to i64
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %4, i64 noundef %conv4)
  store ptr %call, ptr %zExtra, align 8
  %6 = load ptr, ptr %zExtra, align 8
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr %zExtra, align 8
  %8 = load ptr, ptr %pIdx.addr, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %azColl, align 8
  %10 = load ptr, ptr %pIdx.addr, align 8
  %nColumn9 = getelementptr inbounds nuw %struct.Index, ptr %10, i32 0, i32 14
  %11 = load i16, ptr %nColumn9, align 8
  %conv10 = zext i16 %11 to i64
  %mul11 = mul i64 8, %conv10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 8 %9, i64 %mul11, i1 false)
  %12 = load ptr, ptr %zExtra, align 8
  %13 = load ptr, ptr %pIdx.addr, align 8
  %azColl12 = getelementptr inbounds nuw %struct.Index, ptr %13, i32 0, i32 8
  store ptr %12, ptr %azColl12, align 8
  %14 = load i32, ptr %N.addr, align 4
  %conv13 = sext i32 %14 to i64
  %mul14 = mul i64 8, %conv13
  %15 = load ptr, ptr %zExtra, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %15, i64 %mul14
  store ptr %add.ptr, ptr %zExtra, align 8
  %16 = load ptr, ptr %zExtra, align 8
  %17 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %aiColumn, align 8
  %19 = load ptr, ptr %pIdx.addr, align 8
  %nColumn15 = getelementptr inbounds nuw %struct.Index, ptr %19, i32 0, i32 14
  %20 = load i16, ptr %nColumn15, align 8
  %conv16 = zext i16 %20 to i64
  %mul17 = mul i64 2, %conv16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 2 %18, i64 %mul17, i1 false)
  %21 = load ptr, ptr %zExtra, align 8
  %22 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn18 = getelementptr inbounds nuw %struct.Index, ptr %22, i32 0, i32 1
  store ptr %21, ptr %aiColumn18, align 8
  %23 = load i32, ptr %N.addr, align 4
  %conv19 = sext i32 %23 to i64
  %mul20 = mul i64 2, %conv19
  %24 = load ptr, ptr %zExtra, align 8
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %24, i64 %mul20
  store ptr %add.ptr21, ptr %zExtra, align 8
  %25 = load ptr, ptr %zExtra, align 8
  %26 = load ptr, ptr %pIdx.addr, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 7
  %27 = load ptr, ptr %aSortOrder, align 8
  %28 = load ptr, ptr %pIdx.addr, align 8
  %nColumn22 = getelementptr inbounds nuw %struct.Index, ptr %28, i32 0, i32 14
  %29 = load i16, ptr %nColumn22, align 8
  %conv23 = zext i16 %29 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %27, i64 %conv23, i1 false)
  %30 = load ptr, ptr %zExtra, align 8
  %31 = load ptr, ptr %pIdx.addr, align 8
  %aSortOrder24 = getelementptr inbounds nuw %struct.Index, ptr %31, i32 0, i32 7
  store ptr %30, ptr %aSortOrder24, align 8
  %32 = load i32, ptr %N.addr, align 4
  %conv25 = trunc i32 %32 to i16
  %33 = load ptr, ptr %pIdx.addr, align 8
  %nColumn26 = getelementptr inbounds nuw %struct.Index, ptr %33, i32 0, i32 14
  store i16 %conv25, ptr %nColumn26, align 8
  %34 = load ptr, ptr %pIdx.addr, align 8
  %isResized = getelementptr inbounds nuw %struct.Index, ptr %34, i32 0, i32 16
  %bf.load = load i16, ptr %isResized, align 1
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, 16
  store i16 %bf.set, ptr %isResized, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
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
