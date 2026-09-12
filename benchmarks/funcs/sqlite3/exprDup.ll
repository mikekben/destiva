; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @exprDup(ptr noundef %db, ptr noundef %p, i32 noundef %dupFlags, ptr noundef %pzBuffer) #1 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %dupFlags.addr = alloca i32, align 4
  %pzBuffer.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %zAlloc = alloca ptr, align 8
  %staticFlag = alloca i32, align 4
  %nStructSize = alloca i32, align 4
  %nNewSize = alloca i32, align 4
  %nToken = alloca i32, align 4
  %nSize = alloca i32, align 4
  %zToken = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %dupFlags, ptr %dupFlags.addr, align 4
  store ptr %pzBuffer, ptr %pzBuffer.addr, align 8
  %0 = load ptr, ptr %pzBuffer.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pzBuffer.addr, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %zAlloc, align 8
  store i32 134217728, ptr %staticFlag, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %5 = load i32, ptr %dupFlags.addr, align 4
  %call = call i32 @dupedExprSize(ptr noundef %4, i32 noundef %5)
  %conv = sext i32 %call to i64
  %call1 = call ptr @sqlite3DbMallocRawNN(ptr noundef %3, i64 noundef %conv)
  store ptr %call1, ptr %zAlloc, align 8
  store i32 0, ptr %staticFlag, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %zAlloc, align 8
  store ptr %6, ptr %pNew, align 8
  %7 = load ptr, ptr %pNew, align 8
  %tobool2 = icmp ne ptr %7, null
  br i1 %tobool2, label %if.then3, label %if.end117

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load i32, ptr %dupFlags.addr, align 4
  %call4 = call i32 @dupedExprStructSize(ptr noundef %8, i32 noundef %9)
  store i32 %call4, ptr %nStructSize, align 4
  %10 = load i32, ptr %nStructSize, align 4
  %and = and i32 %10, 4095
  store i32 %and, ptr %nNewSize, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %flags, align 4
  %and5 = and i32 %12, 1024
  %cmp = icmp ne i32 %and5, 0
  br i1 %cmp, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %13 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %u, align 8
  %tobool7 = icmp ne ptr %14, null
  br i1 %tobool7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %p.addr, align 8
  %u9 = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %u9, align 8
  %call10 = call i32 @sqlite3Strlen30(ptr noundef %16)
  %add = add nsw i32 %call10, 1
  store i32 %add, ptr %nToken, align 4
  br label %if.end12

if.else11:                                        ; preds = %land.lhs.true, %if.then3
  store i32 0, ptr %nToken, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then8
  %17 = load i32, ptr %dupFlags.addr, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.end12
  %18 = load ptr, ptr %zAlloc, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %20 = load i32, ptr %nNewSize, align 4
  %conv15 = sext i32 %20 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 8 %19, i64 %conv15, i1 false)
  br label %if.end25

