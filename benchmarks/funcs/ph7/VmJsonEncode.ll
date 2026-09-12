; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_private_data = type { ptr, i32, i32, i32 }

@.str.203 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.204 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.205 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.234 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.242 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.518 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.611 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.612 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.613 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.614 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.615 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.616 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToReal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_walk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_object_walk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_numeric(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_object(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmJsonEncode(ptr noundef %pIn, ptr noundef %pData) #0 {
entry:
  %pIn.addr = alloca ptr, align 8
  %pData.addr = alloca ptr, align 8
  %pCtx = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %nByte = alloca i32, align 4
  %iBool = alloca i32, align 4
  %iLen = alloca i32, align 4
  %zNum = alloca ptr, align 8
  %zNum31 = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %c = alloca i32, align 4
  %c103 = alloca i32, align 4
  %d = alloca i32, align 4
  store ptr %pIn, ptr %pIn.addr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  %0 = load ptr, ptr %pData.addr, align 8
  %pCtx1 = getelementptr inbounds nuw %struct.json_private_data, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pCtx1, align 8
  store ptr %1, ptr %pCtx, align 8
  %2 = load ptr, ptr %pData.addr, align 8
  %iFlags2 = getelementptr inbounds nuw %struct.json_private_data, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags2, align 4
  store i32 %3, ptr %iFlags, align 4
  %4 = load ptr, ptr %pIn.addr, align 8
  %call = call i32 @ph7_value_is_null(ptr noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %pIn.addr, align 8
  %call3 = call i32 @ph7_value_is_resource(ptr noundef %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %pCtx, align 8
  %call5 = call i32 @ph7_result_string(ptr noundef %6, ptr noundef @.str.203, i32 noundef 4)
  br label %if.end126

if.else:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %pIn.addr, align 8
  %call6 = call i32 @ph7_value_is_bool(ptr noundef %7)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else14

if.then8:                                         ; preds = %if.else
  %8 = load ptr, ptr %pIn.addr, align 8
  %call9 = call i32 @ph7_value_to_bool(ptr noundef %8)
  store i32 %call9, ptr %iBool, align 4
  %9 = load i32, ptr %iBool, align 4
  %tobool10 = icmp ne i32 %9, 0
  %10 = zext i1 %tobool10 to i64
  %cond = select i1 %tobool10, i32 5, i32 6
  store i32 %cond, ptr %iLen, align 4
  %11 = load ptr, ptr %pCtx, align 8
  %12 = load i32, ptr %iBool, align 4
  %tobool11 = icmp ne i32 %12, 0
  %13 = zext i1 %tobool11 to i64
  %cond12 = select i1 %tobool11, ptr @.str.204, ptr @.str.205
  %14 = load i32, ptr %iLen, align 4
  %sub = sub nsw i32 %14, 1
  %call13 = call i32 @ph7_result_string(ptr noundef %11, ptr noundef %cond12, i32 noundef %sub)
  br label %if.end125

if.else14:                                        ; preds = %if.else
  %15 = load ptr, ptr %pIn.addr, align 8
  %call15 = call i32 @ph7_value_is_numeric(ptr noundef %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else22

land.lhs.true:                                    ; preds = %if.else14
  %16 = load ptr, ptr %pIn.addr, align 8
  %call17 = call i32 @ph7_value_is_string(ptr noundef %16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else22, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %pIn.addr, align 8
  %call20 = call ptr @ph7_value_to_string(ptr noundef %17, ptr noundef %nByte)
  store ptr %call20, ptr %zNum, align 8
  %18 = load ptr, ptr %pCtx, align 8
  %19 = load ptr, ptr %zNum, align 8
  %20 = load i32, ptr %nByte, align 4
  %call21 = call i32 @ph7_result_string(ptr noundef %18, ptr noundef %19, i32 noundef %20)
  br label %if.end124

if.else22:                                        ; preds = %land.lhs.true, %if.else14
  %21 = load ptr, ptr %pIn.addr, align 8
  %call23 = call i32 @ph7_value_is_string(ptr noundef %21)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.else99

if.then25:                                        ; preds = %if.else22
  %22 = load i32, ptr %iFlags, align 4
  %and = and i32 %22, 32
  %tobool26 = icmp ne i32 %and, 0
  br i1 %tobool26, label %land.lhs.true27, label %if.else35

land.lhs.true27:                                  ; preds = %if.then25
  %23 = load ptr, ptr %pIn.addr, align 8
  %call28 = call i32 @ph7_value_is_numeric(ptr noundef %23)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %land.lhs.true27
  %24 = load ptr, ptr %pIn.addr, align 8
  %call32 = call i32 @PH7_MemObjToReal(ptr noundef %24)
  %25 = load ptr, ptr %pIn.addr, align 8
  %call33 = call ptr @ph7_value_to_string(ptr noundef %25, ptr noundef %nByte)
  store ptr %call33, ptr %zNum31, align 8
  %26 = load ptr, ptr %pCtx, align 8
  %27 = load ptr, ptr %zNum31, align 8
  %28 = load i32, ptr %nByte, align 4
  %call34 = call i32 @ph7_result_string(ptr noundef %26, ptr noundef %27, i32 noundef %28)
  br label %if.end98

if.else35:                                        ; preds = %land.lhs.true27, %if.then25
  %29 = load ptr, ptr %pIn.addr, align 8
  %call36 = call ptr @ph7_value_to_string(ptr noundef %29, ptr noundef %nByte)
  store ptr %call36, ptr %zIn, align 8
  %30 = load ptr, ptr %zIn, align 8
  %31 = load i32, ptr %nByte, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds i8, ptr %30, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %32 = load ptr, ptr %pCtx, align 8
  %call37 = call i32 @ph7_result_string(ptr noundef %32, ptr noundef @.str.242, i32 noundef 1)
  br label %for.cond

for.cond:                                         ; preds = %if.end95, %if.then78, %if.then70, %if.then62, %if.end55, %if.else35
  %33 = load ptr, ptr %zIn, align 8
  %34 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %33, %34
  br i1 %cmp, label %if.then38, label %if.end

if.then38:                                        ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %35 = load ptr, ptr %zIn, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %35, i64 0
  %36 = load i8, ptr %arrayidx39, align 1
  %conv = sext i8 %36 to i32
  store i32 %conv, ptr %c, align 4
  %37 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %38 = load i32, ptr %c, align 4
  %cmp40 = icmp eq i32 %38, 60
  br i1 %cmp40, label %land.lhs.true45, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end
  %39 = load i32, ptr %c, align 4
  %cmp43 = icmp eq i32 %39, 62
  br i1 %cmp43, label %land.lhs.true45, label %if.else56

land.lhs.true45:                                  ; preds = %lor.lhs.false42, %if.end
  %40 = load i32, ptr %iFlags, align 4
  %and46 = and i32 %40, 1
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.else56

if.then48:                                        ; preds = %land.lhs.true45
  %41 = load i32, ptr %c, align 4
  %cmp49 = icmp eq i32 %41, 60
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.then48
  %42 = load ptr, ptr %pCtx, align 8
  %call52 = call i32 @ph7_result_string(ptr noundef %42, ptr noundef @.str.611, i32 noundef 6)
  br label %if.end55

if.else53:                                        ; preds = %if.then48
  %43 = load ptr, ptr %pCtx, align 8
  %call54 = call i32 @ph7_result_string(ptr noundef %43, ptr noundef @.str.612, i32 noundef 6)
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then51
  br label %for.cond

if.else56:                                        ; preds = %land.lhs.true45, %lor.lhs.false42
  %44 = load i32, ptr %c, align 4
  %cmp57 = icmp eq i32 %44, 38
  br i1 %cmp57, label %land.lhs.true59, label %if.else64

land.lhs.true59:                                  ; preds = %if.else56
  %45 = load i32, ptr %iFlags, align 4
  %and60 = and i32 %45, 2
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.else64

if.then62:                                        ; preds = %land.lhs.true59
  %46 = load ptr, ptr %pCtx, align 8
  %call63 = call i32 @ph7_result_string(ptr noundef %46, ptr noundef @.str.613, i32 noundef 6)
  br label %for.cond

if.else64:                                        ; preds = %land.lhs.true59, %if.else56
  %47 = load i32, ptr %c, align 4
  %cmp65 = icmp eq i32 %47, 39
  br i1 %cmp65, label %land.lhs.true67, label %if.else72

land.lhs.true67:                                  ; preds = %if.else64
  %48 = load i32, ptr %iFlags, align 4
  %and68 = and i32 %48, 4
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then70, label %if.else72

if.then70:                                        ; preds = %land.lhs.true67
  %49 = load ptr, ptr %pCtx, align 8
  %call71 = call i32 @ph7_result_string(ptr noundef %49, ptr noundef @.str.614, i32 noundef 6)
  br label %for.cond

if.else72:                                        ; preds = %land.lhs.true67, %if.else64
  %50 = load i32, ptr %c, align 4
  %cmp73 = icmp eq i32 %50, 34
  br i1 %cmp73, label %land.lhs.true75, label %if.end80

land.lhs.true75:                                  ; preds = %if.else72
  %51 = load i32, ptr %iFlags, align 4
  %and76 = and i32 %51, 8
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %land.lhs.true75
  %52 = load ptr, ptr %pCtx, align 8
  %call79 = call i32 @ph7_result_string(ptr noundef %52, ptr noundef @.str.615, i32 noundef 6)
  br label %for.cond

if.end80:                                         ; preds = %land.lhs.true75, %if.else72
  br label %if.end81

if.end81:                                         ; preds = %if.end80
  br label %if.end82

if.end82:                                         ; preds = %if.end81
  br label %if.end83

if.end83:                                         ; preds = %if.end82
  %53 = load i32, ptr %c, align 4
  %cmp84 = icmp eq i32 %53, 34
  br i1 %cmp84, label %if.then93, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.end83
  %54 = load i32, ptr %c, align 4
  %cmp87 = icmp eq i32 %54, 92
  br i1 %cmp87, label %land.lhs.true89, label %if.end95

land.lhs.true89:                                  ; preds = %lor.lhs.false86
  %55 = load i32, ptr %iFlags, align 4
  %and90 = and i32 %55, 256
  %cmp91 = icmp eq i32 %and90, 0
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %land.lhs.true89, %if.end83
  %56 = load ptr, ptr %pCtx, align 8
  %call94 = call i32 @ph7_result_string(ptr noundef %56, ptr noundef @.str.234, i32 noundef 1)
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %land.lhs.true89, %lor.lhs.false86
  %57 = load ptr, ptr %pCtx, align 8
  %call96 = call i32 @ph7_result_string(ptr noundef %57, ptr noundef %c, i32 noundef 1)
  br label %for.cond

for.end:                                          ; preds = %if.then38
  %58 = load ptr, ptr %pCtx, align 8
  %call97 = call i32 @ph7_result_string(ptr noundef %58, ptr noundef @.str.242, i32 noundef 1)
  br label %if.end98

if.end98:                                         ; preds = %for.end, %if.then30
  br label %if.end123

if.else99:                                        ; preds = %if.else22
  %59 = load ptr, ptr %pIn.addr, align 8
  %call100 = call i32 @ph7_value_is_array(ptr noundef %59)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.else111

if.then102:                                       ; preds = %if.else99
  store i32 91, ptr %c103, align 4
  store i32 93, ptr %d, align 4
  %60 = load ptr, ptr %pData.addr, align 8
  %isFirst = getelementptr inbounds nuw %struct.json_private_data, ptr %60, i32 0, i32 1
  store i32 1, ptr %isFirst, align 8
  %61 = load i32, ptr %iFlags, align 4
  %and104 = and i32 %61, 16
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.then102
  store i32 123, ptr %c103, align 4
  store i32 125, ptr %d, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.then102
  %62 = load ptr, ptr %pCtx, align 8
  %call108 = call i32 @ph7_result_string(ptr noundef %62, ptr noundef %c103, i32 noundef 1)
  %63 = load ptr, ptr %pIn.addr, align 8
  %64 = load ptr, ptr %pData.addr, align 8
  %call109 = call i32 @ph7_array_walk(ptr noundef %63, ptr noundef @VmJsonArrayEncode, ptr noundef %64)
  %65 = load ptr, ptr %pCtx, align 8
  %call110 = call i32 @ph7_result_string(ptr noundef %65, ptr noundef %d, i32 noundef 1)
  br label %if.end122

if.else111:                                       ; preds = %if.else99
  %66 = load ptr, ptr %pIn.addr, align 8
  %call112 = call i32 @ph7_value_is_object(ptr noundef %66)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then114, label %if.else119

if.then114:                                       ; preds = %if.else111
  %67 = load ptr, ptr %pData.addr, align 8
  %isFirst115 = getelementptr inbounds nuw %struct.json_private_data, ptr %67, i32 0, i32 1
  store i32 1, ptr %isFirst115, align 8
  %68 = load ptr, ptr %pCtx, align 8
  %call116 = call i32 @ph7_result_string(ptr noundef %68, ptr noundef @.str.616, i32 noundef 1)
  %69 = load ptr, ptr %pIn.addr, align 8
  %70 = load ptr, ptr %pData.addr, align 8
  %call117 = call i32 @ph7_object_walk(ptr noundef %69, ptr noundef @VmJsonObjectEncode, ptr noundef %70)
  %71 = load ptr, ptr %pCtx, align 8
  %call118 = call i32 @ph7_result_string(ptr noundef %71, ptr noundef @.str.518, i32 noundef 1)
  br label %if.end121

if.else119:                                       ; preds = %if.else111
  %72 = load ptr, ptr %pCtx, align 8
  %call120 = call i32 @ph7_result_string(ptr noundef %72, ptr noundef @.str.203, i32 noundef 4)
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.then114
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end107
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end98
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then19
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.then8
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmJsonArrayEncode(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmJsonObjectEncode(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
