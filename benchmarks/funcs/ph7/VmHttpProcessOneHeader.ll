; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyhttpHeader = type { %struct.SyString, %struct.SyString }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyByteFind(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @VmHttpProcessOneHeader(ptr noundef %pHdr, ptr noundef %pLast, ptr noundef %zLine, i32 noundef %nLen) #1 {
entry:
  %retval = alloca i32, align 4
  %pHdr.addr = alloca ptr, align 8
  %pLast.addr = alloca ptr, align 8
  %zLine.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pName = alloca ptr, align 8
  %nPos = alloca i32, align 4
  %rc = alloca i32, align 4
  %pTmp = alloca ptr, align 8
  store ptr %pHdr, ptr %pHdr.addr, align 8
  store ptr %pLast, ptr %pLast.addr, align 8
  store ptr %zLine, ptr %zLine.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp ult i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pLast.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %zLine.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 -1
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 32
  br i1 %cmp1, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %zLine.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 -1
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 9
  br i1 %cmp5, label %if.then7, label %if.end65

if.then7:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load ptr, ptr %pLast.addr, align 8
  %sValue = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %6, i32 0, i32 1
  store ptr %sValue, ptr %pTmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then7
  %7 = load ptr, ptr %pTmp, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nByte, align 8
  %cmp8 = icmp ugt i32 %8, 0
  br i1 %cmp8, label %land.lhs.true10, label %land.end

land.lhs.true10:                                  ; preds = %while.cond
  %9 = load ptr, ptr %pTmp, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zString, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %cmp13 = icmp slt i32 %conv12, 192
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true10
  %call = call ptr @__ctype_b_loc() #2
  %12 = load ptr, ptr %call, align 8
  %13 = load ptr, ptr %pTmp, align 8
  %zString15 = getelementptr inbounds nuw %struct.SyString, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zString15, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %15 to i32
  %idxprom = sext i32 %conv17 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %12, i64 %idxprom
  %16 = load i16, ptr %arrayidx18, align 2
  %conv19 = zext i16 %16 to i32
  %and = and i32 %conv19, 8192
  %tobool20 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true10, %while.cond
  %17 = phi i1 [ false, %land.lhs.true10 ], [ false, %while.cond ], [ %tobool20, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load ptr, ptr %pTmp, align 8
  %nByte21 = getelementptr inbounds nuw %struct.SyString, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %nByte21, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %nByte21, align 8
  %20 = load ptr, ptr %pTmp, align 8
  %zString22 = getelementptr inbounds nuw %struct.SyString, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %zString22, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %zString22, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond23

while.cond23:                                     ; preds = %while.body49, %while.end
  %22 = load ptr, ptr %pTmp, align 8
  %nByte24 = getelementptr inbounds nuw %struct.SyString, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nByte24, align 8
  %cmp25 = icmp ugt i32 %23, 0
  br i1 %cmp25, label %land.lhs.true27, label %land.end48

land.lhs.true27:                                  ; preds = %while.cond23
  %24 = load ptr, ptr %pTmp, align 8
  %zString28 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zString28, align 8
  %26 = load ptr, ptr %pTmp, align 8
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %nByte29, align 8
  %sub = sub i32 %27, 1
  %idxprom30 = zext i32 %sub to i64
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom30
  %28 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %28 to i32
  %cmp33 = icmp slt i32 %conv32, 192
  br i1 %cmp33, label %land.rhs35, label %land.end48

land.rhs35:                                       ; preds = %land.lhs.true27
  %call36 = call ptr @__ctype_b_loc() #2
  %29 = load ptr, ptr %call36, align 8
  %30 = load ptr, ptr %pTmp, align 8
  %zString37 = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %zString37, align 8
  %32 = load ptr, ptr %pTmp, align 8
  %nByte38 = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %nByte38, align 8
  %sub39 = sub i32 %33, 1
  %idxprom40 = zext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %31, i64 %idxprom40
  %34 = load i8, ptr %arrayidx41, align 1
  %conv42 = sext i8 %34 to i32
  %idxprom43 = sext i32 %conv42 to i64
  %arrayidx44 = getelementptr inbounds i16, ptr %29, i64 %idxprom43
  %35 = load i16, ptr %arrayidx44, align 2
  %conv45 = zext i16 %35 to i32
  %and46 = and i32 %conv45, 8192
  %tobool47 = icmp ne i32 %and46, 0
  br label %land.end48

land.end48:                                       ; preds = %land.rhs35, %land.lhs.true27, %while.cond23
  %36 = phi i1 [ false, %land.lhs.true27 ], [ false, %while.cond23 ], [ %tobool47, %land.rhs35 ]
  br i1 %36, label %while.body49, label %while.end52

while.body49:                                     ; preds = %land.end48
  %37 = load ptr, ptr %pTmp, align 8
  %nByte50 = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nByte50, align 8
  %dec51 = add i32 %38, -1
  store i32 %dec51, ptr %nByte50, align 8
  br label %while.cond23, !llvm.loop !8

while.end52:                                      ; preds = %land.end48
  %39 = load ptr, ptr %pTmp, align 8
  %nByte53 = getelementptr inbounds nuw %struct.SyString, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %nByte53, align 8
  %cmp54 = icmp eq i32 %40, 0
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %while.end52
  %41 = load ptr, ptr %zLine.addr, align 8
  %42 = load ptr, ptr %pTmp, align 8
  %zString57 = getelementptr inbounds nuw %struct.SyString, ptr %42, i32 0, i32 0
  store ptr %41, ptr %zString57, align 8
  %43 = load i32, ptr %nLen.addr, align 4
  %44 = load ptr, ptr %pTmp, align 8
  %nByte58 = getelementptr inbounds nuw %struct.SyString, ptr %44, i32 0, i32 1
  store i32 %43, ptr %nByte58, align 8
  br label %if.end64

if.else:                                          ; preds = %while.end52
  %45 = load ptr, ptr %zLine.addr, align 8
  %46 = load i32, ptr %nLen.addr, align 4
  %idxprom59 = zext i32 %46 to i64
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %45, i64 %idxprom59
  %47 = load ptr, ptr %pTmp, align 8
  %zString61 = getelementptr inbounds nuw %struct.SyString, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %zString61, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx60 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv62 = trunc i64 %sub.ptr.sub to i32
  %49 = load ptr, ptr %pTmp, align 8
  %nByte63 = getelementptr inbounds nuw %struct.SyString, ptr %49, i32 0, i32 1
  store i32 %conv62, ptr %nByte63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then56
  store i32 -25, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %lor.lhs.false, %if.end
  %50 = load ptr, ptr %pHdr.addr, align 8
  %sName = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %50, i32 0, i32 0
  store ptr %sName, ptr %pName, align 8
  %51 = load ptr, ptr %zLine.addr, align 8
  %52 = load i32, ptr %nLen.addr, align 4
  %call66 = call i32 @SyByteFind(ptr noundef %51, i32 noundef %52, i32 noundef 58, ptr noundef %nPos)
  store i32 %call66, ptr %rc, align 4
  %53 = load i32, ptr %rc, align 4
  %cmp67 = icmp ne i32 %53, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  store i32 -22, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end65
  %54 = load ptr, ptr %zLine.addr, align 8
  %55 = load ptr, ptr %pName, align 8
  %zString71 = getelementptr inbounds nuw %struct.SyString, ptr %55, i32 0, i32 0
  store ptr %54, ptr %zString71, align 8
  %56 = load i32, ptr %nPos, align 4
  %57 = load ptr, ptr %pName, align 8
  %nByte72 = getelementptr inbounds nuw %struct.SyString, ptr %57, i32 0, i32 1
  store i32 %56, ptr %nByte72, align 8
  br label %while.cond73

while.cond73:                                     ; preds = %while.body94, %if.end70
  %58 = load ptr, ptr %pName, align 8
  %nByte74 = getelementptr inbounds nuw %struct.SyString, ptr %58, i32 0, i32 1
  %59 = load i32, ptr %nByte74, align 8
  %cmp75 = icmp ugt i32 %59, 0
  br i1 %cmp75, label %land.lhs.true77, label %land.end93

land.lhs.true77:                                  ; preds = %while.cond73
  %60 = load ptr, ptr %pName, align 8
  %zString78 = getelementptr inbounds nuw %struct.SyString, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %zString78, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %61, i64 0
  %62 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %62 to i32
  %cmp81 = icmp slt i32 %conv80, 192
  br i1 %cmp81, label %land.rhs83, label %land.end93

land.rhs83:                                       ; preds = %land.lhs.true77
  %call84 = call ptr @__ctype_b_loc() #2
  %63 = load ptr, ptr %call84, align 8
  %64 = load ptr, ptr %pName, align 8
  %zString85 = getelementptr inbounds nuw %struct.SyString, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %zString85, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %65, i64 0
  %66 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %66 to i32
  %idxprom88 = sext i32 %conv87 to i64
  %arrayidx89 = getelementptr inbounds i16, ptr %63, i64 %idxprom88
  %67 = load i16, ptr %arrayidx89, align 2
  %conv90 = zext i16 %67 to i32
  %and91 = and i32 %conv90, 8192
  %tobool92 = icmp ne i32 %and91, 0
  br label %land.end93

land.end93:                                       ; preds = %land.rhs83, %land.lhs.true77, %while.cond73
  %68 = phi i1 [ false, %land.lhs.true77 ], [ false, %while.cond73 ], [ %tobool92, %land.rhs83 ]
  br i1 %68, label %while.body94, label %while.end99

while.body94:                                     ; preds = %land.end93
  %69 = load ptr, ptr %pName, align 8
  %nByte95 = getelementptr inbounds nuw %struct.SyString, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %nByte95, align 8
  %dec96 = add i32 %70, -1
  store i32 %dec96, ptr %nByte95, align 8
  %71 = load ptr, ptr %pName, align 8
  %zString97 = getelementptr inbounds nuw %struct.SyString, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %zString97, align 8
  %incdec.ptr98 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %incdec.ptr98, ptr %zString97, align 8
  br label %while.cond73, !llvm.loop !9

while.end99:                                      ; preds = %land.end93
  br label %while.cond100

while.cond100:                                    ; preds = %while.body127, %while.end99
  %73 = load ptr, ptr %pName, align 8
  %nByte101 = getelementptr inbounds nuw %struct.SyString, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %nByte101, align 8
  %cmp102 = icmp ugt i32 %74, 0
  br i1 %cmp102, label %land.lhs.true104, label %land.end126

land.lhs.true104:                                 ; preds = %while.cond100
  %75 = load ptr, ptr %pName, align 8
  %zString105 = getelementptr inbounds nuw %struct.SyString, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %zString105, align 8
  %77 = load ptr, ptr %pName, align 8
  %nByte106 = getelementptr inbounds nuw %struct.SyString, ptr %77, i32 0, i32 1
  %78 = load i32, ptr %nByte106, align 8
  %sub107 = sub i32 %78, 1
  %idxprom108 = zext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds nuw i8, ptr %76, i64 %idxprom108
  %79 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %79 to i32
  %cmp111 = icmp slt i32 %conv110, 192
  br i1 %cmp111, label %land.rhs113, label %land.end126

land.rhs113:                                      ; preds = %land.lhs.true104
  %call114 = call ptr @__ctype_b_loc() #2
  %80 = load ptr, ptr %call114, align 8
  %81 = load ptr, ptr %pName, align 8
  %zString115 = getelementptr inbounds nuw %struct.SyString, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %zString115, align 8
  %83 = load ptr, ptr %pName, align 8
  %nByte116 = getelementptr inbounds nuw %struct.SyString, ptr %83, i32 0, i32 1
  %84 = load i32, ptr %nByte116, align 8
  %sub117 = sub i32 %84, 1
  %idxprom118 = zext i32 %sub117 to i64
  %arrayidx119 = getelementptr inbounds nuw i8, ptr %82, i64 %idxprom118
  %85 = load i8, ptr %arrayidx119, align 1
  %conv120 = sext i8 %85 to i32
  %idxprom121 = sext i32 %conv120 to i64
  %arrayidx122 = getelementptr inbounds i16, ptr %80, i64 %idxprom121
  %86 = load i16, ptr %arrayidx122, align 2
  %conv123 = zext i16 %86 to i32
  %and124 = and i32 %conv123, 8192
  %tobool125 = icmp ne i32 %and124, 0
  br label %land.end126

land.end126:                                      ; preds = %land.rhs113, %land.lhs.true104, %while.cond100
  %87 = phi i1 [ false, %land.lhs.true104 ], [ false, %while.cond100 ], [ %tobool125, %land.rhs113 ]
  br i1 %87, label %while.body127, label %while.end130

while.body127:                                    ; preds = %land.end126
  %88 = load ptr, ptr %pName, align 8
  %nByte128 = getelementptr inbounds nuw %struct.SyString, ptr %88, i32 0, i32 1
  %89 = load i32, ptr %nByte128, align 8
  %dec129 = add i32 %89, -1
  store i32 %dec129, ptr %nByte128, align 8
  br label %while.cond100, !llvm.loop !10

while.end130:                                     ; preds = %land.end126
  %90 = load ptr, ptr %zLine.addr, align 8
  %91 = load i32, ptr %nPos, align 4
  %add = add i32 %91, 1
  %idxprom131 = zext i32 %add to i64
  %arrayidx132 = getelementptr inbounds nuw i8, ptr %90, i64 %idxprom131
  %92 = load ptr, ptr %pHdr.addr, align 8
  %sValue133 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %92, i32 0, i32 1
  %zString134 = getelementptr inbounds nuw %struct.SyString, ptr %sValue133, i32 0, i32 0
  store ptr %arrayidx132, ptr %zString134, align 8
  %93 = load i32, ptr %nLen.addr, align 4
  %94 = load i32, ptr %nPos, align 4
  %sub135 = sub i32 %93, %94
  %sub136 = sub i32 %sub135, 1
  %95 = load ptr, ptr %pHdr.addr, align 8
  %sValue137 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %95, i32 0, i32 1
  %nByte138 = getelementptr inbounds nuw %struct.SyString, ptr %sValue137, i32 0, i32 1
  store i32 %sub136, ptr %nByte138, align 8
  br label %while.cond139

while.cond139:                                    ; preds = %while.body163, %while.end130
  %96 = load ptr, ptr %pHdr.addr, align 8
  %sValue140 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %96, i32 0, i32 1
  %nByte141 = getelementptr inbounds nuw %struct.SyString, ptr %sValue140, i32 0, i32 1
  %97 = load i32, ptr %nByte141, align 8
  %cmp142 = icmp ugt i32 %97, 0
  br i1 %cmp142, label %land.lhs.true144, label %land.end162

land.lhs.true144:                                 ; preds = %while.cond139
  %98 = load ptr, ptr %pHdr.addr, align 8
  %sValue145 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %98, i32 0, i32 1
  %zString146 = getelementptr inbounds nuw %struct.SyString, ptr %sValue145, i32 0, i32 0
  %99 = load ptr, ptr %zString146, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %99, i64 0
  %100 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %100 to i32
  %cmp149 = icmp slt i32 %conv148, 192
  br i1 %cmp149, label %land.rhs151, label %land.end162

land.rhs151:                                      ; preds = %land.lhs.true144
  %call152 = call ptr @__ctype_b_loc() #2
  %101 = load ptr, ptr %call152, align 8
  %102 = load ptr, ptr %pHdr.addr, align 8
  %sValue153 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %102, i32 0, i32 1
  %zString154 = getelementptr inbounds nuw %struct.SyString, ptr %sValue153, i32 0, i32 0
  %103 = load ptr, ptr %zString154, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %103, i64 0
  %104 = load i8, ptr %arrayidx155, align 1
  %conv156 = sext i8 %104 to i32
  %idxprom157 = sext i32 %conv156 to i64
  %arrayidx158 = getelementptr inbounds i16, ptr %101, i64 %idxprom157
  %105 = load i16, ptr %arrayidx158, align 2
  %conv159 = zext i16 %105 to i32
  %and160 = and i32 %conv159, 8192
  %tobool161 = icmp ne i32 %and160, 0
  br label %land.end162

land.end162:                                      ; preds = %land.rhs151, %land.lhs.true144, %while.cond139
  %106 = phi i1 [ false, %land.lhs.true144 ], [ false, %while.cond139 ], [ %tobool161, %land.rhs151 ]
  br i1 %106, label %while.body163, label %while.end170

while.body163:                                    ; preds = %land.end162
  %107 = load ptr, ptr %pHdr.addr, align 8
  %sValue164 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %107, i32 0, i32 1
  %nByte165 = getelementptr inbounds nuw %struct.SyString, ptr %sValue164, i32 0, i32 1
  %108 = load i32, ptr %nByte165, align 8
  %dec166 = add i32 %108, -1
  store i32 %dec166, ptr %nByte165, align 8
  %109 = load ptr, ptr %pHdr.addr, align 8
  %sValue167 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %109, i32 0, i32 1
  %zString168 = getelementptr inbounds nuw %struct.SyString, ptr %sValue167, i32 0, i32 0
  %110 = load ptr, ptr %zString168, align 8
  %incdec.ptr169 = getelementptr inbounds nuw i8, ptr %110, i32 1
  store ptr %incdec.ptr169, ptr %zString168, align 8
  br label %while.cond139, !llvm.loop !11

while.end170:                                     ; preds = %land.end162
  br label %while.cond171

while.cond171:                                    ; preds = %while.body203, %while.end170
  %111 = load ptr, ptr %pHdr.addr, align 8
  %sValue172 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %111, i32 0, i32 1
  %nByte173 = getelementptr inbounds nuw %struct.SyString, ptr %sValue172, i32 0, i32 1
  %112 = load i32, ptr %nByte173, align 8
  %cmp174 = icmp ugt i32 %112, 0
  br i1 %cmp174, label %land.lhs.true176, label %land.end202

land.lhs.true176:                                 ; preds = %while.cond171
  %113 = load ptr, ptr %pHdr.addr, align 8
  %sValue177 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %113, i32 0, i32 1
  %zString178 = getelementptr inbounds nuw %struct.SyString, ptr %sValue177, i32 0, i32 0
  %114 = load ptr, ptr %zString178, align 8
  %115 = load ptr, ptr %pHdr.addr, align 8
  %sValue179 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %115, i32 0, i32 1
  %nByte180 = getelementptr inbounds nuw %struct.SyString, ptr %sValue179, i32 0, i32 1
  %116 = load i32, ptr %nByte180, align 8
  %sub181 = sub i32 %116, 1
  %idxprom182 = zext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds nuw i8, ptr %114, i64 %idxprom182
  %117 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %117 to i32
  %cmp185 = icmp slt i32 %conv184, 192
  br i1 %cmp185, label %land.rhs187, label %land.end202

land.rhs187:                                      ; preds = %land.lhs.true176
  %call188 = call ptr @__ctype_b_loc() #2
  %118 = load ptr, ptr %call188, align 8
  %119 = load ptr, ptr %pHdr.addr, align 8
  %sValue189 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %119, i32 0, i32 1
  %zString190 = getelementptr inbounds nuw %struct.SyString, ptr %sValue189, i32 0, i32 0
  %120 = load ptr, ptr %zString190, align 8
  %121 = load ptr, ptr %pHdr.addr, align 8
  %sValue191 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %121, i32 0, i32 1
  %nByte192 = getelementptr inbounds nuw %struct.SyString, ptr %sValue191, i32 0, i32 1
  %122 = load i32, ptr %nByte192, align 8
  %sub193 = sub i32 %122, 1
  %idxprom194 = zext i32 %sub193 to i64
  %arrayidx195 = getelementptr inbounds nuw i8, ptr %120, i64 %idxprom194
  %123 = load i8, ptr %arrayidx195, align 1
  %conv196 = sext i8 %123 to i32
  %idxprom197 = sext i32 %conv196 to i64
  %arrayidx198 = getelementptr inbounds i16, ptr %118, i64 %idxprom197
  %124 = load i16, ptr %arrayidx198, align 2
  %conv199 = zext i16 %124 to i32
  %and200 = and i32 %conv199, 8192
  %tobool201 = icmp ne i32 %and200, 0
  br label %land.end202

land.end202:                                      ; preds = %land.rhs187, %land.lhs.true176, %while.cond171
  %125 = phi i1 [ false, %land.lhs.true176 ], [ false, %while.cond171 ], [ %tobool201, %land.rhs187 ]
  br i1 %125, label %while.body203, label %while.end207

while.body203:                                    ; preds = %land.end202
  %126 = load ptr, ptr %pHdr.addr, align 8
  %sValue204 = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %126, i32 0, i32 1
  %nByte205 = getelementptr inbounds nuw %struct.SyString, ptr %sValue204, i32 0, i32 1
  %127 = load i32, ptr %nByte205, align 8
  %dec206 = add i32 %127, -1
  store i32 %dec206, ptr %nByte205, align 8
  br label %while.cond171, !llvm.loop !12

while.end207:                                     ; preds = %land.end202
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end207, %if.then69, %if.end64, %if.then
  %128 = load i32, ptr %retval, align 4
  ret i32 %128
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
!12 = distinct !{!12, !7}
