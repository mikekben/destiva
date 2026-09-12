; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyXMLRawStr = type { ptr, i32, i32 }

@.str.587 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @XMLExtactPI(ptr noundef %pToken, ptr noundef %pTarget, ptr noundef %pData, ptr noundef %pXML) #1 {
entry:
  %pToken.addr = alloca ptr, align 8
  %pTarget.addr = alloca ptr, align 8
  %pData.addr = alloca ptr, align 8
  %pXML.addr = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  store ptr %pTarget, ptr %pTarget.addr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  store ptr %pXML, ptr %pXML.addr, align 8
  %0 = load ptr, ptr %pToken.addr, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %0, i32 0, i32 0
  store ptr %sData, ptr %pIn, align 8
  %1 = load ptr, ptr %pToken.addr, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nLine, align 4
  %3 = load ptr, ptr %pData.addr, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %3, i32 0, i32 2
  store i32 %2, ptr %nLine1, align 4
  %4 = load ptr, ptr %pTarget.addr, align 8
  %nLine2 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %4, i32 0, i32 2
  store i32 %2, ptr %nLine2, align 4
  %5 = load ptr, ptr %pData.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %5, i32 0, i32 0
  store ptr null, ptr %zString, align 8
  %6 = load ptr, ptr %pTarget.addr, align 8
  %zString3 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %6, i32 0, i32 0
  store ptr null, ptr %zString3, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %pIn, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nByte, align 8
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %9 = load ptr, ptr %pIn, align 8
  %zString4 = getelementptr inbounds nuw %struct.SyString, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zString4, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %cmp5 = icmp slt i32 %conv, 192
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #2
  %12 = load ptr, ptr %call, align 8
  %13 = load ptr, ptr %pIn, align 8
  %zString7 = getelementptr inbounds nuw %struct.SyString, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zString7, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %15 to i32
  %idxprom = sext i32 %conv9 to i64
  %arrayidx10 = getelementptr inbounds i16, ptr %12, i64 %idxprom
  %16 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %16 to i32
  %and = and i32 %conv11, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load ptr, ptr %pIn, align 8
  %nByte12 = getelementptr inbounds nuw %struct.SyString, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %nByte12, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %nByte12, align 8
  %20 = load ptr, ptr %pIn, align 8
  %zString13 = getelementptr inbounds nuw %struct.SyString, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %zString13, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %zString13, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond14

while.cond14:                                     ; preds = %while.body40, %while.end
  %22 = load ptr, ptr %pIn, align 8
  %nByte15 = getelementptr inbounds nuw %struct.SyString, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nByte15, align 8
  %cmp16 = icmp ugt i32 %23, 0
  br i1 %cmp16, label %land.lhs.true18, label %land.end39

land.lhs.true18:                                  ; preds = %while.cond14
  %24 = load ptr, ptr %pIn, align 8
  %zString19 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zString19, align 8
  %26 = load ptr, ptr %pIn, align 8
  %nByte20 = getelementptr inbounds nuw %struct.SyString, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %nByte20, align 8
  %sub = sub i32 %27, 1
  %idxprom21 = zext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom21
  %28 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %28 to i32
  %cmp24 = icmp slt i32 %conv23, 192
  br i1 %cmp24, label %land.rhs26, label %land.end39

land.rhs26:                                       ; preds = %land.lhs.true18
  %call27 = call ptr @__ctype_b_loc() #2
  %29 = load ptr, ptr %call27, align 8
  %30 = load ptr, ptr %pIn, align 8
  %zString28 = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %zString28, align 8
  %32 = load ptr, ptr %pIn, align 8
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %nByte29, align 8
  %sub30 = sub i32 %33, 1
  %idxprom31 = zext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %31, i64 %idxprom31
  %34 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %34 to i32
  %idxprom34 = sext i32 %conv33 to i64
  %arrayidx35 = getelementptr inbounds i16, ptr %29, i64 %idxprom34
  %35 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %35 to i32
  %and37 = and i32 %conv36, 8192
  %tobool38 = icmp ne i32 %and37, 0
  br label %land.end39

land.end39:                                       ; preds = %land.rhs26, %land.lhs.true18, %while.cond14
  %36 = phi i1 [ false, %land.lhs.true18 ], [ false, %while.cond14 ], [ %tobool38, %land.rhs26 ]
  br i1 %36, label %while.body40, label %while.end43

