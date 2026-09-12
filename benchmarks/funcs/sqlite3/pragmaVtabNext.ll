; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PragmaVtabCursor = type { %struct.sqlite3_vtab_cursor, ptr, i64, [2 x ptr] }
%struct.sqlite3_vtab_cursor = type { ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_finalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_step(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pragmaVtabNext(ptr noundef %pVtabCursor) #0 {
entry:
  %pVtabCursor.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  store i32 0, ptr %rc, align 4
  %1 = load ptr, ptr %pCsr, align 8
  %iRowid = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %iRowid, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, ptr %iRowid, align 8
  %3 = load ptr, ptr %pCsr, align 8
  %pPragma = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pPragma, align 8
  %call = call i32 @sqlite3_step(ptr noundef %4)
  %cmp = icmp ne i32 100, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pCsr, align 8
  %pPragma1 = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pPragma1, align 8
  %call2 = call i32 @sqlite3_finalize(ptr noundef %6)
  store i32 %call2, ptr %rc, align 4
  %7 = load ptr, ptr %pCsr, align 8
  %pPragma3 = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %7, i32 0, i32 1
  store ptr null, ptr %pPragma3, align 8
  %8 = load ptr, ptr %pCsr, align 8
  call void @pragmaVtabCursorClear(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %rc, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
declare hidden void @pragmaVtabCursorClear(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
