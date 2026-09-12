; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopResize(ptr noundef %db, ptr noundef %p, i32 noundef %n) #1 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %paNew = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %nLSlot = getelementptr inbounds nuw %struct.WhereLoop, ptr %0, i32 0, i32 11
  %1 = load i16, ptr %nLSlot, align 8
  %conv = zext i16 %1 to i32
  %2 = load i32, ptr %n.addr, align 4
  %cmp = icmp sge i32 %conv, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %3, 7
  %and = and i32 %add, -8
  store i32 %and, ptr %n.addr, align 4
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load i32, ptr %n.addr, align 4
  %conv2 = sext i32 %5 to i64
  %mul = mul i64 8, %conv2
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %4, i64 noundef %mul)
  store ptr %call, ptr %paNew, align 8
  %6 = load ptr, ptr %paNew, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %paNew, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %8, i32 0, i32 12
  %9 = load ptr, ptr %aLTerm, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %nLSlot7 = getelementptr inbounds nuw %struct.WhereLoop, ptr %10, i32 0, i32 11
  %11 = load i16, ptr %nLSlot7, align 8
  %conv8 = zext i16 %11 to i64
  %mul9 = mul i64 8, %conv8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 %mul9, i1 false)
  %12 = load ptr, ptr %p.addr, align 8
  %aLTerm10 = getelementptr inbounds nuw %struct.WhereLoop, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %aLTerm10, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %aLTermSpace = getelementptr inbounds nuw %struct.WhereLoop, ptr %14, i32 0, i32 14
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %aLTermSpace, i64 0, i64 0
  %cmp11 = icmp ne ptr %13, %arraydecay
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end6
  %15 = load ptr, ptr %db.addr, align 8
  %16 = load ptr, ptr %p.addr, align 8
  %aLTerm14 = getelementptr inbounds nuw %struct.WhereLoop, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %aLTerm14, align 8
  call void @sqlite3DbFreeNN(ptr noundef %15, ptr noundef %17)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end6
  %18 = load ptr, ptr %paNew, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %aLTerm16 = getelementptr inbounds nuw %struct.WhereLoop, ptr %19, i32 0, i32 12
  store ptr %18, ptr %aLTerm16, align 8
  %20 = load i32, ptr %n.addr, align 4
  %conv17 = trunc i32 %20 to i16
  %21 = load ptr, ptr %p.addr, align 8
  %nLSlot18 = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 11
  store i16 %conv17, ptr %nLSlot18, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then5, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
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
