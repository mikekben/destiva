; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@inbuf = external dso_local global [32832 x i8], align 16
@base_length = external hidden global [29 x i32], align 16
@extra_lbits = external hidden global [29 x i32], align 16
@length_code = external hidden global [256 x i8], align 16
@base_dist = external hidden global [30 x i32], align 16
@extra_dbits = external hidden global [30 x i32], align 16
@dist_code = external hidden global [512 x i8], align 16
@flag_buf = external hidden global [4096 x i8], align 16
@last_lit = external hidden global i32, align 4
@d_buf = external dso_local global [32768 x i16], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local void @send_bits(i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden void @compress_block(ptr noundef %ltree, ptr noundef %dtree) #0 {
entry:
  %ltree.addr = alloca ptr, align 8, !mymd !6
  %dtree.addr = alloca ptr, align 8, !mymd !7
  %dist = alloca i32, align 4, !mymd !8
  %lc = alloca i32, align 4, !mymd !9
  %lx = alloca i32, align 4, !mymd !10
  %dx = alloca i32, align 4, !mymd !11
  %fx = alloca i32, align 4, !mymd !12
  %flag = alloca i8, align 1, !mymd !13
  %code = alloca i32, align 4, !mymd !14
  %extra = alloca i32, align 4, !mymd !15
  store ptr %ltree, ptr %ltree.addr, align 8, !mymd !16
  store ptr %dtree, ptr %dtree.addr, align 8, !mymd !17
  store i32 0, ptr %lx, align 4, !mymd !18
  store i32 0, ptr %dx, align 4, !mymd !19
  store i32 0, ptr %fx, align 4, !mymd !20
  store i8 0, ptr %flag, align 1, !mymd !21
  %0 = load i32, ptr @last_lit, align 4, !mymd !22
  %cmp = icmp ne i32 %0, 0, !mymd !23
  br i1 %cmp, label %if.then, label %if.end75, !mymd !24

if.then:                                          ; preds = %entry
  br label %do.body, !mymd !25

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load i32, ptr %lx, align 4, !mymd !26
  %and = and i32 %1, 7, !mymd !27
  %cmp1 = icmp eq i32 %and, 0, !mymd !28
  br i1 %cmp1, label %if.then2, label %if.end, !mymd !29

if.then2:                                         ; preds = %do.body
  %2 = load i32, ptr %fx, align 4, !mymd !30
  %inc = add i32 %2, 1, !mymd !31
  store i32 %inc, ptr %fx, align 4, !mymd !32
  %idxprom = zext i32 %2 to i64, !mymd !33
  %arrayidx = getelementptr inbounds nuw [4096 x i8], ptr @flag_buf, i64 0, i64 %idxprom, !mymd !34
  %3 = load i8, ptr %arrayidx, align 1, !mymd !35
  store i8 %3, ptr %flag, align 1, !mymd !36
  br label %if.end, !mymd !37

if.end:                                           ; preds = %if.then2, %do.body
  %4 = load i32, ptr %lx, align 4, !mymd !38
  %inc3 = add i32 %4, 1, !mymd !39
  store i32 %inc3, ptr %lx, align 4, !mymd !40
  %idxprom4 = zext i32 %4 to i64, !mymd !41
  %arrayidx5 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom4, !mymd !42
  %5 = load i8, ptr %arrayidx5, align 1, !mymd !43
  %conv = zext i8 %5 to i32, !mymd !44
  store i32 %conv, ptr %lc, align 4, !mymd !45
  %6 = load i8, ptr %flag, align 1, !mymd !46
  %conv6 = zext i8 %6 to i32, !mymd !47
  %and7 = and i32 %conv6, 1, !mymd !48
  %cmp8 = icmp eq i32 %and7, 0, !mymd !49
  br i1 %cmp8, label %if.then10, label %if.else, !mymd !50

if.then10:                                        ; preds = %if.end
  %7 = load ptr, ptr %ltree.addr, align 8, !mymd !51
  %8 = load i32, ptr %lc, align 4, !mymd !52
  %idxprom11 = sext i32 %8 to i64, !mymd !53
  %arrayidx12 = getelementptr inbounds %struct.ct_data, ptr %7, i64 %idxprom11, !mymd !54
  %fc = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx12, i32 0, i32 0, !mymd !55
  %9 = load i16, ptr %fc, align 2, !mymd !56
  %conv13 = zext i16 %9 to i32, !mymd !57
  %10 = load ptr, ptr %ltree.addr, align 8, !mymd !58
  %11 = load i32, ptr %lc, align 4, !mymd !59
  %idxprom14 = sext i32 %11 to i64, !mymd !60
  %arrayidx15 = getelementptr inbounds %struct.ct_data, ptr %10, i64 %idxprom14, !mymd !61
  %dl = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx15, i32 0, i32 1, !mymd !62
  %12 = load i16, ptr %dl, align 2, !mymd !63
  %conv16 = zext i16 %12 to i32, !mymd !64
  call void @send_bits(i32 noundef %conv13, i32 noundef %conv16), !mymd !65
  br label %if.end69, !mymd !66

if.else:                                          ; preds = %if.end
  %13 = load i32, ptr %lc, align 4, !mymd !67
  %idxprom17 = sext i32 %13 to i64, !mymd !68
  %arrayidx18 = getelementptr inbounds [256 x i8], ptr @length_code, i64 0, i64 %idxprom17, !mymd !69
  %14 = load i8, ptr %arrayidx18, align 1, !mymd !70
  %conv19 = zext i8 %14 to i32, !mymd !71
  store i32 %conv19, ptr %code, align 4, !mymd !72
  %15 = load ptr, ptr %ltree.addr, align 8, !mymd !73
  %16 = load i32, ptr %code, align 4, !mymd !74
  %add = add i32 %16, 256, !mymd !75
  %add20 = add i32 %add, 1, !mymd !76
  %idxprom21 = zext i32 %add20 to i64, !mymd !77
  %arrayidx22 = getelementptr inbounds nuw %struct.ct_data, ptr %15, i64 %idxprom21, !mymd !78
  %fc23 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx22, i32 0, i32 0, !mymd !79
  %17 = load i16, ptr %fc23, align 2, !mymd !80
  %conv24 = zext i16 %17 to i32, !mymd !81
  %18 = load ptr, ptr %ltree.addr, align 8, !mymd !82
  %19 = load i32, ptr %code, align 4, !mymd !83
  %add25 = add i32 %19, 256, !mymd !84
  %add26 = add i32 %add25, 1, !mymd !85
  %idxprom27 = zext i32 %add26 to i64, !mymd !86
  %arrayidx28 = getelementptr inbounds nuw %struct.ct_data, ptr %18, i64 %idxprom27, !mymd !87
  %dl29 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx28, i32 0, i32 1, !mymd !88
  %20 = load i16, ptr %dl29, align 2, !mymd !89
  %conv30 = zext i16 %20 to i32, !mymd !90
  call void @send_bits(i32 noundef %conv24, i32 noundef %conv30), !mymd !91
  %21 = load i32, ptr %code, align 4, !mymd !92
  %idxprom31 = zext i32 %21 to i64, !mymd !93
  %arrayidx32 = getelementptr inbounds nuw [29 x i32], ptr @extra_lbits, i64 0, i64 %idxprom31, !mymd !94
  %22 = load i32, ptr %arrayidx32, align 4, !mymd !95
  store i32 %22, ptr %extra, align 4, !mymd !96
  %23 = load i32, ptr %extra, align 4, !mymd !97
  %cmp33 = icmp ne i32 %23, 0, !mymd !98
  br i1 %cmp33, label %if.then35, label %if.end38, !mymd !99

if.then35:                                        ; preds = %if.else
  %24 = load i32, ptr %code, align 4, !mymd !100
  %idxprom36 = zext i32 %24 to i64, !mymd !101
  %arrayidx37 = getelementptr inbounds nuw [29 x i32], ptr @base_length, i64 0, i64 %idxprom36, !mymd !102
  %25 = load i32, ptr %arrayidx37, align 4, !mymd !103
  %26 = load i32, ptr %lc, align 4, !mymd !104
  %sub = sub nsw i32 %26, %25, !mymd !105
  store i32 %sub, ptr %lc, align 4, !mymd !106
  %27 = load i32, ptr %lc, align 4, !mymd !107
  %28 = load i32, ptr %extra, align 4, !mymd !108
  call void @send_bits(i32 noundef %27, i32 noundef %28), !mymd !109
  br label %if.end38, !mymd !110

if.end38:                                         ; preds = %if.then35, %if.else
  %29 = load i32, ptr %dx, align 4, !mymd !111
  %inc39 = add i32 %29, 1, !mymd !112
  store i32 %inc39, ptr %dx, align 4, !mymd !113
  %idxprom40 = zext i32 %29 to i64, !mymd !114
  %arrayidx41 = getelementptr inbounds nuw [32768 x i16], ptr @d_buf, i64 0, i64 %idxprom40, !mymd !115
  %30 = load i16, ptr %arrayidx41, align 2, !mymd !116
  %conv42 = zext i16 %30 to i32, !mymd !117
  store i32 %conv42, ptr %dist, align 4, !mymd !118
  %31 = load i32, ptr %dist, align 4, !mymd !119
  %cmp43 = icmp ult i32 %31, 256, !mymd !120
  br i1 %cmp43, label %cond.true, label %cond.false, !mymd !121

cond.true:                                        ; preds = %if.end38
  %32 = load i32, ptr %dist, align 4, !mymd !122
  %idxprom45 = zext i32 %32 to i64, !mymd !123
  %arrayidx46 = getelementptr inbounds nuw [512 x i8], ptr @dist_code, i64 0, i64 %idxprom45, !mymd !124
  %33 = load i8, ptr %arrayidx46, align 1, !mymd !125
  %conv47 = zext i8 %33 to i32, !mymd !126
  br label %cond.end, !mymd !127

cond.false:                                       ; preds = %if.end38
  %34 = load i32, ptr %dist, align 4, !mymd !128
  %shr = lshr i32 %34, 7, !mymd !129
  %add48 = add i32 256, %shr, !mymd !130
  %idxprom49 = zext i32 %add48 to i64, !mymd !131
  %arrayidx50 = getelementptr inbounds nuw [512 x i8], ptr @dist_code, i64 0, i64 %idxprom49, !mymd !132
  %35 = load i8, ptr %arrayidx50, align 1, !mymd !133
  %conv51 = zext i8 %35 to i32, !mymd !134
  br label %cond.end, !mymd !135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv47, %cond.true ], [ %conv51, %cond.false ], !mymd !136
  store i32 %cond, ptr %code, align 4, !mymd !137
  %36 = load ptr, ptr %dtree.addr, align 8, !mymd !138
  %37 = load i32, ptr %code, align 4, !mymd !139
  %idxprom52 = zext i32 %37 to i64, !mymd !140
  %arrayidx53 = getelementptr inbounds nuw %struct.ct_data, ptr %36, i64 %idxprom52, !mymd !141
  %fc54 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx53, i32 0, i32 0, !mymd !142
  %38 = load i16, ptr %fc54, align 2, !mymd !143
  %conv55 = zext i16 %38 to i32, !mymd !144
  %39 = load ptr, ptr %dtree.addr, align 8, !mymd !145
  %40 = load i32, ptr %code, align 4, !mymd !146
  %idxprom56 = zext i32 %40 to i64, !mymd !147
  %arrayidx57 = getelementptr inbounds nuw %struct.ct_data, ptr %39, i64 %idxprom56, !mymd !148
  %dl58 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx57, i32 0, i32 1, !mymd !149
  %41 = load i16, ptr %dl58, align 2, !mymd !150
  %conv59 = zext i16 %41 to i32, !mymd !151
  call void @send_bits(i32 noundef %conv55, i32 noundef %conv59), !mymd !152
  %42 = load i32, ptr %code, align 4, !mymd !153
  %idxprom60 = zext i32 %42 to i64, !mymd !154
  %arrayidx61 = getelementptr inbounds nuw [30 x i32], ptr @extra_dbits, i64 0, i64 %idxprom60, !mymd !155
  %43 = load i32, ptr %arrayidx61, align 4, !mymd !156
  store i32 %43, ptr %extra, align 4, !mymd !157
  %44 = load i32, ptr %extra, align 4, !mymd !158
  %cmp62 = icmp ne i32 %44, 0, !mymd !159
  br i1 %cmp62, label %if.then64, label %if.end68, !mymd !160

