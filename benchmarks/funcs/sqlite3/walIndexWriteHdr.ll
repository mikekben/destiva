; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @walIndexHdr(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walChecksumBytes(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @walIndexWriteHdr(ptr noundef %pWal) #1 {
entry:
  %pWal.addr = alloca ptr, align 8
  %aHdr = alloca ptr, align 8
  %nCksum = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %call = call ptr @walIndexHdr(ptr noundef %0)
  store ptr %call, ptr %aHdr, align 8
  store i32 40, ptr %nCksum, align 4
  %1 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %1, i32 0, i32 19
  %isInit = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 3
  store i8 1, ptr %isInit, align 4
  %2 = load ptr, ptr %pWal.addr, align 8
  %hdr1 = getelementptr inbounds nuw %struct.Wal, ptr %2, i32 0, i32 19
  %iVersion = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr1, i32 0, i32 0
  store i32 3007000, ptr %iVersion, align 8
  %3 = load ptr, ptr %pWal.addr, align 8
  %hdr2 = getelementptr inbounds nuw %struct.Wal, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %pWal.addr, align 8
  %hdr3 = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 19
  %aCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr3, i32 0, i32 10
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aCksum, i64 0, i64 0
  call void @walChecksumBytes(i32 noundef 1, ptr noundef %hdr2, i32 noundef 40, ptr noundef null, ptr noundef %arraydecay)
  %5 = load ptr, ptr %aHdr, align 8
  %arrayidx = getelementptr inbounds %struct.WalIndexHdr, ptr %5, i64 1
  %6 = load ptr, ptr %pWal.addr, align 8
  %hdr4 = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 8 %hdr4, i64 48, i1 false)
  %7 = load ptr, ptr %pWal.addr, align 8
  call void @walShmBarrier(ptr noundef %7)
  %8 = load ptr, ptr %aHdr, align 8
  %arrayidx5 = getelementptr inbounds %struct.WalIndexHdr, ptr %8, i64 0
  %9 = load ptr, ptr %pWal.addr, align 8
  %hdr6 = getelementptr inbounds nuw %struct.Wal, ptr %9, i32 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx5, ptr align 8 %hdr6, i64 48, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @walShmBarrier(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