if.else16:                                        ; preds = %if.end12
  %21 = load ptr, ptr %p.addr, align 8
  %call17 = call i32 @exprStructSize(ptr noundef %21)
  store i32 %call17, ptr %nSize, align 4
  %22 = load ptr, ptr %zAlloc, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %24 = load i32, ptr %nSize, align 4
  %conv18 = zext i32 %24 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 8 %23, i64 %conv18, i1 false)
  %25 = load i32, ptr %nSize, align 4
  %conv19 = zext i32 %25 to i64
  %cmp20 = icmp ult i64 %conv19, 72
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else16
  %26 = load ptr, ptr %zAlloc, align 8
  %27 = load i32, ptr %nSize, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %26, i64 %idxprom
  %28 = load i32, ptr %nSize, align 4
  %conv23 = zext i32 %28 to i64
  %sub = sub i64 72, %conv23
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx, i8 0, i64 %sub, i1 false)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then14
  %29 = load ptr, ptr %pNew, align 8
  %flags26 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %flags26, align 4
  %and27 = and i32 %30, -134307841
  store i32 %and27, ptr %flags26, align 4
  %31 = load i32, ptr %nStructSize, align 4
  %and28 = and i32 %31, 24576
  %32 = load ptr, ptr %pNew, align 8
  %flags29 = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %flags29, align 4
  %or = or i32 %33, %and28
  store i32 %or, ptr %flags29, align 4
  %34 = load i32, ptr %staticFlag, align 4
  %35 = load ptr, ptr %pNew, align 8
  %flags30 = getelementptr inbounds nuw %struct.Expr, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %flags30, align 4
  %or31 = or i32 %36, %34
  store i32 %or31, ptr %flags30, align 4
  %37 = load i32, ptr %nToken, align 4
  %tobool32 = icmp ne i32 %37, 0
  br i1 %tobool32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end25
  %38 = load ptr, ptr %zAlloc, align 8
  %39 = load i32, ptr %nNewSize, align 4
  %idxprom34 = sext i32 %39 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %38, i64 %idxprom34
  %40 = load ptr, ptr %pNew, align 8
  %u36 = getelementptr inbounds nuw %struct.Expr, ptr %40, i32 0, i32 3
  store ptr %arrayidx35, ptr %u36, align 8
  store ptr %arrayidx35, ptr %zToken, align 8
  %41 = load ptr, ptr %zToken, align 8
  %42 = load ptr, ptr %p.addr, align 8
  %u37 = getelementptr inbounds nuw %struct.Expr, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %u37, align 8
  %44 = load i32, ptr %nToken, align 4
  %conv38 = sext i32 %44 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %43, i64 %conv38, i1 false)
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end25
  %45 = load ptr, ptr %p.addr, align 8
  %flags40 = getelementptr inbounds nuw %struct.Expr, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %flags40, align 4
  %47 = load ptr, ptr %pNew, align 8
  %flags41 = getelementptr inbounds nuw %struct.Expr, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %flags41, align 4
  %or42 = or i32 %46, %48
  %and43 = and i32 %or42, 8404992
  %cmp44 = icmp eq i32 0, %and43
  br i1 %cmp44, label %if.then46, label %if.end59

if.then46:                                        ; preds = %if.end39
  %49 = load ptr, ptr %p.addr, align 8
  %flags47 = getelementptr inbounds nuw %struct.Expr, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %flags47, align 4
  %and48 = and i32 %50, 2048
  %cmp49 = icmp ne i32 %and48, 0
  br i1 %cmp49, label %if.then51, label %if.else54

if.then51:                                        ; preds = %if.then46
  %51 = load ptr, ptr %db.addr, align 8
  %52 = load ptr, ptr %p.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %52, i32 0, i32 6
  %53 = load ptr, ptr %x, align 8
  %54 = load i32, ptr %dupFlags.addr, align 4
  %call52 = call ptr @sqlite3SelectDup(ptr noundef %51, ptr noundef %53, i32 noundef %54)
  %55 = load ptr, ptr %pNew, align 8
  %x53 = getelementptr inbounds nuw %struct.Expr, ptr %55, i32 0, i32 6
  store ptr %call52, ptr %x53, align 8
  br label %if.end58

if.else54:                                        ; preds = %if.then46
  %56 = load ptr, ptr %db.addr, align 8
  %57 = load ptr, ptr %p.addr, align 8
  %x55 = getelementptr inbounds nuw %struct.Expr, ptr %57, i32 0, i32 6
  %58 = load ptr, ptr %x55, align 8
  %59 = load i32, ptr %dupFlags.addr, align 4
  %call56 = call ptr @sqlite3ExprListDup(ptr noundef %56, ptr noundef %58, i32 noundef %59)
  %60 = load ptr, ptr %pNew, align 8
  %x57 = getelementptr inbounds nuw %struct.Expr, ptr %60, i32 0, i32 6
  store ptr %call56, ptr %x57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.then51
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end39
  %61 = load ptr, ptr %pNew, align 8
  %flags60 = getelementptr inbounds nuw %struct.Expr, ptr %61, i32 0, i32 2
  %62 = load i32, ptr %flags60, align 4
  %and61 = and i32 %62, 16801792
  %cmp62 = icmp ne i32 %and61, 0
  br i1 %cmp62, label %if.then64, label %if.else95

