; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }

@.str.115 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.116 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.129 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.130 = external hidden unnamed_addr constant [7 x i8], align 1
@__PRETTY_FUNCTION__.push = external hidden unnamed_addr constant [111 x i8], align 1
@.str.217 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.218 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.219 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.220 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.221 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.222 = external hidden unnamed_addr constant [19 x i8], align 1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @res_push_check(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @push(ptr noundef %state, ptr noundef %pool, ptr noundef %poolfill, ptr noundef %offset, ptr noundef %dest, i32 noundef %dststep, ptr noundef %source, i32 noundef %srcstep, i64 noundef %srclen) #1 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %poolfill.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %dststep.addr = alloca i32, align 4
  %source.addr = alloca ptr, align 8
  %srcstep.addr = alloca i32, align 4
  %srclen.addr = alloca i64, align 8
  %destbase = alloca ptr, align 8
  %poolhead = alloca ptr, align 8
  %poolend = alloca ptr, align 8
  %newpool = alloca ptr, align 8
  %refill = alloca ptr, align 8
  %base = alloca ptr, align 8
  %endpoint = alloca ptr, align 8
  %lencheck = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store ptr %pool, ptr %pool.addr, align 8
  store ptr %poolfill, ptr %poolfill.addr, align 8
  store ptr %offset, ptr %offset.addr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store i32 %dststep, ptr %dststep.addr, align 4
  store ptr %source, ptr %source.addr, align 8
  store i32 %srcstep, ptr %srcstep.addr, align 4
  store i64 %srclen, ptr %srclen.addr, align 8
  %0 = load ptr, ptr %dest.addr, align 8
  store ptr %0, ptr %destbase, align 8
  %1 = load ptr, ptr %pool.addr, align 8
  %2 = load ptr, ptr %poolfill.addr, align 8
  %3 = load i32, ptr %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds float, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %poolhead, align 8
  %4 = load ptr, ptr %pool.addr, align 8
  %5 = load ptr, ptr %state.addr, align 8
  %taps = getelementptr inbounds nuw %struct.res_state, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %taps, align 4
  %idx.ext1 = zext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds nuw float, ptr %4, i64 %idx.ext1
  store ptr %add.ptr2, ptr %poolend, align 8
  %7 = load ptr, ptr %pool.addr, align 8
  store ptr %7, ptr %newpool, align 8
  %8 = load ptr, ptr %state.addr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.115, ptr noundef @.str.116, i32 noundef 3412, ptr noundef @__PRETTY_FUNCTION__.push) #2
  unreachable

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %pool.addr, align 8
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  br label %if.end6

if.else5:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.217, ptr noundef @.str.116, i32 noundef 3413, ptr noundef @__PRETTY_FUNCTION__.push) #2
  unreachable

if.end6:                                          ; preds = %if.then4
  %10 = load ptr, ptr %poolfill.addr, align 8
  %tobool7 = icmp ne ptr %10, null
  br i1 %tobool7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end6
  br label %if.end10

if.else9:                                         ; preds = %if.end6
  call void @__assert_fail(ptr noundef @.str.218, ptr noundef @.str.116, i32 noundef 3414, ptr noundef @__PRETTY_FUNCTION__.push) #2
  unreachable

if.end10:                                         ; preds = %if.then8
  %11 = load ptr, ptr %dest.addr, align 8
  %tobool11 = icmp ne ptr %11, null
  br i1 %tobool11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end10
  br label %if.end14

if.else13:                                        ; preds = %if.end10
  call void @__assert_fail(ptr noundef @.str.129, ptr noundef @.str.116, i32 noundef 3415, ptr noundef @__PRETTY_FUNCTION__.push) #2
  unreachable

if.end14:                                         ; preds = %if.then12
  %12 = load ptr, ptr %source.addr, align 8
  %tobool15 = icmp ne ptr %12, null
  br i1 %tobool15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end14
  br label %if.end18

if.else17:                                        ; preds = %if.end14
  call void @__assert_fail(ptr noundef @.str.130, ptr noundef @.str.116, i32 noundef 3416, ptr noundef @__PRETTY_FUNCTION__.push) #2
  unreachable

if.end18:                                         ; preds = %if.then16
  %13 = load ptr, ptr %state.addr, align 8
  %poolfill19 = getelementptr inbounds nuw %struct.res_state, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %poolfill19, align 8
  %cmp = icmp ne i32 %14, -1
  br i1 %cmp, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end18
  br label %if.end22

