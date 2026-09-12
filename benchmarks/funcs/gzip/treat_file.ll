; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@ascii = external dso_local global i32, align 4
@to_stdout = external dso_local global i32, align 4
@decompress = external dso_local global i32, align 4
@force = external dso_local global i32, align 4
@no_name = external dso_local global i32, align 4
@no_time = external dso_local global i32, align 4
@recursive = external dso_local global i32, align 4
@list = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@quiet = external dso_local global i32, align 4
@test = external dso_local global i32, align 4
@method = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@.str.16 = external hidden unnamed_addr constant [7 x i8], align 1
@work = external dso_local global ptr, align 8
@progname = external dso_local global ptr, align 8
@ifd = external dso_local global i32, align 4
@ofd = external dso_local global i32, align 4
@ifname = external dso_local global [1024 x i8], align 16
@bytes_in = external dso_local global i64, align 8
@bytes_out = external dso_local global i64, align 8
@ofname = external dso_local global [1024 x i8], align 16
@save_orig_name = external dso_local global i32, align 4
@time_stamp = external dso_local global i64, align 8
@header_bytes = external dso_local global i64, align 8
@part_nb = external dso_local global i32, align 4
@ifile_size = external dso_local global i64, align 8
@istat = external dso_local global %struct.stat, align 8
@.str.123 = external hidden unnamed_addr constant [2 x i8], align 1
@stdout = external global ptr, align 8
@.str.149 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.150 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.151 = external hidden unnamed_addr constant [55 x i8], align 1
@.str.152 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.153 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.154 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.155 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.156 = external hidden unnamed_addr constant [21 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define hidden void @treat_file(ptr noundef %iname) #2 {
entry:
  %iname.addr = alloca ptr, align 8, !mymd !6
  %cflag = alloca i32, align 4, !mymd !7
  %st = alloca %struct.stat, align 8, !mymd !8
  store ptr %iname, ptr %iname.addr, align 8, !mymd !9
  %0 = load ptr, ptr %iname.addr, align 8, !mymd !10
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.149) #5, !mymd !11
  %cmp = icmp eq i32 %call, 0, !mymd !12
  br i1 %cmp, label %if.then, label %if.end, !mymd !13

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @to_stdout, align 4, !mymd !14
  store i32 %1, ptr %cflag, align 4, !mymd !15
  call void @treat_stdin(), !mymd !16
  %2 = load i32, ptr %cflag, align 4, !mymd !17
  store i32 %2, ptr @to_stdout, align 4, !mymd !18
  br label %if.end155, !mymd !19

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %iname.addr, align 8, !mymd !20
  %call1 = call i32 @get_istat(ptr noundef %3, ptr noundef @istat), !mymd !21
  %cmp2 = icmp ne i32 %call1, 0, !mymd !22
  br i1 %cmp2, label %if.then3, label %if.end4, !mymd !23

if.then3:                                         ; preds = %if.end
  br label %if.end155, !mymd !24

if.end4:                                          ; preds = %if.end
  %4 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @istat, i32 0, i32 3), align 8, !mymd !25
  %and = and i32 %4, 61440, !mymd !26
  %cmp5 = icmp eq i32 %and, 16384, !mymd !27
  br i1 %cmp5, label %if.then6, label %if.end16, !mymd !28

if.then6:                                         ; preds = %if.end4
  %5 = load i32, ptr @recursive, align 4, !mymd !29
  %tobool = icmp ne i32 %5, 0, !mymd !30
  br i1 %tobool, label %if.then7, label %if.else, !mymd !31

if.then7:                                         ; preds = %if.then6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %st, ptr align 8 @istat, i64 144, i1 false), !mymd !32
  %6 = load ptr, ptr %iname.addr, align 8, !mymd !33
  call void @treat_dir(ptr noundef %6), !mymd !34
  %7 = load ptr, ptr %iname.addr, align 8, !mymd !35
  call void @reset_times(ptr noundef %7, ptr noundef %st), !mymd !36
  br label %if.end15, !mymd !37

if.else:                                          ; preds = %if.then6
  %8 = load i32, ptr @quiet, align 4, !mymd !38
  %tobool8 = icmp ne i32 %8, 0, !mymd !39
  br i1 %tobool8, label %if.end11, label %if.then9, !mymd !40

if.then9:                                         ; preds = %if.else
  %9 = load ptr, ptr @stderr, align 8, !mymd !41
  %10 = load ptr, ptr @progname, align 8, !mymd !42
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.150, ptr noundef %10, ptr noundef @ifname) #6, !mymd !43
  br label %if.end11, !mymd !44

