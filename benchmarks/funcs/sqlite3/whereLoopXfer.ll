; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.anon.20 = type { i32, i8, i8, i16, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopResize(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopXfer(ptr noundef %db, ptr noundef %pTo, ptr noundef %pFrom) #2 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pTo.addr = alloca ptr, align 8
  %pFrom.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTo, ptr %pTo.addr, align 8
  store ptr %pFrom, ptr %pFrom.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %pTo.addr, align 8
  call void @whereLoopClearUnion(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %pTo.addr, align 8
  %4 = load ptr, ptr %pFrom.addr, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %4, i32 0, i32 9
  %5 = load i16, ptr %nLTerm, align 4
  %conv = zext i16 %5 to i32
  %call = call i32 @whereLoopResize(ptr noundef %2, ptr noundef %3, i32 noundef %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pTo.addr, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %6, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr align 8 %u, i8 0, i64 16, i1 false)
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pTo.addr, align 8
  %8 = load ptr, ptr %pFrom.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 48, i1 false)
  %9 = load ptr, ptr %pTo.addr, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %aLTerm, align 8
  %11 = load ptr, ptr %pFrom.addr, align 8
  %aLTerm1 = getelementptr inbounds nuw %struct.WhereLoop, ptr %11, i32 0, i32 12
  %12 = load ptr, ptr %aLTerm1, align 8
  %13 = load ptr, ptr %pTo.addr, align 8
  %nLTerm2 = getelementptr inbounds nuw %struct.WhereLoop, ptr %13, i32 0, i32 9
  %14 = load i16, ptr %nLTerm2, align 4
  %conv3 = zext i16 %14 to i64
  %mul = mul i64 %conv3, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %12, i64 %mul, i1 false)
  %15 = load ptr, ptr %pFrom.addr, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %wsFlags, align 8
  %and = and i32 %16, 1024
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %17 = load ptr, ptr %pFrom.addr, align 8
  %u6 = getelementptr inbounds nuw %struct.WhereLoop, ptr %17, i32 0, i32 7
  %needFree = getelementptr inbounds nuw %struct.anon.20, ptr %u6, i32 0, i32 1
  store i8 0, ptr %needFree, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %18 = load ptr, ptr %pFrom.addr, align 8
  %wsFlags7 = getelementptr inbounds nuw %struct.WhereLoop, ptr %18, i32 0, i32 8
  %19 = load i32, ptr %wsFlags7, align 8
  %and8 = and i32 %19, 16384
  %cmp = icmp ne i32 %and8, 0
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %20 = load ptr, ptr %pFrom.addr, align 8
  %u11 = getelementptr inbounds nuw %struct.WhereLoop, ptr %20, i32 0, i32 7
  %pIndex = getelementptr inbounds nuw %struct.anon.19, ptr %u11, i32 0, i32 4
  store ptr null, ptr %pIndex, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopClearUnion(ptr noundef, ptr noundef) #2

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
