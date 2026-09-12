; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare hidden void @pcacheManageDirtyList(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PcacheMove(ptr noundef %p, i32 noundef %newPgno) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %newPgno.addr = alloca i32, align 4
  %pCache = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %newPgno, ptr %newPgno.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pCache1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pCache1, align 8
  store ptr %1, ptr %pCache, align 8
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_pcache_methods2, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), i32 0, i32 9), align 8
  %3 = load ptr, ptr %pCache, align 8
  %pCache2 = getelementptr inbounds nuw %struct.PCache, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %pCache2, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %pPage = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pPage, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %pgno, align 8
  %9 = load i32, ptr %newPgno.addr, align 4
  call void %2(ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef %9)
  %10 = load i32, ptr %newPgno.addr, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %pgno3 = getelementptr inbounds nuw %struct.PgHdr, ptr %11, i32 0, i32 6
  store i32 %10, ptr %pgno3, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %12, i32 0, i32 7
  %13 = load i16, ptr %flags, align 4
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = load ptr, ptr %p.addr, align 8
  %flags4 = getelementptr inbounds nuw %struct.PgHdr, ptr %14, i32 0, i32 7
  %15 = load i16, ptr %flags4, align 4
  %conv5 = zext i16 %15 to i32
  %and6 = and i32 %conv5, 8
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load ptr, ptr %p.addr, align 8
  call void @pcacheManageDirtyList(ptr noundef %16, i8 noundef zeroext 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
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
