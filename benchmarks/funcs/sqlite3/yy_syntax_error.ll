; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.yyParser = type { ptr, ptr, [100 x %struct.yyStackEntry], ptr }
%struct.yyStackEntry = type { i16, i16, %union.YYMINORTYPE }
%union.YYMINORTYPE = type { %struct.Token }

@.str.557 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.953 = external hidden unnamed_addr constant [17 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @yy_syntax_error(ptr noundef %yypParser, i32 noundef %yymajor, ptr %yyminor.coerce0, i32 %yyminor.coerce1) #0 {
entry:
  %yyminor = alloca %struct.Token, align 8
  %yypParser.addr = alloca ptr, align 8
  %yymajor.addr = alloca i32, align 4
  %pParse = alloca ptr, align 8
  %0 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 0
  store ptr %yyminor.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 1
  store i32 %yyminor.coerce1, ptr %1, align 8
  store ptr %yypParser, ptr %yypParser.addr, align 8
  store i32 %yymajor, ptr %yymajor.addr, align 4
  %2 = load ptr, ptr %yypParser.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.yyParser, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pParse1, align 8
  store ptr %3, ptr %pParse, align 8
  %4 = load i32, ptr %yymajor.addr, align 4
  %z = getelementptr inbounds nuw %struct.Token, ptr %yyminor, i32 0, i32 0
  %5 = load ptr, ptr %z, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %7, ptr noundef @.str.557, ptr noundef %yyminor)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %8, ptr noundef @.str.953)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %pParse, align 8
  %10 = load ptr, ptr %yypParser.addr, align 8
  %pParse2 = getelementptr inbounds nuw %struct.yyParser, ptr %10, i32 0, i32 1
  store ptr %9, ptr %pParse2, align 8
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
