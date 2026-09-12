; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.62 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.71 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.72 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @error(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @add_envopt(ptr noundef %argcp, ptr noundef %argvp, ptr noundef %env) #0 {
entry:
  %retval = alloca ptr, align 8, !mymd !6
  %argcp.addr = alloca ptr, align 8, !mymd !7
  %argvp.addr = alloca ptr, align 8, !mymd !8
  %env.addr = alloca ptr, align 8, !mymd !9
  %p = alloca ptr, align 8, !mymd !10
  %oargv = alloca ptr, align 8, !mymd !11
  %nargv = alloca ptr, align 8, !mymd !12
  %oargc = alloca i32, align 4, !mymd !13
  %nargc = alloca i32, align 4, !mymd !14
  store ptr %argcp, ptr %argcp.addr, align 8, !mymd !15
  store ptr %argvp, ptr %argvp.addr, align 8, !mymd !16
  store ptr %env, ptr %env.addr, align 8, !mymd !17
  %0 = load ptr, ptr %argcp.addr, align 8, !mymd !18
  %1 = load i32, ptr %0, align 4, !mymd !19
  store i32 %1, ptr %oargc, align 4, !mymd !20
  store i32 0, ptr %nargc, align 4, !mymd !21
  %2 = load ptr, ptr %env.addr, align 8, !mymd !22
  %call = call ptr @getenv(ptr noundef %2) #4, !mymd !23
  store ptr %call, ptr %env.addr, align 8, !mymd !24
  %3 = load ptr, ptr %env.addr, align 8, !mymd !25
  %cmp = icmp eq ptr %3, null, !mymd !26
  br i1 %cmp, label %if.then, label %if.end, !mymd !27

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !mymd !28
  br label %return, !mymd !29

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %env.addr, align 8, !mymd !30
  %call1 = call i64 @strlen(ptr noundef %4) #5, !mymd !31
  %add = add i64 %call1, 1, !mymd !32
  %conv = trunc i64 %add to i32, !mymd !33
  %call2 = call ptr @xmalloc(i32 noundef %conv), !mymd !34
  store ptr %call2, ptr %p, align 8, !mymd !35
  %5 = load ptr, ptr %p, align 8, !mymd !36
  %6 = load ptr, ptr %env.addr, align 8, !mymd !37
  %call3 = call ptr @strcpy(ptr noundef %5, ptr noundef %6) #4, !mymd !38
  store ptr %call3, ptr %env.addr, align 8, !mymd !39
  %7 = load ptr, ptr %env.addr, align 8, !mymd !40
  store ptr %7, ptr %p, align 8, !mymd !41
  br label %for.cond, !mymd !42

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %p, align 8, !mymd !43
  %9 = load i8, ptr %8, align 1, !mymd !44
  %tobool = icmp ne i8 %9, 0, !mymd !45
  br i1 %tobool, label %for.body, label %for.end, !mymd !46

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %p, align 8, !mymd !47
  %call4 = call i64 @strspn(ptr noundef %10, ptr noundef @.str.71) #5, !mymd !48
  %11 = load ptr, ptr %p, align 8, !mymd !49
  %add.ptr = getelementptr inbounds nuw i8, ptr %11, i64 %call4, !mymd !50
  store ptr %add.ptr, ptr %p, align 8, !mymd !51
  %12 = load ptr, ptr %p, align 8, !mymd !52
  %13 = load i8, ptr %12, align 1, !mymd !53
  %conv5 = sext i8 %13 to i32, !mymd !54
  %cmp6 = icmp eq i32 %conv5, 0, !mymd !55
  br i1 %cmp6, label %if.then8, label %if.end9, !mymd !56

if.then8:                                         ; preds = %for.body
  br label %for.end, !mymd !57

if.end9:                                          ; preds = %for.body
  %14 = load ptr, ptr %p, align 8, !mymd !58
  %call10 = call i64 @strcspn(ptr noundef %14, ptr noundef @.str.71) #5, !mymd !59
  %15 = load ptr, ptr %p, align 8, !mymd !60
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %15, i64 %call10, !mymd !61
  store ptr %add.ptr11, ptr %p, align 8, !mymd !62
  %16 = load ptr, ptr %p, align 8, !mymd !63
  %17 = load i8, ptr %16, align 1, !mymd !64
  %tobool12 = icmp ne i8 %17, 0, !mymd !65
  br i1 %tobool12, label %if.then13, label %if.end14, !mymd !66

if.then13:                                        ; preds = %if.end9
  %18 = load ptr, ptr %p, align 8, !mymd !67
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1, !mymd !68
  store ptr %incdec.ptr, ptr %p, align 8, !mymd !69
  store i8 0, ptr %18, align 1, !mymd !70
  br label %if.end14, !mymd !71

if.end14:                                         ; preds = %if.then13, %if.end9
  br label %for.inc, !mymd !72

for.inc:                                          ; preds = %if.end14
  %19 = load i32, ptr %nargc, align 4, !mymd !73
  %inc = add nsw i32 %19, 1, !mymd !74
  store i32 %inc, ptr %nargc, align 4, !mymd !75
  br label %for.cond, !llvm.loop !76, !mymd !78

for.end:                                          ; preds = %if.then8, %for.cond
  %20 = load i32, ptr %nargc, align 4, !mymd !79
  %cmp15 = icmp eq i32 %20, 0, !mymd !80
  br i1 %cmp15, label %if.then17, label %if.end18, !mymd !81

if.then17:                                        ; preds = %for.end
  %21 = load ptr, ptr %env.addr, align 8, !mymd !82
  call void @free(ptr noundef %21) #4, !mymd !83
  store ptr null, ptr %retval, align 8, !mymd !84
  br label %return, !mymd !85

if.end18:                                         ; preds = %for.end
  %22 = load i32, ptr %nargc, align 4, !mymd !86
  %23 = load ptr, ptr %argcp.addr, align 8, !mymd !87
  %24 = load i32, ptr %23, align 4, !mymd !88
  %add19 = add nsw i32 %24, %22, !mymd !89
  store i32 %add19, ptr %23, align 4, !mymd !90
  %25 = load ptr, ptr %argcp.addr, align 8, !mymd !91
  %26 = load i32, ptr %25, align 4, !mymd !92
  %add20 = add nsw i32 %26, 1, !mymd !93
  %conv21 = sext i32 %add20 to i64, !mymd !94
  %call22 = call noalias ptr @calloc(i64 noundef %conv21, i64 noundef 8) #6, !mymd !95
  store ptr %call22, ptr %nargv, align 8, !mymd !96
  %27 = load ptr, ptr %nargv, align 8, !mymd !97
  %cmp23 = icmp eq ptr %27, null, !mymd !98
  br i1 %cmp23, label %if.then25, label %if.end26, !mymd !99

if.then25:                                        ; preds = %if.end18
  call void @error(ptr noundef @.str.62), !mymd !100
  br label %if.end26, !mymd !101

if.end26:                                         ; preds = %if.then25, %if.end18
  %28 = load ptr, ptr %argvp.addr, align 8, !mymd !102
  %29 = load ptr, ptr %28, align 8, !mymd !103
  store ptr %29, ptr %oargv, align 8, !mymd !104
  %30 = load ptr, ptr %nargv, align 8, !mymd !105
  %31 = load ptr, ptr %argvp.addr, align 8, !mymd !106
  store ptr %30, ptr %31, align 8, !mymd !107
  %32 = load i32, ptr %oargc, align 4, !mymd !108
  %dec = add nsw i32 %32, -1, !mymd !109
  store i32 %dec, ptr %oargc, align 4, !mymd !110
  %cmp27 = icmp slt i32 %32, 0, !mymd !111
  br i1 %cmp27, label %if.then29, label %if.end30, !mymd !112

if.then29:                                        ; preds = %if.end26
  call void @error(ptr noundef @.str.72), !mymd !113
  br label %if.end30, !mymd !114

if.end30:                                         ; preds = %if.then29, %if.end26
  %33 = load ptr, ptr %oargv, align 8, !mymd !115
  %incdec.ptr31 = getelementptr inbounds nuw ptr, ptr %33, i32 1, !mymd !116
  store ptr %incdec.ptr31, ptr %oargv, align 8, !mymd !117
  %34 = load ptr, ptr %33, align 8, !mymd !118
  %35 = load ptr, ptr %nargv, align 8, !mymd !119
  %incdec.ptr32 = getelementptr inbounds nuw ptr, ptr %35, i32 1, !mymd !120
  store ptr %incdec.ptr32, ptr %nargv, align 8, !mymd !121
  store ptr %34, ptr %35, align 8, !mymd !122
  %36 = load ptr, ptr %env.addr, align 8, !mymd !123
  store ptr %36, ptr %p, align 8, !mymd !124
  br label %for.cond33, !mymd !125

for.cond33:                                       ; preds = %for.inc42, %if.end30
  %37 = load i32, ptr %nargc, align 4, !mymd !126
  %cmp34 = icmp sgt i32 %37, 0, !mymd !127
  br i1 %cmp34, label %for.body36, label %for.end44, !mymd !128

for.body36:                                       ; preds = %for.cond33
  %38 = load ptr, ptr %p, align 8, !mymd !129
  %call37 = call i64 @strspn(ptr noundef %38, ptr noundef @.str.71) #5, !mymd !130
  %39 = load ptr, ptr %p, align 8, !mymd !131
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %39, i64 %call37, !mymd !132
  store ptr %add.ptr38, ptr %p, align 8, !mymd !133
  %40 = load ptr, ptr %p, align 8, !mymd !134
  %41 = load ptr, ptr %nargv, align 8, !mymd !135
  %incdec.ptr39 = getelementptr inbounds nuw ptr, ptr %41, i32 1, !mymd !136
  store ptr %incdec.ptr39, ptr %nargv, align 8, !mymd !137
  store ptr %40, ptr %41, align 8, !mymd !138
  br label %while.cond, !mymd !139

while.cond:                                       ; preds = %while.body, %for.body36
  %42 = load ptr, ptr %p, align 8, !mymd !140
  %incdec.ptr40 = getelementptr inbounds nuw i8, ptr %42, i32 1, !mymd !141
  store ptr %incdec.ptr40, ptr %p, align 8, !mymd !142
  %43 = load i8, ptr %42, align 1, !mymd !143
  %tobool41 = icmp ne i8 %43, 0, !mymd !144
  br i1 %tobool41, label %while.body, label %while.end, !mymd !145

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !146, !mymd !147

while.end:                                        ; preds = %while.cond
  br label %for.inc42, !mymd !148

for.inc42:                                        ; preds = %while.end
  %44 = load i32, ptr %nargc, align 4, !mymd !149
  %dec43 = add nsw i32 %44, -1, !mymd !150
  store i32 %dec43, ptr %nargc, align 4, !mymd !151
  br label %for.cond33, !llvm.loop !152, !mymd !153

for.end44:                                        ; preds = %for.cond33
  br label %while.cond45, !mymd !154

while.cond45:                                     ; preds = %while.body48, %for.end44
  %45 = load i32, ptr %oargc, align 4, !mymd !155
  %dec46 = add nsw i32 %45, -1, !mymd !156
  store i32 %dec46, ptr %oargc, align 4, !mymd !157
  %tobool47 = icmp ne i32 %45, 0, !mymd !158
  br i1 %tobool47, label %while.body48, label %while.end51, !mymd !159

while.body48:                                     ; preds = %while.cond45
  %46 = load ptr, ptr %oargv, align 8, !mymd !160
  %incdec.ptr49 = getelementptr inbounds nuw ptr, ptr %46, i32 1, !mymd !161
  store ptr %incdec.ptr49, ptr %oargv, align 8, !mymd !162
  %47 = load ptr, ptr %46, align 8, !mymd !163
  %48 = load ptr, ptr %nargv, align 8, !mymd !164
  %incdec.ptr50 = getelementptr inbounds nuw ptr, ptr %48, i32 1, !mymd !165
  store ptr %incdec.ptr50, ptr %nargv, align 8, !mymd !166
  store ptr %47, ptr %48, align 8, !mymd !167
  br label %while.cond45, !llvm.loop !168, !mymd !169

while.end51:                                      ; preds = %while.cond45
  %49 = load ptr, ptr %nargv, align 8, !mymd !170
  store ptr null, ptr %49, align 8, !mymd !171
  %50 = load ptr, ptr %env.addr, align 8, !mymd !172
  store ptr %50, ptr %retval, align 8, !mymd !173
  br label %return, !mymd !174

return:                                           ; preds = %while.end51, %if.then17, %if.then
  %51 = load ptr, ptr %retval, align 8, !mymd !175
  ret ptr %51, !mymd !176
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
declare dso_local ptr @xmalloc(i32 noundef) #0

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strspn(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strcspn(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"4204"}
!7 = !{!"4205"}
!8 = !{!"4206"}
!9 = !{!"4207"}
!10 = !{!"4208"}
!11 = !{!"4209"}
!12 = !{!"4210"}
!13 = !{!"4211"}
!14 = !{!"4212"}
!15 = !{!"4213"}
!16 = !{!"4214"}
!17 = !{!"4215"}
!18 = !{!"4216"}
!19 = !{!"4217"}
!20 = !{!"4218"}
!21 = !{!"4219"}
!22 = !{!"4220"}
!23 = !{!"4221"}
!24 = !{!"4222"}
!25 = !{!"4223"}
!26 = !{!"4224"}
!27 = !{!"4225"}
!28 = !{!"4226"}
!29 = !{!"4227"}
!30 = !{!"4228"}
!31 = !{!"4229"}
!32 = !{!"4230"}
!33 = !{!"4231"}
!34 = !{!"4232"}
!35 = !{!"4233"}
!36 = !{!"4234"}
!37 = !{!"4235"}
!38 = !{!"4236"}
!39 = !{!"4237"}
!40 = !{!"4238"}
!41 = !{!"4239"}
!42 = !{!"4240"}
!43 = !{!"4241"}
!44 = !{!"4242"}
!45 = !{!"4243"}
!46 = !{!"4244"}
!47 = !{!"4245"}
!48 = !{!"4246"}
!49 = !{!"4247"}
!50 = !{!"4248"}
!51 = !{!"4249"}
!52 = !{!"4250"}
!53 = !{!"4251"}
!54 = !{!"4252"}
!55 = !{!"4253"}
!56 = !{!"4254"}
!57 = !{!"4255"}
!58 = !{!"4256"}
!59 = !{!"4257"}
!60 = !{!"4258"}
!61 = !{!"4259"}
!62 = !{!"4260"}
!63 = !{!"4261"}
!64 = !{!"4262"}
!65 = !{!"4263"}
!66 = !{!"4264"}
!67 = !{!"4265"}
!68 = !{!"4266"}
!69 = !{!"4267"}
!70 = !{!"4268"}
!71 = !{!"4269"}
!72 = !{!"4270"}
!73 = !{!"4271"}
!74 = !{!"4272"}
!75 = !{!"4273"}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"4274"}
!79 = !{!"4275"}
!80 = !{!"4276"}
!81 = !{!"4277"}
!82 = !{!"4278"}
!83 = !{!"4279"}
!84 = !{!"4280"}
!85 = !{!"4281"}
!86 = !{!"4282"}
!87 = !{!"4283"}
!88 = !{!"4284"}
!89 = !{!"4285"}
!90 = !{!"4286"}
!91 = !{!"4287"}
!92 = !{!"4288"}
!93 = !{!"4289"}
!94 = !{!"4290"}
!95 = !{!"4291"}
!96 = !{!"4292"}
!97 = !{!"4293"}
!98 = !{!"4294"}
!99 = !{!"4295"}
!100 = !{!"4296"}
!101 = !{!"4297"}
!102 = !{!"4298"}
!103 = !{!"4299"}
!104 = !{!"4300"}
!105 = !{!"4301"}
!106 = !{!"4302"}
!107 = !{!"4303"}
!108 = !{!"4304"}
!109 = !{!"4305"}
!110 = !{!"4306"}
!111 = !{!"4307"}
!112 = !{!"4308"}
!113 = !{!"4309"}
!114 = !{!"4310"}
!115 = !{!"4311"}
!116 = !{!"4312"}
!117 = !{!"4313"}
!118 = !{!"4314"}
!119 = !{!"4315"}
!120 = !{!"4316"}
!121 = !{!"4317"}
!122 = !{!"4318"}
!123 = !{!"4319"}
!124 = !{!"4320"}
!125 = !{!"4321"}
!126 = !{!"4322"}
!127 = !{!"4323"}
!128 = !{!"4324"}
!129 = !{!"4325"}
!130 = !{!"4326"}
!131 = !{!"4327"}
!132 = !{!"4328"}
!133 = !{!"4329"}
!134 = !{!"4330"}
!135 = !{!"4331"}
!136 = !{!"4332"}
!137 = !{!"4333"}
!138 = !{!"4334"}
!139 = !{!"4335"}
!140 = !{!"4336"}
!141 = !{!"4337"}
!142 = !{!"4338"}
!143 = !{!"4339"}
!144 = !{!"4340"}
!145 = !{!"4341"}
!146 = distinct !{!146, !77}
!147 = !{!"4342"}
!148 = !{!"4343"}
!149 = !{!"4344"}
!150 = !{!"4345"}
!151 = !{!"4346"}
!152 = distinct !{!152, !77}
!153 = !{!"4347"}
!154 = !{!"4348"}
!155 = !{!"4349"}
!156 = !{!"4350"}
!157 = !{!"4351"}
!158 = !{!"4352"}
!159 = !{!"4353"}
!160 = !{!"4354"}
!161 = !{!"4355"}
!162 = !{!"4356"}
!163 = !{!"4357"}
!164 = !{!"4358"}
!165 = !{!"4359"}
!166 = !{!"4360"}
!167 = !{!"4361"}
!168 = distinct !{!168, !77}
!169 = !{!"4362"}
!170 = !{!"4363"}
!171 = !{!"4364"}
!172 = !{!"4365"}
!173 = !{!"4366"}
!174 = !{!"4367"}
!175 = !{!"4368"}
!176 = !{!"4369"}