if.else21:                                        ; preds = %if.end18
  call void @__assert_fail(ptr noundef @.str.219, ptr noundef @.str.116, i32 noundef 3418, ptr noundef @__PRETTY_FUNCTION__.push) #2
  unreachable

if.end22:                                         ; preds = %if.then20
  %15 = load ptr, ptr %state.addr, align 8
  %16 = load i64, ptr %srclen.addr, align 8
  %call = call i32 @res_push_check(ptr noundef %15, i64 noundef %16)
  store i32 %call, ptr %lencheck, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end22
  %17 = load ptr, ptr %poolhead, align 8
  %18 = load ptr, ptr %poolend, align 8
  %cmp23 = icmp ult ptr %17, %18
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load i64, ptr %srclen.addr, align 8
  %cmp24 = icmp ugt i64 %19, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load ptr, ptr %source.addr, align 8
  %22 = load float, ptr %21, align 4
  %23 = load ptr, ptr %poolhead, align 8
  %incdec.ptr = getelementptr inbounds nuw float, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %poolhead, align 8
  store float %22, ptr %23, align 4
  %24 = load i32, ptr %srcstep.addr, align 4
  %25 = load ptr, ptr %source.addr, align 8
  %idx.ext25 = sext i32 %24 to i64
  %add.ptr26 = getelementptr inbounds float, ptr %25, i64 %idx.ext25
  store ptr %add.ptr26, ptr %source.addr, align 8
  %26 = load i64, ptr %srclen.addr, align 8
  %dec = add i64 %26, -1
  store i64 %dec, ptr %srclen.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %27 = load i64, ptr %srclen.addr, align 8
  %cmp27 = icmp ule i64 %27, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %while.end
  %28 = load ptr, ptr %source.addr, align 8
  store ptr %28, ptr %base, align 8
  %29 = load ptr, ptr %source.addr, align 8
  %30 = load i64, ptr %srclen.addr, align 8
  %31 = load i32, ptr %srcstep.addr, align 4
  %conv = sext i32 %31 to i64
  %mul = mul i64 %30, %conv
  %add.ptr30 = getelementptr inbounds nuw float, ptr %29, i64 %mul
  store ptr %add.ptr30, ptr %endpoint, align 8
  br label %while.cond31

while.cond31:                                     ; preds = %while.end50, %if.end29
  %32 = load ptr, ptr %source.addr, align 8
  %33 = load ptr, ptr %endpoint, align 8
  %cmp32 = icmp ult ptr %32, %33
  br i1 %cmp32, label %while.body34, label %while.end51

while.body34:                                     ; preds = %while.cond31
  %34 = load ptr, ptr %state.addr, align 8
  %table = getelementptr inbounds nuw %struct.res_state, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %table, align 8
  %36 = load ptr, ptr %offset.addr, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %state.addr, align 8
  %taps35 = getelementptr inbounds nuw %struct.res_state, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %taps35, align 4
  %mul36 = mul i32 %37, %39
  %idx.ext37 = zext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds nuw float, ptr %35, i64 %idx.ext37
  %40 = load ptr, ptr %state.addr, align 8
  %taps39 = getelementptr inbounds nuw %struct.res_state, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %taps39, align 4
  %42 = load ptr, ptr %source.addr, align 8
  %43 = load ptr, ptr %base, align 8
  %44 = load ptr, ptr %poolend, align 8
  %45 = load i32, ptr %srcstep.addr, align 4
  %call40 = call float @sum(ptr noundef %add.ptr38, i32 noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, i32 noundef %45)
  %46 = load ptr, ptr %dest.addr, align 8
  store float %call40, ptr %46, align 4
  %47 = load i32, ptr %dststep.addr, align 4
  %48 = load ptr, ptr %dest.addr, align 8
  %idx.ext41 = sext i32 %47 to i64
  %add.ptr42 = getelementptr inbounds float, ptr %48, i64 %idx.ext41
  store ptr %add.ptr42, ptr %dest.addr, align 8
  %49 = load ptr, ptr %state.addr, align 8
  %infreq = getelementptr inbounds nuw %struct.res_state, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %infreq, align 4
  %51 = load ptr, ptr %offset.addr, align 8
  %52 = load i32, ptr %51, align 4
  %add = add i32 %52, %50
  store i32 %add, ptr %51, align 4
  br label %while.cond43

while.cond43:                                     ; preds = %while.body46, %while.body34
  %53 = load ptr, ptr %offset.addr, align 8
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %state.addr, align 8
  %outfreq = getelementptr inbounds nuw %struct.res_state, ptr %55, i32 0, i32 2
  %56 = load i32, ptr %outfreq, align 8
  %cmp44 = icmp uge i32 %54, %56
  br i1 %cmp44, label %while.body46, label %while.end50

