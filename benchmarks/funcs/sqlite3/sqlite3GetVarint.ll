; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @sqlite3GetVarint(ptr noundef %p, ptr noundef %v) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %s = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = zext i8 %3 to i64
  %4 = load ptr, ptr %v.addr, align 8
  store i64 %conv2, ptr %4, align 8
  store i8 1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp sge i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %and = and i32 %conv9, 127
  %shl = shl i32 %and, 7
  %9 = load ptr, ptr %p.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %10 to i32
  %or = or i32 %shl, %conv11
  %conv12 = zext i32 %or to i64
  %11 = load ptr, ptr %v.addr, align 8
  store i64 %conv12, ptr %11, align 8
  store i8 2, ptr %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end
  %12 = load ptr, ptr %p.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %shl16 = shl i32 %conv15, 14
  store i32 %shl16, ptr %a, align 4
  %14 = load ptr, ptr %p.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  store i32 %conv18, ptr %b, align 4
  %16 = load ptr, ptr %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 2
  store ptr %add.ptr, ptr %p.addr, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv19 = zext i8 %18 to i32
  %19 = load i32, ptr %a, align 4
  %or20 = or i32 %19, %conv19
  store i32 %or20, ptr %a, align 4
  %20 = load i32, ptr %a, align 4
  %and21 = and i32 %20, 128
  %tobool = icmp ne i32 %and21, 0
  br i1 %tobool, label %if.end28, label %if.then22

if.then22:                                        ; preds = %if.end13
  %21 = load i32, ptr %a, align 4
  %and23 = and i32 %21, 2080895
  store i32 %and23, ptr %a, align 4
  %22 = load i32, ptr %b, align 4
  %and24 = and i32 %22, 127
  store i32 %and24, ptr %b, align 4
  %23 = load i32, ptr %b, align 4
  %shl25 = shl i32 %23, 7
  store i32 %shl25, ptr %b, align 4
  %24 = load i32, ptr %b, align 4
  %25 = load i32, ptr %a, align 4
  %or26 = or i32 %25, %24
  store i32 %or26, ptr %a, align 4
  %26 = load i32, ptr %a, align 4
  %conv27 = zext i32 %26 to i64
  %27 = load ptr, ptr %v.addr, align 8
  store i64 %conv27, ptr %27, align 8
  store i8 3, ptr %retval, align 1
  br label %return

if.end28:                                         ; preds = %if.end13
  %28 = load i32, ptr %a, align 4
  %and29 = and i32 %28, 2080895
  store i32 %and29, ptr %a, align 4
  %29 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %30 = load i32, ptr %b, align 4
  %shl30 = shl i32 %30, 14
  store i32 %shl30, ptr %b, align 4
  %31 = load ptr, ptr %p.addr, align 8
  %32 = load i8, ptr %31, align 1
  %conv31 = zext i8 %32 to i32
  %33 = load i32, ptr %b, align 4
  %or32 = or i32 %33, %conv31
  store i32 %or32, ptr %b, align 4
  %34 = load i32, ptr %b, align 4
  %and33 = and i32 %34, 128
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.end40, label %if.then35

if.then35:                                        ; preds = %if.end28
  %35 = load i32, ptr %b, align 4
  %and36 = and i32 %35, 2080895
  store i32 %and36, ptr %b, align 4
  %36 = load i32, ptr %a, align 4
  %shl37 = shl i32 %36, 7
  store i32 %shl37, ptr %a, align 4
  %37 = load i32, ptr %b, align 4
  %38 = load i32, ptr %a, align 4
  %or38 = or i32 %38, %37
  store i32 %or38, ptr %a, align 4
  %39 = load i32, ptr %a, align 4
  %conv39 = zext i32 %39 to i64
  %40 = load ptr, ptr %v.addr, align 8
  store i64 %conv39, ptr %40, align 8
  store i8 4, ptr %retval, align 1
  br label %return

if.end40:                                         ; preds = %if.end28
  %41 = load i32, ptr %b, align 4
  %and41 = and i32 %41, 2080895
  store i32 %and41, ptr %b, align 4
  %42 = load i32, ptr %a, align 4
  store i32 %42, ptr %s, align 4
  %43 = load ptr, ptr %p.addr, align 8
  %incdec.ptr42 = getelementptr inbounds nuw i8, ptr %43, i32 1
  store ptr %incdec.ptr42, ptr %p.addr, align 8
  %44 = load i32, ptr %a, align 4
  %shl43 = shl i32 %44, 14
  store i32 %shl43, ptr %a, align 4
  %45 = load ptr, ptr %p.addr, align 8
  %46 = load i8, ptr %45, align 1
  %conv44 = zext i8 %46 to i32
  %47 = load i32, ptr %a, align 4
  %or45 = or i32 %47, %conv44
  store i32 %or45, ptr %a, align 4
  %48 = load i32, ptr %a, align 4
  %and46 = and i32 %48, 128
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.end55, label %if.then48

