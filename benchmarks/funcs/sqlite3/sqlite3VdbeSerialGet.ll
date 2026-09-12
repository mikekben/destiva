; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

@sqlite3VdbeSerialGet.aFlag = external hidden constant [2 x i16], align 2

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeSerialGet(ptr noundef %buf, i32 noundef %serial_type, ptr noundef %pMem) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %serial_type.addr = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %serial_type, ptr %serial_type.addr, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load i32, ptr %serial_type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb1
    i32 0, label %sw.bb1
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
    i32 3, label %sw.bb14
    i32 4, label %sw.bb27
    i32 5, label %sw.bb45
    i32 6, label %sw.bb74
    i32 7, label %sw.bb74
    i32 8, label %sw.bb75
    i32 9, label %sw.bb75
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 1
  store i16 16385, ptr %flags, align 8
  %2 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 4
  store i32 0, ptr %n, align 4
  %3 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 0
  store i32 0, ptr %u, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  %4 = load ptr, ptr %pMem.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  store i16 1, ptr %flags2, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i64
  %7 = load ptr, ptr %pMem.addr, align 8
  %u4 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 0
  store i64 %conv, ptr %u4, align 8
  %8 = load ptr, ptr %pMem.addr, align 8
  %flags5 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 1
  store i16 4, ptr %flags5, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  %9 = load ptr, ptr %buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %10 to i32
  %mul = mul nsw i32 256, %conv8
  %11 = load ptr, ptr %buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %or = or i32 %mul, %conv10
  %conv11 = sext i32 %or to i64
  %13 = load ptr, ptr %pMem.addr, align 8
  %u12 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %13, i32 0, i32 0
  store i64 %conv11, ptr %u12, align 8
  %14 = load ptr, ptr %pMem.addr, align 8
  %flags13 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %14, i32 0, i32 1
  store i16 4, ptr %flags13, align 8
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %entry
  %15 = load ptr, ptr %buf.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %16 to i32
  %mul17 = mul nsw i32 65536, %conv16
  %17 = load ptr, ptr %buf.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  %shl = shl i32 %conv19, 8
  %or20 = or i32 %mul17, %shl
  %19 = load ptr, ptr %buf.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %20 to i32
  %or23 = or i32 %or20, %conv22
  %conv24 = sext i32 %or23 to i64
  %21 = load ptr, ptr %pMem.addr, align 8
  %u25 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %21, i32 0, i32 0
  store i64 %conv24, ptr %u25, align 8
  %22 = load ptr, ptr %pMem.addr, align 8
  %flags26 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %22, i32 0, i32 1
  store i16 4, ptr %flags26, align 8
  store i32 3, ptr %retval, align 4
  br label %return

sw.bb27:                                          ; preds = %entry
  %23 = load ptr, ptr %buf.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx28, align 1
  %conv29 = sext i8 %24 to i32
  %mul30 = mul nsw i32 16777216, %conv29
  %25 = load ptr, ptr %buf.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %25, i64 1
  %26 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %26 to i32
  %shl33 = shl i32 %conv32, 16
  %or34 = or i32 %mul30, %shl33
  %27 = load ptr, ptr %buf.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %27, i64 2
  %28 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %28 to i32
  %shl37 = shl i32 %conv36, 8
  %or38 = or i32 %or34, %shl37
  %29 = load ptr, ptr %buf.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %29, i64 3
  %30 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %30 to i32
  %or41 = or i32 %or38, %conv40
  %conv42 = sext i32 %or41 to i64
  %31 = load ptr, ptr %pMem.addr, align 8
  %u43 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %31, i32 0, i32 0
  store i64 %conv42, ptr %u43, align 8
  %32 = load ptr, ptr %pMem.addr, align 8
  %flags44 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %32, i32 0, i32 1
  store i16 4, ptr %flags44, align 8
  store i32 4, ptr %retval, align 4
  br label %return

