; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.391 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.392 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_finalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_step(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_column_text(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_errmsg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SetString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @execSql(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %zSql) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zSubSql = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %zSql.addr, align 8
  %call = call i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef %1, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rc, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.end
  %4 = load ptr, ptr %pStmt, align 8
  %call1 = call i32 @sqlite3_step(ptr noundef %4)
  store i32 %call1, ptr %rc, align 4
  %cmp2 = icmp eq i32 100, %call1
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %pStmt, align 8
  %call3 = call ptr @sqlite3_column_text(ptr noundef %5, i32 noundef 0)
  store ptr %call3, ptr %zSubSql, align 8
  %6 = load ptr, ptr %zSubSql, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.body
  %7 = load ptr, ptr %zSubSql, align 8
  %call4 = call i32 @strncmp(ptr noundef %7, ptr noundef @.str.391, i64 noundef 3) #2
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load ptr, ptr %zSubSql, align 8
  %call6 = call i32 @strncmp(ptr noundef %8, ptr noundef @.str.392, i64 noundef 3) #2
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load ptr, ptr %pzErrMsg.addr, align 8
  %11 = load ptr, ptr %zSubSql, align 8
  %call9 = call i32 @execSql(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  store i32 %call9, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %12, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  br label %while.end

if.end12:                                         ; preds = %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %lor.lhs.false, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then11, %while.cond
  %13 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %13, 101
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.end
  store i32 0, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %while.end
  %14 = load i32, ptr %rc, align 4
  %tobool17 = icmp ne i32 %14, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %15 = load ptr, ptr %pzErrMsg.addr, align 8
  %16 = load ptr, ptr %db.addr, align 8
  %17 = load ptr, ptr %db.addr, align 8
  %call19 = call ptr @sqlite3_errmsg(ptr noundef %17)
  call void @sqlite3SetString(ptr noundef %15, ptr noundef %16, ptr noundef %call19)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %18 = load ptr, ptr %pStmt, align 8
  %call21 = call i32 @sqlite3_finalize(ptr noundef %18)
  %19 = load i32, ptr %rc, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
