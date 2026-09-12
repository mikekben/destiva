; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i64 @vdbeRecordDecodeInt(i32 noundef %serial_type, ptr noundef %aKey) #0 {
entry:
  %retval = alloca i64, align 8
  %serial_type.addr = alloca i32, align 4
  %aKey.addr = alloca ptr, align 8
  %y = alloca i32, align 4
  %x = alloca i64, align 8
  store i32 %serial_type, ptr %serial_type.addr, align 4
  store ptr %aKey, ptr %aKey.addr, align 8
  %0 = load i32, ptr %serial_type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb7
    i32 4, label %sw.bb18
    i32 5, label %sw.bb34
    i32 6, label %sw.bb61
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load ptr, ptr %aKey.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %aKey.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %mul = mul nsw i32 256, %conv3
  %5 = load ptr, ptr %aKey.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %or = or i32 %mul, %conv5
  %conv6 = sext i32 %or to i64
  store i64 %conv6, ptr %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  %7 = load ptr, ptr %aKey.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %mul10 = mul nsw i32 65536, %conv9
  %9 = load ptr, ptr %aKey.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %shl = shl i32 %conv12, 8
  %or13 = or i32 %mul10, %shl
  %11 = load ptr, ptr %aKey.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %11, i64 2
  %12 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %or16 = or i32 %or13, %conv15
  %conv17 = sext i32 %or16 to i64
  store i64 %conv17, ptr %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %entry
  %13 = load ptr, ptr %aKey.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %14 to i32
  %shl21 = shl i32 %conv20, 24
  %15 = load ptr, ptr %aKey.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %shl24 = shl i32 %conv23, 16
  %or25 = or i32 %shl21, %shl24
  %17 = load ptr, ptr %aKey.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %17, i64 2
  %18 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %18 to i32
  %shl28 = shl i32 %conv27, 8
  %or29 = or i32 %or25, %shl28
  %19 = load ptr, ptr %aKey.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %19, i64 3
  %20 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %20 to i32
  %or32 = or i32 %or29, %conv31
  store i32 %or32, ptr %y, align 4
  %21 = load i32, ptr %y, align 4
  %conv33 = sext i32 %21 to i64
  store i64 %conv33, ptr %retval, align 8
  br label %return

sw.bb34:                                          ; preds = %entry
  %22 = load ptr, ptr %aKey.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 2
  %arrayidx35 = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %23 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %23 to i32
  %shl37 = shl i32 %conv36, 24
  %24 = load ptr, ptr %aKey.addr, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %24, i64 2
  %arrayidx39 = getelementptr inbounds i8, ptr %add.ptr38, i64 1
  %25 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %25 to i32
  %shl41 = shl i32 %conv40, 16
  %or42 = or i32 %shl37, %shl41
  %26 = load ptr, ptr %aKey.addr, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %26, i64 2
  %arrayidx44 = getelementptr inbounds i8, ptr %add.ptr43, i64 2
  %27 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %27 to i32
  %shl46 = shl i32 %conv45, 8
  %or47 = or i32 %or42, %shl46
  %28 = load ptr, ptr %aKey.addr, align 8
  %add.ptr48 = getelementptr inbounds i8, ptr %28, i64 2
  %arrayidx49 = getelementptr inbounds i8, ptr %add.ptr48, i64 3
  %29 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %29 to i32
  %or51 = or i32 %or47, %conv50
  %conv52 = zext i32 %or51 to i64
  %30 = load ptr, ptr %aKey.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx53, align 1
  %conv54 = sext i8 %31 to i32
  %mul55 = mul nsw i32 256, %conv54
  %32 = load ptr, ptr %aKey.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %33 to i32
  %or58 = or i32 %mul55, %conv57
  %conv59 = sext i32 %or58 to i64
  %mul60 = mul nsw i64 4294967296, %conv59
  %add = add nsw i64 %conv52, %mul60
  store i64 %add, ptr %retval, align 8
  br label %return

sw.bb61:                                          ; preds = %entry
  %34 = load ptr, ptr %aKey.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %35 to i32
  %shl64 = shl i32 %conv63, 24
  %36 = load ptr, ptr %aKey.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %36, i64 1
  %37 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %37 to i32
  %shl67 = shl i32 %conv66, 16
  %or68 = or i32 %shl64, %shl67
  %38 = load ptr, ptr %aKey.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %38, i64 2
  %39 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %39 to i32
  %shl71 = shl i32 %conv70, 8
  %or72 = or i32 %or68, %shl71
  %40 = load ptr, ptr %aKey.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %40, i64 3
  %41 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %41 to i32
  %or75 = or i32 %or72, %conv74
  %conv76 = zext i32 %or75 to i64
  store i64 %conv76, ptr %x, align 8
  %42 = load i64, ptr %x, align 8
  %shl77 = shl i64 %42, 32
  %43 = load ptr, ptr %aKey.addr, align 8
  %add.ptr78 = getelementptr inbounds i8, ptr %43, i64 4
  %arrayidx79 = getelementptr inbounds i8, ptr %add.ptr78, i64 0
  %44 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %44 to i32
  %shl81 = shl i32 %conv80, 24
  %45 = load ptr, ptr %aKey.addr, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %45, i64 4
  %arrayidx83 = getelementptr inbounds i8, ptr %add.ptr82, i64 1
  %46 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %46 to i32
  %shl85 = shl i32 %conv84, 16
  %or86 = or i32 %shl81, %shl85
  %47 = load ptr, ptr %aKey.addr, align 8
  %add.ptr87 = getelementptr inbounds i8, ptr %47, i64 4
  %arrayidx88 = getelementptr inbounds i8, ptr %add.ptr87, i64 2
  %48 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %48 to i32
  %shl90 = shl i32 %conv89, 8
  %or91 = or i32 %or86, %shl90
  %49 = load ptr, ptr %aKey.addr, align 8
  %add.ptr92 = getelementptr inbounds i8, ptr %49, i64 4
  %arrayidx93 = getelementptr inbounds i8, ptr %add.ptr92, i64 3
  %50 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %50 to i32
  %or95 = or i32 %or91, %conv94
  %conv96 = zext i32 %or95 to i64
  %or97 = or i64 %shl77, %conv96
  store i64 %or97, ptr %x, align 8
  %51 = load i64, ptr %x, align 8
  store i64 %51, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  %52 = load i32, ptr %serial_type.addr, align 4
  %sub = sub i32 %52, 8
  %conv98 = zext i32 %sub to i64
  store i64 %conv98, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb61, %sw.bb34, %sw.bb18, %sw.bb7, %sw.bb1, %sw.bb
  %53 = load i64, ptr %retval, align 8
  ret i64 %53
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
