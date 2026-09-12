; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden i32 @saveAllCursors(ptr noundef %pBt, i32 noundef %iRoot, ptr noundef %pExcept) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %iRoot.addr = alloca i32, align 4
  %pExcept.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %iRoot, ptr %iRoot.addr, align 4
  store ptr %pExcept, ptr %pExcept.addr, align 8
  %0 = load ptr, ptr %pBt.addr, align 8
  %pCursor = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pCursor, align 8
  store ptr %1, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8
  %4 = load ptr, ptr %pExcept.addr, align 8
  %cmp = icmp ne ptr %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, ptr %iRoot.addr, align 4
  %cmp1 = icmp eq i32 0, %5
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load ptr, ptr %p, align 8
  %pgnoRoot = getelementptr inbounds nuw %struct.BtCursor, ptr %6, i32 0, i32 12
  %7 = load i32, ptr %pgnoRoot, align 8
  %8 = load i32, ptr %iRoot.addr, align 4
  %cmp2 = icmp eq i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %pNext, align 8
  store ptr %10, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load ptr, ptr %p, align 8
  %tobool3 = icmp ne ptr %11, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.end
  %12 = load ptr, ptr %p, align 8
  %13 = load i32, ptr %iRoot.addr, align 4
  %14 = load ptr, ptr %pExcept.addr, align 8
  %call = call i32 @saveCursorsOnList(ptr noundef %12, i32 noundef %13, ptr noundef %14)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %for.end
  %15 = load ptr, ptr %pExcept.addr, align 8
  %tobool6 = icmp ne ptr %15, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %16 = load ptr, ptr %pExcept.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %16, i32 0, i32 1
  %17 = load i8, ptr %curFlags, align 1
  %conv = zext i8 %17 to i32
  %and = and i32 %conv, -33
  %conv8 = trunc i32 %and to i8
  store i8 %conv8, ptr %curFlags, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then4
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
declare hidden i32 @saveCursorsOnList(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
