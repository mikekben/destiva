; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
define hidden i32 @indexWhereClauseMightChange(ptr noundef %pIdx, ptr noundef %aXRef, i32 noundef %chngRowid) #0 {
entry:
  %retval = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %aXRef.addr = alloca ptr, align 8
  %chngRowid.addr = alloca i32, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store ptr %aXRef, ptr %aXRef.addr, align 8
  store i32 %chngRowid, ptr %chngRowid.addr, align 4
  %0 = load ptr, ptr %pIdx.addr, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pIdx.addr, align 8
  %pPartIdxWhere1 = getelementptr inbounds nuw %struct.Index, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %pPartIdxWhere1, align 8
  %4 = load ptr, ptr %aXRef.addr, align 8
  %5 = load i32, ptr %chngRowid.addr, align 4
  %call = call i32 @sqlite3ExprReferencesUpdatedColumn(ptr noundef %3, ptr noundef %4, i32 noundef %5)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprReferencesUpdatedColumn(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
