; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_blob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_blob64(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text64(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @substrFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %z2 = alloca ptr, align 8
  %len = alloca i32, align 4
  %p0type = alloca i32, align 4
  %p1 = alloca i64, align 8
  %p2 = alloca i64, align 8
  %negP2 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %negP2, align 4
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %1)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 2
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @sqlite3_value_type(ptr noundef %4)
  %cmp4 = icmp eq i32 %call3, 5
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %if.end151

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @sqlite3_value_type(ptr noundef %6)
  store i32 %call6, ptr %p0type, align 4
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @sqlite3_value_int(ptr noundef %8)
  %conv = sext i32 %call8 to i64
  store i64 %conv, ptr %p1, align 8
  %9 = load i32, ptr %p0type, align 4
  %cmp9 = icmp eq i32 %9, 4
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %10, i64 0
  %11 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @sqlite3_value_bytes(ptr noundef %11)
  store i32 %call13, ptr %len, align 4
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx14, align 8
  %call15 = call ptr @sqlite3_value_blob(ptr noundef %13)
  store ptr %call15, ptr %z, align 8
  %14 = load ptr, ptr %z, align 8
  %cmp16 = icmp eq ptr %14, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then11
  br label %if.end151

if.end19:                                         ; preds = %if.then11
  br label %if.end39

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %argv.addr, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx20, align 8
  %call21 = call ptr @sqlite3_value_text(ptr noundef %16)
  store ptr %call21, ptr %z, align 8
  %17 = load ptr, ptr %z, align 8
  %cmp22 = icmp eq ptr %17, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else
  br label %if.end151

if.end25:                                         ; preds = %if.else
  store i32 0, ptr %len, align 4
  %18 = load i64, ptr %p1, align 8
  %cmp26 = icmp slt i64 %18, 0
  br i1 %cmp26, label %if.then28, label %if.end38

if.then28:                                        ; preds = %if.end25
  %19 = load ptr, ptr %z, align 8
  store ptr %19, ptr %z2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then28
  %20 = load ptr, ptr %z2, align 8
  %21 = load i8, ptr %20, align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %z2, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %z2, align 8
  %23 = load i8, ptr %22, align 1
  %conv29 = zext i8 %23 to i32
  %cmp30 = icmp sge i32 %conv29, 192
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then32
  %24 = load ptr, ptr %z2, align 8
  %25 = load i8, ptr %24, align 1
  %conv33 = zext i8 %25 to i32
  %and = and i32 %conv33, 192
  %cmp34 = icmp eq i32 %and, 128
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load ptr, ptr %z2, align 8
  %incdec.ptr36 = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %incdec.ptr36, ptr %z2, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end37

if.end37:                                         ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %27 = load i32, ptr %len, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %len, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %if.end38

if.end38:                                         ; preds = %for.end, %if.end25
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end19
  %28 = load i32, ptr %argc.addr, align 4
  %cmp40 = icmp eq i32 %28, 3
  br i1 %cmp40, label %if.then42, label %if.else50

if.then42:                                        ; preds = %if.end39
  %29 = load ptr, ptr %argv.addr, align 8
  %arrayidx43 = getelementptr inbounds ptr, ptr %29, i64 2
  %30 = load ptr, ptr %arrayidx43, align 8
  %call44 = call i32 @sqlite3_value_int(ptr noundef %30)
  %conv45 = sext i32 %call44 to i64
  store i64 %conv45, ptr %p2, align 8
  %31 = load i64, ptr %p2, align 8
  %cmp46 = icmp slt i64 %31, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then42
  %32 = load i64, ptr %p2, align 8
  %sub = sub nsw i64 0, %32
  store i64 %sub, ptr %p2, align 8
  store i32 1, ptr %negP2, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then42
  br label %if.end54

if.else50:                                        ; preds = %if.end39
  %33 = load ptr, ptr %context.addr, align 8
  %call51 = call ptr @sqlite3_context_db_handle(ptr noundef %33)
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %call51, i32 0, i32 33
  %arrayidx52 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %34 = load i32, ptr %arrayidx52, align 4
  %conv53 = sext i32 %34 to i64
  store i64 %conv53, ptr %p2, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else50, %if.end49
  %35 = load i64, ptr %p1, align 8
  %cmp55 = icmp slt i64 %35, 0
  br i1 %cmp55, label %if.then57, label %if.else68

if.then57:                                        ; preds = %if.end54
  %36 = load i32, ptr %len, align 4
  %conv58 = sext i32 %36 to i64
  %37 = load i64, ptr %p1, align 8
  %add = add nsw i64 %37, %conv58
  store i64 %add, ptr %p1, align 8
  %38 = load i64, ptr %p1, align 8
  %cmp59 = icmp slt i64 %38, 0
  br i1 %cmp59, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.then57
  %39 = load i64, ptr %p1, align 8
  %40 = load i64, ptr %p2, align 8
  %add62 = add nsw i64 %40, %39
  store i64 %add62, ptr %p2, align 8
  %41 = load i64, ptr %p2, align 8
  %cmp63 = icmp slt i64 %41, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then61
  store i64 0, ptr %p2, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.then61
  store i64 0, ptr %p1, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then57
  br label %if.end79

if.else68:                                        ; preds = %if.end54
  %42 = load i64, ptr %p1, align 8
  %cmp69 = icmp sgt i64 %42, 0
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.else68
  %43 = load i64, ptr %p1, align 8
  %dec = add nsw i64 %43, -1
  store i64 %dec, ptr %p1, align 8
  br label %if.end78

if.else72:                                        ; preds = %if.else68
  %44 = load i64, ptr %p2, align 8
  %cmp73 = icmp sgt i64 %44, 0
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.else72
  %45 = load i64, ptr %p2, align 8
  %dec76 = add nsw i64 %45, -1
  store i64 %dec76, ptr %p2, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.else72
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then71
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end67
  %46 = load i32, ptr %negP2, align 4
  %tobool80 = icmp ne i32 %46, 0
  br i1 %tobool80, label %if.then81, label %if.end88

if.then81:                                        ; preds = %if.end79
  %47 = load i64, ptr %p2, align 8
  %48 = load i64, ptr %p1, align 8
  %sub82 = sub nsw i64 %48, %47
  store i64 %sub82, ptr %p1, align 8
  %49 = load i64, ptr %p1, align 8
  %cmp83 = icmp slt i64 %49, 0
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.then81
  %50 = load i64, ptr %p1, align 8
  %51 = load i64, ptr %p2, align 8
  %add86 = add nsw i64 %51, %50
  store i64 %add86, ptr %p2, align 8
  store i64 0, ptr %p1, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.then81
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end79
  %52 = load i32, ptr %p0type, align 4
  %cmp89 = icmp ne i32 %52, 4
  br i1 %cmp89, label %if.then91, label %if.else137

if.then91:                                        ; preds = %if.end88
  br label %while.cond92

while.cond92:                                     ; preds = %if.end110, %if.then91
  %53 = load ptr, ptr %z, align 8
  %54 = load i8, ptr %53, align 1
  %conv93 = zext i8 %54 to i32
  %tobool94 = icmp ne i32 %conv93, 0
  br i1 %tobool94, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond92
  %55 = load i64, ptr %p1, align 8
  %tobool95 = icmp ne i64 %55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond92
  %56 = phi i1 [ false, %while.cond92 ], [ %tobool95, %land.rhs ]
  br i1 %56, label %while.body96, label %while.end112

while.body96:                                     ; preds = %land.end
  %57 = load ptr, ptr %z, align 8
  %incdec.ptr97 = getelementptr inbounds nuw i8, ptr %57, i32 1
  store ptr %incdec.ptr97, ptr %z, align 8
  %58 = load i8, ptr %57, align 1
  %conv98 = zext i8 %58 to i32
  %cmp99 = icmp sge i32 %conv98, 192
  br i1 %cmp99, label %if.then101, label %if.end110

if.then101:                                       ; preds = %while.body96
  br label %while.cond102

while.cond102:                                    ; preds = %while.body107, %if.then101
  %59 = load ptr, ptr %z, align 8
  %60 = load i8, ptr %59, align 1
  %conv103 = zext i8 %60 to i32
  %and104 = and i32 %conv103, 192
  %cmp105 = icmp eq i32 %and104, 128
  br i1 %cmp105, label %while.body107, label %while.end109

while.body107:                                    ; preds = %while.cond102
  %61 = load ptr, ptr %z, align 8
  %incdec.ptr108 = getelementptr inbounds nuw i8, ptr %61, i32 1
  store ptr %incdec.ptr108, ptr %z, align 8
  br label %while.cond102, !llvm.loop !9

while.end109:                                     ; preds = %while.cond102
  br label %if.end110

if.end110:                                        ; preds = %while.end109, %while.body96
  %62 = load i64, ptr %p1, align 8
  %dec111 = add nsw i64 %62, -1
  store i64 %dec111, ptr %p1, align 8
  br label %while.cond92, !llvm.loop !10

while.end112:                                     ; preds = %land.end
  %63 = load ptr, ptr %z, align 8
  store ptr %63, ptr %z2, align 8
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc134, %while.end112
  %64 = load ptr, ptr %z2, align 8
  %65 = load i8, ptr %64, align 1
  %conv114 = zext i8 %65 to i32
  %tobool115 = icmp ne i32 %conv114, 0
  br i1 %tobool115, label %land.rhs116, label %land.end118

land.rhs116:                                      ; preds = %for.cond113
  %66 = load i64, ptr %p2, align 8
  %tobool117 = icmp ne i64 %66, 0
  br label %land.end118

land.end118:                                      ; preds = %land.rhs116, %for.cond113
  %67 = phi i1 [ false, %for.cond113 ], [ %tobool117, %land.rhs116 ]
  br i1 %67, label %for.body119, label %for.end136

for.body119:                                      ; preds = %land.end118
  %68 = load ptr, ptr %z2, align 8
  %incdec.ptr120 = getelementptr inbounds nuw i8, ptr %68, i32 1
  store ptr %incdec.ptr120, ptr %z2, align 8
  %69 = load i8, ptr %68, align 1
  %conv121 = zext i8 %69 to i32
  %cmp122 = icmp sge i32 %conv121, 192
  br i1 %cmp122, label %if.then124, label %if.end133

if.then124:                                       ; preds = %for.body119
  br label %while.cond125

while.cond125:                                    ; preds = %while.body130, %if.then124
  %70 = load ptr, ptr %z2, align 8
  %71 = load i8, ptr %70, align 1
  %conv126 = zext i8 %71 to i32
  %and127 = and i32 %conv126, 192
  %cmp128 = icmp eq i32 %and127, 128
  br i1 %cmp128, label %while.body130, label %while.end132

while.body130:                                    ; preds = %while.cond125
  %72 = load ptr, ptr %z2, align 8
  %incdec.ptr131 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %incdec.ptr131, ptr %z2, align 8
  br label %while.cond125, !llvm.loop !11

while.end132:                                     ; preds = %while.cond125
  br label %if.end133

if.end133:                                        ; preds = %while.end132, %for.body119
  br label %for.inc134

for.inc134:                                       ; preds = %if.end133
  %73 = load i64, ptr %p2, align 8
  %dec135 = add nsw i64 %73, -1
  store i64 %dec135, ptr %p2, align 8
  br label %for.cond113, !llvm.loop !12

for.end136:                                       ; preds = %land.end118
  %74 = load ptr, ptr %context.addr, align 8
  %75 = load ptr, ptr %z, align 8
  %76 = load ptr, ptr %z2, align 8
  %77 = load ptr, ptr %z, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %76 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @sqlite3_result_text64(ptr noundef %74, ptr noundef %75, i64 noundef %sub.ptr.sub, ptr noundef inttoptr (i64 -1 to ptr), i8 noundef zeroext 1)
  br label %if.end151

if.else137:                                       ; preds = %if.end88
  %78 = load i64, ptr %p1, align 8
  %79 = load i64, ptr %p2, align 8
  %add138 = add nsw i64 %78, %79
  %80 = load i32, ptr %len, align 4
  %conv139 = sext i32 %80 to i64
  %cmp140 = icmp sgt i64 %add138, %conv139
  br i1 %cmp140, label %if.then142, label %if.end149

if.then142:                                       ; preds = %if.else137
  %81 = load i32, ptr %len, align 4
  %conv143 = sext i32 %81 to i64
  %82 = load i64, ptr %p1, align 8
  %sub144 = sub nsw i64 %conv143, %82
  store i64 %sub144, ptr %p2, align 8
  %83 = load i64, ptr %p2, align 8
  %cmp145 = icmp slt i64 %83, 0
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.then142
  store i64 0, ptr %p2, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.then142
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.else137
  %84 = load ptr, ptr %context.addr, align 8
  %85 = load ptr, ptr %z, align 8
  %86 = load i64, ptr %p1, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %85, i64 %86
  %87 = load i64, ptr %p2, align 8
  call void @sqlite3_result_blob64(ptr noundef %84, ptr noundef %arrayidx150, i64 noundef %87, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end151

if.end151:                                        ; preds = %if.end149, %for.end136, %if.then24, %if.then18, %if.then
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
