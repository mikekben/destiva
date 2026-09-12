; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyParser = type { ptr, ptr, [100 x %struct.yyStackEntry], ptr }
%struct.yyStackEntry = type { i16, i16, %union.YYMINORTYPE }
%union.YYMINORTYPE = type { %struct.Token }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ParserInit(ptr noundef %yypRawParser, ptr noundef %pParse) #0 {
entry:
  %yypRawParser.addr = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %yypParser = alloca ptr, align 8
  store ptr %yypRawParser, ptr %yypRawParser.addr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %yypRawParser.addr, align 8
  store ptr %0, ptr %yypParser, align 8
  %1 = load ptr, ptr %pParse.addr, align 8
  %2 = load ptr, ptr %yypParser, align 8
  %pParse1 = getelementptr inbounds nuw %struct.yyParser, ptr %2, i32 0, i32 1
  store ptr %1, ptr %pParse1, align 8
  %3 = load ptr, ptr %yypParser, align 8
  %yystack = getelementptr inbounds nuw %struct.yyParser, ptr %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [100 x %struct.yyStackEntry], ptr %yystack, i64 0, i64 0
  %4 = load ptr, ptr %yypParser, align 8
  %yytos = getelementptr inbounds nuw %struct.yyParser, ptr %4, i32 0, i32 0
  store ptr %arraydecay, ptr %yytos, align 8
  %5 = load ptr, ptr %yypParser, align 8
  %yystack2 = getelementptr inbounds nuw %struct.yyParser, ptr %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [100 x %struct.yyStackEntry], ptr %yystack2, i64 0, i64 0
  %stateno = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx, i32 0, i32 0
  store i16 0, ptr %stateno, align 8
  %6 = load ptr, ptr %yypParser, align 8
  %yystack3 = getelementptr inbounds nuw %struct.yyParser, ptr %6, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [100 x %struct.yyStackEntry], ptr %yystack3, i64 0, i64 0
  %major = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx4, i32 0, i32 1
  store i16 0, ptr %major, align 2
  %7 = load ptr, ptr %yypParser, align 8
  %yystack5 = getelementptr inbounds nuw %struct.yyParser, ptr %7, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [100 x %struct.yyStackEntry], ptr %yystack5, i64 0, i64 99
  %8 = load ptr, ptr %yypParser, align 8
  %yystackEnd = getelementptr inbounds nuw %struct.yyParser, ptr %8, i32 0, i32 3
  store ptr %arrayidx6, ptr %yystackEnd, align 8
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
