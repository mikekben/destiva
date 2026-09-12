; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@.str.655 = external hidden unnamed_addr constant [18 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3IndexedByLookup(ptr noundef %pParse, ptr noundef %pFrom) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pFrom.addr = alloca ptr, align 8
  %pTab2 = alloca ptr, align 8
  %zIndexedBy = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pFrom, ptr %pFrom.addr, align 8
  %0 = load ptr, ptr %pFrom.addr, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pTab, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pFrom.addr, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %2, i32 0, i32 9
  %isIndexedBy = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isIndexedBy, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pFrom.addr, align 8
  %pTab3 = getelementptr inbounds nuw %struct.SrcList_item, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pTab3, align 8
  store ptr %4, ptr %pTab2, align 8
  %5 = load ptr, ptr %pFrom.addr, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %5, i32 0, i32 14
  %6 = load ptr, ptr %u1, align 8
  store ptr %6, ptr %zIndexedBy, align 8
  %7 = load ptr, ptr %pTab2, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %pIndex, align 8
  store ptr %8, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load ptr, ptr %pIdx, align 8
  %tobool4 = icmp ne ptr %9, null
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pIdx, align 8
  %zName = getelementptr inbounds nuw %struct.Index, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zName, align 8
  %12 = load ptr, ptr %zIndexedBy, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %11, ptr noundef %12)
  %tobool5 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %tobool5, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %pNext, align 8
  store ptr %15, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %16 = load ptr, ptr %pIdx, align 8
  %tobool6 = icmp ne ptr %16, null
  br i1 %tobool6, label %if.end, label %if.then7

if.then7:                                         ; preds = %for.end
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %zIndexedBy, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %17, ptr noundef @.str.655, ptr noundef %18, i32 noundef 0)
  %19 = load ptr, ptr %pParse.addr, align 8
  %checkSchema = getelementptr inbounds nuw %struct.Parse, ptr %19, i32 0, i32 5
  store i8 1, ptr %checkSchema, align 1
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %20 = load ptr, ptr %pIdx, align 8
  %21 = load ptr, ptr %pFrom.addr, align 8
  %pIBIndex = getelementptr inbounds nuw %struct.SrcList_item, ptr %21, i32 0, i32 15
  store ptr %20, ptr %pIBIndex, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
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