if.then64:                                        ; preds = %cond.end
  %45 = load i32, ptr %code, align 4, !mymd !161
  %idxprom65 = zext i32 %45 to i64, !mymd !162
  %arrayidx66 = getelementptr inbounds nuw [30 x i32], ptr @base_dist, i64 0, i64 %idxprom65, !mymd !163
  %46 = load i32, ptr %arrayidx66, align 4, !mymd !164
  %47 = load i32, ptr %dist, align 4, !mymd !165
  %sub67 = sub i32 %47, %46, !mymd !166
  store i32 %sub67, ptr %dist, align 4, !mymd !167
  %48 = load i32, ptr %dist, align 4, !mymd !168
  %49 = load i32, ptr %extra, align 4, !mymd !169
  call void @send_bits(i32 noundef %48, i32 noundef %49), !mymd !170
  br label %if.end68, !mymd !171

if.end68:                                         ; preds = %if.then64, %cond.end
  br label %if.end69, !mymd !172

if.end69:                                         ; preds = %if.end68, %if.then10
  %50 = load i8, ptr %flag, align 1, !mymd !173
  %conv70 = zext i8 %50 to i32, !mymd !174
  %shr71 = ashr i32 %conv70, 1, !mymd !175
  %conv72 = trunc i32 %shr71 to i8, !mymd !176
  store i8 %conv72, ptr %flag, align 1, !mymd !177
  br label %do.cond, !mymd !178

