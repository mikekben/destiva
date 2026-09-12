; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @invokeProfileCallback(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Step(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %magic = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %magic, align 4
  %cmp = icmp ne i32 %1, 770837923
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3_reset(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db1, align 8
  store ptr %4, ptr %db, align 8
  %5 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 19
  %6 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %rc3 = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 11
  store i32 7, ptr %rc3, align 8
  store i32 7, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8
  %pc = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 10
  %9 = load i32, ptr %pc, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %10 = load ptr, ptr %p.addr, align 8
  %expired = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 35
  %bf.load = load i16, ptr %expired, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %tobool6 = icmp ne i32 %bf.cast, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %p.addr, align 8
  %rc8 = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 11
  store i32 17, ptr %rc8, align 8
  store i32 1, ptr %rc, align 4
  br label %end_of_step

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %12 = load ptr, ptr %p.addr, align 8
  %pc10 = getelementptr inbounds nuw %struct.Vdbe, ptr %12, i32 0, i32 10
  %13 = load i32, ptr %pc10, align 4
  %cmp11 = icmp slt i32 %13, 0
  br i1 %cmp11, label %if.then12, label %if.end43

if.then12:                                        ; preds = %if.end9
  %14 = load ptr, ptr %db, align 8
  %nVdbeActive = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 36
  %15 = load i32, ptr %nVdbeActive, align 8
  %cmp13 = icmp eq i32 %15, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  %16 = load ptr, ptr %db, align 8
  %u1 = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 60
  store volatile i32 0, ptr %u1, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  %17 = load ptr, ptr %db, align 8
  %mTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 26
  %18 = load i8, ptr %mTrace, align 8
  %conv = zext i8 %18 to i32
  %and = and i32 %conv, 130
  %cmp16 = icmp ne i32 %and, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.else

land.lhs.true18:                                  ; preds = %if.end15
  %19 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %20 = load i8, ptr %busy, align 1
  %tobool19 = icmp ne i8 %20, 0
  br i1 %tobool19, label %if.else, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %21 = load ptr, ptr %p.addr, align 8
  %zSql = getelementptr inbounds nuw %struct.Vdbe, ptr %21, i32 0, i32 41
  %22 = load ptr, ptr %zSql, align 8
  %tobool21 = icmp ne ptr %22, null
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %land.lhs.true20
  %23 = load ptr, ptr %db, align 8
  %pVfs = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pVfs, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %startTime = getelementptr inbounds nuw %struct.Vdbe, ptr %25, i32 0, i32 30
  %call23 = call i32 @sqlite3OsCurrentTimeInt64(ptr noundef %24, ptr noundef %startTime)
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true20, %land.lhs.true18, %if.end15
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22
  %26 = load ptr, ptr %db, align 8
  %nVdbeActive25 = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 36
  %27 = load i32, ptr %nVdbeActive25, align 8
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %nVdbeActive25, align 8
  %28 = load ptr, ptr %p.addr, align 8
  %readOnly = getelementptr inbounds nuw %struct.Vdbe, ptr %28, i32 0, i32 35
  %bf.load26 = load i16, ptr %readOnly, align 1
  %bf.lshr = lshr i16 %bf.load26, 8
  %bf.clear27 = and i16 %bf.lshr, 1
  %bf.cast28 = zext i16 %bf.clear27 to i32
  %cmp29 = icmp eq i32 %bf.cast28, 0
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end24
  %29 = load ptr, ptr %db, align 8
  %nVdbeWrite = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 38
  %30 = load i32, ptr %nVdbeWrite, align 8
  %inc32 = add nsw i32 %30, 1
  store i32 %inc32, ptr %nVdbeWrite, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end24
  %31 = load ptr, ptr %p.addr, align 8
  %bIsReader = getelementptr inbounds nuw %struct.Vdbe, ptr %31, i32 0, i32 35
  %bf.load34 = load i16, ptr %bIsReader, align 1
  %bf.lshr35 = lshr i16 %bf.load34, 9
  %bf.clear36 = and i16 %bf.lshr35, 1
  %bf.cast37 = zext i16 %bf.clear36 to i32
  %tobool38 = icmp ne i32 %bf.cast37, 0
  br i1 %tobool38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end33
  %32 = load ptr, ptr %db, align 8
  %nVdbeRead = getelementptr inbounds nuw %struct.sqlite3, ptr %32, i32 0, i32 37
  %33 = load i32, ptr %nVdbeRead, align 4
  %inc40 = add nsw i32 %33, 1
  store i32 %inc40, ptr %nVdbeRead, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end33
  %34 = load ptr, ptr %p.addr, align 8
  %pc42 = getelementptr inbounds nuw %struct.Vdbe, ptr %34, i32 0, i32 10
  store i32 0, ptr %pc42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end9
  %35 = load ptr, ptr %p.addr, align 8
  %explain = getelementptr inbounds nuw %struct.Vdbe, ptr %35, i32 0, i32 35
  %bf.load44 = load i16, ptr %explain, align 1
  %bf.lshr45 = lshr i16 %bf.load44, 2
  %bf.clear46 = and i16 %bf.lshr45, 3
  %bf.cast47 = zext i16 %bf.clear46 to i32
  %tobool48 = icmp ne i32 %bf.cast47, 0
  br i1 %tobool48, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.end43
  %36 = load ptr, ptr %p.addr, align 8
  %call50 = call i32 @sqlite3VdbeList(ptr noundef %36)
  store i32 %call50, ptr %rc, align 4
  br label %if.end55

if.else51:                                        ; preds = %if.end43
  %37 = load ptr, ptr %db, align 8
  %nVdbeExec = getelementptr inbounds nuw %struct.sqlite3, ptr %37, i32 0, i32 39
  %38 = load i32, ptr %nVdbeExec, align 4
  %inc52 = add nsw i32 %38, 1
  store i32 %inc52, ptr %nVdbeExec, align 4
  %39 = load ptr, ptr %p.addr, align 8
  %call53 = call i32 @sqlite3VdbeExec(ptr noundef %39)
  store i32 %call53, ptr %rc, align 4
  %40 = load ptr, ptr %db, align 8
  %nVdbeExec54 = getelementptr inbounds nuw %struct.sqlite3, ptr %40, i32 0, i32 39
  %41 = load i32, ptr %nVdbeExec54, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, ptr %nVdbeExec54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then49
  %42 = load i32, ptr %rc, align 4
  %cmp56 = icmp ne i32 %42, 100
  br i1 %cmp56, label %if.then58, label %if.end78

if.then58:                                        ; preds = %if.end55
  %43 = load ptr, ptr %p.addr, align 8
  %startTime59 = getelementptr inbounds nuw %struct.Vdbe, ptr %43, i32 0, i32 30
  %44 = load i64, ptr %startTime59, align 8
  %cmp60 = icmp sgt i64 %44, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then58
  %45 = load ptr, ptr %db, align 8
  %46 = load ptr, ptr %p.addr, align 8
  call void @invokeProfileCallback(ptr noundef %45, ptr noundef %46)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then58
  %47 = load i32, ptr %rc, align 4
  %cmp64 = icmp eq i32 %47, 101
  br i1 %cmp64, label %land.lhs.true66, label %if.end77

land.lhs.true66:                                  ; preds = %if.end63
  %48 = load ptr, ptr %db, align 8
  %autoCommit = getelementptr inbounds nuw %struct.sqlite3, ptr %48, i32 0, i32 17
  %49 = load i8, ptr %autoCommit, align 1
  %conv67 = zext i8 %49 to i32
  %tobool68 = icmp ne i32 %conv67, 0
  br i1 %tobool68, label %if.then69, label %if.end77

if.then69:                                        ; preds = %land.lhs.true66
  %50 = load ptr, ptr %db, align 8
  %call70 = call i32 @doWalCallbacks(ptr noundef %50)
  %51 = load ptr, ptr %p.addr, align 8
  %rc71 = getelementptr inbounds nuw %struct.Vdbe, ptr %51, i32 0, i32 11
  store i32 %call70, ptr %rc71, align 8
  %52 = load ptr, ptr %p.addr, align 8
  %rc72 = getelementptr inbounds nuw %struct.Vdbe, ptr %52, i32 0, i32 11
  %53 = load i32, ptr %rc72, align 8
  %cmp73 = icmp ne i32 %53, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then69
  store i32 1, ptr %rc, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then69
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %land.lhs.true66, %if.end63
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end55
  %54 = load i32, ptr %rc, align 4
  %55 = load ptr, ptr %db, align 8
  %errCode = getelementptr inbounds nuw %struct.sqlite3, ptr %55, i32 0, i32 12
  store i32 %54, ptr %errCode, align 8
  %56 = load ptr, ptr %p.addr, align 8
  %db79 = getelementptr inbounds nuw %struct.Vdbe, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %db79, align 8
  %58 = load ptr, ptr %p.addr, align 8
  %rc80 = getelementptr inbounds nuw %struct.Vdbe, ptr %58, i32 0, i32 11
  %59 = load i32, ptr %rc80, align 8
  %call81 = call i32 @sqlite3ApiExit(ptr noundef %57, i32 noundef %59)
  %cmp82 = icmp eq i32 7, %call81
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end78
  %60 = load ptr, ptr %p.addr, align 8
  %rc85 = getelementptr inbounds nuw %struct.Vdbe, ptr %60, i32 0, i32 11
  store i32 7, ptr %rc85, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end78
  br label %end_of_step

end_of_step:                                      ; preds = %if.end86, %if.then7
  %61 = load i32, ptr %rc, align 4
  %cmp87 = icmp ne i32 %61, 100
  br i1 %cmp87, label %land.lhs.true89, label %if.end99

land.lhs.true89:                                  ; preds = %end_of_step
  %62 = load i32, ptr %rc, align 4
  %cmp90 = icmp ne i32 %62, 101
  br i1 %cmp90, label %land.lhs.true92, label %if.end99

land.lhs.true92:                                  ; preds = %land.lhs.true89
  %63 = load ptr, ptr %p.addr, align 8
  %prepFlags = getelementptr inbounds nuw %struct.Vdbe, ptr %63, i32 0, i32 34
  %64 = load i8, ptr %prepFlags, align 4
  %conv93 = zext i8 %64 to i32
  %and94 = and i32 %conv93, 128
  %cmp95 = icmp ne i32 %and94, 0
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %land.lhs.true92
  %65 = load ptr, ptr %p.addr, align 8
  %call98 = call i32 @sqlite3VdbeTransferError(ptr noundef %65)
  store i32 %call98, ptr %rc, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %land.lhs.true92, %land.lhs.true89, %end_of_step
  %66 = load i32, ptr %rc, align 4
  %67 = load ptr, ptr %db, align 8
  %errMask = getelementptr inbounds nuw %struct.sqlite3, ptr %67, i32 0, i32 13
  %68 = load i32, ptr %errMask, align 4
  %and100 = and i32 %66, %68
  store i32 %and100, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end99, %if.then2
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsCurrentTimeInt64(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeTransferError(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeList(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeExec(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @doWalCallbacks(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