if.then64:                                        ; preds = %if.end59
  %63 = load ptr, ptr %p.addr, align 8
  %64 = load i32, ptr %dupFlags.addr, align 4
  %call65 = call i32 @dupedExprNodeSize(ptr noundef %63, i32 noundef %64)
  %65 = load ptr, ptr %zAlloc, align 8
  %idx.ext = sext i32 %call65 to i64
  %add.ptr = getelementptr inbounds i8, ptr %65, i64 %idx.ext
  store ptr %add.ptr, ptr %zAlloc, align 8
  %66 = load ptr, ptr %pNew, align 8
  %flags66 = getelementptr inbounds nuw %struct.Expr, ptr %66, i32 0, i32 2
  %67 = load i32, ptr %flags66, align 4
  %and67 = and i32 %67, 8404992
  %cmp68 = icmp ne i32 %and67, 0
  br i1 %cmp68, label %if.end83, label %if.then70

if.then70:                                        ; preds = %if.then64
  %68 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %68, i32 0, i32 4
  %69 = load ptr, ptr %pLeft, align 8
  %tobool71 = icmp ne ptr %69, null
  br i1 %tobool71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then70
  %70 = load ptr, ptr %db.addr, align 8
  %71 = load ptr, ptr %p.addr, align 8
  %pLeft72 = getelementptr inbounds nuw %struct.Expr, ptr %71, i32 0, i32 4
  %72 = load ptr, ptr %pLeft72, align 8
  %call73 = call ptr @exprDup(ptr noundef %70, ptr noundef %72, i32 noundef 1, ptr noundef %zAlloc)
  br label %cond.end

cond.false:                                       ; preds = %if.then70
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call73, %cond.true ], [ null, %cond.false ]
  %73 = load ptr, ptr %pNew, align 8
  %pLeft74 = getelementptr inbounds nuw %struct.Expr, ptr %73, i32 0, i32 4
  store ptr %cond, ptr %pLeft74, align 8
  %74 = load ptr, ptr %p.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %74, i32 0, i32 5
  %75 = load ptr, ptr %pRight, align 8
  %tobool75 = icmp ne ptr %75, null
  br i1 %tobool75, label %cond.true76, label %cond.false79

cond.true76:                                      ; preds = %cond.end
  %76 = load ptr, ptr %db.addr, align 8
  %77 = load ptr, ptr %p.addr, align 8
  %pRight77 = getelementptr inbounds nuw %struct.Expr, ptr %77, i32 0, i32 5
  %78 = load ptr, ptr %pRight77, align 8
  %call78 = call ptr @exprDup(ptr noundef %76, ptr noundef %78, i32 noundef 1, ptr noundef %zAlloc)
  br label %cond.end80

cond.false79:                                     ; preds = %cond.end
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %cond.true76
  %cond81 = phi ptr [ %call78, %cond.true76 ], [ null, %cond.false79 ]
  %79 = load ptr, ptr %pNew, align 8
  %pRight82 = getelementptr inbounds nuw %struct.Expr, ptr %79, i32 0, i32 5
  store ptr %cond81, ptr %pRight82, align 8
  br label %if.end83

