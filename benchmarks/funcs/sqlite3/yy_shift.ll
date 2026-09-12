; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.yyParser = type { ptr, ptr, [100 x %struct.yyStackEntry], ptr }
%struct.yyStackEntry = type { i16, i16, %union.YYMINORTYPE }
%union.YYMINORTYPE = type { %struct.Token }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden void @yy_shift(ptr noundef %yypParser, i16 noundef zeroext %yyNewState, i16 noundef zeroext %yyMajor, ptr %yyMinor.coerce0, i32 %yyMinor.coerce1) #1 {
entry:
  %yyMinor = alloca %struct.Token, align 8
  %yypParser.addr = alloca ptr, align 8
  %yyNewState.addr = alloca i16, align 2
  %yyMajor.addr = alloca i16, align 2
  %yytos = alloca ptr, align 8
  %0 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyMinor, i32 0, i32 0
  store ptr %yyMinor.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyMinor, i32 0, i32 1
  store i32 %yyMinor.coerce1, ptr %1, align 8
  store ptr %yypParser, ptr %yypParser.addr, align 8
  store i16 %yyNewState, ptr %yyNewState.addr, align 2
  store i16 %yyMajor, ptr %yyMajor.addr, align 2
  %2 = load ptr, ptr %yypParser.addr, align 8
  %yytos1 = getelementptr inbounds nuw %struct.yyParser, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %yytos1, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.yyStackEntry, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %yytos1, align 8
  %4 = load ptr, ptr %yypParser.addr, align 8
  %yytos2 = getelementptr inbounds nuw %struct.yyParser, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %yytos2, align 8
  %6 = load ptr, ptr %yypParser.addr, align 8
  %yystackEnd = getelementptr inbounds nuw %struct.yyParser, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %yystackEnd, align 8
  %cmp = icmp ugt ptr %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %yypParser.addr, align 8
  %yytos3 = getelementptr inbounds nuw %struct.yyParser, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %yytos3, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.yyStackEntry, ptr %9, i32 -1
  store ptr %incdec.ptr4, ptr %yytos3, align 8
  %10 = load ptr, ptr %yypParser.addr, align 8
  call void @yyStackOverflow(ptr noundef %10)
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i16, ptr %yyNewState.addr, align 2
  %conv = zext i16 %11 to i32
  %cmp5 = icmp sgt i32 %conv, 542
  br i1 %cmp5, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %12 = load i16, ptr %yyNewState.addr, align 2
  %conv8 = zext i16 %12 to i32
  %add = add nsw i32 %conv8, 384
  %conv9 = trunc i32 %add to i16
  store i16 %conv9, ptr %yyNewState.addr, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %13 = load ptr, ptr %yypParser.addr, align 8
  %yytos11 = getelementptr inbounds nuw %struct.yyParser, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %yytos11, align 8
  store ptr %14, ptr %yytos, align 8
  %15 = load i16, ptr %yyNewState.addr, align 2
  %16 = load ptr, ptr %yytos, align 8
  %stateno = getelementptr inbounds nuw %struct.yyStackEntry, ptr %16, i32 0, i32 0
  store i16 %15, ptr %stateno, align 8
  %17 = load i16, ptr %yyMajor.addr, align 2
  %18 = load ptr, ptr %yytos, align 8
  %major = getelementptr inbounds nuw %struct.yyStackEntry, ptr %18, i32 0, i32 1
  store i16 %17, ptr %major, align 2
  %19 = load ptr, ptr %yytos, align 8
  %minor = getelementptr inbounds nuw %struct.yyStackEntry, ptr %19, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor, ptr align 8 %yyMinor, i64 16, i1 false)
  br label %return

return:                                           ; preds = %if.end10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @yyStackOverflow(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
