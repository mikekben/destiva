; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@.str.502 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.503 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @analyzeTable(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %pOnlyIdx) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pOnlyIdx.addr = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %iStatCur = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pOnlyIdx, ptr %pOnlyIdx.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %2 = load ptr, ptr %pTab.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %2, i32 0, i32 20
  %3 = load ptr, ptr %pSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %1, ptr noundef %3)
  store i32 %call, ptr %iDb, align 4
  %4 = load ptr, ptr %pParse.addr, align 8
  %5 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %4, i32 noundef 0, i32 noundef %5)
  %6 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 17
  %7 = load i32, ptr %nTab, align 4
  store i32 %7, ptr %iStatCur, align 4
  %8 = load ptr, ptr %pParse.addr, align 8
  %nTab1 = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 17
  %9 = load i32, ptr %nTab1, align 4
  %add = add nsw i32 %9, 3
  store i32 %add, ptr %nTab1, align 4
  %10 = load ptr, ptr %pOnlyIdx.addr, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load i32, ptr %iDb, align 4
  %13 = load i32, ptr %iStatCur, align 4
  %14 = load ptr, ptr %pOnlyIdx.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Index, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %zName, align 8
  call void @openStatTable(ptr noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %15, ptr noundef @.str.503)
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load i32, ptr %iDb, align 4
  %18 = load i32, ptr %iStatCur, align 4
  %19 = load ptr, ptr %pTab.addr, align 8
  %zName2 = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %zName2, align 8
  call void @openStatTable(ptr noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %20, ptr noundef @.str.502)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %pTab.addr, align 8
  %23 = load ptr, ptr %pOnlyIdx.addr, align 8
  %24 = load i32, ptr %iStatCur, align 4
  %25 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 18
  %26 = load i32, ptr %nMem, align 8
  %add3 = add nsw i32 %26, 1
  %27 = load ptr, ptr %pParse.addr, align 8
  %nTab4 = getelementptr inbounds nuw %struct.Parse, ptr %27, i32 0, i32 17
  %28 = load i32, ptr %nTab4, align 4
  call void @analyzeOneTable(ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %add3, i32 noundef %28)
  %29 = load ptr, ptr %pParse.addr, align 8
  %30 = load i32, ptr %iDb, align 4
  call void @loadAnalysis(ptr noundef %29, i32 noundef %30)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @openStatTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @analyzeOneTable(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @loadAnalysis(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
