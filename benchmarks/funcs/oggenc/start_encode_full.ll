; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str.101 = external hidden unnamed_addr constant [65 x i8], align 1
@.str.102 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.103 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.104 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.105 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.106 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.107 = external hidden unnamed_addr constant [92 x i8], align 1
@.str.108 = external hidden unnamed_addr constant [83 x i8], align 1
@.str.109 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.110 = external hidden unnamed_addr constant [55 x i8], align 1
@.str.111 = external hidden unnamed_addr constant [63 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define dso_local void @start_encode_full(ptr noundef %fn, ptr noundef %outfn, i32 noundef %bitrate, float noundef %quality, i32 noundef %qset, i32 noundef %managed, i32 noundef %min, i32 noundef %max) #1 {
entry:
  %fn.addr = alloca ptr, align 8
  %outfn.addr = alloca ptr, align 8
  %bitrate.addr = alloca i32, align 4
  %quality.addr = alloca float, align 4
  %qset.addr = alloca i32, align 4
  %managed.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  store ptr %fn, ptr %fn.addr, align 8
  store ptr %outfn, ptr %outfn.addr, align 8
  store i32 %bitrate, ptr %bitrate.addr, align 4
  store float %quality, ptr %quality.addr, align 4
  store i32 %qset, ptr %qset.addr, align 4
  store i32 %managed, ptr %managed.addr, align 4
  store i32 %min, ptr %min.addr, align 4
  store i32 %max, ptr %max.addr, align 4
  %0 = load i32, ptr %bitrate.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else36

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %managed.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %2 = load ptr, ptr @stderr, align 8
  %3 = load ptr, ptr %fn.addr, align 8
  %tobool = icmp ne ptr %3, null
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.102, ptr @.str.103
  %5 = load ptr, ptr %fn.addr, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %6 = load ptr, ptr %fn.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi ptr [ %6, %cond.true ], [ @.str.104, %cond.false ]
  %7 = load ptr, ptr %fn.addr, align 8
  %tobool5 = icmp ne ptr %7, null
  %8 = zext i1 %tobool5 to i64
  %cond6 = select i1 %tobool5, ptr @.str.102, ptr @.str.103
  %9 = load ptr, ptr %outfn.addr, align 8
  %tobool7 = icmp ne ptr %9, null
  %10 = zext i1 %tobool7 to i64
  %cond8 = select i1 %tobool7, ptr @.str.102, ptr @.str.103
  %11 = load ptr, ptr %outfn.addr, align 8
  %tobool9 = icmp ne ptr %11, null
  br i1 %tobool9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %cond.end
  %12 = load ptr, ptr %outfn.addr, align 8
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi ptr [ %12, %cond.true10 ], [ @.str.105, %cond.false11 ]
  %13 = load ptr, ptr %outfn.addr, align 8
  %tobool14 = icmp ne ptr %13, null
  %14 = zext i1 %tobool14 to i64
  %cond15 = select i1 %tobool14, ptr @.str.102, ptr @.str.103
  %15 = load i32, ptr %bitrate.addr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.101, ptr noundef %cond, ptr noundef %cond4, ptr noundef %cond6, ptr noundef %cond8, ptr noundef %cond13, ptr noundef %cond15, i32 noundef %15) #2
  %16 = load i32, ptr %min.addr, align 4
  %17 = load i32, ptr %max.addr, align 4
  call void @print_brconstraints(i32 noundef %16, i32 noundef %17)
  %18 = load ptr, ptr @stderr, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.106) #2
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load ptr, ptr @stderr, align 8
  %20 = load ptr, ptr %fn.addr, align 8
  %tobool17 = icmp ne ptr %20, null
  %21 = zext i1 %tobool17 to i64
  %cond18 = select i1 %tobool17, ptr @.str.102, ptr @.str.103
  %22 = load ptr, ptr %fn.addr, align 8
  %tobool19 = icmp ne ptr %22, null
  br i1 %tobool19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %if.else
  %23 = load ptr, ptr %fn.addr, align 8
  br label %cond.end22

