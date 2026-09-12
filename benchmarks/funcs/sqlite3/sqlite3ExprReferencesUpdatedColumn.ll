; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprReferencesUpdatedColumn(ptr noundef %pExpr, ptr noundef %aiChng, i32 noundef %chngRowid) #1 {
entry:
  %pExpr.addr = alloca ptr, align 8
  %aiChng.addr = alloca ptr, align 8
  %chngRowid.addr = alloca i32, align 4
  %w = alloca %struct.Walker, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %aiChng, ptr %aiChng.addr, align 8
  store i32 %chngRowid, ptr %chngRowid.addr, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %w, i8 0, i64 48, i1 false)
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 5
  store i8 0, ptr %eCode, align 4
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 1
  store ptr @checkConstraintExprNode, ptr %xExprCallback, align 8
  %0 = load ptr, ptr %aiChng.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 6
  store ptr %0, ptr %u, align 8
  %1 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3WalkExpr(ptr noundef %w, ptr noundef %1)
  %2 = load i32, ptr %chngRowid.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %eCode1 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 5
  %3 = load i8, ptr %eCode1, align 4
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, -3
  %conv2 = trunc i32 %and to i8
  store i8 %conv2, ptr %eCode1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %eCode3 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 5
  %4 = load i8, ptr %eCode3, align 4
  %conv4 = zext i8 %4 to i32
  %cmp = icmp ne i32 %conv4, 0
  %conv5 = zext i1 %cmp to i32
  ret i32 %conv5
}

; Function Attrs: nounwind uwtable
declare hidden i32 @checkConstraintExprNode(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
