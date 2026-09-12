; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3RunParser(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VMPrintf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3NestedParse(ptr noundef %pParse, ptr noundef %zFormat, ...) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %zSql = alloca ptr, align 8
  %zErrMsg = alloca ptr, align 8
  %db = alloca ptr, align 8
  %saveBuf = alloca [160 x i8], align 16
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr null, ptr %zErrMsg, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %nErr, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %4 = load ptr, ptr %db, align 8
  %5 = load ptr, ptr %zFormat.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call ptr @sqlite3VMPrintf(ptr noundef %4, ptr noundef %5, ptr noundef %arraydecay2)
  store ptr %call, ptr %zSql, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay3)
  %6 = load ptr, ptr %zSql, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 19
  %8 = load i8, ptr %mallocFailed, align 1
  %tobool5 = icmp ne i8 %8, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then4
  %9 = load ptr, ptr %pParse.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 3
  store i32 18, ptr %rc, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  %10 = load ptr, ptr %pParse.addr, align 8
  %nErr8 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 16
  %11 = load i32, ptr %nErr8, align 8
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nErr8, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %12 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %12, i32 0, i32 6
  %13 = load i8, ptr %nested, align 2
  %inc10 = add i8 %13, 1
  store i8 %inc10, ptr %nested, align 2
  %arraydecay11 = getelementptr inbounds [160 x i8], ptr %saveBuf, i64 0, i64 0
  %14 = load ptr, ptr %pParse.addr, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %14, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay11, ptr align 1 %add.ptr, i64 160, i1 false)
  %15 = load ptr, ptr %pParse.addr, align 8
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %15, i64 256
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr12, i8 0, i64 160, i1 false)
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %zSql, align 8
  %call13 = call i32 @sqlite3RunParser(ptr noundef %16, ptr noundef %17, ptr noundef %zErrMsg)
  %18 = load ptr, ptr %db, align 8
  %19 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3DbFree(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %db, align 8
  %21 = load ptr, ptr %zSql, align 8
  call void @sqlite3DbFree(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %pParse.addr, align 8
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %22, i64 256
  %arraydecay15 = getelementptr inbounds [160 x i8], ptr %saveBuf, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr14, ptr align 16 %arraydecay15, i64 160, i1 false)
  %23 = load ptr, ptr %pParse.addr, align 8
  %nested16 = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 6
  %24 = load i8, ptr %nested16, align 2
  %dec = add i8 %24, -1
  store i8 %dec, ptr %nested16, align 2
  br label %return

return:                                           ; preds = %if.end9, %if.end7, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