if.end11:                                         ; preds = %if.then9, %if.else
  %11 = load i32, ptr @exit_code, align 4, !mymd !45
  %cmp12 = icmp eq i32 %11, 0, !mymd !46
  br i1 %cmp12, label %if.then13, label %if.end14, !mymd !47

if.then13:                                        ; preds = %if.end11
  store i32 2, ptr @exit_code, align 4, !mymd !48
  br label %if.end14, !mymd !49

if.end14:                                         ; preds = %if.then13, %if.end11
  br label %if.end15, !mymd !50

if.end15:                                         ; preds = %if.end14, %if.then7
  br label %if.end155, !mymd !51

if.end16:                                         ; preds = %if.end4
  %12 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @istat, i32 0, i32 3), align 8, !mymd !52
  %and17 = and i32 %12, 61440, !mymd !53
  %cmp18 = icmp eq i32 %and17, 32768, !mymd !54
  br i1 %cmp18, label %if.end27, label %if.then19, !mymd !55

if.then19:                                        ; preds = %if.end16
  %13 = load i32, ptr @quiet, align 4, !mymd !56
  %tobool20 = icmp ne i32 %13, 0, !mymd !57
  br i1 %tobool20, label %if.end23, label %if.then21, !mymd !58

if.then21:                                        ; preds = %if.then19
  %14 = load ptr, ptr @stderr, align 8, !mymd !59
  %15 = load ptr, ptr @progname, align 8, !mymd !60
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.151, ptr noundef %15, ptr noundef @ifname) #6, !mymd !61
  br label %if.end23, !mymd !62

if.end23:                                         ; preds = %if.then21, %if.then19
  %16 = load i32, ptr @exit_code, align 4, !mymd !63
  %cmp24 = icmp eq i32 %16, 0, !mymd !64
  br i1 %cmp24, label %if.then25, label %if.end26, !mymd !65

if.then25:                                        ; preds = %if.end23
  store i32 2, ptr @exit_code, align 4, !mymd !66
  br label %if.end26, !mymd !67

if.end26:                                         ; preds = %if.then25, %if.end23
  br label %if.end155, !mymd !68

if.end27:                                         ; preds = %if.end16
  %17 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @istat, i32 0, i32 2), align 8, !mymd !69
  %cmp28 = icmp ugt i64 %17, 1, !mymd !70
  br i1 %cmp28, label %land.lhs.true, label %if.end41, !mymd !71

land.lhs.true:                                    ; preds = %if.end27
  %18 = load i32, ptr @to_stdout, align 4, !mymd !72
  %tobool29 = icmp ne i32 %18, 0, !mymd !73
  br i1 %tobool29, label %if.end41, label %land.lhs.true30, !mymd !74

land.lhs.true30:                                  ; preds = %land.lhs.true
  %19 = load i32, ptr @force, align 4, !mymd !75
  %tobool31 = icmp ne i32 %19, 0, !mymd !76
  br i1 %tobool31, label %if.end41, label %if.then32, !mymd !77

if.then32:                                        ; preds = %land.lhs.true30
  %20 = load i32, ptr @quiet, align 4, !mymd !78
  %tobool33 = icmp ne i32 %20, 0, !mymd !79
  br i1 %tobool33, label %if.end37, label %if.then34, !mymd !80

if.then34:                                        ; preds = %if.then32
  %21 = load ptr, ptr @stderr, align 8, !mymd !81
  %22 = load ptr, ptr @progname, align 8, !mymd !82
  %23 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @istat, i32 0, i32 2), align 8, !mymd !83
  %sub = sub i64 %23, 1, !mymd !84
  %24 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @istat, i32 0, i32 2), align 8, !mymd !85
  %cmp35 = icmp ugt i64 %24, 2, !mymd !86
  %25 = zext i1 %cmp35 to i64, !mymd !87
  %cond = select i1 %cmp35, i32 115, i32 32, !mymd !88
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.152, ptr noundef %22, ptr noundef @ifname, i64 noundef %sub, i32 noundef %cond) #6, !mymd !89
  br label %if.end37, !mymd !90

if.end37:                                         ; preds = %if.then34, %if.then32
  %26 = load i32, ptr @exit_code, align 4, !mymd !91
  %cmp38 = icmp eq i32 %26, 0, !mymd !92
  br i1 %cmp38, label %if.then39, label %if.end40, !mymd !93

if.then39:                                        ; preds = %if.end37
  store i32 2, ptr @exit_code, align 4, !mymd !94
  br label %if.end40, !mymd !95

if.end40:                                         ; preds = %if.then39, %if.end37
  br label %if.end155, !mymd !96

