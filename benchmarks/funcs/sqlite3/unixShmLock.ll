; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixShm = type { ptr, ptr, i8, i8, i16, i16 }
%struct.unixShmNode = type { ptr, ptr, ptr, i32, i32, i16, i8, i8, ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixShmLock(ptr noundef %fd, i32 noundef %ofst, i32 noundef %n, i32 noundef %flags) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %ofst.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pDbFd = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pX = alloca ptr, align 8
  %pShmNode = alloca ptr, align 8
  %rc = alloca i32, align 4
  %mask = alloca i16, align 2
  %allMask = alloca i16, align 2
  %allShared = alloca i16, align 2
  store ptr %fd, ptr %fd.addr, align 8
  store i32 %ofst, ptr %ofst.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %fd.addr, align 8
  store ptr %0, ptr %pDbFd, align 8
  %1 = load ptr, ptr %pDbFd, align 8
  %pShm = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %pShm, align 8
  store ptr %2, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  %pShmNode1 = getelementptr inbounds nuw %struct.unixShm, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pShmNode1, align 8
  store ptr %4, ptr %pShmNode, align 8
  store i32 0, ptr %rc, align 4
  %5 = load i32, ptr %ofst.addr, align 4
  %6 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %5, %6
  %shl = shl i32 1, %add
  %7 = load i32, ptr %ofst.addr, align 4
  %shl2 = shl i32 1, %7
  %sub = sub nsw i32 %shl, %shl2
  %conv = trunc i32 %sub to i16
  store i16 %conv, ptr %mask, align 2
  %8 = load ptr, ptr %pShmNode, align 8
  %pShmMutex = getelementptr inbounds nuw %struct.unixShmNode, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pShmMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %9)
  %10 = load i32, ptr %flags.addr, align 4
  %and = and i32 %10, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  store i16 0, ptr %allMask, align 2
  %11 = load ptr, ptr %pShmNode, align 8
  %pFirst = getelementptr inbounds nuw %struct.unixShmNode, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %pFirst, align 8
  store ptr %12, ptr %pX, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load ptr, ptr %pX, align 8
  %tobool3 = icmp ne ptr %13, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %pX, align 8
  %15 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %14, %15
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %16 = load ptr, ptr %pX, align 8
  %sharedMask = getelementptr inbounds nuw %struct.unixShm, ptr %16, i32 0, i32 4
  %17 = load i16, ptr %sharedMask, align 2
  %conv6 = zext i16 %17 to i32
  %18 = load i16, ptr %allMask, align 2
  %conv7 = zext i16 %18 to i32
  %or = or i32 %conv7, %conv6
  %conv8 = trunc i32 %or to i16
  store i16 %conv8, ptr %allMask, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then5
  %19 = load ptr, ptr %pX, align 8
  %pNext = getelementptr inbounds nuw %struct.unixShm, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pNext, align 8
  store ptr %20, ptr %pX, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load i16, ptr %mask, align 2
  %conv9 = zext i16 %21 to i32
  %22 = load i16, ptr %allMask, align 2
  %conv10 = zext i16 %22 to i32
  %and11 = and i32 %conv9, %conv10
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.end
  %23 = load ptr, ptr %pDbFd, align 8
  %24 = load i32, ptr %ofst.addr, align 4
  %add15 = add nsw i32 %24, 120
  %25 = load i32, ptr %n.addr, align 4
  %call = call i32 @unixShmSystemLock(ptr noundef %23, i32 noundef 2, i32 noundef %add15, i32 noundef %25)
  store i32 %call, ptr %rc, align 4
  br label %if.end16

if.else:                                          ; preds = %for.end
  store i32 0, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %26 = load i32, ptr %rc, align 4
  %cmp17 = icmp eq i32 %26, 0
  br i1 %cmp17, label %if.then19, label %if.end30

