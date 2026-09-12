; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VMPrintf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeExplain(ptr noundef %pParse, i8 noundef zeroext %bPush, ptr noundef %zFmt, ...) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %bPush.addr = alloca i8, align 1
  %zFmt.addr = alloca ptr, align 8
  %zMsg = alloca ptr, align 8
  %v = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %iThis = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i8 %bPush, ptr %bPush.addr, align 1
  store ptr %zFmt, ptr %zFmt.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %explain = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 50
  %1 = load i8, ptr %explain, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %2 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %zFmt.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call ptr @sqlite3VMPrintf(ptr noundef %3, ptr noundef %4, ptr noundef %arraydecay2)
  store ptr %call, ptr %zMsg, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay3)
  %5 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pVdbe, align 8
  store ptr %6, ptr %v, align 8
  %7 = load ptr, ptr %v, align 8
  %nOp = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 24
  %8 = load i32, ptr %nOp, align 8
  store i32 %8, ptr %iThis, align 4
  %9 = load ptr, ptr %v, align 8
  %10 = load i32, ptr %iThis, align 4
  %11 = load ptr, ptr %pParse.addr, align 8
  %addrExplain = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 54
  %12 = load i32, ptr %addrExplain, align 8
  %13 = load ptr, ptr %zMsg, align 8
  %call4 = call i32 @sqlite3VdbeAddOp4(ptr noundef %9, i32 noundef 171, i32 noundef %10, i32 noundef %12, i32 noundef 0, ptr noundef %13, i32 noundef -7)
  %14 = load i8, ptr %bPush.addr, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %15 = load i32, ptr %iThis, align 4
  %16 = load ptr, ptr %pParse.addr, align 8
  %addrExplain6 = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 54
  store i32 %15, ptr %addrExplain6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