if.end41:                                         ; preds = %land.lhs.true30, %land.lhs.true, %if.end27
  %27 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @istat, i32 0, i32 8), align 8, !mymd !97
  store i64 %27, ptr @ifile_size, align 8, !mymd !98
  %28 = load i32, ptr @no_time, align 4, !mymd !99
  %tobool42 = icmp ne i32 %28, 0, !mymd !100
  br i1 %tobool42, label %land.lhs.true43, label %cond.false, !mymd !101

land.lhs.true43:                                  ; preds = %if.end41
  %29 = load i32, ptr @list, align 4, !mymd !102
  %tobool44 = icmp ne i32 %29, 0, !mymd !103
  br i1 %tobool44, label %cond.false, label %cond.true, !mymd !104

cond.true:                                        ; preds = %land.lhs.true43
  br label %cond.end, !mymd !105

cond.false:                                       ; preds = %land.lhs.true43, %if.end41
  %30 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @istat, i32 0, i32 12), align 8, !mymd !106
  br label %cond.end, !mymd !107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond45 = phi i64 [ 0, %cond.true ], [ %30, %cond.false ], !mymd !108
  store i64 %cond45, ptr @time_stamp, align 8, !mymd !109
  %31 = load i32, ptr @to_stdout, align 4, !mymd !110
  %tobool46 = icmp ne i32 %31, 0, !mymd !111
  br i1 %tobool46, label %land.lhs.true47, label %if.else53, !mymd !112

land.lhs.true47:                                  ; preds = %cond.end
  %32 = load i32, ptr @list, align 4, !mymd !113
  %tobool48 = icmp ne i32 %32, 0, !mymd !114
  br i1 %tobool48, label %if.else53, label %land.lhs.true49, !mymd !115

land.lhs.true49:                                  ; preds = %land.lhs.true47
  %33 = load i32, ptr @test, align 4, !mymd !116
  %tobool50 = icmp ne i32 %33, 0, !mymd !117
  br i1 %tobool50, label %if.else53, label %if.then51, !mymd !118

if.then51:                                        ; preds = %land.lhs.true49
  %call52 = call ptr @strcpy(ptr noundef @ofname, ptr noundef @.str.16) #6, !mymd !119
  br label %if.end58, !mymd !120

if.else53:                                        ; preds = %land.lhs.true49, %land.lhs.true47, %cond.end
  %call54 = call i32 @make_ofname(), !mymd !121
  %cmp55 = icmp ne i32 %call54, 0, !mymd !122
  br i1 %cmp55, label %if.then56, label %if.end57, !mymd !123

if.then56:                                        ; preds = %if.else53
  br label %if.end155, !mymd !124

if.end57:                                         ; preds = %if.else53
  br label %if.end58, !mymd !125

if.end58:                                         ; preds = %if.end57, %if.then51
  %34 = load i32, ptr @ascii, align 4, !mymd !126
  %tobool59 = icmp ne i32 %34, 0, !mymd !127
  br i1 %tobool59, label %land.rhs, label %land.end, !mymd !128

land.rhs:                                         ; preds = %if.end58
  %35 = load i32, ptr @decompress, align 4, !mymd !129
  %tobool60 = icmp ne i32 %35, 0, !mymd !130
  %lnot = xor i1 %tobool60, true, !mymd !131
  br label %land.end, !mymd !132

land.end:                                         ; preds = %land.rhs, %if.end58
  %36 = phi i1 [ false, %if.end58 ], [ %lnot, %land.rhs ], !mymd !133
  %37 = zext i1 %36 to i64, !mymd !134
  %cond61 = select i1 %36, i32 0, i32 0, !mymd !135
  %call62 = call i32 (ptr, i32, ...) @open(ptr noundef @ifname, i32 noundef %cond61, i32 noundef 384), !mymd !136
  store i32 %call62, ptr @ifd, align 4, !mymd !137
  %38 = load i32, ptr @ifd, align 4, !mymd !138
  %cmp63 = icmp eq i32 %38, -1, !mymd !139
  br i1 %cmp63, label %if.then64, label %if.end65, !mymd !140

if.then64:                                        ; preds = %land.end
  call void @progerror(ptr noundef @ifname), !mymd !141
  br label %if.end155, !mymd !142

if.end65:                                         ; preds = %land.end
  call void @clear_bufs(), !mymd !143
  store i32 0, ptr @part_nb, align 4, !mymd !144
  %39 = load i32, ptr @decompress, align 4, !mymd !145
  %tobool66 = icmp ne i32 %39, 0, !mymd !146
  br i1 %tobool66, label %if.then67, label %if.end73, !mymd !147

