; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @pager_write_changecounter(ptr noundef %pPg) #0 {
entry:
  %pPg.addr = alloca ptr, align 8
  %change_counter = alloca i32, align 4
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager, align 8
  %dbFileVers = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 39
  %arraydecay = getelementptr inbounds [16 x i8], ptr %dbFileVers, i64 0, i64 0
  %call = call i32 @sqlite3Get4byte(ptr noundef %arraydecay)
  %add = add i32 %call, 1
  store i32 %add, ptr %change_counter, align 4
  %2 = load ptr, ptr %pPg.addr, align 8
  %pData = getelementptr inbounds nuw %struct.PgHdr, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pData, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 24
  %4 = load i32, ptr %change_counter, align 4
  call void @sqlite3Put4byte(ptr noundef %add.ptr, i32 noundef %4)
  %5 = load ptr, ptr %pPg.addr, align 8
  %pData1 = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pData1, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %6, i64 92
  %7 = load i32, ptr %change_counter, align 4
  call void @sqlite3Put4byte(ptr noundef %add.ptr2, i32 noundef %7)
  %8 = load ptr, ptr %pPg.addr, align 8
  %pData3 = getelementptr inbounds nuw %struct.PgHdr, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pData3, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %9, i64 96
  call void @sqlite3Put4byte(ptr noundef %add.ptr4, i32 noundef 3030001)
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
