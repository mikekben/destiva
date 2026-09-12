; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oe_options = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, float, i32, i32, i32, float, i32 }

@.str.3 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.5 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.6 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.21 = external hidden unnamed_addr constant [5 x i8], align 1
@stderr = external global ptr, align 8
@.str.190 = external hidden unnamed_addr constant [68 x i8], align 1
@.str.191 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @build_comments(ptr noundef %vc, ptr noundef %opt, i32 noundef %filenum, ptr noundef %artist, ptr noundef %album, ptr noundef %title, ptr noundef %tracknum, ptr noundef %date, ptr noundef %genre) #1 {
entry:
  %vc.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %filenum.addr = alloca i32, align 4
  %artist.addr = alloca ptr, align 8
  %album.addr = alloca ptr, align 8
  %title.addr = alloca ptr, align 8
  %tracknum.addr = alloca ptr, align 8
  %date.addr = alloca ptr, align 8
  %genre.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  store i32 %filenum, ptr %filenum.addr, align 4
  store ptr %artist, ptr %artist.addr, align 8
  store ptr %album, ptr %album.addr, align 8
  store ptr %title, ptr %title.addr, align 8
  store ptr %tracknum, ptr %tracknum.addr, align 8
  store ptr %date, ptr %date.addr, align 8
  store ptr %genre, ptr %genre.addr, align 8
  %0 = load ptr, ptr %vc.addr, align 8
  call void @vorbis_comment_init(ptr noundef %0)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %opt.addr, align 8
  %comment_count = getelementptr inbounds nuw %struct.oe_options, ptr %2, i32 0, i32 7
  %3 = load i32, ptr %comment_count, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %vc.addr, align 8
  %5 = load ptr, ptr %opt.addr, align 8
  %6 = load ptr, ptr %opt.addr, align 8
  %comments = getelementptr inbounds nuw %struct.oe_options, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %comments, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  call void @add_tag(ptr noundef %4, ptr noundef %5, ptr noundef null, ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %opt.addr, align 8
  %title_count = getelementptr inbounds nuw %struct.oe_options, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %title_count, align 8
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %for.end
  %13 = load i32, ptr %filenum.addr, align 4
  %14 = load ptr, ptr %opt.addr, align 8
  %title_count1 = getelementptr inbounds nuw %struct.oe_options, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %title_count1, align 8
  %cmp2 = icmp sge i32 %13, %15
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %16 = load ptr, ptr %opt.addr, align 8
  %quiet = getelementptr inbounds nuw %struct.oe_options, ptr %16, i32 0, i32 17
  %17 = load i32, ptr %quiet, align 8
  %tobool4 = icmp ne i32 %17, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then3
  %18 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.190) #2
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %19 = load ptr, ptr %opt.addr, align 8
  %title_count6 = getelementptr inbounds nuw %struct.oe_options, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %title_count6, align 8
  %sub = sub nsw i32 %20, 1
  store i32 %sub, ptr %i, align 4
  br label %if.end7

if.else:                                          ; preds = %if.then
  %21 = load i32, ptr %filenum.addr, align 4
  store i32 %21, ptr %i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %22 = load ptr, ptr %opt.addr, align 8
  %title8 = getelementptr inbounds nuw %struct.oe_options, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %title8, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %23, i64 %idxprom9
  %25 = load ptr, ptr %arrayidx10, align 8
  %26 = load ptr, ptr %title.addr, align 8
  store ptr %25, ptr %26, align 8
  %27 = load ptr, ptr %vc.addr, align 8
  %28 = load ptr, ptr %opt.addr, align 8
  %29 = load ptr, ptr %opt.addr, align 8
  %title11 = getelementptr inbounds nuw %struct.oe_options, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %title11, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %31 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %30, i64 %idxprom12
  %32 = load ptr, ptr %arrayidx13, align 8
  call void @add_tag(ptr noundef %27, ptr noundef %28, ptr noundef @.str.5, ptr noundef %32)
  br label %if.end14

