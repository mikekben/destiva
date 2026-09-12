; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyhttpUri = type { %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
define hidden i32 @VmHttpSplitURI(ptr noundef %pOut, ptr noundef %zUri, i32 noundef %nLen) #0 {
entry:
  %retval = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %zUri.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %bHostOnly = alloca i8, align 1
  %bIPv6 = alloca i8, align 1
  %zCur = alloca ptr, align 8
  %pComp = alloca ptr, align 8
  %nPos = alloca i32, align 4
  %rc = alloca i32, align 4
  %nPassOfft = alloca i32, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  store ptr %zUri, ptr %zUri.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load ptr, ptr %zUri.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  store i8 0, ptr %bHostOnly, align 1
  store i8 0, ptr %bIPv6, align 1
  store i32 0, ptr %nPos, align 4
  %2 = load ptr, ptr %pOut.addr, align 8
  call void @SyZero(ptr noundef %2, i32 noundef 144)
  %3 = load ptr, ptr %zUri.addr, align 8
  %4 = load ptr, ptr %pOut.addr, align 8
  %sRaw = getelementptr inbounds nuw %struct.SyhttpUri, ptr %4, i32 0, i32 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sRaw, i32 0, i32 0
  store ptr %3, ptr %zString, align 8
  %5 = load i32, ptr %nLen.addr, align 4
  %6 = load ptr, ptr %pOut.addr, align 8
  %sRaw1 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %6, i32 0, i32 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sRaw1, i32 0, i32 1
  store i32 %5, ptr %nByte, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %pOut.addr, align 8
  %sRaw2 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %7, i32 0, i32 8
  %nByte3 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw2, i32 0, i32 1
  %8 = load i32, ptr %nByte3, align 8
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %9 = load ptr, ptr %pOut.addr, align 8
  %sRaw4 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %9, i32 0, i32 8
  %zString5 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw4, i32 0, i32 0
  %10 = load ptr, ptr %zString5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %11 to i32
  %cmp7 = icmp slt i32 %conv, 192
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #2
  %12 = load ptr, ptr %call, align 8
  %13 = load ptr, ptr %pOut.addr, align 8
  %sRaw9 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %13, i32 0, i32 8
  %zString10 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw9, i32 0, i32 0
  %14 = load ptr, ptr %zString10, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %15 to i32
  %idxprom13 = sext i32 %conv12 to i64
  %arrayidx14 = getelementptr inbounds i16, ptr %12, i64 %idxprom13
  %16 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %16 to i32
  %and = and i32 %conv15, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load ptr, ptr %pOut.addr, align 8
  %sRaw16 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %18, i32 0, i32 8
  %nByte17 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw16, i32 0, i32 1
  %19 = load i32, ptr %nByte17, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %nByte17, align 8
  %20 = load ptr, ptr %pOut.addr, align 8
  %sRaw18 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %20, i32 0, i32 8
  %zString19 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw18, i32 0, i32 0
  %21 = load ptr, ptr %zString19, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %zString19, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond20

while.cond20:                                     ; preds = %while.body51, %while.end
  %22 = load ptr, ptr %pOut.addr, align 8
  %sRaw21 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %22, i32 0, i32 8
  %nByte22 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw21, i32 0, i32 1
  %23 = load i32, ptr %nByte22, align 8
  %cmp23 = icmp ugt i32 %23, 0
  br i1 %cmp23, label %land.lhs.true25, label %land.end50

land.lhs.true25:                                  ; preds = %while.cond20
  %24 = load ptr, ptr %pOut.addr, align 8
  %sRaw26 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %24, i32 0, i32 8
  %zString27 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw26, i32 0, i32 0
  %25 = load ptr, ptr %zString27, align 8
  %26 = load ptr, ptr %pOut.addr, align 8
  %sRaw28 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %26, i32 0, i32 8
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw28, i32 0, i32 1
  %27 = load i32, ptr %nByte29, align 8
  %sub = sub i32 %27, 1
  %idxprom30 = zext i32 %sub to i64
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom30
  %28 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %28 to i32
  %cmp33 = icmp slt i32 %conv32, 192
  br i1 %cmp33, label %land.rhs35, label %land.end50

land.rhs35:                                       ; preds = %land.lhs.true25
  %call36 = call ptr @__ctype_b_loc() #2
  %29 = load ptr, ptr %call36, align 8
  %30 = load ptr, ptr %pOut.addr, align 8
  %sRaw37 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %30, i32 0, i32 8
  %zString38 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw37, i32 0, i32 0
  %31 = load ptr, ptr %zString38, align 8
  %32 = load ptr, ptr %pOut.addr, align 8
  %sRaw39 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %32, i32 0, i32 8
  %nByte40 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw39, i32 0, i32 1
  %33 = load i32, ptr %nByte40, align 8
  %sub41 = sub i32 %33, 1
  %idxprom42 = zext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %31, i64 %idxprom42
  %34 = load i8, ptr %arrayidx43, align 1
  %conv44 = sext i8 %34 to i32
  %idxprom45 = sext i32 %conv44 to i64
  %arrayidx46 = getelementptr inbounds i16, ptr %29, i64 %idxprom45
  %35 = load i16, ptr %arrayidx46, align 2
  %conv47 = zext i16 %35 to i32
  %and48 = and i32 %conv47, 8192
  %tobool49 = icmp ne i32 %and48, 0
  br label %land.end50

land.end50:                                       ; preds = %land.rhs35, %land.lhs.true25, %while.cond20
  %36 = phi i1 [ false, %land.lhs.true25 ], [ false, %while.cond20 ], [ %tobool49, %land.rhs35 ]
  br i1 %36, label %while.body51, label %while.end55

while.body51:                                     ; preds = %land.end50
  %37 = load ptr, ptr %pOut.addr, align 8
  %sRaw52 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %37, i32 0, i32 8
  %nByte53 = getelementptr inbounds nuw %struct.SyString, ptr %sRaw52, i32 0, i32 1
  %38 = load i32, ptr %nByte53, align 8
  %dec54 = add i32 %38, -1
  store i32 %dec54, ptr %nByte53, align 8
  br label %while.cond20, !llvm.loop !8

while.end55:                                      ; preds = %land.end50
  %39 = load ptr, ptr %zUri.addr, align 8
  %40 = load ptr, ptr %zEnd, align 8
  %41 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv56 = trunc i64 %sub.ptr.sub to i32
  %call57 = call i32 @SyByteFind(ptr noundef %39, i32 noundef %conv56, i32 noundef 47, ptr noundef %nPos)
  store i32 %call57, ptr %rc, align 4
  %42 = load i32, ptr %rc, align 4
  %cmp58 = icmp ne i32 %42, 0
  br i1 %cmp58, label %if.then, label %if.end

if.then:                                          ; preds = %while.end55
  %43 = load ptr, ptr %zEnd, align 8
  store ptr %43, ptr %zCur, align 8
  store i8 1, ptr %bHostOnly, align 1
  br label %ProcessHost

if.end:                                           ; preds = %while.end55
  %44 = load ptr, ptr %zUri.addr, align 8
  %45 = load i32, ptr %nPos, align 4
  %idxprom60 = zext i32 %45 to i64
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %44, i64 %idxprom60
  store ptr %arrayidx61, ptr %zCur, align 8
  %46 = load ptr, ptr %zUri.addr, align 8
  %47 = load ptr, ptr %zCur, align 8
  %cmp62 = icmp ne ptr %46, %47
  br i1 %cmp62, label %land.lhs.true64, label %if.end104

land.lhs.true64:                                  ; preds = %if.end
  %48 = load ptr, ptr %zCur, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %48, i64 -1
  %49 = load i8, ptr %arrayidx65, align 1
  %conv66 = sext i8 %49 to i32
  %cmp67 = icmp eq i32 %conv66, 58
  br i1 %cmp67, label %if.then69, label %if.end104

if.then69:                                        ; preds = %land.lhs.true64
  %50 = load ptr, ptr %pOut.addr, align 8
  %sScheme = getelementptr inbounds nuw %struct.SyhttpUri, ptr %50, i32 0, i32 5
  store ptr %sScheme, ptr %pComp, align 8
  %51 = load ptr, ptr %zUri.addr, align 8
  %52 = load ptr, ptr %pComp, align 8
  %zString70 = getelementptr inbounds nuw %struct.SyString, ptr %52, i32 0, i32 0
  store ptr %51, ptr %zString70, align 8
  %53 = load ptr, ptr %zCur, align 8
  %54 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast71 = ptrtoint ptr %53 to i64
  %sub.ptr.rhs.cast72 = ptrtoint ptr %54 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %sub74 = sub nsw i64 %sub.ptr.sub73, 1
  %conv75 = trunc i64 %sub74 to i32
  %55 = load ptr, ptr %pComp, align 8
  %nByte76 = getelementptr inbounds nuw %struct.SyString, ptr %55, i32 0, i32 1
  store i32 %conv75, ptr %nByte76, align 8
  br label %while.cond77

while.cond77:                                     ; preds = %while.body98, %if.then69
  %56 = load ptr, ptr %pComp, align 8
  %nByte78 = getelementptr inbounds nuw %struct.SyString, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %nByte78, align 8
  %cmp79 = icmp ugt i32 %57, 0
  br i1 %cmp79, label %land.lhs.true81, label %land.end97

land.lhs.true81:                                  ; preds = %while.cond77
  %58 = load ptr, ptr %pComp, align 8
  %zString82 = getelementptr inbounds nuw %struct.SyString, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %zString82, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %59, i64 0
  %60 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %60 to i32
  %cmp85 = icmp slt i32 %conv84, 192
  br i1 %cmp85, label %land.rhs87, label %land.end97

land.rhs87:                                       ; preds = %land.lhs.true81
  %call88 = call ptr @__ctype_b_loc() #2
  %61 = load ptr, ptr %call88, align 8
  %62 = load ptr, ptr %pComp, align 8
  %zString89 = getelementptr inbounds nuw %struct.SyString, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %zString89, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %63, i64 0
  %64 = load i8, ptr %arrayidx90, align 1
  %conv91 = sext i8 %64 to i32
  %idxprom92 = sext i32 %conv91 to i64
  %arrayidx93 = getelementptr inbounds i16, ptr %61, i64 %idxprom92
  %65 = load i16, ptr %arrayidx93, align 2
  %conv94 = zext i16 %65 to i32
  %and95 = and i32 %conv94, 8192
  %tobool96 = icmp ne i32 %and95, 0
  br label %land.end97

land.end97:                                       ; preds = %land.rhs87, %land.lhs.true81, %while.cond77
  %66 = phi i1 [ false, %land.lhs.true81 ], [ false, %while.cond77 ], [ %tobool96, %land.rhs87 ]
  br i1 %66, label %while.body98, label %while.end103

while.body98:                                     ; preds = %land.end97
  %67 = load ptr, ptr %pComp, align 8
  %nByte99 = getelementptr inbounds nuw %struct.SyString, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %nByte99, align 8
  %dec100 = add i32 %68, -1
  store i32 %dec100, ptr %nByte99, align 8
  %69 = load ptr, ptr %pComp, align 8
  %zString101 = getelementptr inbounds nuw %struct.SyString, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %zString101, align 8
  %incdec.ptr102 = getelementptr inbounds nuw i8, ptr %70, i32 1
  store ptr %incdec.ptr102, ptr %zString101, align 8
  br label %while.cond77, !llvm.loop !9

while.end103:                                     ; preds = %land.end97
  br label %if.end104

if.end104:                                        ; preds = %while.end103, %land.lhs.true64, %if.end
  %71 = load ptr, ptr %zCur, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %71, i64 1
  %72 = load i8, ptr %arrayidx105, align 1
  %conv106 = sext i8 %72 to i32
  %cmp107 = icmp ne i32 %conv106, 47
  br i1 %cmp107, label %if.then109, label %if.end118

if.then109:                                       ; preds = %if.end104
  %73 = load ptr, ptr %zCur, align 8
  %74 = load ptr, ptr %zUri.addr, align 8
  %cmp110 = icmp eq ptr %73, %74
  br i1 %cmp110, label %if.then116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then109
  %75 = load ptr, ptr %zCur, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %75, i64 -1
  %76 = load i8, ptr %arrayidx112, align 1
  %conv113 = sext i8 %76 to i32
  %cmp114 = icmp eq i32 %conv113, 58
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %lor.lhs.false, %if.then109
  br label %PathSplit

if.end117:                                        ; preds = %lor.lhs.false
  br label %ProcessHost

if.end118:                                        ; preds = %if.end104
  %77 = load ptr, ptr %zCur, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %77, i64 2
  store ptr %arrayidx119, ptr %zUri.addr, align 8
  %78 = load ptr, ptr %zEnd, align 8
  store ptr %78, ptr %zCur, align 8
  %79 = load ptr, ptr %zUri.addr, align 8
  %80 = load ptr, ptr %zEnd, align 8
  %81 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast120 = ptrtoint ptr %80 to i64
  %sub.ptr.rhs.cast121 = ptrtoint ptr %81 to i64
  %sub.ptr.sub122 = sub i64 %sub.ptr.lhs.cast120, %sub.ptr.rhs.cast121
  %conv123 = trunc i64 %sub.ptr.sub122 to i32
  %call124 = call i32 @SyByteFind(ptr noundef %79, i32 noundef %conv123, i32 noundef 47, ptr noundef %nPos)
  store i32 %call124, ptr %rc, align 4
  %82 = load i32, ptr %rc, align 4
  %cmp125 = icmp eq i32 %82, 0
  br i1 %cmp125, label %if.then127, label %if.end130

if.then127:                                       ; preds = %if.end118
  %83 = load ptr, ptr %zUri.addr, align 8
  %84 = load i32, ptr %nPos, align 4
  %idxprom128 = zext i32 %84 to i64
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %83, i64 %idxprom128
  store ptr %arrayidx129, ptr %zCur, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end118
  br label %ProcessHost

ProcessHost:                                      ; preds = %if.end130, %if.end117, %if.then
  %85 = load ptr, ptr %zUri.addr, align 8
  %86 = load ptr, ptr %zCur, align 8
  %87 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast131 = ptrtoint ptr %86 to i64
  %sub.ptr.rhs.cast132 = ptrtoint ptr %87 to i64
  %sub.ptr.sub133 = sub i64 %sub.ptr.lhs.cast131, %sub.ptr.rhs.cast132
  %conv134 = trunc i64 %sub.ptr.sub133 to i32
  %call135 = call i32 @SyByteFind(ptr noundef %85, i32 noundef %conv134, i32 noundef 64, ptr noundef %nPos)
  store i32 %call135, ptr %rc, align 4
  %88 = load i32, ptr %rc, align 4
  %cmp136 = icmp eq i32 %88, 0
  br i1 %cmp136, label %if.then138, label %if.end168

if.then138:                                       ; preds = %ProcessHost
  %89 = load i32, ptr %nPos, align 4
  %cmp139 = icmp ugt i32 %89, 0
  br i1 %cmp139, label %if.then141, label %if.else

if.then141:                                       ; preds = %if.then138
  %90 = load ptr, ptr %pOut.addr, align 8
  %sUser = getelementptr inbounds nuw %struct.SyhttpUri, ptr %90, i32 0, i32 6
  store ptr %sUser, ptr %pComp, align 8
  %91 = load ptr, ptr %zUri.addr, align 8
  %92 = load ptr, ptr %pComp, align 8
  %zString142 = getelementptr inbounds nuw %struct.SyString, ptr %92, i32 0, i32 0
  store ptr %91, ptr %zString142, align 8
  %93 = load i32, ptr %nPos, align 4
  %94 = load ptr, ptr %pComp, align 8
  %nByte143 = getelementptr inbounds nuw %struct.SyString, ptr %94, i32 0, i32 1
  store i32 %93, ptr %nByte143, align 8
  %95 = load ptr, ptr %zUri.addr, align 8
  %96 = load ptr, ptr %zCur, align 8
  %97 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast144 = ptrtoint ptr %96 to i64
  %sub.ptr.rhs.cast145 = ptrtoint ptr %97 to i64
  %sub.ptr.sub146 = sub i64 %sub.ptr.lhs.cast144, %sub.ptr.rhs.cast145
  %conv147 = trunc i64 %sub.ptr.sub146 to i32
  %call148 = call i32 @SyByteFind(ptr noundef %95, i32 noundef %conv147, i32 noundef 58, ptr noundef %nPassOfft)
  store i32 %call148, ptr %rc, align 4
  %98 = load i32, ptr %rc, align 4
  %cmp149 = icmp eq i32 %98, 0
  br i1 %cmp149, label %land.lhs.true151, label %if.end162

land.lhs.true151:                                 ; preds = %if.then141
  %99 = load i32, ptr %nPassOfft, align 4
  %100 = load i32, ptr %nPos, align 4
  %cmp152 = icmp ult i32 %99, %100
  br i1 %cmp152, label %if.then154, label %if.end162

if.then154:                                       ; preds = %land.lhs.true151
  %101 = load i32, ptr %nPassOfft, align 4
  %102 = load ptr, ptr %pComp, align 8
  %nByte155 = getelementptr inbounds nuw %struct.SyString, ptr %102, i32 0, i32 1
  store i32 %101, ptr %nByte155, align 8
  %103 = load ptr, ptr %pOut.addr, align 8
  %sPass = getelementptr inbounds nuw %struct.SyhttpUri, ptr %103, i32 0, i32 7
  store ptr %sPass, ptr %pComp, align 8
  %104 = load ptr, ptr %zUri.addr, align 8
  %105 = load i32, ptr %nPassOfft, align 4
  %conv156 = zext i32 %105 to i64
  %add = add i64 %conv156, 1
  %arrayidx157 = getelementptr inbounds nuw i8, ptr %104, i64 %add
  %106 = load ptr, ptr %pComp, align 8
  %zString158 = getelementptr inbounds nuw %struct.SyString, ptr %106, i32 0, i32 0
  store ptr %arrayidx157, ptr %zString158, align 8
  %107 = load i32, ptr %nPos, align 4
  %108 = load i32, ptr %nPassOfft, align 4
  %sub159 = sub i32 %107, %108
  %sub160 = sub i32 %sub159, 1
  %109 = load ptr, ptr %pComp, align 8
  %nByte161 = getelementptr inbounds nuw %struct.SyString, ptr %109, i32 0, i32 1
  store i32 %sub160, ptr %nByte161, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then154, %land.lhs.true151, %if.then141
  %110 = load ptr, ptr %zUri.addr, align 8
  %111 = load i32, ptr %nPos, align 4
  %add163 = add i32 %111, 1
  %idxprom164 = zext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds nuw i8, ptr %110, i64 %idxprom164
  store ptr %arrayidx165, ptr %zUri.addr, align 8
  br label %if.end167

if.else:                                          ; preds = %if.then138
  %112 = load ptr, ptr %zUri.addr, align 8
  %incdec.ptr166 = getelementptr inbounds nuw i8, ptr %112, i32 1
  store ptr %incdec.ptr166, ptr %zUri.addr, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.else, %if.end162
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %ProcessHost
  %113 = load ptr, ptr %pOut.addr, align 8
  %sHost = getelementptr inbounds nuw %struct.SyhttpUri, ptr %113, i32 0, i32 0
  store ptr %sHost, ptr %pComp, align 8
  br label %while.cond169

while.cond169:                                    ; preds = %while.body182, %if.end168
  %114 = load ptr, ptr %zUri.addr, align 8
  %115 = load ptr, ptr %zCur, align 8
  %cmp170 = icmp ult ptr %114, %115
  br i1 %cmp170, label %land.rhs172, label %land.end181

land.rhs172:                                      ; preds = %while.cond169
  %call173 = call ptr @__ctype_b_loc() #2
  %116 = load ptr, ptr %call173, align 8
  %117 = load ptr, ptr %zUri.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %117, i64 0
  %118 = load i8, ptr %arrayidx174, align 1
  %conv175 = sext i8 %118 to i32
  %idxprom176 = sext i32 %conv175 to i64
  %arrayidx177 = getelementptr inbounds i16, ptr %116, i64 %idxprom176
  %119 = load i16, ptr %arrayidx177, align 2
  %conv178 = zext i16 %119 to i32
  %and179 = and i32 %conv178, 8192
  %tobool180 = icmp ne i32 %and179, 0
  br label %land.end181

land.end181:                                      ; preds = %land.rhs172, %while.cond169
  %120 = phi i1 [ false, %while.cond169 ], [ %tobool180, %land.rhs172 ]
  br i1 %120, label %while.body182, label %while.end184

while.body182:                                    ; preds = %land.end181
  %121 = load ptr, ptr %zUri.addr, align 8
  %incdec.ptr183 = getelementptr inbounds nuw i8, ptr %121, i32 1
  store ptr %incdec.ptr183, ptr %zUri.addr, align 8
  br label %while.cond169, !llvm.loop !10

while.end184:                                     ; preds = %land.end181
  %122 = load ptr, ptr %zUri.addr, align 8
  %123 = load ptr, ptr %pComp, align 8
  %zString185 = getelementptr inbounds nuw %struct.SyString, ptr %123, i32 0, i32 0
  store ptr %122, ptr %zString185, align 8
  %124 = load ptr, ptr %zCur, align 8
  %125 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast186 = ptrtoint ptr %124 to i64
  %sub.ptr.rhs.cast187 = ptrtoint ptr %125 to i64
  %sub.ptr.sub188 = sub i64 %sub.ptr.lhs.cast186, %sub.ptr.rhs.cast187
  %conv189 = trunc i64 %sub.ptr.sub188 to i32
  %126 = load ptr, ptr %pComp, align 8
  %nByte190 = getelementptr inbounds nuw %struct.SyString, ptr %126, i32 0, i32 1
  store i32 %conv189, ptr %nByte190, align 8
  %127 = load ptr, ptr %pComp, align 8
  %zString191 = getelementptr inbounds nuw %struct.SyString, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %zString191, align 8
  %arrayidx192 = getelementptr inbounds i8, ptr %128, i64 0
  %129 = load i8, ptr %arrayidx192, align 1
  %conv193 = sext i8 %129 to i32
  %cmp194 = icmp eq i32 %conv193, 91
  br i1 %cmp194, label %if.then196, label %if.end230

if.then196:                                       ; preds = %while.end184
  %130 = load ptr, ptr %zUri.addr, align 8
  %incdec.ptr197 = getelementptr inbounds nuw i8, ptr %130, i32 1
  store ptr %incdec.ptr197, ptr %zUri.addr, align 8
  %131 = load ptr, ptr %pComp, align 8
  %zString198 = getelementptr inbounds nuw %struct.SyString, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %zString198, align 8
  %incdec.ptr199 = getelementptr inbounds nuw i8, ptr %132, i32 1
  store ptr %incdec.ptr199, ptr %zString198, align 8
  %133 = load ptr, ptr %pComp, align 8
  %nByte200 = getelementptr inbounds nuw %struct.SyString, ptr %133, i32 0, i32 1
  store i32 0, ptr %nByte200, align 8
  br label %while.cond201

while.cond201:                                    ; preds = %while.body219, %if.then196
  %134 = load ptr, ptr %zUri.addr, align 8
  %arrayidx202 = getelementptr inbounds i8, ptr %134, i64 0
  %135 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %135 to i32
  %cmp204 = icmp slt i32 %conv203, 192
  br i1 %cmp204, label %land.lhs.true206, label %lor.rhs

land.lhs.true206:                                 ; preds = %while.cond201
  %call207 = call ptr @__ctype_b_loc() #2
  %136 = load ptr, ptr %call207, align 8
  %137 = load ptr, ptr %zUri.addr, align 8
  %arrayidx208 = getelementptr inbounds i8, ptr %137, i64 0
  %138 = load i8, ptr %arrayidx208, align 1
  %conv209 = sext i8 %138 to i32
  %idxprom210 = sext i32 %conv209 to i64
  %arrayidx211 = getelementptr inbounds i16, ptr %136, i64 %idxprom210
  %139 = load i16, ptr %arrayidx211, align 2
  %conv212 = zext i16 %139 to i32
  %and213 = and i32 %conv212, 4096
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true206, %while.cond201
  %140 = load ptr, ptr %zUri.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, ptr %140, i64 0
  %141 = load i8, ptr %arrayidx215, align 1
  %conv216 = sext i8 %141 to i32
  %cmp217 = icmp eq i32 %conv216, 58
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true206
  %142 = phi i1 [ true, %land.lhs.true206 ], [ %cmp217, %lor.rhs ]
  br i1 %142, label %while.body219, label %while.end222

while.body219:                                    ; preds = %lor.end
  %143 = load ptr, ptr %zUri.addr, align 8
  %incdec.ptr220 = getelementptr inbounds nuw i8, ptr %143, i32 1
  store ptr %incdec.ptr220, ptr %zUri.addr, align 8
  %144 = load ptr, ptr %pComp, align 8
  %nByte221 = getelementptr inbounds nuw %struct.SyString, ptr %144, i32 0, i32 1
  %145 = load i32, ptr %nByte221, align 8
  %inc = add i32 %145, 1
  store i32 %inc, ptr %nByte221, align 8
  br label %while.cond201, !llvm.loop !11

while.end222:                                     ; preds = %lor.end
  %146 = load ptr, ptr %zUri.addr, align 8
  %arrayidx223 = getelementptr inbounds i8, ptr %146, i64 0
  %147 = load i8, ptr %arrayidx223, align 1
  %conv224 = sext i8 %147 to i32
  %cmp225 = icmp ne i32 %conv224, 93
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %while.end222
  store i32 -24, ptr %retval, align 4
  br label %return

if.end228:                                        ; preds = %while.end222
  %148 = load ptr, ptr %zUri.addr, align 8
  %incdec.ptr229 = getelementptr inbounds nuw i8, ptr %148, i32 1
  store ptr %incdec.ptr229, ptr %zUri.addr, align 8
  store i8 1, ptr %bIPv6, align 1
  br label %if.end230

if.end230:                                        ; preds = %if.end228, %while.end184
  %149 = load ptr, ptr %zUri.addr, align 8
  %150 = load ptr, ptr %zCur, align 8
  %151 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %150 to i64
  %sub.ptr.rhs.cast232 = ptrtoint ptr %151 to i64
  %sub.ptr.sub233 = sub i64 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %conv234 = trunc i64 %sub.ptr.sub233 to i32
  %call235 = call i32 @SyByteFind(ptr noundef %149, i32 noundef %conv234, i32 noundef 58, ptr noundef %nPos)
  store i32 %call235, ptr %rc, align 4
  %152 = load i32, ptr %rc, align 4
  %cmp236 = icmp eq i32 %152, 0
  br i1 %cmp236, label %if.then238, label %if.end263

if.then238:                                       ; preds = %if.end230
  %153 = load i8, ptr %bIPv6, align 1
  %conv239 = zext i8 %153 to i32
  %cmp240 = icmp eq i32 %conv239, 0
  br i1 %cmp240, label %if.then242, label %if.end250

if.then242:                                       ; preds = %if.then238
  %154 = load ptr, ptr %zUri.addr, align 8
  %155 = load i32, ptr %nPos, align 4
  %idxprom243 = zext i32 %155 to i64
  %arrayidx244 = getelementptr inbounds nuw i8, ptr %154, i64 %idxprom243
  %156 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast245 = ptrtoint ptr %arrayidx244 to i64
  %sub.ptr.rhs.cast246 = ptrtoint ptr %156 to i64
  %sub.ptr.sub247 = sub i64 %sub.ptr.lhs.cast245, %sub.ptr.rhs.cast246
  %conv248 = trunc i64 %sub.ptr.sub247 to i32
  %157 = load ptr, ptr %pComp, align 8
  %nByte249 = getelementptr inbounds nuw %struct.SyString, ptr %157, i32 0, i32 1
  store i32 %conv248, ptr %nByte249, align 8
  br label %if.end250

if.end250:                                        ; preds = %if.then242, %if.then238
  %158 = load ptr, ptr %pOut.addr, align 8
  %sPort = getelementptr inbounds nuw %struct.SyhttpUri, ptr %158, i32 0, i32 1
  store ptr %sPort, ptr %pComp, align 8
  %159 = load ptr, ptr %zUri.addr, align 8
  %160 = load i32, ptr %nPos, align 4
  %add251 = add i32 %160, 1
  %idxprom252 = zext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds nuw i8, ptr %159, i64 %idxprom252
  %161 = load ptr, ptr %pComp, align 8
  %zString254 = getelementptr inbounds nuw %struct.SyString, ptr %161, i32 0, i32 0
  store ptr %arrayidx253, ptr %zString254, align 8
  %162 = load ptr, ptr %zCur, align 8
  %163 = load ptr, ptr %zUri.addr, align 8
  %164 = load i32, ptr %nPos, align 4
  %add255 = add i32 %164, 1
  %idxprom256 = zext i32 %add255 to i64
  %arrayidx257 = getelementptr inbounds nuw i8, ptr %163, i64 %idxprom256
  %sub.ptr.lhs.cast258 = ptrtoint ptr %162 to i64
  %sub.ptr.rhs.cast259 = ptrtoint ptr %arrayidx257 to i64
  %sub.ptr.sub260 = sub i64 %sub.ptr.lhs.cast258, %sub.ptr.rhs.cast259
  %conv261 = trunc i64 %sub.ptr.sub260 to i32
  %165 = load ptr, ptr %pComp, align 8
  %nByte262 = getelementptr inbounds nuw %struct.SyString, ptr %165, i32 0, i32 1
  store i32 %conv261, ptr %nByte262, align 8
  br label %if.end263

if.end263:                                        ; preds = %if.end250, %if.end230
  %166 = load i8, ptr %bHostOnly, align 1
  %conv264 = zext i8 %166 to i32
  %cmp265 = icmp eq i32 %conv264, 1
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.end263
  store i32 0, ptr %retval, align 4
  br label %return

if.end268:                                        ; preds = %if.end263
  br label %PathSplit

PathSplit:                                        ; preds = %if.end268, %if.then116
  %167 = load ptr, ptr %zCur, align 8
  store ptr %167, ptr %zUri.addr, align 8
  %168 = load ptr, ptr %pOut.addr, align 8
  %sPath = getelementptr inbounds nuw %struct.SyhttpUri, ptr %168, i32 0, i32 2
  store ptr %sPath, ptr %pComp, align 8
  %169 = load ptr, ptr %zUri.addr, align 8
  %170 = load ptr, ptr %pComp, align 8
  %zString269 = getelementptr inbounds nuw %struct.SyString, ptr %170, i32 0, i32 0
  store ptr %169, ptr %zString269, align 8
  %171 = load ptr, ptr %zEnd, align 8
  %172 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast270 = ptrtoint ptr %171 to i64
  %sub.ptr.rhs.cast271 = ptrtoint ptr %172 to i64
  %sub.ptr.sub272 = sub i64 %sub.ptr.lhs.cast270, %sub.ptr.rhs.cast271
  %conv273 = trunc i64 %sub.ptr.sub272 to i32
  %173 = load ptr, ptr %pComp, align 8
  %nByte274 = getelementptr inbounds nuw %struct.SyString, ptr %173, i32 0, i32 1
  store i32 %conv273, ptr %nByte274, align 8
  %174 = load ptr, ptr %pComp, align 8
  %nByte275 = getelementptr inbounds nuw %struct.SyString, ptr %174, i32 0, i32 1
  %175 = load i32, ptr %nByte275, align 8
  %cmp276 = icmp eq i32 %175, 0
  br i1 %cmp276, label %if.then278, label %if.end279

if.then278:                                       ; preds = %PathSplit
  store i32 0, ptr %retval, align 4
  br label %return

if.end279:                                        ; preds = %PathSplit
  %176 = load ptr, ptr %zUri.addr, align 8
  %177 = load ptr, ptr %zEnd, align 8
  %178 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast280 = ptrtoint ptr %177 to i64
  %sub.ptr.rhs.cast281 = ptrtoint ptr %178 to i64
  %sub.ptr.sub282 = sub i64 %sub.ptr.lhs.cast280, %sub.ptr.rhs.cast281
  %conv283 = trunc i64 %sub.ptr.sub282 to i32
  %call284 = call i32 @SyByteFind(ptr noundef %176, i32 noundef %conv283, i32 noundef 63, ptr noundef %nPos)
  %cmp285 = icmp eq i32 0, %call284
  br i1 %cmp285, label %if.then287, label %if.end301

if.then287:                                       ; preds = %if.end279
  %179 = load i32, ptr %nPos, align 4
  %180 = load ptr, ptr %pComp, align 8
  %nByte288 = getelementptr inbounds nuw %struct.SyString, ptr %180, i32 0, i32 1
  store i32 %179, ptr %nByte288, align 8
  %181 = load ptr, ptr %pOut.addr, align 8
  %sQuery = getelementptr inbounds nuw %struct.SyhttpUri, ptr %181, i32 0, i32 3
  store ptr %sQuery, ptr %pComp, align 8
  %182 = load ptr, ptr %zUri.addr, align 8
  %183 = load i32, ptr %nPos, align 4
  %add289 = add i32 %183, 1
  %idxprom290 = zext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds nuw i8, ptr %182, i64 %idxprom290
  %184 = load ptr, ptr %pComp, align 8
  %zString292 = getelementptr inbounds nuw %struct.SyString, ptr %184, i32 0, i32 0
  store ptr %arrayidx291, ptr %zString292, align 8
  %185 = load ptr, ptr %zEnd, align 8
  %186 = load ptr, ptr %zUri.addr, align 8
  %187 = load i32, ptr %nPos, align 4
  %add293 = add i32 %187, 1
  %idxprom294 = zext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds nuw i8, ptr %186, i64 %idxprom294
  %sub.ptr.lhs.cast296 = ptrtoint ptr %185 to i64
  %sub.ptr.rhs.cast297 = ptrtoint ptr %arrayidx295 to i64
  %sub.ptr.sub298 = sub i64 %sub.ptr.lhs.cast296, %sub.ptr.rhs.cast297
  %conv299 = trunc i64 %sub.ptr.sub298 to i32
  %188 = load ptr, ptr %pComp, align 8
  %nByte300 = getelementptr inbounds nuw %struct.SyString, ptr %188, i32 0, i32 1
  store i32 %conv299, ptr %nByte300, align 8
  br label %if.end301

if.end301:                                        ; preds = %if.then287, %if.end279
  %189 = load ptr, ptr %zUri.addr, align 8
  %190 = load ptr, ptr %zEnd, align 8
  %191 = load ptr, ptr %zUri.addr, align 8
  %sub.ptr.lhs.cast302 = ptrtoint ptr %190 to i64
  %sub.ptr.rhs.cast303 = ptrtoint ptr %191 to i64
  %sub.ptr.sub304 = sub i64 %sub.ptr.lhs.cast302, %sub.ptr.rhs.cast303
  %conv305 = trunc i64 %sub.ptr.sub304 to i32
  %call306 = call i32 @SyByteFind(ptr noundef %189, i32 noundef %conv305, i32 noundef 35, ptr noundef %nPos)
  %cmp307 = icmp eq i32 0, %call306
  br i1 %cmp307, label %if.then309, label %if.end344

if.then309:                                       ; preds = %if.end301
  %192 = load ptr, ptr %pComp, align 8
  %193 = load ptr, ptr %pOut.addr, align 8
  %sPath310 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %193, i32 0, i32 2
  %cmp311 = icmp eq ptr %192, %sPath310
  br i1 %cmp311, label %if.then313, label %if.else315

if.then313:                                       ; preds = %if.then309
  %194 = load i32, ptr %nPos, align 4
  %195 = load ptr, ptr %pComp, align 8
  %nByte314 = getelementptr inbounds nuw %struct.SyString, ptr %195, i32 0, i32 1
  store i32 %194, ptr %nByte314, align 8
  br label %if.end331

if.else315:                                       ; preds = %if.then309
  %196 = load ptr, ptr %zUri.addr, align 8
  %197 = load i32, ptr %nPos, align 4
  %idxprom316 = zext i32 %197 to i64
  %arrayidx317 = getelementptr inbounds nuw i8, ptr %196, i64 %idxprom316
  %198 = load ptr, ptr %pComp, align 8
  %zString318 = getelementptr inbounds nuw %struct.SyString, ptr %198, i32 0, i32 0
  %199 = load ptr, ptr %zString318, align 8
  %cmp319 = icmp ult ptr %arrayidx317, %199
  br i1 %cmp319, label %if.then321, label %if.end322

if.then321:                                       ; preds = %if.else315
  store i32 -12, ptr %retval, align 4
  br label %return

if.end322:                                        ; preds = %if.else315
  %200 = load ptr, ptr %zEnd, align 8
  %201 = load ptr, ptr %zUri.addr, align 8
  %202 = load i32, ptr %nPos, align 4
  %idxprom323 = zext i32 %202 to i64
  %arrayidx324 = getelementptr inbounds nuw i8, ptr %201, i64 %idxprom323
  %sub.ptr.lhs.cast325 = ptrtoint ptr %200 to i64
  %sub.ptr.rhs.cast326 = ptrtoint ptr %arrayidx324 to i64
  %sub.ptr.sub327 = sub i64 %sub.ptr.lhs.cast325, %sub.ptr.rhs.cast326
  %conv328 = trunc i64 %sub.ptr.sub327 to i32
  %203 = load ptr, ptr %pComp, align 8
  %nByte329 = getelementptr inbounds nuw %struct.SyString, ptr %203, i32 0, i32 1
  %204 = load i32, ptr %nByte329, align 8
  %sub330 = sub i32 %204, %conv328
  store i32 %sub330, ptr %nByte329, align 8
  br label %if.end331

if.end331:                                        ; preds = %if.end322, %if.then313
  %205 = load ptr, ptr %pOut.addr, align 8
  %sFragment = getelementptr inbounds nuw %struct.SyhttpUri, ptr %205, i32 0, i32 4
  store ptr %sFragment, ptr %pComp, align 8
  %206 = load ptr, ptr %zUri.addr, align 8
  %207 = load i32, ptr %nPos, align 4
  %add332 = add i32 %207, 1
  %idxprom333 = zext i32 %add332 to i64
  %arrayidx334 = getelementptr inbounds nuw i8, ptr %206, i64 %idxprom333
  %208 = load ptr, ptr %pComp, align 8
  %zString335 = getelementptr inbounds nuw %struct.SyString, ptr %208, i32 0, i32 0
  store ptr %arrayidx334, ptr %zString335, align 8
  %209 = load ptr, ptr %zEnd, align 8
  %210 = load ptr, ptr %zUri.addr, align 8
  %211 = load i32, ptr %nPos, align 4
  %add336 = add i32 %211, 1
  %idxprom337 = zext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds nuw i8, ptr %210, i64 %idxprom337
  %sub.ptr.lhs.cast339 = ptrtoint ptr %209 to i64
  %sub.ptr.rhs.cast340 = ptrtoint ptr %arrayidx338 to i64
  %sub.ptr.sub341 = sub i64 %sub.ptr.lhs.cast339, %sub.ptr.rhs.cast340
  %conv342 = trunc i64 %sub.ptr.sub341 to i32
  %212 = load ptr, ptr %pComp, align 8
  %nByte343 = getelementptr inbounds nuw %struct.SyString, ptr %212, i32 0, i32 1
  store i32 %conv342, ptr %nByte343, align 8
  br label %if.end344

if.end344:                                        ; preds = %if.end331, %if.end301
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end344, %if.then321, %if.then278, %if.then267, %if.then227
  %213 = load i32, ptr %retval, align 4
  ret i32 %213
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyByteFind(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
