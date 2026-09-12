; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

@.str.398 = external hidden unnamed_addr constant [40 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSafetyNotNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeUnbind(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pVar = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %call = call i32 @vdbeSafetyNotNull(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @sqlite3MisuseError(i32 noundef 82937)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load ptr, ptr %p.addr, align 8
  %magic = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %magic, align 4
  %cmp = icmp ne i32 %5, 770837923
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8
  %pc = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 10
  %7 = load i32, ptr %pc, align 4
  %cmp2 = icmp sge i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load ptr, ptr %p.addr, align 8
  %db4 = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db4, align 8
  call void @sqlite3Error(ptr noundef %9, i32 noundef 21)
  %10 = load ptr, ptr %p.addr, align 8
  %db5 = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %db5, align 8
  %mutex6 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %mutex6, align 8
  call void @sqlite3_mutex_leave(ptr noundef %12)
  %13 = load ptr, ptr %p.addr, align 8
  %zSql = getelementptr inbounds nuw %struct.Vdbe, ptr %13, i32 0, i32 41
  %14 = load ptr, ptr %zSql, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef @.str.398, ptr noundef %14)
  %call7 = call i32 @sqlite3MisuseError(i32 noundef 82945)
  store i32 %call7, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %15 = load i32, ptr %i.addr, align 4
  %cmp9 = icmp slt i32 %15, 1
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end8
  %16 = load i32, ptr %i.addr, align 4
  %17 = load ptr, ptr %p.addr, align 8
  %nVar = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 4
  %18 = load i16, ptr %nVar, align 8
  %conv = sext i16 %18 to i32
  %cmp11 = icmp sgt i32 %16, %conv
  br i1 %cmp11, label %if.then13, label %if.end17

if.then13:                                        ; preds = %lor.lhs.false10, %if.end8
  %19 = load ptr, ptr %p.addr, align 8
  %db14 = getelementptr inbounds nuw %struct.Vdbe, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %db14, align 8
  call void @sqlite3Error(ptr noundef %20, i32 noundef 25)
  %21 = load ptr, ptr %p.addr, align 8
  %db15 = getelementptr inbounds nuw %struct.Vdbe, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %db15, align 8
  %mutex16 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %mutex16, align 8
  call void @sqlite3_mutex_leave(ptr noundef %23)
  store i32 25, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false10
  %24 = load i32, ptr %i.addr, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, ptr %i.addr, align 4
  %25 = load ptr, ptr %p.addr, align 8
  %aVar = getelementptr inbounds nuw %struct.Vdbe, ptr %25, i32 0, i32 22
  %26 = load ptr, ptr %aVar, align 8
  %27 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %26, i64 %idxprom
  store ptr %arrayidx, ptr %pVar, align 8
  %28 = load ptr, ptr %pVar, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %28)
  %29 = load ptr, ptr %pVar, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %29, i32 0, i32 1
  store i16 1, ptr %flags, align 8
  %30 = load ptr, ptr %p.addr, align 8
  %db18 = getelementptr inbounds nuw %struct.Vdbe, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %db18, align 8
  %errCode = getelementptr inbounds nuw %struct.sqlite3, ptr %31, i32 0, i32 12
  store i32 0, ptr %errCode, align 8
  %32 = load ptr, ptr %p.addr, align 8
  %expmask = getelementptr inbounds nuw %struct.Vdbe, ptr %32, i32 0, i32 46
  %33 = load i32, ptr %expmask, align 4
  %cmp19 = icmp ne i32 %33, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end17
  %34 = load ptr, ptr %p.addr, align 8
  %expmask21 = getelementptr inbounds nuw %struct.Vdbe, ptr %34, i32 0, i32 46
  %35 = load i32, ptr %expmask21, align 4
  %36 = load i32, ptr %i.addr, align 4
  %cmp22 = icmp sge i32 %36, 31
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %37 = load i32, ptr %i.addr, align 4
  %shl = shl i32 1, %37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -2147483648, %cond.true ], [ %shl, %cond.false ]
  %and = and i32 %35, %cond
  %cmp24 = icmp ne i32 %and, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %cond.end
  %38 = load ptr, ptr %p.addr, align 8
  %expired = getelementptr inbounds nuw %struct.Vdbe, ptr %38, i32 0, i32 35
  %bf.load = load i16, ptr %expired, align 1
  %bf.clear = and i16 %bf.load, -4
  %bf.set = or i16 %bf.clear, 1
  store i16 %bf.set, ptr %expired, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %cond.end, %if.end17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then13, %if.then3, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
