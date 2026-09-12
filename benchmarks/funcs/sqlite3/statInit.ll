; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stat4Accum = type { i32, i32, i32, i32, i32, %struct.Stat4Sample, i32, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.Stat4Sample = type { ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_blob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @statInit(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nCol = alloca i32, align 4
  %nKeyCol = alloca i32, align 4
  %nColUp = alloca i32, align 4
  %n = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_int(ptr noundef %2)
  store i32 %call, ptr %nCol, align 4
  %3 = load i32, ptr %nCol, align 4
  %add = add nsw i32 %3, 1
  %and = and i32 %add, -2
  store i32 %and, ptr %nColUp, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_int(ptr noundef %5)
  store i32 %call2, ptr %nKeyCol, align 4
  %6 = load i32, ptr %nColUp, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 4, %conv
  %add3 = add i64 88, %mul
  %7 = load i32, ptr %nColUp, align 4
  %conv4 = sext i32 %7 to i64
  %mul5 = mul i64 4, %conv4
  %add6 = add i64 %add3, %mul5
  %conv7 = trunc i64 %add6 to i32
  store i32 %conv7, ptr %n, align 4
  %8 = load ptr, ptr %context.addr, align 8
  %call8 = call ptr @sqlite3_context_db_handle(ptr noundef %8)
  store ptr %call8, ptr %db, align 8
  %9 = load ptr, ptr %db, align 8
  %10 = load i32, ptr %n, align 4
  %conv9 = sext i32 %10 to i64
  %call10 = call ptr @sqlite3DbMallocZero(ptr noundef %9, i64 noundef %conv9)
  store ptr %call10, ptr %p, align 8
  %11 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %12)
  br label %return

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %db, align 8
  %14 = load ptr, ptr %p, align 8
  %db12 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %14, i32 0, i32 13
  store ptr %13, ptr %db12, align 8
  %15 = load ptr, ptr %p, align 8
  %nRow = getelementptr inbounds nuw %struct.Stat4Accum, ptr %15, i32 0, i32 0
  store i32 0, ptr %nRow, align 8
  %16 = load i32, ptr %nCol, align 4
  %17 = load ptr, ptr %p, align 8
  %nCol13 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %17, i32 0, i32 2
  store i32 %16, ptr %nCol13, align 8
  %18 = load i32, ptr %nKeyCol, align 4
  %19 = load ptr, ptr %p, align 8
  %nKeyCol14 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %19, i32 0, i32 3
  store i32 %18, ptr %nKeyCol14, align 4
  %20 = load ptr, ptr %p, align 8
  %arrayidx15 = getelementptr inbounds %struct.Stat4Accum, ptr %20, i64 1
  %21 = load ptr, ptr %p, align 8
  %current = getelementptr inbounds nuw %struct.Stat4Accum, ptr %21, i32 0, i32 5
  %anDLt = getelementptr inbounds nuw %struct.Stat4Sample, ptr %current, i32 0, i32 1
  store ptr %arrayidx15, ptr %anDLt, align 8
  %22 = load ptr, ptr %p, align 8
  %current16 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %22, i32 0, i32 5
  %anDLt17 = getelementptr inbounds nuw %struct.Stat4Sample, ptr %current16, i32 0, i32 1
  %23 = load ptr, ptr %anDLt17, align 8
  %24 = load i32, ptr %nColUp, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %23, i64 %idxprom
  %25 = load ptr, ptr %p, align 8
  %current19 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %25, i32 0, i32 5
  %anEq = getelementptr inbounds nuw %struct.Stat4Sample, ptr %current19, i32 0, i32 0
  store ptr %arrayidx18, ptr %anEq, align 8
  %26 = load ptr, ptr %context.addr, align 8
  %27 = load ptr, ptr %p, align 8
  call void @sqlite3_result_blob(ptr noundef %26, ptr noundef %27, i32 noundef 88, ptr noundef @stat4Destructor)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @stat4Destructor(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
