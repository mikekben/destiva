; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_vtab_cursor = type { ptr }
%struct.PragmaVtab = type { %struct.sqlite3_vtab, ptr, ptr, i8, i8 }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.PragmaVtabCursor = type { %struct.sqlite3_vtab_cursor, ptr, i64, [2 x ptr] }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_column_value(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pragmaVtabColumn(ptr noundef %pVtabCursor, ptr noundef %ctx, i32 noundef %i) #0 {
entry:
  %pVtabCursor.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %pCsr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load ptr, ptr %pVtabCursor.addr, align 8
  %pVtab = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVtab, align 8
  store ptr %2, ptr %pTab, align 8
  %3 = load i32, ptr %i.addr, align 4
  %4 = load ptr, ptr %pTab, align 8
  %iHidden = getelementptr inbounds nuw %struct.PragmaVtab, ptr %4, i32 0, i32 4
  %5 = load i8, ptr %iHidden, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp slt i32 %3, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ctx.addr, align 8
  %7 = load ptr, ptr %pCsr, align 8
  %pPragma = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pPragma, align 8
  %9 = load i32, ptr %i.addr, align 4
  %call = call ptr @sqlite3_column_value(ptr noundef %8, i32 noundef %9)
  call void @sqlite3_result_value(ptr noundef %6, ptr noundef %call)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %ctx.addr, align 8
  %11 = load ptr, ptr %pCsr, align 8
  %azArg = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %i.addr, align 4
  %13 = load ptr, ptr %pTab, align 8
  %iHidden2 = getelementptr inbounds nuw %struct.PragmaVtab, ptr %13, i32 0, i32 4
  %14 = load i8, ptr %iHidden2, align 1
  %conv3 = zext i8 %14 to i32
  %sub = sub nsw i32 %12, %conv3
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %azArg, i64 0, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8
  call void @sqlite3_result_text(ptr noundef %10, ptr noundef %15, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
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
