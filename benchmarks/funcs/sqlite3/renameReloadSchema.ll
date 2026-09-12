; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ChangeCookie(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAddParseSchemaOp(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @renameReloadSchema(ptr noundef %pParse, i32 noundef %iDb) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %v, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pParse.addr, align 8
  %4 = load i32, ptr %iDb.addr, align 4
  call void @sqlite3ChangeCookie(ptr noundef %3, i32 noundef %4)
  %5 = load ptr, ptr %pParse.addr, align 8
  %pVdbe1 = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pVdbe1, align 8
  %7 = load i32, ptr %iDb.addr, align 4
  call void @sqlite3VdbeAddParseSchemaOp(ptr noundef %6, i32 noundef %7, ptr noundef null)
  %8 = load i32, ptr %iDb.addr, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %pParse.addr, align 8
  %pVdbe3 = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pVdbe3, align 8
  call void @sqlite3VdbeAddParseSchemaOp(ptr noundef %10, i32 noundef 1, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
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
