; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifySchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3BeginWriteOperation(ptr noundef %pParse, i32 noundef %setStatement, i32 noundef %iDb) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %setStatement.addr = alloca i32, align 4
  %iDb.addr = alloca i32, align 4
  %pToplevel = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %setStatement, ptr %setStatement.addr, align 4
  store i32 %iDb, ptr %iDb.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pToplevel1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 35
  %1 = load ptr, ptr %pToplevel1, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %pToplevel2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 35
  %3 = load ptr, ptr %pToplevel2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ]
  store ptr %cond, ptr %pToplevel, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %6 = load i32, ptr %iDb.addr, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %5, i32 noundef %6)
  %7 = load i32, ptr %iDb.addr, align 4
  %shl = shl i32 1, %7
  %8 = load ptr, ptr %pToplevel, align 8
  %writeMask = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 26
  %9 = load i32, ptr %writeMask, align 8
  %or = or i32 %9, %shl
  store i32 %or, ptr %writeMask, align 8
  %10 = load i32, ptr %setStatement.addr, align 4
  %11 = load ptr, ptr %pToplevel, align 8
  %isMultiWrite = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 8
  %12 = load i8, ptr %isMultiWrite, align 8
  %conv = zext i8 %12 to i32
  %or3 = or i32 %conv, %10
  %conv4 = trunc i32 %or3 to i8
  store i8 %conv4, ptr %isMultiWrite, align 8
  ret void
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