if.then67:                                        ; preds = %if.end65
  %40 = load i32, ptr @ifd, align 4, !mymd !148
  %call68 = call i32 @get_method(i32 noundef %40), !mymd !149
  store i32 %call68, ptr @method, align 4, !mymd !150
  %41 = load i32, ptr @method, align 4, !mymd !151
  %cmp69 = icmp slt i32 %41, 0, !mymd !152
  br i1 %cmp69, label %if.then70, label %if.end72, !mymd !153

if.then70:                                        ; preds = %if.then67
  %42 = load i32, ptr @ifd, align 4, !mymd !154
  %call71 = call i32 @close(i32 noundef %42), !mymd !155
  br label %if.end155, !mymd !156

if.end72:                                         ; preds = %if.then67
  br label %if.end73, !mymd !157

if.end73:                                         ; preds = %if.end72, %if.end65
  %43 = load i32, ptr @list, align 4, !mymd !158
  %tobool74 = icmp ne i32 %43, 0, !mymd !159
  br i1 %tobool74, label %if.then75, label %if.end77, !mymd !160

if.then75:                                        ; preds = %if.end73
  %44 = load i32, ptr @ifd, align 4, !mymd !161
  %45 = load i32, ptr @method, align 4, !mymd !162
  call void @do_list(i32 noundef %44, i32 noundef %45), !mymd !163
  %46 = load i32, ptr @ifd, align 4, !mymd !164
  %call76 = call i32 @close(i32 noundef %46), !mymd !165
  br label %if.end155, !mymd !166

if.end77:                                         ; preds = %if.end73
  %47 = load i32, ptr @to_stdout, align 4, !mymd !167
  %tobool78 = icmp ne i32 %47, 0, !mymd !168
  br i1 %tobool78, label %if.then79, label %if.else81, !mymd !169

if.then79:                                        ; preds = %if.end77
  %48 = load ptr, ptr @stdout, align 8, !mymd !170
  %call80 = call i32 @fileno(ptr noundef %48) #6, !mymd !171
  store i32 %call80, ptr @ofd, align 4, !mymd !172
  br label %if.end96, !mymd !173

if.else81:                                        ; preds = %if.end77
  %call82 = call i32 @create_outfile(), !mymd !174
  %cmp83 = icmp ne i32 %call82, 0, !mymd !175
  br i1 %cmp83, label %if.then84, label %if.end85, !mymd !176

if.then84:                                        ; preds = %if.else81
  br label %if.end155, !mymd !177

if.end85:                                         ; preds = %if.else81
  %49 = load i32, ptr @decompress, align 4, !mymd !178
  %tobool86 = icmp ne i32 %49, 0, !mymd !179
  br i1 %tobool86, label %if.end95, label %land.lhs.true87, !mymd !180

land.lhs.true87:                                  ; preds = %if.end85
  %50 = load i32, ptr @save_orig_name, align 4, !mymd !181
  %tobool88 = icmp ne i32 %50, 0, !mymd !182
  br i1 %tobool88, label %land.lhs.true89, label %if.end95, !mymd !183

land.lhs.true89:                                  ; preds = %land.lhs.true87
  %51 = load i32, ptr @verbose, align 4, !mymd !184
  %tobool90 = icmp ne i32 %51, 0, !mymd !185
  br i1 %tobool90, label %if.end95, label %land.lhs.true91, !mymd !186

land.lhs.true91:                                  ; preds = %land.lhs.true89
  %52 = load i32, ptr @quiet, align 4, !mymd !187
  %tobool92 = icmp ne i32 %52, 0, !mymd !188
  br i1 %tobool92, label %if.end95, label %if.then93, !mymd !189

if.then93:                                        ; preds = %land.lhs.true91
  %53 = load ptr, ptr @stderr, align 8, !mymd !190
  %54 = load ptr, ptr @progname, align 8, !mymd !191
  %call94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.153, ptr noundef %54, ptr noundef @ifname, ptr noundef @ofname) #6, !mymd !192
  br label %if.end95, !mymd !193

if.end95:                                         ; preds = %if.then93, %land.lhs.true91, %land.lhs.true89, %land.lhs.true87, %if.end85
  br label %if.end96, !mymd !194

if.end96:                                         ; preds = %if.end95, %if.then79
  %55 = load i32, ptr @save_orig_name, align 4, !mymd !195
  %tobool97 = icmp ne i32 %55, 0, !mymd !196
  br i1 %tobool97, label %if.end101, label %if.then98, !mymd !197