if.end14:                                         ; preds = %if.end7, %for.end
  %33 = load ptr, ptr %opt.addr, align 8
  %artist_count = getelementptr inbounds nuw %struct.oe_options, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %artist_count, align 8
  %tobool15 = icmp ne i32 %34, 0
  br i1 %tobool15, label %if.then16, label %if.end30

if.then16:                                        ; preds = %if.end14
  %35 = load i32, ptr %filenum.addr, align 4
  %36 = load ptr, ptr %opt.addr, align 8
  %artist_count17 = getelementptr inbounds nuw %struct.oe_options, ptr %36, i32 0, i32 3
  %37 = load i32, ptr %artist_count17, align 8
  %cmp18 = icmp sge i32 %35, %37
  br i1 %cmp18, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.then16
  %38 = load ptr, ptr %opt.addr, align 8
  %artist_count20 = getelementptr inbounds nuw %struct.oe_options, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %artist_count20, align 8
  %sub21 = sub nsw i32 %39, 1
  store i32 %sub21, ptr %i, align 4
  br label %if.end23

if.else22:                                        ; preds = %if.then16
  %40 = load i32, ptr %filenum.addr, align 4
  store i32 %40, ptr %i, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then19
  %41 = load ptr, ptr %opt.addr, align 8
  %artist24 = getelementptr inbounds nuw %struct.oe_options, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %artist24, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %43 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %42, i64 %idxprom25
  %44 = load ptr, ptr %arrayidx26, align 8
  %45 = load ptr, ptr %artist.addr, align 8
  store ptr %44, ptr %45, align 8
  %46 = load ptr, ptr %vc.addr, align 8
  %47 = load ptr, ptr %opt.addr, align 8
  %48 = load ptr, ptr %opt.addr, align 8
  %artist27 = getelementptr inbounds nuw %struct.oe_options, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %artist27, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %50 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %49, i64 %idxprom28
  %51 = load ptr, ptr %arrayidx29, align 8
  call void @add_tag(ptr noundef %46, ptr noundef %47, ptr noundef @.str.3, ptr noundef %51)
  br label %if.end30

if.end30:                                         ; preds = %if.end23, %if.end14
  %52 = load ptr, ptr %opt.addr, align 8
  %genre_count = getelementptr inbounds nuw %struct.oe_options, ptr %52, i32 0, i32 13
  %53 = load i32, ptr %genre_count, align 8
  %tobool31 = icmp ne i32 %53, 0
  br i1 %tobool31, label %if.then32, label %if.end46

if.then32:                                        ; preds = %if.end30
  %54 = load i32, ptr %filenum.addr, align 4
  %55 = load ptr, ptr %opt.addr, align 8
  %genre_count33 = getelementptr inbounds nuw %struct.oe_options, ptr %55, i32 0, i32 13
  %56 = load i32, ptr %genre_count33, align 8
  %cmp34 = icmp sge i32 %54, %56
  br i1 %cmp34, label %if.then35, label %if.else38

if.then35:                                        ; preds = %if.then32
  %57 = load ptr, ptr %opt.addr, align 8
  %genre_count36 = getelementptr inbounds nuw %struct.oe_options, ptr %57, i32 0, i32 13
  %58 = load i32, ptr %genre_count36, align 8
  %sub37 = sub nsw i32 %58, 1
  store i32 %sub37, ptr %i, align 4
  br label %if.end39

