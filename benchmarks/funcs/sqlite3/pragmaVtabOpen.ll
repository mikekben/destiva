; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PragmaVtabCursor = type { %struct.sqlite3_vtab_cursor, ptr, i64, [2 x ptr] }
%struct.sqlite3_vtab_cursor = type { ptr }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc(i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @pragmaVtabOpen(ptr noundef %pVtab, ptr noundef %ppCursor) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtab.addr = alloca ptr, align 8
  %ppCursor.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  store ptr %pVtab, ptr %pVtab.addr, align 8
  store ptr %ppCursor, ptr %ppCursor.addr, align 8
  %call = call ptr @sqlite3_malloc(i32 noundef 40)
  store ptr %call, ptr %pCsr, align 8
  %0 = load ptr, ptr %pCsr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pCsr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 40, i1 false)
  %2 = load ptr, ptr %pVtab.addr, align 8
  %3 = load ptr, ptr %pCsr, align 8
  %base = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %3, i32 0, i32 0
  %pVtab1 = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %base, i32 0, i32 0
  store ptr %2, ptr %pVtab1, align 8
  %4 = load ptr, ptr %pCsr, align 8
  %base2 = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %ppCursor.addr, align 8
  store ptr %base2, ptr %5, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
