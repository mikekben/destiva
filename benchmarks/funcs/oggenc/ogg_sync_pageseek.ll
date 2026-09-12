; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }

@.str.157 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare dso_local void @ogg_page_checksum_set(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @ogg_sync_pageseek(ptr noundef %oy, ptr noundef %og) #3 {
entry:
  %retval = alloca i64, align 8
  %oy.addr = alloca ptr, align 8
  %og.addr = alloca ptr, align 8
  %page = alloca ptr, align 8
  %next = alloca ptr, align 8
  %bytes = alloca i64, align 8
  %headerbytes3 = alloca i32, align 4
  %i = alloca i32, align 4
  %chksum = alloca [4 x i8], align 1
  %log = alloca %struct.ogg_page, align 8
  %page50 = alloca ptr, align 8
  %bytes55 = alloca i64, align 8
  store ptr %oy, ptr %oy.addr, align 8
  store ptr %og, ptr %og.addr, align 8
  %0 = load ptr, ptr %oy.addr, align 8
  %data = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %data, align 8
  %2 = load ptr, ptr %oy.addr, align 8
  %returned = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %returned, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %page, align 8
  %4 = load ptr, ptr %oy.addr, align 8
  %fill = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %fill, align 4
  %6 = load ptr, ptr %oy.addr, align 8
  %returned1 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %returned1, align 8
  %sub = sub nsw i32 %5, %7
  %conv = sext i32 %sub to i64
  store i64 %conv, ptr %bytes, align 8
  %8 = load ptr, ptr %oy.addr, align 8
  %headerbytes = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %headerbytes, align 8
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %10 = load i64, ptr %bytes, align 8
  %cmp4 = icmp slt i64 %10, 27
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %page, align 8
  %call = call i32 @memcmp(ptr noundef %11, ptr noundef @.str.157, i64 noundef 4) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %sync_fail

if.end8:                                          ; preds = %if.end
  %12 = load ptr, ptr %page, align 8
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 26
  %13 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %13 to i32
  %add = add nsw i32 %conv9, 27
  store i32 %add, ptr %headerbytes3, align 4
  %14 = load i64, ptr %bytes, align 8
  %15 = load i32, ptr %headerbytes3, align 4
  %conv10 = sext i32 %15 to i64
  %cmp11 = icmp slt i64 %14, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  store i64 0, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %16 = load i32, ptr %i, align 4
  %17 = load ptr, ptr %page, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %17, i64 26
  %18 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %18 to i32
  %cmp17 = icmp slt i32 %16, %conv16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %page, align 8
  %20 = load i32, ptr %i, align 4
  %add19 = add nsw i32 27, %20
  %idxprom = sext i32 %add19 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %19, i64 %idxprom
  %21 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %22 = load ptr, ptr %oy.addr, align 8
  %bodybytes = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %bodybytes, align 4
  %add22 = add nsw i32 %23, %conv21
  store i32 %add22, ptr %bodybytes, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %headerbytes3, align 4
  %26 = load ptr, ptr %oy.addr, align 8
  %headerbytes23 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %26, i32 0, i32 5
  store i32 %25, ptr %headerbytes23, align 8
  br label %if.end24

if.end24:                                         ; preds = %for.end, %entry
  %27 = load ptr, ptr %oy.addr, align 8
  %bodybytes25 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %bodybytes25, align 4
  %29 = load ptr, ptr %oy.addr, align 8
  %headerbytes26 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %headerbytes26, align 8
  %add27 = add nsw i32 %28, %30
  %conv28 = sext i32 %add27 to i64
  %31 = load i64, ptr %bytes, align 8
  %cmp29 = icmp sgt i64 %conv28, %31
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end24
  store i64 0, ptr %retval, align 8
  br label %return

if.end32:                                         ; preds = %if.end24
  %arraydecay = getelementptr inbounds [4 x i8], ptr %chksum, i64 0, i64 0
  %32 = load ptr, ptr %page, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %32, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %add.ptr33, i64 4, i1 false)
  %33 = load ptr, ptr %page, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %33, i64 22
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr34, i8 0, i64 4, i1 false)
  %34 = load ptr, ptr %page, align 8
  %header = getelementptr inbounds nuw %struct.ogg_page, ptr %log, i32 0, i32 0
  store ptr %34, ptr %header, align 8
  %35 = load ptr, ptr %oy.addr, align 8
  %headerbytes35 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %35, i32 0, i32 5
  %36 = load i32, ptr %headerbytes35, align 8
  %conv36 = sext i32 %36 to i64
  %header_len = getelementptr inbounds nuw %struct.ogg_page, ptr %log, i32 0, i32 1
  store i64 %conv36, ptr %header_len, align 8
  %37 = load ptr, ptr %page, align 8
  %38 = load ptr, ptr %oy.addr, align 8
  %headerbytes37 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %38, i32 0, i32 5
  %39 = load i32, ptr %headerbytes37, align 8
  %idx.ext38 = sext i32 %39 to i64
  %add.ptr39 = getelementptr inbounds i8, ptr %37, i64 %idx.ext38
  %body = getelementptr inbounds nuw %struct.ogg_page, ptr %log, i32 0, i32 2
  store ptr %add.ptr39, ptr %body, align 8
  %40 = load ptr, ptr %oy.addr, align 8
  %bodybytes40 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %40, i32 0, i32 6
  %41 = load i32, ptr %bodybytes40, align 4
  %conv41 = sext i32 %41 to i64
  %body_len = getelementptr inbounds nuw %struct.ogg_page, ptr %log, i32 0, i32 3
  store i64 %conv41, ptr %body_len, align 8
  call void @ogg_page_checksum_set(ptr noundef %log)
  %arraydecay42 = getelementptr inbounds [4 x i8], ptr %chksum, i64 0, i64 0
  %42 = load ptr, ptr %page, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %42, i64 22
  %call44 = call i32 @memcmp(ptr noundef %arraydecay42, ptr noundef %add.ptr43, i64 noundef 4) #4
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end32
  %43 = load ptr, ptr %page, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %43, i64 22
  %arraydecay48 = getelementptr inbounds [4 x i8], ptr %chksum, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr47, ptr align 1 %arraydecay48, i64 4, i1 false)
  br label %sync_fail