while.body40:                                     ; preds = %land.end39
  %37 = load ptr, ptr %pIn, align 8
  %nByte41 = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nByte41, align 8
  %dec42 = add i32 %38, -1
  store i32 %dec42, ptr %nByte41, align 8
  br label %while.cond14, !llvm.loop !8

while.end43:                                      ; preds = %land.end39
  %39 = load ptr, ptr %pIn, align 8
  %zString44 = getelementptr inbounds nuw %struct.SyString, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %zString44, align 8
  store ptr %40, ptr %zIn, align 8
  %41 = load ptr, ptr %zIn, align 8
  %42 = load ptr, ptr %pIn, align 8
  %nByte45 = getelementptr inbounds nuw %struct.SyString, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %nByte45, align 8
  %idxprom46 = zext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %41, i64 %idxprom46
  store ptr %arrayidx47, ptr %zEnd, align 8
  %44 = load ptr, ptr %pXML.addr, align 8
  %tobool48 = icmp ne ptr %44, null
  br i1 %tobool48, label %if.then, label %if.end

if.then:                                          ; preds = %while.end43
  %45 = load ptr, ptr %pXML.addr, align 8
  store i32 0, ptr %45, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end43
  %46 = load ptr, ptr %zIn, align 8
  store ptr %46, ptr %zCur, align 8
  br label %while.cond49

while.cond49:                                     ; preds = %if.end84, %if.end
  %47 = load ptr, ptr %zIn, align 8
  %48 = load ptr, ptr %zEnd, align 8
  %cmp50 = icmp ult ptr %47, %48
  br i1 %cmp50, label %while.body52, label %while.end85

while.body52:                                     ; preds = %while.cond49
  %49 = load ptr, ptr %zIn, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %49, i64 0
  %50 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %50 to i32
  %cmp55 = icmp sge i32 %conv54, 192
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %while.body52
  %51 = load ptr, ptr %zIn, align 8
  %incdec.ptr58 = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr58, ptr %zIn, align 8
  br label %while.cond59

while.cond59:                                     ; preds = %while.body69, %if.then57
  %52 = load ptr, ptr %zIn, align 8
  %53 = load ptr, ptr %zEnd, align 8
  %cmp60 = icmp ult ptr %52, %53
  br i1 %cmp60, label %land.rhs62, label %land.end68

land.rhs62:                                       ; preds = %while.cond59
  %54 = load ptr, ptr %zIn, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %55 to i32
  %and65 = and i32 %conv64, 192
  %cmp66 = icmp eq i32 %and65, 128
  br label %land.end68

land.end68:                                       ; preds = %land.rhs62, %while.cond59
  %56 = phi i1 [ false, %while.cond59 ], [ %cmp66, %land.rhs62 ]
  br i1 %56, label %while.body69, label %while.end71

while.body69:                                     ; preds = %land.end68
  %57 = load ptr, ptr %zIn, align 8
  %incdec.ptr70 = getelementptr inbounds nuw i8, ptr %57, i32 1
  store ptr %incdec.ptr70, ptr %zIn, align 8
  br label %while.cond59, !llvm.loop !9

while.end71:                                      ; preds = %land.end68
  br label %if.end84

if.else:                                          ; preds = %while.body52
  %call72 = call ptr @__ctype_b_loc() #2
  %58 = load ptr, ptr %call72, align 8
  %59 = load ptr, ptr %zIn, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %59, i64 0
  %60 = load i8, ptr %arrayidx73, align 1
  %conv74 = sext i8 %60 to i32
  %idxprom75 = sext i32 %conv74 to i64
  %arrayidx76 = getelementptr inbounds i16, ptr %58, i64 %idxprom75
  %61 = load i16, ptr %arrayidx76, align 2
  %conv77 = zext i16 %61 to i32
  %and78 = and i32 %conv77, 8192
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else
  br label %while.end85

if.else81:                                        ; preds = %if.else
  %62 = load ptr, ptr %zIn, align 8
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %incdec.ptr82, ptr %zIn, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else81
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %while.end71
  br label %while.cond49, !llvm.loop !10

while.end85:                                      ; preds = %if.then80, %while.cond49
  %63 = load ptr, ptr %zIn, align 8
  %64 = load ptr, ptr %zCur, align 8
  %cmp86 = icmp ugt ptr %63, %64
  br i1 %cmp86, label %if.then88, label %if.end105