if.then98:                                        ; preds = %if.end96
  %56 = load i32, ptr @no_name, align 4, !mymd !198
  %tobool99 = icmp ne i32 %56, 0, !mymd !199
  %lnot100 = xor i1 %tobool99, true, !mymd !200
  %lnot.ext = zext i1 %lnot100 to i32, !mymd !201
  store i32 %lnot.ext, ptr @save_orig_name, align 4, !mymd !202
  br label %if.end101, !mymd !203

if.end101:                                        ; preds = %if.then98, %if.end96
  %57 = load i32, ptr @verbose, align 4, !mymd !204
  %tobool102 = icmp ne i32 %57, 0, !mymd !205
  br i1 %tobool102, label %if.then103, label %if.end105, !mymd !206

if.then103:                                       ; preds = %if.end101
  %58 = load ptr, ptr @stderr, align 8, !mymd !207
  %call104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.154, ptr noundef @ifname) #6, !mymd !208
  br label %if.end105, !mymd !209

if.end105:                                        ; preds = %if.then103, %if.end101
  br label %for.cond, !mymd !210

for.cond:                                         ; preds = %if.end117, %if.end105
  %59 = load ptr, ptr @work, align 8, !mymd !211
  %60 = load i32, ptr @ifd, align 4, !mymd !212
  %61 = load i32, ptr @ofd, align 4, !mymd !213
  %call106 = call i32 %59(i32 noundef %60, i32 noundef %61), !mymd !214
  %cmp107 = icmp ne i32 %call106, 0, !mymd !215
  br i1 %cmp107, label %if.then108, label %if.end109, !mymd !216

if.then108:                                       ; preds = %for.cond
  store i32 -1, ptr @method, align 4, !mymd !217
  br label %for.end, !mymd !218

if.end109:                                        ; preds = %for.cond
  %call110 = call i32 @input_eof(), !mymd !219
  %tobool111 = icmp ne i32 %call110, 0, !mymd !220
  br i1 %tobool111, label %if.then112, label %if.end113, !mymd !221

if.then112:                                       ; preds = %if.end109
  br label %for.end, !mymd !222

if.end113:                                        ; preds = %if.end109
  %62 = load i32, ptr @ifd, align 4, !mymd !223
  %call114 = call i32 @get_method(i32 noundef %62), !mymd !224
  store i32 %call114, ptr @method, align 4, !mymd !225
  %63 = load i32, ptr @method, align 4, !mymd !226
  %cmp115 = icmp slt i32 %63, 0, !mymd !227
  br i1 %cmp115, label %if.then116, label %if.end117, !mymd !228

if.then116:                                       ; preds = %if.end113
  br label %for.end, !mymd !229

if.end117:                                        ; preds = %if.end113
  store i64 0, ptr @bytes_out, align 8, !mymd !230
  br label %for.cond, !mymd !231

for.end:                                          ; preds = %if.then116, %if.then112, %if.then108
  %64 = load i32, ptr @ifd, align 4, !mymd !232
  %call118 = call i32 @close(i32 noundef %64), !mymd !233
  %65 = load i32, ptr @to_stdout, align 4, !mymd !234
  %tobool119 = icmp ne i32 %65, 0, !mymd !235
  br i1 %tobool119, label %if.end125, label %if.then120, !mymd !236

if.then120:                                       ; preds = %for.end
  call void @copy_stat(ptr noundef @istat), !mymd !237
  %66 = load i32, ptr @ofd, align 4, !mymd !238
  %call121 = call i32 @close(i32 noundef %66), !mymd !239
  %tobool122 = icmp ne i32 %call121, 0, !mymd !240
  br i1 %tobool122, label %if.then123, label %if.end124, !mymd !241

if.then123:                                       ; preds = %if.then120
  call void @write_error(), !mymd !242
  br label %if.end124, !mymd !243

if.end124:                                        ; preds = %if.then123, %if.then120
  br label %if.end125, !mymd !244

if.end125:                                        ; preds = %if.end124, %for.end
  %67 = load i32, ptr @method, align 4, !mymd !245
  %cmp126 = icmp eq i32 %67, -1, !mymd !246
  br i1 %cmp126, label %if.then127, label %if.end132, !mymd !247

if.then127:                                       ; preds = %if.end125
  %68 = load i32, ptr @to_stdout, align 4, !mymd !248
  %tobool128 = icmp ne i32 %68, 0, !mymd !249
  br i1 %tobool128, label %if.end131, label %if.then129, !mymd !250

if.then129:                                       ; preds = %if.then127
  %call130 = call i32 @xunlink(ptr noundef @ofname), !mymd !251
  br label %if.end131, !mymd !252

if.end131:                                        ; preds = %if.then129, %if.then127
  br label %if.end155, !mymd !253