if.end49:                                         ; preds = %if.end32
  %44 = load ptr, ptr %oy.addr, align 8
  %data51 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %data51, align 8
  %46 = load ptr, ptr %oy.addr, align 8
  %returned52 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %returned52, align 8
  %idx.ext53 = sext i32 %47 to i64
  %add.ptr54 = getelementptr inbounds i8, ptr %45, i64 %idx.ext53
  store ptr %add.ptr54, ptr %page50, align 8
  %48 = load ptr, ptr %og.addr, align 8
  %tobool56 = icmp ne ptr %48, null
  br i1 %tobool56, label %if.then57, label %if.end69

if.then57:                                        ; preds = %if.end49
  %49 = load ptr, ptr %page50, align 8
  %50 = load ptr, ptr %og.addr, align 8
  %header58 = getelementptr inbounds nuw %struct.ogg_page, ptr %50, i32 0, i32 0
  store ptr %49, ptr %header58, align 8
  %51 = load ptr, ptr %oy.addr, align 8
  %headerbytes59 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %51, i32 0, i32 5
  %52 = load i32, ptr %headerbytes59, align 8
  %conv60 = sext i32 %52 to i64
  %53 = load ptr, ptr %og.addr, align 8
  %header_len61 = getelementptr inbounds nuw %struct.ogg_page, ptr %53, i32 0, i32 1
  store i64 %conv60, ptr %header_len61, align 8
  %54 = load ptr, ptr %page50, align 8
  %55 = load ptr, ptr %oy.addr, align 8
  %headerbytes62 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %55, i32 0, i32 5
  %56 = load i32, ptr %headerbytes62, align 8
  %idx.ext63 = sext i32 %56 to i64
  %add.ptr64 = getelementptr inbounds i8, ptr %54, i64 %idx.ext63
  %57 = load ptr, ptr %og.addr, align 8
  %body65 = getelementptr inbounds nuw %struct.ogg_page, ptr %57, i32 0, i32 2
  store ptr %add.ptr64, ptr %body65, align 8
  %58 = load ptr, ptr %oy.addr, align 8
  %bodybytes66 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %58, i32 0, i32 6
  %59 = load i32, ptr %bodybytes66, align 4
  %conv67 = sext i32 %59 to i64
  %60 = load ptr, ptr %og.addr, align 8
  %body_len68 = getelementptr inbounds nuw %struct.ogg_page, ptr %60, i32 0, i32 3
  store i64 %conv67, ptr %body_len68, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then57, %if.end49
  %61 = load ptr, ptr %oy.addr, align 8
  %unsynced = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %61, i32 0, i32 4
  store i32 0, ptr %unsynced, align 4
  %62 = load ptr, ptr %oy.addr, align 8
  %headerbytes70 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %62, i32 0, i32 5
  %63 = load i32, ptr %headerbytes70, align 8
  %64 = load ptr, ptr %oy.addr, align 8
  %bodybytes71 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %64, i32 0, i32 6
  %65 = load i32, ptr %bodybytes71, align 4
  %add72 = add nsw i32 %63, %65
  %conv73 = sext i32 %add72 to i64
  store i64 %conv73, ptr %bytes55, align 8
  %66 = load ptr, ptr %oy.addr, align 8
  %returned74 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %66, i32 0, i32 3
  %67 = load i32, ptr %returned74, align 8
  %conv75 = sext i32 %67 to i64
  %add76 = add nsw i64 %conv75, %conv73
  %conv77 = trunc i64 %add76 to i32
  store i32 %conv77, ptr %returned74, align 8
  %68 = load ptr, ptr %oy.addr, align 8
  %headerbytes78 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %68, i32 0, i32 5
  store i32 0, ptr %headerbytes78, align 8
  %69 = load ptr, ptr %oy.addr, align 8
  %bodybytes79 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %69, i32 0, i32 6
  store i32 0, ptr %bodybytes79, align 4
  %70 = load i64, ptr %bytes55, align 8
  store i64 %70, ptr %retval, align 8
  br label %return