if.then88:                                        ; preds = %while.end85
  %65 = load ptr, ptr %zCur, align 8
  %66 = load ptr, ptr %pTarget.addr, align 8
  %zString89 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %66, i32 0, i32 0
  store ptr %65, ptr %zString89, align 8
  %67 = load ptr, ptr %zIn, align 8
  %68 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %67 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %68 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv90 = trunc i64 %sub.ptr.sub to i32
  %69 = load ptr, ptr %pTarget.addr, align 8
  %nByte91 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %69, i32 0, i32 1
  store i32 %conv90, ptr %nByte91, align 8
  %70 = load ptr, ptr %pXML.addr, align 8
  %tobool92 = icmp ne ptr %70, null
  br i1 %tobool92, label %land.lhs.true93, label %if.end104

land.lhs.true93:                                  ; preds = %if.then88
  %71 = load ptr, ptr %pTarget.addr, align 8
  %nByte94 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %nByte94, align 8
  %conv95 = zext i32 %72 to i64
  %cmp96 = icmp eq i64 %conv95, 3
  br i1 %cmp96, label %land.lhs.true98, label %if.end104

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %73 = load ptr, ptr %pTarget.addr, align 8
  %zString99 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %zString99, align 8
  %call100 = call i32 @SyStrnicmp(ptr noundef %74, ptr noundef @.str.587, i32 noundef 3)
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %land.lhs.true98
  %75 = load ptr, ptr %pXML.addr, align 8
  store i32 1, ptr %75, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %land.lhs.true98, %land.lhs.true93, %if.then88
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %while.end85
  br label %while.cond106

while.cond106:                                    ; preds = %while.body124, %if.end105
  %76 = load ptr, ptr %zIn, align 8
  %77 = load ptr, ptr %zEnd, align 8
  %cmp107 = icmp ult ptr %76, %77
  br i1 %cmp107, label %land.lhs.true109, label %land.end123

land.lhs.true109:                                 ; preds = %while.cond106
  %78 = load ptr, ptr %zIn, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %78, i64 0
  %79 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %79 to i32
  %cmp112 = icmp slt i32 %conv111, 192
  br i1 %cmp112, label %land.rhs114, label %land.end123

land.rhs114:                                      ; preds = %land.lhs.true109
  %call115 = call ptr @__ctype_b_loc() #2
  %80 = load ptr, ptr %call115, align 8
  %81 = load ptr, ptr %zIn, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %81, i64 0
  %82 = load i8, ptr %arrayidx116, align 1
  %conv117 = sext i8 %82 to i32
  %idxprom118 = sext i32 %conv117 to i64
  %arrayidx119 = getelementptr inbounds i16, ptr %80, i64 %idxprom118
  %83 = load i16, ptr %arrayidx119, align 2
  %conv120 = zext i16 %83 to i32
  %and121 = and i32 %conv120, 8192
  %tobool122 = icmp ne i32 %and121, 0
  br label %land.end123

land.end123:                                      ; preds = %land.rhs114, %land.lhs.true109, %while.cond106
  %84 = phi i1 [ false, %land.lhs.true109 ], [ false, %while.cond106 ], [ %tobool122, %land.rhs114 ]
  br i1 %84, label %while.body124, label %while.end126

while.body124:                                    ; preds = %land.end123
  %85 = load ptr, ptr %zIn, align 8
  %incdec.ptr125 = getelementptr inbounds nuw i8, ptr %85, i32 1
  store ptr %incdec.ptr125, ptr %zIn, align 8
  br label %while.cond106, !llvm.loop !11

while.end126:                                     ; preds = %land.end123
  %86 = load ptr, ptr %zIn, align 8
  %87 = load ptr, ptr %zEnd, align 8
  %cmp127 = icmp ult ptr %86, %87
  br i1 %cmp127, label %if.then129, label %if.end136

if.then129:                                       ; preds = %while.end126
  %88 = load ptr, ptr %zIn, align 8
  %89 = load ptr, ptr %pData.addr, align 8
  %zString130 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %89, i32 0, i32 0
  store ptr %88, ptr %zString130, align 8
  %90 = load ptr, ptr %zEnd, align 8
  %91 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast131 = ptrtoint ptr %90 to i64
  %sub.ptr.rhs.cast132 = ptrtoint ptr %91 to i64
  %sub.ptr.sub133 = sub i64 %sub.ptr.lhs.cast131, %sub.ptr.rhs.cast132
  %conv134 = trunc i64 %sub.ptr.sub133 to i32
  %92 = load ptr, ptr %pData.addr, align 8
  %nByte135 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %92, i32 0, i32 1
  store i32 %conv134, ptr %nByte135, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.then129, %while.end126
  ret void
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