if.else38:                                        ; preds = %if.then32
  %59 = load i32, ptr %filenum.addr, align 4
  store i32 %59, ptr %i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then35
  %60 = load ptr, ptr %opt.addr, align 8
  %genre40 = getelementptr inbounds nuw %struct.oe_options, ptr %60, i32 0, i32 12
  %61 = load ptr, ptr %genre40, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %62 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %61, i64 %idxprom41
  %63 = load ptr, ptr %arrayidx42, align 8
  %64 = load ptr, ptr %genre.addr, align 8
  store ptr %63, ptr %64, align 8
  %65 = load ptr, ptr %vc.addr, align 8
  %66 = load ptr, ptr %opt.addr, align 8
  %67 = load ptr, ptr %opt.addr, align 8
  %genre43 = getelementptr inbounds nuw %struct.oe_options, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %genre43, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %69 to i64
  %arrayidx45 = getelementptr inbounds ptr, ptr %68, i64 %idxprom44
  %70 = load ptr, ptr %arrayidx45, align 8
  call void @add_tag(ptr noundef %65, ptr noundef %66, ptr noundef @.str.6, ptr noundef %70)
  br label %if.end46

if.end46:                                         ; preds = %if.end39, %if.end30
  %71 = load ptr, ptr %opt.addr, align 8
  %date_count = getelementptr inbounds nuw %struct.oe_options, ptr %71, i32 0, i32 11
  %72 = load i32, ptr %date_count, align 8
  %tobool47 = icmp ne i32 %72, 0
  br i1 %tobool47, label %if.then48, label %if.end61

if.then48:                                        ; preds = %if.end46
  %73 = load i32, ptr %filenum.addr, align 4
  %74 = load ptr, ptr %opt.addr, align 8
  %date_count49 = getelementptr inbounds nuw %struct.oe_options, ptr %74, i32 0, i32 11
  %75 = load i32, ptr %date_count49, align 8
  %cmp50 = icmp sge i32 %73, %75
  br i1 %cmp50, label %if.then51, label %if.else54

if.then51:                                        ; preds = %if.then48
  %76 = load ptr, ptr %opt.addr, align 8
  %date_count52 = getelementptr inbounds nuw %struct.oe_options, ptr %76, i32 0, i32 11
  %77 = load i32, ptr %date_count52, align 8
  %sub53 = sub nsw i32 %77, 1
  store i32 %sub53, ptr %i, align 4
  br label %if.end55

if.else54:                                        ; preds = %if.then48
  %78 = load i32, ptr %filenum.addr, align 4
  store i32 %78, ptr %i, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then51
  %79 = load ptr, ptr %opt.addr, align 8
  %dates = getelementptr inbounds nuw %struct.oe_options, ptr %79, i32 0, i32 10
  %80 = load ptr, ptr %dates, align 8
  %81 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %81 to i64
  %arrayidx57 = getelementptr inbounds ptr, ptr %80, i64 %idxprom56
  %82 = load ptr, ptr %arrayidx57, align 8
  %83 = load ptr, ptr %date.addr, align 8
  store ptr %82, ptr %83, align 8
  %84 = load ptr, ptr %vc.addr, align 8
  %85 = load ptr, ptr %opt.addr, align 8
  %86 = load ptr, ptr %opt.addr, align 8
  %dates58 = getelementptr inbounds nuw %struct.oe_options, ptr %86, i32 0, i32 10
  %87 = load ptr, ptr %dates58, align 8
  %88 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %88 to i64
  %arrayidx60 = getelementptr inbounds ptr, ptr %87, i64 %idxprom59
  %89 = load ptr, ptr %arrayidx60, align 8
  call void @add_tag(ptr noundef %84, ptr noundef %85, ptr noundef @.str.21, ptr noundef %89)
  br label %if.end61

if.end61:                                         ; preds = %if.end55, %if.end46
  %90 = load ptr, ptr %opt.addr, align 8
  %album_count = getelementptr inbounds nuw %struct.oe_options, ptr %90, i32 0, i32 5
  %91 = load i32, ptr %album_count, align 8
  %tobool62 = icmp ne i32 %91, 0
  br i1 %tobool62, label %if.then63, label %if.end77

