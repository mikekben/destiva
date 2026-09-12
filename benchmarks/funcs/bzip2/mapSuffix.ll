; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @hasSuffix(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @mapSuffix(ptr noundef %name, ptr noundef %oldSuffix, ptr noundef %newSuffix) #2 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca ptr, align 8
  %oldSuffix.addr = alloca ptr, align 8
  %newSuffix.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %oldSuffix, ptr %oldSuffix.addr, align 8
  store ptr %newSuffix, ptr %newSuffix.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %1 = load ptr, ptr %oldSuffix.addr, align 8
  %call = call zeroext i8 @hasSuffix(ptr noundef %0, ptr noundef %1)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %3) #3
  %4 = load ptr, ptr %oldSuffix.addr, align 8
  %call2 = call i64 @strlen(ptr noundef %4) #3
  %sub = sub i64 %call1, %call2
  %arrayidx = getelementptr inbounds nuw i8, ptr %2, i64 %sub
  store i8 0, ptr %arrayidx, align 1
  %5 = load ptr, ptr %name.addr, align 8
  %6 = load ptr, ptr %newSuffix.addr, align 8
  %call3 = call ptr @strcat(ptr noundef %5, ptr noundef %6) #4
  store i8 1, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8, ptr %retval, align 1
  ret i8 %7
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
