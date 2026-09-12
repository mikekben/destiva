; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Hash = type { i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreeSchema(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SchemaClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HashInit(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3SchemaGet(ptr noundef %db, ptr noundef %pBt) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pBt.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pBt, ptr %pBt.addr, align 8
  %0 = load ptr, ptr %pBt.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pBt.addr, align 8
  %call = call ptr @sqlite3BtreeSchema(ptr noundef %1, i32 noundef 120, ptr noundef @sqlite3SchemaClear)
  store ptr %call, ptr %p, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call ptr @sqlite3DbMallocZero(ptr noundef null, i64 noundef 120)
  store ptr %call1, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %p, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %3)
  br label %if.end8

if.else4:                                         ; preds = %if.end
  %4 = load ptr, ptr %p, align 8
  %file_format = getelementptr inbounds nuw %struct.Schema, ptr %4, i32 0, i32 7
  %5 = load i8, ptr %file_format, align 8
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else4
  %6 = load ptr, ptr %p, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %6, i32 0, i32 2
  call void @sqlite3HashInit(ptr noundef %tblHash)
  %7 = load ptr, ptr %p, align 8
  %idxHash = getelementptr inbounds nuw %struct.Schema, ptr %7, i32 0, i32 3
  call void @sqlite3HashInit(ptr noundef %idxHash)
  %8 = load ptr, ptr %p, align 8
  %trigHash = getelementptr inbounds nuw %struct.Schema, ptr %8, i32 0, i32 4
  call void @sqlite3HashInit(ptr noundef %trigHash)
  %9 = load ptr, ptr %p, align 8
  %fkeyHash = getelementptr inbounds nuw %struct.Schema, ptr %9, i32 0, i32 5
  call void @sqlite3HashInit(ptr noundef %fkeyHash)
  %10 = load ptr, ptr %p, align 8
  %enc = getelementptr inbounds nuw %struct.Schema, ptr %10, i32 0, i32 8
  store i8 1, ptr %enc, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  %11 = load ptr, ptr %p, align 8
  ret ptr %11
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