if.then63:                                        ; preds = %if.end61
  %92 = load i32, ptr %filenum.addr, align 4
  %93 = load ptr, ptr %opt.addr, align 8
  %album_count64 = getelementptr inbounds nuw %struct.oe_options, ptr %93, i32 0, i32 5
  %94 = load i32, ptr %album_count64, align 8
  %cmp65 = icmp sge i32 %92, %94
  br i1 %cmp65, label %if.then66, label %if.else69

if.then66:                                        ; preds = %if.then63
  %95 = load ptr, ptr %opt.addr, align 8
  %album_count67 = getelementptr inbounds nuw %struct.oe_options, ptr %95, i32 0, i32 5
  %96 = load i32, ptr %album_count67, align 8
  %sub68 = sub nsw i32 %96, 1
  store i32 %sub68, ptr %i, align 4
  br label %if.end70

if.else69:                                        ; preds = %if.then63
  %97 = load i32, ptr %filenum.addr, align 4
  store i32 %97, ptr %i, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then66
  %98 = load ptr, ptr %opt.addr, align 8
  %album71 = getelementptr inbounds nuw %struct.oe_options, ptr %98, i32 0, i32 4
  %99 = load ptr, ptr %album71, align 8
  %100 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %100 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %99, i64 %idxprom72
  %101 = load ptr, ptr %arrayidx73, align 8
  %102 = load ptr, ptr %album.addr, align 8
  store ptr %101, ptr %102, align 8
  %103 = load ptr, ptr %vc.addr, align 8
  %104 = load ptr, ptr %opt.addr, align 8
  %105 = load ptr, ptr %opt.addr, align 8
  %album74 = getelementptr inbounds nuw %struct.oe_options, ptr %105, i32 0, i32 4
  %106 = load ptr, ptr %album74, align 8
  %107 = load i32, ptr %i, align 4
  %idxprom75 = sext i32 %107 to i64
  %arrayidx76 = getelementptr inbounds ptr, ptr %106, i64 %idxprom75
  %108 = load ptr, ptr %arrayidx76, align 8
  call void @add_tag(ptr noundef %103, ptr noundef %104, ptr noundef @.str.4, ptr noundef %108)
  br label %if.end77

if.end77:                                         ; preds = %if.end70, %if.end61
  %109 = load i32, ptr %filenum.addr, align 4
  %110 = load ptr, ptr %opt.addr, align 8
  %track_count = getelementptr inbounds nuw %struct.oe_options, ptr %110, i32 0, i32 9
  %111 = load i32, ptr %track_count, align 8
  %cmp78 = icmp slt i32 %109, %111
  br i1 %cmp78, label %if.then79, label %if.end86

if.then79:                                        ; preds = %if.end77
  %112 = load i32, ptr %filenum.addr, align 4
  store i32 %112, ptr %i, align 4
  %113 = load ptr, ptr %opt.addr, align 8
  %tracknum80 = getelementptr inbounds nuw %struct.oe_options, ptr %113, i32 0, i32 8
  %114 = load ptr, ptr %tracknum80, align 8
  %115 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %115 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %114, i64 %idxprom81
  %116 = load ptr, ptr %arrayidx82, align 8
  %117 = load ptr, ptr %tracknum.addr, align 8
  store ptr %116, ptr %117, align 8
  %118 = load ptr, ptr %vc.addr, align 8
  %119 = load ptr, ptr %opt.addr, align 8
  %120 = load ptr, ptr %opt.addr, align 8
  %tracknum83 = getelementptr inbounds nuw %struct.oe_options, ptr %120, i32 0, i32 8
  %121 = load ptr, ptr %tracknum83, align 8
  %122 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %122 to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %121, i64 %idxprom84
  %123 = load ptr, ptr %arrayidx85, align 8
  call void @add_tag(ptr noundef %118, ptr noundef %119, ptr noundef @.str.191, ptr noundef %123)
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %if.end77
  ret void
}

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_comment_init(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @add_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