cond.false21:                                     ; preds = %if.else
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi ptr [ %23, %cond.true20 ], [ @.str.104, %cond.false21 ]
  %24 = load ptr, ptr %fn.addr, align 8
  %tobool24 = icmp ne ptr %24, null
  %25 = zext i1 %tobool24 to i64
  %cond25 = select i1 %tobool24, ptr @.str.102, ptr @.str.103
  %26 = load ptr, ptr %outfn.addr, align 8
  %tobool26 = icmp ne ptr %26, null
  %27 = zext i1 %tobool26 to i64
  %cond27 = select i1 %tobool26, ptr @.str.102, ptr @.str.103
  %28 = load ptr, ptr %outfn.addr, align 8
  %tobool28 = icmp ne ptr %28, null
  br i1 %tobool28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.end22
  %29 = load ptr, ptr %outfn.addr, align 8
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end22
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi ptr [ %29, %cond.true29 ], [ @.str.105, %cond.false30 ]
  %30 = load ptr, ptr %outfn.addr, align 8
  %tobool33 = icmp ne ptr %30, null
  %31 = zext i1 %tobool33 to i64
  %cond34 = select i1 %tobool33, ptr @.str.102, ptr @.str.103
  %32 = load i32, ptr %bitrate.addr, align 4
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.107, ptr noundef %cond18, ptr noundef %cond23, ptr noundef %cond25, ptr noundef %cond27, ptr noundef %cond32, ptr noundef %cond34, i32 noundef %32) #2
  br label %if.end

if.end:                                           ; preds = %cond.end31, %cond.end12
  br label %if.end106

if.else36:                                        ; preds = %entry
  %33 = load i32, ptr %qset.addr, align 4
  %cmp37 = icmp sgt i32 %33, 0
  br i1 %cmp37, label %if.then38, label %if.else84

if.then38:                                        ; preds = %if.else36
  %34 = load i32, ptr %managed.addr, align 4
  %cmp39 = icmp sgt i32 %34, 0
  br i1 %cmp39, label %if.then40, label %if.else61

if.then40:                                        ; preds = %if.then38
  %35 = load ptr, ptr @stderr, align 8
  %36 = load ptr, ptr %fn.addr, align 8
  %tobool41 = icmp ne ptr %36, null
  %37 = zext i1 %tobool41 to i64
  %cond42 = select i1 %tobool41, ptr @.str.102, ptr @.str.103
  %38 = load ptr, ptr %fn.addr, align 8
  %tobool43 = icmp ne ptr %38, null
  br i1 %tobool43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %if.then40
  %39 = load ptr, ptr %fn.addr, align 8
  br label %cond.end46

cond.false45:                                     ; preds = %if.then40
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi ptr [ %39, %cond.true44 ], [ @.str.104, %cond.false45 ]
  %40 = load ptr, ptr %fn.addr, align 8
  %tobool48 = icmp ne ptr %40, null
  %41 = zext i1 %tobool48 to i64
  %cond49 = select i1 %tobool48, ptr @.str.102, ptr @.str.103
  %42 = load ptr, ptr %outfn.addr, align 8
  %tobool50 = icmp ne ptr %42, null
  %43 = zext i1 %tobool50 to i64
  %cond51 = select i1 %tobool50, ptr @.str.102, ptr @.str.103
  %44 = load ptr, ptr %outfn.addr, align 8
  %tobool52 = icmp ne ptr %44, null
  br i1 %tobool52, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %cond.end46
  %45 = load ptr, ptr %outfn.addr, align 8
  br label %cond.end55

cond.false54:                                     ; preds = %cond.end46
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.true53
  %cond56 = phi ptr [ %45, %cond.true53 ], [ @.str.105, %cond.false54 ]
  %46 = load ptr, ptr %outfn.addr, align 8
  %tobool57 = icmp ne ptr %46, null
  %47 = zext i1 %tobool57 to i64
  %cond58 = select i1 %tobool57, ptr @.str.102, ptr @.str.103
  %48 = load float, ptr %quality.addr, align 4
  %mul = fmul float %48, 1.000000e+01
  %conv = fpext float %mul to double
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.108, ptr noundef %cond42, ptr noundef %cond47, ptr noundef %cond49, ptr noundef %cond51, ptr noundef %cond56, ptr noundef %cond58, double noundef %conv) #2
  %49 = load i32, ptr %min.addr, align 4
  %50 = load i32, ptr %max.addr, align 4
  call void @print_brconstraints(i32 noundef %49, i32 noundef %50)
  %51 = load ptr, ptr @stderr, align 8
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.109) #2
  br label %if.end83

if.else61:                                        ; preds = %if.then38
  %52 = load ptr, ptr @stderr, align 8
  %53 = load ptr, ptr %fn.addr, align 8
  %tobool62 = icmp ne ptr %53, null
  %54 = zext i1 %tobool62 to i64
  %cond63 = select i1 %tobool62, ptr @.str.102, ptr @.str.103
  %55 = load ptr, ptr %fn.addr, align 8
  %tobool64 = icmp ne ptr %55, null
  br i1 %tobool64, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %if.else61
  %56 = load ptr, ptr %fn.addr, align 8
  br label %cond.end67

