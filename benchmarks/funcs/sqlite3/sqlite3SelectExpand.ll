; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3SelectExpand(ptr noundef %pParse, ptr noundef %pSelect) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %w = alloca %struct.Walker, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 1
  store ptr @sqlite3ExprWalkNoop, ptr %xExprCallback, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 0
  store ptr %0, ptr %pParse1, align 8
  %1 = load ptr, ptr %pParse.addr, align 8
  %hasCompound = getelementptr inbounds nuw %struct.Parse, ptr %1, i32 0, i32 10
  %2 = load i8, ptr %hasCompound, align 2
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 2
  store ptr @convertCompoundSelectToSubquery, ptr %xSelectCallback, align 8
  %xSelectCallback2 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 3
  store ptr null, ptr %xSelectCallback2, align 8
  %3 = load ptr, ptr %pSelect.addr, align 8
  %call = call i32 @sqlite3WalkSelect(ptr noundef %w, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %xSelectCallback3 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 2
  store ptr @selectExpander, ptr %xSelectCallback3, align 8
  %xSelectCallback24 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 3
  store ptr @selectPopWith, ptr %xSelectCallback24, align 8
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 5
  store i8 0, ptr %eCode, align 4
  %4 = load ptr, ptr %pSelect.addr, align 8
  %call5 = call i32 @sqlite3WalkSelect(ptr noundef %w, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprWalkNoop(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @convertCompoundSelectToSubquery(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @selectExpander(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @selectPopWith(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
