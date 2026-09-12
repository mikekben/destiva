; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.524 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.679 = external hidden unnamed_addr constant [26 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AddColumn(ptr noundef %pParse, ptr noundef %pName, ptr noundef %pType) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %pType.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %z = alloca ptr, align 8
  %zType = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %db = alloca ptr, align 8
  %aNew = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store ptr %pType, ptr %pType.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 58
  %3 = load ptr, ptr %pNewTable, align 8
  store ptr %3, ptr %p, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %4, i32 0, i32 11
  %5 = load i16, ptr %nCol, align 2
  %conv = sext i16 %5 to i32
  %add = add nsw i32 %conv, 1
  %6 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 2
  %7 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp sgt i32 %add, %7
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %p, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %8, ptr noundef @.str.524, ptr noundef %10)
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %db, align 8
  %12 = load ptr, ptr %pName.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %n, align 8
  %14 = load ptr, ptr %pType.addr, align 8
  %n6 = getelementptr inbounds nuw %struct.Token, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %n6, align 8
  %add7 = add i32 %13, %15
  %add8 = add i32 %add7, 2
  %conv9 = zext i32 %add8 to i64
  %call = call ptr @sqlite3DbMallocRaw(ptr noundef %11, i64 noundef %conv9)
  store ptr %call, ptr %z, align 8
  %16 = load ptr, ptr %z, align 8
  %cmp10 = icmp eq ptr %16, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  br label %return

if.end13:                                         ; preds = %if.end5
  %17 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 51
  %18 = load i8, ptr %eParseMode, align 4
  %conv14 = zext i8 %18 to i32
  %cmp15 = icmp sge i32 %conv14, 2
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %z, align 8
  %21 = load ptr, ptr %pName.addr, align 8
  %call18 = call ptr @sqlite3RenameTokenMap(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13
  %22 = load ptr, ptr %z, align 8
  %23 = load ptr, ptr %pName.addr, align 8
  %z20 = getelementptr inbounds nuw %struct.Token, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %z20, align 8
  %25 = load ptr, ptr %pName.addr, align 8
  %n21 = getelementptr inbounds nuw %struct.Token, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %n21, align 8
  %conv22 = zext i32 %26 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %24, i64 %conv22, i1 false)
  %27 = load ptr, ptr %z, align 8
  %28 = load ptr, ptr %pName.addr, align 8
  %n23 = getelementptr inbounds nuw %struct.Token, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %n23, align 8
  %idxprom = zext i32 %29 to i64
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %27, i64 %idxprom
  store i8 0, ptr %arrayidx24, align 1
  %30 = load ptr, ptr %z, align 8
  call void @sqlite3Dequote(ptr noundef %30)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end19
  %31 = load i32, ptr %i, align 4
  %32 = load ptr, ptr %p, align 8
  %nCol25 = getelementptr inbounds nuw %struct.Table, ptr %32, i32 0, i32 11
  %33 = load i16, ptr %nCol25, align 2
  %conv26 = sext i16 %33 to i32
  %cmp27 = icmp slt i32 %31, %conv26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %z, align 8
  %35 = load ptr, ptr %p, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %aCol, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds %struct.Column, ptr %36, i64 %idxprom29
  %zName31 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx30, i32 0, i32 0
  %38 = load ptr, ptr %zName31, align 8
  %call32 = call i32 @sqlite3_stricmp(ptr noundef %34, ptr noundef %38)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.body
  %39 = load ptr, ptr %pParse.addr, align 8
  %40 = load ptr, ptr %z, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %39, ptr noundef @.str.679, ptr noundef %40)
  %41 = load ptr, ptr %db, align 8
  %42 = load ptr, ptr %z, align 8
  call void @sqlite3DbFree(ptr noundef %41, ptr noundef %42)
  br label %return

if.end36:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %43 = load i32, ptr %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %44 = load ptr, ptr %p, align 8
  %nCol37 = getelementptr inbounds nuw %struct.Table, ptr %44, i32 0, i32 11
  %45 = load i16, ptr %nCol37, align 2
  %conv38 = sext i16 %45 to i32
  %and = and i32 %conv38, 7
  %cmp39 = icmp eq i32 %and, 0
  br i1 %cmp39, label %if.then41, label %if.end53

if.then41:                                        ; preds = %for.end
  %46 = load ptr, ptr %db, align 8
  %47 = load ptr, ptr %p, align 8
  %aCol42 = getelementptr inbounds nuw %struct.Table, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %aCol42, align 8
  %49 = load ptr, ptr %p, align 8
  %nCol43 = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 11
  %50 = load i16, ptr %nCol43, align 2
  %conv44 = sext i16 %50 to i32
  %add45 = add nsw i32 %conv44, 8
  %conv46 = sext i32 %add45 to i64
  %mul = mul i64 %conv46, 32
  %call47 = call ptr @sqlite3DbRealloc(ptr noundef %46, ptr noundef %48, i64 noundef %mul)
  store ptr %call47, ptr %aNew, align 8
  %51 = load ptr, ptr %aNew, align 8
  %cmp48 = icmp eq ptr %51, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then41
  %52 = load ptr, ptr %db, align 8
  %53 = load ptr, ptr %z, align 8
  call void @sqlite3DbFree(ptr noundef %52, ptr noundef %53)
  br label %return

