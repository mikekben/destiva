; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @addModuleArgument(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @addArgumentToVtab(ptr noundef %pParse) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %z2 = alloca ptr, align 8
  %n = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %sArg = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 62
  %z = getelementptr inbounds nuw %struct.Token, ptr %sArg, i32 0, i32 0
  %1 = load ptr, ptr %z, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 58
  %3 = load ptr, ptr %pNewTable, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pParse.addr, align 8
  %sArg3 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 62
  %z4 = getelementptr inbounds nuw %struct.Token, ptr %sArg3, i32 0, i32 0
  %5 = load ptr, ptr %z4, align 8
  store ptr %5, ptr %z2, align 8
  %6 = load ptr, ptr %pParse.addr, align 8
  %sArg5 = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 62
  %n6 = getelementptr inbounds nuw %struct.Token, ptr %sArg5, i32 0, i32 1
  %7 = load i32, ptr %n6, align 8
  store i32 %7, ptr %n, align 4
  %8 = load ptr, ptr %pParse.addr, align 8
  %db7 = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db7, align 8
  store ptr %9, ptr %db, align 8
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %pParse.addr, align 8
  %pNewTable8 = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 58
  %12 = load ptr, ptr %pNewTable8, align 8
  %13 = load ptr, ptr %db, align 8
  %14 = load ptr, ptr %z2, align 8
  %15 = load i32, ptr %n, align 4
  %conv = sext i32 %15 to i64
  %call = call ptr @sqlite3DbStrNDup(ptr noundef %13, ptr noundef %14, i64 noundef %conv)
  call void @addModuleArgument(ptr noundef %10, ptr noundef %12, ptr noundef %call)
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
