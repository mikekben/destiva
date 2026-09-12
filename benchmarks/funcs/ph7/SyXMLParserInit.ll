; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLexInit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyXMLParserInit(ptr noundef %pParser, ptr noundef %pAllocator, i32 noundef %iFlags) #0 {
entry:
  %pParser.addr = alloca ptr, align 8
  %pAllocator.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  store ptr %pParser, ptr %pParser.addr, align 8
  store ptr %pAllocator, ptr %pAllocator.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  %0 = load ptr, ptr %pParser.addr, align 8
  call void @SyZero(ptr noundef %0, i32 noundef 272)
  %1 = load ptr, ptr %pParser.addr, align 8
  %sToken = getelementptr inbounds nuw %struct.SyXMLParser, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pAllocator.addr, align 8
  %call = call i32 @SySetInit(ptr noundef %sToken, ptr noundef %2, i32 noundef 32)
  %3 = load ptr, ptr %pParser.addr, align 8
  %sLex = getelementptr inbounds nuw %struct.SyXMLParser, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pParser.addr, align 8
  %sToken1 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pParser.addr, align 8
  %call2 = call i32 @SyLexInit(ptr noundef %sLex, ptr noundef %sToken1, ptr noundef @XML_Tokenize, ptr noundef %5)
  %6 = load ptr, ptr %pParser.addr, align 8
  %hns = getelementptr inbounds nuw %struct.SyXMLParser, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pAllocator.addr, align 8
  %call3 = call i32 @SyHashInit(ptr noundef %hns, ptr noundef %7, ptr noundef null, ptr noundef null)
  %8 = load ptr, ptr %pAllocator.addr, align 8
  %9 = load ptr, ptr %pParser.addr, align 8
  %pAllocator4 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %9, i32 0, i32 0
  store ptr %8, ptr %pAllocator4, align 8
  %10 = load i32, ptr %iFlags.addr, align 4
  %11 = load ptr, ptr %pParser.addr, align 8
  %nFlags = getelementptr inbounds nuw %struct.SyXMLParser, ptr %11, i32 0, i32 5
  store i32 %10, ptr %nFlags, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @XML_Tokenize(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