sw.bb45:                                          ; preds = %entry
  %33 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 2
  %arrayidx46 = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %34 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %34 to i32
  %shl48 = shl i32 %conv47, 24
  %35 = load ptr, ptr %buf.addr, align 8
  %add.ptr49 = getelementptr inbounds i8, ptr %35, i64 2
  %arrayidx50 = getelementptr inbounds i8, ptr %add.ptr49, i64 1
  %36 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %36 to i32
  %shl52 = shl i32 %conv51, 16
  %or53 = or i32 %shl48, %shl52
  %37 = load ptr, ptr %buf.addr, align 8
  %add.ptr54 = getelementptr inbounds i8, ptr %37, i64 2
  %arrayidx55 = getelementptr inbounds i8, ptr %add.ptr54, i64 2
  %38 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %38 to i32
  %shl57 = shl i32 %conv56, 8
  %or58 = or i32 %or53, %shl57
  %39 = load ptr, ptr %buf.addr, align 8
  %add.ptr59 = getelementptr inbounds i8, ptr %39, i64 2
  %arrayidx60 = getelementptr inbounds i8, ptr %add.ptr59, i64 3
  %40 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %40 to i32
  %or62 = or i32 %or58, %conv61
  %conv63 = zext i32 %or62 to i64
  %41 = load ptr, ptr %buf.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx64, align 1
  %conv65 = sext i8 %42 to i32
  %mul66 = mul nsw i32 256, %conv65
  %43 = load ptr, ptr %buf.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %43, i64 1
  %44 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %44 to i32
  %or69 = or i32 %mul66, %conv68
  %conv70 = sext i32 %or69 to i64
  %mul71 = mul nsw i64 4294967296, %conv70
  %add = add nsw i64 %conv63, %mul71
  %45 = load ptr, ptr %pMem.addr, align 8
  %u72 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %45, i32 0, i32 0
  store i64 %add, ptr %u72, align 8
  %46 = load ptr, ptr %pMem.addr, align 8
  %flags73 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %46, i32 0, i32 1
  store i16 4, ptr %flags73, align 8
  store i32 6, ptr %retval, align 4
  br label %return

sw.bb74:                                          ; preds = %entry, %entry
  %47 = load ptr, ptr %buf.addr, align 8
  %48 = load i32, ptr %serial_type.addr, align 4
  %49 = load ptr, ptr %pMem.addr, align 8
  %call = call i32 @serialGet(ptr noundef %47, i32 noundef %48, ptr noundef %49)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.bb75:                                          ; preds = %entry, %entry
  %50 = load i32, ptr %serial_type.addr, align 4
  %sub = sub i32 %50, 8
  %conv76 = zext i32 %sub to i64
  %51 = load ptr, ptr %pMem.addr, align 8
  %u77 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %51, i32 0, i32 0
  store i64 %conv76, ptr %u77, align 8
  %52 = load ptr, ptr %pMem.addr, align 8
  %flags78 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %52, i32 0, i32 1
  store i16 4, ptr %flags78, align 8
  store i32 0, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %53 = load ptr, ptr %buf.addr, align 8
  %54 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %54, i32 0, i32 5
  store ptr %53, ptr %z, align 8
  %55 = load i32, ptr %serial_type.addr, align 4
  %sub79 = sub i32 %55, 12
  %div = udiv i32 %sub79, 2
  %56 = load ptr, ptr %pMem.addr, align 8
  %n80 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %56, i32 0, i32 4
  store i32 %div, ptr %n80, align 4
  %57 = load i32, ptr %serial_type.addr, align 4
  %and = and i32 %57, 1
  %idxprom = zext i32 %and to i64
  %arrayidx81 = getelementptr inbounds nuw [2 x i16], ptr @sqlite3VdbeSerialGet.aFlag, i64 0, i64 %idxprom
  %58 = load i16, ptr %arrayidx81, align 2
  %59 = load ptr, ptr %pMem.addr, align 8
  %flags82 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %59, i32 0, i32 1
  store i16 %58, ptr %flags82, align 8
  %60 = load ptr, ptr %pMem.addr, align 8
  %n83 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %60, i32 0, i32 4
  %61 = load i32, ptr %n83, align 4
  store i32 %61, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb75, %sw.bb74, %sw.bb45, %sw.bb27, %sw.bb14, %sw.bb6, %sw.bb3
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
declare hidden i32 @serialGet(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