sync_fail:                                        ; preds = %if.then46, %if.then7
  %71 = load ptr, ptr %oy.addr, align 8
  %headerbytes80 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %71, i32 0, i32 5
  store i32 0, ptr %headerbytes80, align 8
  %72 = load ptr, ptr %oy.addr, align 8
  %bodybytes81 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %72, i32 0, i32 6
  store i32 0, ptr %bodybytes81, align 4
  %73 = load ptr, ptr %page, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %73, i64 1
  %74 = load i64, ptr %bytes, align 8
  %sub83 = sub nsw i64 %74, 1
  %call84 = call ptr @memchr(ptr noundef %add.ptr82, i32 noundef 79, i64 noundef %sub83) #4
  store ptr %call84, ptr %next, align 8
  %75 = load ptr, ptr %next, align 8
  %tobool85 = icmp ne ptr %75, null
  br i1 %tobool85, label %if.end91, label %if.then86

if.then86:                                        ; preds = %sync_fail
  %76 = load ptr, ptr %oy.addr, align 8
  %data87 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %data87, align 8
  %78 = load ptr, ptr %oy.addr, align 8
  %fill88 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %78, i32 0, i32 2
  %79 = load i32, ptr %fill88, align 4
  %idx.ext89 = sext i32 %79 to i64
  %add.ptr90 = getelementptr inbounds i8, ptr %77, i64 %idx.ext89
  store ptr %add.ptr90, ptr %next, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %sync_fail
  %80 = load ptr, ptr %next, align 8
  %81 = load ptr, ptr %oy.addr, align 8
  %data92 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %data92, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %80 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %82 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv93 = trunc i64 %sub.ptr.sub to i32
  %83 = load ptr, ptr %oy.addr, align 8
  %returned94 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %83, i32 0, i32 3
  store i32 %conv93, ptr %returned94, align 8
  %84 = load ptr, ptr %next, align 8
  %85 = load ptr, ptr %page, align 8
  %sub.ptr.lhs.cast95 = ptrtoint ptr %84 to i64
  %sub.ptr.rhs.cast96 = ptrtoint ptr %85 to i64
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %sub98 = sub nsw i64 0, %sub.ptr.sub97
  store i64 %sub98, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end91, %if.end69, %if.then31, %if.then13, %if.then6
  %86 = load i64, ptr %retval, align 8
  ret i64 %86
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

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
