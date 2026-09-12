; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RenameCtx = type { ptr, i32, i32, ptr, ptr }
%struct.RenameToken = type { ptr, %struct.Token, ptr }
%struct.Token = type { ptr, i32 }

@.str.1002 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsIdChar(i8 noundef zeroext) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @renameEditSql(ptr noundef %pCtx, ptr noundef %pRename, ptr noundef %zSql, ptr noundef %zNew, i32 noundef %bQuote) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %pRename.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %zNew.addr = alloca ptr, align 8
  %bQuote.addr = alloca i32, align 4
  %nNew = alloca i32, align 4
  %nSql = alloca i32, align 4
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zQuot = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %nQuot = alloca i32, align 4
  %nOut = alloca i32, align 4
  %iOff = alloca i32, align 4
  %pBest = alloca ptr, align 8
  %nReplace = alloca i32, align 4
  %zReplace = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pRename, ptr %pRename.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  store ptr %zNew, ptr %zNew.addr, align 8
  store i32 %bQuote, ptr %bQuote.addr, align 4
  %0 = load ptr, ptr %zNew.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %0)
  store i32 %call, ptr %nNew, align 4
  %1 = load ptr, ptr %zSql.addr, align 8
  %call1 = call i32 @sqlite3Strlen30(ptr noundef %1)
  store i32 %call1, ptr %nSql, align 4
  %2 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @sqlite3_context_db_handle(ptr noundef %2)
  store ptr %call2, ptr %db, align 8
  store i32 0, ptr %rc, align 4
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %zNew.addr, align 8
  %call3 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %3, ptr noundef @.str.1002, ptr noundef %4)
  store ptr %call3, ptr %zQuot, align 8
  %5 = load ptr, ptr %zQuot, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %zQuot, align 8
  %call4 = call i32 @sqlite3Strlen30(ptr noundef %6)
  store i32 %call4, ptr %nQuot, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load i32, ptr %bQuote.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %zQuot, align 8
  store ptr %8, ptr %zNew.addr, align 8
  %9 = load i32, ptr %nQuot, align 4
  store i32 %9, ptr %nNew, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %10 = load ptr, ptr %db, align 8
  %11 = load i32, ptr %nSql, align 4
  %12 = load ptr, ptr %pRename.addr, align 8
  %nList = getelementptr inbounds nuw %struct.RenameCtx, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nList, align 8
  %14 = load i32, ptr %nQuot, align 4
  %mul = mul nsw i32 %13, %14
  %add = add nsw i32 %11, %mul
  %add7 = add nsw i32 %add, 1
  %conv = sext i32 %add7 to i64
  %call8 = call ptr @sqlite3DbMallocZero(ptr noundef %10, i64 noundef %conv)
  store ptr %call8, ptr %zOut, align 8
  %15 = load ptr, ptr %zOut, align 8
  %tobool9 = icmp ne ptr %15, null
  br i1 %tobool9, label %if.then10, label %if.else46

if.then10:                                        ; preds = %if.end6
  %16 = load i32, ptr %nSql, align 4
  store i32 %16, ptr %nOut, align 4
  %17 = load ptr, ptr %zOut, align 8
  %18 = load ptr, ptr %zSql.addr, align 8
  %19 = load i32, ptr %nSql, align 4
  %conv11 = sext i32 %19 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 %conv11, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end42, %if.then10
  %20 = load ptr, ptr %pRename.addr, align 8
  %pList = getelementptr inbounds nuw %struct.RenameCtx, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pList, align 8
  %tobool12 = icmp ne ptr %21, null
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %pRename.addr, align 8
  %call13 = call ptr @renameColumnTokenNext(ptr noundef %22)
  store ptr %call13, ptr %pBest, align 8
  %23 = load ptr, ptr %pBest, align 8
  %t = getelementptr inbounds nuw %struct.RenameToken, ptr %23, i32 0, i32 1
  %z = getelementptr inbounds nuw %struct.Token, ptr %t, i32 0, i32 0
  %24 = load ptr, ptr %z, align 8
  %25 = load i8, ptr %24, align 1
  %call14 = call i32 @sqlite3IsIdChar(i8 noundef zeroext %25)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %while.body
  %26 = load i32, ptr %nNew, align 4
  store i32 %26, ptr %nReplace, align 4
  %27 = load ptr, ptr %zNew.addr, align 8
  store ptr %27, ptr %zReplace, align 8
  br label %if.end18

