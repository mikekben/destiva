; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%union.YYMINORTYPE = type { %struct.Token }
%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.yyParser = type { ptr, ptr, [100 x %struct.yyStackEntry], ptr }
%struct.yyStackEntry = type { i16, i16, %union.YYMINORTYPE }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.13 = type { i32, i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.TrigEvent = type { i32, ptr }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.FrameBound = type { i32, ptr }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@.str.332 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.510 = external hidden unnamed_addr constant [6 x i8], align 1
@yyRuleInfoNRhs = external hidden constant [381 x i8], align 16
@.str.555 = external hidden unnamed_addr constant [27 x i8], align 1
@__const.yy_reduce.dest = external hidden unnamed_addr constant { i8, [3 x i8], i32, i32, i32, ptr, ptr }, align 8
@.str.556 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.557 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.558 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.559 = external hidden unnamed_addr constant [95 x i8], align 1
@.str.560 = external hidden unnamed_addr constant [84 x i8], align 1
@.str.561 = external hidden unnamed_addr constant [85 x i8], align 1
@yyRuleInfoLhs = external hidden constant [381 x i16], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetInt32(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowListDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WithDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @yy_reduce(ptr noundef %yypParser, i32 noundef %yyruleno, i32 noundef %yyLookahead, ptr %yyLookaheadToken.coerce0, i32 %yyLookaheadToken.coerce1, ptr noundef %pParse) #1 {
entry:
  %retval = alloca i16, align 2
  %yyLookaheadToken = alloca %struct.Token, align 8
  %yypParser.addr = alloca ptr, align 8
  %yyruleno.addr = alloca i32, align 4
  %yyLookahead.addr = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %yygoto = alloca i32, align 4
  %yyact = alloca i16, align 2
  %yymsp = alloca ptr, align 8
  %yysize = alloca i32, align 4
  %yylhsminor = alloca %union.YYMINORTYPE, align 8
  %p = alloca ptr, align 8
  %p223 = alloca ptr, align 8
  %dest = alloca %struct.SelectDest, align 8
  %p422 = alloca ptr, align 8
  %p437 = alloca ptr, align 8
  %p453 = alloca ptr, align 8
  %pRhs = alloca ptr, align 8
  %pLhs = alloca ptr, align 8
  %pFrom = alloca ptr, align 8
  %x = alloca %struct.Token, align 8
  %pRight = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  %p625 = alloca ptr, align 8
  %pRight634 = alloca ptr, align 8
  %pLeft636 = alloca ptr, align 8
  %pDot = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pOld = alloca ptr, align 8
  %pSubquery = alloca ptr, align 8
  %temp1 = alloca ptr, align 8
  %temp2 = alloca ptr, align 8
  %temp11247 = alloca ptr, align 8
  %temp21252 = alloca ptr, align 8
  %temp3 = alloca ptr, align 8
  %temp4 = alloca ptr, align 8
  %n1312 = alloca i32, align 4
  %t = alloca %struct.Token, align 8
  %pList = alloca ptr, align 8
  %pList1463 = alloca ptr, align 8
  %bNot = alloca i32, align 4
  %pList1500 = alloca ptr, align 8
  %bNot1501 = alloca i32, align 4
  %pList1604 = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pSelect1719 = alloca ptr, align 8
  %p1748 = alloca ptr, align 8
  %all = alloca %struct.Token, align 8
  %0 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyLookaheadToken, i32 0, i32 0
  store ptr %yyLookaheadToken.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { ptr, i32 }, ptr %yyLookaheadToken, i32 0, i32 1
  store i32 %yyLookaheadToken.coerce1, ptr %1, align 8
  store ptr %yypParser, ptr %yypParser.addr, align 8
  store i32 %yyruleno, ptr %yyruleno.addr, align 4
  store i32 %yyLookahead, ptr %yyLookahead.addr, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  %2 = load i32, ptr %yyLookahead.addr, align 4
  %3 = load ptr, ptr %yypParser.addr, align 8
  %yytos = getelementptr inbounds nuw %struct.yyParser, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %yytos, align 8
  store ptr %4, ptr %yymsp, align 8
  %5 = load i32, ptr %yyruleno.addr, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds nuw [381 x i8], ptr @yyRuleInfoNRhs, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %yypParser.addr, align 8
  %yytos2 = getelementptr inbounds nuw %struct.yyParser, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %yytos2, align 8
  %9 = load ptr, ptr %yypParser.addr, align 8
  %yystackEnd = getelementptr inbounds nuw %struct.yyParser, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %yystackEnd, align 8
  %cmp3 = icmp uge ptr %8, %10
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %11 = load ptr, ptr %yypParser.addr, align 8
  call void @yyStackOverflow(ptr noundef %11)
  store i16 0, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %yyruleno.addr, align 4
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
    i32 4, label %sw.bb12
    i32 5, label %sw.bb15
    i32 6, label %sw.bb15
    i32 7, label %sw.bb16
    i32 304, label %sw.bb17
    i32 8, label %sw.bb22
    i32 9, label %sw.bb22
    i32 10, label %sw.bb26
    i32 11, label %sw.bb29
    i32 12, label %sw.bb32
    i32 13, label %sw.bb35
    i32 14, label %sw.bb44
    i32 15, label %sw.bb45
    i32 18, label %sw.bb45
    i32 21, label %sw.bb46
    i32 43, label %sw.bb47
    i32 58, label %sw.bb48
    i32 68, label %sw.bb49
    i32 77, label %sw.bb50
    i32 94, label %sw.bb51
    i32 230, label %sw.bb52
    i32 16, label %sw.bb55
    i32 17, label %sw.bb58
    i32 44, label %sw.bb58
    i32 19, label %sw.bb61
    i32 20, label %sw.bb69
    i32 22, label %sw.bb74
    i32 23, label %sw.bb95
    i32 24, label %sw.bb100
    i32 61, label %sw.bb100
    i32 100, label %sw.bb101
    i32 25, label %sw.bb108
    i32 26, label %sw.bb124
    i32 27, label %sw.bb143
    i32 28, label %sw.bb160
    i32 29, label %sw.bb164
    i32 30, label %sw.bb167
    i32 63, label %sw.bb167
    i32 31, label %sw.bb170
    i32 32, label %sw.bb184
    i32 33, label %sw.bb193
    i32 34, label %sw.bb207
    i32 35, label %sw.bb222
    i32 36, label %sw.bb240
    i32 37, label %sw.bb243
    i32 38, label %sw.bb250
    i32 39, label %sw.bb253
    i32 40, label %sw.bb256
    i32 41, label %sw.bb263
    i32 42, label %sw.bb266
    i32 45, label %sw.bb269
    i32 46, label %sw.bb272
    i32 47, label %sw.bb281
    i32 48, label %sw.bb288
    i32 49, label %sw.bb295
    i32 50, label %sw.bb304
    i32 51, label %sw.bb313
    i32 52, label %sw.bb316
    i32 53, label %sw.bb319
    i32 54, label %sw.bb322
    i32 55, label %sw.bb325
    i32 56, label %sw.bb328
    i32 57, label %sw.bb331
    i32 72, label %sw.bb331
    i32 160, label %sw.bb332
    i32 59, label %sw.bb337
    i32 76, label %sw.bb337
    i32 202, label %sw.bb338
    i32 205, label %sw.bb339
    i32 231, label %sw.bb340
    i32 60, label %sw.bb343
    i32 62, label %sw.bb346
    i32 64, label %sw.bb349
    i32 65, label %sw.bb356
    i32 66, label %sw.bb361
    i32 67, label %sw.bb364
    i32 69, label %sw.bb375
    i32 71, label %sw.bb375
    i32 70, label %sw.bb378
    i32 73, label %sw.bb383
    i32 74, label %sw.bb386
    i32 161, label %sw.bb386
    i32 75, label %sw.bb389
    i32 78, label %sw.bb394
    i32 79, label %sw.bb409
    i32 80, label %sw.bb414
    i32 81, label %sw.bb421
    i32 82, label %sw.bb436
    i32 83, label %sw.bb452
    i32 84, label %sw.bb461
    i32 85, label %sw.bb497
    i32 87, label %sw.bb497
    i32 86, label %sw.bb503
    i32 88, label %sw.bb506
    i32 89, label %sw.bb526
    i32 90, label %sw.bb559
    i32 91, label %sw.bb565
    i32 92, label %sw.bb586
    i32 93, label %sw.bb589
    i32 95, label %sw.bb592
    i32 128, label %sw.bb592
    i32 138, label %sw.bb593
    i32 218, label %sw.bb594
    i32 221, label %sw.bb595
    i32 226, label %sw.bb596
    i32 96, label %sw.bb599
    i32 97, label %sw.bb624
    i32 98, label %sw.bb633
    i32 99, label %sw.bb647
    i32 110, label %sw.bb647
    i32 242, label %sw.bb648
    i32 243, label %sw.bb649
    i32 101, label %sw.bb654
    i32 102, label %sw.bb659
    i32 103, label %sw.bb666
    i32 104, label %sw.bb687
    i32 105, label %sw.bb690
    i32 106, label %sw.bb710
    i32 107, label %sw.bb730
    i32 108, label %sw.bb744
    i32 109, label %sw.bb848
    i32 123, label %sw.bb848
    i32 111, label %sw.bb855
    i32 112, label %sw.bb874
    i32 113, label %sw.bb896
    i32 114, label %sw.bb902
    i32 115, label %sw.bb910
    i32 116, label %sw.bb931
    i32 117, label %sw.bb951
    i32 118, label %sw.bb954
    i32 119, label %sw.bb960
    i32 120, label %sw.bb968
    i32 121, label %sw.bb978
    i32 141, label %sw.bb978
    i32 148, label %sw.bb979
    i32 214, label %sw.bb980
    i32 235, label %sw.bb981
    i32 122, label %sw.bb986
    i32 140, label %sw.bb986
    i32 142, label %sw.bb987
    i32 147, label %sw.bb988
    i32 215, label %sw.bb989
    i32 217, label %sw.bb990
    i32 236, label %sw.bb991
    i32 124, label %sw.bb994
    i32 125, label %sw.bb999
    i32 126, label %sw.bb1006
    i32 127, label %sw.bb1011
    i32 162, label %sw.bb1011
    i32 129, label %sw.bb1014
    i32 139, label %sw.bb1014
    i32 130, label %sw.bb1019
    i32 131, label %sw.bb1033
    i32 132, label %sw.bb1045
    i32 133, label %sw.bb1048
    i32 134, label %sw.bb1051
    i32 137, label %sw.bb1051
    i32 135, label %sw.bb1054
    i32 136, label %sw.bb1057
    i32 143, label %sw.bb1060
    i32 144, label %sw.bb1066
    i32 145, label %sw.bb1074
    i32 146, label %sw.bb1082
    i32 149, label %sw.bb1091
    i32 150, label %sw.bb1106
    i32 151, label %sw.bb1118
    i32 152, label %sw.bb1128
    i32 153, label %sw.bb1136
    i32 154, label %sw.bb1144
    i32 155, label %sw.bb1155
    i32 156, label %sw.bb1162
    i32 157, label %sw.bb1165
    i32 158, label %sw.bb1178
    i32 159, label %sw.bb1187
    i32 163, label %sw.bb1192
    i32 164, label %sw.bb1197
    i32 165, label %sw.bb1205
    i32 166, label %sw.bb1211
    i32 167, label %sw.bb1216
    i32 168, label %sw.bb1216
    i32 169, label %sw.bb1222
    i32 170, label %sw.bb1246
    i32 171, label %sw.bb1277
    i32 172, label %sw.bb1277
    i32 173, label %sw.bb1286
    i32 174, label %sw.bb1293
    i32 175, label %sw.bb1348
    i32 176, label %sw.bb1356
    i32 177, label %sw.bb1368
    i32 178, label %sw.bb1378
    i32 179, label %sw.bb1384
    i32 180, label %sw.bb1396
    i32 181, label %sw.bb1404
    i32 182, label %sw.bb1410
    i32 183, label %sw.bb1429
    i32 184, label %sw.bb1437
    i32 185, label %sw.bb1437
    i32 186, label %sw.bb1438
    i32 187, label %sw.bb1439
    i32 188, label %sw.bb1440
    i32 189, label %sw.bb1441
    i32 190, label %sw.bb1442
    i32 191, label %sw.bb1453
    i32 192, label %sw.bb1462
    i32 193, label %sw.bb1499
    i32 194, label %sw.bb1541
    i32 195, label %sw.bb1550
    i32 196, label %sw.bb1556
    i32 197, label %sw.bb1568
    i32 198, label %sw.bb1580
    i32 199, label %sw.bb1580
    i32 200, label %sw.bb1589
    i32 201, label %sw.bb1600
    i32 204, label %sw.bb1600
    i32 203, label %sw.bb1603
    i32 206, label %sw.bb1636
    i32 207, label %sw.bb1685
    i32 208, label %sw.bb1693
    i32 209, label %sw.bb1713
    i32 210, label %sw.bb1747
    i32 211, label %sw.bb1754
    i32 212, label %sw.bb1791
    i32 213, label %sw.bb1806
    i32 216, label %sw.bb1819
    i32 219, label %sw.bb1824
    i32 220, label %sw.bb1832
    i32 222, label %sw.bb1838
    i32 227, label %sw.bb1838
    i32 223, label %sw.bb1843
    i32 224, label %sw.bb1874
    i32 266, label %sw.bb1874
    i32 225, label %sw.bb1877
    i32 228, label %sw.bb1880
    i32 229, label %sw.bb1892
    i32 232, label %sw.bb1902
    i32 233, label %sw.bb1907
    i32 234, label %sw.bb1910
    i32 237, label %sw.bb1915
    i32 238, label %sw.bb1920
    i32 239, label %sw.bb1927
    i32 240, label %sw.bb1934
    i32 241, label %sw.bb1941
    i32 244, label %sw.bb1948
    i32 245, label %sw.bb1970
    i32 246, label %sw.bb2004
    i32 247, label %sw.bb2010
    i32 248, label %sw.bb2013
    i32 249, label %sw.bb2016
    i32 250, label %sw.bb2016
    i32 251, label %sw.bb2026
    i32 252, label %sw.bb2035
    i32 271, label %sw.bb2035
    i32 253, label %sw.bb2038
    i32 272, label %sw.bb2038
    i32 254, label %sw.bb2043
    i32 255, label %sw.bb2053
    i32 256, label %sw.bb2059
    i32 257, label %sw.bb2064
    i32 258, label %sw.bb2065
    i32 259, label %sw.bb2066
    i32 260, label %sw.bb2084
    i32 261, label %sw.bb2103
    i32 262, label %sw.bb2116
    i32 263, label %sw.bb2127
    i32 264, label %sw.bb2138
    i32 265, label %sw.bb2156
    i32 267, label %sw.bb2159
    i32 268, label %sw.bb2162
    i32 269, label %sw.bb2167
    i32 270, label %sw.bb2174
    i32 273, label %sw.bb2177
    i32 274, label %sw.bb2178
    i32 275, label %sw.bb2183
    i32 276, label %sw.bb2184
    i32 277, label %sw.bb2189
    i32 278, label %sw.bb2194
    i32 279, label %sw.bb2211
    i32 280, label %sw.bb2214
    i32 281, label %sw.bb2221
    i32 282, label %sw.bb2222
    i32 283, label %sw.bb2225
    i32 284, label %sw.bb2234
    i32 285, label %sw.bb2235
    i32 286, label %sw.bb2235
    i32 287, label %sw.bb2236
    i32 288, label %sw.bb2239
    i32 289, label %sw.bb2239
    i32 290, label %sw.bb2242
    i32 291, label %sw.bb2252
    i32 292, label %sw.bb2264
    i32 293, label %sw.bb2269
    i32 294, label %sw.bb2282
    i32 295, label %sw.bb2304
    i32 296, label %sw.bb2314
    i32 297, label %sw.bb2326
    i32 298, label %sw.bb2334
    i32 299, label %sw.bb2344
    i32 318, label %sw.bb2344
    i32 300, label %sw.bb2349
    i32 301, label %sw.bb2357
    i32 302, label %sw.bb2361
    i32 303, label %sw.bb2373
    i32 305, label %sw.bb2393
    i32 307, label %sw.bb2393
    i32 306, label %sw.bb2398
    i32 308, label %sw.bb2398
    i32 310, label %sw.bb2399
    i32 309, label %sw.bb2407
    i32 311, label %sw.bb2417
    i32 312, label %sw.bb2420
    i32 313, label %sw.bb2425
    i32 314, label %sw.bb2425
    i32 315, label %sw.bb2431
    i32 316, label %sw.bb2437
    i32 317, label %sw.bb2442
    i32 319, label %sw.bb2451
    i32 320, label %sw.bb2466
    i32 321, label %sw.bb2471
    i32 322, label %sw.bb2493
  ]

sw.bb:                                            ; preds = %if.end6
  %13 = load ptr, ptr %pParse.addr, align 8
  %explain = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 50
  store i8 1, ptr %explain, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  %14 = load ptr, ptr %pParse.addr, align 8
  %explain8 = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 50
  store i8 2, ptr %explain8, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6
  %15 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3FinishCoding(ptr noundef %15)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %yymsp, align 8
  %arrayidx11 = getelementptr inbounds %struct.yyStackEntry, ptr %17, i64 -1
  %minor = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx11, i32 0, i32 2
  %18 = load i32, ptr %minor, align 8
  call void @sqlite3BeginTransaction(ptr noundef %16, i32 noundef %18)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  %19 = load ptr, ptr %yymsp, align 8
  %arrayidx13 = getelementptr inbounds %struct.yyStackEntry, ptr %19, i64 1
  %minor14 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx13, i32 0, i32 2
  store i32 7, ptr %minor14, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end6, %if.end6
  br label %sw.bb16

sw.bb16:                                          ; preds = %sw.bb15, %if.end6
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb16, %if.end6
  %20 = load ptr, ptr %yymsp, align 8
  %arrayidx18 = getelementptr inbounds %struct.yyStackEntry, ptr %20, i64 0
  %major = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx18, i32 0, i32 1
  %21 = load i16, ptr %major, align 2
  %conv19 = zext i16 %21 to i32
  %22 = load ptr, ptr %yymsp, align 8
  %arrayidx20 = getelementptr inbounds %struct.yyStackEntry, ptr %22, i64 0
  %minor21 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx20, i32 0, i32 2
  store i32 %conv19, ptr %minor21, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end6, %if.end6
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %yymsp, align 8
  %arrayidx23 = getelementptr inbounds %struct.yyStackEntry, ptr %24, i64 -1
  %major24 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx23, i32 0, i32 1
  %25 = load i16, ptr %major24, align 2
  %conv25 = zext i16 %25 to i32
  call void @sqlite3EndTransaction(ptr noundef %23, i32 noundef %conv25)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end6
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %yymsp, align 8
  %arrayidx27 = getelementptr inbounds %struct.yyStackEntry, ptr %27, i64 0
  %minor28 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx27, i32 0, i32 2
  call void @sqlite3Savepoint(ptr noundef %26, i32 noundef 0, ptr noundef %minor28)
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end6
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %yymsp, align 8
  %arrayidx30 = getelementptr inbounds %struct.yyStackEntry, ptr %29, i64 0
  %minor31 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx30, i32 0, i32 2
  call void @sqlite3Savepoint(ptr noundef %28, i32 noundef 1, ptr noundef %minor31)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end6
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load ptr, ptr %yymsp, align 8
  %arrayidx33 = getelementptr inbounds %struct.yyStackEntry, ptr %31, i64 0
  %minor34 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx33, i32 0, i32 2
  call void @sqlite3Savepoint(ptr noundef %30, i32 noundef 2, ptr noundef %minor34)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end6
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %yymsp, align 8
  %arrayidx36 = getelementptr inbounds %struct.yyStackEntry, ptr %33, i64 -1
  %minor37 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx36, i32 0, i32 2
  %34 = load ptr, ptr %yymsp, align 8
  %arrayidx38 = getelementptr inbounds %struct.yyStackEntry, ptr %34, i64 0
  %minor39 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx38, i32 0, i32 2
  %35 = load ptr, ptr %yymsp, align 8
  %arrayidx40 = getelementptr inbounds %struct.yyStackEntry, ptr %35, i64 -4
  %minor41 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx40, i32 0, i32 2
  %36 = load i32, ptr %minor41, align 8
  %37 = load ptr, ptr %yymsp, align 8
  %arrayidx42 = getelementptr inbounds %struct.yyStackEntry, ptr %37, i64 -2
  %minor43 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx42, i32 0, i32 2
  %38 = load i32, ptr %minor43, align 8
  call void @sqlite3StartTable(ptr noundef %32, ptr noundef %minor37, ptr noundef %minor39, i32 noundef %36, i32 noundef 0, i32 noundef 0, i32 noundef %38)
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end6
  %39 = load ptr, ptr %pParse.addr, align 8
  call void @disableLookaside(ptr noundef %39)
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end6, %if.end6
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.bb45, %if.end6
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb46, %if.end6
  br label %sw.bb48

sw.bb48:                                          ; preds = %sw.bb47, %if.end6
  br label %sw.bb49

sw.bb49:                                          ; preds = %sw.bb48, %if.end6
  br label %sw.bb50

sw.bb50:                                          ; preds = %sw.bb49, %if.end6
  br label %sw.bb51

sw.bb51:                                          ; preds = %sw.bb50, %if.end6
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb51, %if.end6
  %40 = load ptr, ptr %yymsp, align 8
  %arrayidx53 = getelementptr inbounds %struct.yyStackEntry, ptr %40, i64 1
  %minor54 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx53, i32 0, i32 2
  store i32 0, ptr %minor54, align 8
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end6
  %41 = load ptr, ptr %yymsp, align 8
  %arrayidx56 = getelementptr inbounds %struct.yyStackEntry, ptr %41, i64 -2
  %minor57 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx56, i32 0, i32 2
  store i32 1, ptr %minor57, align 8
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end6, %if.end6
  %42 = load ptr, ptr %yymsp, align 8
  %arrayidx59 = getelementptr inbounds %struct.yyStackEntry, ptr %42, i64 0
  %minor60 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx59, i32 0, i32 2
  store i32 1, ptr %minor60, align 8
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end6
  %43 = load ptr, ptr %pParse.addr, align 8
  %44 = load ptr, ptr %yymsp, align 8
  %arrayidx62 = getelementptr inbounds %struct.yyStackEntry, ptr %44, i64 -2
  %minor63 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx62, i32 0, i32 2
  %45 = load ptr, ptr %yymsp, align 8
  %arrayidx64 = getelementptr inbounds %struct.yyStackEntry, ptr %45, i64 -1
  %minor65 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx64, i32 0, i32 2
  %46 = load ptr, ptr %yymsp, align 8
  %arrayidx66 = getelementptr inbounds %struct.yyStackEntry, ptr %46, i64 0
  %minor67 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx66, i32 0, i32 2
  %47 = load i32, ptr %minor67, align 8
  %conv68 = trunc i32 %47 to i8
  call void @sqlite3EndTable(ptr noundef %43, ptr noundef %minor63, ptr noundef %minor65, i8 noundef zeroext %conv68, ptr noundef null)
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end6
  %48 = load ptr, ptr %pParse.addr, align 8
  %49 = load ptr, ptr %yymsp, align 8
  %arrayidx70 = getelementptr inbounds %struct.yyStackEntry, ptr %49, i64 0
  %minor71 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx70, i32 0, i32 2
  %50 = load ptr, ptr %minor71, align 8
  call void @sqlite3EndTable(ptr noundef %48, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, ptr noundef %50)
  %51 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %db, align 8
  %53 = load ptr, ptr %yymsp, align 8
  %arrayidx72 = getelementptr inbounds %struct.yyStackEntry, ptr %53, i64 0
  %minor73 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx72, i32 0, i32 2
  %54 = load ptr, ptr %minor73, align 8
  call void @sqlite3SelectDelete(ptr noundef %52, ptr noundef %54)
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end6
  %55 = load ptr, ptr %yymsp, align 8
  %arrayidx75 = getelementptr inbounds %struct.yyStackEntry, ptr %55, i64 0
  %minor76 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx75, i32 0, i32 2
  %n = getelementptr inbounds nuw %struct.Token, ptr %minor76, i32 0, i32 1
  %56 = load i32, ptr %n, align 8
  %cmp77 = icmp eq i32 %56, 5
  br i1 %cmp77, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb74
  %57 = load ptr, ptr %yymsp, align 8
  %arrayidx79 = getelementptr inbounds %struct.yyStackEntry, ptr %57, i64 0
  %minor80 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx79, i32 0, i32 2
  %z = getelementptr inbounds nuw %struct.Token, ptr %minor80, i32 0, i32 0
  %58 = load ptr, ptr %z, align 8
  %call = call i32 @sqlite3_strnicmp(ptr noundef %58, ptr noundef @.str.510, i32 noundef 5)
  %cmp81 = icmp eq i32 %call, 0
  br i1 %cmp81, label %if.then83, label %if.else

if.then83:                                        ; preds = %land.lhs.true
  %59 = load ptr, ptr %yymsp, align 8
  %arrayidx84 = getelementptr inbounds %struct.yyStackEntry, ptr %59, i64 -1
  %minor85 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx84, i32 0, i32 2
  store i32 96, ptr %minor85, align 8
  br label %if.end94

if.else:                                          ; preds = %land.lhs.true, %sw.bb74
  %60 = load ptr, ptr %yymsp, align 8
  %arrayidx86 = getelementptr inbounds %struct.yyStackEntry, ptr %60, i64 -1
  %minor87 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx86, i32 0, i32 2
  store i32 0, ptr %minor87, align 8
  %61 = load ptr, ptr %pParse.addr, align 8
  %62 = load ptr, ptr %yymsp, align 8
  %arrayidx88 = getelementptr inbounds %struct.yyStackEntry, ptr %62, i64 0
  %minor89 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx88, i32 0, i32 2
  %n90 = getelementptr inbounds nuw %struct.Token, ptr %minor89, i32 0, i32 1
  %63 = load i32, ptr %n90, align 8
  %64 = load ptr, ptr %yymsp, align 8
  %arrayidx91 = getelementptr inbounds %struct.yyStackEntry, ptr %64, i64 0
  %minor92 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx91, i32 0, i32 2
  %z93 = getelementptr inbounds nuw %struct.Token, ptr %minor92, i32 0, i32 0
  %65 = load ptr, ptr %z93, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %61, ptr noundef @.str.555, i32 noundef %63, ptr noundef %65)
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then83
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end6
  %66 = load ptr, ptr %pParse.addr, align 8
  %67 = load ptr, ptr %yymsp, align 8
  %arrayidx96 = getelementptr inbounds %struct.yyStackEntry, ptr %67, i64 -1
  %minor97 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx96, i32 0, i32 2
  %68 = load ptr, ptr %yymsp, align 8
  %arrayidx98 = getelementptr inbounds %struct.yyStackEntry, ptr %68, i64 0
  %minor99 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx98, i32 0, i32 2
  call void @sqlite3AddColumn(ptr noundef %66, ptr noundef %minor97, ptr noundef %minor99)
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.end6, %if.end6
  br label %sw.bb101

sw.bb101:                                         ; preds = %sw.bb100, %if.end6
  %69 = load ptr, ptr %yymsp, align 8
  %arrayidx102 = getelementptr inbounds %struct.yyStackEntry, ptr %69, i64 1
  %minor103 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx102, i32 0, i32 2
  %n104 = getelementptr inbounds nuw %struct.Token, ptr %minor103, i32 0, i32 1
  store i32 0, ptr %n104, align 8
  %70 = load ptr, ptr %yymsp, align 8
  %arrayidx105 = getelementptr inbounds %struct.yyStackEntry, ptr %70, i64 1
  %minor106 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx105, i32 0, i32 2
  %z107 = getelementptr inbounds nuw %struct.Token, ptr %minor106, i32 0, i32 0
  store ptr null, ptr %z107, align 8
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.end6
  %71 = load ptr, ptr %yymsp, align 8
  %arrayidx109 = getelementptr inbounds %struct.yyStackEntry, ptr %71, i64 0
  %minor110 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx109, i32 0, i32 2
  %z111 = getelementptr inbounds nuw %struct.Token, ptr %minor110, i32 0, i32 0
  %72 = load ptr, ptr %z111, align 8
  %73 = load ptr, ptr %yymsp, align 8
  %arrayidx112 = getelementptr inbounds %struct.yyStackEntry, ptr %73, i64 0
  %minor113 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx112, i32 0, i32 2
  %n114 = getelementptr inbounds nuw %struct.Token, ptr %minor113, i32 0, i32 1
  %74 = load i32, ptr %n114, align 8
  %idxprom115 = zext i32 %74 to i64
  %arrayidx116 = getelementptr inbounds nuw i8, ptr %72, i64 %idxprom115
  %75 = load ptr, ptr %yymsp, align 8
  %arrayidx117 = getelementptr inbounds %struct.yyStackEntry, ptr %75, i64 -3
  %minor118 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx117, i32 0, i32 2
  %z119 = getelementptr inbounds nuw %struct.Token, ptr %minor118, i32 0, i32 0
  %76 = load ptr, ptr %z119, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx116 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %76 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv120 = trunc i64 %sub.ptr.sub to i32
  %77 = load ptr, ptr %yymsp, align 8
  %arrayidx121 = getelementptr inbounds %struct.yyStackEntry, ptr %77, i64 -3
  %minor122 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx121, i32 0, i32 2
  %n123 = getelementptr inbounds nuw %struct.Token, ptr %minor122, i32 0, i32 1
  store i32 %conv120, ptr %n123, align 8
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end6
  %78 = load ptr, ptr %yymsp, align 8
  %arrayidx125 = getelementptr inbounds %struct.yyStackEntry, ptr %78, i64 0
  %minor126 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx125, i32 0, i32 2
  %z127 = getelementptr inbounds nuw %struct.Token, ptr %minor126, i32 0, i32 0
  %79 = load ptr, ptr %z127, align 8
  %80 = load ptr, ptr %yymsp, align 8
  %arrayidx128 = getelementptr inbounds %struct.yyStackEntry, ptr %80, i64 0
  %minor129 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx128, i32 0, i32 2
  %n130 = getelementptr inbounds nuw %struct.Token, ptr %minor129, i32 0, i32 1
  %81 = load i32, ptr %n130, align 8
  %idxprom131 = zext i32 %81 to i64
  %arrayidx132 = getelementptr inbounds nuw i8, ptr %79, i64 %idxprom131
  %82 = load ptr, ptr %yymsp, align 8
  %arrayidx133 = getelementptr inbounds %struct.yyStackEntry, ptr %82, i64 -5
  %minor134 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx133, i32 0, i32 2
  %z135 = getelementptr inbounds nuw %struct.Token, ptr %minor134, i32 0, i32 0
  %83 = load ptr, ptr %z135, align 8
  %sub.ptr.lhs.cast136 = ptrtoint ptr %arrayidx132 to i64
  %sub.ptr.rhs.cast137 = ptrtoint ptr %83 to i64
  %sub.ptr.sub138 = sub i64 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast137
  %conv139 = trunc i64 %sub.ptr.sub138 to i32
  %84 = load ptr, ptr %yymsp, align 8
  %arrayidx140 = getelementptr inbounds %struct.yyStackEntry, ptr %84, i64 -5
  %minor141 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx140, i32 0, i32 2
  %n142 = getelementptr inbounds nuw %struct.Token, ptr %minor141, i32 0, i32 1
  store i32 %conv139, ptr %n142, align 8
  br label %sw.epilog

sw.bb143:                                         ; preds = %if.end6
  %85 = load ptr, ptr %yymsp, align 8
  %arrayidx144 = getelementptr inbounds %struct.yyStackEntry, ptr %85, i64 0
  %minor145 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx144, i32 0, i32 2
  %n146 = getelementptr inbounds nuw %struct.Token, ptr %minor145, i32 0, i32 1
  %86 = load i32, ptr %n146, align 8
  %87 = load ptr, ptr %yymsp, align 8
  %arrayidx147 = getelementptr inbounds %struct.yyStackEntry, ptr %87, i64 0
  %minor148 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx147, i32 0, i32 2
  %z149 = getelementptr inbounds nuw %struct.Token, ptr %minor148, i32 0, i32 0
  %88 = load ptr, ptr %z149, align 8
  %89 = load ptr, ptr %yymsp, align 8
  %arrayidx150 = getelementptr inbounds %struct.yyStackEntry, ptr %89, i64 -1
  %minor151 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx150, i32 0, i32 2
  %z152 = getelementptr inbounds nuw %struct.Token, ptr %minor151, i32 0, i32 0
  %90 = load ptr, ptr %z152, align 8
  %sub.ptr.lhs.cast153 = ptrtoint ptr %88 to i64
  %sub.ptr.rhs.cast154 = ptrtoint ptr %90 to i64
  %sub.ptr.sub155 = sub i64 %sub.ptr.lhs.cast153, %sub.ptr.rhs.cast154
  %conv156 = trunc i64 %sub.ptr.sub155 to i32
  %add = add i32 %86, %conv156
  %91 = load ptr, ptr %yymsp, align 8
  %arrayidx157 = getelementptr inbounds %struct.yyStackEntry, ptr %91, i64 -1
  %minor158 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx157, i32 0, i32 2
  %n159 = getelementptr inbounds nuw %struct.Token, ptr %minor158, i32 0, i32 1
  store i32 %add, ptr %n159, align 8
  br label %sw.epilog

sw.bb160:                                         ; preds = %if.end6
  %z161 = getelementptr inbounds nuw %struct.Token, ptr %yyLookaheadToken, i32 0, i32 0
  %92 = load ptr, ptr %z161, align 8
  %93 = load ptr, ptr %yymsp, align 8
  %arrayidx162 = getelementptr inbounds %struct.yyStackEntry, ptr %93, i64 1
  %minor163 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx162, i32 0, i32 2
  store ptr %92, ptr %minor163, align 8
  br label %sw.epilog

sw.bb164:                                         ; preds = %if.end6
  %94 = load ptr, ptr %yymsp, align 8
  %arrayidx165 = getelementptr inbounds %struct.yyStackEntry, ptr %94, i64 1
  %minor166 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx165, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor166, ptr align 8 %yyLookaheadToken, i64 16, i1 false)
  br label %sw.epilog

sw.bb167:                                         ; preds = %if.end6, %if.end6
  %95 = load ptr, ptr %pParse.addr, align 8
  %constraintName = getelementptr inbounds nuw %struct.Parse, ptr %95, i32 0, i32 25
  %96 = load ptr, ptr %yymsp, align 8
  %arrayidx168 = getelementptr inbounds %struct.yyStackEntry, ptr %96, i64 0
  %minor169 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx168, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %constraintName, ptr align 8 %minor169, i64 16, i1 false)
  br label %sw.epilog

sw.bb170:                                         ; preds = %if.end6
  %97 = load ptr, ptr %pParse.addr, align 8
  %98 = load ptr, ptr %yymsp, align 8
  %arrayidx171 = getelementptr inbounds %struct.yyStackEntry, ptr %98, i64 0
  %minor172 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx171, i32 0, i32 2
  %99 = load ptr, ptr %minor172, align 8
  %100 = load ptr, ptr %yymsp, align 8
  %arrayidx173 = getelementptr inbounds %struct.yyStackEntry, ptr %100, i64 -1
  %minor174 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx173, i32 0, i32 2
  %z175 = getelementptr inbounds nuw %struct.Token, ptr %minor174, i32 0, i32 0
  %101 = load ptr, ptr %z175, align 8
  %102 = load ptr, ptr %yymsp, align 8
  %arrayidx176 = getelementptr inbounds %struct.yyStackEntry, ptr %102, i64 -1
  %minor177 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx176, i32 0, i32 2
  %z178 = getelementptr inbounds nuw %struct.Token, ptr %minor177, i32 0, i32 0
  %103 = load ptr, ptr %z178, align 8
  %104 = load ptr, ptr %yymsp, align 8
  %arrayidx179 = getelementptr inbounds %struct.yyStackEntry, ptr %104, i64 -1
  %minor180 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx179, i32 0, i32 2
  %n181 = getelementptr inbounds nuw %struct.Token, ptr %minor180, i32 0, i32 1
  %105 = load i32, ptr %n181, align 8
  %idxprom182 = zext i32 %105 to i64
  %arrayidx183 = getelementptr inbounds nuw i8, ptr %103, i64 %idxprom182
  call void @sqlite3AddDefaultValue(ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %arrayidx183)
  br label %sw.epilog

sw.bb184:                                         ; preds = %if.end6
  %106 = load ptr, ptr %pParse.addr, align 8
  %107 = load ptr, ptr %yymsp, align 8
  %arrayidx185 = getelementptr inbounds %struct.yyStackEntry, ptr %107, i64 -1
  %minor186 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx185, i32 0, i32 2
  %108 = load ptr, ptr %minor186, align 8
  %109 = load ptr, ptr %yymsp, align 8
  %arrayidx187 = getelementptr inbounds %struct.yyStackEntry, ptr %109, i64 -2
  %minor188 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx187, i32 0, i32 2
  %z189 = getelementptr inbounds nuw %struct.Token, ptr %minor188, i32 0, i32 0
  %110 = load ptr, ptr %z189, align 8
  %add.ptr = getelementptr inbounds i8, ptr %110, i64 1
  %111 = load ptr, ptr %yymsp, align 8
  %arrayidx190 = getelementptr inbounds %struct.yyStackEntry, ptr %111, i64 0
  %minor191 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx190, i32 0, i32 2
  %z192 = getelementptr inbounds nuw %struct.Token, ptr %minor191, i32 0, i32 0
  %112 = load ptr, ptr %z192, align 8
  call void @sqlite3AddDefaultValue(ptr noundef %106, ptr noundef %108, ptr noundef %add.ptr, ptr noundef %112)
  br label %sw.epilog

sw.bb193:                                         ; preds = %if.end6
  %113 = load ptr, ptr %pParse.addr, align 8
  %114 = load ptr, ptr %yymsp, align 8
  %arrayidx194 = getelementptr inbounds %struct.yyStackEntry, ptr %114, i64 0
  %minor195 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx194, i32 0, i32 2
  %115 = load ptr, ptr %minor195, align 8
  %116 = load ptr, ptr %yymsp, align 8
  %arrayidx196 = getelementptr inbounds %struct.yyStackEntry, ptr %116, i64 -2
  %minor197 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx196, i32 0, i32 2
  %z198 = getelementptr inbounds nuw %struct.Token, ptr %minor197, i32 0, i32 0
  %117 = load ptr, ptr %z198, align 8
  %118 = load ptr, ptr %yymsp, align 8
  %arrayidx199 = getelementptr inbounds %struct.yyStackEntry, ptr %118, i64 -1
  %minor200 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx199, i32 0, i32 2
  %z201 = getelementptr inbounds nuw %struct.Token, ptr %minor200, i32 0, i32 0
  %119 = load ptr, ptr %z201, align 8
  %120 = load ptr, ptr %yymsp, align 8
  %arrayidx202 = getelementptr inbounds %struct.yyStackEntry, ptr %120, i64 -1
  %minor203 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx202, i32 0, i32 2
  %n204 = getelementptr inbounds nuw %struct.Token, ptr %minor203, i32 0, i32 1
  %121 = load i32, ptr %n204, align 8
  %idxprom205 = zext i32 %121 to i64
  %arrayidx206 = getelementptr inbounds nuw i8, ptr %119, i64 %idxprom205
  call void @sqlite3AddDefaultValue(ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %arrayidx206)
  br label %sw.epilog

sw.bb207:                                         ; preds = %if.end6
  %122 = load ptr, ptr %pParse.addr, align 8
  %123 = load ptr, ptr %yymsp, align 8
  %arrayidx208 = getelementptr inbounds %struct.yyStackEntry, ptr %123, i64 0
  %minor209 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx208, i32 0, i32 2
  %124 = load ptr, ptr %minor209, align 8
  %call210 = call ptr @sqlite3PExpr(ptr noundef %122, i32 noundef 168, ptr noundef %124, ptr noundef null)
  store ptr %call210, ptr %p, align 8
  %125 = load ptr, ptr %pParse.addr, align 8
  %126 = load ptr, ptr %p, align 8
  %127 = load ptr, ptr %yymsp, align 8
  %arrayidx211 = getelementptr inbounds %struct.yyStackEntry, ptr %127, i64 -2
  %minor212 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx211, i32 0, i32 2
  %z213 = getelementptr inbounds nuw %struct.Token, ptr %minor212, i32 0, i32 0
  %128 = load ptr, ptr %z213, align 8
  %129 = load ptr, ptr %yymsp, align 8
  %arrayidx214 = getelementptr inbounds %struct.yyStackEntry, ptr %129, i64 -1
  %minor215 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx214, i32 0, i32 2
  %z216 = getelementptr inbounds nuw %struct.Token, ptr %minor215, i32 0, i32 0
  %130 = load ptr, ptr %z216, align 8
  %131 = load ptr, ptr %yymsp, align 8
  %arrayidx217 = getelementptr inbounds %struct.yyStackEntry, ptr %131, i64 -1
  %minor218 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx217, i32 0, i32 2
  %n219 = getelementptr inbounds nuw %struct.Token, ptr %minor218, i32 0, i32 1
  %132 = load i32, ptr %n219, align 8
  %idxprom220 = zext i32 %132 to i64
  %arrayidx221 = getelementptr inbounds nuw i8, ptr %130, i64 %idxprom220
  call void @sqlite3AddDefaultValue(ptr noundef %125, ptr noundef %126, ptr noundef %128, ptr noundef %arrayidx221)
  br label %sw.epilog

sw.bb222:                                         ; preds = %if.end6
  %133 = load ptr, ptr %pParse.addr, align 8
  %134 = load ptr, ptr %yymsp, align 8
  %arrayidx224 = getelementptr inbounds %struct.yyStackEntry, ptr %134, i64 0
  %minor225 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx224, i32 0, i32 2
  %135 = getelementptr inbounds nuw { ptr, i32 }, ptr %minor225, i32 0, i32 0
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds nuw { ptr, i32 }, ptr %minor225, i32 0, i32 1
  %138 = load i32, ptr %137, align 8
  %call226 = call ptr @tokenExpr(ptr noundef %133, i32 noundef 113, ptr %136, i32 %138)
  store ptr %call226, ptr %p223, align 8
  %139 = load ptr, ptr %p223, align 8
  %tobool = icmp ne ptr %139, null
  br i1 %tobool, label %if.then227, label %if.end229

if.then227:                                       ; preds = %sw.bb222
  %140 = load ptr, ptr %p223, align 8
  %call228 = call i32 @sqlite3ExprIdToTrueFalse(ptr noundef %140)
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %sw.bb222
  %141 = load ptr, ptr %pParse.addr, align 8
  %142 = load ptr, ptr %p223, align 8
  %143 = load ptr, ptr %yymsp, align 8
  %arrayidx230 = getelementptr inbounds %struct.yyStackEntry, ptr %143, i64 0
  %minor231 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx230, i32 0, i32 2
  %z232 = getelementptr inbounds nuw %struct.Token, ptr %minor231, i32 0, i32 0
  %144 = load ptr, ptr %z232, align 8
  %145 = load ptr, ptr %yymsp, align 8
  %arrayidx233 = getelementptr inbounds %struct.yyStackEntry, ptr %145, i64 0
  %minor234 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx233, i32 0, i32 2
  %z235 = getelementptr inbounds nuw %struct.Token, ptr %minor234, i32 0, i32 0
  %146 = load ptr, ptr %z235, align 8
  %147 = load ptr, ptr %yymsp, align 8
  %arrayidx236 = getelementptr inbounds %struct.yyStackEntry, ptr %147, i64 0
  %minor237 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx236, i32 0, i32 2
  %n238 = getelementptr inbounds nuw %struct.Token, ptr %minor237, i32 0, i32 1
  %148 = load i32, ptr %n238, align 8
  %idx.ext = zext i32 %148 to i64
  %add.ptr239 = getelementptr inbounds nuw i8, ptr %146, i64 %idx.ext
  call void @sqlite3AddDefaultValue(ptr noundef %141, ptr noundef %142, ptr noundef %144, ptr noundef %add.ptr239)
  br label %sw.epilog

sw.bb240:                                         ; preds = %if.end6
  %149 = load ptr, ptr %pParse.addr, align 8
  %150 = load ptr, ptr %yymsp, align 8
  %arrayidx241 = getelementptr inbounds %struct.yyStackEntry, ptr %150, i64 0
  %minor242 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx241, i32 0, i32 2
  %151 = load i32, ptr %minor242, align 8
  call void @sqlite3AddNotNull(ptr noundef %149, i32 noundef %151)
  br label %sw.epilog

sw.bb243:                                         ; preds = %if.end6
  %152 = load ptr, ptr %pParse.addr, align 8
  %153 = load ptr, ptr %yymsp, align 8
  %arrayidx244 = getelementptr inbounds %struct.yyStackEntry, ptr %153, i64 -1
  %minor245 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx244, i32 0, i32 2
  %154 = load i32, ptr %minor245, align 8
  %155 = load ptr, ptr %yymsp, align 8
  %arrayidx246 = getelementptr inbounds %struct.yyStackEntry, ptr %155, i64 0
  %minor247 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx246, i32 0, i32 2
  %156 = load i32, ptr %minor247, align 8
  %157 = load ptr, ptr %yymsp, align 8
  %arrayidx248 = getelementptr inbounds %struct.yyStackEntry, ptr %157, i64 -2
  %minor249 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx248, i32 0, i32 2
  %158 = load i32, ptr %minor249, align 8
  call void @sqlite3AddPrimaryKey(ptr noundef %152, ptr noundef null, i32 noundef %154, i32 noundef %156, i32 noundef %158)
  br label %sw.epilog

sw.bb250:                                         ; preds = %if.end6
  %159 = load ptr, ptr %pParse.addr, align 8
  %160 = load ptr, ptr %yymsp, align 8
  %arrayidx251 = getelementptr inbounds %struct.yyStackEntry, ptr %160, i64 0
  %minor252 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx251, i32 0, i32 2
  %161 = load i32, ptr %minor252, align 8
  call void @sqlite3CreateIndex(ptr noundef %159, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %161, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  br label %sw.epilog

sw.bb253:                                         ; preds = %if.end6
  %162 = load ptr, ptr %pParse.addr, align 8
  %163 = load ptr, ptr %yymsp, align 8
  %arrayidx254 = getelementptr inbounds %struct.yyStackEntry, ptr %163, i64 -1
  %minor255 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx254, i32 0, i32 2
  %164 = load ptr, ptr %minor255, align 8
  call void @sqlite3AddCheckConstraint(ptr noundef %162, ptr noundef %164)
  br label %sw.epilog

sw.bb256:                                         ; preds = %if.end6
  %165 = load ptr, ptr %pParse.addr, align 8
  %166 = load ptr, ptr %yymsp, align 8
  %arrayidx257 = getelementptr inbounds %struct.yyStackEntry, ptr %166, i64 -2
  %minor258 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx257, i32 0, i32 2
  %167 = load ptr, ptr %yymsp, align 8
  %arrayidx259 = getelementptr inbounds %struct.yyStackEntry, ptr %167, i64 -1
  %minor260 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx259, i32 0, i32 2
  %168 = load ptr, ptr %minor260, align 8
  %169 = load ptr, ptr %yymsp, align 8
  %arrayidx261 = getelementptr inbounds %struct.yyStackEntry, ptr %169, i64 0
  %minor262 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx261, i32 0, i32 2
  %170 = load i32, ptr %minor262, align 8
  call void @sqlite3CreateForeignKey(ptr noundef %165, ptr noundef null, ptr noundef %minor258, ptr noundef %168, i32 noundef %170)
  br label %sw.epilog

sw.bb263:                                         ; preds = %if.end6
  %171 = load ptr, ptr %pParse.addr, align 8
  %172 = load ptr, ptr %yymsp, align 8
  %arrayidx264 = getelementptr inbounds %struct.yyStackEntry, ptr %172, i64 0
  %minor265 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx264, i32 0, i32 2
  %173 = load i32, ptr %minor265, align 8
  call void @sqlite3DeferForeignKey(ptr noundef %171, i32 noundef %173)
  br label %sw.epilog

sw.bb266:                                         ; preds = %if.end6
  %174 = load ptr, ptr %pParse.addr, align 8
  %175 = load ptr, ptr %yymsp, align 8
  %arrayidx267 = getelementptr inbounds %struct.yyStackEntry, ptr %175, i64 0
  %minor268 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx267, i32 0, i32 2
  call void @sqlite3AddCollateType(ptr noundef %174, ptr noundef %minor268)
  br label %sw.epilog

sw.bb269:                                         ; preds = %if.end6
  %176 = load ptr, ptr %yymsp, align 8
  %arrayidx270 = getelementptr inbounds %struct.yyStackEntry, ptr %176, i64 1
  %minor271 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx270, i32 0, i32 2
  store i32 0, ptr %minor271, align 8
  br label %sw.epilog

sw.bb272:                                         ; preds = %if.end6
  %177 = load ptr, ptr %yymsp, align 8
  %arrayidx273 = getelementptr inbounds %struct.yyStackEntry, ptr %177, i64 -1
  %minor274 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx273, i32 0, i32 2
  %178 = load i32, ptr %minor274, align 8
  %179 = load ptr, ptr %yymsp, align 8
  %arrayidx275 = getelementptr inbounds %struct.yyStackEntry, ptr %179, i64 0
  %minor276 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx275, i32 0, i32 2
  %mask = getelementptr inbounds nuw %struct.anon.13, ptr %minor276, i32 0, i32 1
  %180 = load i32, ptr %mask, align 4
  %not = xor i32 %180, -1
  %and = and i32 %178, %not
  %181 = load ptr, ptr %yymsp, align 8
  %arrayidx277 = getelementptr inbounds %struct.yyStackEntry, ptr %181, i64 0
  %minor278 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx277, i32 0, i32 2
  %value = getelementptr inbounds nuw %struct.anon.13, ptr %minor278, i32 0, i32 0
  %182 = load i32, ptr %value, align 8
  %or = or i32 %and, %182
  %183 = load ptr, ptr %yymsp, align 8
  %arrayidx279 = getelementptr inbounds %struct.yyStackEntry, ptr %183, i64 -1
  %minor280 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx279, i32 0, i32 2
  store i32 %or, ptr %minor280, align 8
  br label %sw.epilog

sw.bb281:                                         ; preds = %if.end6
  %184 = load ptr, ptr %yymsp, align 8
  %arrayidx282 = getelementptr inbounds %struct.yyStackEntry, ptr %184, i64 -1
  %minor283 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx282, i32 0, i32 2
  %value284 = getelementptr inbounds nuw %struct.anon.13, ptr %minor283, i32 0, i32 0
  store i32 0, ptr %value284, align 8
  %185 = load ptr, ptr %yymsp, align 8
  %arrayidx285 = getelementptr inbounds %struct.yyStackEntry, ptr %185, i64 -1
  %minor286 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx285, i32 0, i32 2
  %mask287 = getelementptr inbounds nuw %struct.anon.13, ptr %minor286, i32 0, i32 1
  store i32 0, ptr %mask287, align 4
  br label %sw.epilog

sw.bb288:                                         ; preds = %if.end6
  %186 = load ptr, ptr %yymsp, align 8
  %arrayidx289 = getelementptr inbounds %struct.yyStackEntry, ptr %186, i64 -2
  %minor290 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx289, i32 0, i32 2
  %value291 = getelementptr inbounds nuw %struct.anon.13, ptr %minor290, i32 0, i32 0
  store i32 0, ptr %value291, align 8
  %187 = load ptr, ptr %yymsp, align 8
  %arrayidx292 = getelementptr inbounds %struct.yyStackEntry, ptr %187, i64 -2
  %minor293 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx292, i32 0, i32 2
  %mask294 = getelementptr inbounds nuw %struct.anon.13, ptr %minor293, i32 0, i32 1
  store i32 0, ptr %mask294, align 4
  br label %sw.epilog

sw.bb295:                                         ; preds = %if.end6
  %188 = load ptr, ptr %yymsp, align 8
  %arrayidx296 = getelementptr inbounds %struct.yyStackEntry, ptr %188, i64 0
  %minor297 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx296, i32 0, i32 2
  %189 = load i32, ptr %minor297, align 8
  %190 = load ptr, ptr %yymsp, align 8
  %arrayidx298 = getelementptr inbounds %struct.yyStackEntry, ptr %190, i64 -2
  %minor299 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx298, i32 0, i32 2
  %value300 = getelementptr inbounds nuw %struct.anon.13, ptr %minor299, i32 0, i32 0
  store i32 %189, ptr %value300, align 8
  %191 = load ptr, ptr %yymsp, align 8
  %arrayidx301 = getelementptr inbounds %struct.yyStackEntry, ptr %191, i64 -2
  %minor302 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx301, i32 0, i32 2
  %mask303 = getelementptr inbounds nuw %struct.anon.13, ptr %minor302, i32 0, i32 1
  store i32 255, ptr %mask303, align 4
  br label %sw.epilog

sw.bb304:                                         ; preds = %if.end6
  %192 = load ptr, ptr %yymsp, align 8
  %arrayidx305 = getelementptr inbounds %struct.yyStackEntry, ptr %192, i64 0
  %minor306 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx305, i32 0, i32 2
  %193 = load i32, ptr %minor306, align 8
  %shl = shl i32 %193, 8
  %194 = load ptr, ptr %yymsp, align 8
  %arrayidx307 = getelementptr inbounds %struct.yyStackEntry, ptr %194, i64 -2
  %minor308 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx307, i32 0, i32 2
  %value309 = getelementptr inbounds nuw %struct.anon.13, ptr %minor308, i32 0, i32 0
  store i32 %shl, ptr %value309, align 8
  %195 = load ptr, ptr %yymsp, align 8
  %arrayidx310 = getelementptr inbounds %struct.yyStackEntry, ptr %195, i64 -2
  %minor311 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx310, i32 0, i32 2
  %mask312 = getelementptr inbounds nuw %struct.anon.13, ptr %minor311, i32 0, i32 1
  store i32 65280, ptr %mask312, align 4
  br label %sw.epilog

sw.bb313:                                         ; preds = %if.end6
  %196 = load ptr, ptr %yymsp, align 8
  %arrayidx314 = getelementptr inbounds %struct.yyStackEntry, ptr %196, i64 -1
  %minor315 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx314, i32 0, i32 2
  store i32 8, ptr %minor315, align 8
  br label %sw.epilog

sw.bb316:                                         ; preds = %if.end6
  %197 = load ptr, ptr %yymsp, align 8
  %arrayidx317 = getelementptr inbounds %struct.yyStackEntry, ptr %197, i64 -1
  %minor318 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx317, i32 0, i32 2
  store i32 9, ptr %minor318, align 8
  br label %sw.epilog

sw.bb319:                                         ; preds = %if.end6
  %198 = load ptr, ptr %yymsp, align 8
  %arrayidx320 = getelementptr inbounds %struct.yyStackEntry, ptr %198, i64 0
  %minor321 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx320, i32 0, i32 2
  store i32 10, ptr %minor321, align 8
  br label %sw.epilog

sw.bb322:                                         ; preds = %if.end6
  %199 = load ptr, ptr %yymsp, align 8
  %arrayidx323 = getelementptr inbounds %struct.yyStackEntry, ptr %199, i64 0
  %minor324 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx323, i32 0, i32 2
  store i32 7, ptr %minor324, align 8
  br label %sw.epilog

sw.bb325:                                         ; preds = %if.end6
  %200 = load ptr, ptr %yymsp, align 8
  %arrayidx326 = getelementptr inbounds %struct.yyStackEntry, ptr %200, i64 -1
  %minor327 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx326, i32 0, i32 2
  store i32 0, ptr %minor327, align 8
  br label %sw.epilog

sw.bb328:                                         ; preds = %if.end6
  %201 = load ptr, ptr %yymsp, align 8
  %arrayidx329 = getelementptr inbounds %struct.yyStackEntry, ptr %201, i64 -2
  %minor330 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx329, i32 0, i32 2
  store i32 0, ptr %minor330, align 8
  br label %sw.epilog

sw.bb331:                                         ; preds = %if.end6, %if.end6
  br label %sw.bb332

sw.bb332:                                         ; preds = %sw.bb331, %if.end6
  %202 = load ptr, ptr %yymsp, align 8
  %arrayidx333 = getelementptr inbounds %struct.yyStackEntry, ptr %202, i64 0
  %minor334 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx333, i32 0, i32 2
  %203 = load i32, ptr %minor334, align 8
  %204 = load ptr, ptr %yymsp, align 8
  %arrayidx335 = getelementptr inbounds %struct.yyStackEntry, ptr %204, i64 -1
  %minor336 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx335, i32 0, i32 2
  store i32 %203, ptr %minor336, align 8
  br label %sw.epilog

sw.bb337:                                         ; preds = %if.end6, %if.end6
  br label %sw.bb338

sw.bb338:                                         ; preds = %sw.bb337, %if.end6
  br label %sw.bb339

sw.bb339:                                         ; preds = %sw.bb338, %if.end6
  br label %sw.bb340

sw.bb340:                                         ; preds = %sw.bb339, %if.end6
  %205 = load ptr, ptr %yymsp, align 8
  %arrayidx341 = getelementptr inbounds %struct.yyStackEntry, ptr %205, i64 -1
  %minor342 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx341, i32 0, i32 2
  store i32 1, ptr %minor342, align 8
  br label %sw.epilog

sw.bb343:                                         ; preds = %if.end6
  %206 = load ptr, ptr %yymsp, align 8
  %arrayidx344 = getelementptr inbounds %struct.yyStackEntry, ptr %206, i64 -1
  %minor345 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx344, i32 0, i32 2
  store i32 0, ptr %minor345, align 8
  br label %sw.epilog

sw.bb346:                                         ; preds = %if.end6
  %207 = load ptr, ptr %pParse.addr, align 8
  %constraintName347 = getelementptr inbounds nuw %struct.Parse, ptr %207, i32 0, i32 25
  %n348 = getelementptr inbounds nuw %struct.Token, ptr %constraintName347, i32 0, i32 1
  store i32 0, ptr %n348, align 8
  br label %sw.epilog

sw.bb349:                                         ; preds = %if.end6
  %208 = load ptr, ptr %pParse.addr, align 8
  %209 = load ptr, ptr %yymsp, align 8
  %arrayidx350 = getelementptr inbounds %struct.yyStackEntry, ptr %209, i64 -3
  %minor351 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx350, i32 0, i32 2
  %210 = load ptr, ptr %minor351, align 8
  %211 = load ptr, ptr %yymsp, align 8
  %arrayidx352 = getelementptr inbounds %struct.yyStackEntry, ptr %211, i64 0
  %minor353 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx352, i32 0, i32 2
  %212 = load i32, ptr %minor353, align 8
  %213 = load ptr, ptr %yymsp, align 8
  %arrayidx354 = getelementptr inbounds %struct.yyStackEntry, ptr %213, i64 -2
  %minor355 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx354, i32 0, i32 2
  %214 = load i32, ptr %minor355, align 8
  call void @sqlite3AddPrimaryKey(ptr noundef %208, ptr noundef %210, i32 noundef %212, i32 noundef %214, i32 noundef 0)
  br label %sw.epilog

sw.bb356:                                         ; preds = %if.end6
  %215 = load ptr, ptr %pParse.addr, align 8
  %216 = load ptr, ptr %yymsp, align 8
  %arrayidx357 = getelementptr inbounds %struct.yyStackEntry, ptr %216, i64 -2
  %minor358 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx357, i32 0, i32 2
  %217 = load ptr, ptr %minor358, align 8
  %218 = load ptr, ptr %yymsp, align 8
  %arrayidx359 = getelementptr inbounds %struct.yyStackEntry, ptr %218, i64 0
  %minor360 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx359, i32 0, i32 2
  %219 = load i32, ptr %minor360, align 8
  call void @sqlite3CreateIndex(ptr noundef %215, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %217, i32 noundef %219, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  br label %sw.epilog

sw.bb361:                                         ; preds = %if.end6
  %220 = load ptr, ptr %pParse.addr, align 8
  %221 = load ptr, ptr %yymsp, align 8
  %arrayidx362 = getelementptr inbounds %struct.yyStackEntry, ptr %221, i64 -2
  %minor363 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx362, i32 0, i32 2
  %222 = load ptr, ptr %minor363, align 8
  call void @sqlite3AddCheckConstraint(ptr noundef %220, ptr noundef %222)
  br label %sw.epilog

sw.bb364:                                         ; preds = %if.end6
  %223 = load ptr, ptr %pParse.addr, align 8
  %224 = load ptr, ptr %yymsp, align 8
  %arrayidx365 = getelementptr inbounds %struct.yyStackEntry, ptr %224, i64 -6
  %minor366 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx365, i32 0, i32 2
  %225 = load ptr, ptr %minor366, align 8
  %226 = load ptr, ptr %yymsp, align 8
  %arrayidx367 = getelementptr inbounds %struct.yyStackEntry, ptr %226, i64 -3
  %minor368 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx367, i32 0, i32 2
  %227 = load ptr, ptr %yymsp, align 8
  %arrayidx369 = getelementptr inbounds %struct.yyStackEntry, ptr %227, i64 -2
  %minor370 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx369, i32 0, i32 2
  %228 = load ptr, ptr %minor370, align 8
  %229 = load ptr, ptr %yymsp, align 8
  %arrayidx371 = getelementptr inbounds %struct.yyStackEntry, ptr %229, i64 -1
  %minor372 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx371, i32 0, i32 2
  %230 = load i32, ptr %minor372, align 8
  call void @sqlite3CreateForeignKey(ptr noundef %223, ptr noundef %225, ptr noundef %minor368, ptr noundef %228, i32 noundef %230)
  %231 = load ptr, ptr %pParse.addr, align 8
  %232 = load ptr, ptr %yymsp, align 8
  %arrayidx373 = getelementptr inbounds %struct.yyStackEntry, ptr %232, i64 0
  %minor374 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx373, i32 0, i32 2
  %233 = load i32, ptr %minor374, align 8
  call void @sqlite3DeferForeignKey(ptr noundef %231, i32 noundef %233)
  br label %sw.epilog

sw.bb375:                                         ; preds = %if.end6, %if.end6
  %234 = load ptr, ptr %yymsp, align 8
  %arrayidx376 = getelementptr inbounds %struct.yyStackEntry, ptr %234, i64 1
  %minor377 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx376, i32 0, i32 2
  store i32 11, ptr %minor377, align 8
  br label %sw.epilog

sw.bb378:                                         ; preds = %if.end6
  %235 = load ptr, ptr %yymsp, align 8
  %arrayidx379 = getelementptr inbounds %struct.yyStackEntry, ptr %235, i64 0
  %minor380 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx379, i32 0, i32 2
  %236 = load i32, ptr %minor380, align 8
  %237 = load ptr, ptr %yymsp, align 8
  %arrayidx381 = getelementptr inbounds %struct.yyStackEntry, ptr %237, i64 -2
  %minor382 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx381, i32 0, i32 2
  store i32 %236, ptr %minor382, align 8
  br label %sw.epilog

sw.bb383:                                         ; preds = %if.end6
  %238 = load ptr, ptr %yymsp, align 8
  %arrayidx384 = getelementptr inbounds %struct.yyStackEntry, ptr %238, i64 0
  %minor385 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx384, i32 0, i32 2
  store i32 4, ptr %minor385, align 8
  br label %sw.epilog

sw.bb386:                                         ; preds = %if.end6, %if.end6
  %239 = load ptr, ptr %yymsp, align 8
  %arrayidx387 = getelementptr inbounds %struct.yyStackEntry, ptr %239, i64 0
  %minor388 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx387, i32 0, i32 2
  store i32 5, ptr %minor388, align 8
  br label %sw.epilog

sw.bb389:                                         ; preds = %if.end6
  %240 = load ptr, ptr %pParse.addr, align 8
  %241 = load ptr, ptr %yymsp, align 8
  %arrayidx390 = getelementptr inbounds %struct.yyStackEntry, ptr %241, i64 0
  %minor391 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx390, i32 0, i32 2
  %242 = load ptr, ptr %minor391, align 8
  %243 = load ptr, ptr %yymsp, align 8
  %arrayidx392 = getelementptr inbounds %struct.yyStackEntry, ptr %243, i64 -1
  %minor393 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx392, i32 0, i32 2
  %244 = load i32, ptr %minor393, align 8
  call void @sqlite3DropTable(ptr noundef %240, ptr noundef %242, i32 noundef 0, i32 noundef %244)
  br label %sw.epilog

sw.bb394:                                         ; preds = %if.end6
  %245 = load ptr, ptr %pParse.addr, align 8
  %246 = load ptr, ptr %yymsp, align 8
  %arrayidx395 = getelementptr inbounds %struct.yyStackEntry, ptr %246, i64 -8
  %minor396 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx395, i32 0, i32 2
  %247 = load ptr, ptr %yymsp, align 8
  %arrayidx397 = getelementptr inbounds %struct.yyStackEntry, ptr %247, i64 -4
  %minor398 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx397, i32 0, i32 2
  %248 = load ptr, ptr %yymsp, align 8
  %arrayidx399 = getelementptr inbounds %struct.yyStackEntry, ptr %248, i64 -3
  %minor400 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx399, i32 0, i32 2
  %249 = load ptr, ptr %yymsp, align 8
  %arrayidx401 = getelementptr inbounds %struct.yyStackEntry, ptr %249, i64 -2
  %minor402 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx401, i32 0, i32 2
  %250 = load ptr, ptr %minor402, align 8
  %251 = load ptr, ptr %yymsp, align 8
  %arrayidx403 = getelementptr inbounds %struct.yyStackEntry, ptr %251, i64 0
  %minor404 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx403, i32 0, i32 2
  %252 = load ptr, ptr %minor404, align 8
  %253 = load ptr, ptr %yymsp, align 8
  %arrayidx405 = getelementptr inbounds %struct.yyStackEntry, ptr %253, i64 -7
  %minor406 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx405, i32 0, i32 2
  %254 = load i32, ptr %minor406, align 8
  %255 = load ptr, ptr %yymsp, align 8
  %arrayidx407 = getelementptr inbounds %struct.yyStackEntry, ptr %255, i64 -5
  %minor408 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx407, i32 0, i32 2
  %256 = load i32, ptr %minor408, align 8
  call void @sqlite3CreateView(ptr noundef %245, ptr noundef %minor396, ptr noundef %minor398, ptr noundef %minor400, ptr noundef %250, ptr noundef %252, i32 noundef %254, i32 noundef %256)
  br label %sw.epilog

sw.bb409:                                         ; preds = %if.end6
  %257 = load ptr, ptr %pParse.addr, align 8
  %258 = load ptr, ptr %yymsp, align 8
  %arrayidx410 = getelementptr inbounds %struct.yyStackEntry, ptr %258, i64 0
  %minor411 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx410, i32 0, i32 2
  %259 = load ptr, ptr %minor411, align 8
  %260 = load ptr, ptr %yymsp, align 8
  %arrayidx412 = getelementptr inbounds %struct.yyStackEntry, ptr %260, i64 -1
  %minor413 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx412, i32 0, i32 2
  %261 = load i32, ptr %minor413, align 8
  call void @sqlite3DropTable(ptr noundef %257, ptr noundef %259, i32 noundef 1, i32 noundef %261)
  br label %sw.epilog

sw.bb414:                                         ; preds = %if.end6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dest, ptr align 8 @__const.yy_reduce.dest, i64 32, i1 false)
  %262 = load ptr, ptr %pParse.addr, align 8
  %263 = load ptr, ptr %yymsp, align 8
  %arrayidx415 = getelementptr inbounds %struct.yyStackEntry, ptr %263, i64 0
  %minor416 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx415, i32 0, i32 2
  %264 = load ptr, ptr %minor416, align 8
  %call417 = call i32 @sqlite3Select(ptr noundef %262, ptr noundef %264, ptr noundef %dest)
  %265 = load ptr, ptr %pParse.addr, align 8
  %db418 = getelementptr inbounds nuw %struct.Parse, ptr %265, i32 0, i32 0
  %266 = load ptr, ptr %db418, align 8
  %267 = load ptr, ptr %yymsp, align 8
  %arrayidx419 = getelementptr inbounds %struct.yyStackEntry, ptr %267, i64 0
  %minor420 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx419, i32 0, i32 2
  %268 = load ptr, ptr %minor420, align 8
  call void @sqlite3SelectDelete(ptr noundef %266, ptr noundef %268)
  br label %sw.epilog

sw.bb421:                                         ; preds = %if.end6
  %269 = load ptr, ptr %yymsp, align 8
  %arrayidx423 = getelementptr inbounds %struct.yyStackEntry, ptr %269, i64 0
  %minor424 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx423, i32 0, i32 2
  %270 = load ptr, ptr %minor424, align 8
  store ptr %270, ptr %p422, align 8
  %271 = load ptr, ptr %p422, align 8
  %tobool425 = icmp ne ptr %271, null
  br i1 %tobool425, label %if.then426, label %if.else429

if.then426:                                       ; preds = %sw.bb421
  %272 = load ptr, ptr %yymsp, align 8
  %arrayidx427 = getelementptr inbounds %struct.yyStackEntry, ptr %272, i64 -1
  %minor428 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx427, i32 0, i32 2
  %273 = load ptr, ptr %minor428, align 8
  %274 = load ptr, ptr %p422, align 8
  %pWith = getelementptr inbounds nuw %struct.Select, ptr %274, i32 0, i32 16
  store ptr %273, ptr %pWith, align 8
  %275 = load ptr, ptr %pParse.addr, align 8
  %276 = load ptr, ptr %p422, align 8
  call void @parserDoubleLinkSelect(ptr noundef %275, ptr noundef %276)
  br label %if.end433

if.else429:                                       ; preds = %sw.bb421
  %277 = load ptr, ptr %pParse.addr, align 8
  %db430 = getelementptr inbounds nuw %struct.Parse, ptr %277, i32 0, i32 0
  %278 = load ptr, ptr %db430, align 8
  %279 = load ptr, ptr %yymsp, align 8
  %arrayidx431 = getelementptr inbounds %struct.yyStackEntry, ptr %279, i64 -1
  %minor432 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx431, i32 0, i32 2
  %280 = load ptr, ptr %minor432, align 8
  call void @sqlite3WithDelete(ptr noundef %278, ptr noundef %280)
  br label %if.end433

if.end433:                                        ; preds = %if.else429, %if.then426
  %281 = load ptr, ptr %p422, align 8
  %282 = load ptr, ptr %yymsp, align 8
  %arrayidx434 = getelementptr inbounds %struct.yyStackEntry, ptr %282, i64 -2
  %minor435 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx434, i32 0, i32 2
  store ptr %281, ptr %minor435, align 8
  br label %sw.epilog

sw.bb436:                                         ; preds = %if.end6
  %283 = load ptr, ptr %yymsp, align 8
  %arrayidx438 = getelementptr inbounds %struct.yyStackEntry, ptr %283, i64 0
  %minor439 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx438, i32 0, i32 2
  %284 = load ptr, ptr %minor439, align 8
  store ptr %284, ptr %p437, align 8
  %285 = load ptr, ptr %p437, align 8
  %tobool440 = icmp ne ptr %285, null
  br i1 %tobool440, label %if.then441, label %if.else445

if.then441:                                       ; preds = %sw.bb436
  %286 = load ptr, ptr %yymsp, align 8
  %arrayidx442 = getelementptr inbounds %struct.yyStackEntry, ptr %286, i64 -1
  %minor443 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx442, i32 0, i32 2
  %287 = load ptr, ptr %minor443, align 8
  %288 = load ptr, ptr %p437, align 8
  %pWith444 = getelementptr inbounds nuw %struct.Select, ptr %288, i32 0, i32 16
  store ptr %287, ptr %pWith444, align 8
  %289 = load ptr, ptr %pParse.addr, align 8
  %290 = load ptr, ptr %p437, align 8
  call void @parserDoubleLinkSelect(ptr noundef %289, ptr noundef %290)
  br label %if.end449

if.else445:                                       ; preds = %sw.bb436
  %291 = load ptr, ptr %pParse.addr, align 8
  %db446 = getelementptr inbounds nuw %struct.Parse, ptr %291, i32 0, i32 0
  %292 = load ptr, ptr %db446, align 8
  %293 = load ptr, ptr %yymsp, align 8
  %arrayidx447 = getelementptr inbounds %struct.yyStackEntry, ptr %293, i64 -1
  %minor448 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx447, i32 0, i32 2
  %294 = load ptr, ptr %minor448, align 8
  call void @sqlite3WithDelete(ptr noundef %292, ptr noundef %294)
  br label %if.end449

if.end449:                                        ; preds = %if.else445, %if.then441
  %295 = load ptr, ptr %p437, align 8
  %296 = load ptr, ptr %yymsp, align 8
  %arrayidx450 = getelementptr inbounds %struct.yyStackEntry, ptr %296, i64 -3
  %minor451 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx450, i32 0, i32 2
  store ptr %295, ptr %minor451, align 8
  br label %sw.epilog

sw.bb452:                                         ; preds = %if.end6
  %297 = load ptr, ptr %yymsp, align 8
  %arrayidx454 = getelementptr inbounds %struct.yyStackEntry, ptr %297, i64 0
  %minor455 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx454, i32 0, i32 2
  %298 = load ptr, ptr %minor455, align 8
  store ptr %298, ptr %p453, align 8
  %299 = load ptr, ptr %p453, align 8
  %tobool456 = icmp ne ptr %299, null
  br i1 %tobool456, label %if.then457, label %if.end458

if.then457:                                       ; preds = %sw.bb452
  %300 = load ptr, ptr %pParse.addr, align 8
  %301 = load ptr, ptr %p453, align 8
  call void @parserDoubleLinkSelect(ptr noundef %300, ptr noundef %301)
  br label %if.end458

if.end458:                                        ; preds = %if.then457, %sw.bb452
  %302 = load ptr, ptr %p453, align 8
  %303 = load ptr, ptr %yymsp, align 8
  %arrayidx459 = getelementptr inbounds %struct.yyStackEntry, ptr %303, i64 0
  %minor460 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx459, i32 0, i32 2
  store ptr %302, ptr %minor460, align 8
  br label %sw.epilog

sw.bb461:                                         ; preds = %if.end6
  %304 = load ptr, ptr %yymsp, align 8
  %arrayidx462 = getelementptr inbounds %struct.yyStackEntry, ptr %304, i64 0
  %minor463 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx462, i32 0, i32 2
  %305 = load ptr, ptr %minor463, align 8
  store ptr %305, ptr %pRhs, align 8
  %306 = load ptr, ptr %yymsp, align 8
  %arrayidx464 = getelementptr inbounds %struct.yyStackEntry, ptr %306, i64 -2
  %minor465 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx464, i32 0, i32 2
  %307 = load ptr, ptr %minor465, align 8
  store ptr %307, ptr %pLhs, align 8
  %308 = load ptr, ptr %pRhs, align 8
  %tobool466 = icmp ne ptr %308, null
  br i1 %tobool466, label %land.lhs.true467, label %if.end473

land.lhs.true467:                                 ; preds = %sw.bb461
  %309 = load ptr, ptr %pRhs, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %309, i32 0, i32 13
  %310 = load ptr, ptr %pPrior, align 8
  %tobool468 = icmp ne ptr %310, null
  br i1 %tobool468, label %if.then469, label %if.end473

if.then469:                                       ; preds = %land.lhs.true467
  %n470 = getelementptr inbounds nuw %struct.Token, ptr %x, i32 0, i32 1
  store i32 0, ptr %n470, align 8
  %311 = load ptr, ptr %pParse.addr, align 8
  %312 = load ptr, ptr %pRhs, align 8
  call void @parserDoubleLinkSelect(ptr noundef %311, ptr noundef %312)
  %313 = load ptr, ptr %pParse.addr, align 8
  %314 = load ptr, ptr %pRhs, align 8
  %call471 = call ptr @sqlite3SrcListAppendFromTerm(ptr noundef %313, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %x, ptr noundef %314, ptr noundef null, ptr noundef null)
  store ptr %call471, ptr %pFrom, align 8
  %315 = load ptr, ptr %pParse.addr, align 8
  %316 = load ptr, ptr %pFrom, align 8
  %call472 = call ptr @sqlite3SelectNew(ptr noundef %315, ptr noundef null, ptr noundef %316, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null)
  store ptr %call472, ptr %pRhs, align 8
  br label %if.end473

if.end473:                                        ; preds = %if.then469, %land.lhs.true467, %sw.bb461
  %317 = load ptr, ptr %pRhs, align 8
  %tobool474 = icmp ne ptr %317, null
  br i1 %tobool474, label %if.then475, label %if.else492

if.then475:                                       ; preds = %if.end473
  %318 = load ptr, ptr %yymsp, align 8
  %arrayidx476 = getelementptr inbounds %struct.yyStackEntry, ptr %318, i64 -1
  %minor477 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx476, i32 0, i32 2
  %319 = load i32, ptr %minor477, align 8
  %conv478 = trunc i32 %319 to i8
  %320 = load ptr, ptr %pRhs, align 8
  %op = getelementptr inbounds nuw %struct.Select, ptr %320, i32 0, i32 1
  store i8 %conv478, ptr %op, align 8
  %321 = load ptr, ptr %pLhs, align 8
  %322 = load ptr, ptr %pRhs, align 8
  %pPrior479 = getelementptr inbounds nuw %struct.Select, ptr %322, i32 0, i32 13
  store ptr %321, ptr %pPrior479, align 8
  %323 = load ptr, ptr %pLhs, align 8
  %tobool480 = icmp ne ptr %323, null
  br i1 %tobool480, label %if.then481, label %if.end483

if.then481:                                       ; preds = %if.then475
  %324 = load ptr, ptr %pLhs, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %324, i32 0, i32 3
  %325 = load i32, ptr %selFlags, align 4
  %and482 = and i32 %325, -1025
  store i32 %and482, ptr %selFlags, align 4
  br label %if.end483

if.end483:                                        ; preds = %if.then481, %if.then475
  %326 = load ptr, ptr %pRhs, align 8
  %selFlags484 = getelementptr inbounds nuw %struct.Select, ptr %326, i32 0, i32 3
  %327 = load i32, ptr %selFlags484, align 4
  %and485 = and i32 %327, -1025
  store i32 %and485, ptr %selFlags484, align 4
  %328 = load ptr, ptr %yymsp, align 8
  %arrayidx486 = getelementptr inbounds %struct.yyStackEntry, ptr %328, i64 -1
  %minor487 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx486, i32 0, i32 2
  %329 = load i32, ptr %minor487, align 8
  %cmp488 = icmp ne i32 %329, 131
  br i1 %cmp488, label %if.then490, label %if.end491

if.then490:                                       ; preds = %if.end483
  %330 = load ptr, ptr %pParse.addr, align 8
  %hasCompound = getelementptr inbounds nuw %struct.Parse, ptr %330, i32 0, i32 10
  store i8 1, ptr %hasCompound, align 2
  br label %if.end491

if.end491:                                        ; preds = %if.then490, %if.end483
  br label %if.end494

if.else492:                                       ; preds = %if.end473
  %331 = load ptr, ptr %pParse.addr, align 8
  %db493 = getelementptr inbounds nuw %struct.Parse, ptr %331, i32 0, i32 0
  %332 = load ptr, ptr %db493, align 8
  %333 = load ptr, ptr %pLhs, align 8
  call void @sqlite3SelectDelete(ptr noundef %332, ptr noundef %333)
  br label %if.end494

if.end494:                                        ; preds = %if.else492, %if.end491
  %334 = load ptr, ptr %pRhs, align 8
  %335 = load ptr, ptr %yymsp, align 8
  %arrayidx495 = getelementptr inbounds %struct.yyStackEntry, ptr %335, i64 -2
  %minor496 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx495, i32 0, i32 2
  store ptr %334, ptr %minor496, align 8
  br label %sw.epilog

sw.bb497:                                         ; preds = %if.end6, %if.end6
  %336 = load ptr, ptr %yymsp, align 8
  %arrayidx498 = getelementptr inbounds %struct.yyStackEntry, ptr %336, i64 0
  %major499 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx498, i32 0, i32 1
  %337 = load i16, ptr %major499, align 2
  %conv500 = zext i16 %337 to i32
  %338 = load ptr, ptr %yymsp, align 8
  %arrayidx501 = getelementptr inbounds %struct.yyStackEntry, ptr %338, i64 0
  %minor502 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx501, i32 0, i32 2
  store i32 %conv500, ptr %minor502, align 8
  br label %sw.epilog

sw.bb503:                                         ; preds = %if.end6
  %339 = load ptr, ptr %yymsp, align 8
  %arrayidx504 = getelementptr inbounds %struct.yyStackEntry, ptr %339, i64 -1
  %minor505 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx504, i32 0, i32 2
  store i32 131, ptr %minor505, align 8
  br label %sw.epilog

sw.bb506:                                         ; preds = %if.end6
  %340 = load ptr, ptr %pParse.addr, align 8
  %341 = load ptr, ptr %yymsp, align 8
  %arrayidx507 = getelementptr inbounds %struct.yyStackEntry, ptr %341, i64 -6
  %minor508 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx507, i32 0, i32 2
  %342 = load ptr, ptr %minor508, align 8
  %343 = load ptr, ptr %yymsp, align 8
  %arrayidx509 = getelementptr inbounds %struct.yyStackEntry, ptr %343, i64 -5
  %minor510 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx509, i32 0, i32 2
  %344 = load ptr, ptr %minor510, align 8
  %345 = load ptr, ptr %yymsp, align 8
  %arrayidx511 = getelementptr inbounds %struct.yyStackEntry, ptr %345, i64 -4
  %minor512 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx511, i32 0, i32 2
  %346 = load ptr, ptr %minor512, align 8
  %347 = load ptr, ptr %yymsp, align 8
  %arrayidx513 = getelementptr inbounds %struct.yyStackEntry, ptr %347, i64 -3
  %minor514 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx513, i32 0, i32 2
  %348 = load ptr, ptr %minor514, align 8
  %349 = load ptr, ptr %yymsp, align 8
  %arrayidx515 = getelementptr inbounds %struct.yyStackEntry, ptr %349, i64 -2
  %minor516 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx515, i32 0, i32 2
  %350 = load ptr, ptr %minor516, align 8
  %351 = load ptr, ptr %yymsp, align 8
  %arrayidx517 = getelementptr inbounds %struct.yyStackEntry, ptr %351, i64 -1
  %minor518 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx517, i32 0, i32 2
  %352 = load ptr, ptr %minor518, align 8
  %353 = load ptr, ptr %yymsp, align 8
  %arrayidx519 = getelementptr inbounds %struct.yyStackEntry, ptr %353, i64 -7
  %minor520 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx519, i32 0, i32 2
  %354 = load i32, ptr %minor520, align 8
  %355 = load ptr, ptr %yymsp, align 8
  %arrayidx521 = getelementptr inbounds %struct.yyStackEntry, ptr %355, i64 0
  %minor522 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx521, i32 0, i32 2
  %356 = load ptr, ptr %minor522, align 8
  %call523 = call ptr @sqlite3SelectNew(ptr noundef %340, ptr noundef %342, ptr noundef %344, ptr noundef %346, ptr noundef %348, ptr noundef %350, ptr noundef %352, i32 noundef %354, ptr noundef %356)
  %357 = load ptr, ptr %yymsp, align 8
  %arrayidx524 = getelementptr inbounds %struct.yyStackEntry, ptr %357, i64 -8
  %minor525 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx524, i32 0, i32 2
  store ptr %call523, ptr %minor525, align 8
  br label %sw.epilog

sw.bb526:                                         ; preds = %if.end6
  %358 = load ptr, ptr %pParse.addr, align 8
  %359 = load ptr, ptr %yymsp, align 8
  %arrayidx527 = getelementptr inbounds %struct.yyStackEntry, ptr %359, i64 -7
  %minor528 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx527, i32 0, i32 2
  %360 = load ptr, ptr %minor528, align 8
  %361 = load ptr, ptr %yymsp, align 8
  %arrayidx529 = getelementptr inbounds %struct.yyStackEntry, ptr %361, i64 -6
  %minor530 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx529, i32 0, i32 2
  %362 = load ptr, ptr %minor530, align 8
  %363 = load ptr, ptr %yymsp, align 8
  %arrayidx531 = getelementptr inbounds %struct.yyStackEntry, ptr %363, i64 -5
  %minor532 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx531, i32 0, i32 2
  %364 = load ptr, ptr %minor532, align 8
  %365 = load ptr, ptr %yymsp, align 8
  %arrayidx533 = getelementptr inbounds %struct.yyStackEntry, ptr %365, i64 -4
  %minor534 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx533, i32 0, i32 2
  %366 = load ptr, ptr %minor534, align 8
  %367 = load ptr, ptr %yymsp, align 8
  %arrayidx535 = getelementptr inbounds %struct.yyStackEntry, ptr %367, i64 -3
  %minor536 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx535, i32 0, i32 2
  %368 = load ptr, ptr %minor536, align 8
  %369 = load ptr, ptr %yymsp, align 8
  %arrayidx537 = getelementptr inbounds %struct.yyStackEntry, ptr %369, i64 -1
  %minor538 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx537, i32 0, i32 2
  %370 = load ptr, ptr %minor538, align 8
  %371 = load ptr, ptr %yymsp, align 8
  %arrayidx539 = getelementptr inbounds %struct.yyStackEntry, ptr %371, i64 -8
  %minor540 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx539, i32 0, i32 2
  %372 = load i32, ptr %minor540, align 8
  %373 = load ptr, ptr %yymsp, align 8
  %arrayidx541 = getelementptr inbounds %struct.yyStackEntry, ptr %373, i64 0
  %minor542 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx541, i32 0, i32 2
  %374 = load ptr, ptr %minor542, align 8
  %call543 = call ptr @sqlite3SelectNew(ptr noundef %358, ptr noundef %360, ptr noundef %362, ptr noundef %364, ptr noundef %366, ptr noundef %368, ptr noundef %370, i32 noundef %372, ptr noundef %374)
  %375 = load ptr, ptr %yymsp, align 8
  %arrayidx544 = getelementptr inbounds %struct.yyStackEntry, ptr %375, i64 -9
  %minor545 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx544, i32 0, i32 2
  store ptr %call543, ptr %minor545, align 8
  %376 = load ptr, ptr %yymsp, align 8
  %arrayidx546 = getelementptr inbounds %struct.yyStackEntry, ptr %376, i64 -9
  %minor547 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx546, i32 0, i32 2
  %377 = load ptr, ptr %minor547, align 8
  %tobool548 = icmp ne ptr %377, null
  br i1 %tobool548, label %if.then549, label %if.else554

if.then549:                                       ; preds = %sw.bb526
  %378 = load ptr, ptr %yymsp, align 8
  %arrayidx550 = getelementptr inbounds %struct.yyStackEntry, ptr %378, i64 -2
  %minor551 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx550, i32 0, i32 2
  %379 = load ptr, ptr %minor551, align 8
  %380 = load ptr, ptr %yymsp, align 8
  %arrayidx552 = getelementptr inbounds %struct.yyStackEntry, ptr %380, i64 -9
  %minor553 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx552, i32 0, i32 2
  %381 = load ptr, ptr %minor553, align 8
  %pWinDefn = getelementptr inbounds nuw %struct.Select, ptr %381, i32 0, i32 18
  store ptr %379, ptr %pWinDefn, align 8
  br label %if.end558

if.else554:                                       ; preds = %sw.bb526
  %382 = load ptr, ptr %pParse.addr, align 8
  %db555 = getelementptr inbounds nuw %struct.Parse, ptr %382, i32 0, i32 0
  %383 = load ptr, ptr %db555, align 8
  %384 = load ptr, ptr %yymsp, align 8
  %arrayidx556 = getelementptr inbounds %struct.yyStackEntry, ptr %384, i64 -2
  %minor557 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx556, i32 0, i32 2
  %385 = load ptr, ptr %minor557, align 8
  call void @sqlite3WindowListDelete(ptr noundef %383, ptr noundef %385)
  br label %if.end558

if.end558:                                        ; preds = %if.else554, %if.then549
  br label %sw.epilog

sw.bb559:                                         ; preds = %if.end6
  %386 = load ptr, ptr %pParse.addr, align 8
  %387 = load ptr, ptr %yymsp, align 8
  %arrayidx560 = getelementptr inbounds %struct.yyStackEntry, ptr %387, i64 -1
  %minor561 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx560, i32 0, i32 2
  %388 = load ptr, ptr %minor561, align 8
  %call562 = call ptr @sqlite3SelectNew(ptr noundef %386, ptr noundef %388, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 512, ptr noundef null)
  %389 = load ptr, ptr %yymsp, align 8
  %arrayidx563 = getelementptr inbounds %struct.yyStackEntry, ptr %389, i64 -3
  %minor564 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx563, i32 0, i32 2
  store ptr %call562, ptr %minor564, align 8
  br label %sw.epilog

sw.bb565:                                         ; preds = %if.end6
  %390 = load ptr, ptr %yymsp, align 8
  %arrayidx566 = getelementptr inbounds %struct.yyStackEntry, ptr %390, i64 -4
  %minor567 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx566, i32 0, i32 2
  %391 = load ptr, ptr %minor567, align 8
  store ptr %391, ptr %pLeft, align 8
  %392 = load ptr, ptr %pParse.addr, align 8
  %393 = load ptr, ptr %yymsp, align 8
  %arrayidx568 = getelementptr inbounds %struct.yyStackEntry, ptr %393, i64 -1
  %minor569 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx568, i32 0, i32 2
  %394 = load ptr, ptr %minor569, align 8
  %call570 = call ptr @sqlite3SelectNew(ptr noundef %392, ptr noundef %394, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1536, ptr noundef null)
  store ptr %call570, ptr %pRight, align 8
  %395 = load ptr, ptr %pLeft, align 8
  %tobool571 = icmp ne ptr %395, null
  br i1 %tobool571, label %if.then572, label %if.end575

if.then572:                                       ; preds = %sw.bb565
  %396 = load ptr, ptr %pLeft, align 8
  %selFlags573 = getelementptr inbounds nuw %struct.Select, ptr %396, i32 0, i32 3
  %397 = load i32, ptr %selFlags573, align 4
  %and574 = and i32 %397, -1025
  store i32 %and574, ptr %selFlags573, align 4
  br label %if.end575

if.end575:                                        ; preds = %if.then572, %sw.bb565
  %398 = load ptr, ptr %pRight, align 8
  %tobool576 = icmp ne ptr %398, null
  br i1 %tobool576, label %if.then577, label %if.else582

if.then577:                                       ; preds = %if.end575
  %399 = load ptr, ptr %pRight, align 8
  %op578 = getelementptr inbounds nuw %struct.Select, ptr %399, i32 0, i32 1
  store i8 -125, ptr %op578, align 8
  %400 = load ptr, ptr %pLeft, align 8
  %401 = load ptr, ptr %pRight, align 8
  %pPrior579 = getelementptr inbounds nuw %struct.Select, ptr %401, i32 0, i32 13
  store ptr %400, ptr %pPrior579, align 8
  %402 = load ptr, ptr %pRight, align 8
  %403 = load ptr, ptr %yymsp, align 8
  %arrayidx580 = getelementptr inbounds %struct.yyStackEntry, ptr %403, i64 -4
  %minor581 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx580, i32 0, i32 2
  store ptr %402, ptr %minor581, align 8
  br label %if.end585

if.else582:                                       ; preds = %if.end575
  %404 = load ptr, ptr %pLeft, align 8
  %405 = load ptr, ptr %yymsp, align 8
  %arrayidx583 = getelementptr inbounds %struct.yyStackEntry, ptr %405, i64 -4
  %minor584 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx583, i32 0, i32 2
  store ptr %404, ptr %minor584, align 8
  br label %if.end585

if.end585:                                        ; preds = %if.else582, %if.then577
  br label %sw.epilog

sw.bb586:                                         ; preds = %if.end6
  %406 = load ptr, ptr %yymsp, align 8
  %arrayidx587 = getelementptr inbounds %struct.yyStackEntry, ptr %406, i64 0
  %minor588 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx587, i32 0, i32 2
  store i32 1, ptr %minor588, align 8
  br label %sw.epilog

sw.bb589:                                         ; preds = %if.end6
  %407 = load ptr, ptr %yymsp, align 8
  %arrayidx590 = getelementptr inbounds %struct.yyStackEntry, ptr %407, i64 0
  %minor591 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx590, i32 0, i32 2
  store i32 2, ptr %minor591, align 8
  br label %sw.epilog

sw.bb592:                                         ; preds = %if.end6, %if.end6
  br label %sw.bb593

sw.bb593:                                         ; preds = %sw.bb592, %if.end6
  br label %sw.bb594

sw.bb594:                                         ; preds = %sw.bb593, %if.end6
  br label %sw.bb595

sw.bb595:                                         ; preds = %sw.bb594, %if.end6
  br label %sw.bb596

sw.bb596:                                         ; preds = %sw.bb595, %if.end6
  %408 = load ptr, ptr %yymsp, align 8
  %arrayidx597 = getelementptr inbounds %struct.yyStackEntry, ptr %408, i64 1
  %minor598 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx597, i32 0, i32 2
  store ptr null, ptr %minor598, align 8
  br label %sw.epilog

sw.bb599:                                         ; preds = %if.end6
  %409 = load ptr, ptr %pParse.addr, align 8
  %410 = load ptr, ptr %yymsp, align 8
  %arrayidx600 = getelementptr inbounds %struct.yyStackEntry, ptr %410, i64 -4
  %minor601 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx600, i32 0, i32 2
  %411 = load ptr, ptr %minor601, align 8
  %412 = load ptr, ptr %yymsp, align 8
  %arrayidx602 = getelementptr inbounds %struct.yyStackEntry, ptr %412, i64 -2
  %minor603 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx602, i32 0, i32 2
  %413 = load ptr, ptr %minor603, align 8
  %call604 = call ptr @sqlite3ExprListAppend(ptr noundef %409, ptr noundef %411, ptr noundef %413)
  %414 = load ptr, ptr %yymsp, align 8
  %arrayidx605 = getelementptr inbounds %struct.yyStackEntry, ptr %414, i64 -4
  %minor606 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx605, i32 0, i32 2
  store ptr %call604, ptr %minor606, align 8
  %415 = load ptr, ptr %yymsp, align 8
  %arrayidx607 = getelementptr inbounds %struct.yyStackEntry, ptr %415, i64 0
  %minor608 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx607, i32 0, i32 2
  %n609 = getelementptr inbounds nuw %struct.Token, ptr %minor608, i32 0, i32 1
  %416 = load i32, ptr %n609, align 8
  %cmp610 = icmp ugt i32 %416, 0
  br i1 %cmp610, label %if.then612, label %if.end617

if.then612:                                       ; preds = %sw.bb599
  %417 = load ptr, ptr %pParse.addr, align 8
  %418 = load ptr, ptr %yymsp, align 8
  %arrayidx613 = getelementptr inbounds %struct.yyStackEntry, ptr %418, i64 -4
  %minor614 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx613, i32 0, i32 2
  %419 = load ptr, ptr %minor614, align 8
  %420 = load ptr, ptr %yymsp, align 8
  %arrayidx615 = getelementptr inbounds %struct.yyStackEntry, ptr %420, i64 0
  %minor616 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx615, i32 0, i32 2
  call void @sqlite3ExprListSetName(ptr noundef %417, ptr noundef %419, ptr noundef %minor616, i32 noundef 1)
  br label %if.end617

if.end617:                                        ; preds = %if.then612, %sw.bb599
  %421 = load ptr, ptr %pParse.addr, align 8
  %422 = load ptr, ptr %yymsp, align 8
  %arrayidx618 = getelementptr inbounds %struct.yyStackEntry, ptr %422, i64 -4
  %minor619 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx618, i32 0, i32 2
  %423 = load ptr, ptr %minor619, align 8
  %424 = load ptr, ptr %yymsp, align 8
  %arrayidx620 = getelementptr inbounds %struct.yyStackEntry, ptr %424, i64 -3
  %minor621 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx620, i32 0, i32 2
  %425 = load ptr, ptr %minor621, align 8
  %426 = load ptr, ptr %yymsp, align 8
  %arrayidx622 = getelementptr inbounds %struct.yyStackEntry, ptr %426, i64 -1
  %minor623 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx622, i32 0, i32 2
  %427 = load ptr, ptr %minor623, align 8
  call void @sqlite3ExprListSetSpan(ptr noundef %421, ptr noundef %423, ptr noundef %425, ptr noundef %427)
  br label %sw.epilog

sw.bb624:                                         ; preds = %if.end6
  %428 = load ptr, ptr %pParse.addr, align 8
  %db626 = getelementptr inbounds nuw %struct.Parse, ptr %428, i32 0, i32 0
  %429 = load ptr, ptr %db626, align 8
  %call627 = call ptr @sqlite3Expr(ptr noundef %429, i32 noundef 175, ptr noundef null)
  store ptr %call627, ptr %p625, align 8
  %430 = load ptr, ptr %pParse.addr, align 8
  %431 = load ptr, ptr %yymsp, align 8
  %arrayidx628 = getelementptr inbounds %struct.yyStackEntry, ptr %431, i64 -2
  %minor629 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx628, i32 0, i32 2
  %432 = load ptr, ptr %minor629, align 8
  %433 = load ptr, ptr %p625, align 8
  %call630 = call ptr @sqlite3ExprListAppend(ptr noundef %430, ptr noundef %432, ptr noundef %433)
  %434 = load ptr, ptr %yymsp, align 8
  %arrayidx631 = getelementptr inbounds %struct.yyStackEntry, ptr %434, i64 -2
  %minor632 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx631, i32 0, i32 2
  store ptr %call630, ptr %minor632, align 8
  br label %sw.epilog

sw.bb633:                                         ; preds = %if.end6
  %435 = load ptr, ptr %pParse.addr, align 8
  %call635 = call ptr @sqlite3PExpr(ptr noundef %435, i32 noundef 175, ptr noundef null, ptr noundef null)
  store ptr %call635, ptr %pRight634, align 8
  %436 = load ptr, ptr %pParse.addr, align 8
  %db637 = getelementptr inbounds nuw %struct.Parse, ptr %436, i32 0, i32 0
  %437 = load ptr, ptr %db637, align 8
  %438 = load ptr, ptr %yymsp, align 8
  %arrayidx638 = getelementptr inbounds %struct.yyStackEntry, ptr %438, i64 -2
  %minor639 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx638, i32 0, i32 2
  %call640 = call ptr @sqlite3ExprAlloc(ptr noundef %437, i32 noundef 59, ptr noundef %minor639, i32 noundef 1)
  store ptr %call640, ptr %pLeft636, align 8
  %439 = load ptr, ptr %pParse.addr, align 8
  %440 = load ptr, ptr %pLeft636, align 8
  %441 = load ptr, ptr %pRight634, align 8
  %call641 = call ptr @sqlite3PExpr(ptr noundef %439, i32 noundef 137, ptr noundef %440, ptr noundef %441)
  store ptr %call641, ptr %pDot, align 8
  %442 = load ptr, ptr %pParse.addr, align 8
  %443 = load ptr, ptr %yymsp, align 8
  %arrayidx642 = getelementptr inbounds %struct.yyStackEntry, ptr %443, i64 -4
  %minor643 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx642, i32 0, i32 2
  %444 = load ptr, ptr %minor643, align 8
  %445 = load ptr, ptr %pDot, align 8
  %call644 = call ptr @sqlite3ExprListAppend(ptr noundef %442, ptr noundef %444, ptr noundef %445)
  %446 = load ptr, ptr %yymsp, align 8
  %arrayidx645 = getelementptr inbounds %struct.yyStackEntry, ptr %446, i64 -4
  %minor646 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx645, i32 0, i32 2
  store ptr %call644, ptr %minor646, align 8
  br label %sw.epilog

sw.bb647:                                         ; preds = %if.end6, %if.end6
  br label %sw.bb648

sw.bb648:                                         ; preds = %sw.bb647, %if.end6
  br label %sw.bb649

sw.bb649:                                         ; preds = %sw.bb648, %if.end6
  %447 = load ptr, ptr %yymsp, align 8
  %arrayidx650 = getelementptr inbounds %struct.yyStackEntry, ptr %447, i64 -1
  %minor651 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx650, i32 0, i32 2
  %448 = load ptr, ptr %yymsp, align 8
  %arrayidx652 = getelementptr inbounds %struct.yyStackEntry, ptr %448, i64 0
  %minor653 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx652, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor651, ptr align 8 %minor653, i64 16, i1 false)
  br label %sw.epilog

sw.bb654:                                         ; preds = %if.end6
  %449 = load ptr, ptr %pParse.addr, align 8
  %db655 = getelementptr inbounds nuw %struct.Parse, ptr %449, i32 0, i32 0
  %450 = load ptr, ptr %db655, align 8
  %call656 = call ptr @sqlite3DbMallocZero(ptr noundef %450, i64 noundef 120)
  %451 = load ptr, ptr %yymsp, align 8
  %arrayidx657 = getelementptr inbounds %struct.yyStackEntry, ptr %451, i64 1
  %minor658 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx657, i32 0, i32 2
  store ptr %call656, ptr %minor658, align 8
  br label %sw.epilog

sw.bb659:                                         ; preds = %if.end6
  %452 = load ptr, ptr %yymsp, align 8
  %arrayidx660 = getelementptr inbounds %struct.yyStackEntry, ptr %452, i64 0
  %minor661 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx660, i32 0, i32 2
  %453 = load ptr, ptr %minor661, align 8
  %454 = load ptr, ptr %yymsp, align 8
  %arrayidx662 = getelementptr inbounds %struct.yyStackEntry, ptr %454, i64 -1
  %minor663 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx662, i32 0, i32 2
  store ptr %453, ptr %minor663, align 8
  %455 = load ptr, ptr %yymsp, align 8
  %arrayidx664 = getelementptr inbounds %struct.yyStackEntry, ptr %455, i64 -1
  %minor665 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx664, i32 0, i32 2
  %456 = load ptr, ptr %minor665, align 8
  call void @sqlite3SrcListShiftJoinType(ptr noundef %456)
  br label %sw.epilog

sw.bb666:                                         ; preds = %if.end6
  %457 = load ptr, ptr %yymsp, align 8
  %arrayidx667 = getelementptr inbounds %struct.yyStackEntry, ptr %457, i64 -1
  %minor668 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx667, i32 0, i32 2
  %458 = load ptr, ptr %minor668, align 8
  %tobool669 = icmp ne ptr %458, null
  br i1 %tobool669, label %land.lhs.true670, label %if.end686

land.lhs.true670:                                 ; preds = %sw.bb666
  %459 = load ptr, ptr %yymsp, align 8
  %arrayidx671 = getelementptr inbounds %struct.yyStackEntry, ptr %459, i64 -1
  %minor672 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx671, i32 0, i32 2
  %460 = load ptr, ptr %minor672, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %460, i32 0, i32 0
  %461 = load i32, ptr %nSrc, align 8
  %cmp673 = icmp sgt i32 %461, 0
  br i1 %cmp673, label %if.then675, label %if.end686

if.then675:                                       ; preds = %land.lhs.true670
  %462 = load ptr, ptr %yymsp, align 8
  %arrayidx676 = getelementptr inbounds %struct.yyStackEntry, ptr %462, i64 0
  %minor677 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx676, i32 0, i32 2
  %463 = load i32, ptr %minor677, align 8
  %conv678 = trunc i32 %463 to i8
  %464 = load ptr, ptr %yymsp, align 8
  %arrayidx679 = getelementptr inbounds %struct.yyStackEntry, ptr %464, i64 -1
  %minor680 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx679, i32 0, i32 2
  %465 = load ptr, ptr %minor680, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %465, i32 0, i32 2
  %466 = load ptr, ptr %yymsp, align 8
  %arrayidx681 = getelementptr inbounds %struct.yyStackEntry, ptr %466, i64 -1
  %minor682 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx681, i32 0, i32 2
  %467 = load ptr, ptr %minor682, align 8
  %nSrc683 = getelementptr inbounds nuw %struct.SrcList, ptr %467, i32 0, i32 0
  %468 = load i32, ptr %nSrc683, align 8
  %sub = sub nsw i32 %468, 1
  %idxprom684 = sext i32 %sub to i64
  %arrayidx685 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom684
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx685, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  store i8 %conv678, ptr %jointype, align 4
  br label %if.end686

if.end686:                                        ; preds = %if.then675, %land.lhs.true670, %sw.bb666
  br label %sw.epilog

sw.bb687:                                         ; preds = %if.end6
  %469 = load ptr, ptr %yymsp, align 8
  %arrayidx688 = getelementptr inbounds %struct.yyStackEntry, ptr %469, i64 1
  %minor689 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx688, i32 0, i32 2
  store ptr null, ptr %minor689, align 8
  br label %sw.epilog

sw.bb690:                                         ; preds = %if.end6
  %470 = load ptr, ptr %pParse.addr, align 8
  %471 = load ptr, ptr %yymsp, align 8
  %arrayidx691 = getelementptr inbounds %struct.yyStackEntry, ptr %471, i64 -6
  %minor692 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx691, i32 0, i32 2
  %472 = load ptr, ptr %minor692, align 8
  %473 = load ptr, ptr %yymsp, align 8
  %arrayidx693 = getelementptr inbounds %struct.yyStackEntry, ptr %473, i64 -5
  %minor694 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx693, i32 0, i32 2
  %474 = load ptr, ptr %yymsp, align 8
  %arrayidx695 = getelementptr inbounds %struct.yyStackEntry, ptr %474, i64 -4
  %minor696 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx695, i32 0, i32 2
  %475 = load ptr, ptr %yymsp, align 8
  %arrayidx697 = getelementptr inbounds %struct.yyStackEntry, ptr %475, i64 -3
  %minor698 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx697, i32 0, i32 2
  %476 = load ptr, ptr %yymsp, align 8
  %arrayidx699 = getelementptr inbounds %struct.yyStackEntry, ptr %476, i64 -1
  %minor700 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx699, i32 0, i32 2
  %477 = load ptr, ptr %minor700, align 8
  %478 = load ptr, ptr %yymsp, align 8
  %arrayidx701 = getelementptr inbounds %struct.yyStackEntry, ptr %478, i64 0
  %minor702 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx701, i32 0, i32 2
  %479 = load ptr, ptr %minor702, align 8
  %call703 = call ptr @sqlite3SrcListAppendFromTerm(ptr noundef %470, ptr noundef %472, ptr noundef %minor694, ptr noundef %minor696, ptr noundef %minor698, ptr noundef null, ptr noundef %477, ptr noundef %479)
  %480 = load ptr, ptr %yymsp, align 8
  %arrayidx704 = getelementptr inbounds %struct.yyStackEntry, ptr %480, i64 -6
  %minor705 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx704, i32 0, i32 2
  store ptr %call703, ptr %minor705, align 8
  %481 = load ptr, ptr %pParse.addr, align 8
  %482 = load ptr, ptr %yymsp, align 8
  %arrayidx706 = getelementptr inbounds %struct.yyStackEntry, ptr %482, i64 -6
  %minor707 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx706, i32 0, i32 2
  %483 = load ptr, ptr %minor707, align 8
  %484 = load ptr, ptr %yymsp, align 8
  %arrayidx708 = getelementptr inbounds %struct.yyStackEntry, ptr %484, i64 -2
  %minor709 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx708, i32 0, i32 2
  call void @sqlite3SrcListIndexedBy(ptr noundef %481, ptr noundef %483, ptr noundef %minor709)
  br label %sw.epilog

sw.bb710:                                         ; preds = %if.end6
  %485 = load ptr, ptr %pParse.addr, align 8
  %486 = load ptr, ptr %yymsp, align 8
  %arrayidx711 = getelementptr inbounds %struct.yyStackEntry, ptr %486, i64 -8
  %minor712 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx711, i32 0, i32 2
  %487 = load ptr, ptr %minor712, align 8
  %488 = load ptr, ptr %yymsp, align 8
  %arrayidx713 = getelementptr inbounds %struct.yyStackEntry, ptr %488, i64 -7
  %minor714 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx713, i32 0, i32 2
  %489 = load ptr, ptr %yymsp, align 8
  %arrayidx715 = getelementptr inbounds %struct.yyStackEntry, ptr %489, i64 -6
  %minor716 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx715, i32 0, i32 2
  %490 = load ptr, ptr %yymsp, align 8
  %arrayidx717 = getelementptr inbounds %struct.yyStackEntry, ptr %490, i64 -2
  %minor718 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx717, i32 0, i32 2
  %491 = load ptr, ptr %yymsp, align 8
  %arrayidx719 = getelementptr inbounds %struct.yyStackEntry, ptr %491, i64 -1
  %minor720 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx719, i32 0, i32 2
  %492 = load ptr, ptr %minor720, align 8
  %493 = load ptr, ptr %yymsp, align 8
  %arrayidx721 = getelementptr inbounds %struct.yyStackEntry, ptr %493, i64 0
  %minor722 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx721, i32 0, i32 2
  %494 = load ptr, ptr %minor722, align 8
  %call723 = call ptr @sqlite3SrcListAppendFromTerm(ptr noundef %485, ptr noundef %487, ptr noundef %minor714, ptr noundef %minor716, ptr noundef %minor718, ptr noundef null, ptr noundef %492, ptr noundef %494)
  %495 = load ptr, ptr %yymsp, align 8
  %arrayidx724 = getelementptr inbounds %struct.yyStackEntry, ptr %495, i64 -8
  %minor725 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx724, i32 0, i32 2
  store ptr %call723, ptr %minor725, align 8
  %496 = load ptr, ptr %pParse.addr, align 8
  %497 = load ptr, ptr %yymsp, align 8
  %arrayidx726 = getelementptr inbounds %struct.yyStackEntry, ptr %497, i64 -8
  %minor727 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx726, i32 0, i32 2
  %498 = load ptr, ptr %minor727, align 8
  %499 = load ptr, ptr %yymsp, align 8
  %arrayidx728 = getelementptr inbounds %struct.yyStackEntry, ptr %499, i64 -4
  %minor729 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx728, i32 0, i32 2
  %500 = load ptr, ptr %minor729, align 8
  call void @sqlite3SrcListFuncArgs(ptr noundef %496, ptr noundef %498, ptr noundef %500)
  br label %sw.epilog

sw.bb730:                                         ; preds = %if.end6
  %501 = load ptr, ptr %pParse.addr, align 8
  %502 = load ptr, ptr %yymsp, align 8
  %arrayidx731 = getelementptr inbounds %struct.yyStackEntry, ptr %502, i64 -6
  %minor732 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx731, i32 0, i32 2
  %503 = load ptr, ptr %minor732, align 8
  %504 = load ptr, ptr %yymsp, align 8
  %arrayidx733 = getelementptr inbounds %struct.yyStackEntry, ptr %504, i64 -2
  %minor734 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx733, i32 0, i32 2
  %505 = load ptr, ptr %yymsp, align 8
  %arrayidx735 = getelementptr inbounds %struct.yyStackEntry, ptr %505, i64 -4
  %minor736 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx735, i32 0, i32 2
  %506 = load ptr, ptr %minor736, align 8
  %507 = load ptr, ptr %yymsp, align 8
  %arrayidx737 = getelementptr inbounds %struct.yyStackEntry, ptr %507, i64 -1
  %minor738 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx737, i32 0, i32 2
  %508 = load ptr, ptr %minor738, align 8
  %509 = load ptr, ptr %yymsp, align 8
  %arrayidx739 = getelementptr inbounds %struct.yyStackEntry, ptr %509, i64 0
  %minor740 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx739, i32 0, i32 2
  %510 = load ptr, ptr %minor740, align 8
  %call741 = call ptr @sqlite3SrcListAppendFromTerm(ptr noundef %501, ptr noundef %503, ptr noundef null, ptr noundef null, ptr noundef %minor734, ptr noundef %506, ptr noundef %508, ptr noundef %510)
  %511 = load ptr, ptr %yymsp, align 8
  %arrayidx742 = getelementptr inbounds %struct.yyStackEntry, ptr %511, i64 -6
  %minor743 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx742, i32 0, i32 2
  store ptr %call741, ptr %minor743, align 8
  br label %sw.epilog

sw.bb744:                                         ; preds = %if.end6
  %512 = load ptr, ptr %yymsp, align 8
  %arrayidx745 = getelementptr inbounds %struct.yyStackEntry, ptr %512, i64 -6
  %minor746 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx745, i32 0, i32 2
  %513 = load ptr, ptr %minor746, align 8
  %cmp747 = icmp eq ptr %513, null
  br i1 %cmp747, label %land.lhs.true749, label %if.else770

land.lhs.true749:                                 ; preds = %sw.bb744
  %514 = load ptr, ptr %yymsp, align 8
  %arrayidx750 = getelementptr inbounds %struct.yyStackEntry, ptr %514, i64 -2
  %minor751 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx750, i32 0, i32 2
  %n752 = getelementptr inbounds nuw %struct.Token, ptr %minor751, i32 0, i32 1
  %515 = load i32, ptr %n752, align 8
  %cmp753 = icmp eq i32 %515, 0
  br i1 %cmp753, label %land.lhs.true755, label %if.else770

land.lhs.true755:                                 ; preds = %land.lhs.true749
  %516 = load ptr, ptr %yymsp, align 8
  %arrayidx756 = getelementptr inbounds %struct.yyStackEntry, ptr %516, i64 -1
  %minor757 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx756, i32 0, i32 2
  %517 = load ptr, ptr %minor757, align 8
  %cmp758 = icmp eq ptr %517, null
  br i1 %cmp758, label %land.lhs.true760, label %if.else770

land.lhs.true760:                                 ; preds = %land.lhs.true755
  %518 = load ptr, ptr %yymsp, align 8
  %arrayidx761 = getelementptr inbounds %struct.yyStackEntry, ptr %518, i64 0
  %minor762 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx761, i32 0, i32 2
  %519 = load ptr, ptr %minor762, align 8
  %cmp763 = icmp eq ptr %519, null
  br i1 %cmp763, label %if.then765, label %if.else770

if.then765:                                       ; preds = %land.lhs.true760
  %520 = load ptr, ptr %yymsp, align 8
  %arrayidx766 = getelementptr inbounds %struct.yyStackEntry, ptr %520, i64 -4
  %minor767 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx766, i32 0, i32 2
  %521 = load ptr, ptr %minor767, align 8
  %522 = load ptr, ptr %yymsp, align 8
  %arrayidx768 = getelementptr inbounds %struct.yyStackEntry, ptr %522, i64 -6
  %minor769 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx768, i32 0, i32 2
  store ptr %521, ptr %minor769, align 8
  br label %if.end847

if.else770:                                       ; preds = %land.lhs.true760, %land.lhs.true755, %land.lhs.true749, %sw.bb744
  %523 = load ptr, ptr %yymsp, align 8
  %arrayidx771 = getelementptr inbounds %struct.yyStackEntry, ptr %523, i64 -4
  %minor772 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx771, i32 0, i32 2
  %524 = load ptr, ptr %minor772, align 8
  %nSrc773 = getelementptr inbounds nuw %struct.SrcList, ptr %524, i32 0, i32 0
  %525 = load i32, ptr %nSrc773, align 8
  %cmp774 = icmp eq i32 %525, 1
  br i1 %cmp774, label %if.then776, label %if.else829

if.then776:                                       ; preds = %if.else770
  %526 = load ptr, ptr %pParse.addr, align 8
  %527 = load ptr, ptr %yymsp, align 8
  %arrayidx777 = getelementptr inbounds %struct.yyStackEntry, ptr %527, i64 -6
  %minor778 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx777, i32 0, i32 2
  %528 = load ptr, ptr %minor778, align 8
  %529 = load ptr, ptr %yymsp, align 8
  %arrayidx779 = getelementptr inbounds %struct.yyStackEntry, ptr %529, i64 -2
  %minor780 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx779, i32 0, i32 2
  %530 = load ptr, ptr %yymsp, align 8
  %arrayidx781 = getelementptr inbounds %struct.yyStackEntry, ptr %530, i64 -1
  %minor782 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx781, i32 0, i32 2
  %531 = load ptr, ptr %minor782, align 8
  %532 = load ptr, ptr %yymsp, align 8
  %arrayidx783 = getelementptr inbounds %struct.yyStackEntry, ptr %532, i64 0
  %minor784 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx783, i32 0, i32 2
  %533 = load ptr, ptr %minor784, align 8
  %call785 = call ptr @sqlite3SrcListAppendFromTerm(ptr noundef %526, ptr noundef %528, ptr noundef null, ptr noundef null, ptr noundef %minor780, ptr noundef null, ptr noundef %531, ptr noundef %533)
  %534 = load ptr, ptr %yymsp, align 8
  %arrayidx786 = getelementptr inbounds %struct.yyStackEntry, ptr %534, i64 -6
  %minor787 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx786, i32 0, i32 2
  store ptr %call785, ptr %minor787, align 8
  %535 = load ptr, ptr %yymsp, align 8
  %arrayidx788 = getelementptr inbounds %struct.yyStackEntry, ptr %535, i64 -6
  %minor789 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx788, i32 0, i32 2
  %536 = load ptr, ptr %minor789, align 8
  %tobool790 = icmp ne ptr %536, null
  br i1 %tobool790, label %if.then791, label %if.end825

if.then791:                                       ; preds = %if.then776
  %537 = load ptr, ptr %yymsp, align 8
  %arrayidx792 = getelementptr inbounds %struct.yyStackEntry, ptr %537, i64 -6
  %minor793 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx792, i32 0, i32 2
  %538 = load ptr, ptr %minor793, align 8
  %a794 = getelementptr inbounds nuw %struct.SrcList, ptr %538, i32 0, i32 2
  %539 = load ptr, ptr %yymsp, align 8
  %arrayidx795 = getelementptr inbounds %struct.yyStackEntry, ptr %539, i64 -6
  %minor796 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx795, i32 0, i32 2
  %540 = load ptr, ptr %minor796, align 8
  %nSrc797 = getelementptr inbounds nuw %struct.SrcList, ptr %540, i32 0, i32 0
  %541 = load i32, ptr %nSrc797, align 8
  %sub798 = sub nsw i32 %541, 1
  %idxprom799 = sext i32 %sub798 to i64
  %arrayidx800 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a794, i64 0, i64 %idxprom799
  store ptr %arrayidx800, ptr %pNew, align 8
  %542 = load ptr, ptr %yymsp, align 8
  %arrayidx801 = getelementptr inbounds %struct.yyStackEntry, ptr %542, i64 -4
  %minor802 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx801, i32 0, i32 2
  %543 = load ptr, ptr %minor802, align 8
  %a803 = getelementptr inbounds nuw %struct.SrcList, ptr %543, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a803, i64 0, i64 0
  store ptr %arraydecay, ptr %pOld, align 8
  %544 = load ptr, ptr %pOld, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %544, i32 0, i32 2
  %545 = load ptr, ptr %zName, align 8
  %546 = load ptr, ptr %pNew, align 8
  %zName804 = getelementptr inbounds nuw %struct.SrcList_item, ptr %546, i32 0, i32 2
  store ptr %545, ptr %zName804, align 8
  %547 = load ptr, ptr %pOld, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %547, i32 0, i32 1
  %548 = load ptr, ptr %zDatabase, align 8
  %549 = load ptr, ptr %pNew, align 8
  %zDatabase805 = getelementptr inbounds nuw %struct.SrcList_item, ptr %549, i32 0, i32 1
  store ptr %548, ptr %zDatabase805, align 8
  %550 = load ptr, ptr %pOld, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %550, i32 0, i32 5
  %551 = load ptr, ptr %pSelect, align 8
  %552 = load ptr, ptr %pNew, align 8
  %pSelect806 = getelementptr inbounds nuw %struct.SrcList_item, ptr %552, i32 0, i32 5
  store ptr %551, ptr %pSelect806, align 8
  %553 = load ptr, ptr %pOld, align 8
  %fg807 = getelementptr inbounds nuw %struct.SrcList_item, ptr %553, i32 0, i32 9
  %isTabFunc = getelementptr inbounds nuw %struct.anon, ptr %fg807, i32 0, i32 1
  %bf.load = load i8, ptr %isTabFunc, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool808 = icmp ne i32 %bf.cast, 0
  br i1 %tobool808, label %if.then809, label %if.end821

if.then809:                                       ; preds = %if.then791
  %554 = load ptr, ptr %pOld, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %554, i32 0, i32 14
  %555 = load ptr, ptr %u1, align 8
  %556 = load ptr, ptr %pNew, align 8
  %u1810 = getelementptr inbounds nuw %struct.SrcList_item, ptr %556, i32 0, i32 14
  store ptr %555, ptr %u1810, align 8
  %557 = load ptr, ptr %pOld, align 8
  %u1811 = getelementptr inbounds nuw %struct.SrcList_item, ptr %557, i32 0, i32 14
  store ptr null, ptr %u1811, align 8
  %558 = load ptr, ptr %pOld, align 8
  %fg812 = getelementptr inbounds nuw %struct.SrcList_item, ptr %558, i32 0, i32 9
  %isTabFunc813 = getelementptr inbounds nuw %struct.anon, ptr %fg812, i32 0, i32 1
  %bf.load814 = load i8, ptr %isTabFunc813, align 1
  %bf.clear815 = and i8 %bf.load814, -5
  %bf.set = or i8 %bf.clear815, 0
  store i8 %bf.set, ptr %isTabFunc813, align 1
  %559 = load ptr, ptr %pNew, align 8
  %fg816 = getelementptr inbounds nuw %struct.SrcList_item, ptr %559, i32 0, i32 9
  %isTabFunc817 = getelementptr inbounds nuw %struct.anon, ptr %fg816, i32 0, i32 1
  %bf.load818 = load i8, ptr %isTabFunc817, align 1
  %bf.clear819 = and i8 %bf.load818, -5
  %bf.set820 = or i8 %bf.clear819, 4
  store i8 %bf.set820, ptr %isTabFunc817, align 1
  br label %if.end821

if.end821:                                        ; preds = %if.then809, %if.then791
  %560 = load ptr, ptr %pOld, align 8
  %zDatabase822 = getelementptr inbounds nuw %struct.SrcList_item, ptr %560, i32 0, i32 1
  store ptr null, ptr %zDatabase822, align 8
  %561 = load ptr, ptr %pOld, align 8
  %zName823 = getelementptr inbounds nuw %struct.SrcList_item, ptr %561, i32 0, i32 2
  store ptr null, ptr %zName823, align 8
  %562 = load ptr, ptr %pOld, align 8
  %pSelect824 = getelementptr inbounds nuw %struct.SrcList_item, ptr %562, i32 0, i32 5
  store ptr null, ptr %pSelect824, align 8
  br label %if.end825

if.end825:                                        ; preds = %if.end821, %if.then776
  %563 = load ptr, ptr %pParse.addr, align 8
  %db826 = getelementptr inbounds nuw %struct.Parse, ptr %563, i32 0, i32 0
  %564 = load ptr, ptr %db826, align 8
  %565 = load ptr, ptr %yymsp, align 8
  %arrayidx827 = getelementptr inbounds %struct.yyStackEntry, ptr %565, i64 -4
  %minor828 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx827, i32 0, i32 2
  %566 = load ptr, ptr %minor828, align 8
  call void @sqlite3SrcListDelete(ptr noundef %564, ptr noundef %566)
  br label %if.end846

if.else829:                                       ; preds = %if.else770
  %567 = load ptr, ptr %yymsp, align 8
  %arrayidx830 = getelementptr inbounds %struct.yyStackEntry, ptr %567, i64 -4
  %minor831 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx830, i32 0, i32 2
  %568 = load ptr, ptr %minor831, align 8
  call void @sqlite3SrcListShiftJoinType(ptr noundef %568)
  %569 = load ptr, ptr %pParse.addr, align 8
  %570 = load ptr, ptr %yymsp, align 8
  %arrayidx832 = getelementptr inbounds %struct.yyStackEntry, ptr %570, i64 -4
  %minor833 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx832, i32 0, i32 2
  %571 = load ptr, ptr %minor833, align 8
  %call834 = call ptr @sqlite3SelectNew(ptr noundef %569, ptr noundef null, ptr noundef %571, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 2048, ptr noundef null)
  store ptr %call834, ptr %pSubquery, align 8
  %572 = load ptr, ptr %pParse.addr, align 8
  %573 = load ptr, ptr %yymsp, align 8
  %arrayidx835 = getelementptr inbounds %struct.yyStackEntry, ptr %573, i64 -6
  %minor836 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx835, i32 0, i32 2
  %574 = load ptr, ptr %minor836, align 8
  %575 = load ptr, ptr %yymsp, align 8
  %arrayidx837 = getelementptr inbounds %struct.yyStackEntry, ptr %575, i64 -2
  %minor838 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx837, i32 0, i32 2
  %576 = load ptr, ptr %pSubquery, align 8
  %577 = load ptr, ptr %yymsp, align 8
  %arrayidx839 = getelementptr inbounds %struct.yyStackEntry, ptr %577, i64 -1
  %minor840 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx839, i32 0, i32 2
  %578 = load ptr, ptr %minor840, align 8
  %579 = load ptr, ptr %yymsp, align 8
  %arrayidx841 = getelementptr inbounds %struct.yyStackEntry, ptr %579, i64 0
  %minor842 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx841, i32 0, i32 2
  %580 = load ptr, ptr %minor842, align 8
  %call843 = call ptr @sqlite3SrcListAppendFromTerm(ptr noundef %572, ptr noundef %574, ptr noundef null, ptr noundef null, ptr noundef %minor838, ptr noundef %576, ptr noundef %578, ptr noundef %580)
  %581 = load ptr, ptr %yymsp, align 8
  %arrayidx844 = getelementptr inbounds %struct.yyStackEntry, ptr %581, i64 -6
  %minor845 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx844, i32 0, i32 2
  store ptr %call843, ptr %minor845, align 8
  br label %if.end846

if.end846:                                        ; preds = %if.else829, %if.end825
  br label %if.end847

if.end847:                                        ; preds = %if.end846, %if.then765
  br label %sw.epilog

sw.bb848:                                         ; preds = %if.end6, %if.end6
  %582 = load ptr, ptr %yymsp, align 8
  %arrayidx849 = getelementptr inbounds %struct.yyStackEntry, ptr %582, i64 1
  %minor850 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx849, i32 0, i32 2
  %z851 = getelementptr inbounds nuw %struct.Token, ptr %minor850, i32 0, i32 0
  store ptr null, ptr %z851, align 8
  %583 = load ptr, ptr %yymsp, align 8
  %arrayidx852 = getelementptr inbounds %struct.yyStackEntry, ptr %583, i64 1
  %minor853 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx852, i32 0, i32 2
  %n854 = getelementptr inbounds nuw %struct.Token, ptr %minor853, i32 0, i32 1
  store i32 0, ptr %n854, align 8
  br label %sw.epilog

sw.bb855:                                         ; preds = %if.end6
  %584 = load ptr, ptr %pParse.addr, align 8
  %585 = load ptr, ptr %yymsp, align 8
  %arrayidx856 = getelementptr inbounds %struct.yyStackEntry, ptr %585, i64 0
  %minor857 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx856, i32 0, i32 2
  %call858 = call ptr @sqlite3SrcListAppend(ptr noundef %584, ptr noundef null, ptr noundef %minor857, ptr noundef null)
  store ptr %call858, ptr %yylhsminor, align 8
  %586 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %586, i32 0, i32 51
  %587 = load i8, ptr %eParseMode, align 4
  %conv859 = zext i8 %587 to i32
  %cmp860 = icmp sge i32 %conv859, 2
  br i1 %cmp860, label %land.lhs.true862, label %if.end871

land.lhs.true862:                                 ; preds = %sw.bb855
  %588 = load ptr, ptr %yylhsminor, align 8
  %tobool863 = icmp ne ptr %588, null
  br i1 %tobool863, label %if.then864, label %if.end871

if.then864:                                       ; preds = %land.lhs.true862
  %589 = load ptr, ptr %pParse.addr, align 8
  %590 = load ptr, ptr %yylhsminor, align 8
  %a865 = getelementptr inbounds nuw %struct.SrcList, ptr %590, i32 0, i32 2
  %arrayidx866 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a865, i64 0, i64 0
  %zName867 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx866, i32 0, i32 2
  %591 = load ptr, ptr %zName867, align 8
  %592 = load ptr, ptr %yymsp, align 8
  %arrayidx868 = getelementptr inbounds %struct.yyStackEntry, ptr %592, i64 0
  %minor869 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx868, i32 0, i32 2
  %call870 = call ptr @sqlite3RenameTokenMap(ptr noundef %589, ptr noundef %591, ptr noundef %minor869)
  br label %if.end871

if.end871:                                        ; preds = %if.then864, %land.lhs.true862, %sw.bb855
  %593 = load ptr, ptr %yylhsminor, align 8
  %594 = load ptr, ptr %yymsp, align 8
  %arrayidx872 = getelementptr inbounds %struct.yyStackEntry, ptr %594, i64 0
  %minor873 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx872, i32 0, i32 2
  store ptr %593, ptr %minor873, align 8
  br label %sw.epilog

sw.bb874:                                         ; preds = %if.end6
  %595 = load ptr, ptr %pParse.addr, align 8
  %596 = load ptr, ptr %yymsp, align 8
  %arrayidx875 = getelementptr inbounds %struct.yyStackEntry, ptr %596, i64 -2
  %minor876 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx875, i32 0, i32 2
  %597 = load ptr, ptr %yymsp, align 8
  %arrayidx877 = getelementptr inbounds %struct.yyStackEntry, ptr %597, i64 0
  %minor878 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx877, i32 0, i32 2
  %call879 = call ptr @sqlite3SrcListAppend(ptr noundef %595, ptr noundef null, ptr noundef %minor876, ptr noundef %minor878)
  store ptr %call879, ptr %yylhsminor, align 8
  %598 = load ptr, ptr %pParse.addr, align 8
  %eParseMode880 = getelementptr inbounds nuw %struct.Parse, ptr %598, i32 0, i32 51
  %599 = load i8, ptr %eParseMode880, align 4
  %conv881 = zext i8 %599 to i32
  %cmp882 = icmp sge i32 %conv881, 2
  br i1 %cmp882, label %land.lhs.true884, label %if.end893

land.lhs.true884:                                 ; preds = %sw.bb874
  %600 = load ptr, ptr %yylhsminor, align 8
  %tobool885 = icmp ne ptr %600, null
  br i1 %tobool885, label %if.then886, label %if.end893

if.then886:                                       ; preds = %land.lhs.true884
  %601 = load ptr, ptr %pParse.addr, align 8
  %602 = load ptr, ptr %yylhsminor, align 8
  %a887 = getelementptr inbounds nuw %struct.SrcList, ptr %602, i32 0, i32 2
  %arrayidx888 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a887, i64 0, i64 0
  %zName889 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx888, i32 0, i32 2
  %603 = load ptr, ptr %zName889, align 8
  %604 = load ptr, ptr %yymsp, align 8
  %arrayidx890 = getelementptr inbounds %struct.yyStackEntry, ptr %604, i64 0
  %minor891 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx890, i32 0, i32 2
  %call892 = call ptr @sqlite3RenameTokenMap(ptr noundef %601, ptr noundef %603, ptr noundef %minor891)
  br label %if.end893

if.end893:                                        ; preds = %if.then886, %land.lhs.true884, %sw.bb874
  %605 = load ptr, ptr %yylhsminor, align 8
  %606 = load ptr, ptr %yymsp, align 8
  %arrayidx894 = getelementptr inbounds %struct.yyStackEntry, ptr %606, i64 -2
  %minor895 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx894, i32 0, i32 2
  store ptr %605, ptr %minor895, align 8
  br label %sw.epilog

sw.bb896:                                         ; preds = %if.end6
  %607 = load ptr, ptr %pParse.addr, align 8
  %608 = load ptr, ptr %yymsp, align 8
  %arrayidx897 = getelementptr inbounds %struct.yyStackEntry, ptr %608, i64 0
  %minor898 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx897, i32 0, i32 2
  %call899 = call ptr @sqlite3SrcListAppend(ptr noundef %607, ptr noundef null, ptr noundef %minor898, ptr noundef null)
  %609 = load ptr, ptr %yymsp, align 8
  %arrayidx900 = getelementptr inbounds %struct.yyStackEntry, ptr %609, i64 0
  %minor901 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx900, i32 0, i32 2
  store ptr %call899, ptr %minor901, align 8
  br label %sw.epilog

sw.bb902:                                         ; preds = %if.end6
  %610 = load ptr, ptr %pParse.addr, align 8
  %611 = load ptr, ptr %yymsp, align 8
  %arrayidx903 = getelementptr inbounds %struct.yyStackEntry, ptr %611, i64 -2
  %minor904 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx903, i32 0, i32 2
  %612 = load ptr, ptr %yymsp, align 8
  %arrayidx905 = getelementptr inbounds %struct.yyStackEntry, ptr %612, i64 0
  %minor906 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx905, i32 0, i32 2
  %call907 = call ptr @sqlite3SrcListAppend(ptr noundef %610, ptr noundef null, ptr noundef %minor904, ptr noundef %minor906)
  %613 = load ptr, ptr %yymsp, align 8
  %arrayidx908 = getelementptr inbounds %struct.yyStackEntry, ptr %613, i64 -2
  %minor909 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx908, i32 0, i32 2
  store ptr %call907, ptr %minor909, align 8
  br label %sw.epilog

sw.bb910:                                         ; preds = %if.end6
  %614 = load ptr, ptr %pParse.addr, align 8
  %615 = load ptr, ptr %yymsp, align 8
  %arrayidx911 = getelementptr inbounds %struct.yyStackEntry, ptr %615, i64 -4
  %minor912 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx911, i32 0, i32 2
  %616 = load ptr, ptr %yymsp, align 8
  %arrayidx913 = getelementptr inbounds %struct.yyStackEntry, ptr %616, i64 -2
  %minor914 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx913, i32 0, i32 2
  %call915 = call ptr @sqlite3SrcListAppend(ptr noundef %614, ptr noundef null, ptr noundef %minor912, ptr noundef %minor914)
  %617 = load ptr, ptr %yymsp, align 8
  %arrayidx916 = getelementptr inbounds %struct.yyStackEntry, ptr %617, i64 -4
  %minor917 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx916, i32 0, i32 2
  store ptr %call915, ptr %minor917, align 8
  %618 = load ptr, ptr %yymsp, align 8
  %arrayidx918 = getelementptr inbounds %struct.yyStackEntry, ptr %618, i64 -4
  %minor919 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx918, i32 0, i32 2
  %619 = load ptr, ptr %minor919, align 8
  %tobool920 = icmp ne ptr %619, null
  br i1 %tobool920, label %if.then921, label %if.end930

if.then921:                                       ; preds = %sw.bb910
  %620 = load ptr, ptr %pParse.addr, align 8
  %db922 = getelementptr inbounds nuw %struct.Parse, ptr %620, i32 0, i32 0
  %621 = load ptr, ptr %db922, align 8
  %622 = load ptr, ptr %yymsp, align 8
  %arrayidx923 = getelementptr inbounds %struct.yyStackEntry, ptr %622, i64 0
  %minor924 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx923, i32 0, i32 2
  %call925 = call ptr @sqlite3NameFromToken(ptr noundef %621, ptr noundef %minor924)
  %623 = load ptr, ptr %yymsp, align 8
  %arrayidx926 = getelementptr inbounds %struct.yyStackEntry, ptr %623, i64 -4
  %minor927 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx926, i32 0, i32 2
  %624 = load ptr, ptr %minor927, align 8
  %a928 = getelementptr inbounds nuw %struct.SrcList, ptr %624, i32 0, i32 2
  %arrayidx929 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a928, i64 0, i64 0
  %zAlias = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx929, i32 0, i32 3
  store ptr %call925, ptr %zAlias, align 8
  br label %if.end930

if.end930:                                        ; preds = %if.then921, %sw.bb910
  br label %sw.epilog

sw.bb931:                                         ; preds = %if.end6
  %625 = load ptr, ptr %pParse.addr, align 8
  %626 = load ptr, ptr %yymsp, align 8
  %arrayidx932 = getelementptr inbounds %struct.yyStackEntry, ptr %626, i64 -2
  %minor933 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx932, i32 0, i32 2
  %call934 = call ptr @sqlite3SrcListAppend(ptr noundef %625, ptr noundef null, ptr noundef %minor933, ptr noundef null)
  %627 = load ptr, ptr %yymsp, align 8
  %arrayidx935 = getelementptr inbounds %struct.yyStackEntry, ptr %627, i64 -2
  %minor936 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx935, i32 0, i32 2
  store ptr %call934, ptr %minor936, align 8
  %628 = load ptr, ptr %yymsp, align 8
  %arrayidx937 = getelementptr inbounds %struct.yyStackEntry, ptr %628, i64 -2
  %minor938 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx937, i32 0, i32 2
  %629 = load ptr, ptr %minor938, align 8
  %tobool939 = icmp ne ptr %629, null
  br i1 %tobool939, label %if.then940, label %if.end950

if.then940:                                       ; preds = %sw.bb931
  %630 = load ptr, ptr %pParse.addr, align 8
  %db941 = getelementptr inbounds nuw %struct.Parse, ptr %630, i32 0, i32 0
  %631 = load ptr, ptr %db941, align 8
  %632 = load ptr, ptr %yymsp, align 8
  %arrayidx942 = getelementptr inbounds %struct.yyStackEntry, ptr %632, i64 0
  %minor943 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx942, i32 0, i32 2
  %call944 = call ptr @sqlite3NameFromToken(ptr noundef %631, ptr noundef %minor943)
  %633 = load ptr, ptr %yymsp, align 8
  %arrayidx945 = getelementptr inbounds %struct.yyStackEntry, ptr %633, i64 -2
  %minor946 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx945, i32 0, i32 2
  %634 = load ptr, ptr %minor946, align 8
  %a947 = getelementptr inbounds nuw %struct.SrcList, ptr %634, i32 0, i32 2
  %arrayidx948 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a947, i64 0, i64 0
  %zAlias949 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx948, i32 0, i32 3
  store ptr %call944, ptr %zAlias949, align 8
  br label %if.end950

if.end950:                                        ; preds = %if.then940, %sw.bb931
  br label %sw.epilog

sw.bb951:                                         ; preds = %if.end6
  %635 = load ptr, ptr %yymsp, align 8
  %arrayidx952 = getelementptr inbounds %struct.yyStackEntry, ptr %635, i64 0
  %minor953 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx952, i32 0, i32 2
  store i32 1, ptr %minor953, align 8
  br label %sw.epilog

sw.bb954:                                         ; preds = %if.end6
  %636 = load ptr, ptr %pParse.addr, align 8
  %637 = load ptr, ptr %yymsp, align 8
  %arrayidx955 = getelementptr inbounds %struct.yyStackEntry, ptr %637, i64 -1
  %minor956 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx955, i32 0, i32 2
  %call957 = call i32 @sqlite3JoinType(ptr noundef %636, ptr noundef %minor956, ptr noundef null, ptr noundef null)
  %638 = load ptr, ptr %yymsp, align 8
  %arrayidx958 = getelementptr inbounds %struct.yyStackEntry, ptr %638, i64 -1
  %minor959 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx958, i32 0, i32 2
  store i32 %call957, ptr %minor959, align 8
  br label %sw.epilog

sw.bb960:                                         ; preds = %if.end6
  %639 = load ptr, ptr %pParse.addr, align 8
  %640 = load ptr, ptr %yymsp, align 8
  %arrayidx961 = getelementptr inbounds %struct.yyStackEntry, ptr %640, i64 -2
  %minor962 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx961, i32 0, i32 2
  %641 = load ptr, ptr %yymsp, align 8
  %arrayidx963 = getelementptr inbounds %struct.yyStackEntry, ptr %641, i64 -1
  %minor964 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx963, i32 0, i32 2
  %call965 = call i32 @sqlite3JoinType(ptr noundef %639, ptr noundef %minor962, ptr noundef %minor964, ptr noundef null)
  %642 = load ptr, ptr %yymsp, align 8
  %arrayidx966 = getelementptr inbounds %struct.yyStackEntry, ptr %642, i64 -2
  %minor967 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx966, i32 0, i32 2
  store i32 %call965, ptr %minor967, align 8
  br label %sw.epilog

sw.bb968:                                         ; preds = %if.end6
  %643 = load ptr, ptr %pParse.addr, align 8
  %644 = load ptr, ptr %yymsp, align 8
  %arrayidx969 = getelementptr inbounds %struct.yyStackEntry, ptr %644, i64 -3
  %minor970 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx969, i32 0, i32 2
  %645 = load ptr, ptr %yymsp, align 8
  %arrayidx971 = getelementptr inbounds %struct.yyStackEntry, ptr %645, i64 -2
  %minor972 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx971, i32 0, i32 2
  %646 = load ptr, ptr %yymsp, align 8
  %arrayidx973 = getelementptr inbounds %struct.yyStackEntry, ptr %646, i64 -1
  %minor974 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx973, i32 0, i32 2
  %call975 = call i32 @sqlite3JoinType(ptr noundef %643, ptr noundef %minor970, ptr noundef %minor972, ptr noundef %minor974)
  %647 = load ptr, ptr %yymsp, align 8
  %arrayidx976 = getelementptr inbounds %struct.yyStackEntry, ptr %647, i64 -3
  %minor977 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx976, i32 0, i32 2
  store i32 %call975, ptr %minor977, align 8
  br label %sw.epilog

sw.bb978:                                         ; preds = %if.end6, %if.end6
  br label %sw.bb979

sw.bb979:                                         ; preds = %sw.bb978, %if.end6
  br label %sw.bb980

sw.bb980:                                         ; preds = %sw.bb979, %if.end6
  br label %sw.bb981

sw.bb981:                                         ; preds = %sw.bb980, %if.end6
  %648 = load ptr, ptr %yymsp, align 8
  %arrayidx982 = getelementptr inbounds %struct.yyStackEntry, ptr %648, i64 0
  %minor983 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx982, i32 0, i32 2
  %649 = load ptr, ptr %minor983, align 8
  %650 = load ptr, ptr %yymsp, align 8
  %arrayidx984 = getelementptr inbounds %struct.yyStackEntry, ptr %650, i64 -1
  %minor985 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx984, i32 0, i32 2
  store ptr %649, ptr %minor985, align 8
  br label %sw.epilog

sw.bb986:                                         ; preds = %if.end6, %if.end6
  br label %sw.bb987

sw.bb987:                                         ; preds = %sw.bb986, %if.end6
  br label %sw.bb988

sw.bb988:                                         ; preds = %sw.bb987, %if.end6
  br label %sw.bb989

sw.bb989:                                         ; preds = %sw.bb988, %if.end6
  br label %sw.bb990

sw.bb990:                                         ; preds = %sw.bb989, %if.end6
  br label %sw.bb991

sw.bb991:                                         ; preds = %sw.bb990, %if.end6
  %651 = load ptr, ptr %yymsp, align 8
  %arrayidx992 = getelementptr inbounds %struct.yyStackEntry, ptr %651, i64 1
  %minor993 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx992, i32 0, i32 2
  store ptr null, ptr %minor993, align 8
  br label %sw.epilog

sw.bb994:                                         ; preds = %if.end6
  %652 = load ptr, ptr %yymsp, align 8
  %arrayidx995 = getelementptr inbounds %struct.yyStackEntry, ptr %652, i64 -2
  %minor996 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx995, i32 0, i32 2
  %653 = load ptr, ptr %yymsp, align 8
  %arrayidx997 = getelementptr inbounds %struct.yyStackEntry, ptr %653, i64 0
  %minor998 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx997, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor996, ptr align 8 %minor998, i64 16, i1 false)
  br label %sw.epilog

sw.bb999:                                         ; preds = %if.end6
  %654 = load ptr, ptr %yymsp, align 8
  %arrayidx1000 = getelementptr inbounds %struct.yyStackEntry, ptr %654, i64 -1
  %minor1001 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1000, i32 0, i32 2
  %z1002 = getelementptr inbounds nuw %struct.Token, ptr %minor1001, i32 0, i32 0
  store ptr null, ptr %z1002, align 8
  %655 = load ptr, ptr %yymsp, align 8
  %arrayidx1003 = getelementptr inbounds %struct.yyStackEntry, ptr %655, i64 -1
  %minor1004 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1003, i32 0, i32 2
  %n1005 = getelementptr inbounds nuw %struct.Token, ptr %minor1004, i32 0, i32 1
  store i32 1, ptr %n1005, align 8
  br label %sw.epilog

sw.bb1006:                                        ; preds = %if.end6
  %656 = load ptr, ptr %yymsp, align 8
  %arrayidx1007 = getelementptr inbounds %struct.yyStackEntry, ptr %656, i64 -1
  %minor1008 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1007, i32 0, i32 2
  %657 = load ptr, ptr %minor1008, align 8
  %658 = load ptr, ptr %yymsp, align 8
  %arrayidx1009 = getelementptr inbounds %struct.yyStackEntry, ptr %658, i64 -3
  %minor1010 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1009, i32 0, i32 2
  store ptr %657, ptr %minor1010, align 8
  br label %sw.epilog

sw.bb1011:                                        ; preds = %if.end6, %if.end6
  %659 = load ptr, ptr %yymsp, align 8
  %arrayidx1012 = getelementptr inbounds %struct.yyStackEntry, ptr %659, i64 1
  %minor1013 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1012, i32 0, i32 2
  store ptr null, ptr %minor1013, align 8
  br label %sw.epilog

sw.bb1014:                                        ; preds = %if.end6, %if.end6
  %660 = load ptr, ptr %yymsp, align 8
  %arrayidx1015 = getelementptr inbounds %struct.yyStackEntry, ptr %660, i64 0
  %minor1016 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1015, i32 0, i32 2
  %661 = load ptr, ptr %minor1016, align 8
  %662 = load ptr, ptr %yymsp, align 8
  %arrayidx1017 = getelementptr inbounds %struct.yyStackEntry, ptr %662, i64 -2
  %minor1018 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1017, i32 0, i32 2
  store ptr %661, ptr %minor1018, align 8
  br label %sw.epilog

sw.bb1019:                                        ; preds = %if.end6
  %663 = load ptr, ptr %pParse.addr, align 8
  %664 = load ptr, ptr %yymsp, align 8
  %arrayidx1020 = getelementptr inbounds %struct.yyStackEntry, ptr %664, i64 -4
  %minor1021 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1020, i32 0, i32 2
  %665 = load ptr, ptr %minor1021, align 8
  %666 = load ptr, ptr %yymsp, align 8
  %arrayidx1022 = getelementptr inbounds %struct.yyStackEntry, ptr %666, i64 -2
  %minor1023 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1022, i32 0, i32 2
  %667 = load ptr, ptr %minor1023, align 8
  %call1024 = call ptr @sqlite3ExprListAppend(ptr noundef %663, ptr noundef %665, ptr noundef %667)
  %668 = load ptr, ptr %yymsp, align 8
  %arrayidx1025 = getelementptr inbounds %struct.yyStackEntry, ptr %668, i64 -4
  %minor1026 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1025, i32 0, i32 2
  store ptr %call1024, ptr %minor1026, align 8
  %669 = load ptr, ptr %yymsp, align 8
  %arrayidx1027 = getelementptr inbounds %struct.yyStackEntry, ptr %669, i64 -4
  %minor1028 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1027, i32 0, i32 2
  %670 = load ptr, ptr %minor1028, align 8
  %671 = load ptr, ptr %yymsp, align 8
  %arrayidx1029 = getelementptr inbounds %struct.yyStackEntry, ptr %671, i64 -1
  %minor1030 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1029, i32 0, i32 2
  %672 = load i32, ptr %minor1030, align 8
  %673 = load ptr, ptr %yymsp, align 8
  %arrayidx1031 = getelementptr inbounds %struct.yyStackEntry, ptr %673, i64 0
  %minor1032 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1031, i32 0, i32 2
  %674 = load i32, ptr %minor1032, align 8
  call void @sqlite3ExprListSetSortOrder(ptr noundef %670, i32 noundef %672, i32 noundef %674)
  br label %sw.epilog

sw.bb1033:                                        ; preds = %if.end6
  %675 = load ptr, ptr %pParse.addr, align 8
  %676 = load ptr, ptr %yymsp, align 8
  %arrayidx1034 = getelementptr inbounds %struct.yyStackEntry, ptr %676, i64 -2
  %minor1035 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1034, i32 0, i32 2
  %677 = load ptr, ptr %minor1035, align 8
  %call1036 = call ptr @sqlite3ExprListAppend(ptr noundef %675, ptr noundef null, ptr noundef %677)
  %678 = load ptr, ptr %yymsp, align 8
  %arrayidx1037 = getelementptr inbounds %struct.yyStackEntry, ptr %678, i64 -2
  %minor1038 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1037, i32 0, i32 2
  store ptr %call1036, ptr %minor1038, align 8
  %679 = load ptr, ptr %yymsp, align 8
  %arrayidx1039 = getelementptr inbounds %struct.yyStackEntry, ptr %679, i64 -2
  %minor1040 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1039, i32 0, i32 2
  %680 = load ptr, ptr %minor1040, align 8
  %681 = load ptr, ptr %yymsp, align 8
  %arrayidx1041 = getelementptr inbounds %struct.yyStackEntry, ptr %681, i64 -1
  %minor1042 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1041, i32 0, i32 2
  %682 = load i32, ptr %minor1042, align 8
  %683 = load ptr, ptr %yymsp, align 8
  %arrayidx1043 = getelementptr inbounds %struct.yyStackEntry, ptr %683, i64 0
  %minor1044 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1043, i32 0, i32 2
  %684 = load i32, ptr %minor1044, align 8
  call void @sqlite3ExprListSetSortOrder(ptr noundef %680, i32 noundef %682, i32 noundef %684)
  br label %sw.epilog

sw.bb1045:                                        ; preds = %if.end6
  %685 = load ptr, ptr %yymsp, align 8
  %arrayidx1046 = getelementptr inbounds %struct.yyStackEntry, ptr %685, i64 0
  %minor1047 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1046, i32 0, i32 2
  store i32 0, ptr %minor1047, align 8
  br label %sw.epilog

sw.bb1048:                                        ; preds = %if.end6
  %686 = load ptr, ptr %yymsp, align 8
  %arrayidx1049 = getelementptr inbounds %struct.yyStackEntry, ptr %686, i64 0
  %minor1050 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1049, i32 0, i32 2
  store i32 1, ptr %minor1050, align 8
  br label %sw.epilog

sw.bb1051:                                        ; preds = %if.end6, %if.end6
  %687 = load ptr, ptr %yymsp, align 8
  %arrayidx1052 = getelementptr inbounds %struct.yyStackEntry, ptr %687, i64 1
  %minor1053 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1052, i32 0, i32 2
  store i32 -1, ptr %minor1053, align 8
  br label %sw.epilog

sw.bb1054:                                        ; preds = %if.end6
  %688 = load ptr, ptr %yymsp, align 8
  %arrayidx1055 = getelementptr inbounds %struct.yyStackEntry, ptr %688, i64 -1
  %minor1056 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1055, i32 0, i32 2
  store i32 0, ptr %minor1056, align 8
  br label %sw.epilog

sw.bb1057:                                        ; preds = %if.end6
  %689 = load ptr, ptr %yymsp, align 8
  %arrayidx1058 = getelementptr inbounds %struct.yyStackEntry, ptr %689, i64 -1
  %minor1059 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1058, i32 0, i32 2
  store i32 1, ptr %minor1059, align 8
  br label %sw.epilog

sw.bb1060:                                        ; preds = %if.end6
  %690 = load ptr, ptr %pParse.addr, align 8
  %691 = load ptr, ptr %yymsp, align 8
  %arrayidx1061 = getelementptr inbounds %struct.yyStackEntry, ptr %691, i64 0
  %minor1062 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1061, i32 0, i32 2
  %692 = load ptr, ptr %minor1062, align 8
  %call1063 = call ptr @sqlite3PExpr(ptr noundef %690, i32 noundef 144, ptr noundef %692, ptr noundef null)
  %693 = load ptr, ptr %yymsp, align 8
  %arrayidx1064 = getelementptr inbounds %struct.yyStackEntry, ptr %693, i64 -1
  %minor1065 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1064, i32 0, i32 2
  store ptr %call1063, ptr %minor1065, align 8
  br label %sw.epilog

sw.bb1066:                                        ; preds = %if.end6
  %694 = load ptr, ptr %pParse.addr, align 8
  %695 = load ptr, ptr %yymsp, align 8
  %arrayidx1067 = getelementptr inbounds %struct.yyStackEntry, ptr %695, i64 -2
  %minor1068 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1067, i32 0, i32 2
  %696 = load ptr, ptr %minor1068, align 8
  %697 = load ptr, ptr %yymsp, align 8
  %arrayidx1069 = getelementptr inbounds %struct.yyStackEntry, ptr %697, i64 0
  %minor1070 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1069, i32 0, i32 2
  %698 = load ptr, ptr %minor1070, align 8
  %call1071 = call ptr @sqlite3PExpr(ptr noundef %694, i32 noundef 144, ptr noundef %696, ptr noundef %698)
  %699 = load ptr, ptr %yymsp, align 8
  %arrayidx1072 = getelementptr inbounds %struct.yyStackEntry, ptr %699, i64 -3
  %minor1073 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1072, i32 0, i32 2
  store ptr %call1071, ptr %minor1073, align 8
  br label %sw.epilog

sw.bb1074:                                        ; preds = %if.end6
  %700 = load ptr, ptr %pParse.addr, align 8
  %701 = load ptr, ptr %yymsp, align 8
  %arrayidx1075 = getelementptr inbounds %struct.yyStackEntry, ptr %701, i64 0
  %minor1076 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1075, i32 0, i32 2
  %702 = load ptr, ptr %minor1076, align 8
  %703 = load ptr, ptr %yymsp, align 8
  %arrayidx1077 = getelementptr inbounds %struct.yyStackEntry, ptr %703, i64 -2
  %minor1078 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1077, i32 0, i32 2
  %704 = load ptr, ptr %minor1078, align 8
  %call1079 = call ptr @sqlite3PExpr(ptr noundef %700, i32 noundef 144, ptr noundef %702, ptr noundef %704)
  %705 = load ptr, ptr %yymsp, align 8
  %arrayidx1080 = getelementptr inbounds %struct.yyStackEntry, ptr %705, i64 -3
  %minor1081 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1080, i32 0, i32 2
  store ptr %call1079, ptr %minor1081, align 8
  br label %sw.epilog

sw.bb1082:                                        ; preds = %if.end6
  %706 = load ptr, ptr %pParse.addr, align 8
  %707 = load ptr, ptr %yymsp, align 8
  %arrayidx1083 = getelementptr inbounds %struct.yyStackEntry, ptr %707, i64 -2
  %minor1084 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1083, i32 0, i32 2
  %708 = load ptr, ptr %minor1084, align 8
  %709 = load ptr, ptr %yymsp, align 8
  %arrayidx1085 = getelementptr inbounds %struct.yyStackEntry, ptr %709, i64 -1
  %minor1086 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1085, i32 0, i32 2
  call void @sqlite3SrcListIndexedBy(ptr noundef %706, ptr noundef %708, ptr noundef %minor1086)
  %710 = load ptr, ptr %pParse.addr, align 8
  %711 = load ptr, ptr %yymsp, align 8
  %arrayidx1087 = getelementptr inbounds %struct.yyStackEntry, ptr %711, i64 -2
  %minor1088 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1087, i32 0, i32 2
  %712 = load ptr, ptr %minor1088, align 8
  %713 = load ptr, ptr %yymsp, align 8
  %arrayidx1089 = getelementptr inbounds %struct.yyStackEntry, ptr %713, i64 0
  %minor1090 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1089, i32 0, i32 2
  %714 = load ptr, ptr %minor1090, align 8
  call void @sqlite3DeleteFrom(ptr noundef %710, ptr noundef %712, ptr noundef %714, ptr noundef null, ptr noundef null)
  br label %sw.epilog

sw.bb1091:                                        ; preds = %if.end6
  %715 = load ptr, ptr %pParse.addr, align 8
  %716 = load ptr, ptr %yymsp, align 8
  %arrayidx1092 = getelementptr inbounds %struct.yyStackEntry, ptr %716, i64 -4
  %minor1093 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1092, i32 0, i32 2
  %717 = load ptr, ptr %minor1093, align 8
  %718 = load ptr, ptr %yymsp, align 8
  %arrayidx1094 = getelementptr inbounds %struct.yyStackEntry, ptr %718, i64 -3
  %minor1095 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1094, i32 0, i32 2
  call void @sqlite3SrcListIndexedBy(ptr noundef %715, ptr noundef %717, ptr noundef %minor1095)
  %719 = load ptr, ptr %pParse.addr, align 8
  %720 = load ptr, ptr %yymsp, align 8
  %arrayidx1096 = getelementptr inbounds %struct.yyStackEntry, ptr %720, i64 -1
  %minor1097 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1096, i32 0, i32 2
  %721 = load ptr, ptr %minor1097, align 8
  call void @sqlite3ExprListCheckLength(ptr noundef %719, ptr noundef %721, ptr noundef @.str.556)
  %722 = load ptr, ptr %pParse.addr, align 8
  %723 = load ptr, ptr %yymsp, align 8
  %arrayidx1098 = getelementptr inbounds %struct.yyStackEntry, ptr %723, i64 -4
  %minor1099 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1098, i32 0, i32 2
  %724 = load ptr, ptr %minor1099, align 8
  %725 = load ptr, ptr %yymsp, align 8
  %arrayidx1100 = getelementptr inbounds %struct.yyStackEntry, ptr %725, i64 -1
  %minor1101 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1100, i32 0, i32 2
  %726 = load ptr, ptr %minor1101, align 8
  %727 = load ptr, ptr %yymsp, align 8
  %arrayidx1102 = getelementptr inbounds %struct.yyStackEntry, ptr %727, i64 0
  %minor1103 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1102, i32 0, i32 2
  %728 = load ptr, ptr %minor1103, align 8
  %729 = load ptr, ptr %yymsp, align 8
  %arrayidx1104 = getelementptr inbounds %struct.yyStackEntry, ptr %729, i64 -5
  %minor1105 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1104, i32 0, i32 2
  %730 = load i32, ptr %minor1105, align 8
  call void @sqlite3Update(ptr noundef %722, ptr noundef %724, ptr noundef %726, ptr noundef %728, i32 noundef %730, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %sw.epilog

sw.bb1106:                                        ; preds = %if.end6
  %731 = load ptr, ptr %pParse.addr, align 8
  %732 = load ptr, ptr %yymsp, align 8
  %arrayidx1107 = getelementptr inbounds %struct.yyStackEntry, ptr %732, i64 -4
  %minor1108 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1107, i32 0, i32 2
  %733 = load ptr, ptr %minor1108, align 8
  %734 = load ptr, ptr %yymsp, align 8
  %arrayidx1109 = getelementptr inbounds %struct.yyStackEntry, ptr %734, i64 0
  %minor1110 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1109, i32 0, i32 2
  %735 = load ptr, ptr %minor1110, align 8
  %call1111 = call ptr @sqlite3ExprListAppend(ptr noundef %731, ptr noundef %733, ptr noundef %735)
  %736 = load ptr, ptr %yymsp, align 8
  %arrayidx1112 = getelementptr inbounds %struct.yyStackEntry, ptr %736, i64 -4
  %minor1113 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1112, i32 0, i32 2
  store ptr %call1111, ptr %minor1113, align 8
  %737 = load ptr, ptr %pParse.addr, align 8
  %738 = load ptr, ptr %yymsp, align 8
  %arrayidx1114 = getelementptr inbounds %struct.yyStackEntry, ptr %738, i64 -4
  %minor1115 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1114, i32 0, i32 2
  %739 = load ptr, ptr %minor1115, align 8
  %740 = load ptr, ptr %yymsp, align 8
  %arrayidx1116 = getelementptr inbounds %struct.yyStackEntry, ptr %740, i64 -2
  %minor1117 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1116, i32 0, i32 2
  call void @sqlite3ExprListSetName(ptr noundef %737, ptr noundef %739, ptr noundef %minor1117, i32 noundef 1)
  br label %sw.epilog

sw.bb1118:                                        ; preds = %if.end6
  %741 = load ptr, ptr %pParse.addr, align 8
  %742 = load ptr, ptr %yymsp, align 8
  %arrayidx1119 = getelementptr inbounds %struct.yyStackEntry, ptr %742, i64 -6
  %minor1120 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1119, i32 0, i32 2
  %743 = load ptr, ptr %minor1120, align 8
  %744 = load ptr, ptr %yymsp, align 8
  %arrayidx1121 = getelementptr inbounds %struct.yyStackEntry, ptr %744, i64 -3
  %minor1122 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1121, i32 0, i32 2
  %745 = load ptr, ptr %minor1122, align 8
  %746 = load ptr, ptr %yymsp, align 8
  %arrayidx1123 = getelementptr inbounds %struct.yyStackEntry, ptr %746, i64 0
  %minor1124 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1123, i32 0, i32 2
  %747 = load ptr, ptr %minor1124, align 8
  %call1125 = call ptr @sqlite3ExprListAppendVector(ptr noundef %741, ptr noundef %743, ptr noundef %745, ptr noundef %747)
  %748 = load ptr, ptr %yymsp, align 8
  %arrayidx1126 = getelementptr inbounds %struct.yyStackEntry, ptr %748, i64 -6
  %minor1127 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1126, i32 0, i32 2
  store ptr %call1125, ptr %minor1127, align 8
  br label %sw.epilog

sw.bb1128:                                        ; preds = %if.end6
  %749 = load ptr, ptr %pParse.addr, align 8
  %750 = load ptr, ptr %yymsp, align 8
  %arrayidx1129 = getelementptr inbounds %struct.yyStackEntry, ptr %750, i64 0
  %minor1130 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1129, i32 0, i32 2
  %751 = load ptr, ptr %minor1130, align 8
  %call1131 = call ptr @sqlite3ExprListAppend(ptr noundef %749, ptr noundef null, ptr noundef %751)
  store ptr %call1131, ptr %yylhsminor, align 8
  %752 = load ptr, ptr %pParse.addr, align 8
  %753 = load ptr, ptr %yylhsminor, align 8
  %754 = load ptr, ptr %yymsp, align 8
  %arrayidx1132 = getelementptr inbounds %struct.yyStackEntry, ptr %754, i64 -2
  %minor1133 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1132, i32 0, i32 2
  call void @sqlite3ExprListSetName(ptr noundef %752, ptr noundef %753, ptr noundef %minor1133, i32 noundef 1)
  %755 = load ptr, ptr %yylhsminor, align 8
  %756 = load ptr, ptr %yymsp, align 8
  %arrayidx1134 = getelementptr inbounds %struct.yyStackEntry, ptr %756, i64 -2
  %minor1135 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1134, i32 0, i32 2
  store ptr %755, ptr %minor1135, align 8
  br label %sw.epilog

sw.bb1136:                                        ; preds = %if.end6
  %757 = load ptr, ptr %pParse.addr, align 8
  %758 = load ptr, ptr %yymsp, align 8
  %arrayidx1137 = getelementptr inbounds %struct.yyStackEntry, ptr %758, i64 -3
  %minor1138 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1137, i32 0, i32 2
  %759 = load ptr, ptr %minor1138, align 8
  %760 = load ptr, ptr %yymsp, align 8
  %arrayidx1139 = getelementptr inbounds %struct.yyStackEntry, ptr %760, i64 0
  %minor1140 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1139, i32 0, i32 2
  %761 = load ptr, ptr %minor1140, align 8
  %call1141 = call ptr @sqlite3ExprListAppendVector(ptr noundef %757, ptr noundef null, ptr noundef %759, ptr noundef %761)
  %762 = load ptr, ptr %yymsp, align 8
  %arrayidx1142 = getelementptr inbounds %struct.yyStackEntry, ptr %762, i64 -4
  %minor1143 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1142, i32 0, i32 2
  store ptr %call1141, ptr %minor1143, align 8
  br label %sw.epilog

sw.bb1144:                                        ; preds = %if.end6
  %763 = load ptr, ptr %pParse.addr, align 8
  %764 = load ptr, ptr %yymsp, align 8
  %arrayidx1145 = getelementptr inbounds %struct.yyStackEntry, ptr %764, i64 -3
  %minor1146 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1145, i32 0, i32 2
  %765 = load ptr, ptr %minor1146, align 8
  %766 = load ptr, ptr %yymsp, align 8
  %arrayidx1147 = getelementptr inbounds %struct.yyStackEntry, ptr %766, i64 -1
  %minor1148 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1147, i32 0, i32 2
  %767 = load ptr, ptr %minor1148, align 8
  %768 = load ptr, ptr %yymsp, align 8
  %arrayidx1149 = getelementptr inbounds %struct.yyStackEntry, ptr %768, i64 -2
  %minor1150 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1149, i32 0, i32 2
  %769 = load ptr, ptr %minor1150, align 8
  %770 = load ptr, ptr %yymsp, align 8
  %arrayidx1151 = getelementptr inbounds %struct.yyStackEntry, ptr %770, i64 -5
  %minor1152 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1151, i32 0, i32 2
  %771 = load i32, ptr %minor1152, align 8
  %772 = load ptr, ptr %yymsp, align 8
  %arrayidx1153 = getelementptr inbounds %struct.yyStackEntry, ptr %772, i64 0
  %minor1154 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1153, i32 0, i32 2
  %773 = load ptr, ptr %minor1154, align 8
  call void @sqlite3Insert(ptr noundef %763, ptr noundef %765, ptr noundef %767, ptr noundef %769, i32 noundef %771, ptr noundef %773)
  br label %sw.epilog

sw.bb1155:                                        ; preds = %if.end6
  %774 = load ptr, ptr %pParse.addr, align 8
  %775 = load ptr, ptr %yymsp, align 8
  %arrayidx1156 = getelementptr inbounds %struct.yyStackEntry, ptr %775, i64 -3
  %minor1157 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1156, i32 0, i32 2
  %776 = load ptr, ptr %minor1157, align 8
  %777 = load ptr, ptr %yymsp, align 8
  %arrayidx1158 = getelementptr inbounds %struct.yyStackEntry, ptr %777, i64 -2
  %minor1159 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1158, i32 0, i32 2
  %778 = load ptr, ptr %minor1159, align 8
  %779 = load ptr, ptr %yymsp, align 8
  %arrayidx1160 = getelementptr inbounds %struct.yyStackEntry, ptr %779, i64 -5
  %minor1161 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1160, i32 0, i32 2
  %780 = load i32, ptr %minor1161, align 8
  call void @sqlite3Insert(ptr noundef %774, ptr noundef %776, ptr noundef null, ptr noundef %778, i32 noundef %780, ptr noundef null)
  br label %sw.epilog

sw.bb1162:                                        ; preds = %if.end6
  %781 = load ptr, ptr %yymsp, align 8
  %arrayidx1163 = getelementptr inbounds %struct.yyStackEntry, ptr %781, i64 1
  %minor1164 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1163, i32 0, i32 2
  store ptr null, ptr %minor1164, align 8
  br label %sw.epilog

sw.bb1165:                                        ; preds = %if.end6
  %782 = load ptr, ptr %pParse.addr, align 8
  %db1166 = getelementptr inbounds nuw %struct.Parse, ptr %782, i32 0, i32 0
  %783 = load ptr, ptr %db1166, align 8
  %784 = load ptr, ptr %yymsp, align 8
  %arrayidx1167 = getelementptr inbounds %struct.yyStackEntry, ptr %784, i64 -7
  %minor1168 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1167, i32 0, i32 2
  %785 = load ptr, ptr %minor1168, align 8
  %786 = load ptr, ptr %yymsp, align 8
  %arrayidx1169 = getelementptr inbounds %struct.yyStackEntry, ptr %786, i64 -5
  %minor1170 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1169, i32 0, i32 2
  %787 = load ptr, ptr %minor1170, align 8
  %788 = load ptr, ptr %yymsp, align 8
  %arrayidx1171 = getelementptr inbounds %struct.yyStackEntry, ptr %788, i64 -1
  %minor1172 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1171, i32 0, i32 2
  %789 = load ptr, ptr %minor1172, align 8
  %790 = load ptr, ptr %yymsp, align 8
  %arrayidx1173 = getelementptr inbounds %struct.yyStackEntry, ptr %790, i64 0
  %minor1174 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1173, i32 0, i32 2
  %791 = load ptr, ptr %minor1174, align 8
  %call1175 = call ptr @sqlite3UpsertNew(ptr noundef %783, ptr noundef %785, ptr noundef %787, ptr noundef %789, ptr noundef %791)
  %792 = load ptr, ptr %yymsp, align 8
  %arrayidx1176 = getelementptr inbounds %struct.yyStackEntry, ptr %792, i64 -10
  %minor1177 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1176, i32 0, i32 2
  store ptr %call1175, ptr %minor1177, align 8
  br label %sw.epilog

sw.bb1178:                                        ; preds = %if.end6
  %793 = load ptr, ptr %pParse.addr, align 8
  %db1179 = getelementptr inbounds nuw %struct.Parse, ptr %793, i32 0, i32 0
  %794 = load ptr, ptr %db1179, align 8
  %795 = load ptr, ptr %yymsp, align 8
  %arrayidx1180 = getelementptr inbounds %struct.yyStackEntry, ptr %795, i64 -4
  %minor1181 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1180, i32 0, i32 2
  %796 = load ptr, ptr %minor1181, align 8
  %797 = load ptr, ptr %yymsp, align 8
  %arrayidx1182 = getelementptr inbounds %struct.yyStackEntry, ptr %797, i64 -2
  %minor1183 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1182, i32 0, i32 2
  %798 = load ptr, ptr %minor1183, align 8
  %call1184 = call ptr @sqlite3UpsertNew(ptr noundef %794, ptr noundef %796, ptr noundef %798, ptr noundef null, ptr noundef null)
  %799 = load ptr, ptr %yymsp, align 8
  %arrayidx1185 = getelementptr inbounds %struct.yyStackEntry, ptr %799, i64 -7
  %minor1186 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1185, i32 0, i32 2
  store ptr %call1184, ptr %minor1186, align 8
  br label %sw.epilog

sw.bb1187:                                        ; preds = %if.end6
  %800 = load ptr, ptr %pParse.addr, align 8
  %db1188 = getelementptr inbounds nuw %struct.Parse, ptr %800, i32 0, i32 0
  %801 = load ptr, ptr %db1188, align 8
  %call1189 = call ptr @sqlite3UpsertNew(ptr noundef %801, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %802 = load ptr, ptr %yymsp, align 8
  %arrayidx1190 = getelementptr inbounds %struct.yyStackEntry, ptr %802, i64 -3
  %minor1191 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1190, i32 0, i32 2
  store ptr %call1189, ptr %minor1191, align 8
  br label %sw.epilog

sw.bb1192:                                        ; preds = %if.end6
  %803 = load ptr, ptr %yymsp, align 8
  %arrayidx1193 = getelementptr inbounds %struct.yyStackEntry, ptr %803, i64 -1
  %minor1194 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1193, i32 0, i32 2
  %804 = load ptr, ptr %minor1194, align 8
  %805 = load ptr, ptr %yymsp, align 8
  %arrayidx1195 = getelementptr inbounds %struct.yyStackEntry, ptr %805, i64 -2
  %minor1196 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1195, i32 0, i32 2
  store ptr %804, ptr %minor1196, align 8
  br label %sw.epilog

sw.bb1197:                                        ; preds = %if.end6
  %806 = load ptr, ptr %pParse.addr, align 8
  %807 = load ptr, ptr %yymsp, align 8
  %arrayidx1198 = getelementptr inbounds %struct.yyStackEntry, ptr %807, i64 -2
  %minor1199 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1198, i32 0, i32 2
  %808 = load ptr, ptr %minor1199, align 8
  %809 = load ptr, ptr %yymsp, align 8
  %arrayidx1200 = getelementptr inbounds %struct.yyStackEntry, ptr %809, i64 0
  %minor1201 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1200, i32 0, i32 2
  %call1202 = call ptr @sqlite3IdListAppend(ptr noundef %806, ptr noundef %808, ptr noundef %minor1201)
  %810 = load ptr, ptr %yymsp, align 8
  %arrayidx1203 = getelementptr inbounds %struct.yyStackEntry, ptr %810, i64 -2
  %minor1204 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1203, i32 0, i32 2
  store ptr %call1202, ptr %minor1204, align 8
  br label %sw.epilog

sw.bb1205:                                        ; preds = %if.end6
  %811 = load ptr, ptr %pParse.addr, align 8
  %812 = load ptr, ptr %yymsp, align 8
  %arrayidx1206 = getelementptr inbounds %struct.yyStackEntry, ptr %812, i64 0
  %minor1207 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1206, i32 0, i32 2
  %call1208 = call ptr @sqlite3IdListAppend(ptr noundef %811, ptr noundef null, ptr noundef %minor1207)
  %813 = load ptr, ptr %yymsp, align 8
  %arrayidx1209 = getelementptr inbounds %struct.yyStackEntry, ptr %813, i64 0
  %minor1210 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1209, i32 0, i32 2
  store ptr %call1208, ptr %minor1210, align 8
  br label %sw.epilog

sw.bb1211:                                        ; preds = %if.end6
  %814 = load ptr, ptr %yymsp, align 8
  %arrayidx1212 = getelementptr inbounds %struct.yyStackEntry, ptr %814, i64 -1
  %minor1213 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1212, i32 0, i32 2
  %815 = load ptr, ptr %minor1213, align 8
  %816 = load ptr, ptr %yymsp, align 8
  %arrayidx1214 = getelementptr inbounds %struct.yyStackEntry, ptr %816, i64 -2
  %minor1215 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1214, i32 0, i32 2
  store ptr %815, ptr %minor1215, align 8
  br label %sw.epilog

sw.bb1216:                                        ; preds = %if.end6, %if.end6
  %817 = load ptr, ptr %pParse.addr, align 8
  %818 = load ptr, ptr %yymsp, align 8
  %arrayidx1217 = getelementptr inbounds %struct.yyStackEntry, ptr %818, i64 0
  %minor1218 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1217, i32 0, i32 2
  %819 = getelementptr inbounds nuw { ptr, i32 }, ptr %minor1218, i32 0, i32 0
  %820 = load ptr, ptr %819, align 8
  %821 = getelementptr inbounds nuw { ptr, i32 }, ptr %minor1218, i32 0, i32 1
  %822 = load i32, ptr %821, align 8
  %call1219 = call ptr @tokenExpr(ptr noundef %817, i32 noundef 59, ptr %820, i32 %822)
  %823 = load ptr, ptr %yymsp, align 8
  %arrayidx1220 = getelementptr inbounds %struct.yyStackEntry, ptr %823, i64 0
  %minor1221 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1220, i32 0, i32 2
  store ptr %call1219, ptr %minor1221, align 8
  br label %sw.epilog

sw.bb1222:                                        ; preds = %if.end6
  %824 = load ptr, ptr %pParse.addr, align 8
  %db1223 = getelementptr inbounds nuw %struct.Parse, ptr %824, i32 0, i32 0
  %825 = load ptr, ptr %db1223, align 8
  %826 = load ptr, ptr %yymsp, align 8
  %arrayidx1224 = getelementptr inbounds %struct.yyStackEntry, ptr %826, i64 -2
  %minor1225 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1224, i32 0, i32 2
  %call1226 = call ptr @sqlite3ExprAlloc(ptr noundef %825, i32 noundef 59, ptr noundef %minor1225, i32 noundef 1)
  store ptr %call1226, ptr %temp1, align 8
  %827 = load ptr, ptr %pParse.addr, align 8
  %db1227 = getelementptr inbounds nuw %struct.Parse, ptr %827, i32 0, i32 0
  %828 = load ptr, ptr %db1227, align 8
  %829 = load ptr, ptr %yymsp, align 8
  %arrayidx1228 = getelementptr inbounds %struct.yyStackEntry, ptr %829, i64 0
  %minor1229 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1228, i32 0, i32 2
  %call1230 = call ptr @sqlite3ExprAlloc(ptr noundef %828, i32 noundef 59, ptr noundef %minor1229, i32 noundef 1)
  store ptr %call1230, ptr %temp2, align 8
  %830 = load ptr, ptr %pParse.addr, align 8
  %eParseMode1231 = getelementptr inbounds nuw %struct.Parse, ptr %830, i32 0, i32 51
  %831 = load i8, ptr %eParseMode1231, align 4
  %conv1232 = zext i8 %831 to i32
  %cmp1233 = icmp sge i32 %conv1232, 2
  br i1 %cmp1233, label %if.then1235, label %if.end1242

if.then1235:                                      ; preds = %sw.bb1222
  %832 = load ptr, ptr %pParse.addr, align 8
  %833 = load ptr, ptr %temp2, align 8
  %834 = load ptr, ptr %yymsp, align 8
  %arrayidx1236 = getelementptr inbounds %struct.yyStackEntry, ptr %834, i64 0
  %minor1237 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1236, i32 0, i32 2
  %call1238 = call ptr @sqlite3RenameTokenMap(ptr noundef %832, ptr noundef %833, ptr noundef %minor1237)
  %835 = load ptr, ptr %pParse.addr, align 8
  %836 = load ptr, ptr %temp1, align 8
  %837 = load ptr, ptr %yymsp, align 8
  %arrayidx1239 = getelementptr inbounds %struct.yyStackEntry, ptr %837, i64 -2
  %minor1240 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1239, i32 0, i32 2
  %call1241 = call ptr @sqlite3RenameTokenMap(ptr noundef %835, ptr noundef %836, ptr noundef %minor1240)
  br label %if.end1242

if.end1242:                                       ; preds = %if.then1235, %sw.bb1222
  %838 = load ptr, ptr %pParse.addr, align 8
  %839 = load ptr, ptr %temp1, align 8
  %840 = load ptr, ptr %temp2, align 8
  %call1243 = call ptr @sqlite3PExpr(ptr noundef %838, i32 noundef 137, ptr noundef %839, ptr noundef %840)
  store ptr %call1243, ptr %yylhsminor, align 8
  %841 = load ptr, ptr %yylhsminor, align 8
  %842 = load ptr, ptr %yymsp, align 8
  %arrayidx1244 = getelementptr inbounds %struct.yyStackEntry, ptr %842, i64 -2
  %minor1245 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1244, i32 0, i32 2
  store ptr %841, ptr %minor1245, align 8
  br label %sw.epilog

sw.bb1246:                                        ; preds = %if.end6
  %843 = load ptr, ptr %pParse.addr, align 8
  %db1248 = getelementptr inbounds nuw %struct.Parse, ptr %843, i32 0, i32 0
  %844 = load ptr, ptr %db1248, align 8
  %845 = load ptr, ptr %yymsp, align 8
  %arrayidx1249 = getelementptr inbounds %struct.yyStackEntry, ptr %845, i64 -4
  %minor1250 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1249, i32 0, i32 2
  %call1251 = call ptr @sqlite3ExprAlloc(ptr noundef %844, i32 noundef 59, ptr noundef %minor1250, i32 noundef 1)
  store ptr %call1251, ptr %temp11247, align 8
  %846 = load ptr, ptr %pParse.addr, align 8
  %db1253 = getelementptr inbounds nuw %struct.Parse, ptr %846, i32 0, i32 0
  %847 = load ptr, ptr %db1253, align 8
  %848 = load ptr, ptr %yymsp, align 8
  %arrayidx1254 = getelementptr inbounds %struct.yyStackEntry, ptr %848, i64 -2
  %minor1255 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1254, i32 0, i32 2
  %call1256 = call ptr @sqlite3ExprAlloc(ptr noundef %847, i32 noundef 59, ptr noundef %minor1255, i32 noundef 1)
  store ptr %call1256, ptr %temp21252, align 8
  %849 = load ptr, ptr %pParse.addr, align 8
  %db1257 = getelementptr inbounds nuw %struct.Parse, ptr %849, i32 0, i32 0
  %850 = load ptr, ptr %db1257, align 8
  %851 = load ptr, ptr %yymsp, align 8
  %arrayidx1258 = getelementptr inbounds %struct.yyStackEntry, ptr %851, i64 0
  %minor1259 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1258, i32 0, i32 2
  %call1260 = call ptr @sqlite3ExprAlloc(ptr noundef %850, i32 noundef 59, ptr noundef %minor1259, i32 noundef 1)
  store ptr %call1260, ptr %temp3, align 8
  %852 = load ptr, ptr %pParse.addr, align 8
  %853 = load ptr, ptr %temp21252, align 8
  %854 = load ptr, ptr %temp3, align 8
  %call1261 = call ptr @sqlite3PExpr(ptr noundef %852, i32 noundef 137, ptr noundef %853, ptr noundef %854)
  store ptr %call1261, ptr %temp4, align 8
  %855 = load ptr, ptr %pParse.addr, align 8
  %eParseMode1262 = getelementptr inbounds nuw %struct.Parse, ptr %855, i32 0, i32 51
  %856 = load i8, ptr %eParseMode1262, align 4
  %conv1263 = zext i8 %856 to i32
  %cmp1264 = icmp sge i32 %conv1263, 2
  br i1 %cmp1264, label %if.then1266, label %if.end1273

if.then1266:                                      ; preds = %sw.bb1246
  %857 = load ptr, ptr %pParse.addr, align 8
  %858 = load ptr, ptr %temp3, align 8
  %859 = load ptr, ptr %yymsp, align 8
  %arrayidx1267 = getelementptr inbounds %struct.yyStackEntry, ptr %859, i64 0
  %minor1268 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1267, i32 0, i32 2
  %call1269 = call ptr @sqlite3RenameTokenMap(ptr noundef %857, ptr noundef %858, ptr noundef %minor1268)
  %860 = load ptr, ptr %pParse.addr, align 8
  %861 = load ptr, ptr %temp21252, align 8
  %862 = load ptr, ptr %yymsp, align 8
  %arrayidx1270 = getelementptr inbounds %struct.yyStackEntry, ptr %862, i64 -2
  %minor1271 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1270, i32 0, i32 2
  %call1272 = call ptr @sqlite3RenameTokenMap(ptr noundef %860, ptr noundef %861, ptr noundef %minor1271)
  br label %if.end1273

if.end1273:                                       ; preds = %if.then1266, %sw.bb1246
  %863 = load ptr, ptr %pParse.addr, align 8
  %864 = load ptr, ptr %temp11247, align 8
  %865 = load ptr, ptr %temp4, align 8
  %call1274 = call ptr @sqlite3PExpr(ptr noundef %863, i32 noundef 137, ptr noundef %864, ptr noundef %865)
  store ptr %call1274, ptr %yylhsminor, align 8
  %866 = load ptr, ptr %yylhsminor, align 8
  %867 = load ptr, ptr %yymsp, align 8
  %arrayidx1275 = getelementptr inbounds %struct.yyStackEntry, ptr %867, i64 -4
  %minor1276 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1275, i32 0, i32 2
  store ptr %866, ptr %minor1276, align 8
  br label %sw.epilog

sw.bb1277:                                        ; preds = %if.end6, %if.end6
  %868 = load ptr, ptr %pParse.addr, align 8
  %869 = load ptr, ptr %yymsp, align 8
  %arrayidx1278 = getelementptr inbounds %struct.yyStackEntry, ptr %869, i64 0
  %major1279 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1278, i32 0, i32 1
  %870 = load i16, ptr %major1279, align 2
  %conv1280 = zext i16 %870 to i32
  %871 = load ptr, ptr %yymsp, align 8
  %arrayidx1281 = getelementptr inbounds %struct.yyStackEntry, ptr %871, i64 0
  %minor1282 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1281, i32 0, i32 2
  %872 = getelementptr inbounds nuw { ptr, i32 }, ptr %minor1282, i32 0, i32 0
  %873 = load ptr, ptr %872, align 8
  %874 = getelementptr inbounds nuw { ptr, i32 }, ptr %minor1282, i32 0, i32 1
  %875 = load i32, ptr %874, align 8
  %call1283 = call ptr @tokenExpr(ptr noundef %868, i32 noundef %conv1280, ptr %873, i32 %875)
  %876 = load ptr, ptr %yymsp, align 8
  %arrayidx1284 = getelementptr inbounds %struct.yyStackEntry, ptr %876, i64 0
  %minor1285 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1284, i32 0, i32 2
  store ptr %call1283, ptr %minor1285, align 8
  br label %sw.epilog

sw.bb1286:                                        ; preds = %if.end6
  %877 = load ptr, ptr %pParse.addr, align 8
  %db1287 = getelementptr inbounds nuw %struct.Parse, ptr %877, i32 0, i32 0
  %878 = load ptr, ptr %db1287, align 8
  %879 = load ptr, ptr %yymsp, align 8
  %arrayidx1288 = getelementptr inbounds %struct.yyStackEntry, ptr %879, i64 0
  %minor1289 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1288, i32 0, i32 2
  %call1290 = call ptr @sqlite3ExprAlloc(ptr noundef %878, i32 noundef 150, ptr noundef %minor1289, i32 noundef 1)
  store ptr %call1290, ptr %yylhsminor, align 8
  %880 = load ptr, ptr %yylhsminor, align 8
  %881 = load ptr, ptr %yymsp, align 8
  %arrayidx1291 = getelementptr inbounds %struct.yyStackEntry, ptr %881, i64 0
  %minor1292 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1291, i32 0, i32 2
  store ptr %880, ptr %minor1292, align 8
  br label %sw.epilog

sw.bb1293:                                        ; preds = %if.end6
  %882 = load ptr, ptr %yymsp, align 8
  %arrayidx1294 = getelementptr inbounds %struct.yyStackEntry, ptr %882, i64 0
  %minor1295 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1294, i32 0, i32 2
  %z1296 = getelementptr inbounds nuw %struct.Token, ptr %minor1295, i32 0, i32 0
  %883 = load ptr, ptr %z1296, align 8
  %arrayidx1297 = getelementptr inbounds i8, ptr %883, i64 0
  %884 = load i8, ptr %arrayidx1297, align 1
  %conv1298 = sext i8 %884 to i32
  %cmp1299 = icmp eq i32 %conv1298, 35
  br i1 %cmp1299, label %land.lhs.true1301, label %if.then1311

land.lhs.true1301:                                ; preds = %sw.bb1293
  %885 = load ptr, ptr %yymsp, align 8
  %arrayidx1302 = getelementptr inbounds %struct.yyStackEntry, ptr %885, i64 0
  %minor1303 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1302, i32 0, i32 2
  %z1304 = getelementptr inbounds nuw %struct.Token, ptr %minor1303, i32 0, i32 0
  %886 = load ptr, ptr %z1304, align 8
  %arrayidx1305 = getelementptr inbounds i8, ptr %886, i64 1
  %887 = load i8, ptr %arrayidx1305, align 1
  %idxprom1306 = zext i8 %887 to i64
  %arrayidx1307 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom1306
  %888 = load i8, ptr %arrayidx1307, align 1
  %conv1308 = zext i8 %888 to i32
  %and1309 = and i32 %conv1308, 4
  %tobool1310 = icmp ne i32 %and1309, 0
  br i1 %tobool1310, label %if.else1323, label %if.then1311

if.then1311:                                      ; preds = %land.lhs.true1301, %sw.bb1293
  %889 = load ptr, ptr %yymsp, align 8
  %arrayidx1313 = getelementptr inbounds %struct.yyStackEntry, ptr %889, i64 0
  %minor1314 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1313, i32 0, i32 2
  %n1315 = getelementptr inbounds nuw %struct.Token, ptr %minor1314, i32 0, i32 1
  %890 = load i32, ptr %n1315, align 8
  store i32 %890, ptr %n1312, align 4
  %891 = load ptr, ptr %pParse.addr, align 8
  %892 = load ptr, ptr %yymsp, align 8
  %arrayidx1316 = getelementptr inbounds %struct.yyStackEntry, ptr %892, i64 0
  %minor1317 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1316, i32 0, i32 2
  %893 = getelementptr inbounds nuw { ptr, i32 }, ptr %minor1317, i32 0, i32 0
  %894 = load ptr, ptr %893, align 8
  %895 = getelementptr inbounds nuw { ptr, i32 }, ptr %minor1317, i32 0, i32 1
  %896 = load i32, ptr %895, align 8
  %call1318 = call ptr @tokenExpr(ptr noundef %891, i32 noundef 151, ptr %894, i32 %896)
  %897 = load ptr, ptr %yymsp, align 8
  %arrayidx1319 = getelementptr inbounds %struct.yyStackEntry, ptr %897, i64 0
  %minor1320 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1319, i32 0, i32 2
  store ptr %call1318, ptr %minor1320, align 8
  %898 = load ptr, ptr %pParse.addr, align 8
  %899 = load ptr, ptr %yymsp, align 8
  %arrayidx1321 = getelementptr inbounds %struct.yyStackEntry, ptr %899, i64 0
  %minor1322 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1321, i32 0, i32 2
  %900 = load ptr, ptr %minor1322, align 8
  %901 = load i32, ptr %n1312, align 4
  call void @sqlite3ExprAssignVarNumber(ptr noundef %898, ptr noundef %900, i32 noundef %901)
  br label %if.end1347

if.else1323:                                      ; preds = %land.lhs.true1301
  %902 = load ptr, ptr %yymsp, align 8
  %arrayidx1324 = getelementptr inbounds %struct.yyStackEntry, ptr %902, i64 0
  %minor1325 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1324, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t, ptr align 8 %minor1325, i64 16, i1 false)
  %903 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %903, i32 0, i32 6
  %904 = load i8, ptr %nested, align 2
  %conv1326 = zext i8 %904 to i32
  %cmp1327 = icmp eq i32 %conv1326, 0
  br i1 %cmp1327, label %if.then1329, label %if.else1332

if.then1329:                                      ; preds = %if.else1323
  %905 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %905, ptr noundef @.str.557, ptr noundef %t)
  %906 = load ptr, ptr %yymsp, align 8
  %arrayidx1330 = getelementptr inbounds %struct.yyStackEntry, ptr %906, i64 0
  %minor1331 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1330, i32 0, i32 2
  store ptr null, ptr %minor1331, align 8
  br label %if.end1346

if.else1332:                                      ; preds = %if.else1323
  %907 = load ptr, ptr %pParse.addr, align 8
  %call1333 = call ptr @sqlite3PExpr(ptr noundef %907, i32 noundef 171, ptr noundef null, ptr noundef null)
  %908 = load ptr, ptr %yymsp, align 8
  %arrayidx1334 = getelementptr inbounds %struct.yyStackEntry, ptr %908, i64 0
  %minor1335 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1334, i32 0, i32 2
  store ptr %call1333, ptr %minor1335, align 8
  %909 = load ptr, ptr %yymsp, align 8
  %arrayidx1336 = getelementptr inbounds %struct.yyStackEntry, ptr %909, i64 0
  %minor1337 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1336, i32 0, i32 2
  %910 = load ptr, ptr %minor1337, align 8
  %tobool1338 = icmp ne ptr %910, null
  br i1 %tobool1338, label %if.then1339, label %if.end1345

if.then1339:                                      ; preds = %if.else1332
  %z1340 = getelementptr inbounds nuw %struct.Token, ptr %t, i32 0, i32 0
  %911 = load ptr, ptr %z1340, align 8
  %arrayidx1341 = getelementptr inbounds i8, ptr %911, i64 1
  %912 = load ptr, ptr %yymsp, align 8
  %arrayidx1342 = getelementptr inbounds %struct.yyStackEntry, ptr %912, i64 0
  %minor1343 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1342, i32 0, i32 2
  %913 = load ptr, ptr %minor1343, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %913, i32 0, i32 8
  %call1344 = call i32 @sqlite3GetInt32(ptr noundef %arrayidx1341, ptr noundef %iTable)
  br label %if.end1345

if.end1345:                                       ; preds = %if.then1339, %if.else1332
  br label %if.end1346

if.end1346:                                       ; preds = %if.end1345, %if.then1329
  br label %if.end1347

if.end1347:                                       ; preds = %if.end1346, %if.then1311
  br label %sw.epilog

sw.bb1348:                                        ; preds = %if.end6
  %914 = load ptr, ptr %pParse.addr, align 8
  %915 = load ptr, ptr %yymsp, align 8
  %arrayidx1349 = getelementptr inbounds %struct.yyStackEntry, ptr %915, i64 -2
  %minor1350 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1349, i32 0, i32 2
  %916 = load ptr, ptr %minor1350, align 8
  %917 = load ptr, ptr %yymsp, align 8
  %arrayidx1351 = getelementptr inbounds %struct.yyStackEntry, ptr %917, i64 0
  %minor1352 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1351, i32 0, i32 2
  %call1353 = call ptr @sqlite3ExprAddCollateToken(ptr noundef %914, ptr noundef %916, ptr noundef %minor1352, i32 noundef 1)
  %918 = load ptr, ptr %yymsp, align 8
  %arrayidx1354 = getelementptr inbounds %struct.yyStackEntry, ptr %918, i64 -2
  %minor1355 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1354, i32 0, i32 2
  store ptr %call1353, ptr %minor1355, align 8
  br label %sw.epilog

sw.bb1356:                                        ; preds = %if.end6
  %919 = load ptr, ptr %pParse.addr, align 8
  %db1357 = getelementptr inbounds nuw %struct.Parse, ptr %919, i32 0, i32 0
  %920 = load ptr, ptr %db1357, align 8
  %921 = load ptr, ptr %yymsp, align 8
  %arrayidx1358 = getelementptr inbounds %struct.yyStackEntry, ptr %921, i64 -1
  %minor1359 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1358, i32 0, i32 2
  %call1360 = call ptr @sqlite3ExprAlloc(ptr noundef %920, i32 noundef 36, ptr noundef %minor1359, i32 noundef 1)
  %922 = load ptr, ptr %yymsp, align 8
  %arrayidx1361 = getelementptr inbounds %struct.yyStackEntry, ptr %922, i64 -5
  %minor1362 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1361, i32 0, i32 2
  store ptr %call1360, ptr %minor1362, align 8
  %923 = load ptr, ptr %pParse.addr, align 8
  %db1363 = getelementptr inbounds nuw %struct.Parse, ptr %923, i32 0, i32 0
  %924 = load ptr, ptr %db1363, align 8
  %925 = load ptr, ptr %yymsp, align 8
  %arrayidx1364 = getelementptr inbounds %struct.yyStackEntry, ptr %925, i64 -5
  %minor1365 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1364, i32 0, i32 2
  %926 = load ptr, ptr %minor1365, align 8
  %927 = load ptr, ptr %yymsp, align 8
  %arrayidx1366 = getelementptr inbounds %struct.yyStackEntry, ptr %927, i64 -3
  %minor1367 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1366, i32 0, i32 2
  %928 = load ptr, ptr %minor1367, align 8
  call void @sqlite3ExprAttachSubtrees(ptr noundef %924, ptr noundef %926, ptr noundef %928, ptr noundef null)
  br label %sw.epilog

sw.bb1368:                                        ; preds = %if.end6
  %929 = load ptr, ptr %pParse.addr, align 8
  %930 = load ptr, ptr %yymsp, align 8
  %arrayidx1369 = getelementptr inbounds %struct.yyStackEntry, ptr %930, i64 -1
  %minor1370 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1369, i32 0, i32 2
  %931 = load ptr, ptr %minor1370, align 8
  %932 = load ptr, ptr %yymsp, align 8
  %arrayidx1371 = getelementptr inbounds %struct.yyStackEntry, ptr %932, i64 -4
  %minor1372 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1371, i32 0, i32 2
  %933 = load ptr, ptr %yymsp, align 8
  %arrayidx1373 = getelementptr inbounds %struct.yyStackEntry, ptr %933, i64 -2
  %minor1374 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1373, i32 0, i32 2
  %934 = load i32, ptr %minor1374, align 8
  %call1375 = call ptr @sqlite3ExprFunction(ptr noundef %929, ptr noundef %931, ptr noundef %minor1372, i32 noundef %934)
  store ptr %call1375, ptr %yylhsminor, align 8
  %935 = load ptr, ptr %yylhsminor, align 8
  %936 = load ptr, ptr %yymsp, align 8
  %arrayidx1376 = getelementptr inbounds %struct.yyStackEntry, ptr %936, i64 -4
  %minor1377 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1376, i32 0, i32 2
  store ptr %935, ptr %minor1377, align 8
  br label %sw.epilog

sw.bb1378:                                        ; preds = %if.end6
  %937 = load ptr, ptr %pParse.addr, align 8
  %938 = load ptr, ptr %yymsp, align 8
  %arrayidx1379 = getelementptr inbounds %struct.yyStackEntry, ptr %938, i64 -3
  %minor1380 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1379, i32 0, i32 2
  %call1381 = call ptr @sqlite3ExprFunction(ptr noundef %937, ptr noundef null, ptr noundef %minor1380, i32 noundef 0)
  store ptr %call1381, ptr %yylhsminor, align 8
  %939 = load ptr, ptr %yylhsminor, align 8
  %940 = load ptr, ptr %yymsp, align 8
  %arrayidx1382 = getelementptr inbounds %struct.yyStackEntry, ptr %940, i64 -3
  %minor1383 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1382, i32 0, i32 2
  store ptr %939, ptr %minor1383, align 8
  br label %sw.epilog

sw.bb1384:                                        ; preds = %if.end6
  %941 = load ptr, ptr %pParse.addr, align 8
  %942 = load ptr, ptr %yymsp, align 8
  %arrayidx1385 = getelementptr inbounds %struct.yyStackEntry, ptr %942, i64 -2
  %minor1386 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1385, i32 0, i32 2
  %943 = load ptr, ptr %minor1386, align 8
  %944 = load ptr, ptr %yymsp, align 8
  %arrayidx1387 = getelementptr inbounds %struct.yyStackEntry, ptr %944, i64 -5
  %minor1388 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1387, i32 0, i32 2
  %945 = load ptr, ptr %yymsp, align 8
  %arrayidx1389 = getelementptr inbounds %struct.yyStackEntry, ptr %945, i64 -3
  %minor1390 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1389, i32 0, i32 2
  %946 = load i32, ptr %minor1390, align 8
  %call1391 = call ptr @sqlite3ExprFunction(ptr noundef %941, ptr noundef %943, ptr noundef %minor1388, i32 noundef %946)
  store ptr %call1391, ptr %yylhsminor, align 8
  %947 = load ptr, ptr %pParse.addr, align 8
  %948 = load ptr, ptr %yylhsminor, align 8
  %949 = load ptr, ptr %yymsp, align 8
  %arrayidx1392 = getelementptr inbounds %struct.yyStackEntry, ptr %949, i64 0
  %minor1393 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1392, i32 0, i32 2
  %950 = load ptr, ptr %minor1393, align 8
  call void @sqlite3WindowAttach(ptr noundef %947, ptr noundef %948, ptr noundef %950)
  %951 = load ptr, ptr %yylhsminor, align 8
  %952 = load ptr, ptr %yymsp, align 8
  %arrayidx1394 = getelementptr inbounds %struct.yyStackEntry, ptr %952, i64 -5
  %minor1395 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1394, i32 0, i32 2
  store ptr %951, ptr %minor1395, align 8
  br label %sw.epilog

sw.bb1396:                                        ; preds = %if.end6
  %953 = load ptr, ptr %pParse.addr, align 8
  %954 = load ptr, ptr %yymsp, align 8
  %arrayidx1397 = getelementptr inbounds %struct.yyStackEntry, ptr %954, i64 -4
  %minor1398 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1397, i32 0, i32 2
  %call1399 = call ptr @sqlite3ExprFunction(ptr noundef %953, ptr noundef null, ptr noundef %minor1398, i32 noundef 0)
  store ptr %call1399, ptr %yylhsminor, align 8
  %955 = load ptr, ptr %pParse.addr, align 8
  %956 = load ptr, ptr %yylhsminor, align 8
  %957 = load ptr, ptr %yymsp, align 8
  %arrayidx1400 = getelementptr inbounds %struct.yyStackEntry, ptr %957, i64 0
  %minor1401 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1400, i32 0, i32 2
  %958 = load ptr, ptr %minor1401, align 8
  call void @sqlite3WindowAttach(ptr noundef %955, ptr noundef %956, ptr noundef %958)
  %959 = load ptr, ptr %yylhsminor, align 8
  %960 = load ptr, ptr %yymsp, align 8
  %arrayidx1402 = getelementptr inbounds %struct.yyStackEntry, ptr %960, i64 -4
  %minor1403 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1402, i32 0, i32 2
  store ptr %959, ptr %minor1403, align 8
  br label %sw.epilog

sw.bb1404:                                        ; preds = %if.end6
  %961 = load ptr, ptr %pParse.addr, align 8
  %962 = load ptr, ptr %yymsp, align 8
  %arrayidx1405 = getelementptr inbounds %struct.yyStackEntry, ptr %962, i64 0
  %minor1406 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1405, i32 0, i32 2
  %call1407 = call ptr @sqlite3ExprFunction(ptr noundef %961, ptr noundef null, ptr noundef %minor1406, i32 noundef 0)
  store ptr %call1407, ptr %yylhsminor, align 8
  %963 = load ptr, ptr %yylhsminor, align 8
  %964 = load ptr, ptr %yymsp, align 8
  %arrayidx1408 = getelementptr inbounds %struct.yyStackEntry, ptr %964, i64 0
  %minor1409 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1408, i32 0, i32 2
  store ptr %963, ptr %minor1409, align 8
  br label %sw.epilog

sw.bb1410:                                        ; preds = %if.end6
  %965 = load ptr, ptr %pParse.addr, align 8
  %966 = load ptr, ptr %yymsp, align 8
  %arrayidx1411 = getelementptr inbounds %struct.yyStackEntry, ptr %966, i64 -3
  %minor1412 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1411, i32 0, i32 2
  %967 = load ptr, ptr %minor1412, align 8
  %968 = load ptr, ptr %yymsp, align 8
  %arrayidx1413 = getelementptr inbounds %struct.yyStackEntry, ptr %968, i64 -1
  %minor1414 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1413, i32 0, i32 2
  %969 = load ptr, ptr %minor1414, align 8
  %call1415 = call ptr @sqlite3ExprListAppend(ptr noundef %965, ptr noundef %967, ptr noundef %969)
  store ptr %call1415, ptr %pList, align 8
  %970 = load ptr, ptr %pParse.addr, align 8
  %call1416 = call ptr @sqlite3PExpr(ptr noundef %970, i32 noundef 172, ptr noundef null, ptr noundef null)
  %971 = load ptr, ptr %yymsp, align 8
  %arrayidx1417 = getelementptr inbounds %struct.yyStackEntry, ptr %971, i64 -4
  %minor1418 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1417, i32 0, i32 2
  store ptr %call1416, ptr %minor1418, align 8
  %972 = load ptr, ptr %yymsp, align 8
  %arrayidx1419 = getelementptr inbounds %struct.yyStackEntry, ptr %972, i64 -4
  %minor1420 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1419, i32 0, i32 2
  %973 = load ptr, ptr %minor1420, align 8
  %tobool1421 = icmp ne ptr %973, null
  br i1 %tobool1421, label %if.then1422, label %if.else1426

if.then1422:                                      ; preds = %sw.bb1410
  %974 = load ptr, ptr %pList, align 8
  %975 = load ptr, ptr %yymsp, align 8
  %arrayidx1423 = getelementptr inbounds %struct.yyStackEntry, ptr %975, i64 -4
  %minor1424 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1423, i32 0, i32 2
  %976 = load ptr, ptr %minor1424, align 8
  %x1425 = getelementptr inbounds nuw %struct.Expr, ptr %976, i32 0, i32 6
  store ptr %974, ptr %x1425, align 8
  br label %if.end1428

if.else1426:                                      ; preds = %sw.bb1410
  %977 = load ptr, ptr %pParse.addr, align 8
  %db1427 = getelementptr inbounds nuw %struct.Parse, ptr %977, i32 0, i32 0
  %978 = load ptr, ptr %db1427, align 8
  %979 = load ptr, ptr %pList, align 8
  call void @sqlite3ExprListDelete(ptr noundef %978, ptr noundef %979)
  br label %if.end1428

if.end1428:                                       ; preds = %if.else1426, %if.then1422
  br label %sw.epilog

sw.bb1429:                                        ; preds = %if.end6
  %980 = load ptr, ptr %pParse.addr, align 8
  %981 = load ptr, ptr %yymsp, align 8
  %arrayidx1430 = getelementptr inbounds %struct.yyStackEntry, ptr %981, i64 -2
  %minor1431 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1430, i32 0, i32 2
  %982 = load ptr, ptr %minor1431, align 8
  %983 = load ptr, ptr %yymsp, align 8
  %arrayidx1432 = getelementptr inbounds %struct.yyStackEntry, ptr %983, i64 0
  %minor1433 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1432, i32 0, i32 2
  %984 = load ptr, ptr %minor1433, align 8
  %call1434 = call ptr @sqlite3ExprAnd(ptr noundef %980, ptr noundef %982, ptr noundef %984)
  %985 = load ptr, ptr %yymsp, align 8
  %arrayidx1435 = getelementptr inbounds %struct.yyStackEntry, ptr %985, i64 -2
  %minor1436 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1435, i32 0, i32 2
  store ptr %call1434, ptr %minor1436, align 8
  br label %sw.epilog

sw.bb1437:                                        ; preds = %if.end6, %if.end6
  br label %sw.bb1438

sw.bb1438:                                        ; preds = %sw.bb1437, %if.end6
  br label %sw.bb1439

sw.bb1439:                                        ; preds = %sw.bb1438, %if.end6
  br label %sw.bb1440

sw.bb1440:                                        ; preds = %sw.bb1439, %if.end6
  br label %sw.bb1441

sw.bb1441:                                        ; preds = %sw.bb1440, %if.end6
  br label %sw.bb1442

sw.bb1442:                                        ; preds = %sw.bb1441, %if.end6
  %986 = load ptr, ptr %pParse.addr, align 8
  %987 = load ptr, ptr %yymsp, align 8
  %arrayidx1443 = getelementptr inbounds %struct.yyStackEntry, ptr %987, i64 -1
  %major1444 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1443, i32 0, i32 1
  %988 = load i16, ptr %major1444, align 2
  %conv1445 = zext i16 %988 to i32
  %989 = load ptr, ptr %yymsp, align 8
  %arrayidx1446 = getelementptr inbounds %struct.yyStackEntry, ptr %989, i64 -2
  %minor1447 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1446, i32 0, i32 2
  %990 = load ptr, ptr %minor1447, align 8
  %991 = load ptr, ptr %yymsp, align 8
  %arrayidx1448 = getelementptr inbounds %struct.yyStackEntry, ptr %991, i64 0
  %minor1449 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1448, i32 0, i32 2
  %992 = load ptr, ptr %minor1449, align 8
  %call1450 = call ptr @sqlite3PExpr(ptr noundef %986, i32 noundef %conv1445, ptr noundef %990, ptr noundef %992)
  %993 = load ptr, ptr %yymsp, align 8
  %arrayidx1451 = getelementptr inbounds %struct.yyStackEntry, ptr %993, i64 -2
  %minor1452 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1451, i32 0, i32 2
  store ptr %call1450, ptr %minor1452, align 8
  br label %sw.epilog

sw.bb1453:                                        ; preds = %if.end6
  %994 = load ptr, ptr %yymsp, align 8
  %arrayidx1454 = getelementptr inbounds %struct.yyStackEntry, ptr %994, i64 -1
  %minor1455 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1454, i32 0, i32 2
  %995 = load ptr, ptr %yymsp, align 8
  %arrayidx1456 = getelementptr inbounds %struct.yyStackEntry, ptr %995, i64 0
  %minor1457 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1456, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor1455, ptr align 8 %minor1457, i64 16, i1 false)
  %996 = load ptr, ptr %yymsp, align 8
  %arrayidx1458 = getelementptr inbounds %struct.yyStackEntry, ptr %996, i64 -1
  %minor1459 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1458, i32 0, i32 2
  %n1460 = getelementptr inbounds nuw %struct.Token, ptr %minor1459, i32 0, i32 1
  %997 = load i32, ptr %n1460, align 8
  %or1461 = or i32 %997, -2147483648
  store i32 %or1461, ptr %n1460, align 8
  br label %sw.epilog

sw.bb1462:                                        ; preds = %if.end6
  %998 = load ptr, ptr %yymsp, align 8
  %arrayidx1464 = getelementptr inbounds %struct.yyStackEntry, ptr %998, i64 -1
  %minor1465 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1464, i32 0, i32 2
  %n1466 = getelementptr inbounds nuw %struct.Token, ptr %minor1465, i32 0, i32 1
  %999 = load i32, ptr %n1466, align 8
  %and1467 = and i32 %999, -2147483648
  store i32 %and1467, ptr %bNot, align 4
  %1000 = load ptr, ptr %yymsp, align 8
  %arrayidx1468 = getelementptr inbounds %struct.yyStackEntry, ptr %1000, i64 -1
  %minor1469 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1468, i32 0, i32 2
  %n1470 = getelementptr inbounds nuw %struct.Token, ptr %minor1469, i32 0, i32 1
  %1001 = load i32, ptr %n1470, align 8
  %and1471 = and i32 %1001, 2147483647
  store i32 %and1471, ptr %n1470, align 8
  %1002 = load ptr, ptr %pParse.addr, align 8
  %1003 = load ptr, ptr %yymsp, align 8
  %arrayidx1472 = getelementptr inbounds %struct.yyStackEntry, ptr %1003, i64 0
  %minor1473 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1472, i32 0, i32 2
  %1004 = load ptr, ptr %minor1473, align 8
  %call1474 = call ptr @sqlite3ExprListAppend(ptr noundef %1002, ptr noundef null, ptr noundef %1004)
  store ptr %call1474, ptr %pList1463, align 8
  %1005 = load ptr, ptr %pParse.addr, align 8
  %1006 = load ptr, ptr %pList1463, align 8
  %1007 = load ptr, ptr %yymsp, align 8
  %arrayidx1475 = getelementptr inbounds %struct.yyStackEntry, ptr %1007, i64 -2
  %minor1476 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1475, i32 0, i32 2
  %1008 = load ptr, ptr %minor1476, align 8
  %call1477 = call ptr @sqlite3ExprListAppend(ptr noundef %1005, ptr noundef %1006, ptr noundef %1008)
  store ptr %call1477, ptr %pList1463, align 8
  %1009 = load ptr, ptr %pParse.addr, align 8
  %1010 = load ptr, ptr %pList1463, align 8
  %1011 = load ptr, ptr %yymsp, align 8
  %arrayidx1478 = getelementptr inbounds %struct.yyStackEntry, ptr %1011, i64 -1
  %minor1479 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1478, i32 0, i32 2
  %call1480 = call ptr @sqlite3ExprFunction(ptr noundef %1009, ptr noundef %1010, ptr noundef %minor1479, i32 noundef 0)
  %1012 = load ptr, ptr %yymsp, align 8
  %arrayidx1481 = getelementptr inbounds %struct.yyStackEntry, ptr %1012, i64 -2
  %minor1482 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1481, i32 0, i32 2
  store ptr %call1480, ptr %minor1482, align 8
  %1013 = load i32, ptr %bNot, align 4
  %tobool1483 = icmp ne i32 %1013, 0
  br i1 %tobool1483, label %if.then1484, label %if.end1490

if.then1484:                                      ; preds = %sw.bb1462
  %1014 = load ptr, ptr %pParse.addr, align 8
  %1015 = load ptr, ptr %yymsp, align 8
  %arrayidx1485 = getelementptr inbounds %struct.yyStackEntry, ptr %1015, i64 -2
  %minor1486 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1485, i32 0, i32 2
  %1016 = load ptr, ptr %minor1486, align 8
  %call1487 = call ptr @sqlite3PExpr(ptr noundef %1014, i32 noundef 19, ptr noundef %1016, ptr noundef null)
  %1017 = load ptr, ptr %yymsp, align 8
  %arrayidx1488 = getelementptr inbounds %struct.yyStackEntry, ptr %1017, i64 -2
  %minor1489 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1488, i32 0, i32 2
  store ptr %call1487, ptr %minor1489, align 8
  br label %if.end1490

if.end1490:                                       ; preds = %if.then1484, %sw.bb1462
  %1018 = load ptr, ptr %yymsp, align 8
  %arrayidx1491 = getelementptr inbounds %struct.yyStackEntry, ptr %1018, i64 -2
  %minor1492 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1491, i32 0, i32 2
  %1019 = load ptr, ptr %minor1492, align 8
  %tobool1493 = icmp ne ptr %1019, null
  br i1 %tobool1493, label %if.then1494, label %if.end1498

if.then1494:                                      ; preds = %if.end1490
  %1020 = load ptr, ptr %yymsp, align 8
  %arrayidx1495 = getelementptr inbounds %struct.yyStackEntry, ptr %1020, i64 -2
  %minor1496 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1495, i32 0, i32 2
  %1021 = load ptr, ptr %minor1496, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %1021, i32 0, i32 2
  %1022 = load i32, ptr %flags, align 4
  %or1497 = or i32 %1022, 128
  store i32 %or1497, ptr %flags, align 4
  br label %if.end1498

if.end1498:                                       ; preds = %if.then1494, %if.end1490
  br label %sw.epilog

sw.bb1499:                                        ; preds = %if.end6
  %1023 = load ptr, ptr %yymsp, align 8
  %arrayidx1502 = getelementptr inbounds %struct.yyStackEntry, ptr %1023, i64 -3
  %minor1503 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1502, i32 0, i32 2
  %n1504 = getelementptr inbounds nuw %struct.Token, ptr %minor1503, i32 0, i32 1
  %1024 = load i32, ptr %n1504, align 8
  %and1505 = and i32 %1024, -2147483648
  store i32 %and1505, ptr %bNot1501, align 4
  %1025 = load ptr, ptr %yymsp, align 8
  %arrayidx1506 = getelementptr inbounds %struct.yyStackEntry, ptr %1025, i64 -3
  %minor1507 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1506, i32 0, i32 2
  %n1508 = getelementptr inbounds nuw %struct.Token, ptr %minor1507, i32 0, i32 1
  %1026 = load i32, ptr %n1508, align 8
  %and1509 = and i32 %1026, 2147483647
  store i32 %and1509, ptr %n1508, align 8
  %1027 = load ptr, ptr %pParse.addr, align 8
  %1028 = load ptr, ptr %yymsp, align 8
  %arrayidx1510 = getelementptr inbounds %struct.yyStackEntry, ptr %1028, i64 -2
  %minor1511 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1510, i32 0, i32 2
  %1029 = load ptr, ptr %minor1511, align 8
  %call1512 = call ptr @sqlite3ExprListAppend(ptr noundef %1027, ptr noundef null, ptr noundef %1029)
  store ptr %call1512, ptr %pList1500, align 8
  %1030 = load ptr, ptr %pParse.addr, align 8
  %1031 = load ptr, ptr %pList1500, align 8
  %1032 = load ptr, ptr %yymsp, align 8
  %arrayidx1513 = getelementptr inbounds %struct.yyStackEntry, ptr %1032, i64 -4
  %minor1514 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1513, i32 0, i32 2
  %1033 = load ptr, ptr %minor1514, align 8
  %call1515 = call ptr @sqlite3ExprListAppend(ptr noundef %1030, ptr noundef %1031, ptr noundef %1033)
  store ptr %call1515, ptr %pList1500, align 8
  %1034 = load ptr, ptr %pParse.addr, align 8
  %1035 = load ptr, ptr %pList1500, align 8
  %1036 = load ptr, ptr %yymsp, align 8
  %arrayidx1516 = getelementptr inbounds %struct.yyStackEntry, ptr %1036, i64 0
  %minor1517 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1516, i32 0, i32 2
  %1037 = load ptr, ptr %minor1517, align 8
  %call1518 = call ptr @sqlite3ExprListAppend(ptr noundef %1034, ptr noundef %1035, ptr noundef %1037)
  store ptr %call1518, ptr %pList1500, align 8
  %1038 = load ptr, ptr %pParse.addr, align 8
  %1039 = load ptr, ptr %pList1500, align 8
  %1040 = load ptr, ptr %yymsp, align 8
  %arrayidx1519 = getelementptr inbounds %struct.yyStackEntry, ptr %1040, i64 -3
  %minor1520 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1519, i32 0, i32 2
  %call1521 = call ptr @sqlite3ExprFunction(ptr noundef %1038, ptr noundef %1039, ptr noundef %minor1520, i32 noundef 0)
  %1041 = load ptr, ptr %yymsp, align 8
  %arrayidx1522 = getelementptr inbounds %struct.yyStackEntry, ptr %1041, i64 -4
  %minor1523 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1522, i32 0, i32 2
  store ptr %call1521, ptr %minor1523, align 8
  %1042 = load i32, ptr %bNot1501, align 4
  %tobool1524 = icmp ne i32 %1042, 0
  br i1 %tobool1524, label %if.then1525, label %if.end1531

if.then1525:                                      ; preds = %sw.bb1499
  %1043 = load ptr, ptr %pParse.addr, align 8
  %1044 = load ptr, ptr %yymsp, align 8
  %arrayidx1526 = getelementptr inbounds %struct.yyStackEntry, ptr %1044, i64 -4
  %minor1527 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1526, i32 0, i32 2
  %1045 = load ptr, ptr %minor1527, align 8
  %call1528 = call ptr @sqlite3PExpr(ptr noundef %1043, i32 noundef 19, ptr noundef %1045, ptr noundef null)
  %1046 = load ptr, ptr %yymsp, align 8
  %arrayidx1529 = getelementptr inbounds %struct.yyStackEntry, ptr %1046, i64 -4
  %minor1530 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1529, i32 0, i32 2
  store ptr %call1528, ptr %minor1530, align 8
  br label %if.end1531

if.end1531:                                       ; preds = %if.then1525, %sw.bb1499
  %1047 = load ptr, ptr %yymsp, align 8
  %arrayidx1532 = getelementptr inbounds %struct.yyStackEntry, ptr %1047, i64 -4
  %minor1533 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1532, i32 0, i32 2
  %1048 = load ptr, ptr %minor1533, align 8
  %tobool1534 = icmp ne ptr %1048, null
  br i1 %tobool1534, label %if.then1535, label %if.end1540

if.then1535:                                      ; preds = %if.end1531
  %1049 = load ptr, ptr %yymsp, align 8
  %arrayidx1536 = getelementptr inbounds %struct.yyStackEntry, ptr %1049, i64 -4
  %minor1537 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1536, i32 0, i32 2
  %1050 = load ptr, ptr %minor1537, align 8
  %flags1538 = getelementptr inbounds nuw %struct.Expr, ptr %1050, i32 0, i32 2
  %1051 = load i32, ptr %flags1538, align 4
  %or1539 = or i32 %1051, 128
  store i32 %or1539, ptr %flags1538, align 4
  br label %if.end1540

if.end1540:                                       ; preds = %if.then1535, %if.end1531
  br label %sw.epilog

sw.bb1541:                                        ; preds = %if.end6
  %1052 = load ptr, ptr %pParse.addr, align 8
  %1053 = load ptr, ptr %yymsp, align 8
  %arrayidx1542 = getelementptr inbounds %struct.yyStackEntry, ptr %1053, i64 0
  %major1543 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1542, i32 0, i32 1
  %1054 = load i16, ptr %major1543, align 2
  %conv1544 = zext i16 %1054 to i32
  %1055 = load ptr, ptr %yymsp, align 8
  %arrayidx1545 = getelementptr inbounds %struct.yyStackEntry, ptr %1055, i64 -1
  %minor1546 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1545, i32 0, i32 2
  %1056 = load ptr, ptr %minor1546, align 8
  %call1547 = call ptr @sqlite3PExpr(ptr noundef %1052, i32 noundef %conv1544, ptr noundef %1056, ptr noundef null)
  %1057 = load ptr, ptr %yymsp, align 8
  %arrayidx1548 = getelementptr inbounds %struct.yyStackEntry, ptr %1057, i64 -1
  %minor1549 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1548, i32 0, i32 2
  store ptr %call1547, ptr %minor1549, align 8
  br label %sw.epilog

sw.bb1550:                                        ; preds = %if.end6
  %1058 = load ptr, ptr %pParse.addr, align 8
  %1059 = load ptr, ptr %yymsp, align 8
  %arrayidx1551 = getelementptr inbounds %struct.yyStackEntry, ptr %1059, i64 -2
  %minor1552 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1551, i32 0, i32 2
  %1060 = load ptr, ptr %minor1552, align 8
  %call1553 = call ptr @sqlite3PExpr(ptr noundef %1058, i32 noundef 51, ptr noundef %1060, ptr noundef null)
  %1061 = load ptr, ptr %yymsp, align 8
  %arrayidx1554 = getelementptr inbounds %struct.yyStackEntry, ptr %1061, i64 -2
  %minor1555 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1554, i32 0, i32 2
  store ptr %call1553, ptr %minor1555, align 8
  br label %sw.epilog

sw.bb1556:                                        ; preds = %if.end6
  %1062 = load ptr, ptr %pParse.addr, align 8
  %1063 = load ptr, ptr %yymsp, align 8
  %arrayidx1557 = getelementptr inbounds %struct.yyStackEntry, ptr %1063, i64 -2
  %minor1558 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1557, i32 0, i32 2
  %1064 = load ptr, ptr %minor1558, align 8
  %1065 = load ptr, ptr %yymsp, align 8
  %arrayidx1559 = getelementptr inbounds %struct.yyStackEntry, ptr %1065, i64 0
  %minor1560 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1559, i32 0, i32 2
  %1066 = load ptr, ptr %minor1560, align 8
  %call1561 = call ptr @sqlite3PExpr(ptr noundef %1062, i32 noundef 45, ptr noundef %1064, ptr noundef %1066)
  %1067 = load ptr, ptr %yymsp, align 8
  %arrayidx1562 = getelementptr inbounds %struct.yyStackEntry, ptr %1067, i64 -2
  %minor1563 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1562, i32 0, i32 2
  store ptr %call1561, ptr %minor1563, align 8
  %1068 = load ptr, ptr %pParse.addr, align 8
  %1069 = load ptr, ptr %yymsp, align 8
  %arrayidx1564 = getelementptr inbounds %struct.yyStackEntry, ptr %1069, i64 0
  %minor1565 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1564, i32 0, i32 2
  %1070 = load ptr, ptr %minor1565, align 8
  %1071 = load ptr, ptr %yymsp, align 8
  %arrayidx1566 = getelementptr inbounds %struct.yyStackEntry, ptr %1071, i64 -2
  %minor1567 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1566, i32 0, i32 2
  %1072 = load ptr, ptr %minor1567, align 8
  call void @binaryToUnaryIfNull(ptr noundef %1068, ptr noundef %1070, ptr noundef %1072, i32 noundef 50)
  br label %sw.epilog

sw.bb1568:                                        ; preds = %if.end6
  %1073 = load ptr, ptr %pParse.addr, align 8
  %1074 = load ptr, ptr %yymsp, align 8
  %arrayidx1569 = getelementptr inbounds %struct.yyStackEntry, ptr %1074, i64 -3
  %minor1570 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1569, i32 0, i32 2
  %1075 = load ptr, ptr %minor1570, align 8
  %1076 = load ptr, ptr %yymsp, align 8
  %arrayidx1571 = getelementptr inbounds %struct.yyStackEntry, ptr %1076, i64 0
  %minor1572 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1571, i32 0, i32 2
  %1077 = load ptr, ptr %minor1572, align 8
  %call1573 = call ptr @sqlite3PExpr(ptr noundef %1073, i32 noundef 166, ptr noundef %1075, ptr noundef %1077)
  %1078 = load ptr, ptr %yymsp, align 8
  %arrayidx1574 = getelementptr inbounds %struct.yyStackEntry, ptr %1078, i64 -3
  %minor1575 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1574, i32 0, i32 2
  store ptr %call1573, ptr %minor1575, align 8
  %1079 = load ptr, ptr %pParse.addr, align 8
  %1080 = load ptr, ptr %yymsp, align 8
  %arrayidx1576 = getelementptr inbounds %struct.yyStackEntry, ptr %1080, i64 0
  %minor1577 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1576, i32 0, i32 2
  %1081 = load ptr, ptr %minor1577, align 8
  %1082 = load ptr, ptr %yymsp, align 8
  %arrayidx1578 = getelementptr inbounds %struct.yyStackEntry, ptr %1082, i64 -3
  %minor1579 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1578, i32 0, i32 2
  %1083 = load ptr, ptr %minor1579, align 8
  call void @binaryToUnaryIfNull(ptr noundef %1079, ptr noundef %1081, ptr noundef %1083, i32 noundef 51)
  br label %sw.epilog

sw.bb1580:                                        ; preds = %if.end6, %if.end6
  %1084 = load ptr, ptr %pParse.addr, align 8
  %1085 = load ptr, ptr %yymsp, align 8
  %arrayidx1581 = getelementptr inbounds %struct.yyStackEntry, ptr %1085, i64 -1
  %major1582 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1581, i32 0, i32 1
  %1086 = load i16, ptr %major1582, align 2
  %conv1583 = zext i16 %1086 to i32
  %1087 = load ptr, ptr %yymsp, align 8
  %arrayidx1584 = getelementptr inbounds %struct.yyStackEntry, ptr %1087, i64 0
  %minor1585 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1584, i32 0, i32 2
  %1088 = load ptr, ptr %minor1585, align 8
  %call1586 = call ptr @sqlite3PExpr(ptr noundef %1084, i32 noundef %conv1583, ptr noundef %1088, ptr noundef null)
  %1089 = load ptr, ptr %yymsp, align 8
  %arrayidx1587 = getelementptr inbounds %struct.yyStackEntry, ptr %1089, i64 -1
  %minor1588 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1587, i32 0, i32 2
  store ptr %call1586, ptr %minor1588, align 8
  br label %sw.epilog

sw.bb1589:                                        ; preds = %if.end6
  %1090 = load ptr, ptr %pParse.addr, align 8
  %1091 = load ptr, ptr %yymsp, align 8
  %arrayidx1590 = getelementptr inbounds %struct.yyStackEntry, ptr %1091, i64 -1
  %major1591 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1590, i32 0, i32 1
  %1092 = load i16, ptr %major1591, align 2
  %conv1592 = zext i16 %1092 to i32
  %cmp1593 = icmp eq i32 %conv1592, 103
  %1093 = zext i1 %cmp1593 to i64
  %cond = select i1 %cmp1593, i32 169, i32 168
  %1094 = load ptr, ptr %yymsp, align 8
  %arrayidx1595 = getelementptr inbounds %struct.yyStackEntry, ptr %1094, i64 0
  %minor1596 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1595, i32 0, i32 2
  %1095 = load ptr, ptr %minor1596, align 8
  %call1597 = call ptr @sqlite3PExpr(ptr noundef %1090, i32 noundef %cond, ptr noundef %1095, ptr noundef null)
  %1096 = load ptr, ptr %yymsp, align 8
  %arrayidx1598 = getelementptr inbounds %struct.yyStackEntry, ptr %1096, i64 -1
  %minor1599 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1598, i32 0, i32 2
  store ptr %call1597, ptr %minor1599, align 8
  br label %sw.epilog

sw.bb1600:                                        ; preds = %if.end6, %if.end6
  %1097 = load ptr, ptr %yymsp, align 8
  %arrayidx1601 = getelementptr inbounds %struct.yyStackEntry, ptr %1097, i64 0
  %minor1602 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1601, i32 0, i32 2
  store i32 0, ptr %minor1602, align 8
  br label %sw.epilog

sw.bb1603:                                        ; preds = %if.end6
  %1098 = load ptr, ptr %pParse.addr, align 8
  %1099 = load ptr, ptr %yymsp, align 8
  %arrayidx1605 = getelementptr inbounds %struct.yyStackEntry, ptr %1099, i64 -2
  %minor1606 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1605, i32 0, i32 2
  %1100 = load ptr, ptr %minor1606, align 8
  %call1607 = call ptr @sqlite3ExprListAppend(ptr noundef %1098, ptr noundef null, ptr noundef %1100)
  store ptr %call1607, ptr %pList1604, align 8
  %1101 = load ptr, ptr %pParse.addr, align 8
  %1102 = load ptr, ptr %pList1604, align 8
  %1103 = load ptr, ptr %yymsp, align 8
  %arrayidx1608 = getelementptr inbounds %struct.yyStackEntry, ptr %1103, i64 0
  %minor1609 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1608, i32 0, i32 2
  %1104 = load ptr, ptr %minor1609, align 8
  %call1610 = call ptr @sqlite3ExprListAppend(ptr noundef %1101, ptr noundef %1102, ptr noundef %1104)
  store ptr %call1610, ptr %pList1604, align 8
  %1105 = load ptr, ptr %pParse.addr, align 8
  %1106 = load ptr, ptr %yymsp, align 8
  %arrayidx1611 = getelementptr inbounds %struct.yyStackEntry, ptr %1106, i64 -4
  %minor1612 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1611, i32 0, i32 2
  %1107 = load ptr, ptr %minor1612, align 8
  %call1613 = call ptr @sqlite3PExpr(ptr noundef %1105, i32 noundef 48, ptr noundef %1107, ptr noundef null)
  %1108 = load ptr, ptr %yymsp, align 8
  %arrayidx1614 = getelementptr inbounds %struct.yyStackEntry, ptr %1108, i64 -4
  %minor1615 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1614, i32 0, i32 2
  store ptr %call1613, ptr %minor1615, align 8
  %1109 = load ptr, ptr %yymsp, align 8
  %arrayidx1616 = getelementptr inbounds %struct.yyStackEntry, ptr %1109, i64 -4
  %minor1617 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1616, i32 0, i32 2
  %1110 = load ptr, ptr %minor1617, align 8
  %tobool1618 = icmp ne ptr %1110, null
  br i1 %tobool1618, label %if.then1619, label %if.else1623

if.then1619:                                      ; preds = %sw.bb1603
  %1111 = load ptr, ptr %pList1604, align 8
  %1112 = load ptr, ptr %yymsp, align 8
  %arrayidx1620 = getelementptr inbounds %struct.yyStackEntry, ptr %1112, i64 -4
  %minor1621 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1620, i32 0, i32 2
  %1113 = load ptr, ptr %minor1621, align 8
  %x1622 = getelementptr inbounds nuw %struct.Expr, ptr %1113, i32 0, i32 6
  store ptr %1111, ptr %x1622, align 8
  br label %if.end1625

if.else1623:                                      ; preds = %sw.bb1603
  %1114 = load ptr, ptr %pParse.addr, align 8
  %db1624 = getelementptr inbounds nuw %struct.Parse, ptr %1114, i32 0, i32 0
  %1115 = load ptr, ptr %db1624, align 8
  %1116 = load ptr, ptr %pList1604, align 8
  call void @sqlite3ExprListDelete(ptr noundef %1115, ptr noundef %1116)
  br label %if.end1625

if.end1625:                                       ; preds = %if.else1623, %if.then1619
  %1117 = load ptr, ptr %yymsp, align 8
  %arrayidx1626 = getelementptr inbounds %struct.yyStackEntry, ptr %1117, i64 -3
  %minor1627 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1626, i32 0, i32 2
  %1118 = load i32, ptr %minor1627, align 8
  %tobool1628 = icmp ne i32 %1118, 0
  br i1 %tobool1628, label %if.then1629, label %if.end1635

if.then1629:                                      ; preds = %if.end1625
  %1119 = load ptr, ptr %pParse.addr, align 8
  %1120 = load ptr, ptr %yymsp, align 8
  %arrayidx1630 = getelementptr inbounds %struct.yyStackEntry, ptr %1120, i64 -4
  %minor1631 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1630, i32 0, i32 2
  %1121 = load ptr, ptr %minor1631, align 8
  %call1632 = call ptr @sqlite3PExpr(ptr noundef %1119, i32 noundef 19, ptr noundef %1121, ptr noundef null)
  %1122 = load ptr, ptr %yymsp, align 8
  %arrayidx1633 = getelementptr inbounds %struct.yyStackEntry, ptr %1122, i64 -4
  %minor1634 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1633, i32 0, i32 2
  store ptr %call1632, ptr %minor1634, align 8
  br label %if.end1635

if.end1635:                                       ; preds = %if.then1629, %if.end1625
  br label %sw.epilog

sw.bb1636:                                        ; preds = %if.end6
  %1123 = load ptr, ptr %yymsp, align 8
  %arrayidx1637 = getelementptr inbounds %struct.yyStackEntry, ptr %1123, i64 -1
  %minor1638 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1637, i32 0, i32 2
  %1124 = load ptr, ptr %minor1638, align 8
  %cmp1639 = icmp eq ptr %1124, null
  br i1 %cmp1639, label %if.then1641, label %if.else1652

if.then1641:                                      ; preds = %sw.bb1636
  %1125 = load ptr, ptr %pParse.addr, align 8
  %1126 = load ptr, ptr %yymsp, align 8
  %arrayidx1642 = getelementptr inbounds %struct.yyStackEntry, ptr %1126, i64 -4
  %minor1643 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1642, i32 0, i32 2
  %1127 = load ptr, ptr %minor1643, align 8
  call void @sqlite3ExprUnmapAndDelete(ptr noundef %1125, ptr noundef %1127)
  %1128 = load ptr, ptr %pParse.addr, align 8
  %db1644 = getelementptr inbounds nuw %struct.Parse, ptr %1128, i32 0, i32 0
  %1129 = load ptr, ptr %db1644, align 8
  %1130 = load ptr, ptr %yymsp, align 8
  %arrayidx1645 = getelementptr inbounds %struct.yyStackEntry, ptr %1130, i64 -3
  %minor1646 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1645, i32 0, i32 2
  %1131 = load i32, ptr %minor1646, align 8
  %tobool1647 = icmp ne i32 %1131, 0
  %1132 = zext i1 %tobool1647 to i64
  %cond1648 = select i1 %tobool1647, ptr @.str.332, ptr @.str.558
  %call1649 = call ptr @sqlite3Expr(ptr noundef %1129, i32 noundef 150, ptr noundef %cond1648)
  %1133 = load ptr, ptr %yymsp, align 8
  %arrayidx1650 = getelementptr inbounds %struct.yyStackEntry, ptr %1133, i64 -4
  %minor1651 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1650, i32 0, i32 2
  store ptr %call1649, ptr %minor1651, align 8
  br label %if.end1684

if.else1652:                                      ; preds = %sw.bb1636
  %1134 = load ptr, ptr %pParse.addr, align 8
  %1135 = load ptr, ptr %yymsp, align 8
  %arrayidx1653 = getelementptr inbounds %struct.yyStackEntry, ptr %1135, i64 -4
  %minor1654 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1653, i32 0, i32 2
  %1136 = load ptr, ptr %minor1654, align 8
  %call1655 = call ptr @sqlite3PExpr(ptr noundef %1134, i32 noundef 49, ptr noundef %1136, ptr noundef null)
  %1137 = load ptr, ptr %yymsp, align 8
  %arrayidx1656 = getelementptr inbounds %struct.yyStackEntry, ptr %1137, i64 -4
  %minor1657 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1656, i32 0, i32 2
  store ptr %call1655, ptr %minor1657, align 8
  %1138 = load ptr, ptr %yymsp, align 8
  %arrayidx1658 = getelementptr inbounds %struct.yyStackEntry, ptr %1138, i64 -4
  %minor1659 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1658, i32 0, i32 2
  %1139 = load ptr, ptr %minor1659, align 8
  %tobool1660 = icmp ne ptr %1139, null
  br i1 %tobool1660, label %if.then1661, label %if.else1669

if.then1661:                                      ; preds = %if.else1652
  %1140 = load ptr, ptr %yymsp, align 8
  %arrayidx1662 = getelementptr inbounds %struct.yyStackEntry, ptr %1140, i64 -1
  %minor1663 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1662, i32 0, i32 2
  %1141 = load ptr, ptr %minor1663, align 8
  %1142 = load ptr, ptr %yymsp, align 8
  %arrayidx1664 = getelementptr inbounds %struct.yyStackEntry, ptr %1142, i64 -4
  %minor1665 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1664, i32 0, i32 2
  %1143 = load ptr, ptr %minor1665, align 8
  %x1666 = getelementptr inbounds nuw %struct.Expr, ptr %1143, i32 0, i32 6
  store ptr %1141, ptr %x1666, align 8
  %1144 = load ptr, ptr %pParse.addr, align 8
  %1145 = load ptr, ptr %yymsp, align 8
  %arrayidx1667 = getelementptr inbounds %struct.yyStackEntry, ptr %1145, i64 -4
  %minor1668 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1667, i32 0, i32 2
  %1146 = load ptr, ptr %minor1668, align 8
  call void @sqlite3ExprSetHeightAndFlags(ptr noundef %1144, ptr noundef %1146)
  br label %if.end1673

if.else1669:                                      ; preds = %if.else1652
  %1147 = load ptr, ptr %pParse.addr, align 8
  %db1670 = getelementptr inbounds nuw %struct.Parse, ptr %1147, i32 0, i32 0
  %1148 = load ptr, ptr %db1670, align 8
  %1149 = load ptr, ptr %yymsp, align 8
  %arrayidx1671 = getelementptr inbounds %struct.yyStackEntry, ptr %1149, i64 -1
  %minor1672 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1671, i32 0, i32 2
  %1150 = load ptr, ptr %minor1672, align 8
  call void @sqlite3ExprListDelete(ptr noundef %1148, ptr noundef %1150)
  br label %if.end1673

if.end1673:                                       ; preds = %if.else1669, %if.then1661
  %1151 = load ptr, ptr %yymsp, align 8
  %arrayidx1674 = getelementptr inbounds %struct.yyStackEntry, ptr %1151, i64 -3
  %minor1675 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1674, i32 0, i32 2
  %1152 = load i32, ptr %minor1675, align 8
  %tobool1676 = icmp ne i32 %1152, 0
  br i1 %tobool1676, label %if.then1677, label %if.end1683

if.then1677:                                      ; preds = %if.end1673
  %1153 = load ptr, ptr %pParse.addr, align 8
  %1154 = load ptr, ptr %yymsp, align 8
  %arrayidx1678 = getelementptr inbounds %struct.yyStackEntry, ptr %1154, i64 -4
  %minor1679 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1678, i32 0, i32 2
  %1155 = load ptr, ptr %minor1679, align 8
  %call1680 = call ptr @sqlite3PExpr(ptr noundef %1153, i32 noundef 19, ptr noundef %1155, ptr noundef null)
  %1156 = load ptr, ptr %yymsp, align 8
  %arrayidx1681 = getelementptr inbounds %struct.yyStackEntry, ptr %1156, i64 -4
  %minor1682 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1681, i32 0, i32 2
  store ptr %call1680, ptr %minor1682, align 8
  br label %if.end1683

if.end1683:                                       ; preds = %if.then1677, %if.end1673
  br label %if.end1684

if.end1684:                                       ; preds = %if.end1683, %if.then1641
  br label %sw.epilog

sw.bb1685:                                        ; preds = %if.end6
  %1157 = load ptr, ptr %pParse.addr, align 8
  %call1686 = call ptr @sqlite3PExpr(ptr noundef %1157, i32 noundef 134, ptr noundef null, ptr noundef null)
  %1158 = load ptr, ptr %yymsp, align 8
  %arrayidx1687 = getelementptr inbounds %struct.yyStackEntry, ptr %1158, i64 -2
  %minor1688 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1687, i32 0, i32 2
  store ptr %call1686, ptr %minor1688, align 8
  %1159 = load ptr, ptr %pParse.addr, align 8
  %1160 = load ptr, ptr %yymsp, align 8
  %arrayidx1689 = getelementptr inbounds %struct.yyStackEntry, ptr %1160, i64 -2
  %minor1690 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1689, i32 0, i32 2
  %1161 = load ptr, ptr %minor1690, align 8
  %1162 = load ptr, ptr %yymsp, align 8
  %arrayidx1691 = getelementptr inbounds %struct.yyStackEntry, ptr %1162, i64 -1
  %minor1692 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1691, i32 0, i32 2
  %1163 = load ptr, ptr %minor1692, align 8
  call void @sqlite3PExprAddSelect(ptr noundef %1159, ptr noundef %1161, ptr noundef %1163)
  br label %sw.epilog

sw.bb1693:                                        ; preds = %if.end6
  %1164 = load ptr, ptr %pParse.addr, align 8
  %1165 = load ptr, ptr %yymsp, align 8
  %arrayidx1694 = getelementptr inbounds %struct.yyStackEntry, ptr %1165, i64 -4
  %minor1695 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1694, i32 0, i32 2
  %1166 = load ptr, ptr %minor1695, align 8
  %call1696 = call ptr @sqlite3PExpr(ptr noundef %1164, i32 noundef 49, ptr noundef %1166, ptr noundef null)
  %1167 = load ptr, ptr %yymsp, align 8
  %arrayidx1697 = getelementptr inbounds %struct.yyStackEntry, ptr %1167, i64 -4
  %minor1698 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1697, i32 0, i32 2
  store ptr %call1696, ptr %minor1698, align 8
  %1168 = load ptr, ptr %pParse.addr, align 8
  %1169 = load ptr, ptr %yymsp, align 8
  %arrayidx1699 = getelementptr inbounds %struct.yyStackEntry, ptr %1169, i64 -4
  %minor1700 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1699, i32 0, i32 2
  %1170 = load ptr, ptr %minor1700, align 8
  %1171 = load ptr, ptr %yymsp, align 8
  %arrayidx1701 = getelementptr inbounds %struct.yyStackEntry, ptr %1171, i64 -1
  %minor1702 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1701, i32 0, i32 2
  %1172 = load ptr, ptr %minor1702, align 8
  call void @sqlite3PExprAddSelect(ptr noundef %1168, ptr noundef %1170, ptr noundef %1172)
  %1173 = load ptr, ptr %yymsp, align 8
  %arrayidx1703 = getelementptr inbounds %struct.yyStackEntry, ptr %1173, i64 -3
  %minor1704 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1703, i32 0, i32 2
  %1174 = load i32, ptr %minor1704, align 8
  %tobool1705 = icmp ne i32 %1174, 0
  br i1 %tobool1705, label %if.then1706, label %if.end1712

if.then1706:                                      ; preds = %sw.bb1693
  %1175 = load ptr, ptr %pParse.addr, align 8
  %1176 = load ptr, ptr %yymsp, align 8
  %arrayidx1707 = getelementptr inbounds %struct.yyStackEntry, ptr %1176, i64 -4
  %minor1708 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1707, i32 0, i32 2
  %1177 = load ptr, ptr %minor1708, align 8
  %call1709 = call ptr @sqlite3PExpr(ptr noundef %1175, i32 noundef 19, ptr noundef %1177, ptr noundef null)
  %1178 = load ptr, ptr %yymsp, align 8
  %arrayidx1710 = getelementptr inbounds %struct.yyStackEntry, ptr %1178, i64 -4
  %minor1711 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1710, i32 0, i32 2
  store ptr %call1709, ptr %minor1711, align 8
  br label %if.end1712

if.end1712:                                       ; preds = %if.then1706, %sw.bb1693
  br label %sw.epilog

sw.bb1713:                                        ; preds = %if.end6
  %1179 = load ptr, ptr %pParse.addr, align 8
  %1180 = load ptr, ptr %yymsp, align 8
  %arrayidx1714 = getelementptr inbounds %struct.yyStackEntry, ptr %1180, i64 -2
  %minor1715 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1714, i32 0, i32 2
  %1181 = load ptr, ptr %yymsp, align 8
  %arrayidx1716 = getelementptr inbounds %struct.yyStackEntry, ptr %1181, i64 -1
  %minor1717 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1716, i32 0, i32 2
  %call1718 = call ptr @sqlite3SrcListAppend(ptr noundef %1179, ptr noundef null, ptr noundef %minor1715, ptr noundef %minor1717)
  store ptr %call1718, ptr %pSrc, align 8
  %1182 = load ptr, ptr %pParse.addr, align 8
  %1183 = load ptr, ptr %pSrc, align 8
  %call1720 = call ptr @sqlite3SelectNew(ptr noundef %1182, ptr noundef null, ptr noundef %1183, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null)
  store ptr %call1720, ptr %pSelect1719, align 8
  %1184 = load ptr, ptr %yymsp, align 8
  %arrayidx1721 = getelementptr inbounds %struct.yyStackEntry, ptr %1184, i64 0
  %minor1722 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1721, i32 0, i32 2
  %1185 = load ptr, ptr %minor1722, align 8
  %tobool1723 = icmp ne ptr %1185, null
  br i1 %tobool1723, label %if.then1724, label %if.end1729

if.then1724:                                      ; preds = %sw.bb1713
  %1186 = load ptr, ptr %pParse.addr, align 8
  %1187 = load ptr, ptr %pSelect1719, align 8
  %tobool1725 = icmp ne ptr %1187, null
  br i1 %tobool1725, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then1724
  %1188 = load ptr, ptr %pSrc, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then1724
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1726 = phi ptr [ %1188, %cond.true ], [ null, %cond.false ]
  %1189 = load ptr, ptr %yymsp, align 8
  %arrayidx1727 = getelementptr inbounds %struct.yyStackEntry, ptr %1189, i64 0
  %minor1728 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1727, i32 0, i32 2
  %1190 = load ptr, ptr %minor1728, align 8
  call void @sqlite3SrcListFuncArgs(ptr noundef %1186, ptr noundef %cond1726, ptr noundef %1190)
  br label %if.end1729

if.end1729:                                       ; preds = %cond.end, %sw.bb1713
  %1191 = load ptr, ptr %pParse.addr, align 8
  %1192 = load ptr, ptr %yymsp, align 8
  %arrayidx1730 = getelementptr inbounds %struct.yyStackEntry, ptr %1192, i64 -4
  %minor1731 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1730, i32 0, i32 2
  %1193 = load ptr, ptr %minor1731, align 8
  %call1732 = call ptr @sqlite3PExpr(ptr noundef %1191, i32 noundef 49, ptr noundef %1193, ptr noundef null)
  %1194 = load ptr, ptr %yymsp, align 8
  %arrayidx1733 = getelementptr inbounds %struct.yyStackEntry, ptr %1194, i64 -4
  %minor1734 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1733, i32 0, i32 2
  store ptr %call1732, ptr %minor1734, align 8
  %1195 = load ptr, ptr %pParse.addr, align 8
  %1196 = load ptr, ptr %yymsp, align 8
  %arrayidx1735 = getelementptr inbounds %struct.yyStackEntry, ptr %1196, i64 -4
  %minor1736 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1735, i32 0, i32 2
  %1197 = load ptr, ptr %minor1736, align 8
  %1198 = load ptr, ptr %pSelect1719, align 8
  call void @sqlite3PExprAddSelect(ptr noundef %1195, ptr noundef %1197, ptr noundef %1198)
  %1199 = load ptr, ptr %yymsp, align 8
  %arrayidx1737 = getelementptr inbounds %struct.yyStackEntry, ptr %1199, i64 -3
  %minor1738 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1737, i32 0, i32 2
  %1200 = load i32, ptr %minor1738, align 8
  %tobool1739 = icmp ne i32 %1200, 0
  br i1 %tobool1739, label %if.then1740, label %if.end1746

if.then1740:                                      ; preds = %if.end1729
  %1201 = load ptr, ptr %pParse.addr, align 8
  %1202 = load ptr, ptr %yymsp, align 8
  %arrayidx1741 = getelementptr inbounds %struct.yyStackEntry, ptr %1202, i64 -4
  %minor1742 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1741, i32 0, i32 2
  %1203 = load ptr, ptr %minor1742, align 8
  %call1743 = call ptr @sqlite3PExpr(ptr noundef %1201, i32 noundef 19, ptr noundef %1203, ptr noundef null)
  %1204 = load ptr, ptr %yymsp, align 8
  %arrayidx1744 = getelementptr inbounds %struct.yyStackEntry, ptr %1204, i64 -4
  %minor1745 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1744, i32 0, i32 2
  store ptr %call1743, ptr %minor1745, align 8
  br label %if.end1746

if.end1746:                                       ; preds = %if.then1740, %if.end1729
  br label %sw.epilog

sw.bb1747:                                        ; preds = %if.end6
  %1205 = load ptr, ptr %pParse.addr, align 8
  %call1749 = call ptr @sqlite3PExpr(ptr noundef %1205, i32 noundef 20, ptr noundef null, ptr noundef null)
  %1206 = load ptr, ptr %yymsp, align 8
  %arrayidx1750 = getelementptr inbounds %struct.yyStackEntry, ptr %1206, i64 -3
  %minor1751 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1750, i32 0, i32 2
  store ptr %call1749, ptr %minor1751, align 8
  store ptr %call1749, ptr %p1748, align 8
  %1207 = load ptr, ptr %pParse.addr, align 8
  %1208 = load ptr, ptr %p1748, align 8
  %1209 = load ptr, ptr %yymsp, align 8
  %arrayidx1752 = getelementptr inbounds %struct.yyStackEntry, ptr %1209, i64 -1
  %minor1753 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1752, i32 0, i32 2
  %1210 = load ptr, ptr %minor1753, align 8
  call void @sqlite3PExprAddSelect(ptr noundef %1207, ptr noundef %1208, ptr noundef %1210)
  br label %sw.epilog

sw.bb1754:                                        ; preds = %if.end6
  %1211 = load ptr, ptr %pParse.addr, align 8
  %1212 = load ptr, ptr %yymsp, align 8
  %arrayidx1755 = getelementptr inbounds %struct.yyStackEntry, ptr %1212, i64 -3
  %minor1756 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1755, i32 0, i32 2
  %1213 = load ptr, ptr %minor1756, align 8
  %call1757 = call ptr @sqlite3PExpr(ptr noundef %1211, i32 noundef 152, ptr noundef %1213, ptr noundef null)
  %1214 = load ptr, ptr %yymsp, align 8
  %arrayidx1758 = getelementptr inbounds %struct.yyStackEntry, ptr %1214, i64 -4
  %minor1759 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1758, i32 0, i32 2
  store ptr %call1757, ptr %minor1759, align 8
  %1215 = load ptr, ptr %yymsp, align 8
  %arrayidx1760 = getelementptr inbounds %struct.yyStackEntry, ptr %1215, i64 -4
  %minor1761 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1760, i32 0, i32 2
  %1216 = load ptr, ptr %minor1761, align 8
  %tobool1762 = icmp ne ptr %1216, null
  br i1 %tobool1762, label %if.then1763, label %if.else1783

if.then1763:                                      ; preds = %sw.bb1754
  %1217 = load ptr, ptr %yymsp, align 8
  %arrayidx1764 = getelementptr inbounds %struct.yyStackEntry, ptr %1217, i64 -1
  %minor1765 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1764, i32 0, i32 2
  %1218 = load ptr, ptr %minor1765, align 8
  %tobool1766 = icmp ne ptr %1218, null
  br i1 %tobool1766, label %cond.true1767, label %cond.false1773

cond.true1767:                                    ; preds = %if.then1763
  %1219 = load ptr, ptr %pParse.addr, align 8
  %1220 = load ptr, ptr %yymsp, align 8
  %arrayidx1768 = getelementptr inbounds %struct.yyStackEntry, ptr %1220, i64 -2
  %minor1769 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1768, i32 0, i32 2
  %1221 = load ptr, ptr %minor1769, align 8
  %1222 = load ptr, ptr %yymsp, align 8
  %arrayidx1770 = getelementptr inbounds %struct.yyStackEntry, ptr %1222, i64 -1
  %minor1771 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1770, i32 0, i32 2
  %1223 = load ptr, ptr %minor1771, align 8
  %call1772 = call ptr @sqlite3ExprListAppend(ptr noundef %1219, ptr noundef %1221, ptr noundef %1223)
  br label %cond.end1776

cond.false1773:                                   ; preds = %if.then1763
  %1224 = load ptr, ptr %yymsp, align 8
  %arrayidx1774 = getelementptr inbounds %struct.yyStackEntry, ptr %1224, i64 -2
  %minor1775 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1774, i32 0, i32 2
  %1225 = load ptr, ptr %minor1775, align 8
  br label %cond.end1776

cond.end1776:                                     ; preds = %cond.false1773, %cond.true1767
  %cond1777 = phi ptr [ %call1772, %cond.true1767 ], [ %1225, %cond.false1773 ]
  %1226 = load ptr, ptr %yymsp, align 8
  %arrayidx1778 = getelementptr inbounds %struct.yyStackEntry, ptr %1226, i64 -4
  %minor1779 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1778, i32 0, i32 2
  %1227 = load ptr, ptr %minor1779, align 8
  %x1780 = getelementptr inbounds nuw %struct.Expr, ptr %1227, i32 0, i32 6
  store ptr %cond1777, ptr %x1780, align 8
  %1228 = load ptr, ptr %pParse.addr, align 8
  %1229 = load ptr, ptr %yymsp, align 8
  %arrayidx1781 = getelementptr inbounds %struct.yyStackEntry, ptr %1229, i64 -4
  %minor1782 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1781, i32 0, i32 2
  %1230 = load ptr, ptr %minor1782, align 8
  call void @sqlite3ExprSetHeightAndFlags(ptr noundef %1228, ptr noundef %1230)
  br label %if.end1790

if.else1783:                                      ; preds = %sw.bb1754
  %1231 = load ptr, ptr %pParse.addr, align 8
  %db1784 = getelementptr inbounds nuw %struct.Parse, ptr %1231, i32 0, i32 0
  %1232 = load ptr, ptr %db1784, align 8
  %1233 = load ptr, ptr %yymsp, align 8
  %arrayidx1785 = getelementptr inbounds %struct.yyStackEntry, ptr %1233, i64 -2
  %minor1786 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1785, i32 0, i32 2
  %1234 = load ptr, ptr %minor1786, align 8
  call void @sqlite3ExprListDelete(ptr noundef %1232, ptr noundef %1234)
  %1235 = load ptr, ptr %pParse.addr, align 8
  %db1787 = getelementptr inbounds nuw %struct.Parse, ptr %1235, i32 0, i32 0
  %1236 = load ptr, ptr %db1787, align 8
  %1237 = load ptr, ptr %yymsp, align 8
  %arrayidx1788 = getelementptr inbounds %struct.yyStackEntry, ptr %1237, i64 -1
  %minor1789 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1788, i32 0, i32 2
  %1238 = load ptr, ptr %minor1789, align 8
  call void @sqlite3ExprDelete(ptr noundef %1236, ptr noundef %1238)
  br label %if.end1790

if.end1790:                                       ; preds = %if.else1783, %cond.end1776
  br label %sw.epilog

sw.bb1791:                                        ; preds = %if.end6
  %1239 = load ptr, ptr %pParse.addr, align 8
  %1240 = load ptr, ptr %yymsp, align 8
  %arrayidx1792 = getelementptr inbounds %struct.yyStackEntry, ptr %1240, i64 -4
  %minor1793 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1792, i32 0, i32 2
  %1241 = load ptr, ptr %minor1793, align 8
  %1242 = load ptr, ptr %yymsp, align 8
  %arrayidx1794 = getelementptr inbounds %struct.yyStackEntry, ptr %1242, i64 -2
  %minor1795 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1794, i32 0, i32 2
  %1243 = load ptr, ptr %minor1795, align 8
  %call1796 = call ptr @sqlite3ExprListAppend(ptr noundef %1239, ptr noundef %1241, ptr noundef %1243)
  %1244 = load ptr, ptr %yymsp, align 8
  %arrayidx1797 = getelementptr inbounds %struct.yyStackEntry, ptr %1244, i64 -4
  %minor1798 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1797, i32 0, i32 2
  store ptr %call1796, ptr %minor1798, align 8
  %1245 = load ptr, ptr %pParse.addr, align 8
  %1246 = load ptr, ptr %yymsp, align 8
  %arrayidx1799 = getelementptr inbounds %struct.yyStackEntry, ptr %1246, i64 -4
  %minor1800 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1799, i32 0, i32 2
  %1247 = load ptr, ptr %minor1800, align 8
  %1248 = load ptr, ptr %yymsp, align 8
  %arrayidx1801 = getelementptr inbounds %struct.yyStackEntry, ptr %1248, i64 0
  %minor1802 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1801, i32 0, i32 2
  %1249 = load ptr, ptr %minor1802, align 8
  %call1803 = call ptr @sqlite3ExprListAppend(ptr noundef %1245, ptr noundef %1247, ptr noundef %1249)
  %1250 = load ptr, ptr %yymsp, align 8
  %arrayidx1804 = getelementptr inbounds %struct.yyStackEntry, ptr %1250, i64 -4
  %minor1805 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1804, i32 0, i32 2
  store ptr %call1803, ptr %minor1805, align 8
  br label %sw.epilog

sw.bb1806:                                        ; preds = %if.end6
  %1251 = load ptr, ptr %pParse.addr, align 8
  %1252 = load ptr, ptr %yymsp, align 8
  %arrayidx1807 = getelementptr inbounds %struct.yyStackEntry, ptr %1252, i64 -2
  %minor1808 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1807, i32 0, i32 2
  %1253 = load ptr, ptr %minor1808, align 8
  %call1809 = call ptr @sqlite3ExprListAppend(ptr noundef %1251, ptr noundef null, ptr noundef %1253)
  %1254 = load ptr, ptr %yymsp, align 8
  %arrayidx1810 = getelementptr inbounds %struct.yyStackEntry, ptr %1254, i64 -3
  %minor1811 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1810, i32 0, i32 2
  store ptr %call1809, ptr %minor1811, align 8
  %1255 = load ptr, ptr %pParse.addr, align 8
  %1256 = load ptr, ptr %yymsp, align 8
  %arrayidx1812 = getelementptr inbounds %struct.yyStackEntry, ptr %1256, i64 -3
  %minor1813 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1812, i32 0, i32 2
  %1257 = load ptr, ptr %minor1813, align 8
  %1258 = load ptr, ptr %yymsp, align 8
  %arrayidx1814 = getelementptr inbounds %struct.yyStackEntry, ptr %1258, i64 0
  %minor1815 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1814, i32 0, i32 2
  %1259 = load ptr, ptr %minor1815, align 8
  %call1816 = call ptr @sqlite3ExprListAppend(ptr noundef %1255, ptr noundef %1257, ptr noundef %1259)
  %1260 = load ptr, ptr %yymsp, align 8
  %arrayidx1817 = getelementptr inbounds %struct.yyStackEntry, ptr %1260, i64 -3
  %minor1818 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1817, i32 0, i32 2
  store ptr %call1816, ptr %minor1818, align 8
  br label %sw.epilog

sw.bb1819:                                        ; preds = %if.end6
  %1261 = load ptr, ptr %yymsp, align 8
  %arrayidx1820 = getelementptr inbounds %struct.yyStackEntry, ptr %1261, i64 0
  %minor1821 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1820, i32 0, i32 2
  %1262 = load ptr, ptr %minor1821, align 8
  %1263 = load ptr, ptr %yymsp, align 8
  %arrayidx1822 = getelementptr inbounds %struct.yyStackEntry, ptr %1263, i64 0
  %minor1823 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1822, i32 0, i32 2
  store ptr %1262, ptr %minor1823, align 8
  br label %sw.epilog

sw.bb1824:                                        ; preds = %if.end6
  %1264 = load ptr, ptr %pParse.addr, align 8
  %1265 = load ptr, ptr %yymsp, align 8
  %arrayidx1825 = getelementptr inbounds %struct.yyStackEntry, ptr %1265, i64 -2
  %minor1826 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1825, i32 0, i32 2
  %1266 = load ptr, ptr %minor1826, align 8
  %1267 = load ptr, ptr %yymsp, align 8
  %arrayidx1827 = getelementptr inbounds %struct.yyStackEntry, ptr %1267, i64 0
  %minor1828 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1827, i32 0, i32 2
  %1268 = load ptr, ptr %minor1828, align 8
  %call1829 = call ptr @sqlite3ExprListAppend(ptr noundef %1264, ptr noundef %1266, ptr noundef %1268)
  %1269 = load ptr, ptr %yymsp, align 8
  %arrayidx1830 = getelementptr inbounds %struct.yyStackEntry, ptr %1269, i64 -2
  %minor1831 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1830, i32 0, i32 2
  store ptr %call1829, ptr %minor1831, align 8
  br label %sw.epilog

sw.bb1832:                                        ; preds = %if.end6
  %1270 = load ptr, ptr %pParse.addr, align 8
  %1271 = load ptr, ptr %yymsp, align 8
  %arrayidx1833 = getelementptr inbounds %struct.yyStackEntry, ptr %1271, i64 0
  %minor1834 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1833, i32 0, i32 2
  %1272 = load ptr, ptr %minor1834, align 8
  %call1835 = call ptr @sqlite3ExprListAppend(ptr noundef %1270, ptr noundef null, ptr noundef %1272)
  %1273 = load ptr, ptr %yymsp, align 8
  %arrayidx1836 = getelementptr inbounds %struct.yyStackEntry, ptr %1273, i64 0
  %minor1837 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1836, i32 0, i32 2
  store ptr %call1835, ptr %minor1837, align 8
  br label %sw.epilog

sw.bb1838:                                        ; preds = %if.end6, %if.end6
  %1274 = load ptr, ptr %yymsp, align 8
  %arrayidx1839 = getelementptr inbounds %struct.yyStackEntry, ptr %1274, i64 -1
  %minor1840 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1839, i32 0, i32 2
  %1275 = load ptr, ptr %minor1840, align 8
  %1276 = load ptr, ptr %yymsp, align 8
  %arrayidx1841 = getelementptr inbounds %struct.yyStackEntry, ptr %1276, i64 -2
  %minor1842 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1841, i32 0, i32 2
  store ptr %1275, ptr %minor1842, align 8
  br label %sw.epilog

sw.bb1843:                                        ; preds = %if.end6
  %1277 = load ptr, ptr %pParse.addr, align 8
  %1278 = load ptr, ptr %yymsp, align 8
  %arrayidx1844 = getelementptr inbounds %struct.yyStackEntry, ptr %1278, i64 -7
  %minor1845 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1844, i32 0, i32 2
  %1279 = load ptr, ptr %yymsp, align 8
  %arrayidx1846 = getelementptr inbounds %struct.yyStackEntry, ptr %1279, i64 -6
  %minor1847 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1846, i32 0, i32 2
  %1280 = load ptr, ptr %pParse.addr, align 8
  %1281 = load ptr, ptr %yymsp, align 8
  %arrayidx1848 = getelementptr inbounds %struct.yyStackEntry, ptr %1281, i64 -4
  %minor1849 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1848, i32 0, i32 2
  %call1850 = call ptr @sqlite3SrcListAppend(ptr noundef %1280, ptr noundef null, ptr noundef %minor1849, ptr noundef null)
  %1282 = load ptr, ptr %yymsp, align 8
  %arrayidx1851 = getelementptr inbounds %struct.yyStackEntry, ptr %1282, i64 -2
  %minor1852 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1851, i32 0, i32 2
  %1283 = load ptr, ptr %minor1852, align 8
  %1284 = load ptr, ptr %yymsp, align 8
  %arrayidx1853 = getelementptr inbounds %struct.yyStackEntry, ptr %1284, i64 -10
  %minor1854 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1853, i32 0, i32 2
  %1285 = load i32, ptr %minor1854, align 8
  %1286 = load ptr, ptr %yymsp, align 8
  %arrayidx1855 = getelementptr inbounds %struct.yyStackEntry, ptr %1286, i64 -11
  %minor1856 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1855, i32 0, i32 2
  %1287 = load ptr, ptr %yymsp, align 8
  %arrayidx1857 = getelementptr inbounds %struct.yyStackEntry, ptr %1287, i64 0
  %minor1858 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1857, i32 0, i32 2
  %1288 = load ptr, ptr %minor1858, align 8
  %1289 = load ptr, ptr %yymsp, align 8
  %arrayidx1859 = getelementptr inbounds %struct.yyStackEntry, ptr %1289, i64 -8
  %minor1860 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1859, i32 0, i32 2
  %1290 = load i32, ptr %minor1860, align 8
  call void @sqlite3CreateIndex(ptr noundef %1277, ptr noundef %minor1845, ptr noundef %minor1847, ptr noundef %call1850, ptr noundef %1283, i32 noundef %1285, ptr noundef %minor1856, ptr noundef %1288, i32 noundef 0, i32 noundef %1290, i8 noundef zeroext 0)
  %1291 = load ptr, ptr %pParse.addr, align 8
  %eParseMode1861 = getelementptr inbounds nuw %struct.Parse, ptr %1291, i32 0, i32 51
  %1292 = load i8, ptr %eParseMode1861, align 4
  %conv1862 = zext i8 %1292 to i32
  %cmp1863 = icmp sge i32 %conv1862, 2
  br i1 %cmp1863, label %land.lhs.true1865, label %if.end1873

land.lhs.true1865:                                ; preds = %sw.bb1843
  %1293 = load ptr, ptr %pParse.addr, align 8
  %pNewIndex = getelementptr inbounds nuw %struct.Parse, ptr %1293, i32 0, i32 59
  %1294 = load ptr, ptr %pNewIndex, align 8
  %tobool1866 = icmp ne ptr %1294, null
  br i1 %tobool1866, label %if.then1867, label %if.end1873

if.then1867:                                      ; preds = %land.lhs.true1865
  %1295 = load ptr, ptr %pParse.addr, align 8
  %1296 = load ptr, ptr %pParse.addr, align 8
  %pNewIndex1868 = getelementptr inbounds nuw %struct.Parse, ptr %1296, i32 0, i32 59
  %1297 = load ptr, ptr %pNewIndex1868, align 8
  %zName1869 = getelementptr inbounds nuw %struct.Index, ptr %1297, i32 0, i32 0
  %1298 = load ptr, ptr %zName1869, align 8
  %1299 = load ptr, ptr %yymsp, align 8
  %arrayidx1870 = getelementptr inbounds %struct.yyStackEntry, ptr %1299, i64 -4
  %minor1871 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1870, i32 0, i32 2
  %call1872 = call ptr @sqlite3RenameTokenMap(ptr noundef %1295, ptr noundef %1298, ptr noundef %minor1871)
  br label %if.end1873

if.end1873:                                       ; preds = %if.then1867, %land.lhs.true1865, %sw.bb1843
  br label %sw.epilog

sw.bb1874:                                        ; preds = %if.end6, %if.end6
  %1300 = load ptr, ptr %yymsp, align 8
  %arrayidx1875 = getelementptr inbounds %struct.yyStackEntry, ptr %1300, i64 0
  %minor1876 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1875, i32 0, i32 2
  store i32 2, ptr %minor1876, align 8
  br label %sw.epilog

sw.bb1877:                                        ; preds = %if.end6
  %1301 = load ptr, ptr %yymsp, align 8
  %arrayidx1878 = getelementptr inbounds %struct.yyStackEntry, ptr %1301, i64 1
  %minor1879 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1878, i32 0, i32 2
  store i32 0, ptr %minor1879, align 8
  br label %sw.epilog

sw.bb1880:                                        ; preds = %if.end6
  %1302 = load ptr, ptr %pParse.addr, align 8
  %1303 = load ptr, ptr %yymsp, align 8
  %arrayidx1881 = getelementptr inbounds %struct.yyStackEntry, ptr %1303, i64 -4
  %minor1882 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1881, i32 0, i32 2
  %1304 = load ptr, ptr %minor1882, align 8
  %1305 = load ptr, ptr %yymsp, align 8
  %arrayidx1883 = getelementptr inbounds %struct.yyStackEntry, ptr %1305, i64 -2
  %minor1884 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1883, i32 0, i32 2
  %1306 = load ptr, ptr %yymsp, align 8
  %arrayidx1885 = getelementptr inbounds %struct.yyStackEntry, ptr %1306, i64 -1
  %minor1886 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1885, i32 0, i32 2
  %1307 = load i32, ptr %minor1886, align 8
  %1308 = load ptr, ptr %yymsp, align 8
  %arrayidx1887 = getelementptr inbounds %struct.yyStackEntry, ptr %1308, i64 0
  %minor1888 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1887, i32 0, i32 2
  %1309 = load i32, ptr %minor1888, align 8
  %call1889 = call ptr @parserAddExprIdListTerm(ptr noundef %1302, ptr noundef %1304, ptr noundef %minor1884, i32 noundef %1307, i32 noundef %1309)
  %1310 = load ptr, ptr %yymsp, align 8
  %arrayidx1890 = getelementptr inbounds %struct.yyStackEntry, ptr %1310, i64 -4
  %minor1891 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1890, i32 0, i32 2
  store ptr %call1889, ptr %minor1891, align 8
  br label %sw.epilog

sw.bb1892:                                        ; preds = %if.end6
  %1311 = load ptr, ptr %pParse.addr, align 8
  %1312 = load ptr, ptr %yymsp, align 8
  %arrayidx1893 = getelementptr inbounds %struct.yyStackEntry, ptr %1312, i64 -2
  %minor1894 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1893, i32 0, i32 2
  %1313 = load ptr, ptr %yymsp, align 8
  %arrayidx1895 = getelementptr inbounds %struct.yyStackEntry, ptr %1313, i64 -1
  %minor1896 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1895, i32 0, i32 2
  %1314 = load i32, ptr %minor1896, align 8
  %1315 = load ptr, ptr %yymsp, align 8
  %arrayidx1897 = getelementptr inbounds %struct.yyStackEntry, ptr %1315, i64 0
  %minor1898 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1897, i32 0, i32 2
  %1316 = load i32, ptr %minor1898, align 8
  %call1899 = call ptr @parserAddExprIdListTerm(ptr noundef %1311, ptr noundef null, ptr noundef %minor1894, i32 noundef %1314, i32 noundef %1316)
  %1317 = load ptr, ptr %yymsp, align 8
  %arrayidx1900 = getelementptr inbounds %struct.yyStackEntry, ptr %1317, i64 -2
  %minor1901 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1900, i32 0, i32 2
  store ptr %call1899, ptr %minor1901, align 8
  br label %sw.epilog

sw.bb1902:                                        ; preds = %if.end6
  %1318 = load ptr, ptr %pParse.addr, align 8
  %1319 = load ptr, ptr %yymsp, align 8
  %arrayidx1903 = getelementptr inbounds %struct.yyStackEntry, ptr %1319, i64 0
  %minor1904 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1903, i32 0, i32 2
  %1320 = load ptr, ptr %minor1904, align 8
  %1321 = load ptr, ptr %yymsp, align 8
  %arrayidx1905 = getelementptr inbounds %struct.yyStackEntry, ptr %1321, i64 -1
  %minor1906 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1905, i32 0, i32 2
  %1322 = load i32, ptr %minor1906, align 8
  call void @sqlite3DropIndex(ptr noundef %1318, ptr noundef %1320, i32 noundef %1322)
  br label %sw.epilog

sw.bb1907:                                        ; preds = %if.end6
  %1323 = load ptr, ptr %pParse.addr, align 8
  %1324 = load ptr, ptr %yymsp, align 8
  %arrayidx1908 = getelementptr inbounds %struct.yyStackEntry, ptr %1324, i64 0
  %minor1909 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1908, i32 0, i32 2
  %1325 = load ptr, ptr %minor1909, align 8
  call void @sqlite3Vacuum(ptr noundef %1323, ptr noundef null, ptr noundef %1325)
  br label %sw.epilog

sw.bb1910:                                        ; preds = %if.end6
  %1326 = load ptr, ptr %pParse.addr, align 8
  %1327 = load ptr, ptr %yymsp, align 8
  %arrayidx1911 = getelementptr inbounds %struct.yyStackEntry, ptr %1327, i64 -1
  %minor1912 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1911, i32 0, i32 2
  %1328 = load ptr, ptr %yymsp, align 8
  %arrayidx1913 = getelementptr inbounds %struct.yyStackEntry, ptr %1328, i64 0
  %minor1914 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1913, i32 0, i32 2
  %1329 = load ptr, ptr %minor1914, align 8
  call void @sqlite3Vacuum(ptr noundef %1326, ptr noundef %minor1912, ptr noundef %1329)
  br label %sw.epilog

sw.bb1915:                                        ; preds = %if.end6
  %1330 = load ptr, ptr %pParse.addr, align 8
  %1331 = load ptr, ptr %yymsp, align 8
  %arrayidx1916 = getelementptr inbounds %struct.yyStackEntry, ptr %1331, i64 -1
  %minor1917 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1916, i32 0, i32 2
  %1332 = load ptr, ptr %yymsp, align 8
  %arrayidx1918 = getelementptr inbounds %struct.yyStackEntry, ptr %1332, i64 0
  %minor1919 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1918, i32 0, i32 2
  call void @sqlite3Pragma(ptr noundef %1330, ptr noundef %minor1917, ptr noundef %minor1919, ptr noundef null, i32 noundef 0)
  br label %sw.epilog

sw.bb1920:                                        ; preds = %if.end6
  %1333 = load ptr, ptr %pParse.addr, align 8
  %1334 = load ptr, ptr %yymsp, align 8
  %arrayidx1921 = getelementptr inbounds %struct.yyStackEntry, ptr %1334, i64 -3
  %minor1922 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1921, i32 0, i32 2
  %1335 = load ptr, ptr %yymsp, align 8
  %arrayidx1923 = getelementptr inbounds %struct.yyStackEntry, ptr %1335, i64 -2
  %minor1924 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1923, i32 0, i32 2
  %1336 = load ptr, ptr %yymsp, align 8
  %arrayidx1925 = getelementptr inbounds %struct.yyStackEntry, ptr %1336, i64 0
  %minor1926 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1925, i32 0, i32 2
  call void @sqlite3Pragma(ptr noundef %1333, ptr noundef %minor1922, ptr noundef %minor1924, ptr noundef %minor1926, i32 noundef 0)
  br label %sw.epilog

sw.bb1927:                                        ; preds = %if.end6
  %1337 = load ptr, ptr %pParse.addr, align 8
  %1338 = load ptr, ptr %yymsp, align 8
  %arrayidx1928 = getelementptr inbounds %struct.yyStackEntry, ptr %1338, i64 -4
  %minor1929 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1928, i32 0, i32 2
  %1339 = load ptr, ptr %yymsp, align 8
  %arrayidx1930 = getelementptr inbounds %struct.yyStackEntry, ptr %1339, i64 -3
  %minor1931 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1930, i32 0, i32 2
  %1340 = load ptr, ptr %yymsp, align 8
  %arrayidx1932 = getelementptr inbounds %struct.yyStackEntry, ptr %1340, i64 -1
  %minor1933 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1932, i32 0, i32 2
  call void @sqlite3Pragma(ptr noundef %1337, ptr noundef %minor1929, ptr noundef %minor1931, ptr noundef %minor1933, i32 noundef 0)
  br label %sw.epilog

sw.bb1934:                                        ; preds = %if.end6
  %1341 = load ptr, ptr %pParse.addr, align 8
  %1342 = load ptr, ptr %yymsp, align 8
  %arrayidx1935 = getelementptr inbounds %struct.yyStackEntry, ptr %1342, i64 -3
  %minor1936 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1935, i32 0, i32 2
  %1343 = load ptr, ptr %yymsp, align 8
  %arrayidx1937 = getelementptr inbounds %struct.yyStackEntry, ptr %1343, i64 -2
  %minor1938 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1937, i32 0, i32 2
  %1344 = load ptr, ptr %yymsp, align 8
  %arrayidx1939 = getelementptr inbounds %struct.yyStackEntry, ptr %1344, i64 0
  %minor1940 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1939, i32 0, i32 2
  call void @sqlite3Pragma(ptr noundef %1341, ptr noundef %minor1936, ptr noundef %minor1938, ptr noundef %minor1940, i32 noundef 1)
  br label %sw.epilog

sw.bb1941:                                        ; preds = %if.end6
  %1345 = load ptr, ptr %pParse.addr, align 8
  %1346 = load ptr, ptr %yymsp, align 8
  %arrayidx1942 = getelementptr inbounds %struct.yyStackEntry, ptr %1346, i64 -4
  %minor1943 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1942, i32 0, i32 2
  %1347 = load ptr, ptr %yymsp, align 8
  %arrayidx1944 = getelementptr inbounds %struct.yyStackEntry, ptr %1347, i64 -3
  %minor1945 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1944, i32 0, i32 2
  %1348 = load ptr, ptr %yymsp, align 8
  %arrayidx1946 = getelementptr inbounds %struct.yyStackEntry, ptr %1348, i64 -1
  %minor1947 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1946, i32 0, i32 2
  call void @sqlite3Pragma(ptr noundef %1345, ptr noundef %minor1943, ptr noundef %minor1945, ptr noundef %minor1947, i32 noundef 1)
  br label %sw.epilog

sw.bb1948:                                        ; preds = %if.end6
  %1349 = load ptr, ptr %yymsp, align 8
  %arrayidx1949 = getelementptr inbounds %struct.yyStackEntry, ptr %1349, i64 -3
  %minor1950 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1949, i32 0, i32 2
  %z1951 = getelementptr inbounds nuw %struct.Token, ptr %minor1950, i32 0, i32 0
  %1350 = load ptr, ptr %z1951, align 8
  %z1952 = getelementptr inbounds nuw %struct.Token, ptr %all, i32 0, i32 0
  store ptr %1350, ptr %z1952, align 8
  %1351 = load ptr, ptr %yymsp, align 8
  %arrayidx1953 = getelementptr inbounds %struct.yyStackEntry, ptr %1351, i64 0
  %minor1954 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1953, i32 0, i32 2
  %z1955 = getelementptr inbounds nuw %struct.Token, ptr %minor1954, i32 0, i32 0
  %1352 = load ptr, ptr %z1955, align 8
  %1353 = load ptr, ptr %yymsp, align 8
  %arrayidx1956 = getelementptr inbounds %struct.yyStackEntry, ptr %1353, i64 -3
  %minor1957 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1956, i32 0, i32 2
  %z1958 = getelementptr inbounds nuw %struct.Token, ptr %minor1957, i32 0, i32 0
  %1354 = load ptr, ptr %z1958, align 8
  %sub.ptr.lhs.cast1959 = ptrtoint ptr %1352 to i64
  %sub.ptr.rhs.cast1960 = ptrtoint ptr %1354 to i64
  %sub.ptr.sub1961 = sub i64 %sub.ptr.lhs.cast1959, %sub.ptr.rhs.cast1960
  %conv1962 = trunc i64 %sub.ptr.sub1961 to i32
  %1355 = load ptr, ptr %yymsp, align 8
  %arrayidx1963 = getelementptr inbounds %struct.yyStackEntry, ptr %1355, i64 0
  %minor1964 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1963, i32 0, i32 2
  %n1965 = getelementptr inbounds nuw %struct.Token, ptr %minor1964, i32 0, i32 1
  %1356 = load i32, ptr %n1965, align 8
  %add1966 = add i32 %conv1962, %1356
  %n1967 = getelementptr inbounds nuw %struct.Token, ptr %all, i32 0, i32 1
  store i32 %add1966, ptr %n1967, align 8
  %1357 = load ptr, ptr %pParse.addr, align 8
  %1358 = load ptr, ptr %yymsp, align 8
  %arrayidx1968 = getelementptr inbounds %struct.yyStackEntry, ptr %1358, i64 -1
  %minor1969 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1968, i32 0, i32 2
  %1359 = load ptr, ptr %minor1969, align 8
  call void @sqlite3FinishTrigger(ptr noundef %1357, ptr noundef %1359, ptr noundef %all)
  br label %sw.epilog

sw.bb1970:                                        ; preds = %if.end6
  %1360 = load ptr, ptr %pParse.addr, align 8
  %1361 = load ptr, ptr %yymsp, align 8
  %arrayidx1971 = getelementptr inbounds %struct.yyStackEntry, ptr %1361, i64 -7
  %minor1972 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1971, i32 0, i32 2
  %1362 = load ptr, ptr %yymsp, align 8
  %arrayidx1973 = getelementptr inbounds %struct.yyStackEntry, ptr %1362, i64 -6
  %minor1974 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1973, i32 0, i32 2
  %1363 = load ptr, ptr %yymsp, align 8
  %arrayidx1975 = getelementptr inbounds %struct.yyStackEntry, ptr %1363, i64 -5
  %minor1976 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1975, i32 0, i32 2
  %1364 = load i32, ptr %minor1976, align 8
  %1365 = load ptr, ptr %yymsp, align 8
  %arrayidx1977 = getelementptr inbounds %struct.yyStackEntry, ptr %1365, i64 -4
  %minor1978 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1977, i32 0, i32 2
  %a1979 = getelementptr inbounds nuw %struct.TrigEvent, ptr %minor1978, i32 0, i32 0
  %1366 = load i32, ptr %a1979, align 8
  %1367 = load ptr, ptr %yymsp, align 8
  %arrayidx1980 = getelementptr inbounds %struct.yyStackEntry, ptr %1367, i64 -4
  %minor1981 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1980, i32 0, i32 2
  %b = getelementptr inbounds nuw %struct.TrigEvent, ptr %minor1981, i32 0, i32 1
  %1368 = load ptr, ptr %b, align 8
  %1369 = load ptr, ptr %yymsp, align 8
  %arrayidx1982 = getelementptr inbounds %struct.yyStackEntry, ptr %1369, i64 -2
  %minor1983 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1982, i32 0, i32 2
  %1370 = load ptr, ptr %minor1983, align 8
  %1371 = load ptr, ptr %yymsp, align 8
  %arrayidx1984 = getelementptr inbounds %struct.yyStackEntry, ptr %1371, i64 0
  %minor1985 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1984, i32 0, i32 2
  %1372 = load ptr, ptr %minor1985, align 8
  %1373 = load ptr, ptr %yymsp, align 8
  %arrayidx1986 = getelementptr inbounds %struct.yyStackEntry, ptr %1373, i64 -10
  %minor1987 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1986, i32 0, i32 2
  %1374 = load i32, ptr %minor1987, align 8
  %1375 = load ptr, ptr %yymsp, align 8
  %arrayidx1988 = getelementptr inbounds %struct.yyStackEntry, ptr %1375, i64 -8
  %minor1989 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1988, i32 0, i32 2
  %1376 = load i32, ptr %minor1989, align 8
  call void @sqlite3BeginTrigger(ptr noundef %1360, ptr noundef %minor1972, ptr noundef %minor1974, i32 noundef %1364, i32 noundef %1366, ptr noundef %1368, ptr noundef %1370, ptr noundef %1372, i32 noundef %1374, i32 noundef %1376)
  %1377 = load ptr, ptr %yymsp, align 8
  %arrayidx1990 = getelementptr inbounds %struct.yyStackEntry, ptr %1377, i64 -10
  %minor1991 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1990, i32 0, i32 2
  %1378 = load ptr, ptr %yymsp, align 8
  %arrayidx1992 = getelementptr inbounds %struct.yyStackEntry, ptr %1378, i64 -6
  %minor1993 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1992, i32 0, i32 2
  %n1994 = getelementptr inbounds nuw %struct.Token, ptr %minor1993, i32 0, i32 1
  %1379 = load i32, ptr %n1994, align 8
  %cmp1995 = icmp eq i32 %1379, 0
  br i1 %cmp1995, label %cond.true1997, label %cond.false2000

cond.true1997:                                    ; preds = %sw.bb1970
  %1380 = load ptr, ptr %yymsp, align 8
  %arrayidx1998 = getelementptr inbounds %struct.yyStackEntry, ptr %1380, i64 -7
  %minor1999 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx1998, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor1991, ptr align 8 %minor1999, i64 16, i1 false)
  br label %cond.end2003

cond.false2000:                                   ; preds = %sw.bb1970
  %1381 = load ptr, ptr %yymsp, align 8
  %arrayidx2001 = getelementptr inbounds %struct.yyStackEntry, ptr %1381, i64 -6
  %minor2002 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2001, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor1991, ptr align 8 %minor2002, i64 16, i1 false)
  br label %cond.end2003

cond.end2003:                                     ; preds = %cond.false2000, %cond.true1997
  br label %sw.epilog

sw.bb2004:                                        ; preds = %if.end6
  %1382 = load ptr, ptr %yymsp, align 8
  %arrayidx2005 = getelementptr inbounds %struct.yyStackEntry, ptr %1382, i64 0
  %major2006 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2005, i32 0, i32 1
  %1383 = load i16, ptr %major2006, align 2
  %conv2007 = zext i16 %1383 to i32
  %1384 = load ptr, ptr %yymsp, align 8
  %arrayidx2008 = getelementptr inbounds %struct.yyStackEntry, ptr %1384, i64 0
  %minor2009 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2008, i32 0, i32 2
  store i32 %conv2007, ptr %minor2009, align 8
  br label %sw.epilog

sw.bb2010:                                        ; preds = %if.end6
  %1385 = load ptr, ptr %yymsp, align 8
  %arrayidx2011 = getelementptr inbounds %struct.yyStackEntry, ptr %1385, i64 -1
  %minor2012 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2011, i32 0, i32 2
  store i32 65, ptr %minor2012, align 8
  br label %sw.epilog

sw.bb2013:                                        ; preds = %if.end6
  %1386 = load ptr, ptr %yymsp, align 8
  %arrayidx2014 = getelementptr inbounds %struct.yyStackEntry, ptr %1386, i64 1
  %minor2015 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2014, i32 0, i32 2
  store i32 33, ptr %minor2015, align 8
  br label %sw.epilog

sw.bb2016:                                        ; preds = %if.end6, %if.end6
  %1387 = load ptr, ptr %yymsp, align 8
  %arrayidx2017 = getelementptr inbounds %struct.yyStackEntry, ptr %1387, i64 0
  %major2018 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2017, i32 0, i32 1
  %1388 = load i16, ptr %major2018, align 2
  %conv2019 = zext i16 %1388 to i32
  %1389 = load ptr, ptr %yymsp, align 8
  %arrayidx2020 = getelementptr inbounds %struct.yyStackEntry, ptr %1389, i64 0
  %minor2021 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2020, i32 0, i32 2
  %a2022 = getelementptr inbounds nuw %struct.TrigEvent, ptr %minor2021, i32 0, i32 0
  store i32 %conv2019, ptr %a2022, align 8
  %1390 = load ptr, ptr %yymsp, align 8
  %arrayidx2023 = getelementptr inbounds %struct.yyStackEntry, ptr %1390, i64 0
  %minor2024 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2023, i32 0, i32 2
  %b2025 = getelementptr inbounds nuw %struct.TrigEvent, ptr %minor2024, i32 0, i32 1
  store ptr null, ptr %b2025, align 8
  br label %sw.epilog

sw.bb2026:                                        ; preds = %if.end6
  %1391 = load ptr, ptr %yymsp, align 8
  %arrayidx2027 = getelementptr inbounds %struct.yyStackEntry, ptr %1391, i64 -2
  %minor2028 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2027, i32 0, i32 2
  %a2029 = getelementptr inbounds nuw %struct.TrigEvent, ptr %minor2028, i32 0, i32 0
  store i32 125, ptr %a2029, align 8
  %1392 = load ptr, ptr %yymsp, align 8
  %arrayidx2030 = getelementptr inbounds %struct.yyStackEntry, ptr %1392, i64 0
  %minor2031 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2030, i32 0, i32 2
  %1393 = load ptr, ptr %minor2031, align 8
  %1394 = load ptr, ptr %yymsp, align 8
  %arrayidx2032 = getelementptr inbounds %struct.yyStackEntry, ptr %1394, i64 -2
  %minor2033 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2032, i32 0, i32 2
  %b2034 = getelementptr inbounds nuw %struct.TrigEvent, ptr %minor2033, i32 0, i32 1
  store ptr %1393, ptr %b2034, align 8
  br label %sw.epilog

sw.bb2035:                                        ; preds = %if.end6, %if.end6
  %1395 = load ptr, ptr %yymsp, align 8
  %arrayidx2036 = getelementptr inbounds %struct.yyStackEntry, ptr %1395, i64 1
  %minor2037 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2036, i32 0, i32 2
  store ptr null, ptr %minor2037, align 8
  br label %sw.epilog

sw.bb2038:                                        ; preds = %if.end6, %if.end6
  %1396 = load ptr, ptr %yymsp, align 8
  %arrayidx2039 = getelementptr inbounds %struct.yyStackEntry, ptr %1396, i64 0
  %minor2040 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2039, i32 0, i32 2
  %1397 = load ptr, ptr %minor2040, align 8
  %1398 = load ptr, ptr %yymsp, align 8
  %arrayidx2041 = getelementptr inbounds %struct.yyStackEntry, ptr %1398, i64 -1
  %minor2042 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2041, i32 0, i32 2
  store ptr %1397, ptr %minor2042, align 8
  br label %sw.epilog

sw.bb2043:                                        ; preds = %if.end6
  %1399 = load ptr, ptr %yymsp, align 8
  %arrayidx2044 = getelementptr inbounds %struct.yyStackEntry, ptr %1399, i64 -1
  %minor2045 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2044, i32 0, i32 2
  %1400 = load ptr, ptr %minor2045, align 8
  %1401 = load ptr, ptr %yymsp, align 8
  %arrayidx2046 = getelementptr inbounds %struct.yyStackEntry, ptr %1401, i64 -2
  %minor2047 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2046, i32 0, i32 2
  %1402 = load ptr, ptr %minor2047, align 8
  %pLast = getelementptr inbounds nuw %struct.TriggerStep, ptr %1402, i32 0, i32 11
  %1403 = load ptr, ptr %pLast, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerStep, ptr %1403, i32 0, i32 10
  store ptr %1400, ptr %pNext, align 8
  %1404 = load ptr, ptr %yymsp, align 8
  %arrayidx2048 = getelementptr inbounds %struct.yyStackEntry, ptr %1404, i64 -1
  %minor2049 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2048, i32 0, i32 2
  %1405 = load ptr, ptr %minor2049, align 8
  %1406 = load ptr, ptr %yymsp, align 8
  %arrayidx2050 = getelementptr inbounds %struct.yyStackEntry, ptr %1406, i64 -2
  %minor2051 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2050, i32 0, i32 2
  %1407 = load ptr, ptr %minor2051, align 8
  %pLast2052 = getelementptr inbounds nuw %struct.TriggerStep, ptr %1407, i32 0, i32 11
  store ptr %1405, ptr %pLast2052, align 8
  br label %sw.epilog

sw.bb2053:                                        ; preds = %if.end6
  %1408 = load ptr, ptr %yymsp, align 8
  %arrayidx2054 = getelementptr inbounds %struct.yyStackEntry, ptr %1408, i64 -1
  %minor2055 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2054, i32 0, i32 2
  %1409 = load ptr, ptr %minor2055, align 8
  %1410 = load ptr, ptr %yymsp, align 8
  %arrayidx2056 = getelementptr inbounds %struct.yyStackEntry, ptr %1410, i64 -1
  %minor2057 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2056, i32 0, i32 2
  %1411 = load ptr, ptr %minor2057, align 8
  %pLast2058 = getelementptr inbounds nuw %struct.TriggerStep, ptr %1411, i32 0, i32 11
  store ptr %1409, ptr %pLast2058, align 8
  br label %sw.epilog

sw.bb2059:                                        ; preds = %if.end6
  %1412 = load ptr, ptr %yymsp, align 8
  %arrayidx2060 = getelementptr inbounds %struct.yyStackEntry, ptr %1412, i64 -2
  %minor2061 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2060, i32 0, i32 2
  %1413 = load ptr, ptr %yymsp, align 8
  %arrayidx2062 = getelementptr inbounds %struct.yyStackEntry, ptr %1413, i64 0
  %minor2063 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2062, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor2061, ptr align 8 %minor2063, i64 16, i1 false)
  %1414 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %1414, ptr noundef @.str.559)
  br label %sw.epilog

sw.bb2064:                                        ; preds = %if.end6
  %1415 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %1415, ptr noundef @.str.560)
  br label %sw.epilog

sw.bb2065:                                        ; preds = %if.end6
  %1416 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %1416, ptr noundef @.str.561)
  br label %sw.epilog

sw.bb2066:                                        ; preds = %if.end6
  %1417 = load ptr, ptr %pParse.addr, align 8
  %1418 = load ptr, ptr %yymsp, align 8
  %arrayidx2067 = getelementptr inbounds %struct.yyStackEntry, ptr %1418, i64 -5
  %minor2068 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2067, i32 0, i32 2
  %1419 = load ptr, ptr %yymsp, align 8
  %arrayidx2069 = getelementptr inbounds %struct.yyStackEntry, ptr %1419, i64 -2
  %minor2070 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2069, i32 0, i32 2
  %1420 = load ptr, ptr %minor2070, align 8
  %1421 = load ptr, ptr %yymsp, align 8
  %arrayidx2071 = getelementptr inbounds %struct.yyStackEntry, ptr %1421, i64 -1
  %minor2072 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2071, i32 0, i32 2
  %1422 = load ptr, ptr %minor2072, align 8
  %1423 = load ptr, ptr %yymsp, align 8
  %arrayidx2073 = getelementptr inbounds %struct.yyStackEntry, ptr %1423, i64 -6
  %minor2074 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2073, i32 0, i32 2
  %1424 = load i32, ptr %minor2074, align 8
  %conv2075 = trunc i32 %1424 to i8
  %1425 = load ptr, ptr %yymsp, align 8
  %arrayidx2076 = getelementptr inbounds %struct.yyStackEntry, ptr %1425, i64 -7
  %minor2077 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2076, i32 0, i32 2
  %z2078 = getelementptr inbounds nuw %struct.Token, ptr %minor2077, i32 0, i32 0
  %1426 = load ptr, ptr %z2078, align 8
  %1427 = load ptr, ptr %yymsp, align 8
  %arrayidx2079 = getelementptr inbounds %struct.yyStackEntry, ptr %1427, i64 0
  %minor2080 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2079, i32 0, i32 2
  %1428 = load ptr, ptr %minor2080, align 8
  %call2081 = call ptr @sqlite3TriggerUpdateStep(ptr noundef %1417, ptr noundef %minor2068, ptr noundef %1420, ptr noundef %1422, i8 noundef zeroext %conv2075, ptr noundef %1426, ptr noundef %1428)
  store ptr %call2081, ptr %yylhsminor, align 8
  %1429 = load ptr, ptr %yylhsminor, align 8
  %1430 = load ptr, ptr %yymsp, align 8
  %arrayidx2082 = getelementptr inbounds %struct.yyStackEntry, ptr %1430, i64 -7
  %minor2083 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2082, i32 0, i32 2
  store ptr %1429, ptr %minor2083, align 8
  br label %sw.epilog

sw.bb2084:                                        ; preds = %if.end6
  %1431 = load ptr, ptr %pParse.addr, align 8
  %1432 = load ptr, ptr %yymsp, align 8
  %arrayidx2085 = getelementptr inbounds %struct.yyStackEntry, ptr %1432, i64 -4
  %minor2086 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2085, i32 0, i32 2
  %1433 = load ptr, ptr %yymsp, align 8
  %arrayidx2087 = getelementptr inbounds %struct.yyStackEntry, ptr %1433, i64 -3
  %minor2088 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2087, i32 0, i32 2
  %1434 = load ptr, ptr %minor2088, align 8
  %1435 = load ptr, ptr %yymsp, align 8
  %arrayidx2089 = getelementptr inbounds %struct.yyStackEntry, ptr %1435, i64 -2
  %minor2090 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2089, i32 0, i32 2
  %1436 = load ptr, ptr %minor2090, align 8
  %1437 = load ptr, ptr %yymsp, align 8
  %arrayidx2091 = getelementptr inbounds %struct.yyStackEntry, ptr %1437, i64 -6
  %minor2092 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2091, i32 0, i32 2
  %1438 = load i32, ptr %minor2092, align 8
  %conv2093 = trunc i32 %1438 to i8
  %1439 = load ptr, ptr %yymsp, align 8
  %arrayidx2094 = getelementptr inbounds %struct.yyStackEntry, ptr %1439, i64 -1
  %minor2095 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2094, i32 0, i32 2
  %1440 = load ptr, ptr %minor2095, align 8
  %1441 = load ptr, ptr %yymsp, align 8
  %arrayidx2096 = getelementptr inbounds %struct.yyStackEntry, ptr %1441, i64 -7
  %minor2097 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2096, i32 0, i32 2
  %1442 = load ptr, ptr %minor2097, align 8
  %1443 = load ptr, ptr %yymsp, align 8
  %arrayidx2098 = getelementptr inbounds %struct.yyStackEntry, ptr %1443, i64 0
  %minor2099 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2098, i32 0, i32 2
  %1444 = load ptr, ptr %minor2099, align 8
  %call2100 = call ptr @sqlite3TriggerInsertStep(ptr noundef %1431, ptr noundef %minor2086, ptr noundef %1434, ptr noundef %1436, i8 noundef zeroext %conv2093, ptr noundef %1440, ptr noundef %1442, ptr noundef %1444)
  store ptr %call2100, ptr %yylhsminor, align 8
  %1445 = load ptr, ptr %yylhsminor, align 8
  %1446 = load ptr, ptr %yymsp, align 8
  %arrayidx2101 = getelementptr inbounds %struct.yyStackEntry, ptr %1446, i64 -7
  %minor2102 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2101, i32 0, i32 2
  store ptr %1445, ptr %minor2102, align 8
  br label %sw.epilog

sw.bb2103:                                        ; preds = %if.end6
  %1447 = load ptr, ptr %pParse.addr, align 8
  %1448 = load ptr, ptr %yymsp, align 8
  %arrayidx2104 = getelementptr inbounds %struct.yyStackEntry, ptr %1448, i64 -3
  %minor2105 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2104, i32 0, i32 2
  %1449 = load ptr, ptr %yymsp, align 8
  %arrayidx2106 = getelementptr inbounds %struct.yyStackEntry, ptr %1449, i64 -1
  %minor2107 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2106, i32 0, i32 2
  %1450 = load ptr, ptr %minor2107, align 8
  %1451 = load ptr, ptr %yymsp, align 8
  %arrayidx2108 = getelementptr inbounds %struct.yyStackEntry, ptr %1451, i64 -5
  %minor2109 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2108, i32 0, i32 2
  %z2110 = getelementptr inbounds nuw %struct.Token, ptr %minor2109, i32 0, i32 0
  %1452 = load ptr, ptr %z2110, align 8
  %1453 = load ptr, ptr %yymsp, align 8
  %arrayidx2111 = getelementptr inbounds %struct.yyStackEntry, ptr %1453, i64 0
  %minor2112 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2111, i32 0, i32 2
  %1454 = load ptr, ptr %minor2112, align 8
  %call2113 = call ptr @sqlite3TriggerDeleteStep(ptr noundef %1447, ptr noundef %minor2105, ptr noundef %1450, ptr noundef %1452, ptr noundef %1454)
  store ptr %call2113, ptr %yylhsminor, align 8
  %1455 = load ptr, ptr %yylhsminor, align 8
  %1456 = load ptr, ptr %yymsp, align 8
  %arrayidx2114 = getelementptr inbounds %struct.yyStackEntry, ptr %1456, i64 -5
  %minor2115 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2114, i32 0, i32 2
  store ptr %1455, ptr %minor2115, align 8
  br label %sw.epilog

sw.bb2116:                                        ; preds = %if.end6
  %1457 = load ptr, ptr %pParse.addr, align 8
  %db2117 = getelementptr inbounds nuw %struct.Parse, ptr %1457, i32 0, i32 0
  %1458 = load ptr, ptr %db2117, align 8
  %1459 = load ptr, ptr %yymsp, align 8
  %arrayidx2118 = getelementptr inbounds %struct.yyStackEntry, ptr %1459, i64 -1
  %minor2119 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2118, i32 0, i32 2
  %1460 = load ptr, ptr %minor2119, align 8
  %1461 = load ptr, ptr %yymsp, align 8
  %arrayidx2120 = getelementptr inbounds %struct.yyStackEntry, ptr %1461, i64 -2
  %minor2121 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2120, i32 0, i32 2
  %1462 = load ptr, ptr %minor2121, align 8
  %1463 = load ptr, ptr %yymsp, align 8
  %arrayidx2122 = getelementptr inbounds %struct.yyStackEntry, ptr %1463, i64 0
  %minor2123 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2122, i32 0, i32 2
  %1464 = load ptr, ptr %minor2123, align 8
  %call2124 = call ptr @sqlite3TriggerSelectStep(ptr noundef %1458, ptr noundef %1460, ptr noundef %1462, ptr noundef %1464)
  store ptr %call2124, ptr %yylhsminor, align 8
  %1465 = load ptr, ptr %yylhsminor, align 8
  %1466 = load ptr, ptr %yymsp, align 8
  %arrayidx2125 = getelementptr inbounds %struct.yyStackEntry, ptr %1466, i64 -2
  %minor2126 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2125, i32 0, i32 2
  store ptr %1465, ptr %minor2126, align 8
  br label %sw.epilog

sw.bb2127:                                        ; preds = %if.end6
  %1467 = load ptr, ptr %pParse.addr, align 8
  %call2128 = call ptr @sqlite3PExpr(ptr noundef %1467, i32 noundef 71, ptr noundef null, ptr noundef null)
  %1468 = load ptr, ptr %yymsp, align 8
  %arrayidx2129 = getelementptr inbounds %struct.yyStackEntry, ptr %1468, i64 -3
  %minor2130 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2129, i32 0, i32 2
  store ptr %call2128, ptr %minor2130, align 8
  %1469 = load ptr, ptr %yymsp, align 8
  %arrayidx2131 = getelementptr inbounds %struct.yyStackEntry, ptr %1469, i64 -3
  %minor2132 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2131, i32 0, i32 2
  %1470 = load ptr, ptr %minor2132, align 8
  %tobool2133 = icmp ne ptr %1470, null
  br i1 %tobool2133, label %if.then2134, label %if.end2137

if.then2134:                                      ; preds = %sw.bb2127
  %1471 = load ptr, ptr %yymsp, align 8
  %arrayidx2135 = getelementptr inbounds %struct.yyStackEntry, ptr %1471, i64 -3
  %minor2136 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2135, i32 0, i32 2
  %1472 = load ptr, ptr %minor2136, align 8
  %affExpr = getelementptr inbounds nuw %struct.Expr, ptr %1472, i32 0, i32 1
  store i8 4, ptr %affExpr, align 1
  br label %if.end2137

if.end2137:                                       ; preds = %if.then2134, %sw.bb2127
  br label %sw.epilog

sw.bb2138:                                        ; preds = %if.end6
  %1473 = load ptr, ptr %pParse.addr, align 8
  %db2139 = getelementptr inbounds nuw %struct.Parse, ptr %1473, i32 0, i32 0
  %1474 = load ptr, ptr %db2139, align 8
  %1475 = load ptr, ptr %yymsp, align 8
  %arrayidx2140 = getelementptr inbounds %struct.yyStackEntry, ptr %1475, i64 -1
  %minor2141 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2140, i32 0, i32 2
  %call2142 = call ptr @sqlite3ExprAlloc(ptr noundef %1474, i32 noundef 71, ptr noundef %minor2141, i32 noundef 1)
  %1476 = load ptr, ptr %yymsp, align 8
  %arrayidx2143 = getelementptr inbounds %struct.yyStackEntry, ptr %1476, i64 -5
  %minor2144 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2143, i32 0, i32 2
  store ptr %call2142, ptr %minor2144, align 8
  %1477 = load ptr, ptr %yymsp, align 8
  %arrayidx2145 = getelementptr inbounds %struct.yyStackEntry, ptr %1477, i64 -5
  %minor2146 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2145, i32 0, i32 2
  %1478 = load ptr, ptr %minor2146, align 8
  %tobool2147 = icmp ne ptr %1478, null
  br i1 %tobool2147, label %if.then2148, label %if.end2155

if.then2148:                                      ; preds = %sw.bb2138
  %1479 = load ptr, ptr %yymsp, align 8
  %arrayidx2149 = getelementptr inbounds %struct.yyStackEntry, ptr %1479, i64 -3
  %minor2150 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2149, i32 0, i32 2
  %1480 = load i32, ptr %minor2150, align 8
  %conv2151 = trunc i32 %1480 to i8
  %1481 = load ptr, ptr %yymsp, align 8
  %arrayidx2152 = getelementptr inbounds %struct.yyStackEntry, ptr %1481, i64 -5
  %minor2153 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2152, i32 0, i32 2
  %1482 = load ptr, ptr %minor2153, align 8
  %affExpr2154 = getelementptr inbounds nuw %struct.Expr, ptr %1482, i32 0, i32 1
  store i8 %conv2151, ptr %affExpr2154, align 1
  br label %if.end2155

if.end2155:                                       ; preds = %if.then2148, %sw.bb2138
  br label %sw.epilog

sw.bb2156:                                        ; preds = %if.end6
  %1483 = load ptr, ptr %yymsp, align 8
  %arrayidx2157 = getelementptr inbounds %struct.yyStackEntry, ptr %1483, i64 0
  %minor2158 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2157, i32 0, i32 2
  store i32 1, ptr %minor2158, align 8
  br label %sw.epilog

sw.bb2159:                                        ; preds = %if.end6
  %1484 = load ptr, ptr %yymsp, align 8
  %arrayidx2160 = getelementptr inbounds %struct.yyStackEntry, ptr %1484, i64 0
  %minor2161 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2160, i32 0, i32 2
  store i32 3, ptr %minor2161, align 8
  br label %sw.epilog

sw.bb2162:                                        ; preds = %if.end6
  %1485 = load ptr, ptr %pParse.addr, align 8
  %1486 = load ptr, ptr %yymsp, align 8
  %arrayidx2163 = getelementptr inbounds %struct.yyStackEntry, ptr %1486, i64 0
  %minor2164 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2163, i32 0, i32 2
  %1487 = load ptr, ptr %minor2164, align 8
  %1488 = load ptr, ptr %yymsp, align 8
  %arrayidx2165 = getelementptr inbounds %struct.yyStackEntry, ptr %1488, i64 -1
  %minor2166 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2165, i32 0, i32 2
  %1489 = load i32, ptr %minor2166, align 8
  call void @sqlite3DropTrigger(ptr noundef %1485, ptr noundef %1487, i32 noundef %1489)
  br label %sw.epilog

sw.bb2167:                                        ; preds = %if.end6
  %1490 = load ptr, ptr %pParse.addr, align 8
  %1491 = load ptr, ptr %yymsp, align 8
  %arrayidx2168 = getelementptr inbounds %struct.yyStackEntry, ptr %1491, i64 -3
  %minor2169 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2168, i32 0, i32 2
  %1492 = load ptr, ptr %minor2169, align 8
  %1493 = load ptr, ptr %yymsp, align 8
  %arrayidx2170 = getelementptr inbounds %struct.yyStackEntry, ptr %1493, i64 -1
  %minor2171 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2170, i32 0, i32 2
  %1494 = load ptr, ptr %minor2171, align 8
  %1495 = load ptr, ptr %yymsp, align 8
  %arrayidx2172 = getelementptr inbounds %struct.yyStackEntry, ptr %1495, i64 0
  %minor2173 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2172, i32 0, i32 2
  %1496 = load ptr, ptr %minor2173, align 8
  call void @sqlite3Attach(ptr noundef %1490, ptr noundef %1492, ptr noundef %1494, ptr noundef %1496)
  br label %sw.epilog

sw.bb2174:                                        ; preds = %if.end6
  %1497 = load ptr, ptr %pParse.addr, align 8
  %1498 = load ptr, ptr %yymsp, align 8
  %arrayidx2175 = getelementptr inbounds %struct.yyStackEntry, ptr %1498, i64 0
  %minor2176 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2175, i32 0, i32 2
  %1499 = load ptr, ptr %minor2176, align 8
  call void @sqlite3Detach(ptr noundef %1497, ptr noundef %1499)
  br label %sw.epilog

sw.bb2177:                                        ; preds = %if.end6
  %1500 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3Reindex(ptr noundef %1500, ptr noundef null, ptr noundef null)
  br label %sw.epilog

sw.bb2178:                                        ; preds = %if.end6
  %1501 = load ptr, ptr %pParse.addr, align 8
  %1502 = load ptr, ptr %yymsp, align 8
  %arrayidx2179 = getelementptr inbounds %struct.yyStackEntry, ptr %1502, i64 -1
  %minor2180 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2179, i32 0, i32 2
  %1503 = load ptr, ptr %yymsp, align 8
  %arrayidx2181 = getelementptr inbounds %struct.yyStackEntry, ptr %1503, i64 0
  %minor2182 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2181, i32 0, i32 2
  call void @sqlite3Reindex(ptr noundef %1501, ptr noundef %minor2180, ptr noundef %minor2182)
  br label %sw.epilog

sw.bb2183:                                        ; preds = %if.end6
  %1504 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3Analyze(ptr noundef %1504, ptr noundef null, ptr noundef null)
  br label %sw.epilog

sw.bb2184:                                        ; preds = %if.end6
  %1505 = load ptr, ptr %pParse.addr, align 8
  %1506 = load ptr, ptr %yymsp, align 8
  %arrayidx2185 = getelementptr inbounds %struct.yyStackEntry, ptr %1506, i64 -1
  %minor2186 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2185, i32 0, i32 2
  %1507 = load ptr, ptr %yymsp, align 8
  %arrayidx2187 = getelementptr inbounds %struct.yyStackEntry, ptr %1507, i64 0
  %minor2188 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2187, i32 0, i32 2
  call void @sqlite3Analyze(ptr noundef %1505, ptr noundef %minor2186, ptr noundef %minor2188)
  br label %sw.epilog

sw.bb2189:                                        ; preds = %if.end6
  %1508 = load ptr, ptr %pParse.addr, align 8
  %1509 = load ptr, ptr %yymsp, align 8
  %arrayidx2190 = getelementptr inbounds %struct.yyStackEntry, ptr %1509, i64 -3
  %minor2191 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2190, i32 0, i32 2
  %1510 = load ptr, ptr %minor2191, align 8
  %1511 = load ptr, ptr %yymsp, align 8
  %arrayidx2192 = getelementptr inbounds %struct.yyStackEntry, ptr %1511, i64 0
  %minor2193 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2192, i32 0, i32 2
  call void @sqlite3AlterRenameTable(ptr noundef %1508, ptr noundef %1510, ptr noundef %minor2193)
  br label %sw.epilog

sw.bb2194:                                        ; preds = %if.end6
  %1512 = load ptr, ptr %pParse.addr, align 8
  %sLastToken = getelementptr inbounds nuw %struct.Parse, ptr %1512, i32 0, i32 47
  %z2195 = getelementptr inbounds nuw %struct.Token, ptr %sLastToken, i32 0, i32 0
  %1513 = load ptr, ptr %z2195, align 8
  %1514 = load ptr, ptr %yymsp, align 8
  %arrayidx2196 = getelementptr inbounds %struct.yyStackEntry, ptr %1514, i64 -1
  %minor2197 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2196, i32 0, i32 2
  %z2198 = getelementptr inbounds nuw %struct.Token, ptr %minor2197, i32 0, i32 0
  %1515 = load ptr, ptr %z2198, align 8
  %sub.ptr.lhs.cast2199 = ptrtoint ptr %1513 to i64
  %sub.ptr.rhs.cast2200 = ptrtoint ptr %1515 to i64
  %sub.ptr.sub2201 = sub i64 %sub.ptr.lhs.cast2199, %sub.ptr.rhs.cast2200
  %conv2202 = trunc i64 %sub.ptr.sub2201 to i32
  %1516 = load ptr, ptr %pParse.addr, align 8
  %sLastToken2203 = getelementptr inbounds nuw %struct.Parse, ptr %1516, i32 0, i32 47
  %n2204 = getelementptr inbounds nuw %struct.Token, ptr %sLastToken2203, i32 0, i32 1
  %1517 = load i32, ptr %n2204, align 8
  %add2205 = add i32 %conv2202, %1517
  %1518 = load ptr, ptr %yymsp, align 8
  %arrayidx2206 = getelementptr inbounds %struct.yyStackEntry, ptr %1518, i64 -1
  %minor2207 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2206, i32 0, i32 2
  %n2208 = getelementptr inbounds nuw %struct.Token, ptr %minor2207, i32 0, i32 1
  store i32 %add2205, ptr %n2208, align 8
  %1519 = load ptr, ptr %pParse.addr, align 8
  %1520 = load ptr, ptr %yymsp, align 8
  %arrayidx2209 = getelementptr inbounds %struct.yyStackEntry, ptr %1520, i64 -1
  %minor2210 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2209, i32 0, i32 2
  call void @sqlite3AlterFinishAddColumn(ptr noundef %1519, ptr noundef %minor2210)
  br label %sw.epilog

sw.bb2211:                                        ; preds = %if.end6
  %1521 = load ptr, ptr %pParse.addr, align 8
  call void @disableLookaside(ptr noundef %1521)
  %1522 = load ptr, ptr %pParse.addr, align 8
  %1523 = load ptr, ptr %yymsp, align 8
  %arrayidx2212 = getelementptr inbounds %struct.yyStackEntry, ptr %1523, i64 0
  %minor2213 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2212, i32 0, i32 2
  %1524 = load ptr, ptr %minor2213, align 8
  call void @sqlite3AlterBeginAddColumn(ptr noundef %1522, ptr noundef %1524)
  br label %sw.epilog

sw.bb2214:                                        ; preds = %if.end6
  %1525 = load ptr, ptr %pParse.addr, align 8
  %1526 = load ptr, ptr %yymsp, align 8
  %arrayidx2215 = getelementptr inbounds %struct.yyStackEntry, ptr %1526, i64 -5
  %minor2216 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2215, i32 0, i32 2
  %1527 = load ptr, ptr %minor2216, align 8
  %1528 = load ptr, ptr %yymsp, align 8
  %arrayidx2217 = getelementptr inbounds %struct.yyStackEntry, ptr %1528, i64 -2
  %minor2218 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2217, i32 0, i32 2
  %1529 = load ptr, ptr %yymsp, align 8
  %arrayidx2219 = getelementptr inbounds %struct.yyStackEntry, ptr %1529, i64 0
  %minor2220 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2219, i32 0, i32 2
  call void @sqlite3AlterRenameColumn(ptr noundef %1525, ptr noundef %1527, ptr noundef %minor2218, ptr noundef %minor2220)
  br label %sw.epilog

sw.bb2221:                                        ; preds = %if.end6
  %1530 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3VtabFinishParse(ptr noundef %1530, ptr noundef null)
  br label %sw.epilog

sw.bb2222:                                        ; preds = %if.end6
  %1531 = load ptr, ptr %pParse.addr, align 8
  %1532 = load ptr, ptr %yymsp, align 8
  %arrayidx2223 = getelementptr inbounds %struct.yyStackEntry, ptr %1532, i64 0
  %minor2224 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2223, i32 0, i32 2
  call void @sqlite3VtabFinishParse(ptr noundef %1531, ptr noundef %minor2224)
  br label %sw.epilog

sw.bb2225:                                        ; preds = %if.end6
  %1533 = load ptr, ptr %pParse.addr, align 8
  %1534 = load ptr, ptr %yymsp, align 8
  %arrayidx2226 = getelementptr inbounds %struct.yyStackEntry, ptr %1534, i64 -3
  %minor2227 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2226, i32 0, i32 2
  %1535 = load ptr, ptr %yymsp, align 8
  %arrayidx2228 = getelementptr inbounds %struct.yyStackEntry, ptr %1535, i64 -2
  %minor2229 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2228, i32 0, i32 2
  %1536 = load ptr, ptr %yymsp, align 8
  %arrayidx2230 = getelementptr inbounds %struct.yyStackEntry, ptr %1536, i64 0
  %minor2231 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2230, i32 0, i32 2
  %1537 = load ptr, ptr %yymsp, align 8
  %arrayidx2232 = getelementptr inbounds %struct.yyStackEntry, ptr %1537, i64 -4
  %minor2233 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2232, i32 0, i32 2
  %1538 = load i32, ptr %minor2233, align 8
  call void @sqlite3VtabBeginParse(ptr noundef %1533, ptr noundef %minor2227, ptr noundef %minor2229, ptr noundef %minor2231, i32 noundef %1538)
  br label %sw.epilog

sw.bb2234:                                        ; preds = %if.end6
  %1539 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3VtabArgInit(ptr noundef %1539)
  br label %sw.epilog

sw.bb2235:                                        ; preds = %if.end6, %if.end6
  br label %sw.bb2236

sw.bb2236:                                        ; preds = %sw.bb2235, %if.end6
  %1540 = load ptr, ptr %pParse.addr, align 8
  %1541 = load ptr, ptr %yymsp, align 8
  %arrayidx2237 = getelementptr inbounds %struct.yyStackEntry, ptr %1541, i64 0
  %minor2238 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2237, i32 0, i32 2
  call void @sqlite3VtabArgExtend(ptr noundef %1540, ptr noundef %minor2238)
  br label %sw.epilog

sw.bb2239:                                        ; preds = %if.end6, %if.end6
  %1542 = load ptr, ptr %pParse.addr, align 8
  %1543 = load ptr, ptr %yymsp, align 8
  %arrayidx2240 = getelementptr inbounds %struct.yyStackEntry, ptr %1543, i64 0
  %minor2241 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2240, i32 0, i32 2
  %1544 = load ptr, ptr %minor2241, align 8
  call void @sqlite3WithPush(ptr noundef %1542, ptr noundef %1544, i8 noundef zeroext 1)
  br label %sw.epilog

sw.bb2242:                                        ; preds = %if.end6
  %1545 = load ptr, ptr %pParse.addr, align 8
  %1546 = load ptr, ptr %yymsp, align 8
  %arrayidx2243 = getelementptr inbounds %struct.yyStackEntry, ptr %1546, i64 -5
  %minor2244 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2243, i32 0, i32 2
  %1547 = load ptr, ptr %yymsp, align 8
  %arrayidx2245 = getelementptr inbounds %struct.yyStackEntry, ptr %1547, i64 -4
  %minor2246 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2245, i32 0, i32 2
  %1548 = load ptr, ptr %minor2246, align 8
  %1549 = load ptr, ptr %yymsp, align 8
  %arrayidx2247 = getelementptr inbounds %struct.yyStackEntry, ptr %1549, i64 -1
  %minor2248 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2247, i32 0, i32 2
  %1550 = load ptr, ptr %minor2248, align 8
  %call2249 = call ptr @sqlite3WithAdd(ptr noundef %1545, ptr noundef null, ptr noundef %minor2244, ptr noundef %1548, ptr noundef %1550)
  %1551 = load ptr, ptr %yymsp, align 8
  %arrayidx2250 = getelementptr inbounds %struct.yyStackEntry, ptr %1551, i64 -5
  %minor2251 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2250, i32 0, i32 2
  store ptr %call2249, ptr %minor2251, align 8
  br label %sw.epilog

sw.bb2252:                                        ; preds = %if.end6
  %1552 = load ptr, ptr %pParse.addr, align 8
  %1553 = load ptr, ptr %yymsp, align 8
  %arrayidx2253 = getelementptr inbounds %struct.yyStackEntry, ptr %1553, i64 -7
  %minor2254 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2253, i32 0, i32 2
  %1554 = load ptr, ptr %minor2254, align 8
  %1555 = load ptr, ptr %yymsp, align 8
  %arrayidx2255 = getelementptr inbounds %struct.yyStackEntry, ptr %1555, i64 -5
  %minor2256 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2255, i32 0, i32 2
  %1556 = load ptr, ptr %yymsp, align 8
  %arrayidx2257 = getelementptr inbounds %struct.yyStackEntry, ptr %1556, i64 -4
  %minor2258 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2257, i32 0, i32 2
  %1557 = load ptr, ptr %minor2258, align 8
  %1558 = load ptr, ptr %yymsp, align 8
  %arrayidx2259 = getelementptr inbounds %struct.yyStackEntry, ptr %1558, i64 -1
  %minor2260 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2259, i32 0, i32 2
  %1559 = load ptr, ptr %minor2260, align 8
  %call2261 = call ptr @sqlite3WithAdd(ptr noundef %1552, ptr noundef %1554, ptr noundef %minor2256, ptr noundef %1557, ptr noundef %1559)
  %1560 = load ptr, ptr %yymsp, align 8
  %arrayidx2262 = getelementptr inbounds %struct.yyStackEntry, ptr %1560, i64 -7
  %minor2263 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2262, i32 0, i32 2
  store ptr %call2261, ptr %minor2263, align 8
  br label %sw.epilog

sw.bb2264:                                        ; preds = %if.end6
  %1561 = load ptr, ptr %yymsp, align 8
  %arrayidx2265 = getelementptr inbounds %struct.yyStackEntry, ptr %1561, i64 0
  %minor2266 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2265, i32 0, i32 2
  %1562 = load ptr, ptr %minor2266, align 8
  store ptr %1562, ptr %yylhsminor, align 8
  %1563 = load ptr, ptr %yylhsminor, align 8
  %1564 = load ptr, ptr %yymsp, align 8
  %arrayidx2267 = getelementptr inbounds %struct.yyStackEntry, ptr %1564, i64 0
  %minor2268 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2267, i32 0, i32 2
  store ptr %1563, ptr %minor2268, align 8
  br label %sw.epilog

sw.bb2269:                                        ; preds = %if.end6
  %1565 = load ptr, ptr %pParse.addr, align 8
  %1566 = load ptr, ptr %yymsp, align 8
  %arrayidx2270 = getelementptr inbounds %struct.yyStackEntry, ptr %1566, i64 0
  %minor2271 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2270, i32 0, i32 2
  %1567 = load ptr, ptr %minor2271, align 8
  %1568 = load ptr, ptr %yymsp, align 8
  %arrayidx2272 = getelementptr inbounds %struct.yyStackEntry, ptr %1568, i64 -2
  %minor2273 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2272, i32 0, i32 2
  %1569 = load ptr, ptr %minor2273, align 8
  call void @sqlite3WindowChain(ptr noundef %1565, ptr noundef %1567, ptr noundef %1569)
  %1570 = load ptr, ptr %yymsp, align 8
  %arrayidx2274 = getelementptr inbounds %struct.yyStackEntry, ptr %1570, i64 -2
  %minor2275 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2274, i32 0, i32 2
  %1571 = load ptr, ptr %minor2275, align 8
  %1572 = load ptr, ptr %yymsp, align 8
  %arrayidx2276 = getelementptr inbounds %struct.yyStackEntry, ptr %1572, i64 0
  %minor2277 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2276, i32 0, i32 2
  %1573 = load ptr, ptr %minor2277, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %1573, i32 0, i32 12
  store ptr %1571, ptr %pNextWin, align 8
  %1574 = load ptr, ptr %yymsp, align 8
  %arrayidx2278 = getelementptr inbounds %struct.yyStackEntry, ptr %1574, i64 0
  %minor2279 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2278, i32 0, i32 2
  %1575 = load ptr, ptr %minor2279, align 8
  store ptr %1575, ptr %yylhsminor, align 8
  %1576 = load ptr, ptr %yylhsminor, align 8
  %1577 = load ptr, ptr %yymsp, align 8
  %arrayidx2280 = getelementptr inbounds %struct.yyStackEntry, ptr %1577, i64 -2
  %minor2281 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2280, i32 0, i32 2
  store ptr %1576, ptr %minor2281, align 8
  br label %sw.epilog

sw.bb2282:                                        ; preds = %if.end6
  %1578 = load ptr, ptr %yymsp, align 8
  %arrayidx2283 = getelementptr inbounds %struct.yyStackEntry, ptr %1578, i64 -1
  %minor2284 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2283, i32 0, i32 2
  %1579 = load ptr, ptr %minor2284, align 8
  %tobool2285 = icmp ne ptr %1579, null
  br i1 %tobool2285, label %if.then2286, label %if.end2299

if.then2286:                                      ; preds = %sw.bb2282
  %1580 = load ptr, ptr %pParse.addr, align 8
  %db2287 = getelementptr inbounds nuw %struct.Parse, ptr %1580, i32 0, i32 0
  %1581 = load ptr, ptr %db2287, align 8
  %1582 = load ptr, ptr %yymsp, align 8
  %arrayidx2288 = getelementptr inbounds %struct.yyStackEntry, ptr %1582, i64 -4
  %minor2289 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2288, i32 0, i32 2
  %z2290 = getelementptr inbounds nuw %struct.Token, ptr %minor2289, i32 0, i32 0
  %1583 = load ptr, ptr %z2290, align 8
  %1584 = load ptr, ptr %yymsp, align 8
  %arrayidx2291 = getelementptr inbounds %struct.yyStackEntry, ptr %1584, i64 -4
  %minor2292 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2291, i32 0, i32 2
  %n2293 = getelementptr inbounds nuw %struct.Token, ptr %minor2292, i32 0, i32 1
  %1585 = load i32, ptr %n2293, align 8
  %conv2294 = zext i32 %1585 to i64
  %call2295 = call ptr @sqlite3DbStrNDup(ptr noundef %1581, ptr noundef %1583, i64 noundef %conv2294)
  %1586 = load ptr, ptr %yymsp, align 8
  %arrayidx2296 = getelementptr inbounds %struct.yyStackEntry, ptr %1586, i64 -1
  %minor2297 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2296, i32 0, i32 2
  %1587 = load ptr, ptr %minor2297, align 8
  %zName2298 = getelementptr inbounds nuw %struct.Window, ptr %1587, i32 0, i32 0
  store ptr %call2295, ptr %zName2298, align 8
  br label %if.end2299

if.end2299:                                       ; preds = %if.then2286, %sw.bb2282
  %1588 = load ptr, ptr %yymsp, align 8
  %arrayidx2300 = getelementptr inbounds %struct.yyStackEntry, ptr %1588, i64 -1
  %minor2301 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2300, i32 0, i32 2
  %1589 = load ptr, ptr %minor2301, align 8
  store ptr %1589, ptr %yylhsminor, align 8
  %1590 = load ptr, ptr %yylhsminor, align 8
  %1591 = load ptr, ptr %yymsp, align 8
  %arrayidx2302 = getelementptr inbounds %struct.yyStackEntry, ptr %1591, i64 -4
  %minor2303 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2302, i32 0, i32 2
  store ptr %1590, ptr %minor2303, align 8
  br label %sw.epilog

sw.bb2304:                                        ; preds = %if.end6
  %1592 = load ptr, ptr %pParse.addr, align 8
  %1593 = load ptr, ptr %yymsp, align 8
  %arrayidx2305 = getelementptr inbounds %struct.yyStackEntry, ptr %1593, i64 0
  %minor2306 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2305, i32 0, i32 2
  %1594 = load ptr, ptr %minor2306, align 8
  %1595 = load ptr, ptr %yymsp, align 8
  %arrayidx2307 = getelementptr inbounds %struct.yyStackEntry, ptr %1595, i64 -2
  %minor2308 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2307, i32 0, i32 2
  %1596 = load ptr, ptr %minor2308, align 8
  %1597 = load ptr, ptr %yymsp, align 8
  %arrayidx2309 = getelementptr inbounds %struct.yyStackEntry, ptr %1597, i64 -1
  %minor2310 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2309, i32 0, i32 2
  %1598 = load ptr, ptr %minor2310, align 8
  %call2311 = call ptr @sqlite3WindowAssemble(ptr noundef %1592, ptr noundef %1594, ptr noundef %1596, ptr noundef %1598, ptr noundef null)
  %1599 = load ptr, ptr %yymsp, align 8
  %arrayidx2312 = getelementptr inbounds %struct.yyStackEntry, ptr %1599, i64 -4
  %minor2313 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2312, i32 0, i32 2
  store ptr %call2311, ptr %minor2313, align 8
  br label %sw.epilog

sw.bb2314:                                        ; preds = %if.end6
  %1600 = load ptr, ptr %pParse.addr, align 8
  %1601 = load ptr, ptr %yymsp, align 8
  %arrayidx2315 = getelementptr inbounds %struct.yyStackEntry, ptr %1601, i64 0
  %minor2316 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2315, i32 0, i32 2
  %1602 = load ptr, ptr %minor2316, align 8
  %1603 = load ptr, ptr %yymsp, align 8
  %arrayidx2317 = getelementptr inbounds %struct.yyStackEntry, ptr %1603, i64 -2
  %minor2318 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2317, i32 0, i32 2
  %1604 = load ptr, ptr %minor2318, align 8
  %1605 = load ptr, ptr %yymsp, align 8
  %arrayidx2319 = getelementptr inbounds %struct.yyStackEntry, ptr %1605, i64 -1
  %minor2320 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2319, i32 0, i32 2
  %1606 = load ptr, ptr %minor2320, align 8
  %1607 = load ptr, ptr %yymsp, align 8
  %arrayidx2321 = getelementptr inbounds %struct.yyStackEntry, ptr %1607, i64 -5
  %minor2322 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2321, i32 0, i32 2
  %call2323 = call ptr @sqlite3WindowAssemble(ptr noundef %1600, ptr noundef %1602, ptr noundef %1604, ptr noundef %1606, ptr noundef %minor2322)
  store ptr %call2323, ptr %yylhsminor, align 8
  %1608 = load ptr, ptr %yylhsminor, align 8
  %1609 = load ptr, ptr %yymsp, align 8
  %arrayidx2324 = getelementptr inbounds %struct.yyStackEntry, ptr %1609, i64 -5
  %minor2325 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2324, i32 0, i32 2
  store ptr %1608, ptr %minor2325, align 8
  br label %sw.epilog

sw.bb2326:                                        ; preds = %if.end6
  %1610 = load ptr, ptr %pParse.addr, align 8
  %1611 = load ptr, ptr %yymsp, align 8
  %arrayidx2327 = getelementptr inbounds %struct.yyStackEntry, ptr %1611, i64 0
  %minor2328 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2327, i32 0, i32 2
  %1612 = load ptr, ptr %minor2328, align 8
  %1613 = load ptr, ptr %yymsp, align 8
  %arrayidx2329 = getelementptr inbounds %struct.yyStackEntry, ptr %1613, i64 -1
  %minor2330 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2329, i32 0, i32 2
  %1614 = load ptr, ptr %minor2330, align 8
  %call2331 = call ptr @sqlite3WindowAssemble(ptr noundef %1610, ptr noundef %1612, ptr noundef null, ptr noundef %1614, ptr noundef null)
  %1615 = load ptr, ptr %yymsp, align 8
  %arrayidx2332 = getelementptr inbounds %struct.yyStackEntry, ptr %1615, i64 -3
  %minor2333 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2332, i32 0, i32 2
  store ptr %call2331, ptr %minor2333, align 8
  br label %sw.epilog

sw.bb2334:                                        ; preds = %if.end6
  %1616 = load ptr, ptr %pParse.addr, align 8
  %1617 = load ptr, ptr %yymsp, align 8
  %arrayidx2335 = getelementptr inbounds %struct.yyStackEntry, ptr %1617, i64 0
  %minor2336 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2335, i32 0, i32 2
  %1618 = load ptr, ptr %minor2336, align 8
  %1619 = load ptr, ptr %yymsp, align 8
  %arrayidx2337 = getelementptr inbounds %struct.yyStackEntry, ptr %1619, i64 -1
  %minor2338 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2337, i32 0, i32 2
  %1620 = load ptr, ptr %minor2338, align 8
  %1621 = load ptr, ptr %yymsp, align 8
  %arrayidx2339 = getelementptr inbounds %struct.yyStackEntry, ptr %1621, i64 -4
  %minor2340 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2339, i32 0, i32 2
  %call2341 = call ptr @sqlite3WindowAssemble(ptr noundef %1616, ptr noundef %1618, ptr noundef null, ptr noundef %1620, ptr noundef %minor2340)
  store ptr %call2341, ptr %yylhsminor, align 8
  %1622 = load ptr, ptr %yylhsminor, align 8
  %1623 = load ptr, ptr %yymsp, align 8
  %arrayidx2342 = getelementptr inbounds %struct.yyStackEntry, ptr %1623, i64 -4
  %minor2343 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2342, i32 0, i32 2
  store ptr %1622, ptr %minor2343, align 8
  br label %sw.epilog

sw.bb2344:                                        ; preds = %if.end6, %if.end6
  %1624 = load ptr, ptr %yymsp, align 8
  %arrayidx2345 = getelementptr inbounds %struct.yyStackEntry, ptr %1624, i64 0
  %minor2346 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2345, i32 0, i32 2
  %1625 = load ptr, ptr %minor2346, align 8
  store ptr %1625, ptr %yylhsminor, align 8
  %1626 = load ptr, ptr %yylhsminor, align 8
  %1627 = load ptr, ptr %yymsp, align 8
  %arrayidx2347 = getelementptr inbounds %struct.yyStackEntry, ptr %1627, i64 0
  %minor2348 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2347, i32 0, i32 2
  store ptr %1626, ptr %minor2348, align 8
  br label %sw.epilog

sw.bb2349:                                        ; preds = %if.end6
  %1628 = load ptr, ptr %pParse.addr, align 8
  %1629 = load ptr, ptr %yymsp, align 8
  %arrayidx2350 = getelementptr inbounds %struct.yyStackEntry, ptr %1629, i64 0
  %minor2351 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2350, i32 0, i32 2
  %1630 = load ptr, ptr %minor2351, align 8
  %1631 = load ptr, ptr %yymsp, align 8
  %arrayidx2352 = getelementptr inbounds %struct.yyStackEntry, ptr %1631, i64 -1
  %minor2353 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2352, i32 0, i32 2
  %call2354 = call ptr @sqlite3WindowAssemble(ptr noundef %1628, ptr noundef %1630, ptr noundef null, ptr noundef null, ptr noundef %minor2353)
  store ptr %call2354, ptr %yylhsminor, align 8
  %1632 = load ptr, ptr %yylhsminor, align 8
  %1633 = load ptr, ptr %yymsp, align 8
  %arrayidx2355 = getelementptr inbounds %struct.yyStackEntry, ptr %1633, i64 -1
  %minor2356 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2355, i32 0, i32 2
  store ptr %1632, ptr %minor2356, align 8
  br label %sw.epilog

sw.bb2357:                                        ; preds = %if.end6
  %1634 = load ptr, ptr %pParse.addr, align 8
  %call2358 = call ptr @sqlite3WindowAlloc(ptr noundef %1634, i32 noundef 0, i32 noundef 90, ptr noundef null, i32 noundef 85, ptr noundef null, i8 noundef zeroext 0)
  %1635 = load ptr, ptr %yymsp, align 8
  %arrayidx2359 = getelementptr inbounds %struct.yyStackEntry, ptr %1635, i64 1
  %minor2360 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2359, i32 0, i32 2
  store ptr %call2358, ptr %minor2360, align 8
  br label %sw.epilog

sw.bb2361:                                        ; preds = %if.end6
  %1636 = load ptr, ptr %pParse.addr, align 8
  %1637 = load ptr, ptr %yymsp, align 8
  %arrayidx2362 = getelementptr inbounds %struct.yyStackEntry, ptr %1637, i64 -2
  %minor2363 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2362, i32 0, i32 2
  %1638 = load i32, ptr %minor2363, align 8
  %1639 = load ptr, ptr %yymsp, align 8
  %arrayidx2364 = getelementptr inbounds %struct.yyStackEntry, ptr %1639, i64 -1
  %minor2365 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2364, i32 0, i32 2
  %eType = getelementptr inbounds nuw %struct.FrameBound, ptr %minor2365, i32 0, i32 0
  %1640 = load i32, ptr %eType, align 8
  %1641 = load ptr, ptr %yymsp, align 8
  %arrayidx2366 = getelementptr inbounds %struct.yyStackEntry, ptr %1641, i64 -1
  %minor2367 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2366, i32 0, i32 2
  %pExpr = getelementptr inbounds nuw %struct.FrameBound, ptr %minor2367, i32 0, i32 1
  %1642 = load ptr, ptr %pExpr, align 8
  %1643 = load ptr, ptr %yymsp, align 8
  %arrayidx2368 = getelementptr inbounds %struct.yyStackEntry, ptr %1643, i64 0
  %minor2369 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2368, i32 0, i32 2
  %1644 = load i8, ptr %minor2369, align 8
  %call2370 = call ptr @sqlite3WindowAlloc(ptr noundef %1636, i32 noundef %1638, i32 noundef %1640, ptr noundef %1642, i32 noundef 85, ptr noundef null, i8 noundef zeroext %1644)
  store ptr %call2370, ptr %yylhsminor, align 8
  %1645 = load ptr, ptr %yylhsminor, align 8
  %1646 = load ptr, ptr %yymsp, align 8
  %arrayidx2371 = getelementptr inbounds %struct.yyStackEntry, ptr %1646, i64 -2
  %minor2372 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2371, i32 0, i32 2
  store ptr %1645, ptr %minor2372, align 8
  br label %sw.epilog

sw.bb2373:                                        ; preds = %if.end6
  %1647 = load ptr, ptr %pParse.addr, align 8
  %1648 = load ptr, ptr %yymsp, align 8
  %arrayidx2374 = getelementptr inbounds %struct.yyStackEntry, ptr %1648, i64 -5
  %minor2375 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2374, i32 0, i32 2
  %1649 = load i32, ptr %minor2375, align 8
  %1650 = load ptr, ptr %yymsp, align 8
  %arrayidx2376 = getelementptr inbounds %struct.yyStackEntry, ptr %1650, i64 -3
  %minor2377 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2376, i32 0, i32 2
  %eType2378 = getelementptr inbounds nuw %struct.FrameBound, ptr %minor2377, i32 0, i32 0
  %1651 = load i32, ptr %eType2378, align 8
  %1652 = load ptr, ptr %yymsp, align 8
  %arrayidx2379 = getelementptr inbounds %struct.yyStackEntry, ptr %1652, i64 -3
  %minor2380 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2379, i32 0, i32 2
  %pExpr2381 = getelementptr inbounds nuw %struct.FrameBound, ptr %minor2380, i32 0, i32 1
  %1653 = load ptr, ptr %pExpr2381, align 8
  %1654 = load ptr, ptr %yymsp, align 8
  %arrayidx2382 = getelementptr inbounds %struct.yyStackEntry, ptr %1654, i64 -1
  %minor2383 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2382, i32 0, i32 2
  %eType2384 = getelementptr inbounds nuw %struct.FrameBound, ptr %minor2383, i32 0, i32 0
  %1655 = load i32, ptr %eType2384, align 8
  %1656 = load ptr, ptr %yymsp, align 8
  %arrayidx2385 = getelementptr inbounds %struct.yyStackEntry, ptr %1656, i64 -1
  %minor2386 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2385, i32 0, i32 2
  %pExpr2387 = getelementptr inbounds nuw %struct.FrameBound, ptr %minor2386, i32 0, i32 1
  %1657 = load ptr, ptr %pExpr2387, align 8
  %1658 = load ptr, ptr %yymsp, align 8
  %arrayidx2388 = getelementptr inbounds %struct.yyStackEntry, ptr %1658, i64 0
  %minor2389 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2388, i32 0, i32 2
  %1659 = load i8, ptr %minor2389, align 8
  %call2390 = call ptr @sqlite3WindowAlloc(ptr noundef %1647, i32 noundef %1649, i32 noundef %1651, ptr noundef %1653, i32 noundef %1655, ptr noundef %1657, i8 noundef zeroext %1659)
  store ptr %call2390, ptr %yylhsminor, align 8
  %1660 = load ptr, ptr %yylhsminor, align 8
  %1661 = load ptr, ptr %yymsp, align 8
  %arrayidx2391 = getelementptr inbounds %struct.yyStackEntry, ptr %1661, i64 -5
  %minor2392 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2391, i32 0, i32 2
  store ptr %1660, ptr %minor2392, align 8
  br label %sw.epilog

sw.bb2393:                                        ; preds = %if.end6, %if.end6
  %1662 = load ptr, ptr %yymsp, align 8
  %arrayidx2394 = getelementptr inbounds %struct.yyStackEntry, ptr %1662, i64 0
  %minor2395 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2394, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %yylhsminor, ptr align 8 %minor2395, i64 16, i1 false)
  %1663 = load ptr, ptr %yymsp, align 8
  %arrayidx2396 = getelementptr inbounds %struct.yyStackEntry, ptr %1663, i64 0
  %minor2397 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2396, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor2397, ptr align 8 %yylhsminor, i64 16, i1 false)
  br label %sw.epilog

sw.bb2398:                                        ; preds = %if.end6, %if.end6
  br label %sw.bb2399

sw.bb2399:                                        ; preds = %sw.bb2398, %if.end6
  %1664 = load ptr, ptr %yymsp, align 8
  %arrayidx2400 = getelementptr inbounds %struct.yyStackEntry, ptr %1664, i64 -1
  %major2401 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2400, i32 0, i32 1
  %1665 = load i16, ptr %major2401, align 2
  %conv2402 = zext i16 %1665 to i32
  %eType2403 = getelementptr inbounds nuw %struct.FrameBound, ptr %yylhsminor, i32 0, i32 0
  store i32 %conv2402, ptr %eType2403, align 8
  %pExpr2404 = getelementptr inbounds nuw %struct.FrameBound, ptr %yylhsminor, i32 0, i32 1
  store ptr null, ptr %pExpr2404, align 8
  %1666 = load ptr, ptr %yymsp, align 8
  %arrayidx2405 = getelementptr inbounds %struct.yyStackEntry, ptr %1666, i64 -1
  %minor2406 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2405, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor2406, ptr align 8 %yylhsminor, i64 16, i1 false)
  br label %sw.epilog

sw.bb2407:                                        ; preds = %if.end6
  %1667 = load ptr, ptr %yymsp, align 8
  %arrayidx2408 = getelementptr inbounds %struct.yyStackEntry, ptr %1667, i64 0
  %major2409 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2408, i32 0, i32 1
  %1668 = load i16, ptr %major2409, align 2
  %conv2410 = zext i16 %1668 to i32
  %eType2411 = getelementptr inbounds nuw %struct.FrameBound, ptr %yylhsminor, i32 0, i32 0
  store i32 %conv2410, ptr %eType2411, align 8
  %1669 = load ptr, ptr %yymsp, align 8
  %arrayidx2412 = getelementptr inbounds %struct.yyStackEntry, ptr %1669, i64 -1
  %minor2413 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2412, i32 0, i32 2
  %1670 = load ptr, ptr %minor2413, align 8
  %pExpr2414 = getelementptr inbounds nuw %struct.FrameBound, ptr %yylhsminor, i32 0, i32 1
  store ptr %1670, ptr %pExpr2414, align 8
  %1671 = load ptr, ptr %yymsp, align 8
  %arrayidx2415 = getelementptr inbounds %struct.yyStackEntry, ptr %1671, i64 -1
  %minor2416 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2415, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minor2416, ptr align 8 %yylhsminor, i64 16, i1 false)
  br label %sw.epilog

sw.bb2417:                                        ; preds = %if.end6
  %1672 = load ptr, ptr %yymsp, align 8
  %arrayidx2418 = getelementptr inbounds %struct.yyStackEntry, ptr %1672, i64 1
  %minor2419 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2418, i32 0, i32 2
  store i8 0, ptr %minor2419, align 8
  br label %sw.epilog

sw.bb2420:                                        ; preds = %if.end6
  %1673 = load ptr, ptr %yymsp, align 8
  %arrayidx2421 = getelementptr inbounds %struct.yyStackEntry, ptr %1673, i64 0
  %minor2422 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2421, i32 0, i32 2
  %1674 = load i8, ptr %minor2422, align 8
  %1675 = load ptr, ptr %yymsp, align 8
  %arrayidx2423 = getelementptr inbounds %struct.yyStackEntry, ptr %1675, i64 -1
  %minor2424 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2423, i32 0, i32 2
  store i8 %1674, ptr %minor2424, align 8
  br label %sw.epilog

sw.bb2425:                                        ; preds = %if.end6, %if.end6
  %1676 = load ptr, ptr %yymsp, align 8
  %arrayidx2426 = getelementptr inbounds %struct.yyStackEntry, ptr %1676, i64 -1
  %major2427 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2426, i32 0, i32 1
  %1677 = load i16, ptr %major2427, align 2
  %conv2428 = trunc i16 %1677 to i8
  %1678 = load ptr, ptr %yymsp, align 8
  %arrayidx2429 = getelementptr inbounds %struct.yyStackEntry, ptr %1678, i64 -1
  %minor2430 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2429, i32 0, i32 2
  store i8 %conv2428, ptr %minor2430, align 8
  br label %sw.epilog

sw.bb2431:                                        ; preds = %if.end6
  %1679 = load ptr, ptr %yymsp, align 8
  %arrayidx2432 = getelementptr inbounds %struct.yyStackEntry, ptr %1679, i64 0
  %major2433 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2432, i32 0, i32 1
  %1680 = load i16, ptr %major2433, align 2
  %conv2434 = trunc i16 %1680 to i8
  %1681 = load ptr, ptr %yymsp, align 8
  %arrayidx2435 = getelementptr inbounds %struct.yyStackEntry, ptr %1681, i64 0
  %minor2436 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2435, i32 0, i32 2
  store i8 %conv2434, ptr %minor2436, align 8
  br label %sw.epilog

sw.bb2437:                                        ; preds = %if.end6
  %1682 = load ptr, ptr %yymsp, align 8
  %arrayidx2438 = getelementptr inbounds %struct.yyStackEntry, ptr %1682, i64 0
  %minor2439 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2438, i32 0, i32 2
  %1683 = load ptr, ptr %minor2439, align 8
  %1684 = load ptr, ptr %yymsp, align 8
  %arrayidx2440 = getelementptr inbounds %struct.yyStackEntry, ptr %1684, i64 -1
  %minor2441 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2440, i32 0, i32 2
  store ptr %1683, ptr %minor2441, align 8
  br label %sw.epilog

sw.bb2442:                                        ; preds = %if.end6
  %1685 = load ptr, ptr %yymsp, align 8
  %arrayidx2443 = getelementptr inbounds %struct.yyStackEntry, ptr %1685, i64 -1
  %minor2444 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2443, i32 0, i32 2
  %1686 = load ptr, ptr %minor2444, align 8
  %1687 = load ptr, ptr %yymsp, align 8
  %arrayidx2445 = getelementptr inbounds %struct.yyStackEntry, ptr %1687, i64 0
  %minor2446 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2445, i32 0, i32 2
  %1688 = load ptr, ptr %minor2446, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %1688, i32 0, i32 13
  store ptr %1686, ptr %pFilter, align 8
  %1689 = load ptr, ptr %yymsp, align 8
  %arrayidx2447 = getelementptr inbounds %struct.yyStackEntry, ptr %1689, i64 0
  %minor2448 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2447, i32 0, i32 2
  %1690 = load ptr, ptr %minor2448, align 8
  store ptr %1690, ptr %yylhsminor, align 8
  %1691 = load ptr, ptr %yylhsminor, align 8
  %1692 = load ptr, ptr %yymsp, align 8
  %arrayidx2449 = getelementptr inbounds %struct.yyStackEntry, ptr %1692, i64 -1
  %minor2450 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2449, i32 0, i32 2
  store ptr %1691, ptr %minor2450, align 8
  br label %sw.epilog

sw.bb2451:                                        ; preds = %if.end6
  %1693 = load ptr, ptr %pParse.addr, align 8
  %db2452 = getelementptr inbounds nuw %struct.Parse, ptr %1693, i32 0, i32 0
  %1694 = load ptr, ptr %db2452, align 8
  %call2453 = call ptr @sqlite3DbMallocZero(ptr noundef %1694, i64 noundef 144)
  store ptr %call2453, ptr %yylhsminor, align 8
  %1695 = load ptr, ptr %yylhsminor, align 8
  %tobool2454 = icmp ne ptr %1695, null
  br i1 %tobool2454, label %if.then2455, label %if.else2459

if.then2455:                                      ; preds = %sw.bb2451
  %1696 = load ptr, ptr %yylhsminor, align 8
  %eFrmType = getelementptr inbounds nuw %struct.Window, ptr %1696, i32 0, i32 4
  store i8 -95, ptr %eFrmType, align 8
  %1697 = load ptr, ptr %yymsp, align 8
  %arrayidx2456 = getelementptr inbounds %struct.yyStackEntry, ptr %1697, i64 0
  %minor2457 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2456, i32 0, i32 2
  %1698 = load ptr, ptr %minor2457, align 8
  %1699 = load ptr, ptr %yylhsminor, align 8
  %pFilter2458 = getelementptr inbounds nuw %struct.Window, ptr %1699, i32 0, i32 13
  store ptr %1698, ptr %pFilter2458, align 8
  br label %if.end2463

if.else2459:                                      ; preds = %sw.bb2451
  %1700 = load ptr, ptr %pParse.addr, align 8
  %db2460 = getelementptr inbounds nuw %struct.Parse, ptr %1700, i32 0, i32 0
  %1701 = load ptr, ptr %db2460, align 8
  %1702 = load ptr, ptr %yymsp, align 8
  %arrayidx2461 = getelementptr inbounds %struct.yyStackEntry, ptr %1702, i64 0
  %minor2462 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2461, i32 0, i32 2
  %1703 = load ptr, ptr %minor2462, align 8
  call void @sqlite3ExprDelete(ptr noundef %1701, ptr noundef %1703)
  br label %if.end2463

if.end2463:                                       ; preds = %if.else2459, %if.then2455
  %1704 = load ptr, ptr %yylhsminor, align 8
  %1705 = load ptr, ptr %yymsp, align 8
  %arrayidx2464 = getelementptr inbounds %struct.yyStackEntry, ptr %1705, i64 0
  %minor2465 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2464, i32 0, i32 2
  store ptr %1704, ptr %minor2465, align 8
  br label %sw.epilog

sw.bb2466:                                        ; preds = %if.end6
  %1706 = load ptr, ptr %yymsp, align 8
  %arrayidx2467 = getelementptr inbounds %struct.yyStackEntry, ptr %1706, i64 -1
  %minor2468 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2467, i32 0, i32 2
  %1707 = load ptr, ptr %minor2468, align 8
  %1708 = load ptr, ptr %yymsp, align 8
  %arrayidx2469 = getelementptr inbounds %struct.yyStackEntry, ptr %1708, i64 -3
  %minor2470 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2469, i32 0, i32 2
  store ptr %1707, ptr %minor2470, align 8
  br label %sw.epilog

sw.bb2471:                                        ; preds = %if.end6
  %1709 = load ptr, ptr %pParse.addr, align 8
  %db2472 = getelementptr inbounds nuw %struct.Parse, ptr %1709, i32 0, i32 0
  %1710 = load ptr, ptr %db2472, align 8
  %call2473 = call ptr @sqlite3DbMallocZero(ptr noundef %1710, i64 noundef 144)
  %1711 = load ptr, ptr %yymsp, align 8
  %arrayidx2474 = getelementptr inbounds %struct.yyStackEntry, ptr %1711, i64 -1
  %minor2475 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2474, i32 0, i32 2
  store ptr %call2473, ptr %minor2475, align 8
  %1712 = load ptr, ptr %yymsp, align 8
  %arrayidx2476 = getelementptr inbounds %struct.yyStackEntry, ptr %1712, i64 -1
  %minor2477 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2476, i32 0, i32 2
  %1713 = load ptr, ptr %minor2477, align 8
  %tobool2478 = icmp ne ptr %1713, null
  br i1 %tobool2478, label %if.then2479, label %if.end2492

if.then2479:                                      ; preds = %sw.bb2471
  %1714 = load ptr, ptr %pParse.addr, align 8
  %db2480 = getelementptr inbounds nuw %struct.Parse, ptr %1714, i32 0, i32 0
  %1715 = load ptr, ptr %db2480, align 8
  %1716 = load ptr, ptr %yymsp, align 8
  %arrayidx2481 = getelementptr inbounds %struct.yyStackEntry, ptr %1716, i64 0
  %minor2482 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2481, i32 0, i32 2
  %z2483 = getelementptr inbounds nuw %struct.Token, ptr %minor2482, i32 0, i32 0
  %1717 = load ptr, ptr %z2483, align 8
  %1718 = load ptr, ptr %yymsp, align 8
  %arrayidx2484 = getelementptr inbounds %struct.yyStackEntry, ptr %1718, i64 0
  %minor2485 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2484, i32 0, i32 2
  %n2486 = getelementptr inbounds nuw %struct.Token, ptr %minor2485, i32 0, i32 1
  %1719 = load i32, ptr %n2486, align 8
  %conv2487 = zext i32 %1719 to i64
  %call2488 = call ptr @sqlite3DbStrNDup(ptr noundef %1715, ptr noundef %1717, i64 noundef %conv2487)
  %1720 = load ptr, ptr %yymsp, align 8
  %arrayidx2489 = getelementptr inbounds %struct.yyStackEntry, ptr %1720, i64 -1
  %minor2490 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2489, i32 0, i32 2
  %1721 = load ptr, ptr %minor2490, align 8
  %zName2491 = getelementptr inbounds nuw %struct.Window, ptr %1721, i32 0, i32 0
  store ptr %call2488, ptr %zName2491, align 8
  br label %if.end2492

if.end2492:                                       ; preds = %if.then2479, %sw.bb2471
  br label %sw.epilog

sw.bb2493:                                        ; preds = %if.end6
  %1722 = load ptr, ptr %yymsp, align 8
  %arrayidx2494 = getelementptr inbounds %struct.yyStackEntry, ptr %1722, i64 -1
  %minor2495 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2494, i32 0, i32 2
  %1723 = load ptr, ptr %minor2495, align 8
  %1724 = load ptr, ptr %yymsp, align 8
  %arrayidx2496 = getelementptr inbounds %struct.yyStackEntry, ptr %1724, i64 -4
  %minor2497 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2496, i32 0, i32 2
  store ptr %1723, ptr %minor2497, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2493, %if.end2492, %sw.bb2466, %if.end2463, %sw.bb2442, %sw.bb2437, %sw.bb2431, %sw.bb2425, %sw.bb2420, %sw.bb2417, %sw.bb2407, %sw.bb2399, %sw.bb2393, %sw.bb2373, %sw.bb2361, %sw.bb2357, %sw.bb2349, %sw.bb2344, %sw.bb2334, %sw.bb2326, %sw.bb2314, %sw.bb2304, %if.end2299, %sw.bb2269, %sw.bb2264, %sw.bb2252, %sw.bb2242, %sw.bb2239, %sw.bb2236, %sw.bb2234, %sw.bb2225, %sw.bb2222, %sw.bb2221, %sw.bb2214, %sw.bb2211, %sw.bb2194, %sw.bb2189, %sw.bb2184, %sw.bb2183, %sw.bb2178, %sw.bb2177, %sw.bb2174, %sw.bb2167, %sw.bb2162, %sw.bb2159, %sw.bb2156, %if.end2155, %if.end2137, %sw.bb2116, %sw.bb2103, %sw.bb2084, %sw.bb2066, %sw.bb2065, %sw.bb2064, %sw.bb2059, %sw.bb2053, %sw.bb2043, %sw.bb2038, %sw.bb2035, %sw.bb2026, %sw.bb2016, %sw.bb2013, %sw.bb2010, %sw.bb2004, %cond.end2003, %sw.bb1948, %sw.bb1941, %sw.bb1934, %sw.bb1927, %sw.bb1920, %sw.bb1915, %sw.bb1910, %sw.bb1907, %sw.bb1902, %sw.bb1892, %sw.bb1880, %sw.bb1877, %sw.bb1874, %if.end1873, %sw.bb1838, %sw.bb1832, %sw.bb1824, %sw.bb1819, %sw.bb1806, %sw.bb1791, %if.end1790, %sw.bb1747, %if.end1746, %if.end1712, %sw.bb1685, %if.end1684, %if.end1635, %sw.bb1600, %sw.bb1589, %sw.bb1580, %sw.bb1568, %sw.bb1556, %sw.bb1550, %sw.bb1541, %if.end1540, %if.end1498, %sw.bb1453, %sw.bb1442, %sw.bb1429, %if.end1428, %sw.bb1404, %sw.bb1396, %sw.bb1384, %sw.bb1378, %sw.bb1368, %sw.bb1356, %sw.bb1348, %if.end1347, %sw.bb1286, %sw.bb1277, %if.end1273, %if.end1242, %sw.bb1216, %sw.bb1211, %sw.bb1205, %sw.bb1197, %sw.bb1192, %sw.bb1187, %sw.bb1178, %sw.bb1165, %sw.bb1162, %sw.bb1155, %sw.bb1144, %sw.bb1136, %sw.bb1128, %sw.bb1118, %sw.bb1106, %sw.bb1091, %sw.bb1082, %sw.bb1074, %sw.bb1066, %sw.bb1060, %sw.bb1057, %sw.bb1054, %sw.bb1051, %sw.bb1048, %sw.bb1045, %sw.bb1033, %sw.bb1019, %sw.bb1014, %sw.bb1011, %sw.bb1006, %sw.bb999, %sw.bb994, %sw.bb991, %sw.bb981, %sw.bb968, %sw.bb960, %sw.bb954, %sw.bb951, %if.end950, %if.end930, %sw.bb902, %sw.bb896, %if.end893, %if.end871, %sw.bb848, %if.end847, %sw.bb730, %sw.bb710, %sw.bb690, %sw.bb687, %if.end686, %sw.bb659, %sw.bb654, %sw.bb649, %sw.bb633, %sw.bb624, %if.end617, %sw.bb596, %sw.bb589, %sw.bb586, %if.end585, %sw.bb559, %if.end558, %sw.bb506, %sw.bb503, %sw.bb497, %if.end494, %if.end458, %if.end449, %if.end433, %sw.bb414, %sw.bb409, %sw.bb394, %sw.bb389, %sw.bb386, %sw.bb383, %sw.bb378, %sw.bb375, %sw.bb364, %sw.bb361, %sw.bb356, %sw.bb349, %sw.bb346, %sw.bb343, %sw.bb340, %sw.bb332, %sw.bb328, %sw.bb325, %sw.bb322, %sw.bb319, %sw.bb316, %sw.bb313, %sw.bb304, %sw.bb295, %sw.bb288, %sw.bb281, %sw.bb272, %sw.bb269, %sw.bb266, %sw.bb263, %sw.bb256, %sw.bb253, %sw.bb250, %sw.bb243, %sw.bb240, %if.end229, %sw.bb207, %sw.bb193, %sw.bb184, %sw.bb170, %sw.bb167, %sw.bb164, %sw.bb160, %sw.bb143, %sw.bb124, %sw.bb108, %sw.bb101, %sw.bb95, %if.end94, %sw.bb69, %sw.bb61, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb44, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb22, %sw.bb17, %sw.bb12, %sw.bb10, %sw.bb9, %sw.bb7, %sw.bb
  %1725 = load i32, ptr %yyruleno.addr, align 4
  %idxprom2498 = zext i32 %1725 to i64
  %arrayidx2499 = getelementptr inbounds nuw [381 x i16], ptr @yyRuleInfoLhs, i64 0, i64 %idxprom2498
  %1726 = load i16, ptr %arrayidx2499, align 2
  %conv2500 = zext i16 %1726 to i32
  store i32 %conv2500, ptr %yygoto, align 4
  %1727 = load i32, ptr %yyruleno.addr, align 4
  %idxprom2501 = zext i32 %1727 to i64
  %arrayidx2502 = getelementptr inbounds nuw [381 x i8], ptr @yyRuleInfoNRhs, i64 0, i64 %idxprom2501
  %1728 = load i8, ptr %arrayidx2502, align 1
  %conv2503 = sext i8 %1728 to i32
  store i32 %conv2503, ptr %yysize, align 4
  %1729 = load ptr, ptr %yymsp, align 8
  %1730 = load i32, ptr %yysize, align 4
  %idxprom2504 = sext i32 %1730 to i64
  %arrayidx2505 = getelementptr inbounds %struct.yyStackEntry, ptr %1729, i64 %idxprom2504
  %stateno = getelementptr inbounds nuw %struct.yyStackEntry, ptr %arrayidx2505, i32 0, i32 0
  %1731 = load i16, ptr %stateno, align 8
  %1732 = load i32, ptr %yygoto, align 4
  %conv2506 = trunc i32 %1732 to i16
  %call2507 = call zeroext i16 @yy_find_reduce_action(i16 noundef zeroext %1731, i16 noundef zeroext %conv2506)
  store i16 %call2507, ptr %yyact, align 2
  %1733 = load i32, ptr %yysize, align 4
  %add2508 = add nsw i32 %1733, 1
  %1734 = load ptr, ptr %yymsp, align 8
  %idx.ext2509 = sext i32 %add2508 to i64
  %add.ptr2510 = getelementptr inbounds %struct.yyStackEntry, ptr %1734, i64 %idx.ext2509
  store ptr %add.ptr2510, ptr %yymsp, align 8
  %1735 = load ptr, ptr %yymsp, align 8
  %1736 = load ptr, ptr %yypParser.addr, align 8
  %yytos2511 = getelementptr inbounds nuw %struct.yyParser, ptr %1736, i32 0, i32 0
  store ptr %1735, ptr %yytos2511, align 8
  %1737 = load i16, ptr %yyact, align 2
  %1738 = load ptr, ptr %yymsp, align 8
  %stateno2512 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %1738, i32 0, i32 0
  store i16 %1737, ptr %stateno2512, align 8
  %1739 = load i32, ptr %yygoto, align 4
  %conv2513 = trunc i32 %1739 to i16
  %1740 = load ptr, ptr %yymsp, align 8
  %major2514 = getelementptr inbounds nuw %struct.yyStackEntry, ptr %1740, i32 0, i32 1
  store i16 %conv2513, ptr %major2514, align 2
  %1741 = load i16, ptr %yyact, align 2
  store i16 %1741, ptr %retval, align 2
  br label %return

return:                                           ; preds = %sw.epilog, %if.then5
  %1742 = load i16, ptr %retval, align 2
  ret i16 %1742
}

; Function Attrs: nounwind uwtable
declare hidden void @yyStackOverflow(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FinishCoding(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginTransaction(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndTransaction(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Savepoint(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StartTable(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @disableLookaside(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndTable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AddColumn(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AddDefaultValue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @tokenExpr(ptr noundef, i32 noundef, ptr, i32) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIdToTrueFalse(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AddNotNull(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AddPrimaryKey(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CreateIndex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AddCheckConstraint(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CreateForeignKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeferForeignKey(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AddCollateType(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DropTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CreateView(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @parserDoubleLinkSelect(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppendFromTerm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectNew(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListSetName(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListSetSpan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAlloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListShiftJoinType(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListIndexedBy(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListFuncArgs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3RenameTokenMap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3JoinType(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListSetSortOrder(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteFrom(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListCheckLength(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppendVector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3UpsertNew(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3IdListAppend(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprAssignVarNumber(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAddCollateToken(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprAttachSubtrees(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprFunction(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowAttach(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @binaryToUnaryIfNull(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprUnmapAndDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprSetHeightAndFlags(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PExprAddSelect(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @parserAddExprIdListTerm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DropIndex(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Vacuum(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Pragma(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FinishTrigger(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginTrigger(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggerUpdateStep(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggerInsertStep(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggerDeleteStep(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggerSelectStep(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DropTrigger(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Detach(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Reindex(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Analyze(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AlterRenameTable(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AlterFinishAddColumn(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AlterBeginAddColumn(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AlterRenameColumn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabFinishParse(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabBeginParse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabArgInit(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabArgExtend(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WithPush(ptr noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WithAdd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowChain(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WindowAssemble(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WindowAlloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @yy_find_reduce_action(i16 noundef zeroext, i16 noundef zeroext) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
