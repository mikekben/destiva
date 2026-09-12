; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3OpenMasterTable(ptr noundef %p, i32 noundef %iDb) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %2 = load i32, ptr %iDb.addr, align 4
  call void @sqlite3TableLock(ptr noundef %1, i32 noundef %2, i32 noundef 1, i8 noundef zeroext 1, ptr noundef @.str.320)
  %3 = load ptr, ptr %v, align 8
  %4 = load i32, ptr %iDb.addr, align 4
  %call1 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %3, i32 noundef 98, i32 noundef 0, i32 noundef 1, i32 noundef %4, i32 noundef 5)
  %5 = load ptr, ptr %p.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 17
  %6 = load i32, ptr %nTab, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p.addr, align 8
  %nTab2 = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 17
  store i32 1, ptr %nTab2, align 4
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
