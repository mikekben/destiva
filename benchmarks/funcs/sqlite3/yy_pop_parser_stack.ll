; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyParser = type { ptr, ptr, [100 x %struct.yyStackEntry], ptr }
%struct.yyStackEntry = type { i16, i16, %union.YYMINORTYPE }
%union.YYMINORTYPE = type { %struct.Token }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @yy_destructor(ptr noundef, i16 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @yy_pop_parser_stack(ptr noundef %pParser) #0 {
entry:
  %pParser.addr = alloca ptr, align 8
  %yytos = alloca ptr, align 8
  store ptr %pParser, ptr %pParser.addr, align 8
  %0 = load ptr, ptr %pParser.addr, align 8
  %yytos1 = getelementptr inbounds nuw %struct.yyParser, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %yytos1, align 8
  %incdec.ptr = getelementptr inbounds %struct.yyStackEntry, ptr %1, i32 -1
  store ptr %incdec.ptr, ptr %yytos1, align 8
  store ptr %1, ptr %yytos, align 8
  %2 = load ptr, ptr %pParser.addr, align 8
  %3 = load ptr, ptr %yytos, align 8
  %major = getelementptr inbounds nuw %struct.yyStackEntry, ptr %3, i32 0, i32 1
  %4 = load i16, ptr %major, align 2
  %5 = load ptr, ptr %yytos, align 8
  %minor = getelementptr inbounds nuw %struct.yyStackEntry, ptr %5, i32 0, i32 2
  call void @yy_destructor(ptr noundef %2, i16 noundef zeroext %4, ptr noundef %minor)
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