while.body46:                                     ; preds = %while.cond43
  %57 = load ptr, ptr %state.addr, align 8
  %outfreq47 = getelementptr inbounds nuw %struct.res_state, ptr %57, i32 0, i32 2
  %58 = load i32, ptr %outfreq47, align 8
  %59 = load ptr, ptr %offset.addr, align 8
  %60 = load i32, ptr %59, align 4
  %sub = sub i32 %60, %58
  store i32 %sub, ptr %59, align 4
  %61 = load i32, ptr %srcstep.addr, align 4
  %62 = load ptr, ptr %source.addr, align 8
  %idx.ext48 = sext i32 %61 to i64
  %add.ptr49 = getelementptr inbounds float, ptr %62, i64 %idx.ext48
  store ptr %add.ptr49, ptr %source.addr, align 8
  br label %while.cond43, !llvm.loop !8

while.end50:                                      ; preds = %while.cond43
  br label %while.cond31, !llvm.loop !9

while.end51:                                      ; preds = %while.cond31
  %63 = load ptr, ptr %dest.addr, align 8
  %64 = load ptr, ptr %destbase, align 8
  %65 = load i32, ptr %lencheck, align 4
  %66 = load i32, ptr %dststep.addr, align 4
  %mul52 = mul nsw i32 %65, %66
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds float, ptr %64, i64 %idx.ext53
  %cmp55 = icmp eq ptr %63, %add.ptr54
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %while.end51
  br label %if.end59

if.else58:                                        ; preds = %while.end51
  call void @__assert_fail(ptr noundef @.str.220, ptr noundef @.str.116, i32 noundef 3448, ptr noundef @__PRETTY_FUNCTION__.push) #2
  unreachable

if.end59:                                         ; preds = %if.then57
  %67 = load ptr, ptr %source.addr, align 8
  %68 = load ptr, ptr %endpoint, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %67 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %68 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %69 = load i32, ptr %srcstep.addr, align 4
  %conv60 = sext i32 %69 to i64
  %div = sdiv i64 %sub.ptr.div, %conv60
  %70 = load i64, ptr %srclen.addr, align 8
  %add61 = add i64 %70, %div
  store i64 %add61, ptr %srclen.addr, align 8
  %71 = load i64, ptr %srclen.addr, align 8
  %72 = load ptr, ptr %state.addr, align 8
  %taps62 = getelementptr inbounds nuw %struct.res_state, ptr %72, i32 0, i32 3
  %73 = load i32, ptr %taps62, align 4
  %conv63 = zext i32 %73 to i64
  %cmp64 = icmp ult i64 %71, %conv63
  br i1 %cmp64, label %if.then66, label %if.else78

if.then66:                                        ; preds = %if.end59
  %74 = load ptr, ptr %pool.addr, align 8
  %75 = load i64, ptr %srclen.addr, align 8
  %add.ptr67 = getelementptr inbounds nuw float, ptr %74, i64 %75
  store ptr %add.ptr67, ptr %refill, align 8
  br label %while.cond68

while.cond68:                                     ; preds = %while.body71, %if.then66
  %76 = load ptr, ptr %refill, align 8
  %77 = load ptr, ptr %poolend, align 8
  %cmp69 = icmp ult ptr %76, %77
  br i1 %cmp69, label %while.body71, label %while.end74

while.body71:                                     ; preds = %while.cond68
  %78 = load ptr, ptr %refill, align 8
  %incdec.ptr72 = getelementptr inbounds nuw float, ptr %78, i32 1
  store ptr %incdec.ptr72, ptr %refill, align 8
  %79 = load float, ptr %78, align 4
  %80 = load ptr, ptr %newpool, align 8
  %incdec.ptr73 = getelementptr inbounds nuw float, ptr %80, i32 1
  store ptr %incdec.ptr73, ptr %newpool, align 8
  store float %79, ptr %80, align 4
  br label %while.cond68, !llvm.loop !10

while.end74:                                      ; preds = %while.cond68
  %81 = load ptr, ptr %source.addr, align 8
  %82 = load i64, ptr %srclen.addr, align 8
  %83 = load i32, ptr %srcstep.addr, align 4
  %conv75 = sext i32 %83 to i64
  %mul76 = mul i64 %82, %conv75
  %idx.neg = sub i64 0, %mul76
  %add.ptr77 = getelementptr inbounds float, ptr %81, i64 %idx.neg
  store ptr %add.ptr77, ptr %refill, align 8
  br label %if.end84