if.end132:                                        ; preds = %if.end125
  %69 = load i32, ptr @verbose, align 4, !mymd !254
  %tobool133 = icmp ne i32 %69, 0, !mymd !255
  br i1 %tobool133, label %if.then134, label %if.end155, !mymd !256

if.then134:                                       ; preds = %if.end132
  %70 = load i32, ptr @test, align 4, !mymd !257
  %tobool135 = icmp ne i32 %70, 0, !mymd !258
  br i1 %tobool135, label %if.then136, label %if.else138, !mymd !259

if.then136:                                       ; preds = %if.then134
  %71 = load ptr, ptr @stderr, align 8, !mymd !260
  %call137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.155) #6, !mymd !261
  br label %if.end147, !mymd !262

if.else138:                                       ; preds = %if.then134
  %72 = load i32, ptr @decompress, align 4, !mymd !263
  %tobool139 = icmp ne i32 %72, 0, !mymd !264
  br i1 %tobool139, label %if.then140, label %if.else143, !mymd !265

if.then140:                                       ; preds = %if.else138
  %73 = load i64, ptr @bytes_out, align 8, !mymd !266
  %74 = load i64, ptr @bytes_in, align 8, !mymd !267
  %75 = load i64, ptr @header_bytes, align 8, !mymd !268
  %sub141 = sub nsw i64 %74, %75, !mymd !269
  %sub142 = sub nsw i64 %73, %sub141, !mymd !270
  %76 = load i64, ptr @bytes_out, align 8, !mymd !271
  %77 = load ptr, ptr @stderr, align 8, !mymd !272
  call void @display_ratio(i64 noundef %sub142, i64 noundef %76, ptr noundef %77), !mymd !273
  br label %if.end146, !mymd !274

if.else143:                                       ; preds = %if.else138
  %78 = load i64, ptr @bytes_in, align 8, !mymd !275
  %79 = load i64, ptr @bytes_out, align 8, !mymd !276
  %80 = load i64, ptr @header_bytes, align 8, !mymd !277
  %sub144 = sub nsw i64 %79, %80, !mymd !278
  %sub145 = sub nsw i64 %78, %sub144, !mymd !279
  %81 = load i64, ptr @bytes_in, align 8, !mymd !280
  %82 = load ptr, ptr @stderr, align 8, !mymd !281
  call void @display_ratio(i64 noundef %sub145, i64 noundef %81, ptr noundef %82), !mymd !282
  br label %if.end146, !mymd !283

if.end146:                                        ; preds = %if.else143, %if.then140
  br label %if.end147, !mymd !284

if.end147:                                        ; preds = %if.end146, %if.then136
  %83 = load i32, ptr @test, align 4, !mymd !285
  %tobool148 = icmp ne i32 %83, 0, !mymd !286
  br i1 %tobool148, label %if.end153, label %land.lhs.true149, !mymd !287

land.lhs.true149:                                 ; preds = %if.end147
  %84 = load i32, ptr @to_stdout, align 4, !mymd !288
  %tobool150 = icmp ne i32 %84, 0, !mymd !289
  br i1 %tobool150, label %if.end153, label %if.then151, !mymd !290

if.then151:                                       ; preds = %land.lhs.true149
  %85 = load ptr, ptr @stderr, align 8, !mymd !291
  %call152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.156, ptr noundef @ofname) #6, !mymd !292
  br label %if.end153, !mymd !293

if.end153:                                        ; preds = %if.then151, %land.lhs.true149, %if.end147
  %86 = load ptr, ptr @stderr, align 8, !mymd !294
  %call154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.123) #6, !mymd !295
  br label %if.end155, !mymd !296

if.end155:                                        ; preds = %if.end153, %if.end132, %if.end131, %if.then84, %if.then75, %if.then70, %if.then64, %if.then56, %if.end40, %if.end26, %if.end15, %if.then3, %if.then
  ret void, !mymd !297
}

; Function Attrs: noinline nounwind uwtable
declare hidden void @treat_stdin() #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @do_list(i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
declare dso_local void @clear_bufs() #2

