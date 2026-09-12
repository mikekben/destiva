; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToHashmap(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_HashmapGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapUnlinkNode(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_splice(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pPrev = alloca ptr, align 8
  %pRnode = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pRvalue = alloca ptr, align 8
  %pOld = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pRep = alloca ptr, align 8
  %iLength = alloca i32, align 4
  %iOfft = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_array(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_null(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %x, align 8
  store ptr %6, ptr %pSrc, align 8
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @ph7_value_to_int(ptr noundef %8)
  store i32 %call4, ptr %iOfft, align 4
  %9 = load i32, ptr %iOfft, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %pSrc, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %nEntry, align 4
  %12 = load i32, ptr %iOfft, align 4
  %add = add nsw i32 %11, %12
  store i32 %add, ptr %iOfft, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %13 = load i32, ptr %iOfft, align 4
  %cmp8 = icmp slt i32 %13, 0
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end7
  %14 = load i32, ptr %iOfft, align 4
  %15 = load ptr, ptr %pSrc, align 8
  %nEntry10 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %nEntry10, align 4
  %cmp11 = icmp sgt i32 %14, %16
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false9, %if.end7
  %17 = load ptr, ptr %pSrc, align 8
  %nEntry13 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %nEntry13, align 4
  %sub = sub nsw i32 %18, 1
  store i32 %sub, ptr %iOfft, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.lhs.false9
  %19 = load ptr, ptr %pSrc, align 8
  %nEntry15 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %nEntry15, align 4
  %21 = load i32, ptr %iOfft, align 4
  %sub16 = sub nsw i32 %20, %21
  store i32 %sub16, ptr %iLength, align 4
  %22 = load i32, ptr %nArg.addr, align 4
  %cmp17 = icmp sgt i32 %22, 2
  br i1 %cmp17, label %if.then18, label %if.end36

if.then18:                                        ; preds = %if.end14
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %23, i64 2
  %24 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 @ph7_value_to_int(ptr noundef %24)
  store i32 %call20, ptr %iLength, align 4
  %25 = load i32, ptr %iLength, align 4
  %cmp21 = icmp slt i32 %25, 0
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.then18
  %26 = load ptr, ptr %pSrc, align 8
  %nEntry23 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %nEntry23, align 4
  %28 = load i32, ptr %iLength, align 4
  %add24 = add nsw i32 %27, %28
  %29 = load i32, ptr %iOfft, align 4
  %sub25 = sub nsw i32 %add24, %29
  store i32 %sub25, ptr %iLength, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then18
  %30 = load i32, ptr %iLength, align 4
  %cmp27 = icmp slt i32 %30, 0
  br i1 %cmp27, label %if.then32, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end26
  %31 = load i32, ptr %iOfft, align 4
  %32 = load i32, ptr %iLength, align 4
  %add29 = add nsw i32 %31, %32
  %33 = load ptr, ptr %pSrc, align 8
  %nEntry30 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %33, i32 0, i32 6
  %34 = load i32, ptr %nEntry30, align 4
  %cmp31 = icmp sge i32 %add29, %34
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %lor.lhs.false28, %if.end26
  %35 = load ptr, ptr %pSrc, align 8
  %nEntry33 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %nEntry33, align 4
  %37 = load i32, ptr %iOfft, align 4
  %sub34 = sub nsw i32 %36, %37
  store i32 %sub34, ptr %iLength, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %lor.lhs.false28
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end14
  %38 = load ptr, ptr %pCtx.addr, align 8
  %call37 = call ptr @ph7_context_new_array(ptr noundef %38)
  store ptr %call37, ptr %pArray, align 8
  %39 = load ptr, ptr %pArray, align 8
  %cmp38 = icmp eq ptr %39, null
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  %40 = load ptr, ptr %pCtx.addr, align 8
  %call40 = call i32 @ph7_result_null(ptr noundef %40)
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end36
  %41 = load i32, ptr %iLength, align 4
  %cmp42 = icmp slt i32 %41, 1
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %42 = load ptr, ptr %pCtx.addr, align 8
  %43 = load ptr, ptr %pArray, align 8
  %call44 = call i32 @ph7_result_value(ptr noundef %42, ptr noundef %43)
  store i32 0, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.end41
  %44 = load ptr, ptr %pSrc, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %pFirst, align 8
  store ptr %45, ptr %pCur, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end48, %if.end45
  %46 = load i32, ptr %iOfft, align 4
  %cmp46 = icmp slt i32 %46, 1
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.cond
  br label %for.end

if.end48:                                         ; preds = %for.cond
  %47 = load ptr, ptr %pCur, align 8
  %pPrev49 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %47, i32 0, i32 7
  %48 = load ptr, ptr %pPrev49, align 8
  store ptr %48, ptr %pCur, align 8
  %49 = load i32, ptr %iOfft, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, ptr %iOfft, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then47
  store ptr null, ptr %pRep, align 8
  %50 = load i32, ptr %nArg.addr, align 4
  %cmp50 = icmp sgt i32 %50, 3
  br i1 %cmp50, label %if.then51, label %if.end73

if.then51:                                        ; preds = %for.end
  %51 = load ptr, ptr %apArg.addr, align 8
  %arrayidx52 = getelementptr inbounds ptr, ptr %51, i64 3
  %52 = load ptr, ptr %arrayidx52, align 8
  %call53 = call i32 @ph7_value_is_array(ptr noundef %52)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.then51
  %53 = load ptr, ptr %apArg.addr, align 8
  %arrayidx56 = getelementptr inbounds ptr, ptr %53, i64 3
  %54 = load ptr, ptr %arrayidx56, align 8
  %call57 = call i32 @PH7_MemObjToHashmap(ptr noundef %54)
  %55 = load ptr, ptr %apArg.addr, align 8
  %arrayidx58 = getelementptr inbounds ptr, ptr %55, i64 3
  %56 = load ptr, ptr %arrayidx58, align 8
  %call59 = call i32 @ph7_value_is_array(ptr noundef %56)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.then55
  %57 = load ptr, ptr %apArg.addr, align 8
  %arrayidx62 = getelementptr inbounds ptr, ptr %57, i64 3
  %58 = load ptr, ptr %arrayidx62, align 8
  %x63 = getelementptr inbounds nuw %struct.ph7_value, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %x63, align 8
  store ptr %59, ptr %pRep, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then55
  br label %if.end67

if.else:                                          ; preds = %if.then51
  %60 = load ptr, ptr %apArg.addr, align 8
  %arrayidx65 = getelementptr inbounds ptr, ptr %60, i64 3
  %61 = load ptr, ptr %arrayidx65, align 8
  %x66 = getelementptr inbounds nuw %struct.ph7_value, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %x66, align 8
  store ptr %62, ptr %pRep, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.end64
  %63 = load ptr, ptr %pRep, align 8
  %tobool68 = icmp ne ptr %63, null
  br i1 %tobool68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end67
  %64 = load ptr, ptr %pRep, align 8
  %pFirst70 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %64, i32 0, i32 2
  %65 = load ptr, ptr %pFirst70, align 8
  %66 = load ptr, ptr %pRep, align 8
  %pCur71 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %66, i32 0, i32 4
  store ptr %65, ptr %pCur71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end67
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %for.end
  %67 = load ptr, ptr %pArray, align 8
  %x74 = getelementptr inbounds nuw %struct.ph7_value, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %x74, align 8
  store ptr %68, ptr %pMap, align 8
  br label %for.cond75

for.cond75:                                       ; preds = %if.end97, %if.end73
  %69 = load i32, ptr %iLength, align 4
  %cmp76 = icmp slt i32 %69, 1
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %for.cond75
  br label %for.end99

if.end78:                                         ; preds = %for.cond75
  %70 = load ptr, ptr %pCur, align 8
  %pPrev79 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %70, i32 0, i32 7
  %71 = load ptr, ptr %pPrev79, align 8
  store ptr %71, ptr %pPrev, align 8
  %72 = load ptr, ptr %pMap, align 8
  %73 = load ptr, ptr %pCur, align 8
  %call80 = call i32 @HashmapInsertNode(ptr noundef %72, ptr noundef %73, i32 noundef 0)
  store i32 %call80, ptr %rc, align 4
  %74 = load ptr, ptr %pRep, align 8
  %tobool81 = icmp ne ptr %74, null
  br i1 %tobool81, label %land.lhs.true, label %if.else93

land.lhs.true:                                    ; preds = %if.end78
  %75 = load ptr, ptr %pRep, align 8
  %call82 = call ptr @PH7_HashmapGetNextEntry(ptr noundef %75)
  store ptr %call82, ptr %pRnode, align 8
  %cmp83 = icmp ne ptr %call82, null
  br i1 %cmp83, label %if.then84, label %if.else93

if.then84:                                        ; preds = %land.lhs.true
  %76 = load ptr, ptr %pRnode, align 8
  %call85 = call ptr @HashmapExtractNodeValue(ptr noundef %76)
  store ptr %call85, ptr %pRvalue, align 8
  %77 = load ptr, ptr %pCur, align 8
  %call86 = call ptr @HashmapExtractNodeValue(ptr noundef %77)
  store ptr %call86, ptr %pOld, align 8
  %78 = load ptr, ptr %pRvalue, align 8
  %tobool87 = icmp ne ptr %78, null
  br i1 %tobool87, label %land.lhs.true88, label %if.end92

land.lhs.true88:                                  ; preds = %if.then84
  %79 = load ptr, ptr %pOld, align 8
  %tobool89 = icmp ne ptr %79, null
  br i1 %tobool89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %land.lhs.true88
  %80 = load ptr, ptr %pRvalue, align 8
  %81 = load ptr, ptr %pOld, align 8
  %call91 = call i32 @PH7_MemObjStore(ptr noundef %80, ptr noundef %81)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %land.lhs.true88, %if.then84
  br label %if.end94

if.else93:                                        ; preds = %land.lhs.true, %if.end78
  %82 = load ptr, ptr %pCur, align 8
  call void @PH7_HashmapUnlinkNode(ptr noundef %82, i32 noundef 1)
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %if.end92
  %83 = load i32, ptr %rc, align 4
  %cmp95 = icmp ne i32 %83, 0
  br i1 %cmp95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end94
  br label %for.end99

if.end97:                                         ; preds = %if.end94
  %84 = load ptr, ptr %pPrev, align 8
  store ptr %84, ptr %pCur, align 8
  %85 = load i32, ptr %iLength, align 4
  %dec98 = add nsw i32 %85, -1
  store i32 %dec98, ptr %iLength, align 4
  br label %for.cond75

for.end99:                                        ; preds = %if.then96, %if.then77
  %86 = load ptr, ptr %pRep, align 8
  %tobool100 = icmp ne ptr %86, null
  br i1 %tobool100, label %if.then101, label %if.end105

if.then101:                                       ; preds = %for.end99
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then101
  %87 = load ptr, ptr %pRep, align 8
  %call102 = call ptr @PH7_HashmapGetNextEntry(ptr noundef %87)
  store ptr %call102, ptr %pRnode, align 8
  %cmp103 = icmp ne ptr %call102, null
  br i1 %cmp103, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %88 = load ptr, ptr %pSrc, align 8
  %89 = load ptr, ptr %pRnode, align 8
  %call104 = call i32 @HashmapInsertNode(ptr noundef %88, ptr noundef %89, i32 noundef 0)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end105

if.end105:                                        ; preds = %while.end, %for.end99
  %90 = load ptr, ptr %pCtx.addr, align 8
  %91 = load ptr, ptr %pArray, align 8
  %call106 = call i32 @ph7_result_value(ptr noundef %90, ptr noundef %91)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end105, %if.then43, %if.then39, %if.then
  %92 = load i32, ptr %retval, align 4
  ret i32 %92
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertNode(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
