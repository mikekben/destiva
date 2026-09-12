; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.TriggerPrg = type { ptr, ptr, ptr, i32, [2 x i32] }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @isSetNullAction(ptr noundef %pParse, ptr noundef %pFKey) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pFKey.addr = alloca ptr, align 8
  %pTop = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pFKey, ptr %pFKey.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pToplevel = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 35
  %1 = load ptr, ptr %pToplevel, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %pToplevel1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 35
  %3 = load ptr, ptr %pToplevel1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ]
  store ptr %cond, ptr %pTop, align 8
  %5 = load ptr, ptr %pTop, align 8
  %pTriggerPrg = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 65
  %6 = load ptr, ptr %pTriggerPrg, align 8
  %tobool2 = icmp ne ptr %6, null
  br i1 %tobool2, label %if.then, label %if.end18

if.then:                                          ; preds = %cond.end
  %7 = load ptr, ptr %pTop, align 8
  %pTriggerPrg3 = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 65
  %8 = load ptr, ptr %pTriggerPrg3, align 8
  %pTrigger = getelementptr inbounds nuw %struct.TriggerPrg, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pTrigger, align 8
  store ptr %9, ptr %p, align 8
  %10 = load ptr, ptr %p, align 8
  %11 = load ptr, ptr %pFKey.addr, align 8
  %apTrigger = getelementptr inbounds nuw %struct.FKey, ptr %11, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %apTrigger, i64 0, i64 0
  %12 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp eq ptr %10, %12
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %13 = load ptr, ptr %pFKey.addr, align 8
  %aAction = getelementptr inbounds nuw %struct.FKey, ptr %13, i32 0, i32 7
  %arrayidx4 = getelementptr inbounds [2 x i8], ptr %aAction, i64 0, i64 0
  %14 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %14 to i32
  %cmp5 = icmp eq i32 %conv, 8
  br i1 %cmp5, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %15 = load ptr, ptr %p, align 8
  %16 = load ptr, ptr %pFKey.addr, align 8
  %apTrigger7 = getelementptr inbounds nuw %struct.FKey, ptr %16, i32 0, i32 8
  %arrayidx8 = getelementptr inbounds [2 x ptr], ptr %apTrigger7, i64 0, i64 1
  %17 = load ptr, ptr %arrayidx8, align 8
  %cmp9 = icmp eq ptr %15, %17
  br i1 %cmp9, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %18 = load ptr, ptr %pFKey.addr, align 8
  %aAction12 = getelementptr inbounds nuw %struct.FKey, ptr %18, i32 0, i32 7
  %arrayidx13 = getelementptr inbounds [2 x i8], ptr %aAction12, i64 0, i64 1
  %19 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %19 to i32
  %cmp15 = icmp eq i32 %conv14, 8
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %land.lhs.true11, %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true11, %lor.lhs.false
  br label %if.end18

if.end18:                                         ; preds = %if.end, %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then17
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
