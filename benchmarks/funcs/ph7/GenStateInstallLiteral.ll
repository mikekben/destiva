; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateInstallLiteral(ptr noundef %pGen, ptr noundef %pObj, i32 noundef %nIdx) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %pObj.addr = alloca ptr, align 8
  %nIdx.addr = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  store i32 %nIdx, ptr %nIdx.addr, align 4
  %0 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %1 = load i32, ptr %nByte, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pGen.addr, align 8
  %hLiteral = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pObj.addr, align 8
  %sBlob1 = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1, i32 0, i32 1
  %4 = load ptr, ptr %pBlob, align 8
  %5 = load ptr, ptr %pObj.addr, align 8
  %sBlob2 = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 4
  %nByte3 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2, i32 0, i32 2
  %6 = load i32, ptr %nByte3, align 8
  %7 = load i32, ptr %nIdx.addr, align 4
  %conv = zext i32 %7 to i64
  %8 = inttoptr i64 %conv to ptr
  %call = call i32 @SyHashInsert(ptr noundef %hLiteral, ptr noundef %4, i32 noundef %6, ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