if.end51:                                         ; preds = %if.then41
  %54 = load ptr, ptr %aNew, align 8
  %55 = load ptr, ptr %p, align 8
  %aCol52 = getelementptr inbounds nuw %struct.Table, ptr %55, i32 0, i32 1
  store ptr %54, ptr %aCol52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %for.end
  %56 = load ptr, ptr %p, align 8
  %aCol54 = getelementptr inbounds nuw %struct.Table, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %aCol54, align 8
  %58 = load ptr, ptr %p, align 8
  %nCol55 = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 11
  %59 = load i16, ptr %nCol55, align 2
  %idxprom56 = sext i16 %59 to i64
  %arrayidx57 = getelementptr inbounds %struct.Column, ptr %57, i64 %idxprom56
  store ptr %arrayidx57, ptr %pCol, align 8
  %60 = load ptr, ptr %pCol, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %60, i8 0, i64 32, i1 false)
  %61 = load ptr, ptr %z, align 8
  %62 = load ptr, ptr %pCol, align 8
  %zName58 = getelementptr inbounds nuw %struct.Column, ptr %62, i32 0, i32 0
  store ptr %61, ptr %zName58, align 8
  %63 = load ptr, ptr %pType.addr, align 8
  %n59 = getelementptr inbounds nuw %struct.Token, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %n59, align 8
  %cmp60 = icmp eq i32 %64, 0
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end53
  %65 = load ptr, ptr %pCol, align 8
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %65, i32 0, i32 4
  store i8 65, ptr %affinity, align 1
  %66 = load ptr, ptr %pCol, align 8
  %szEst = getelementptr inbounds nuw %struct.Column, ptr %66, i32 0, i32 5
  store i8 1, ptr %szEst, align 2
  br label %if.end75

if.else:                                          ; preds = %if.end53
  %67 = load ptr, ptr %z, align 8
  %68 = load ptr, ptr %z, align 8
  %call63 = call i32 @sqlite3Strlen30(ptr noundef %68)
  %idx.ext = sext i32 %call63 to i64
  %add.ptr = getelementptr inbounds i8, ptr %67, i64 %idx.ext
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  store ptr %add.ptr64, ptr %zType, align 8
  %69 = load ptr, ptr %zType, align 8
  %70 = load ptr, ptr %pType.addr, align 8
  %z65 = getelementptr inbounds nuw %struct.Token, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %z65, align 8
  %72 = load ptr, ptr %pType.addr, align 8
  %n66 = getelementptr inbounds nuw %struct.Token, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %n66, align 8
  %conv67 = zext i32 %73 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 %71, i64 %conv67, i1 false)
  %74 = load ptr, ptr %zType, align 8
  %75 = load ptr, ptr %pType.addr, align 8
  %n68 = getelementptr inbounds nuw %struct.Token, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %n68, align 8
  %idxprom69 = zext i32 %76 to i64
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %74, i64 %idxprom69
  store i8 0, ptr %arrayidx70, align 1
  %77 = load ptr, ptr %zType, align 8
  call void @sqlite3Dequote(ptr noundef %77)
  %78 = load ptr, ptr %zType, align 8
  %79 = load ptr, ptr %pCol, align 8
  %call71 = call signext i8 @sqlite3AffinityType(ptr noundef %78, ptr noundef %79)
  %80 = load ptr, ptr %pCol, align 8
  %affinity72 = getelementptr inbounds nuw %struct.Column, ptr %80, i32 0, i32 4
  store i8 %call71, ptr %affinity72, align 1
  %81 = load ptr, ptr %pCol, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %81, i32 0, i32 6
  %82 = load i8, ptr %colFlags, align 1
  %conv73 = zext i8 %82 to i32
  %or = or i32 %conv73, 4
  %conv74 = trunc i32 %or to i8
  store i8 %conv74, ptr %colFlags, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then62
  %83 = load ptr, ptr %p, align 8
  %nCol76 = getelementptr inbounds nuw %struct.Table, ptr %83, i32 0, i32 11
  %84 = load i16, ptr %nCol76, align 2
  %inc77 = add i16 %84, 1
  store i16 %inc77, ptr %nCol76, align 2
  %85 = load ptr, ptr %pParse.addr, align 8
  %constraintName = getelementptr inbounds nuw %struct.Parse, ptr %85, i32 0, i32 25
  %n78 = getelementptr inbounds nuw %struct.Token, ptr %constraintName, i32 0, i32 1
  store i32 0, ptr %n78, align 8
  br label %return

return:                                           ; preds = %if.end75, %if.then50, %if.then35, %if.then12, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3RenameTokenMap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3AffinityType(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Dequote(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