do.cond:                                          ; preds = %if.end69
  %51 = load i32, ptr %lx, align 4, !mymd !179
  %52 = load i32, ptr @last_lit, align 4, !mymd !180
  %cmp73 = icmp ult i32 %51, %52, !mymd !181
  br i1 %cmp73, label %do.body, label %do.end, !llvm.loop !182, !mymd !184

do.end:                                           ; preds = %do.cond
  br label %if.end75, !mymd !185

if.end75:                                         ; preds = %do.end, %entry
  %53 = load ptr, ptr %ltree.addr, align 8, !mymd !186
  %arrayidx76 = getelementptr inbounds %struct.ct_data, ptr %53, i64 256, !mymd !187
  %fc77 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx76, i32 0, i32 0, !mymd !188
  %54 = load i16, ptr %fc77, align 2, !mymd !189
  %conv78 = zext i16 %54 to i32, !mymd !190
  %55 = load ptr, ptr %ltree.addr, align 8, !mymd !191
  %arrayidx79 = getelementptr inbounds %struct.ct_data, ptr %55, i64 256, !mymd !192
  %dl80 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx79, i32 0, i32 1, !mymd !193
  %56 = load i16, ptr %dl80, align 2, !mymd !194
  %conv81 = zext i16 %56 to i32, !mymd !195
  call void @send_bits(i32 noundef %conv78, i32 noundef %conv81), !mymd !196
  ret void, !mymd !197
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"8241"}
!7 = !{!"8242"}
!8 = !{!"8243"}
!9 = !{!"8244"}
!10 = !{!"8245"}
!11 = !{!"8246"}
!12 = !{!"8247"}
!13 = !{!"8248"}
!14 = !{!"8249"}
!15 = !{!"8250"}
!16 = !{!"8251"}
!17 = !{!"8252"}
!18 = !{!"8253"}
!19 = !{!"8254"}
!20 = !{!"8255"}
!21 = !{!"8256"}
!22 = !{!"8257"}
!23 = !{!"8258"}
!24 = !{!"8259"}
!25 = !{!"8260"}
!26 = !{!"8261"}
!27 = !{!"8262"}
!28 = !{!"8263"}
!29 = !{!"8264"}
!30 = !{!"8265"}
!31 = !{!"8266"}
!32 = !{!"8267"}
!33 = !{!"8268"}
!34 = !{!"8269"}
!35 = !{!"8270"}
!36 = !{!"8271"}
!37 = !{!"8272"}
!38 = !{!"8273"}
!39 = !{!"8274"}
!40 = !{!"8275"}
!41 = !{!"8276"}
!42 = !{!"8277"}
!43 = !{!"8278"}
!44 = !{!"8279"}
!45 = !{!"8280"}
!46 = !{!"8281"}
!47 = !{!"8282"}
!48 = !{!"8283"}
!49 = !{!"8284"}
!50 = !{!"8285"}
!51 = !{!"8286"}
!52 = !{!"8287"}
!53 = !{!"8288"}
!54 = !{!"8289"}
!55 = !{!"8290"}
!56 = !{!"8291"}
!57 = !{!"8292"}
!58 = !{!"8293"}
!59 = !{!"8294"}
!60 = !{!"8295"}
!61 = !{!"8296"}
!62 = !{!"8297"}
!63 = !{!"8298"}
!64 = !{!"8299"}
!65 = !{!"8300"}
!66 = !{!"8301"}
!67 = !{!"8302"}
!68 = !{!"8303"}
!69 = !{!"8304"}
!70 = !{!"8305"}
!71 = !{!"8306"}
!72 = !{!"8307"}
!73 = !{!"8308"}
!74 = !{!"8309"}
!75 = !{!"8310"}
!76 = !{!"8311"}
!77 = !{!"8312"}
!78 = !{!"8313"}
!79 = !{!"8314"}
!80 = !{!"8315"}
!81 = !{!"8316"}
!82 = !{!"8317"}
!83 = !{!"8318"}
!84 = !{!"8319"}
!85 = !{!"8320"}
!86 = !{!"8321"}
!87 = !{!"8322"}
!88 = !{!"8323"}
!89 = !{!"8324"}
!90 = !{!"8325"}
!91 = !{!"8326"}
!92 = !{!"8327"}
!93 = !{!"8328"}
!94 = !{!"8329"}
!95 = !{!"8330"}
!96 = !{!"8331"}
!97 = !{!"8332"}
!98 = !{!"8333"}
!99 = !{!"8334"}
!100 = !{!"8335"}
!101 = !{!"8336"}
!102 = !{!"8337"}
!103 = !{!"8338"}
!104 = !{!"8339"}
!105 = !{!"8340"}
!106 = !{!"8341"}
!107 = !{!"8342"}
!108 = !{!"8343"}
!109 = !{!"8344"}
!110 = !{!"8345"}
!111 = !{!"8346"}
!112 = !{!"8347"}
!113 = !{!"8348"}
!114 = !{!"8349"}
!115 = !{!"8350"}
!116 = !{!"8351"}
!117 = !{!"8352"}
!118 = !{!"8353"}
!119 = !{!"8354"}
!120 = !{!"8355"}
!121 = !{!"8356"}
!122 = !{!"8357"}
!123 = !{!"8358"}
!124 = !{!"8359"}
!125 = !{!"8360"}
!126 = !{!"8361"}
!127 = !{!"8362"}
!128 = !{!"8363"}
!129 = !{!"8364"}
!130 = !{!"8365"}
!131 = !{!"8366"}
!132 = !{!"8367"}
!133 = !{!"8368"}
!134 = !{!"8369"}
!135 = !{!"8370"}
!136 = !{!"8371"}
!137 = !{!"8372"}
!138 = !{!"8373"}
!139 = !{!"8374"}
!140 = !{!"8375"}
!141 = !{!"8376"}
!142 = !{!"8377"}
!143 = !{!"8378"}
!144 = !{!"8379"}
!145 = !{!"8380"}
!146 = !{!"8381"}
!147 = !{!"8382"}
!148 = !{!"8383"}
!149 = !{!"8384"}
!150 = !{!"8385"}
!151 = !{!"8386"}
!152 = !{!"8387"}
!153 = !{!"8388"}
!154 = !{!"8389"}
!155 = !{!"8390"}
!156 = !{!"8391"}
!157 = !{!"8392"}
!158 = !{!"8393"}
!159 = !{!"8394"}
!160 = !{!"8395"}
!161 = !{!"8396"}
!162 = !{!"8397"}
!163 = !{!"8398"}
!164 = !{!"8399"}
!165 = !{!"8400"}
!166 = !{!"8401"}
!167 = !{!"8402"}
!168 = !{!"8403"}
!169 = !{!"8404"}
!170 = !{!"8405"}
!171 = !{!"8406"}
!172 = !{!"8407"}
!173 = !{!"8408"}
!174 = !{!"8409"}
!175 = !{!"8410"}
!176 = !{!"8411"}
!177 = !{!"8412"}
!178 = !{!"8413"}
!179 = !{!"8414"}
!180 = !{!"8415"}
!181 = !{!"8416"}
!182 = distinct !{!182, !183}
!183 = !{!"llvm.loop.mustprogress"}
!184 = !{!"8417"}
!185 = !{!"8418"}
!186 = !{!"8419"}
!187 = !{!"8420"}
!188 = !{!"8421"}
!189 = !{!"8422"}
!190 = !{!"8423"}
!191 = !{!"8424"}
!192 = !{!"8425"}
!193 = !{!"8426"}
!194 = !{!"8427"}
!195 = !{!"8428"}
!196 = !{!"8429"}
!197 = !{!"8430"}