if.then48:                                        ; preds = %if.end40
  %49 = load i32, ptr %b, align 4
  %shl49 = shl i32 %49, 7
  store i32 %shl49, ptr %b, align 4
  %50 = load i32, ptr %b, align 4
  %51 = load i32, ptr %a, align 4
  %or50 = or i32 %51, %50
  store i32 %or50, ptr %a, align 4
  %52 = load i32, ptr %s, align 4
  %shr = lshr i32 %52, 18
  store i32 %shr, ptr %s, align 4
  %53 = load i32, ptr %s, align 4
  %conv51 = zext i32 %53 to i64
  %shl52 = shl i64 %conv51, 32
  %54 = load i32, ptr %a, align 4
  %conv53 = zext i32 %54 to i64
  %or54 = or i64 %shl52, %conv53
  %55 = load ptr, ptr %v.addr, align 8
  store i64 %or54, ptr %55, align 8
  store i8 5, ptr %retval, align 1
  br label %return

if.end55:                                         ; preds = %if.end40
  %56 = load i32, ptr %s, align 4
  %shl56 = shl i32 %56, 7
  store i32 %shl56, ptr %s, align 4
  %57 = load i32, ptr %b, align 4
  %58 = load i32, ptr %s, align 4
  %or57 = or i32 %58, %57
  store i32 %or57, ptr %s, align 4
  %59 = load ptr, ptr %p.addr, align 8
  %incdec.ptr58 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %incdec.ptr58, ptr %p.addr, align 8
  %60 = load i32, ptr %b, align 4
  %shl59 = shl i32 %60, 14
  store i32 %shl59, ptr %b, align 4
  %61 = load ptr, ptr %p.addr, align 8
  %62 = load i8, ptr %61, align 1
  %conv60 = zext i8 %62 to i32
  %63 = load i32, ptr %b, align 4
  %or61 = or i32 %63, %conv60
  store i32 %or61, ptr %b, align 4
  %64 = load i32, ptr %b, align 4
  %and62 = and i32 %64, 128
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.end73, label %if.then64

if.then64:                                        ; preds = %if.end55
  %65 = load i32, ptr %a, align 4
  %and65 = and i32 %65, 2080895
  store i32 %and65, ptr %a, align 4
  %66 = load i32, ptr %a, align 4
  %shl66 = shl i32 %66, 7
  store i32 %shl66, ptr %a, align 4
  %67 = load i32, ptr %b, align 4
  %68 = load i32, ptr %a, align 4
  %or67 = or i32 %68, %67
  store i32 %or67, ptr %a, align 4
  %69 = load i32, ptr %s, align 4
  %shr68 = lshr i32 %69, 18
  store i32 %shr68, ptr %s, align 4
  %70 = load i32, ptr %s, align 4
  %conv69 = zext i32 %70 to i64
  %shl70 = shl i64 %conv69, 32
  %71 = load i32, ptr %a, align 4
  %conv71 = zext i32 %71 to i64
  %or72 = or i64 %shl70, %conv71
  %72 = load ptr, ptr %v.addr, align 8
  store i64 %or72, ptr %72, align 8
  store i8 6, ptr %retval, align 1
  br label %return

if.end73:                                         ; preds = %if.end55
  %73 = load ptr, ptr %p.addr, align 8
  %incdec.ptr74 = getelementptr inbounds nuw i8, ptr %73, i32 1
  store ptr %incdec.ptr74, ptr %p.addr, align 8
  %74 = load i32, ptr %a, align 4
  %shl75 = shl i32 %74, 14
  store i32 %shl75, ptr %a, align 4
  %75 = load ptr, ptr %p.addr, align 8
  %76 = load i8, ptr %75, align 1
  %conv76 = zext i8 %76 to i32
  %77 = load i32, ptr %a, align 4
  %or77 = or i32 %77, %conv76
  store i32 %or77, ptr %a, align 4
  %78 = load i32, ptr %a, align 4
  %and78 = and i32 %78, 128
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.end90, label %if.then80

if.then80:                                        ; preds = %if.end73
  %79 = load i32, ptr %a, align 4
  %and81 = and i32 %79, -266354561
  store i32 %and81, ptr %a, align 4
  %80 = load i32, ptr %b, align 4
  %and82 = and i32 %80, 2080895
  store i32 %and82, ptr %b, align 4
  %81 = load i32, ptr %b, align 4
  %shl83 = shl i32 %81, 7
  store i32 %shl83, ptr %b, align 4
  %82 = load i32, ptr %b, align 4
  %83 = load i32, ptr %a, align 4
  %or84 = or i32 %83, %82
  store i32 %or84, ptr %a, align 4
  %84 = load i32, ptr %s, align 4
  %shr85 = lshr i32 %84, 11
  store i32 %shr85, ptr %s, align 4
  %85 = load i32, ptr %s, align 4
  %conv86 = zext i32 %85 to i64
  %shl87 = shl i64 %conv86, 32
  %86 = load i32, ptr %a, align 4
  %conv88 = zext i32 %86 to i64
  %or89 = or i64 %shl87, %conv88
  %87 = load ptr, ptr %v.addr, align 8
  store i64 %or89, ptr %87, align 8
  store i8 7, ptr %retval, align 1
  br label %return

