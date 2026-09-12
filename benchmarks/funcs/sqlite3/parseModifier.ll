; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.23 = type { i8, i8, ptr, double, double }

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16
@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@.str.1020 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.1021 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.1022 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1023 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.1024 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.1025 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.1026 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1027 = external hidden unnamed_addr constant [4 x i8], align 1
@aXformType = external hidden constant [6 x { i8, i8, [6 x i8], ptr, double, double }], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AtoF(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @computeJD(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @parseModifier(ptr noundef %pCtx, ptr noundef %z, i32 noundef %n, ptr noundef %p) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %r = alloca double, align 8
  %c1 = alloca i64, align 8
  %Z = alloca i64, align 8
  %rRounder = alloca double, align 8
  %i = alloca i32, align 4
  %z2 = alloca ptr, align 8
  %tx = alloca %struct.DateTime, align 8
  %day = alloca i64, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 1, ptr %rc, align 4
  %0 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 108, label %sw.bb
    i32 117, label %sw.bb5
    i32 119, label %sw.bb49
    i32 115, label %sw.bb86
    i32 43, label %sw.bb123
    i32 45, label %sw.bb123
    i32 48, label %sw.bb123
    i32 49, label %sw.bb123
    i32 50, label %sw.bb123
    i32 51, label %sw.bb123
    i32 52, label %sw.bb123
    i32 53, label %sw.bb123
    i32 54, label %sw.bb123
    i32 55, label %sw.bb123
    i32 56, label %sw.bb123
    i32 57, label %sw.bb123
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %z.addr, align 8
  %call = call i32 @sqlite3_stricmp(ptr noundef %3, ptr noundef @.str.1020)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @sqlite3NotPureFunc(ptr noundef %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %p.addr, align 8
  call void @computeJD(ptr noundef %5)
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i64 @localtimeOffset(ptr noundef %6, ptr noundef %7, ptr noundef %rc)
  %8 = load ptr, ptr %p.addr, align 8
  %iJD = getelementptr inbounds nuw %struct.DateTime, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %iJD, align 8
  %add = add nsw i64 %9, %call4
  store i64 %add, ptr %iJD, align 8
  %10 = load ptr, ptr %p.addr, align 8
  call void @clearYMD_HMS_TZ(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog278

sw.bb5:                                           ; preds = %entry
  %11 = load ptr, ptr %z.addr, align 8
  %call6 = call i32 @sqlite3_stricmp(ptr noundef %11, ptr noundef @.str.1021)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %sw.bb5
  %12 = load ptr, ptr %p.addr, align 8
  %rawS = getelementptr inbounds nuw %struct.DateTime, ptr %12, i32 0, i32 9
  %13 = load i8, ptr %rawS, align 1
  %conv10 = sext i8 %13 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true9
  %14 = load ptr, ptr %p.addr, align 8
  %s = getelementptr inbounds nuw %struct.DateTime, ptr %14, i32 0, i32 7
  %15 = load double, ptr %s, align 8
  %16 = call double @llvm.fmuladd.f64(double %15, double 1.000000e+03, double 0x42E7F907CA644000)
  store double %16, ptr %r, align 8
  %17 = load double, ptr %r, align 8
  %cmp13 = fcmp oge double %17, 0.000000e+00
  br i1 %cmp13, label %land.lhs.true15, label %if.end22

land.lhs.true15:                                  ; preds = %if.then12
  %18 = load double, ptr %r, align 8
  %cmp16 = fcmp olt double %18, 0x42FA6401072FE000
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %land.lhs.true15
  %19 = load ptr, ptr %p.addr, align 8
  call void @clearYMD_HMS_TZ(ptr noundef %19)
  %20 = load double, ptr %r, align 8
  %conv19 = fptosi double %20 to i64
  %21 = load ptr, ptr %p.addr, align 8
  %iJD20 = getelementptr inbounds nuw %struct.DateTime, ptr %21, i32 0, i32 0
  store i64 %conv19, ptr %iJD20, align 8
  %22 = load ptr, ptr %p.addr, align 8
  %validJD = getelementptr inbounds nuw %struct.DateTime, ptr %22, i32 0, i32 8
  store i8 1, ptr %validJD, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %rawS21 = getelementptr inbounds nuw %struct.DateTime, ptr %23, i32 0, i32 9
  store i8 0, ptr %rawS21, align 1
  store i32 0, ptr %rc, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %land.lhs.true15, %if.then12
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true9, %sw.bb5
  %24 = load ptr, ptr %z.addr, align 8
  %call23 = call i32 @sqlite3_stricmp(ptr noundef %24, ptr noundef @.str.1022)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %land.lhs.true26, label %if.end47

land.lhs.true26:                                  ; preds = %if.else
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call27 = call i32 @sqlite3NotPureFunc(ptr noundef %25)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end47

if.then29:                                        ; preds = %land.lhs.true26
  %26 = load ptr, ptr %p.addr, align 8
  %tzSet = getelementptr inbounds nuw %struct.DateTime, ptr %26, i32 0, i32 13
  %27 = load i8, ptr %tzSet, align 1
  %conv30 = sext i8 %27 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then33, label %if.else45

if.then33:                                        ; preds = %if.then29
  %28 = load ptr, ptr %p.addr, align 8
  call void @computeJD(ptr noundef %28)
  %29 = load ptr, ptr %p.addr, align 8
  %30 = load ptr, ptr %pCtx.addr, align 8
  %call34 = call i64 @localtimeOffset(ptr noundef %29, ptr noundef %30, ptr noundef %rc)
  store i64 %call34, ptr %c1, align 8
  %31 = load i32, ptr %rc, align 4
  %cmp35 = icmp eq i32 %31, 0
  br i1 %cmp35, label %if.then37, label %if.end43

if.then37:                                        ; preds = %if.then33
  %32 = load i64, ptr %c1, align 8
  %33 = load ptr, ptr %p.addr, align 8
  %iJD38 = getelementptr inbounds nuw %struct.DateTime, ptr %33, i32 0, i32 0
  %34 = load i64, ptr %iJD38, align 8
  %sub = sub nsw i64 %34, %32
  store i64 %sub, ptr %iJD38, align 8
  %35 = load ptr, ptr %p.addr, align 8
  call void @clearYMD_HMS_TZ(ptr noundef %35)
  %36 = load i64, ptr %c1, align 8
  %37 = load ptr, ptr %p.addr, align 8
  %38 = load ptr, ptr %pCtx.addr, align 8
  %call39 = call i64 @localtimeOffset(ptr noundef %37, ptr noundef %38, ptr noundef %rc)
  %sub40 = sub nsw i64 %36, %call39
  %39 = load ptr, ptr %p.addr, align 8
  %iJD41 = getelementptr inbounds nuw %struct.DateTime, ptr %39, i32 0, i32 0
  %40 = load i64, ptr %iJD41, align 8
  %add42 = add nsw i64 %40, %sub40
  store i64 %add42, ptr %iJD41, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.then33
  %41 = load ptr, ptr %p.addr, align 8
  %tzSet44 = getelementptr inbounds nuw %struct.DateTime, ptr %41, i32 0, i32 13
  store i8 1, ptr %tzSet44, align 1
  br label %if.end46

if.else45:                                        ; preds = %if.then29
  store i32 0, ptr %rc, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.end43
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %land.lhs.true26, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end22
  br label %sw.epilog278

sw.bb49:                                          ; preds = %entry
  %42 = load ptr, ptr %z.addr, align 8
  %call50 = call i32 @sqlite3_strnicmp(ptr noundef %42, ptr noundef @.str.1023, i32 noundef 8)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %land.lhs.true53, label %if.end85

land.lhs.true53:                                  ; preds = %sw.bb49
  %43 = load ptr, ptr %z.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %43, i64 8
  %44 = load ptr, ptr %z.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %44, i64 8
  %call56 = call i32 @sqlite3Strlen30(ptr noundef %arrayidx55)
  %call57 = call i32 @sqlite3AtoF(ptr noundef %arrayidx54, ptr noundef %r, i32 noundef %call56, i8 noundef zeroext 1)
  %cmp58 = icmp sgt i32 %call57, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end85

land.lhs.true60:                                  ; preds = %land.lhs.true53
  %45 = load double, ptr %r, align 8
  %conv61 = fptosi double %45 to i32
  store i32 %conv61, ptr %n.addr, align 4
  %conv62 = sitofp i32 %conv61 to double
  %46 = load double, ptr %r, align 8
  %cmp63 = fcmp oeq double %conv62, %46
  br i1 %cmp63, label %land.lhs.true65, label %if.end85

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %47 = load i32, ptr %n.addr, align 4
  %cmp66 = icmp sge i32 %47, 0
  br i1 %cmp66, label %land.lhs.true68, label %if.end85

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %48 = load double, ptr %r, align 8
  %cmp69 = fcmp olt double %48, 7.000000e+00
  br i1 %cmp69, label %if.then71, label %if.end85

if.then71:                                        ; preds = %land.lhs.true68
  %49 = load ptr, ptr %p.addr, align 8
  call void @computeYMD_HMS(ptr noundef %49)
  %50 = load ptr, ptr %p.addr, align 8
  %validTZ = getelementptr inbounds nuw %struct.DateTime, ptr %50, i32 0, i32 12
  store i8 0, ptr %validTZ, align 4
  %51 = load ptr, ptr %p.addr, align 8
  %validJD72 = getelementptr inbounds nuw %struct.DateTime, ptr %51, i32 0, i32 8
  store i8 0, ptr %validJD72, align 8
  %52 = load ptr, ptr %p.addr, align 8
  call void @computeJD(ptr noundef %52)
  %53 = load ptr, ptr %p.addr, align 8
  %iJD73 = getelementptr inbounds nuw %struct.DateTime, ptr %53, i32 0, i32 0
  %54 = load i64, ptr %iJD73, align 8
  %add74 = add nsw i64 %54, 129600000
  %div = sdiv i64 %add74, 86400000
  %rem = srem i64 %div, 7
  store i64 %rem, ptr %Z, align 8
  %55 = load i64, ptr %Z, align 8
  %56 = load i32, ptr %n.addr, align 4
  %conv75 = sext i32 %56 to i64
  %cmp76 = icmp sgt i64 %55, %conv75
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.then71
  %57 = load i64, ptr %Z, align 8
  %sub79 = sub nsw i64 %57, 7
  store i64 %sub79, ptr %Z, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then71
  %58 = load i32, ptr %n.addr, align 4
  %conv81 = sext i32 %58 to i64
  %59 = load i64, ptr %Z, align 8
  %sub82 = sub nsw i64 %conv81, %59
  %mul = mul nsw i64 %sub82, 86400000
  %60 = load ptr, ptr %p.addr, align 8
  %iJD83 = getelementptr inbounds nuw %struct.DateTime, ptr %60, i32 0, i32 0
  %61 = load i64, ptr %iJD83, align 8
  %add84 = add nsw i64 %61, %mul
  store i64 %add84, ptr %iJD83, align 8
  %62 = load ptr, ptr %p.addr, align 8
  call void @clearYMD_HMS_TZ(ptr noundef %62)
  store i32 0, ptr %rc, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end80, %land.lhs.true68, %land.lhs.true65, %land.lhs.true60, %land.lhs.true53, %sw.bb49
  br label %sw.epilog278

sw.bb86:                                          ; preds = %entry
  %63 = load ptr, ptr %z.addr, align 8
  %call87 = call i32 @sqlite3_strnicmp(ptr noundef %63, ptr noundef @.str.1024, i32 noundef 9)
  %cmp88 = icmp ne i32 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %sw.bb86
  br label %sw.epilog278

if.end91:                                         ; preds = %sw.bb86
  %64 = load ptr, ptr %p.addr, align 8
  %validJD92 = getelementptr inbounds nuw %struct.DateTime, ptr %64, i32 0, i32 8
  %65 = load i8, ptr %validJD92, align 8
  %tobool93 = icmp ne i8 %65, 0
  br i1 %tobool93, label %if.end99, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %if.end91
  %66 = load ptr, ptr %p.addr, align 8
  %validYMD = getelementptr inbounds nuw %struct.DateTime, ptr %66, i32 0, i32 10
  %67 = load i8, ptr %validYMD, align 2
  %tobool95 = icmp ne i8 %67, 0
  br i1 %tobool95, label %if.end99, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %land.lhs.true94
  %68 = load ptr, ptr %p.addr, align 8
  %validHMS = getelementptr inbounds nuw %struct.DateTime, ptr %68, i32 0, i32 11
  %69 = load i8, ptr %validHMS, align 1
  %tobool97 = icmp ne i8 %69, 0
  br i1 %tobool97, label %if.end99, label %if.then98

if.then98:                                        ; preds = %land.lhs.true96
  br label %sw.epilog278

if.end99:                                         ; preds = %land.lhs.true96, %land.lhs.true94, %if.end91
  %70 = load ptr, ptr %z.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %70, i64 9
  store ptr %add.ptr, ptr %z.addr, align 8
  %71 = load ptr, ptr %p.addr, align 8
  call void @computeYMD(ptr noundef %71)
  %72 = load ptr, ptr %p.addr, align 8
  %validHMS100 = getelementptr inbounds nuw %struct.DateTime, ptr %72, i32 0, i32 11
  store i8 1, ptr %validHMS100, align 1
  %73 = load ptr, ptr %p.addr, align 8
  %m = getelementptr inbounds nuw %struct.DateTime, ptr %73, i32 0, i32 5
  store i32 0, ptr %m, align 8
  %74 = load ptr, ptr %p.addr, align 8
  %h = getelementptr inbounds nuw %struct.DateTime, ptr %74, i32 0, i32 4
  store i32 0, ptr %h, align 4
  %75 = load ptr, ptr %p.addr, align 8
  %s101 = getelementptr inbounds nuw %struct.DateTime, ptr %75, i32 0, i32 7
  store double 0.000000e+00, ptr %s101, align 8
  %76 = load ptr, ptr %p.addr, align 8
  %rawS102 = getelementptr inbounds nuw %struct.DateTime, ptr %76, i32 0, i32 9
  store i8 0, ptr %rawS102, align 1
  %77 = load ptr, ptr %p.addr, align 8
  %validTZ103 = getelementptr inbounds nuw %struct.DateTime, ptr %77, i32 0, i32 12
  store i8 0, ptr %validTZ103, align 4
  %78 = load ptr, ptr %p.addr, align 8
  %validJD104 = getelementptr inbounds nuw %struct.DateTime, ptr %78, i32 0, i32 8
  store i8 0, ptr %validJD104, align 8
  %79 = load ptr, ptr %z.addr, align 8
  %call105 = call i32 @sqlite3_stricmp(ptr noundef %79, ptr noundef @.str.1025)
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.end99
  %80 = load ptr, ptr %p.addr, align 8
  %D = getelementptr inbounds nuw %struct.DateTime, ptr %80, i32 0, i32 3
  store i32 1, ptr %D, align 8
  store i32 0, ptr %rc, align 4
  br label %if.end122

if.else109:                                       ; preds = %if.end99
  %81 = load ptr, ptr %z.addr, align 8
  %call110 = call i32 @sqlite3_stricmp(ptr noundef %81, ptr noundef @.str.1026)
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.else109
  %82 = load ptr, ptr %p.addr, align 8
  %M = getelementptr inbounds nuw %struct.DateTime, ptr %82, i32 0, i32 2
  store i32 1, ptr %M, align 4
  %83 = load ptr, ptr %p.addr, align 8
  %D114 = getelementptr inbounds nuw %struct.DateTime, ptr %83, i32 0, i32 3
  store i32 1, ptr %D114, align 8
  store i32 0, ptr %rc, align 4
  br label %if.end121

if.else115:                                       ; preds = %if.else109
  %84 = load ptr, ptr %z.addr, align 8
  %call116 = call i32 @sqlite3_stricmp(ptr noundef %84, ptr noundef @.str.1027)
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.else115
  store i32 0, ptr %rc, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.else115
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then113
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then108
  br label %sw.epilog278

sw.bb123:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, ptr %n.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb123
  %85 = load ptr, ptr %z.addr, align 8
  %86 = load i32, ptr %n.addr, align 4
  %idxprom124 = sext i32 %86 to i64
  %arrayidx125 = getelementptr inbounds i8, ptr %85, i64 %idxprom124
  %87 = load i8, ptr %arrayidx125, align 1
  %conv126 = sext i8 %87 to i32
  %tobool127 = icmp ne i32 %conv126, 0
  br i1 %tobool127, label %land.lhs.true128, label %land.end

land.lhs.true128:                                 ; preds = %for.cond
  %88 = load ptr, ptr %z.addr, align 8
  %89 = load i32, ptr %n.addr, align 4
  %idxprom129 = sext i32 %89 to i64
  %arrayidx130 = getelementptr inbounds i8, ptr %88, i64 %idxprom129
  %90 = load i8, ptr %arrayidx130, align 1
  %conv131 = sext i8 %90 to i32
  %cmp132 = icmp ne i32 %conv131, 58
  br i1 %cmp132, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true128
  %91 = load ptr, ptr %z.addr, align 8
  %92 = load i32, ptr %n.addr, align 4
  %idxprom134 = sext i32 %92 to i64
  %arrayidx135 = getelementptr inbounds i8, ptr %91, i64 %idxprom134
  %93 = load i8, ptr %arrayidx135, align 1
  %idxprom136 = zext i8 %93 to i64
  %arrayidx137 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom136
  %94 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %94 to i32
  %and = and i32 %conv138, 1
  %tobool139 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool139, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true128, %for.cond
  %95 = phi i1 [ false, %land.lhs.true128 ], [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %95, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %96 = load i32, ptr %n.addr, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, ptr %n.addr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %97 = load ptr, ptr %z.addr, align 8
  %98 = load i32, ptr %n.addr, align 4
  %call140 = call i32 @sqlite3AtoF(ptr noundef %97, ptr noundef %r, i32 noundef %98, i8 noundef zeroext 1)
  %cmp141 = icmp sle i32 %call140, 0
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %for.end
  store i32 1, ptr %rc, align 4
  br label %sw.epilog278

if.end144:                                        ; preds = %for.end
  %99 = load ptr, ptr %z.addr, align 8
  %100 = load i32, ptr %n.addr, align 4
  %idxprom145 = sext i32 %100 to i64
  %arrayidx146 = getelementptr inbounds i8, ptr %99, i64 %idxprom145
  %101 = load i8, ptr %arrayidx146, align 1
  %conv147 = sext i8 %101 to i32
  %cmp148 = icmp eq i32 %conv147, 58
  br i1 %cmp148, label %if.then150, label %if.end181

if.then150:                                       ; preds = %if.end144
  %102 = load ptr, ptr %z.addr, align 8
  store ptr %102, ptr %z2, align 8
  %103 = load ptr, ptr %z2, align 8
  %104 = load i8, ptr %103, align 1
  %idxprom151 = zext i8 %104 to i64
  %arrayidx152 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom151
  %105 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %105 to i32
  %and154 = and i32 %conv153, 4
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.end157, label %if.then156

if.then156:                                       ; preds = %if.then150
  %106 = load ptr, ptr %z2, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %106, i32 1
  store ptr %incdec.ptr, ptr %z2, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.then150
  call void @llvm.memset.p0.i64(ptr align 8 %tx, i8 0, i64 48, i1 false)
  %107 = load ptr, ptr %z2, align 8
  %call158 = call i32 @parseHhMmSs(ptr noundef %107, ptr noundef %tx)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end157
  br label %sw.epilog278

if.end161:                                        ; preds = %if.end157
  call void @computeJD(ptr noundef %tx)
  %iJD162 = getelementptr inbounds nuw %struct.DateTime, ptr %tx, i32 0, i32 0
  %108 = load i64, ptr %iJD162, align 8
  %sub163 = sub nsw i64 %108, 43200000
  store i64 %sub163, ptr %iJD162, align 8
  %iJD164 = getelementptr inbounds nuw %struct.DateTime, ptr %tx, i32 0, i32 0
  %109 = load i64, ptr %iJD164, align 8
  %div165 = sdiv i64 %109, 86400000
  store i64 %div165, ptr %day, align 8
  %110 = load i64, ptr %day, align 8
  %mul166 = mul nsw i64 %110, 86400000
  %iJD167 = getelementptr inbounds nuw %struct.DateTime, ptr %tx, i32 0, i32 0
  %111 = load i64, ptr %iJD167, align 8
  %sub168 = sub nsw i64 %111, %mul166
  store i64 %sub168, ptr %iJD167, align 8
  %112 = load ptr, ptr %z.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %112, i64 0
  %113 = load i8, ptr %arrayidx169, align 1
  %conv170 = sext i8 %113 to i32
  %cmp171 = icmp eq i32 %conv170, 45
  br i1 %cmp171, label %if.then173, label %if.end177

if.then173:                                       ; preds = %if.end161
  %iJD174 = getelementptr inbounds nuw %struct.DateTime, ptr %tx, i32 0, i32 0
  %114 = load i64, ptr %iJD174, align 8
  %sub175 = sub nsw i64 0, %114
  %iJD176 = getelementptr inbounds nuw %struct.DateTime, ptr %tx, i32 0, i32 0
  store i64 %sub175, ptr %iJD176, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %if.end161
  %115 = load ptr, ptr %p.addr, align 8
  call void @computeJD(ptr noundef %115)
  %116 = load ptr, ptr %p.addr, align 8
  call void @clearYMD_HMS_TZ(ptr noundef %116)
  %iJD178 = getelementptr inbounds nuw %struct.DateTime, ptr %tx, i32 0, i32 0
  %117 = load i64, ptr %iJD178, align 8
  %118 = load ptr, ptr %p.addr, align 8
  %iJD179 = getelementptr inbounds nuw %struct.DateTime, ptr %118, i32 0, i32 0
  %119 = load i64, ptr %iJD179, align 8
  %add180 = add nsw i64 %119, %117
  store i64 %add180, ptr %iJD179, align 8
  store i32 0, ptr %rc, align 4
  br label %sw.epilog278

if.end181:                                        ; preds = %if.end144
  %120 = load i32, ptr %n.addr, align 4
  %121 = load ptr, ptr %z.addr, align 8
  %idx.ext = sext i32 %120 to i64
  %add.ptr182 = getelementptr inbounds i8, ptr %121, i64 %idx.ext
  store ptr %add.ptr182, ptr %z.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end181
  %122 = load ptr, ptr %z.addr, align 8
  %123 = load i8, ptr %122, align 1
  %idxprom183 = zext i8 %123 to i64
  %arrayidx184 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom183
  %124 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %124 to i32
  %and186 = and i32 %conv185, 1
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %125 = load ptr, ptr %z.addr, align 8
  %incdec.ptr188 = getelementptr inbounds nuw i8, ptr %125, i32 1
  store ptr %incdec.ptr188, ptr %z.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %126 = load ptr, ptr %z.addr, align 8
  %call189 = call i32 @sqlite3Strlen30(ptr noundef %126)
  store i32 %call189, ptr %n.addr, align 4
  %127 = load i32, ptr %n.addr, align 4
  %cmp190 = icmp sgt i32 %127, 10
  br i1 %cmp190, label %if.then194, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %128 = load i32, ptr %n.addr, align 4
  %cmp192 = icmp slt i32 %128, 3
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %lor.lhs.false, %while.end
  br label %sw.epilog278

if.end195:                                        ; preds = %lor.lhs.false
  %129 = load ptr, ptr %z.addr, align 8
  %130 = load i32, ptr %n.addr, align 4
  %sub196 = sub nsw i32 %130, 1
  %idxprom197 = sext i32 %sub196 to i64
  %arrayidx198 = getelementptr inbounds i8, ptr %129, i64 %idxprom197
  %131 = load i8, ptr %arrayidx198, align 1
  %idxprom199 = zext i8 %131 to i64
  %arrayidx200 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom199
  %132 = load i8, ptr %arrayidx200, align 1
  %conv201 = zext i8 %132 to i32
  %cmp202 = icmp eq i32 %conv201, 115
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %if.end195
  %133 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %133, -1
  store i32 %dec, ptr %n.addr, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.end195
  %134 = load ptr, ptr %p.addr, align 8
  call void @computeJD(ptr noundef %134)
  store i32 1, ptr %rc, align 4
  %135 = load double, ptr %r, align 8
  %cmp206 = fcmp olt double %135, 0.000000e+00
  %136 = zext i1 %cmp206 to i64
  %cond = select i1 %cmp206, double -5.000000e-01, double 5.000000e-01
  store double %cond, ptr %rRounder, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond208

for.cond208:                                      ; preds = %for.inc275, %if.end205
  %137 = load i32, ptr %i, align 4
  %cmp209 = icmp slt i32 %137, 6
  br i1 %cmp209, label %for.body211, label %for.end277

for.body211:                                      ; preds = %for.cond208
  %138 = load i32, ptr %i, align 4
  %idxprom212 = sext i32 %138 to i64
  %arrayidx213 = getelementptr inbounds [6 x %struct.anon.23], ptr @aXformType, i64 0, i64 %idxprom212
  %nName = getelementptr inbounds nuw %struct.anon.23, ptr %arrayidx213, i32 0, i32 1
  %139 = load i8, ptr %nName, align 1
  %conv214 = zext i8 %139 to i32
  %140 = load i32, ptr %n.addr, align 4
  %cmp215 = icmp eq i32 %conv214, %140
  br i1 %cmp215, label %land.lhs.true217, label %if.end274

land.lhs.true217:                                 ; preds = %for.body211
  %141 = load i32, ptr %i, align 4
  %idxprom218 = sext i32 %141 to i64
  %arrayidx219 = getelementptr inbounds [6 x %struct.anon.23], ptr @aXformType, i64 0, i64 %idxprom218
  %zName = getelementptr inbounds nuw %struct.anon.23, ptr %arrayidx219, i32 0, i32 2
  %142 = load ptr, ptr %zName, align 8
  %143 = load ptr, ptr %z.addr, align 8
  %144 = load i32, ptr %n.addr, align 4
  %call220 = call i32 @sqlite3_strnicmp(ptr noundef %142, ptr noundef %143, i32 noundef %144)
  %cmp221 = icmp eq i32 %call220, 0
  br i1 %cmp221, label %land.lhs.true223, label %if.end274

land.lhs.true223:                                 ; preds = %land.lhs.true217
  %145 = load double, ptr %r, align 8
  %146 = load i32, ptr %i, align 4
  %idxprom224 = sext i32 %146 to i64
  %arrayidx225 = getelementptr inbounds [6 x %struct.anon.23], ptr @aXformType, i64 0, i64 %idxprom224
  %rLimit = getelementptr inbounds nuw %struct.anon.23, ptr %arrayidx225, i32 0, i32 3
  %147 = load double, ptr %rLimit, align 16
  %fneg = fneg double %147
  %cmp226 = fcmp ogt double %145, %fneg
  br i1 %cmp226, label %land.lhs.true228, label %if.end274

land.lhs.true228:                                 ; preds = %land.lhs.true223
  %148 = load double, ptr %r, align 8
  %149 = load i32, ptr %i, align 4
  %idxprom229 = sext i32 %149 to i64
  %arrayidx230 = getelementptr inbounds [6 x %struct.anon.23], ptr @aXformType, i64 0, i64 %idxprom229
  %rLimit231 = getelementptr inbounds nuw %struct.anon.23, ptr %arrayidx230, i32 0, i32 3
  %150 = load double, ptr %rLimit231, align 16
  %cmp232 = fcmp olt double %148, %150
  br i1 %cmp232, label %if.then234, label %if.end274

if.then234:                                       ; preds = %land.lhs.true228
  %151 = load i32, ptr %i, align 4
  %idxprom235 = sext i32 %151 to i64
  %arrayidx236 = getelementptr inbounds [6 x %struct.anon.23], ptr @aXformType, i64 0, i64 %idxprom235
  %eType = getelementptr inbounds nuw %struct.anon.23, ptr %arrayidx236, i32 0, i32 0
  %152 = load i8, ptr %eType, align 16
  %conv237 = zext i8 %152 to i32
  switch i32 %conv237, label %sw.epilog [
    i32 1, label %sw.bb238
    i32 2, label %sw.bb260
  ]

sw.bb238:                                         ; preds = %if.then234
  %153 = load ptr, ptr %p.addr, align 8
  call void @computeYMD_HMS(ptr noundef %153)
  %154 = load double, ptr %r, align 8
  %conv239 = fptosi double %154 to i32
  %155 = load ptr, ptr %p.addr, align 8
  %M240 = getelementptr inbounds nuw %struct.DateTime, ptr %155, i32 0, i32 2
  %156 = load i32, ptr %M240, align 4
  %add241 = add nsw i32 %156, %conv239
  store i32 %add241, ptr %M240, align 4
  %157 = load ptr, ptr %p.addr, align 8
  %M242 = getelementptr inbounds nuw %struct.DateTime, ptr %157, i32 0, i32 2
  %158 = load i32, ptr %M242, align 4
  %cmp243 = icmp sgt i32 %158, 0
  br i1 %cmp243, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb238
  %159 = load ptr, ptr %p.addr, align 8
  %M245 = getelementptr inbounds nuw %struct.DateTime, ptr %159, i32 0, i32 2
  %160 = load i32, ptr %M245, align 4
  %sub246 = sub nsw i32 %160, 1
  %div247 = sdiv i32 %sub246, 12
  br label %cond.end

cond.false:                                       ; preds = %sw.bb238
  %161 = load ptr, ptr %p.addr, align 8
  %M248 = getelementptr inbounds nuw %struct.DateTime, ptr %161, i32 0, i32 2
  %162 = load i32, ptr %M248, align 4
  %sub249 = sub nsw i32 %162, 12
  %div250 = sdiv i32 %sub249, 12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond251 = phi i32 [ %div247, %cond.true ], [ %div250, %cond.false ]
  store i32 %cond251, ptr %x, align 4
  %163 = load i32, ptr %x, align 4
  %164 = load ptr, ptr %p.addr, align 8
  %Y = getelementptr inbounds nuw %struct.DateTime, ptr %164, i32 0, i32 1
  %165 = load i32, ptr %Y, align 8
  %add252 = add nsw i32 %165, %163
  store i32 %add252, ptr %Y, align 8
  %166 = load i32, ptr %x, align 4
  %mul253 = mul nsw i32 %166, 12
  %167 = load ptr, ptr %p.addr, align 8
  %M254 = getelementptr inbounds nuw %struct.DateTime, ptr %167, i32 0, i32 2
  %168 = load i32, ptr %M254, align 4
  %sub255 = sub nsw i32 %168, %mul253
  store i32 %sub255, ptr %M254, align 4
  %169 = load ptr, ptr %p.addr, align 8
  %validJD256 = getelementptr inbounds nuw %struct.DateTime, ptr %169, i32 0, i32 8
  store i8 0, ptr %validJD256, align 8
  %170 = load double, ptr %r, align 8
  %conv257 = fptosi double %170 to i32
  %conv258 = sitofp i32 %conv257 to double
  %171 = load double, ptr %r, align 8
  %sub259 = fsub double %171, %conv258
  store double %sub259, ptr %r, align 8
  br label %sw.epilog

sw.bb260:                                         ; preds = %if.then234
  %172 = load double, ptr %r, align 8
  %conv261 = fptosi double %172 to i32
  store i32 %conv261, ptr %y, align 4
  %173 = load ptr, ptr %p.addr, align 8
  call void @computeYMD_HMS(ptr noundef %173)
  %174 = load i32, ptr %y, align 4
  %175 = load ptr, ptr %p.addr, align 8
  %Y262 = getelementptr inbounds nuw %struct.DateTime, ptr %175, i32 0, i32 1
  %176 = load i32, ptr %Y262, align 8
  %add263 = add nsw i32 %176, %174
  store i32 %add263, ptr %Y262, align 8
  %177 = load ptr, ptr %p.addr, align 8
  %validJD264 = getelementptr inbounds nuw %struct.DateTime, ptr %177, i32 0, i32 8
  store i8 0, ptr %validJD264, align 8
  %178 = load double, ptr %r, align 8
  %conv265 = fptosi double %178 to i32
  %conv266 = sitofp i32 %conv265 to double
  %179 = load double, ptr %r, align 8
  %sub267 = fsub double %179, %conv266
  store double %sub267, ptr %r, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb260, %cond.end, %if.then234
  %180 = load ptr, ptr %p.addr, align 8
  call void @computeJD(ptr noundef %180)
  %181 = load double, ptr %r, align 8
  %182 = load i32, ptr %i, align 4
  %idxprom268 = sext i32 %182 to i64
  %arrayidx269 = getelementptr inbounds [6 x %struct.anon.23], ptr @aXformType, i64 0, i64 %idxprom268
  %rXform = getelementptr inbounds nuw %struct.anon.23, ptr %arrayidx269, i32 0, i32 4
  %183 = load double, ptr %rXform, align 8
  %184 = load double, ptr %rRounder, align 8
  %185 = call double @llvm.fmuladd.f64(double %181, double %183, double %184)
  %conv271 = fptosi double %185 to i64
  %186 = load ptr, ptr %p.addr, align 8
  %iJD272 = getelementptr inbounds nuw %struct.DateTime, ptr %186, i32 0, i32 0
  %187 = load i64, ptr %iJD272, align 8
  %add273 = add nsw i64 %187, %conv271
  store i64 %add273, ptr %iJD272, align 8
  store i32 0, ptr %rc, align 4
  br label %for.end277

if.end274:                                        ; preds = %land.lhs.true228, %land.lhs.true223, %land.lhs.true217, %for.body211
  br label %for.inc275

for.inc275:                                       ; preds = %if.end274
  %188 = load i32, ptr %i, align 4
  %inc276 = add nsw i32 %188, 1
  store i32 %inc276, ptr %i, align 4
  br label %for.cond208, !llvm.loop !9

for.end277:                                       ; preds = %sw.epilog, %for.cond208
  %189 = load ptr, ptr %p.addr, align 8
  call void @clearYMD_HMS_TZ(ptr noundef %189)
  br label %sw.epilog278

sw.default:                                       ; preds = %entry
  br label %sw.epilog278

sw.epilog278:                                     ; preds = %sw.default, %for.end277, %if.then194, %if.end177, %if.then160, %if.then143, %if.end122, %if.then98, %if.then90, %if.end85, %if.end48, %if.end
  %190 = load i32, ptr %rc, align 4
  ret i32 %190
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @parseHhMmSs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3NotPureFunc(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @localtimeOffset(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @clearYMD_HMS_TZ(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @computeYMD_HMS(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @computeYMD(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
