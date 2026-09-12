; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_file = type { ptr }
%struct.sqlite3_io_methods = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3OsClose(ptr noundef %pId) #0 {
entry:
  %pId.addr = alloca ptr, align 8
  store ptr %pId, ptr %pId.addr, align 8
  %0 = load ptr, ptr %pId.addr, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pMethods, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pId.addr, align 8
  %pMethods1 = getelementptr inbounds nuw %struct.sqlite3_file, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pMethods1, align 8
  %xClose = getelementptr inbounds nuw %struct.sqlite3_io_methods, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %xClose, align 8
  %5 = load ptr, ptr %pId.addr, align 8
  %call = call i32 %4(ptr noundef %5)
  %6 = load ptr, ptr %pId.addr, align 8
  %pMethods2 = getelementptr inbounds nuw %struct.sqlite3_file, ptr %6, i32 0, i32 0
  store ptr null, ptr %pMethods2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
