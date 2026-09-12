; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @walIndexHdr(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @walChecksumBytes(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @walShmBarrier(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @walIndexTryHdr(ptr noundef %pWal, ptr noundef %pChanged) #2 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %pChanged.addr = alloca ptr, align 8
  %aCksum = alloca [2 x i32], align 4
  %h1 = alloca %struct.WalIndexHdr, align 4
  %h2 = alloca %struct.WalIndexHdr, align 4
  %aHdr = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %pChanged, ptr %pChanged.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %call = call ptr @walIndexHdr(ptr noundef %0)
  store ptr %call, ptr %aHdr, align 8
  %1 = load ptr, ptr %aHdr, align 8
  %arrayidx = getelementptr inbounds %struct.WalIndexHdr, ptr %1, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %h1, ptr align 1 %arrayidx, i64 48, i1 false)
  %2 = load ptr, ptr %pWal.addr, align 8
  call void @walShmBarrier(ptr noundef %2)
  %3 = load ptr, ptr %aHdr, align 8
  %arrayidx1 = getelementptr inbounds %struct.WalIndexHdr, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %h2, ptr align 1 %arrayidx1, i64 48, i1 false)
  %call2 = call i32 @memcmp(ptr noundef %h1, ptr noundef %h2, i64 noundef 48) #3
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %isInit = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %h1, i32 0, i32 3
  %4 = load i8, ptr %isInit, align 4
  %conv = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aCksum, i64 0, i64 0
  call void @walChecksumBytes(i32 noundef 1, ptr noundef %h1, i32 noundef 40, ptr noundef null, ptr noundef %arraydecay)
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr %aCksum, i64 0, i64 0
  %5 = load i32, ptr %arrayidx7, align 4
  %aCksum8 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %h1, i32 0, i32 10
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr %aCksum8, i64 0, i64 0
  %6 = load i32, ptr %arrayidx9, align 4
  %cmp10 = icmp ne i32 %5, %6
  br i1 %cmp10, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %arrayidx12 = getelementptr inbounds [2 x i32], ptr %aCksum, i64 0, i64 1
  %7 = load i32, ptr %arrayidx12, align 4
  %aCksum13 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %h1, i32 0, i32 10
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %aCksum13, i64 0, i64 1
  %8 = load i32, ptr %arrayidx14, align 4
  %cmp15 = icmp ne i32 %7, %8
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %if.end6
  store i32 1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  %9 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %9, i32 0, i32 19
  %call19 = call i32 @memcmp(ptr noundef %hdr, ptr noundef %h1, i64 noundef 48) #3
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then20, label %if.end29

if.then20:                                        ; preds = %if.end18
  %10 = load ptr, ptr %pChanged.addr, align 8
  store i32 1, ptr %10, align 4
  %11 = load ptr, ptr %pWal.addr, align 8
  %hdr21 = getelementptr inbounds nuw %struct.Wal, ptr %11, i32 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hdr21, ptr align 4 %h1, i64 48, i1 false)
  %12 = load ptr, ptr %pWal.addr, align 8
  %hdr22 = getelementptr inbounds nuw %struct.Wal, ptr %12, i32 0, i32 19
  %szPage = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr22, i32 0, i32 5
  %13 = load i16, ptr %szPage, align 2
  %conv23 = zext i16 %13 to i32
  %and = and i32 %conv23, 65024
  %14 = load ptr, ptr %pWal.addr, align 8
  %hdr24 = getelementptr inbounds nuw %struct.Wal, ptr %14, i32 0, i32 19
  %szPage25 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr24, i32 0, i32 5
  %15 = load i16, ptr %szPage25, align 2
  %conv26 = zext i16 %15 to i32
  %and27 = and i32 %conv26, 1
  %shl = shl i32 %and27, 16
  %add = add nsw i32 %and, %shl
  %16 = load ptr, ptr %pWal.addr, align 8
  %szPage28 = getelementptr inbounds nuw %struct.Wal, ptr %16, i32 0, i32 8
  store i32 %add, ptr %szPage28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %if.end18
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then17, %if.then5, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
