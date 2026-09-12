; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DbMallocSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemSetNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemGrow(ptr noundef %pMem, i32 noundef %n, i32 noundef %bPreserve) #0 {
entry:
  %retval = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %bPreserve.addr = alloca i32, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %bPreserve, ptr %bPreserve.addr, align 4
  %0 = load ptr, ptr %pMem.addr, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %szMalloc, align 8
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %bPreserve.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true1, label %if.else21

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %z, align 8
  %5 = load ptr, ptr %pMem.addr, align 8
  %zMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %zMalloc, align 8
  %cmp2 = icmp eq ptr %4, %6
  br i1 %cmp2, label %if.then, label %if.else21

if.then:                                          ; preds = %land.lhs.true1
  %7 = load ptr, ptr %pMem.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %db, align 8
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr %pMem.addr, align 8
  %db5 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %db5, align 8
  %11 = load ptr, ptr %pMem.addr, align 8
  %z6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %z6, align 8
  %13 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %13 to i64
  %call = call ptr @sqlite3DbReallocOrFree(ptr noundef %10, ptr noundef %12, i64 noundef %conv)
  %14 = load ptr, ptr %pMem.addr, align 8
  %zMalloc7 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %14, i32 0, i32 6
  store ptr %call, ptr %zMalloc7, align 8
  %15 = load ptr, ptr %pMem.addr, align 8
  %z8 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %15, i32 0, i32 5
  store ptr %call, ptr %z8, align 8
  br label %if.end20

if.else:                                          ; preds = %if.then
  %16 = load ptr, ptr %pMem.addr, align 8
  %z9 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %z9, align 8
  %18 = load i32, ptr %n.addr, align 4
  %conv10 = sext i32 %18 to i64
  %call11 = call ptr @sqlite3Realloc(ptr noundef %17, i64 noundef %conv10)
  %19 = load ptr, ptr %pMem.addr, align 8
  %zMalloc12 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %19, i32 0, i32 6
  store ptr %call11, ptr %zMalloc12, align 8
  %20 = load ptr, ptr %pMem.addr, align 8
  %zMalloc13 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %zMalloc13, align 8
  %cmp14 = icmp eq ptr %21, null
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.else
  %22 = load ptr, ptr %pMem.addr, align 8
  %z17 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %z17, align 8
  call void @sqlite3_free(ptr noundef %23)
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.else
  %24 = load ptr, ptr %pMem.addr, align 8
  %zMalloc18 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %zMalloc18, align 8
  %26 = load ptr, ptr %pMem.addr, align 8
  %z19 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %26, i32 0, i32 5
  store ptr %25, ptr %z19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then4
  store i32 0, ptr %bPreserve.addr, align 4
  br label %if.end33

if.else21:                                        ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %27 = load ptr, ptr %pMem.addr, align 8
  %szMalloc22 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %27, i32 0, i32 7
  %28 = load i32, ptr %szMalloc22, align 8
  %cmp23 = icmp sgt i32 %28, 0
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.else21
  %29 = load ptr, ptr %pMem.addr, align 8
  %db26 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %db26, align 8
  %31 = load ptr, ptr %pMem.addr, align 8
  %zMalloc27 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %zMalloc27, align 8
  call void @sqlite3DbFreeNN(ptr noundef %30, ptr noundef %32)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.else21
  %33 = load ptr, ptr %pMem.addr, align 8
  %db29 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %33, i32 0, i32 9
  %34 = load ptr, ptr %db29, align 8
  %35 = load i32, ptr %n.addr, align 4
  %conv30 = sext i32 %35 to i64
  %call31 = call ptr @sqlite3DbMallocRaw(ptr noundef %34, i64 noundef %conv30)
  %36 = load ptr, ptr %pMem.addr, align 8
  %zMalloc32 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %36, i32 0, i32 6
  store ptr %call31, ptr %zMalloc32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end28, %if.end20
  %37 = load ptr, ptr %pMem.addr, align 8
  %zMalloc34 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %zMalloc34, align 8
  %cmp35 = icmp eq ptr %38, null
  br i1 %cmp35, label %if.then37, label %if.else40