if.end83:                                         ; preds = %cond.end80, %if.then64
  %80 = load ptr, ptr %p.addr, align 8
  %flags84 = getelementptr inbounds nuw %struct.Expr, ptr %80, i32 0, i32 2
  %81 = load i32, ptr %flags84, align 4
  %and85 = and i32 %81, 16777216
  %cmp86 = icmp ne i32 %and85, 0
  br i1 %cmp86, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.end83
  %82 = load ptr, ptr %db.addr, align 8
  %83 = load ptr, ptr %pNew, align 8
  %84 = load ptr, ptr %p.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %84, i32 0, i32 14
  %85 = load ptr, ptr %y, align 8
  %call89 = call ptr @sqlite3WindowDup(ptr noundef %82, ptr noundef %83, ptr noundef %85)
  %86 = load ptr, ptr %pNew, align 8
  %y90 = getelementptr inbounds nuw %struct.Expr, ptr %86, i32 0, i32 14
  store ptr %call89, ptr %y90, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end83
  %87 = load ptr, ptr %pzBuffer.addr, align 8
  %tobool92 = icmp ne ptr %87, null
  br i1 %tobool92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end91
  %88 = load ptr, ptr %zAlloc, align 8
  %89 = load ptr, ptr %pzBuffer.addr, align 8
  store ptr %88, ptr %89, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end91
  br label %if.end116

if.else95:                                        ; preds = %if.end59
  %90 = load ptr, ptr %p.addr, align 8
  %flags96 = getelementptr inbounds nuw %struct.Expr, ptr %90, i32 0, i32 2
  %91 = load i32, ptr %flags96, align 4
  %and97 = and i32 %91, 8404992
  %cmp98 = icmp ne i32 %and97, 0
  br i1 %cmp98, label %if.end115, label %if.then100

if.then100:                                       ; preds = %if.else95
  %92 = load ptr, ptr %pNew, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %92, i32 0, i32 0
  %93 = load i8, ptr %op, align 8
  %conv101 = zext i8 %93 to i32
  %cmp102 = icmp eq i32 %conv101, 173
  br i1 %cmp102, label %if.then104, label %if.else107

if.then104:                                       ; preds = %if.then100
  %94 = load ptr, ptr %p.addr, align 8
  %pLeft105 = getelementptr inbounds nuw %struct.Expr, ptr %94, i32 0, i32 4
  %95 = load ptr, ptr %pLeft105, align 8
  %96 = load ptr, ptr %pNew, align 8
  %pLeft106 = getelementptr inbounds nuw %struct.Expr, ptr %96, i32 0, i32 4
  store ptr %95, ptr %pLeft106, align 8
  br label %if.end111

if.else107:                                       ; preds = %if.then100
  %97 = load ptr, ptr %db.addr, align 8
  %98 = load ptr, ptr %p.addr, align 8
  %pLeft108 = getelementptr inbounds nuw %struct.Expr, ptr %98, i32 0, i32 4
  %99 = load ptr, ptr %pLeft108, align 8
  %call109 = call ptr @sqlite3ExprDup(ptr noundef %97, ptr noundef %99, i32 noundef 0)
  %100 = load ptr, ptr %pNew, align 8
  %pLeft110 = getelementptr inbounds nuw %struct.Expr, ptr %100, i32 0, i32 4
  store ptr %call109, ptr %pLeft110, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.else107, %if.then104
  %101 = load ptr, ptr %db.addr, align 8
  %102 = load ptr, ptr %p.addr, align 8
  %pRight112 = getelementptr inbounds nuw %struct.Expr, ptr %102, i32 0, i32 5
  %103 = load ptr, ptr %pRight112, align 8
  %call113 = call ptr @sqlite3ExprDup(ptr noundef %101, ptr noundef %103, i32 noundef 0)
  %104 = load ptr, ptr %pNew, align 8
  %pRight114 = getelementptr inbounds nuw %struct.Expr, ptr %104, i32 0, i32 5
  store ptr %call113, ptr %pRight114, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.end111, %if.else95
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end94
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end
  %105 = load ptr, ptr %pNew, align 8
  ret ptr %105
}

; Function Attrs: nounwind uwtable
declare hidden i32 @dupedExprSize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @dupedExprStructSize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @exprStructSize(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @dupedExprNodeSize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WindowDup(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
