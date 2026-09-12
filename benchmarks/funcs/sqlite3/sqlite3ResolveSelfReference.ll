; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ResolveSelfReference(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %type, ptr noundef %pExpr, ptr noundef %pList) #1 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %pExpr.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %sSrc = alloca %struct.SrcList, align 8
  %sNC = alloca %struct.NameContext, align 8
  %rc = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %sSrc, i8 0, i64 120, i1 false)
  %0 = load ptr, ptr %pTab.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %sSrc, i32 0, i32 0
  store i32 1, ptr %nSrc, align 8
  %1 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %zName, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %sSrc, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %zName1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 2
  store ptr %2, ptr %zName1, align 8
  %3 = load ptr, ptr %pTab.addr, align 8
  %a2 = getelementptr inbounds nuw %struct.SrcList, ptr %sSrc, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a2, i64 0, i64 0
  %pTab4 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx3, i32 0, i32 4
  store ptr %3, ptr %pTab4, align 8
  %a5 = getelementptr inbounds nuw %struct.SrcList, ptr %sSrc, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a5, i64 0, i64 0
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx6, i32 0, i32 10
  store i32 -1, ptr %iCursor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %pParse7 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %4, ptr %pParse7, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %sSrc, ptr %pSrcList, align 8
  %5 = load i32, ptr %type.addr, align 4
  %or = or i32 %5, 65536
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  store i32 %or, ptr %ncFlags, align 8
  %6 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %6)
  store i32 %call, ptr %rc, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %7 = load i32, ptr %rc, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %8 = load ptr, ptr %pList.addr, align 8
  %tobool10 = icmp ne ptr %8, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %9 = load ptr, ptr %pList.addr, align 8
  %call12 = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %9)
  store i32 %call12, ptr %rc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then8
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprListNames(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