if.then37:                                        ; preds = %if.end33
  %39 = load ptr, ptr %pMem.addr, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %39)
  %40 = load ptr, ptr %pMem.addr, align 8
  %z38 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %40, i32 0, i32 5
  store ptr null, ptr %z38, align 8
  %41 = load ptr, ptr %pMem.addr, align 8
  %szMalloc39 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %41, i32 0, i32 7
  store i32 0, ptr %szMalloc39, align 8
  store i32 7, ptr %retval, align 4
  br label %return

if.else40:                                        ; preds = %if.end33
  %42 = load ptr, ptr %pMem.addr, align 8
  %db41 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %42, i32 0, i32 9
  %43 = load ptr, ptr %db41, align 8
  %44 = load ptr, ptr %pMem.addr, align 8
  %zMalloc42 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %44, i32 0, i32 6
  %45 = load ptr, ptr %zMalloc42, align 8
  %call43 = call i32 @sqlite3DbMallocSize(ptr noundef %43, ptr noundef %45)
  %46 = load ptr, ptr %pMem.addr, align 8
  %szMalloc44 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %46, i32 0, i32 7
  store i32 %call43, ptr %szMalloc44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else40
  %47 = load i32, ptr %bPreserve.addr, align 4
  %tobool46 = icmp ne i32 %47, 0
  br i1 %tobool46, label %land.lhs.true47, label %if.end55

land.lhs.true47:                                  ; preds = %if.end45
  %48 = load ptr, ptr %pMem.addr, align 8
  %z48 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %z48, align 8
  %tobool49 = icmp ne ptr %49, null
  br i1 %tobool49, label %if.then50, label %if.end55

if.then50:                                        ; preds = %land.lhs.true47
  %50 = load ptr, ptr %pMem.addr, align 8
  %zMalloc51 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %zMalloc51, align 8
  %52 = load ptr, ptr %pMem.addr, align 8
  %z52 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %52, i32 0, i32 5
  %53 = load ptr, ptr %z52, align 8
  %54 = load ptr, ptr %pMem.addr, align 8
  %n53 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %54, i32 0, i32 4
  %55 = load i32, ptr %n53, align 4
  %conv54 = sext i32 %55 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %53, i64 %conv54, i1 false)
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %land.lhs.true47, %if.end45
  %56 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %56, i32 0, i32 1
  %57 = load i16, ptr %flags, align 8
  %conv56 = zext i16 %57 to i32
  %and = and i32 %conv56, 1024
  %cmp57 = icmp ne i32 %and, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end55
  %58 = load ptr, ptr %pMem.addr, align 8
  %xDel = getelementptr inbounds nuw %struct.sqlite3_value, ptr %58, i32 0, i32 10
  %59 = load ptr, ptr %xDel, align 8
  %60 = load ptr, ptr %pMem.addr, align 8
  %z60 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %60, i32 0, i32 5
  %61 = load ptr, ptr %z60, align 8
  call void %59(ptr noundef %61)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end55
  %62 = load ptr, ptr %pMem.addr, align 8
  %zMalloc62 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %62, i32 0, i32 6
  %63 = load ptr, ptr %zMalloc62, align 8
  %64 = load ptr, ptr %pMem.addr, align 8
  %z63 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %64, i32 0, i32 5
  store ptr %63, ptr %z63, align 8
  %65 = load ptr, ptr %pMem.addr, align 8
  %flags64 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %65, i32 0, i32 1
  %66 = load i16, ptr %flags64, align 8
  %conv65 = zext i16 %66 to i32
  %and66 = and i32 %conv65, -7169
  %conv67 = trunc i32 %and66 to i16
  store i16 %conv67, ptr %flags64, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end61, %if.then37
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbReallocOrFree(ptr noundef, ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
