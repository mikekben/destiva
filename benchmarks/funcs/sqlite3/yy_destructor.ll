; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yyParser = type { ptr, ptr, [100 x %struct.yyStackEntry], ptr }
%struct.yyStackEntry = type { i16, i16, %union.YYMINORTYPE }
%union.YYMINORTYPE = type { %struct.Token }
%struct.Token = type { ptr, i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TrigEvent = type { i32, ptr }
%struct.FrameBound = type { i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WithDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTriggerStep(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @yy_destructor(ptr noundef %yypParser, i16 noundef zeroext %yymajor, ptr noundef %yypminor) #0 {
entry:
  %yypParser.addr = alloca ptr, align 8
  %yymajor.addr = alloca i16, align 2
  %yypminor.addr = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  store ptr %yypParser, ptr %yypParser.addr, align 8
  store i16 %yymajor, ptr %yymajor.addr, align 2
  store ptr %yypminor, ptr %yypminor.addr, align 8
  %0 = load ptr, ptr %yypParser.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.yyParser, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load i16, ptr %yymajor.addr, align 2
  %conv = zext i16 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 198, label %sw.bb
    i32 231, label %sw.bb
    i32 232, label %sw.bb
    i32 244, label %sw.bb
    i32 209, label %sw.bb2
    i32 210, label %sw.bb2
    i32 238, label %sw.bb2
    i32 240, label %sw.bb2
    i32 252, label %sw.bb2
    i32 268, label %sw.bb2
    i32 270, label %sw.bb2
    i32 273, label %sw.bb2
    i32 280, label %sw.bb2
    i32 285, label %sw.bb2
    i32 299, label %sw.bb2
    i32 214, label %sw.bb4
    i32 223, label %sw.bb4
    i32 224, label %sw.bb4
    i32 236, label %sw.bb4
    i32 239, label %sw.bb4
    i32 241, label %sw.bb4
    i32 245, label %sw.bb4
    i32 246, label %sw.bb4
    i32 254, label %sw.bb4
    i32 259, label %sw.bb4
    i32 267, label %sw.bb4
    i32 269, label %sw.bb4
    i32 298, label %sw.bb4
    i32 230, label %sw.bb6
    i32 237, label %sw.bb6
    i32 248, label %sw.bb6
    i32 249, label %sw.bb6
    i32 255, label %sw.bb6
    i32 233, label %sw.bb8
    i32 243, label %sw.bb10
    i32 294, label %sw.bb10
    i32 253, label %sw.bb12
    i32 256, label %sw.bb12
    i32 261, label %sw.bb12
    i32 263, label %sw.bb14
    i32 295, label %sw.bb14
    i32 296, label %sw.bb14
    i32 297, label %sw.bb14
    i32 300, label %sw.bb14
    i32 276, label %sw.bb16
    i32 281, label %sw.bb16
    i32 278, label %sw.bb18
    i32 302, label %sw.bb20
    i32 303, label %sw.bb20
    i32 304, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %3 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db, align 8
  %5 = load ptr, ptr %yypminor.addr, align 8
  %6 = load ptr, ptr %5, align 8
  call void @sqlite3SelectDelete(ptr noundef %4, ptr noundef %6)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %7 = load ptr, ptr %pParse, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db3, align 8
  %9 = load ptr, ptr %yypminor.addr, align 8
  %10 = load ptr, ptr %9, align 8
  call void @sqlite3ExprDelete(ptr noundef %8, ptr noundef %10)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %11 = load ptr, ptr %pParse, align 8
  %db5 = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %db5, align 8
  %13 = load ptr, ptr %yypminor.addr, align 8
  %14 = load ptr, ptr %13, align 8
  call void @sqlite3ExprListDelete(ptr noundef %12, ptr noundef %14)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry, %entry
  %15 = load ptr, ptr %pParse, align 8
  %db7 = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %db7, align 8
  %17 = load ptr, ptr %yypminor.addr, align 8
  %18 = load ptr, ptr %17, align 8
  call void @sqlite3SrcListDelete(ptr noundef %16, ptr noundef %18)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %19 = load ptr, ptr %pParse, align 8
  %db9 = getelementptr inbounds nuw %struct.Parse, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %db9, align 8
  %21 = load ptr, ptr %yypminor.addr, align 8
  %22 = load ptr, ptr %21, align 8
  call void @sqlite3WithDelete(ptr noundef %20, ptr noundef %22)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry, %entry
  %23 = load ptr, ptr %pParse, align 8
  %db11 = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %db11, align 8
  %25 = load ptr, ptr %yypminor.addr, align 8
  %26 = load ptr, ptr %25, align 8
  call void @sqlite3WindowListDelete(ptr noundef %24, ptr noundef %26)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry, %entry, %entry
  %27 = load ptr, ptr %pParse, align 8
  %db13 = getelementptr inbounds nuw %struct.Parse, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %db13, align 8
  %29 = load ptr, ptr %yypminor.addr, align 8
  %30 = load ptr, ptr %29, align 8
  call void @sqlite3IdListDelete(ptr noundef %28, ptr noundef %30)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  %31 = load ptr, ptr %pParse, align 8
  %db15 = getelementptr inbounds nuw %struct.Parse, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %db15, align 8
  %33 = load ptr, ptr %yypminor.addr, align 8
  %34 = load ptr, ptr %33, align 8
  call void @sqlite3WindowDelete(ptr noundef %32, ptr noundef %34)
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry, %entry
  %35 = load ptr, ptr %pParse, align 8
  %db17 = getelementptr inbounds nuw %struct.Parse, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %db17, align 8
  %37 = load ptr, ptr %yypminor.addr, align 8
  %38 = load ptr, ptr %37, align 8
  call void @sqlite3DeleteTriggerStep(ptr noundef %36, ptr noundef %38)
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %39 = load ptr, ptr %pParse, align 8
  %db19 = getelementptr inbounds nuw %struct.Parse, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %db19, align 8
  %41 = load ptr, ptr %yypminor.addr, align 8
  %b = getelementptr inbounds nuw %struct.TrigEvent, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %b, align 8
  call void @sqlite3IdListDelete(ptr noundef %40, ptr noundef %42)
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry, %entry, %entry
  %43 = load ptr, ptr %pParse, align 8
  %db21 = getelementptr inbounds nuw %struct.Parse, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %db21, align 8
  %45 = load ptr, ptr %yypminor.addr, align 8
  %pExpr = getelementptr inbounds nuw %struct.FrameBound, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %pExpr, align 8
  call void @sqlite3ExprDelete(ptr noundef %44, ptr noundef %46)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
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