if.then19:                                        ; preds = %if.end16
  %27 = load i16, ptr %mask, align 2
  %conv20 = zext i16 %27 to i32
  %not = xor i32 %conv20, -1
  %28 = load ptr, ptr %p, align 8
  %exclMask = getelementptr inbounds nuw %struct.unixShm, ptr %28, i32 0, i32 5
  %29 = load i16, ptr %exclMask, align 4
  %conv21 = zext i16 %29 to i32
  %and22 = and i32 %conv21, %not
  %conv23 = trunc i32 %and22 to i16
  store i16 %conv23, ptr %exclMask, align 4
  %30 = load i16, ptr %mask, align 2
  %conv24 = zext i16 %30 to i32
  %not25 = xor i32 %conv24, -1
  %31 = load ptr, ptr %p, align 8
  %sharedMask26 = getelementptr inbounds nuw %struct.unixShm, ptr %31, i32 0, i32 4
  %32 = load i16, ptr %sharedMask26, align 2
  %conv27 = zext i16 %32 to i32
  %and28 = and i32 %conv27, %not25
  %conv29 = trunc i32 %and28 to i16
  store i16 %conv29, ptr %sharedMask26, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then19, %if.end16
  br label %if.end116

if.else31:                                        ; preds = %entry
  %33 = load i32, ptr %flags.addr, align 4
  %and32 = and i32 %33, 4
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.else78

if.then34:                                        ; preds = %if.else31
  store i16 0, ptr %allShared, align 2
  %34 = load ptr, ptr %pShmNode, align 8
  %pFirst35 = getelementptr inbounds nuw %struct.unixShmNode, ptr %34, i32 0, i32 10
  %35 = load ptr, ptr %pFirst35, align 8
  store ptr %35, ptr %pX, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc52, %if.then34
  %36 = load ptr, ptr %pX, align 8
  %tobool37 = icmp ne ptr %36, null
  br i1 %tobool37, label %for.body38, label %for.end54

for.body38:                                       ; preds = %for.cond36
  %37 = load ptr, ptr %pX, align 8
  %exclMask39 = getelementptr inbounds nuw %struct.unixShm, ptr %37, i32 0, i32 5
  %38 = load i16, ptr %exclMask39, align 4
  %conv40 = zext i16 %38 to i32
  %39 = load i16, ptr %mask, align 2
  %conv41 = zext i16 %39 to i32
  %and42 = and i32 %conv40, %conv41
  %cmp43 = icmp ne i32 %and42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.body38
  store i32 5, ptr %rc, align 4
  br label %for.end54

if.end46:                                         ; preds = %for.body38
  %40 = load ptr, ptr %pX, align 8
  %sharedMask47 = getelementptr inbounds nuw %struct.unixShm, ptr %40, i32 0, i32 4
  %41 = load i16, ptr %sharedMask47, align 2
  %conv48 = zext i16 %41 to i32
  %42 = load i16, ptr %allShared, align 2
  %conv49 = zext i16 %42 to i32
  %or50 = or i32 %conv49, %conv48
  %conv51 = trunc i32 %or50 to i16
  store i16 %conv51, ptr %allShared, align 2
  br label %for.inc52

for.inc52:                                        ; preds = %if.end46
  %43 = load ptr, ptr %pX, align 8
  %pNext53 = getelementptr inbounds nuw %struct.unixShm, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %pNext53, align 8
  store ptr %44, ptr %pX, align 8
  br label %for.cond36, !llvm.loop !8

for.end54:                                        ; preds = %if.then45, %for.cond36
  %45 = load i32, ptr %rc, align 4
  %cmp55 = icmp eq i32 %45, 0
  br i1 %cmp55, label %if.then57, label %if.end68

if.then57:                                        ; preds = %for.end54
  %46 = load i16, ptr %allShared, align 2
  %conv58 = zext i16 %46 to i32
  %47 = load i16, ptr %mask, align 2
  %conv59 = zext i16 %47 to i32
  %and60 = and i32 %conv58, %conv59
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %if.then63, label %if.else66

if.then63:                                        ; preds = %if.then57
  %48 = load ptr, ptr %pDbFd, align 8
  %49 = load i32, ptr %ofst.addr, align 4
  %add64 = add nsw i32 %49, 120
  %50 = load i32, ptr %n.addr, align 4
  %call65 = call i32 @unixShmSystemLock(ptr noundef %48, i32 noundef 0, i32 noundef %add64, i32 noundef %50)
  store i32 %call65, ptr %rc, align 4
  br label %if.end67

if.else66:                                        ; preds = %if.then57
  store i32 0, ptr %rc, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then63
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %for.end54
  %51 = load i32, ptr %rc, align 4
  %cmp69 = icmp eq i32 %51, 0
  br i1 %cmp69, label %if.then71, label %if.end77