if.else17:                                        ; preds = %while.body
  %28 = load i32, ptr %nQuot, align 4
  store i32 %28, ptr %nReplace, align 4
  %29 = load ptr, ptr %zQuot, align 8
  store ptr %29, ptr %zReplace, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  %30 = load ptr, ptr %pBest, align 8
  %t19 = getelementptr inbounds nuw %struct.RenameToken, ptr %30, i32 0, i32 1
  %z20 = getelementptr inbounds nuw %struct.Token, ptr %t19, i32 0, i32 0
  %31 = load ptr, ptr %z20, align 8
  %32 = load ptr, ptr %zSql.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv21 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv21, ptr %iOff, align 4
  %33 = load ptr, ptr %pBest, align 8
  %t22 = getelementptr inbounds nuw %struct.RenameToken, ptr %33, i32 0, i32 1
  %n = getelementptr inbounds nuw %struct.Token, ptr %t22, i32 0, i32 1
  %34 = load i32, ptr %n, align 8
  %35 = load i32, ptr %nReplace, align 4
  %cmp23 = icmp ne i32 %34, %35
  br i1 %cmp23, label %if.then25, label %if.end42

if.then25:                                        ; preds = %if.end18
  %36 = load ptr, ptr %zOut, align 8
  %37 = load i32, ptr %iOff, align 4
  %38 = load i32, ptr %nReplace, align 4
  %add26 = add i32 %37, %38
  %idxprom = zext i32 %add26 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %36, i64 %idxprom
  %39 = load ptr, ptr %zOut, align 8
  %40 = load i32, ptr %iOff, align 4
  %41 = load ptr, ptr %pBest, align 8
  %t27 = getelementptr inbounds nuw %struct.RenameToken, ptr %41, i32 0, i32 1
  %n28 = getelementptr inbounds nuw %struct.Token, ptr %t27, i32 0, i32 1
  %42 = load i32, ptr %n28, align 8
  %add29 = add i32 %40, %42
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %39, i64 %idxprom30
  %43 = load i32, ptr %nOut, align 4
  %44 = load i32, ptr %iOff, align 4
  %45 = load ptr, ptr %pBest, align 8
  %t32 = getelementptr inbounds nuw %struct.RenameToken, ptr %45, i32 0, i32 1
  %n33 = getelementptr inbounds nuw %struct.Token, ptr %t32, i32 0, i32 1
  %46 = load i32, ptr %n33, align 8
  %add34 = add i32 %44, %46
  %sub = sub i32 %43, %add34
  %conv35 = zext i32 %sub to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %arrayidx31, i64 %conv35, i1 false)
  %47 = load i32, ptr %nReplace, align 4
  %48 = load ptr, ptr %pBest, align 8
  %t36 = getelementptr inbounds nuw %struct.RenameToken, ptr %48, i32 0, i32 1
  %n37 = getelementptr inbounds nuw %struct.Token, ptr %t36, i32 0, i32 1
  %49 = load i32, ptr %n37, align 8
  %sub38 = sub i32 %47, %49
  %50 = load i32, ptr %nOut, align 4
  %add39 = add i32 %50, %sub38
  store i32 %add39, ptr %nOut, align 4
  %51 = load ptr, ptr %zOut, align 8
  %52 = load i32, ptr %nOut, align 4
  %idxprom40 = sext i32 %52 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %51, i64 %idxprom40
  store i8 0, ptr %arrayidx41, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then25, %if.end18
  %53 = load ptr, ptr %zOut, align 8
  %54 = load i32, ptr %iOff, align 4
  %idxprom43 = sext i32 %54 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %53, i64 %idxprom43
  %55 = load ptr, ptr %zReplace, align 8
  %56 = load i32, ptr %nReplace, align 4
  %conv45 = zext i32 %56 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx44, ptr align 1 %55, i64 %conv45, i1 false)
  %57 = load ptr, ptr %db, align 8
  %58 = load ptr, ptr %pBest, align 8
  call void @sqlite3DbFree(ptr noundef %57, ptr noundef %58)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %59 = load ptr, ptr %pCtx.addr, align 8
  %60 = load ptr, ptr %zOut, align 8
  call void @sqlite3_result_text(ptr noundef %59, ptr noundef %60, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  %61 = load ptr, ptr %db, align 8
  %62 = load ptr, ptr %zOut, align 8
  call void @sqlite3DbFree(ptr noundef %61, ptr noundef %62)
  br label %if.end47

if.else46:                                        ; preds = %if.end6
  store i32 7, ptr %rc, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %while.end
  %63 = load ptr, ptr %zQuot, align 8
  call void @sqlite3_free(ptr noundef %63)
  %64 = load i32, ptr %rc, align 4
  store i32 %64, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end47, %if.then
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: nounwind uwtable
declare hidden ptr @renameColumnTokenNext(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