cond.false66:                                     ; preds = %if.else61
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %cond.true65
  %cond68 = phi ptr [ %56, %cond.true65 ], [ @.str.104, %cond.false66 ]
  %57 = load ptr, ptr %fn.addr, align 8
  %tobool69 = icmp ne ptr %57, null
  %58 = zext i1 %tobool69 to i64
  %cond70 = select i1 %tobool69, ptr @.str.102, ptr @.str.103
  %59 = load ptr, ptr %outfn.addr, align 8
  %tobool71 = icmp ne ptr %59, null
  %60 = zext i1 %tobool71 to i64
  %cond72 = select i1 %tobool71, ptr @.str.102, ptr @.str.103
  %61 = load ptr, ptr %outfn.addr, align 8
  %tobool73 = icmp ne ptr %61, null
  br i1 %tobool73, label %cond.true74, label %cond.false75

cond.true74:                                      ; preds = %cond.end67
  %62 = load ptr, ptr %outfn.addr, align 8
  br label %cond.end76

cond.false75:                                     ; preds = %cond.end67
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false75, %cond.true74
  %cond77 = phi ptr [ %62, %cond.true74 ], [ @.str.105, %cond.false75 ]
  %63 = load ptr, ptr %outfn.addr, align 8
  %tobool78 = icmp ne ptr %63, null
  %64 = zext i1 %tobool78 to i64
  %cond79 = select i1 %tobool78, ptr @.str.102, ptr @.str.103
  %65 = load float, ptr %quality.addr, align 4
  %mul80 = fmul float %65, 1.000000e+01
  %conv81 = fpext float %mul80 to double
  %call82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.110, ptr noundef %cond63, ptr noundef %cond68, ptr noundef %cond70, ptr noundef %cond72, ptr noundef %cond77, ptr noundef %cond79, double noundef %conv81) #2
  br label %if.end83

if.end83:                                         ; preds = %cond.end76, %cond.end55
  br label %if.end105

if.else84:                                        ; preds = %if.else36
  %66 = load ptr, ptr @stderr, align 8
  %67 = load ptr, ptr %fn.addr, align 8
  %tobool85 = icmp ne ptr %67, null
  %68 = zext i1 %tobool85 to i64
  %cond86 = select i1 %tobool85, ptr @.str.102, ptr @.str.103
  %69 = load ptr, ptr %fn.addr, align 8
  %tobool87 = icmp ne ptr %69, null
  br i1 %tobool87, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %if.else84
  %70 = load ptr, ptr %fn.addr, align 8
  br label %cond.end90

cond.false89:                                     ; preds = %if.else84
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %cond.true88
  %cond91 = phi ptr [ %70, %cond.true88 ], [ @.str.104, %cond.false89 ]
  %71 = load ptr, ptr %fn.addr, align 8
  %tobool92 = icmp ne ptr %71, null
  %72 = zext i1 %tobool92 to i64
  %cond93 = select i1 %tobool92, ptr @.str.102, ptr @.str.103
  %73 = load ptr, ptr %outfn.addr, align 8
  %tobool94 = icmp ne ptr %73, null
  %74 = zext i1 %tobool94 to i64
  %cond95 = select i1 %tobool94, ptr @.str.102, ptr @.str.103
  %75 = load ptr, ptr %outfn.addr, align 8
  %tobool96 = icmp ne ptr %75, null
  br i1 %tobool96, label %cond.true97, label %cond.false98

cond.true97:                                      ; preds = %cond.end90
  %76 = load ptr, ptr %outfn.addr, align 8
  br label %cond.end99

cond.false98:                                     ; preds = %cond.end90
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false98, %cond.true97
  %cond100 = phi ptr [ %76, %cond.true97 ], [ @.str.105, %cond.false98 ]
  %77 = load ptr, ptr %outfn.addr, align 8
  %tobool101 = icmp ne ptr %77, null
  %78 = zext i1 %tobool101 to i64
  %cond102 = select i1 %tobool101, ptr @.str.102, ptr @.str.103
  %call103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.111, ptr noundef %cond86, ptr noundef %cond91, ptr noundef %cond93, ptr noundef %cond95, ptr noundef %cond100, ptr noundef %cond102) #2
  %79 = load i32, ptr %min.addr, align 4
  %80 = load i32, ptr %max.addr, align 4
  call void @print_brconstraints(i32 noundef %79, i32 noundef %80)
  %81 = load ptr, ptr @stderr, align 8
  %call104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.109) #2
  br label %if.end105

if.end105:                                        ; preds = %cond.end99, %if.end83
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @print_brconstraints(i32 noundef, i32 noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
