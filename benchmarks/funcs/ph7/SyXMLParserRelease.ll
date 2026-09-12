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
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLexRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyXMLParserRelease(ptr noundef %pParser) #0 {
entry:
  %pParser.addr = alloca ptr, align 8
  store ptr %pParser, ptr %pParser.addr, align 8
  %0 = load ptr, ptr %pParser.addr, align 8
  %sLex = getelementptr inbounds nuw %struct.SyXMLParser, ptr %0, i32 0, i32 4
  %call = call i32 @SyLexRelease(ptr noundef %sLex)
  %1 = load ptr, ptr %pParser.addr, align 8
  %sToken = getelementptr inbounds nuw %struct.SyXMLParser, ptr %1, i32 0, i32 3
  %call1 = call i32 @SySetRelease(ptr noundef %sToken)
  %2 = load ptr, ptr %pParser.addr, align 8
  %hns = getelementptr inbounds nuw %struct.SyXMLParser, ptr %2, i32 0, i32 2
  %call2 = call i32 @SyHashRelease(ptr noundef %hns)
  ret i32 0
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
