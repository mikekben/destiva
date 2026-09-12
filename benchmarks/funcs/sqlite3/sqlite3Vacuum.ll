; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeUsesBtree(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Vacuum(ptr noundef %pParse, ptr noundef %pNm, ptr noundef %pInto) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pNm.addr = alloca ptr, align 8
  %pInto.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %iIntoReg = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pNm, ptr %pNm.addr, align 8
  store ptr %pInto, ptr %pInto.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  store i32 0, ptr %iDb, align 4
  %1 = load ptr, ptr %v, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %build_vacuum_end

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %nErr, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %build_vacuum_end

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %pNm.addr, align 8
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end2
  %5 = load ptr, ptr %pParse.addr, align 8
  %6 = load ptr, ptr %pNm.addr, align 8
  %7 = load ptr, ptr %pNm.addr, align 8
  %call5 = call i32 @sqlite3TwoPartName(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %pNm.addr)
  store i32 %call5, ptr %iDb, align 4
  %8 = load i32, ptr %iDb, align 4
  %cmp6 = icmp slt i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  br label %build_vacuum_end

if.end8:                                          ; preds = %if.then4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end2
  %9 = load i32, ptr %iDb, align 4
  %cmp10 = icmp ne i32 %9, 1
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  store i32 0, ptr %iIntoReg, align 4
  %10 = load ptr, ptr %pInto.addr, align 8
  %tobool12 = icmp ne ptr %10, null
  br i1 %tobool12, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.then11
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load ptr, ptr %pInto.addr, align 8
  %call13 = call i32 @sqlite3ResolveSelfReference(ptr noundef %11, ptr noundef null, i32 noundef 0, ptr noundef %12, ptr noundef null)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 18
  %14 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %iIntoReg, align 4
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %pInto.addr, align 8
  %17 = load i32, ptr %iIntoReg, align 4
  call void @sqlite3ExprCode(ptr noundef %15, ptr noundef %16, i32 noundef %17)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %if.then11
  %18 = load ptr, ptr %v, align 8
  %19 = load i32, ptr %iDb, align 4
  %20 = load i32, ptr %iIntoReg, align 4
  %call17 = call i32 @sqlite3VdbeAddOp2(ptr noundef %18, i32 noundef 8, i32 noundef %19, i32 noundef %20)
  %21 = load ptr, ptr %v, align 8
  %22 = load i32, ptr %iDb, align 4
  call void @sqlite3VdbeUsesBtree(ptr noundef %21, i32 noundef %22)
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end9
  br label %build_vacuum_end

build_vacuum_end:                                 ; preds = %if.end18, %if.then7, %if.then1, %if.then
  %23 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %db, align 8
  %25 = load ptr, ptr %pInto.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %24, ptr noundef %25)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TwoPartName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveSelfReference(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
