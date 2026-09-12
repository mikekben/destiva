; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash = type { i32, i32, ptr, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.HashElem = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3SchemaClear(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %temp1 = alloca %struct.Hash, align 8
  %temp2 = alloca %struct.Hash, align 8
  %pElem = alloca ptr, align 8
  %pSchema = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pSchema, align 8
  %1 = load ptr, ptr %pSchema, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %temp1, ptr align 8 %tblHash, i64 24, i1 false)
  %2 = load ptr, ptr %pSchema, align 8
  %trigHash = getelementptr inbounds nuw %struct.Schema, ptr %2, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %temp2, ptr align 8 %trigHash, i64 24, i1 false)
  %3 = load ptr, ptr %pSchema, align 8
  %trigHash1 = getelementptr inbounds nuw %struct.Schema, ptr %3, i32 0, i32 4
  call void @sqlite3HashInit(ptr noundef %trigHash1)
  %4 = load ptr, ptr %pSchema, align 8
  %idxHash = getelementptr inbounds nuw %struct.Schema, ptr %4, i32 0, i32 3
  call void @sqlite3HashClear(ptr noundef %idxHash)
  %first = getelementptr inbounds nuw %struct.Hash, ptr %temp2, i32 0, i32 2
  %5 = load ptr, ptr %first, align 8
  store ptr %5, ptr %pElem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %pElem, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pElem, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %data, align 8
  call void @sqlite3DeleteTrigger(ptr noundef null, ptr noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %pElem, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %next, align 8
  store ptr %10, ptr %pElem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @sqlite3HashClear(ptr noundef %temp2)
  %11 = load ptr, ptr %pSchema, align 8
  %tblHash2 = getelementptr inbounds nuw %struct.Schema, ptr %11, i32 0, i32 2
  call void @sqlite3HashInit(ptr noundef %tblHash2)
  %first3 = getelementptr inbounds nuw %struct.Hash, ptr %temp1, i32 0, i32 2
  %12 = load ptr, ptr %first3, align 8
  store ptr %12, ptr %pElem, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc8, %for.end
  %13 = load ptr, ptr %pElem, align 8
  %tobool5 = icmp ne ptr %13, null
  br i1 %tobool5, label %for.body6, label %for.end10

for.body6:                                        ; preds = %for.cond4
  %14 = load ptr, ptr %pElem, align 8
  %data7 = getelementptr inbounds nuw %struct.HashElem, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %data7, align 8
  store ptr %15, ptr %pTab, align 8
  %16 = load ptr, ptr %pTab, align 8
  call void @sqlite3DeleteTable(ptr noundef null, ptr noundef %16)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body6
  %17 = load ptr, ptr %pElem, align 8
  %next9 = getelementptr inbounds nuw %struct.HashElem, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %next9, align 8
  store ptr %18, ptr %pElem, align 8
  br label %for.cond4, !llvm.loop !8

for.end10:                                        ; preds = %for.cond4
  call void @sqlite3HashClear(ptr noundef %temp1)
  %19 = load ptr, ptr %pSchema, align 8
  %fkeyHash = getelementptr inbounds nuw %struct.Schema, ptr %19, i32 0, i32 5
  call void @sqlite3HashClear(ptr noundef %fkeyHash)
  %20 = load ptr, ptr %pSchema, align 8
  %pSeqTab = getelementptr inbounds nuw %struct.Schema, ptr %20, i32 0, i32 6
  store ptr null, ptr %pSeqTab, align 8
  %21 = load ptr, ptr %pSchema, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %21, i32 0, i32 9
  %22 = load i16, ptr %schemaFlags, align 2
  %conv = zext i16 %22 to i32
  %and = and i32 %conv, 1
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end10
  %23 = load ptr, ptr %pSchema, align 8
  %iGeneration = getelementptr inbounds nuw %struct.Schema, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %iGeneration, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %iGeneration, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end10
  %25 = load ptr, ptr %pSchema, align 8
  %schemaFlags12 = getelementptr inbounds nuw %struct.Schema, ptr %25, i32 0, i32 9
  %26 = load i16, ptr %schemaFlags12, align 2
  %conv13 = zext i16 %26 to i32
  %and14 = and i32 %conv13, -10
  %conv15 = trunc i32 %and14 to i16
  store i16 %conv15, ptr %schemaFlags12, align 2
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HashInit(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HashClear(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