if.else78:                                        ; preds = %if.end59
  %84 = load ptr, ptr %source.addr, align 8
  %85 = load ptr, ptr %state.addr, align 8
  %taps79 = getelementptr inbounds nuw %struct.res_state, ptr %85, i32 0, i32 3
  %86 = load i32, ptr %taps79, align 4
  %87 = load i32, ptr %srcstep.addr, align 4
  %mul80 = mul i32 %86, %87
  %idx.ext81 = zext i32 %mul80 to i64
  %idx.neg82 = sub i64 0, %idx.ext81
  %add.ptr83 = getelementptr inbounds float, ptr %84, i64 %idx.neg82
  store ptr %add.ptr83, ptr %refill, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else78, %while.end74
  br label %while.cond85

while.cond85:                                     ; preds = %while.body88, %if.end84
  %88 = load ptr, ptr %refill, align 8
  %89 = load ptr, ptr %endpoint, align 8
  %cmp86 = icmp ult ptr %88, %89
  br i1 %cmp86, label %while.body88, label %while.end92

while.body88:                                     ; preds = %while.cond85
  %90 = load ptr, ptr %refill, align 8
  %91 = load float, ptr %90, align 4
  %92 = load ptr, ptr %newpool, align 8
  %incdec.ptr89 = getelementptr inbounds nuw float, ptr %92, i32 1
  store ptr %incdec.ptr89, ptr %newpool, align 8
  store float %91, ptr %92, align 4
  %93 = load i32, ptr %srcstep.addr, align 4
  %94 = load ptr, ptr %refill, align 8
  %idx.ext90 = sext i32 %93 to i64
  %add.ptr91 = getelementptr inbounds float, ptr %94, i64 %idx.ext90
  store ptr %add.ptr91, ptr %refill, align 8
  br label %while.cond85, !llvm.loop !11

while.end92:                                      ; preds = %while.cond85
  %95 = load ptr, ptr %newpool, align 8
  %96 = load ptr, ptr %pool.addr, align 8
  %cmp93 = icmp ugt ptr %95, %96
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %while.end92
  br label %if.end97

if.else96:                                        ; preds = %while.end92
  call void @__assert_fail(ptr noundef @.str.221, ptr noundef @.str.116, i32 noundef 3472, ptr noundef @__PRETTY_FUNCTION__.push) #2
  unreachable

if.end97:                                         ; preds = %if.then95
  %97 = load ptr, ptr %newpool, align 8
  %98 = load ptr, ptr %poolend, align 8
  %cmp98 = icmp ule ptr %97, %98
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.end97
  br label %if.end102

if.else101:                                       ; preds = %if.end97
  call void @__assert_fail(ptr noundef @.str.222, ptr noundef @.str.116, i32 noundef 3473, ptr noundef @__PRETTY_FUNCTION__.push) #2
  unreachable

if.end102:                                        ; preds = %if.then100
  %99 = load ptr, ptr %newpool, align 8
  %100 = load ptr, ptr %pool.addr, align 8
  %sub.ptr.lhs.cast103 = ptrtoint ptr %99 to i64
  %sub.ptr.rhs.cast104 = ptrtoint ptr %100 to i64
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  %sub.ptr.div106 = sdiv exact i64 %sub.ptr.sub105, 4
  %conv107 = trunc i64 %sub.ptr.div106 to i32
  %101 = load ptr, ptr %poolfill.addr, align 8
  store i32 %conv107, ptr %101, align 4
  %102 = load ptr, ptr %dest.addr, align 8
  %103 = load ptr, ptr %destbase, align 8
  %sub.ptr.lhs.cast108 = ptrtoint ptr %102 to i64
  %sub.ptr.rhs.cast109 = ptrtoint ptr %103 to i64
  %sub.ptr.sub110 = sub i64 %sub.ptr.lhs.cast108, %sub.ptr.rhs.cast109
  %sub.ptr.div111 = sdiv exact i64 %sub.ptr.sub110, 4
  %104 = load i32, ptr %dststep.addr, align 4
  %conv112 = sext i32 %104 to i64
  %div113 = sdiv i64 %sub.ptr.div111, %conv112
  %conv114 = trunc i64 %div113 to i32
  store i32 %conv114, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end102, %if.then28
  %105 = load i32, ptr %retval, align 4
  ret i32 %105
}

; Function Attrs: nounwind uwtable
declare hidden float @sum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