if.then71:                                        ; preds = %if.end68
  %52 = load i16, ptr %mask, align 2
  %conv72 = zext i16 %52 to i32
  %53 = load ptr, ptr %p, align 8
  %sharedMask73 = getelementptr inbounds nuw %struct.unixShm, ptr %53, i32 0, i32 4
  %54 = load i16, ptr %sharedMask73, align 2
  %conv74 = zext i16 %54 to i32
  %or75 = or i32 %conv74, %conv72
  %conv76 = trunc i32 %or75 to i16
  store i16 %conv76, ptr %sharedMask73, align 2
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %if.end68
  br label %if.end115

if.else78:                                        ; preds = %if.else31
  %55 = load ptr, ptr %pShmNode, align 8
  %pFirst79 = getelementptr inbounds nuw %struct.unixShmNode, ptr %55, i32 0, i32 10
  %56 = load ptr, ptr %pFirst79, align 8
  store ptr %56, ptr %pX, align 8
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc97, %if.else78
  %57 = load ptr, ptr %pX, align 8
  %tobool81 = icmp ne ptr %57, null
  br i1 %tobool81, label %for.body82, label %for.end99

for.body82:                                       ; preds = %for.cond80
  %58 = load ptr, ptr %pX, align 8
  %exclMask83 = getelementptr inbounds nuw %struct.unixShm, ptr %58, i32 0, i32 5
  %59 = load i16, ptr %exclMask83, align 4
  %conv84 = zext i16 %59 to i32
  %60 = load i16, ptr %mask, align 2
  %conv85 = zext i16 %60 to i32
  %and86 = and i32 %conv84, %conv85
  %cmp87 = icmp ne i32 %and86, 0
  br i1 %cmp87, label %if.then95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body82
  %61 = load ptr, ptr %pX, align 8
  %sharedMask89 = getelementptr inbounds nuw %struct.unixShm, ptr %61, i32 0, i32 4
  %62 = load i16, ptr %sharedMask89, align 2
  %conv90 = zext i16 %62 to i32
  %63 = load i16, ptr %mask, align 2
  %conv91 = zext i16 %63 to i32
  %and92 = and i32 %conv90, %conv91
  %cmp93 = icmp ne i32 %and92, 0
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %lor.lhs.false, %for.body82
  store i32 5, ptr %rc, align 4
  br label %for.end99

if.end96:                                         ; preds = %lor.lhs.false
  br label %for.inc97

for.inc97:                                        ; preds = %if.end96
  %64 = load ptr, ptr %pX, align 8
  %pNext98 = getelementptr inbounds nuw %struct.unixShm, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %pNext98, align 8
  store ptr %65, ptr %pX, align 8
  br label %for.cond80, !llvm.loop !9

for.end99:                                        ; preds = %if.then95, %for.cond80
  %66 = load i32, ptr %rc, align 4
  %cmp100 = icmp eq i32 %66, 0
  br i1 %cmp100, label %if.then102, label %if.end114

if.then102:                                       ; preds = %for.end99
  %67 = load ptr, ptr %pDbFd, align 8
  %68 = load i32, ptr %ofst.addr, align 4
  %add103 = add nsw i32 %68, 120
  %69 = load i32, ptr %n.addr, align 4
  %call104 = call i32 @unixShmSystemLock(ptr noundef %67, i32 noundef 1, i32 noundef %add103, i32 noundef %69)
  store i32 %call104, ptr %rc, align 4
  %70 = load i32, ptr %rc, align 4
  %cmp105 = icmp eq i32 %70, 0
  br i1 %cmp105, label %if.then107, label %if.end113

if.then107:                                       ; preds = %if.then102
  %71 = load i16, ptr %mask, align 2
  %conv108 = zext i16 %71 to i32
  %72 = load ptr, ptr %p, align 8
  %exclMask109 = getelementptr inbounds nuw %struct.unixShm, ptr %72, i32 0, i32 5
  %73 = load i16, ptr %exclMask109, align 4
  %conv110 = zext i16 %73 to i32
  %or111 = or i32 %conv110, %conv108
  %conv112 = trunc i32 %or111 to i16
  store i16 %conv112, ptr %exclMask109, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then107, %if.then102
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %for.end99
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end77
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end30
  %74 = load ptr, ptr %pShmNode, align 8
  %pShmMutex117 = getelementptr inbounds nuw %struct.unixShmNode, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %pShmMutex117, align 8
  call void @sqlite3_mutex_leave(ptr noundef %75)
  %76 = load i32, ptr %rc, align 4
  ret i32 %76
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixShmSystemLock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
