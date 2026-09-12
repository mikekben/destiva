; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%union.YYMINORTYPE = type { %struct.Token }
%struct.yyParser = type { ptr, ptr, [100 x %struct.yyStackEntry], ptr }
%struct.yyStackEntry = type { i16, i16, %union.YYMINORTYPE }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Parser(ptr noundef %yyp, i32 noundef %yymajor, ptr %yyminor.coerce0, i32 %yyminor.coerce1) #1 {
entry:
  %yyminor = alloca %struct.Token, align 8
  %yyp.addr = alloca ptr, align 8
  %yymajor.addr = alloca i32, align 4
  %yyminorunion = alloca %union.YYMINORTYPE, align 8
  %yyact = alloca i16, align 2
  %yypParser = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %0 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 0
  store ptr %yyminor.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 1
  store i32 %yyminor.coerce1, ptr %1, align 8
  store ptr %yyp, ptr %yyp.addr, align 8
  store i32 %yymajor, ptr %yymajor.addr, align 4
  %2 = load ptr, ptr %yyp.addr, align 8
  store ptr %2, ptr %yypParser, align 8
  %3 = load ptr, ptr %yypParser, align 8
  %pParse1 = getelementptr inbounds nuw %struct.yyParser, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pParse1, align 8
  store ptr %4, ptr %pParse, align 8
  %5 = load ptr, ptr %yypParser, align 8
  %yytos = getelementptr inbounds nuw %struct.yyParser, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %yytos, align 8
  %stateno = getelementptr inbounds nuw %struct.yyStackEntry, ptr %6, i32 0, i32 0
  %7 = load i16, ptr %stateno, align 8
  store i16 %7, ptr %yyact, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load i32, ptr %yymajor.addr, align 4
  %conv = trunc i32 %8 to i16
  %9 = load i16, ptr %yyact, align 2
  %call = call zeroext i16 @yy_find_shift_action(i16 noundef zeroext %conv, i16 noundef zeroext %9)
  store i16 %call, ptr %yyact, align 2
  %10 = load i16, ptr %yyact, align 2
  %conv2 = zext i16 %10 to i32
  %cmp = icmp sge i32 %conv2, 1174
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %11 = load ptr, ptr %yypParser, align 8
  %12 = load i16, ptr %yyact, align 2
  %conv4 = zext i16 %12 to i32
  %sub = sub nsw i32 %conv4, 1174
  %13 = load i32, ptr %yymajor.addr, align 4
  %14 = load ptr, ptr %pParse, align 8
  %15 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %call5 = call zeroext i16 @yy_reduce(ptr noundef %11, i32 noundef %sub, i32 noundef %13, ptr %16, i32 %18, ptr noundef %14)
  store i16 %call5, ptr %yyact, align 2
  br label %if.end

if.else:                                          ; preds = %do.body
  %19 = load i16, ptr %yyact, align 2
  %conv6 = zext i16 %19 to i32
  %cmp7 = icmp sle i32 %conv6, 1170
  br i1 %cmp7, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %20 = load ptr, ptr %yypParser, align 8
  %21 = load i16, ptr %yyact, align 2
  %22 = load i32, ptr %yymajor.addr, align 4
  %conv10 = trunc i32 %22 to i16
  %23 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 1
  %26 = load i32, ptr %25, align 8
  call void @yy_shift(ptr noundef %20, i16 noundef zeroext %21, i16 noundef zeroext %conv10, ptr %24, i32 %26)
  br label %do.end

if.else11:                                        ; preds = %if.else
  %27 = load i16, ptr %yyact, align 2
  %conv12 = zext i16 %27 to i32
  %cmp13 = icmp eq i32 %conv12, 1172
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else11
  %28 = load ptr, ptr %yypParser, align 8
  %yytos16 = getelementptr inbounds nuw %struct.yyParser, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %yytos16, align 8
  %incdec.ptr = getelementptr inbounds %struct.yyStackEntry, ptr %29, i32 -1
  store ptr %incdec.ptr, ptr %yytos16, align 8
  %30 = load ptr, ptr %yypParser, align 8
  call void @yy_accept(ptr noundef %30)
  br label %return

if.else17:                                        ; preds = %if.else11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %yyminorunion, ptr align 8 %yyminor, i64 16, i1 false)
  %31 = load ptr, ptr %yypParser, align 8
  %32 = load i32, ptr %yymajor.addr, align 4
  %33 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 0
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyminor, i32 0, i32 1
  %36 = load i32, ptr %35, align 8
  call void @yy_syntax_error(ptr noundef %31, i32 noundef %32, ptr %34, i32 %36)
  %37 = load ptr, ptr %yypParser, align 8
  %38 = load i32, ptr %yymajor.addr, align 4
  %conv18 = trunc i32 %38 to i16
  call void @yy_destructor(ptr noundef %37, i16 noundef zeroext %conv18, ptr noundef %yyminorunion)
  br label %do.end

if.end:                                           ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %39 = load ptr, ptr %yypParser, align 8
  %yytos19 = getelementptr inbounds nuw %struct.yyParser, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %yytos19, align 8
  %41 = load ptr, ptr %yypParser, align 8
  %yystack = getelementptr inbounds nuw %struct.yyParser, ptr %41, i32 0, i32 2
  %arraydecay = getelementptr inbounds [100 x %struct.yyStackEntry], ptr %yystack, i64 0, i64 0
  %cmp20 = icmp ugt ptr %40, %arraydecay
  br i1 %cmp20, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond, %if.else17, %if.then9
  br label %return

return:                                           ; preds = %do.end, %if.then15
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @yy_find_shift_action(i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @yy_reduce(ptr noundef, i32 noundef, i32 noundef, ptr, i32, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @yy_shift(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr, i32) #1

; Function Attrs: nounwind uwtable
declare hidden void @yy_accept(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @yy_syntax_error(ptr noundef, i32 noundef, ptr, i32) #1

; Function Attrs: nounwind uwtable
declare hidden void @yy_destructor(ptr noundef, i16 noundef zeroext, ptr noundef) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
