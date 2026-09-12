; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeEncoding(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemStringify(ptr noundef %pMem, i8 noundef zeroext %enc, i8 noundef zeroext %bForce) #1 {
entry:
  %retval = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  %bForce.addr = alloca i8, align 1
  %nByte = alloca i32, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  store i8 %bForce, ptr %bForce.addr, align 1
  store i32 32, ptr %nByte, align 4
  %0 = load ptr, ptr %pMem.addr, align 8
  %call = call i32 @sqlite3VdbeMemClearAndResize(ptr noundef %0, i32 noundef 32)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pMem.addr, align 8
  %enc1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 2
  store i8 0, ptr %enc1, align 2
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %z, align 8
  %4 = load ptr, ptr %pMem.addr, align 8
  call void @vdbeMemRenderNum(i32 noundef 32, ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr %pMem.addr, align 8
  %z2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %z2, align 8
  %call3 = call i64 @strlen(ptr noundef %6) #2
  %and = and i64 %call3, 1073741823
  %conv = trunc i64 %and to i32
  %7 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 4
  store i32 %conv, ptr %n, align 4
  %8 = load ptr, ptr %pMem.addr, align 8
  %enc4 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 2
  store i8 1, ptr %enc4, align 2
  %9 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 1
  %10 = load i16, ptr %flags, align 8
  %conv5 = zext i16 %10 to i32
  %or = or i32 %conv5, 514
  %conv6 = trunc i32 %or to i16
  store i16 %conv6, ptr %flags, align 8
  %11 = load i8, ptr %bForce.addr, align 1
  %tobool7 = icmp ne i8 %11, 0
  br i1 %tobool7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %pMem.addr, align 8
  %flags9 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %12, i32 0, i32 1
  %13 = load i16, ptr %flags9, align 8
  %conv10 = zext i16 %13 to i32
  %and11 = and i32 %conv10, -45
  %conv12 = trunc i32 %and11 to i16
  store i16 %conv12, ptr %flags9, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end
  %14 = load ptr, ptr %pMem.addr, align 8
  %15 = load i8, ptr %enc.addr, align 1
  %conv14 = zext i8 %15 to i32
  %call15 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %14, i32 noundef %conv14)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemClearAndResize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @vdbeMemRenderNum(i32 noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