if.end90:                                         ; preds = %if.end73
  %88 = load i32, ptr %a, align 4
  %and91 = and i32 %88, 2080895
  store i32 %and91, ptr %a, align 4
  %89 = load ptr, ptr %p.addr, align 8
  %incdec.ptr92 = getelementptr inbounds nuw i8, ptr %89, i32 1
  store ptr %incdec.ptr92, ptr %p.addr, align 8
  %90 = load i32, ptr %b, align 4
  %shl93 = shl i32 %90, 14
  store i32 %shl93, ptr %b, align 4
  %91 = load ptr, ptr %p.addr, align 8
  %92 = load i8, ptr %91, align 1
  %conv94 = zext i8 %92 to i32
  %93 = load i32, ptr %b, align 4
  %or95 = or i32 %93, %conv94
  store i32 %or95, ptr %b, align 4
  %94 = load i32, ptr %b, align 4
  %and96 = and i32 %94, 128
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.end107, label %if.then98

if.then98:                                        ; preds = %if.end90
  %95 = load i32, ptr %b, align 4
  %and99 = and i32 %95, -266354561
  store i32 %and99, ptr %b, align 4
  %96 = load i32, ptr %a, align 4
  %shl100 = shl i32 %96, 7
  store i32 %shl100, ptr %a, align 4
  %97 = load i32, ptr %b, align 4
  %98 = load i32, ptr %a, align 4
  %or101 = or i32 %98, %97
  store i32 %or101, ptr %a, align 4
  %99 = load i32, ptr %s, align 4
  %shr102 = lshr i32 %99, 4
  store i32 %shr102, ptr %s, align 4
  %100 = load i32, ptr %s, align 4
  %conv103 = zext i32 %100 to i64
  %shl104 = shl i64 %conv103, 32
  %101 = load i32, ptr %a, align 4
  %conv105 = zext i32 %101 to i64
  %or106 = or i64 %shl104, %conv105
  %102 = load ptr, ptr %v.addr, align 8
  store i64 %or106, ptr %102, align 8
  store i8 8, ptr %retval, align 1
  br label %return

if.end107:                                        ; preds = %if.end90
  %103 = load ptr, ptr %p.addr, align 8
  %incdec.ptr108 = getelementptr inbounds nuw i8, ptr %103, i32 1
  store ptr %incdec.ptr108, ptr %p.addr, align 8
  %104 = load i32, ptr %a, align 4
  %shl109 = shl i32 %104, 15
  store i32 %shl109, ptr %a, align 4
  %105 = load ptr, ptr %p.addr, align 8
  %106 = load i8, ptr %105, align 1
  %conv110 = zext i8 %106 to i32
  %107 = load i32, ptr %a, align 4
  %or111 = or i32 %107, %conv110
  store i32 %or111, ptr %a, align 4
  %108 = load i32, ptr %b, align 4
  %and112 = and i32 %108, 2080895
  store i32 %and112, ptr %b, align 4
  %109 = load i32, ptr %b, align 4
  %shl113 = shl i32 %109, 8
  store i32 %shl113, ptr %b, align 4
  %110 = load i32, ptr %b, align 4
  %111 = load i32, ptr %a, align 4
  %or114 = or i32 %111, %110
  store i32 %or114, ptr %a, align 4
  %112 = load i32, ptr %s, align 4
  %shl115 = shl i32 %112, 4
  store i32 %shl115, ptr %s, align 4
  %113 = load ptr, ptr %p.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %113, i64 -4
  %114 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %114 to i32
  store i32 %conv117, ptr %b, align 4
  %115 = load i32, ptr %b, align 4
  %and118 = and i32 %115, 127
  store i32 %and118, ptr %b, align 4
  %116 = load i32, ptr %b, align 4
  %shr119 = lshr i32 %116, 3
  store i32 %shr119, ptr %b, align 4
  %117 = load i32, ptr %b, align 4
  %118 = load i32, ptr %s, align 4
  %or120 = or i32 %118, %117
  store i32 %or120, ptr %s, align 4
  %119 = load i32, ptr %s, align 4
  %conv121 = zext i32 %119 to i64
  %shl122 = shl i64 %conv121, 32
  %120 = load i32, ptr %a, align 4
  %conv123 = zext i32 %120 to i64
  %or124 = or i64 %shl122, %conv123
  %121 = load ptr, ptr %v.addr, align 8
  store i64 %or124, ptr %121, align 8
  store i8 9, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end107, %if.then98, %if.then80, %if.then64, %if.then48, %if.then35, %if.then22, %if.then7, %if.then
  %122 = load i8, ptr %retval, align 1
  ret i8 %122
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