; Function Attrs: noinline nounwind uwtable
declare dso_local void @write_error() #2

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @xunlink(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @display_ratio(i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare hidden void @progerror(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @get_method(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @input_eof() #2

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @get_istat(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @treat_dir(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @reset_times(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @make_ofname() #2

declare i32 @open(ptr noundef, i32 noundef, ...) #4

declare i32 @close(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @create_outfile() #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @copy_stat(ptr noundef) #2

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"4485"}
!7 = !{!"4486"}
!8 = !{!"4487"}
!9 = !{!"4488"}
!10 = !{!"4489"}
!11 = !{!"4490"}
!12 = !{!"4491"}
!13 = !{!"4492"}
!14 = !{!"4493"}
!15 = !{!"4494"}
!16 = !{!"4495"}
!17 = !{!"4496"}
!18 = !{!"4497"}
!19 = !{!"4498"}
!20 = !{!"4499"}
!21 = !{!"4500"}
!22 = !{!"4501"}
!23 = !{!"4502"}
!24 = !{!"4503"}
!25 = !{!"4504"}
!26 = !{!"4505"}
!27 = !{!"4506"}
!28 = !{!"4507"}
!29 = !{!"4508"}
!30 = !{!"4509"}
!31 = !{!"4510"}
!32 = !{!"4511"}
!33 = !{!"4512"}
!34 = !{!"4513"}
!35 = !{!"4514"}
!36 = !{!"4515"}
!37 = !{!"4516"}
!38 = !{!"4517"}
!39 = !{!"4518"}
!40 = !{!"4519"}
!41 = !{!"4520"}
!42 = !{!"4521"}
!43 = !{!"4522"}
!44 = !{!"4523"}
!45 = !{!"4524"}
!46 = !{!"4525"}
!47 = !{!"4526"}
!48 = !{!"4527"}
!49 = !{!"4528"}
!50 = !{!"4529"}
!51 = !{!"4530"}
!52 = !{!"4531"}
!53 = !{!"4532"}
!54 = !{!"4533"}
!55 = !{!"4534"}
!56 = !{!"4535"}
!57 = !{!"4536"}
!58 = !{!"4537"}
!59 = !{!"4538"}
!60 = !{!"4539"}
!61 = !{!"4540"}
!62 = !{!"4541"}
!63 = !{!"4542"}
!64 = !{!"4543"}
!65 = !{!"4544"}
!66 = !{!"4545"}
!67 = !{!"4546"}
!68 = !{!"4547"}
!69 = !{!"4548"}
!70 = !{!"4549"}
!71 = !{!"4550"}
!72 = !{!"4551"}
!73 = !{!"4552"}
!74 = !{!"4553"}
!75 = !{!"4554"}
!76 = !{!"4555"}
!77 = !{!"4556"}
!78 = !{!"4557"}
!79 = !{!"4558"}
!80 = !{!"4559"}
!81 = !{!"4560"}
!82 = !{!"4561"}
!83 = !{!"4562"}
!84 = !{!"4563"}
!85 = !{!"4564"}
!86 = !{!"4565"}
!87 = !{!"4566"}
!88 = !{!"4567"}
!89 = !{!"4568"}
!90 = !{!"4569"}
!91 = !{!"4570"}
!92 = !{!"4571"}
!93 = !{!"4572"}
!94 = !{!"4573"}
!95 = !{!"4574"}
!96 = !{!"4575"}
!97 = !{!"4576"}
!98 = !{!"4577"}
!99 = !{!"4578"}
!100 = !{!"4579"}
!101 = !{!"4580"}
!102 = !{!"4581"}
!103 = !{!"4582"}
!104 = !{!"4583"}
!105 = !{!"4584"}
!106 = !{!"4585"}
!107 = !{!"4586"}
!108 = !{!"4587"}
!109 = !{!"4588"}
!110 = !{!"4589"}
!111 = !{!"4590"}
!112 = !{!"4591"}
!113 = !{!"4592"}
!114 = !{!"4593"}
!115 = !{!"4594"}
!116 = !{!"4595"}
!117 = !{!"4596"}
!118 = !{!"4597"}
!119 = !{!"4598"}
!120 = !{!"4599"}
!121 = !{!"4600"}
!122 = !{!"4601"}
!123 = !{!"4602"}
!124 = !{!"4603"}
!125 = !{!"4604"}
!126 = !{!"4605"}
!127 = !{!"4606"}
!128 = !{!"4607"}
!129 = !{!"4608"}
!130 = !{!"4609"}
!131 = !{!"4610"}
!132 = !{!"4611"}
!133 = !{!"4612"}
!134 = !{!"4613"}
!135 = !{!"4614"}
!136 = !{!"4615"}
!137 = !{!"4616"}
!138 = !{!"4617"}
!139 = !{!"4618"}
!140 = !{!"4619"}
!141 = !{!"4620"}
!142 = !{!"4621"}
!143 = !{!"4622"}
!144 = !{!"4623"}
!145 = !{!"4624"}
!146 = !{!"4625"}
!147 = !{!"4626"}
!148 = !{!"4627"}
!149 = !{!"4628"}
!150 = !{!"4629"}
!151 = !{!"4630"}
!152 = !{!"4631"}
!153 = !{!"4632"}
!154 = !{!"4633"}
!155 = !{!"4634"}
!156 = !{!"4635"}
!157 = !{!"4636"}
!158 = !{!"4637"}
!159 = !{!"4638"}
!160 = !{!"4639"}
!161 = !{!"4640"}
!162 = !{!"4641"}
!163 = !{!"4642"}
!164 = !{!"4643"}
!165 = !{!"4644"}
!166 = !{!"4645"}
!167 = !{!"4646"}
!168 = !{!"4647"}
!169 = !{!"4648"}
!170 = !{!"4649"}
!171 = !{!"4650"}
!172 = !{!"4651"}
!173 = !{!"4652"}
!174 = !{!"4653"}
!175 = !{!"4654"}
!176 = !{!"4655"}
!177 = !{!"4656"}
!178 = !{!"4657"}
!179 = !{!"4658"}
!180 = !{!"4659"}
!181 = !{!"4660"}
!182 = !{!"4661"}
!183 = !{!"4662"}
!184 = !{!"4663"}
!185 = !{!"4664"}
!186 = !{!"4665"}
!187 = !{!"4666"}
!188 = !{!"4667"}
!189 = !{!"4668"}
!190 = !{!"4669"}
!191 = !{!"4670"}
!192 = !{!"4671"}
!193 = !{!"4672"}
!194 = !{!"4673"}
!195 = !{!"4674"}
!196 = !{!"4675"}
!197 = !{!"4676"}
!198 = !{!"4677"}
!199 = !{!"4678"}
!200 = !{!"4679"}
!201 = !{!"4680"}
!202 = !{!"4681"}
!203 = !{!"4682"}
!204 = !{!"4683"}
!205 = !{!"4684"}
!206 = !{!"4685"}
!207 = !{!"4686"}
!208 = !{!"4687"}
!209 = !{!"4688"}
!210 = !{!"4689"}
!211 = !{!"4690"}
!212 = !{!"4691"}
!213 = !{!"4692"}
!214 = !{!"4693"}
!215 = !{!"4694"}
!216 = !{!"4695"}
!217 = !{!"4696"}
!218 = !{!"4697"}
!219 = !{!"4698"}
!220 = !{!"4699"}
!221 = !{!"4700"}
!222 = !{!"4701"}
!223 = !{!"4702"}
!224 = !{!"4703"}
!225 = !{!"4704"}
!226 = !{!"4705"}
!227 = !{!"4706"}
!228 = !{!"4707"}
!229 = !{!"4708"}
!230 = !{!"4709"}
!231 = !{!"4710"}
!232 = !{!"4711"}
!233 = !{!"4712"}
!234 = !{!"4713"}
!235 = !{!"4714"}
!236 = !{!"4715"}
!237 = !{!"4716"}
!238 = !{!"4717"}
!239 = !{!"4718"}
!240 = !{!"4719"}
!241 = !{!"4720"}
!242 = !{!"4721"}
!243 = !{!"4722"}
!244 = !{!"4723"}
!245 = !{!"4724"}
!246 = !{!"4725"}
!247 = !{!"4726"}
!248 = !{!"4727"}
!249 = !{!"4728"}
!250 = !{!"4729"}
!251 = !{!"4730"}
!252 = !{!"4731"}
!253 = !{!"4732"}
!254 = !{!"4733"}
!255 = !{!"4734"}
!256 = !{!"4735"}
!257 = !{!"4736"}
!258 = !{!"4737"}
!259 = !{!"4738"}
!260 = !{!"4739"}
!261 = !{!"4740"}
!262 = !{!"4741"}
!263 = !{!"4742"}
!264 = !{!"4743"}
!265 = !{!"4744"}
!266 = !{!"4745"}
!267 = !{!"4746"}
!268 = !{!"4747"}
!269 = !{!"4748"}
!270 = !{!"4749"}
!271 = !{!"4750"}
!272 = !{!"4751"}
!273 = !{!"4752"}
!274 = !{!"4753"}
!275 = !{!"4754"}
!276 = !{!"4755"}
!277 = !{!"4756"}
!278 = !{!"4757"}
!279 = !{!"4758"}
!280 = !{!"4759"}
!281 = !{!"4760"}
!282 = !{!"4761"}
!283 = !{!"4762"}
!284 = !{!"4763"}
!285 = !{!"4764"}
!286 = !{!"4765"}
!287 = !{!"4766"}
!288 = !{!"4767"}
!289 = !{!"4768"}
!290 = !{!"4769"}
!291 = !{!"4770"}
!292 = !{!"4771"}
!293 = !{!"4772"}
!294 = !{!"4773"}
!295 = !{!"4774"}
!296 = !{!"4775"}
!297 = !{!"4776"}
